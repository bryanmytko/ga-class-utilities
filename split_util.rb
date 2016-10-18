require "awesome_print"

group1 = [
  "John Doe",
  "Jane Doe"
]

group2 = [
  "Bryan Mytko",
  "Dr. Suess",
  "Dr. Dre"
]

def groupify(div, *groups)
  final = []

  groups.each do |group|
    final << group.shuffle.each_slice((group.length/div.to_f).round).to_a
  end

  final
end

g = groupify(2, group1, group2)

# meh
ap (g[0][0] + g[1][0]).shuffle
ap (g[0][1] + g[1][1]).shuffle
