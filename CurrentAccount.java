package p1;

public class CurrentAccount extends Account {
    double overdraftLimit;

    public CurrentAccount(int accNo, String holderName, double balance, String iFCCODE,
            String address, double od) {
        super(accNo, holderName, balance, iFCCODE, address);
        this.overdraftLimit = od;
    }

    @Override
    public void withdraw(double amount) {
        
        if (amount <= balance + overdraftLimit) {
            balance -= amount;
            System.out.println(amount + " withdrawn. (Overdraft limit available: " 
                               + overdraftLimit + "). New Balance: " + balance);
        } else {
            System.out.println("Withdrawal exceeds overdraft limit. Transaction denied.");
        }
    }

    @Override
    public String toString() {
        return "CurrentAccount [accNo=" + accNo + ", holderName=" + holderName 
                + ", balance=" + balance + ", IFSC Code= " + IFCCODE 
                + ", Address= " + Address + ", Overdraft Limit= " + overdraftLimit + "]";
    }
}
