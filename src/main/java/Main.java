import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import java.net.UnknownHostException;

public class Main {

    public static void main(String[] args) throws UnknownHostException {
        MongoClient mongoClient = new MongoClient(new MongoClientURI("mongodb://localhost:27017"));

        // Then
        assertThat(mongoClient, is(notNullValue()));
//        DB database = mongoClient.getDB("RBCPartners");
//        DBCollection collection = database.getCollection("TheCollectionName");

    }

}
