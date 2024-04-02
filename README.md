# ATM Using JSP

Instructions
<br><br>
Develop a form to pass parameters to the servlet (e.g., the amount of cash deposited or withdrawn from the ATM).
Receive the parameters and based on them, display information about the account balance:

If it's a deposit, display the account balance after the deposit.
If it's a withdrawal, display the quantity of individual denominations of banknotes needed to fulfill the requested amount.

Notes
<br><br>
Denominations are 20 PLN, 50 PLN, 100 PLN, 200 PLN.

When depositing, declare which denominations are used to replenish the ATM (e.g., 4* 100, or 2*200).
Adopt a strategy for withdrawing a given amount using the minimum number of denominations.
If the ATM is unable to dispense a certain amount due to the lack of specific denominations, inform the user accordingly. Withdrawal reduces the quantity of denominations in the ATM.
