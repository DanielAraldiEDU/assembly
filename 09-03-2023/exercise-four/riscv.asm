# function in C => f = (g + h) - (i + j)

.text
  addi s1, zero, 4
  addi s2, zero, 3
  addi s3, zero, 2
  addi s4, zero, 1
  # t0 = g + h
  add t0, s1, s2
  # t1 = i + j
  add t1, s3, s4
  # f = t0 - t1
  sub s0, t0, t1
