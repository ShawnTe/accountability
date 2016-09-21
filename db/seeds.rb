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

Goal.create(
  description: "Drink more water",
  completed: false,
  member_id: 1
)
