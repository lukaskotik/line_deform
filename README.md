# Line Deform

Very simple tool to deform a line segment in Godot engine (https://godotengine.org/).
It uses editor `tool` mode to set a deformation and `fragment` shader make the deformation.

It's very far from perfect, but it can serve as a starting point... 

Use points to deform sprite:

- `P0` starting point (top)
- `P3` ending point (bottom)
- `P1` control point for `P0`
- `P2` control point for `P3`

![Screenshot](http://media.bigmoutheddog.com/misc/line_deform1.png)
