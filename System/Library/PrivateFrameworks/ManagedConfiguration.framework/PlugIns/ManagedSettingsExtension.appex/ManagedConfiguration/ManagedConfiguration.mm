uint64_t sub_100000CBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);

  return _swift_release(v3);
}

id sub_100000DFC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ManagedSettingsExtension();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100000E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}