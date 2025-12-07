int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100000FAC();
  sub_100000F54(v3, v4, v5);
  sub_100000FBC();
  return 0;
}

unint64_t sub_100000F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    sub_100000FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}