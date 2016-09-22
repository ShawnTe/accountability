Group.delete_all
Member.delete_all
Goal.delete_all

Group.create(
  name: "Red Pandas"
)

Member.create(
  name: "Shawn",
  email: "Shawn.tnp@gmail.com",
  group_id: 1
)

Member.create(
  name: "Sarah",
  email: "Sarah@sarah.com",
  group_id: 1
)

Goal.create(
  description: "Finish linkedin profile",
  completed: false,
  member_id: 2
)

Goal.create(
  description: "Add the goods to linkedin",
  completed: false,
  member_id: 1
)
