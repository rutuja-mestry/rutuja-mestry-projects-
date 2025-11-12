package p1;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Transaction {
    private int accNo;
    private String type; 
    private double amount;
    private String dateTime;

    public Transaction(int accNo, String type, double amount) {
        this.accNo = accNo;
        this.type = type;
        this.amount = amount;
        this.dateTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss"));
    }

    public int getAccNo() {
        return accNo;
    }

    public String getType() {
        return type;
    }

    public double getAmount() {
        return amount;
    }
    public String getDateTime() {
        return dateTime;
    }

    @Override
    public String toString() {
        return "[Account: " + accNo + ", Type: " + type + ", Amount: " + amount + ", Date: " + dateTime + "]";
    }
}

