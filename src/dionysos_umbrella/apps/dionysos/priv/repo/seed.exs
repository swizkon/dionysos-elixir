unless(Dionysos.ActivityQueries.any) do
    Dionysos.ActivityQueries.create(Dionysos.Activities.changeset(%Dionysos.Activities{}, %{user: "jonas", description: "Tänkte skatea ikväll vid plaskis", location: "Plaskis", starts: "2017-03-12 19:30:00"}))
    Dionysos.ActivityQueries.create(Dionysos.Activities.changeset(%Dionysos.Activities{}, %{user: "jenny", description: "Grill och gott i Trindemossen", location: "Trindemossen", starts: "2017-03-16 12:00:00"}))
end