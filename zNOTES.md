
20 examples, 2 failures

NOTE: January 12, 2016 at 3:00      <<=     datetime.to_formatted_s(:long)
https://stackoverflow.com/questions/11837171/formatting-a-date-object-to-display-a-human-readable-date

    NOTE    date = "January 12, 2016 3:00"
            date.split                  
                =>> ["January", "12,", "2016", "3:00"]
            date.split.insert(3, "at")  
                =>> ["January", "12,", "2016", "at", "3:00"]
            date.split(" ").insert(3, "at").join(" ")
                =>> "January 12, 2016 at 3:00"

JavaScript String.split and Array.join
https://www.youtube.com/watch?v=ub9s1TPyZ00

==========================================================

STEP 1: Set up all resources

rails g resource Doctor name department --no-test-framework --skip-routes

rails g resource Patient name age --no-test-framework --skip-routes

rails g resource Appointment appointment_datetime:datetime doctor_id:integer patient_id:integer --no-test-framework --skip-routes

RUN rails db:migrate
RUN rails db:seed
RUN rails c

==========================================================

STEP 2: Work in the browser to track the routes and set up actions and views for display

RUN rails s
RUN rspec



==========================================================

    


Patients Index Page

<h2>Patients List</h2>

<ul>
<% @patients.each do |patient| %>
    <li>
        <%= link_to patient.name, patient_path(patient) %>: 
        
        <% if patient.appointments.count == 1 %>
            <%= patient.appointments.count %> appointment
        <% else %>
            <%= patient.appointments.count %> appointments
        <% end %>
    </li>


<% # @patients.first.name %>
<% # @patients.first.appointments.count %>

<% end %>
</ul





