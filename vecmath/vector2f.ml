type vector = { x : float; y : float }

let length ({ x; y } : vector) =
  sqrt (x ** 2. +. y ** 2.)

let normalised (p : vector) =
  let mag = length p in
  {x = p.x /. mag; y = p.y /. mag}
