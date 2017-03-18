unless(Dionysos.UserQueries.any) do
    Dionysos.UserQueries.create(Dionysos.Users.changeset(%Dionysos.Users{}, %{username: "jonas@jerndin.se", description: "Tänkte skatea ikväll vid plaskis", email: "jonas@jerndin.se"}))
    Dionysos.UserQueries.create(Dionysos.Users.changeset(%Dionysos.Users{}, %{username: "jenny@jerndin.se", description: "Grill och gott i Trindemossen", email: "jenny@jerndin.se"}))
end

unless(Dionysos.ActivityQueries.any) do
    Dionysos.ActivityQueries.create(Dionysos.Activities.changeset(%Dionysos.Activities{}, %{user_id: 1, description: "Tänkte skatea ikväll vid plaskis", location: "Plaskis", starts: "2017-03-12 19:30:00"}))
    Dionysos.ActivityQueries.create(Dionysos.Activities.changeset(%Dionysos.Activities{}, %{user_id: 2, description: "Grill och gott i Trindemossen", location: "Trindemossen", starts: "2017-03-16 12:00:00"}))
end

unless(Dionysos.SubscriptionQueries.any) do
    Dionysos.SubscriptionQueries.create(Dionysos.Subscriptions.changeset(%Dionysos.Subscriptions{}, %{publisher_id: 1, subscriber_id: 1, isactive: 1}))
    Dionysos.SubscriptionQueries.create(Dionysos.Subscriptions.changeset(%Dionysos.Subscriptions{}, %{publisher_id: 2, subscriber_id: 2, isactive: 1}))
end