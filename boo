def hanoi(n, start, end, aux=2):
if n == 1:
print(f"Переместить диск 1 с {start} на {end}")
return

hanoi(n - 1, start, aux, end)
print(f"Переместить диск {n} с {start} на {end}")
hanoi(n - 1, aux, end, start)
n = int(input("Введите количество дисков: "))
hanoi(n, 1, 3)
def generate_moves(ring_state):
moves = []
for i in range(len(ring_state)):
if ring_state[i] == 0:
continue
moves.append((i, ring_state.pop(i)))
return moves

def check_ring_state(ring_states):
ring_states_copy = ring_states.copy()
while True:
new_moves = generate_moves(next_ring_state)
if new_moves:
return True
elif ring_states == ring_states_copy:
break
else:
ring_states = ring_states_copy.copy()

def read_input():
n = int(input("Введите количество колец: "))
rings = [x for x in iter(int, input("Введите номер кольца (0 - конец ввода): "), 0)]
return n, rings

if name == “main”:
n, rings = read_input()
