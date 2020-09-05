package model;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class EventDAO extends Connection {

    public EventDAO() {

        super();
    }

    public List<Event> sellectAllEvents() {

        Event event;
        List<Event> eventList = new ArrayList<Event>();

        try {

            preparedStatement = connect.prepareStatement("SELECT * FROM event");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                event = new Event();
                event.setId(resultSet.getString("id"));
                event.setName(resultSet.getString("name"));
                event.setDetails(resultSet.getString("details"));
                eventList.add(event);
            }
            System.out.println("hello");
            System.out.println(eventList);
            return eventList;
        } catch (Exception exp) {

            System.out.print(exp.getLocalizedMessage());
        }
        return null;
    }

}
