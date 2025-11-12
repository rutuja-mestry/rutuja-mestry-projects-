package p1;

public abstract class Account {
    int accNo;
    String holderName;
    double balance;
   
    String IFCCODE;
    String Address;

    public Account(int accNo, String holderName, double balance, String iFCCODE,
            String address) {
        super();
        this.accNo = accNo;
        this.holderName = holderName;
        this.balance = balance;
        IFCCODE = iFCCODE;
        Address = address;
    }

    public int getAccNo() {
        return accNo;
    }

    public void setAccNo(int accNo) {
        this.accNo = accNo;
    }

    public String getHolderName() {
        return holderName;
    }

    public void setHolderName(String holderName) {
        this.holderName = holderName;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public String getIFCCODE() {
        return IFCCODE;
    }

    public void setIFCCODE(String iFCCODE) {
        IFCCODE = iFCCODE;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public void deposit(double amount) {
        balance += amount;
        System.out.println(amount + " deposited. New Balance: " + balance);
    }

    public abstract void withdraw(double amount);

    @Override
    public String toString() {
        return "Account [accNo=" + accNo + ", holderName=" + holderName + ", balance=" + balance + ", IFCCODE=" + IFCCODE + ", Address=" + Address + "]";
    }

}