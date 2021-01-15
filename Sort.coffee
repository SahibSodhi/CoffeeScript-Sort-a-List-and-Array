array = [
  {
    "id":"1",
    "type":"z"
  },
  {
    "id":"2",
    "type":"a"
  }
]

sorted = array.sort(@sorter)

# this callback function will sort strings
sorter: (a,b) ->
	if a.type > b.type
		return 1
	else if a.type < b.type
		return -1
	else
		return 0

# sorted = [{"id":"2","type":"a"},{"id":"1","type":"z"}]


# to sort numbers instead of strings the callback function simply becomes:
sorter: (a,b) ->
	return a.id - b.id

# sorted = [{"id":"1","type":"z"},{"id":"2","type":"a"}]
