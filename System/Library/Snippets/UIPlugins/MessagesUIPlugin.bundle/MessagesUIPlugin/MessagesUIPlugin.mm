uint64_t type metadata accessor for MessagesUIPlugin(uint64_t a1)
{
  result = qword_80E0;
  if (!qword_80E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13E8()
{
  v0 = sub_1430();

  return _swift_deallocClassInstance(v0, 16, 7);
}