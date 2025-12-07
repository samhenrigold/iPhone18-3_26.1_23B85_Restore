id sub_100001180()
{
  result = DiagnosticLogHandleForCategory();
  qword_100008458 = result;
  return result;
}

id sub_10000126C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*&v3[OBJC_IVAR___UnpairSessionAccessoryController_accessoryResponder])
  {
    [swift_unknownObjectRetain() unpairSessionAccessoryOnTestCompletion];
    v4 = [v3 result];
    v5.super.super.isa = sub_1000014D8().super.super.isa;
    [v4 setStatusCode:v5.super.super.isa];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000014E8();
    if (qword_100008450 != -1)
    {
      swift_once();
    }

    sub_1000014C8();
    v4 = [v3 result];
    v5.super.super.isa = sub_1000014D8().super.super.isa;
    [v4 setStatusCode:v5.super.super.isa];
  }

  return [v3 setFinished:1];
}

id sub_100001460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnpairSessionAccessoryController();
  return objc_msgSendSuper2(&v2, "dealloc");
}