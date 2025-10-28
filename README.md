data Item:
  | item(name::String,x::Number,y :: Number)
end
items = [
  item("Sword of Dawn", 10, 5),
  item("Magic Shield", -15, 10),
  item("Ancient Amulet", 8, -6),
  item("Dragon Scale", -12, -8),
  item("Mystic Potion", 20, 15)
]
fun pull-closer(i :: Item, factor :: Number) -> Item:
  item(i.name, i.x * (1 - factor), i.y * (1 - factor))
end

fun pull-all-closer(is :: List<Item>, factor :: Number) -> List<Item>:
  is.map(lam(i): pull-closer(i, factor) end