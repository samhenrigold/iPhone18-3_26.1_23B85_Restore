uint64_t sub_100000ECC()
{
  v0 = sub_100001068();

  return _swift_deallocClassInstance(v0, 16, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for BlackPowderInferenceService(0);
  sub_100000FA8();
  sub_100001048();
  return 0;
}

uint64_t type metadata accessor for BlackPowderInferenceService(uint64_t a1)
{
  result = qword_1000080E8;
  if (!qword_1000080E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100000FA8()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    type metadata accessor for BlackPowderInferenceService(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}