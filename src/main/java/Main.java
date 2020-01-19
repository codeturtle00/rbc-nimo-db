import com.mongodb.*;
import java.net.UnknownHostException;
import java.util.Scanner;

public class Main {

    static int CURR_ID = 0;
    static int USER_ID = 0;

    public static void main(String[] args) throws UnknownHostException {
        MongoClient mongoClient = new MongoClient(new MongoClientURI("mongodb://localhost:27017"));
        DB database = mongoClient.getDB("RBCPartners");
        DBCollection collection = database.getCollection("Partners");
        DBCollection users = database.getCollection("Users");
        addCompany(collection, users);
    }

    public static void addCompany(DBCollection collection, DBCollection users) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Thank you for choosing to partner with RBC!");
        System.out.println("What is the name of your company?");
        String name = scanner.nextLine();
        System.out.println("Input a description of your company");
        String description = scanner.nextLine();
        DBObject company = new BasicDBObject("_id", CURR_ID)
                .append("name", name)
                .append("description", description)
                .append("users", users);
        CURR_ID++;
        collection.insert(company);
    }

    public static DBObject getCompany(String name, DBCollection collection) {
        DBObject query = new BasicDBObject("name", name);
        DBCursor cursor = collection.find(query);
        return cursor.one();
    }

    public static void addUserToCompany(String name, DBCollection company, DBCollection users) {
        Scanner scanner = new Scanner(System.in);
        DBObject query = new BasicDBObject("name", name);
        DBCursor cursor = company.find(query);
        System.out.println("What is the name?");
        String username = scanner.nextLine();
        DBObject curr_user = new BasicDBObject("_id", USER_ID)
                .append("name", username);
        USER_ID++;
        users.insert(curr_user);
    }



}
