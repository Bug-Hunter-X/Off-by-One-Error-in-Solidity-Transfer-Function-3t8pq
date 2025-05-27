```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Insufficient balance");
  require(balanceOf[to] >= 0, "Recipient does not exist"); // Added check
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}

function balanceOf(address account) public view returns (uint) {
  return balanceOf[account];
}
```