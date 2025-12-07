uint64_t sub_1D29CDE08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D29CDE28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D29CDE54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CDEA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29CDF14()
{
  MEMORY[0x1D38A60B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CDF4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CDFC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CDFFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CE050()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29CE09C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CE15C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D29FFD78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D29CE188()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D29CE20C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1D29E8374;
  a2[1] = v5;
}

id sub_1D29CE280(uint64_t a1, id *a2)
{
  if (*a1)
  {
    v2 = *(*a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return [*a2 setSession_];
}

uint64_t sub_1D29CE2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29FFE08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D29CE364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D29FFE08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D29CE420()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CE458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D29CE4F0()
{
  MEMORY[0x1D38A60B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CE538()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CE574()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29CE5AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CE60C()
{
  MEMORY[0x1D38A60B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CE654()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CE690(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ExtensionHostingViewControllerRepresentable(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1D29CE73C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ExtensionHostingViewControllerRepresentable(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D29CE814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29FFE08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D29CE8D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D29FFE08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D29CE98C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29CE9CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1D29CEA24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 configuration];
  *a2 = result;
  return result;
}

uint64_t sub_1D29CEA7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for _EXHostViewController.Configuration(0) + 28));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1D29CEAF4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1D29F6E50;
  a2[1] = v5;
}

id sub_1D29CEB68(uint64_t a1, id *a2)
{
  if (*a1)
  {
    v2 = *(*a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return [*a2 setSession_];
}

uint64_t sub_1D29CEB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29FFE08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D29CEC4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D29FFE08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D29CED08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CED4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29CED84()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D29CEDC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29CEDFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29CEE68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D29CEEBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1D29CEF00@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x26u);
}

void sub_1D29D2684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location, id a50, uint64_t a51, ...)
{
  va_start(va, a51);
  objc_destroyWeak(&a42);
  objc_destroyWeak(&a48);
  objc_destroyWeak(&a47);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a50);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v51 - 208));
  objc_destroyWeak((v51 - 200));
  _Block_object_dispose((v51 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D29D30A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __copy_constructor_8_8_t0w16_s16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t __move_assignment_8_8_t0w16_s16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v2;
  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D29D8A64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D29D8A84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

BOOL sub_1D29D8AE0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D29D8B44()
{
  v0 = sub_1D2A003E8();
  v1 = MEMORY[0x1D38A5320](v0);

  return v1;
}

uint64_t sub_1D29D8B80(uint64_t a1)
{
  sub_1D2A003E8();
  sub_1D2A00428();
}

uint64_t sub_1D29D8BD4(uint64_t a1)
{
  sub_1D2A003E8();
  sub_1D2A00738();
  sub_1D2A00428();
  v1 = sub_1D2A00748();

  return v1;
}

uint64_t sub_1D29D8C50(uint64_t a1, id *a2)
{
  result = sub_1D2A003C8();
  *a2 = 0;
  return result;
}

uint64_t sub_1D29D8CC8(uint64_t a1, id *a2)
{
  v3 = sub_1D2A003D8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D29D8D48@<X0>(uint64_t *a2@<X8>)
{
  sub_1D2A003E8();
  v3 = sub_1D2A003B8();

  *a2 = v3;
  return result;
}

uint64_t sub_1D29D8D98(void *a1, uint64_t *a2)
{
  v2 = sub_1D2A003E8();
  v4 = v3;
  if (v2 == sub_1D2A003E8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D2A00708();
  }

  return v7 & 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1D29D8E68(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1D29D8EB4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D2A003B8();

  *a2 = v3;
  return result;
}

uint64_t sub_1D29D8EFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2A003E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D29D8F28(uint64_t a1)
{
  v2 = sub_1D29D9028(&qword_1EC700A88, &unk_1D2A033E0);
  v3 = sub_1D29D9028(&unk_1EC700A90, &unk_1D2A03334);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D29D9028(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D29D90C0(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers))
  {

    v3 = sub_1D2A00498();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1D2A003B8();
  [a1 encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *(v1 + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_options);
  v6 = sub_1D2A003B8();
  [a1 encodeInteger:v5 forKey:v6];
}

id sub_1D29D9378()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXAppExtensionBrowserViewControllerConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D29D93E0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers;
  *&v2[OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700BE0, ":h");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D2A03430;
  *(v5 + 32) = sub_1D29D95F8(0, &qword_1EC700BE8, 0x1E695DEC8);
  *(v5 + 40) = sub_1D29D95F8(0, &qword_1EC700BF0, 0x1E696AEC0);
  sub_1D2A005E8();

  if (!v13[3])
  {
    sub_1D29D9640(v13);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700C00, &qword_1D2A03498);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v13[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700C08, &qword_1D2A034A0);
  v6 = swift_dynamicCast();
  v7 = v11;
  if (!v6)
  {
    v7 = 0;
  }

LABEL_8:
  *&v2[v4] = v7;

  v8 = sub_1D2A003B8();
  v9 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_options] = v9;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for _EXAppExtensionBrowserViewControllerConfiguration();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D29D95F8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D29D9640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700BF8, &qword_1D2A03490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D29D96A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_1D29DB948;
  a3[1] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  a3[2] = sub_1D29DB940;
  a3[3] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  a3[4] = sub_1D29DB944;
  a3[5] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  a3[6] = sub_1D29DB93C;
  a3[7] = v9;
  return swift_bridgeObjectRetain_n();
}

uint64_t static _AppExtension<>.main()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v25 - v6;
  v8 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2A00598();
  sub_1D29D9A60();
  v12 = sub_1D2A00608();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = a3;
    v15 = v14;
    *v13 = 138412290;
    type metadata accessor for _EXRunningUIExtension(0);
    v16 = sub_1D29FFC98();
    *(v13 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_1D29CC000, v12, v11, "Launching UI _AppExtension %@", v13, 0xCu);
    sub_1D29DB7F4(v15, qword_1EC700C18, qword_1D2A034B0);
    v17 = v15;
    a3 = v25;
    MEMORY[0x1D38A6000](v17, -1, -1);
    MEMORY[0x1D38A6000](v13, -1, -1);
  }

  sub_1D29FFE48();
  type metadata accessor for _EXRunningUIExtension(0);
  v18 = sub_1D29FFC98();
  v19 = AssociatedTypeWitness;
  type metadata accessor for _UIAppExtensionWrapper(0, AssociatedTypeWitness, a3, v20);
  sub_1D29FFE38();
  sub_1D29DAD30(v7, v21, v22, v23);
  (*(v26 + 8))(v7, v19);
  sub_1D29FFC68();

  return (*(v8 + 8))(v10, a1);
}

{
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v25 - v6;
  v8 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2A00598();
  sub_1D29D9A60();
  v12 = sub_1D2A00608();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = a3;
    v15 = v14;
    *v13 = 138412290;
    type metadata accessor for _EXRunningUIExtension(0);
    v16 = sub_1D29FFC98();
    *(v13 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_1D29CC000, v12, v11, "Launching UI _AppExtension for scene configuration %@", v13, 0xCu);
    sub_1D29DB7F4(v15, qword_1EC700C18, qword_1D2A034B0);
    v17 = v15;
    a3 = v25;
    MEMORY[0x1D38A6000](v17, -1, -1);
    MEMORY[0x1D38A6000](v13, -1, -1);
  }

  sub_1D29FFE48();
  type metadata accessor for _EXRunningUIExtension(0);
  v18 = sub_1D29FFC98();
  v19 = AssociatedTypeWitness;
  type metadata accessor for _UIAppExtensionSceneConfigWrapper(0, AssociatedTypeWitness, a3, v20);
  sub_1D29FFE38();
  sub_1D29F1B68(v7, v21, v22, v23);
  (*(v26 + 8))(v7, v19);
  sub_1D29FFC68();

  return (*(v8 + 8))(v10, a1);
}

unint64_t sub_1D29D9A60()
{
  result = qword_1ED8477D0[0];
  if (!qword_1ED8477D0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED8477D0);
  }

  return result;
}

uint64_t sub_1D29D9ACC(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v9 - v6, &v1[*((v4 & v3) + 0x60)], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700D80, "nX");
  if (swift_dynamicCast())
  {
    sub_1D29DAEB8(v9, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v7 = sub_1D29FFFA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1D29DB7F4(v9, &unk_1EC701610, &qword_1D2A03570);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D29D9C54(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_1D29D9ACC(v4);

  return a1 & 1;
}

id sub_1D29D9CA4(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v34 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  (*(v3 + 8))(v43);
  v4 = *v43;
  v5 = *&v43[8];
  v35 = a1;
  v6 = [a1 role];
  v7 = sub_1D2A003E8();
  v9 = v8;

  *&v39 = v4;
  *(&v39 + 1) = v5;
  *v38 = v7;
  *&v38[8] = v9;
  sub_1D29EB2D4(v38, v43);
  v44 = *&v43[8];
  v45 = *&v43[24];
  v46 = *&v43[40];
  v10 = *v43;
  v47 = *&v43[56];
  if (*v43)
  {
    v11 = sub_1D2A00598();
    sub_1D29D9A60();
    v12 = sub_1D2A00608();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v13 = 136315394;
      *v38 = v10;
      *&v38[8] = *&v43[8];
      *&v38[24] = *&v43[24];
      *&v38[40] = *&v43[40];
      *&v38[56] = *&v43[56];
      v41 = *&v43[32];
      v42 = *&v43[48];
      v39 = *v43;
      v40 = *&v43[16];
      sub_1D29DB798(&v39, v37);
      v14 = sub_1D2A003F8();
      v16 = sub_1D29F87C4(v14, v15, &v36);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = sub_1D29F87C4(v7, v9, &v36);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_1D29CC000, v12, v11, "Using %s for requested role %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A6000](v33, -1, -1);
      MEMORY[0x1D38A6000](v13, -1, -1);
    }

    else
    {
    }

    v30 = sub_1D29DB67C();
    *&v39 = v34;
    *(&v39 + 1) = &type metadata for _AnyViewConfiguration;
    *&v40 = v3;
    *(&v40 + 1) = v30;
    type metadata accessor for _UIAppExtensionWrapper._Scene(0, &v39);
    *v37 = v10;
    *&v37[8] = v44;
    *&v37[24] = v45;
    *&v37[40] = v46;
    *&v37[56] = v47;
    *&v38[32] = *&v43[32];
    *&v38[48] = *&v43[48];
    *v38 = *v43;
    *&v38[16] = *&v43[16];
    sub_1D29DB798(v38, &v39);
    v31 = [v35 parameters];
    v29 = sub_1D29DB594(v37, v31);

    v39 = *v37;
    v40 = *&v37[16];
    v41 = *&v37[32];
    v42 = *&v37[48];
    sub_1D29DB6F8(&v39);
    sub_1D29DB7F4(v43, &qword_1EC700D98, &qword_1D2A03578);
  }

  else
  {
    v18 = sub_1D2A005A8();
    sub_1D29D9A60();
    v19 = sub_1D2A00608();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v39 = v21;
      *v20 = 136315138;

      v22 = sub_1D29F87C4(v7, v9, &v39);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_1D29CC000, v19, v18, "No configuration found for requested role %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1D38A6000](v21, -1, -1);
      MEMORY[0x1D38A6000](v20, -1, -1);
    }

    v23 = sub_1D29DB67C();
    *&v39 = v34;
    *(&v39 + 1) = &type metadata for _AnyViewConfiguration;
    *&v40 = v3;
    *(&v40 + 1) = v23;
    type metadata accessor for _UIAppExtensionWrapper._Scene(0, &v39);
    if (qword_1EC700920 != -1)
    {
      swift_once();
    }

    v24 = swift_allocObject();
    *(v24 + 16) = v7;
    *(v24 + 24) = v9;
    v25 = swift_allocObject();
    *(v25 + 16) = v7;
    *(v25 + 24) = v9;
    v26 = swift_allocObject();
    *(v26 + 16) = v7;
    *(v26 + 24) = v9;
    v27 = swift_allocObject();
    *(v27 + 16) = v7;
    *(v27 + 24) = v9;
    *v38 = sub_1D29DB6D0;
    *&v38[8] = v24;
    *&v38[16] = sub_1D29DB6D4;
    *&v38[24] = v25;
    *&v38[32] = sub_1D29DB6E8;
    *&v38[40] = v26;
    *&v38[48] = sub_1D29DB6F0;
    *&v38[56] = v27;
    swift_bridgeObjectRetain_n();
    v28 = [v35 parameters];
    v29 = sub_1D29DB594(v38, v28);

    v39 = *v38;
    v40 = *&v38[16];
    v41 = *&v38[32];
    v42 = *&v38[48];
    sub_1D29DB6F8(&v39);
  }

  return v29;
}

id sub_1D29DA24C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D29D9CA4(v4);

  return v6;
}

id sub_1D29DA2AC()
{
  v0 = sub_1D29DB5F0();

  return v0;
}

void sub_1D29DA2E0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1D29DA33C(a3);
}

uint64_t sub_1D29DA36C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v9 - v6, &v1[*((v4 & v3) + 0x78)], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700D80, "nX");
  if (swift_dynamicCast())
  {
    sub_1D29DAEB8(v9, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v7 = sub_1D29FFFA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1D29DB7F4(v9, &unk_1EC701610, &qword_1D2A03570);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D29DA4F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_1D29DA36C(v4);

  return a1 & 1;
}

id sub_1D29DA5AC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for _UIAppExtensionWrapper._Scene(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1D29DA624(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *(*(*((v4 & v3) + 0x58) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x78);

  return v5(v6);
}

id sub_1D29DA720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _UIAppExtensionWrapper(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1D29DA7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  v8 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700D80, "nX");
  if (swift_dynamicCast())
  {
    sub_1D29DAEB8(v5, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v3 = sub_1D29FFFA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1D29DB7F4(v5, &unk_1EC701610, &qword_1D2A03570);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1D29DA8D0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1D29DA91C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1D29DA954(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_1D29DA9C8(uint64_t a1)
{
  sub_1D2A00598();
  sub_1D29D9A60();
  v1 = sub_1D2A00608();
  sub_1D29FFFD8();
}

id sub_1D29DAA48(_BYTE *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v29 = *MEMORY[0x1E69E7D40] & *v1;
  v7 = *((v6 & v4) + 0x50);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27[-v12];
  v14 = sub_1D2A00598();
  sub_1D29D9A60();
  v15 = sub_1D2A00608();
  v16 = *(v8 + 16);
  v30 = a1;
  v31 = v16;
  v16(v13, a1, v7);
  v28 = v14;
  if (os_log_type_enabled(v15, v14))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = 136315138;
    v31(v11, v13, v7);
    v19 = sub_1D2A003F8();
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_1D29F87C4(v19, v21, &v32);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1D29CC000, v15, v28, "Creating _UIAppExtensionWrapper with content %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v23 = v18;
    v5 = MEMORY[0x1E69E7D40];
    MEMORY[0x1D38A6000](v23, -1, -1);
    MEMORY[0x1D38A6000](v17, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v31(v2 + *((*v5 & *v2) + 0x60), v30, v7);
  v25 = type metadata accessor for _UIAppExtensionWrapper(0, v7, *(v29 + 88), v24);
  v33.receiver = v2;
  v33.super_class = v25;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t sub_1D29DAD6C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D29DAE00(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D29DAEB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1D29DAF14(char *a1, void *a2)
{
  v3 = v2;
  v58 = a2;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v65 = *MEMORY[0x1E69E7D40] & v5;
  v7 = *((v6 & v5) + 0x58);
  v66 = *((v6 & v5) + 0x68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC700DA0, &unk_1D2A03580);
  v60 = sub_1D2A00098();
  v9 = MEMORY[0x1EEE9AC00](v60);
  v62 = &v53 - v10;
  v64 = AssociatedTypeWitness;
  v63 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v53 - v12;
  v13 = *(v7 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - v17;
  v19 = v6 & v5;
  v20 = a1;
  v59 = *(v19 + 112);
  *&v3[v59] = 0;
  v21 = sub_1D2A00598();
  v57 = sub_1D29D9A60();
  v22 = sub_1D2A00608();
  v23 = *(v13 + 16);
  v23(v18, a1, v7);
  v55 = v21;
  if (os_log_type_enabled(v22, v21))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v56 = v23;
    v26 = v25;
    v68[0] = v25;
    *v24 = 136315138;
    v56(v16, v18, v7);
    v27 = sub_1D2A003F8();
    v54 = a1;
    v29 = v28;
    (*(v13 + 8))(v18, v7);
    v30 = sub_1D29F87C4(v27, v29, v68);
    v20 = v54;

    *(v24 + 4) = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v31 = v26;
    v23 = v56;
    MEMORY[0x1D38A6000](v31, -1, -1);
    MEMORY[0x1D38A6000](v24, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v18, v7);
  }

  v23(&v3[*((*MEMORY[0x1E69E7D40] & *v3) + 0x78)], v20, v7);
  v32 = [v58 initializationParametersPromise];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1D2A00598();
    v35 = sub_1D2A00608();
    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      v58 = v7;
      v37 = v36;
      v38 = swift_slowAlloc();
      v67 = v33;
      v68[0] = v38;
      *v37 = 136315138;
      v39 = v33;
      v40 = sub_1D2A003F8();
      v42 = sub_1D29F87C4(v40, v41, v68);

      *(v37 + 4) = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1D38A6000](v38, -1, -1);
      v7 = v58;
      MEMORY[0x1D38A6000](v37, -1, -1);
    }

    v68[0] = v33;
    (*(v66 + 40))(v68, v7);
  }

  v43 = v66;
  v44 = v61;
  (*(v66 + 32))(v7, v66);
  v45 = v64;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = sub_1D29DB89C();
  v70 = AssociatedConformanceWitness;
  v71 = v47;
  swift_getWitnessTable();
  sub_1D2A00168();
  v68[0] = sub_1D2A002E8();
  sub_1D2A00218();
  sub_1D2A002B8();

  v48 = sub_1D2A00148();
  (*(v63 + 8))(v44, v45);
  v49 = *&v3[v59];
  *&v3[v59] = v48;

  v50 = *(v65 + 96);
  v68[0] = *(v65 + 80);
  v68[1] = v7;
  v68[2] = v50;
  v68[3] = v43;
  v51 = type metadata accessor for _UIAppExtensionWrapper._Scene(0, v68);
  v69.receiver = v3;
  v69.super_class = v51;
  return objc_msgSendSuper2(&v69, sel_init);
}

id sub_1D29DB594(char *a1, void *a2)
{
  v5 = *(v2 + 96);
  v8[0] = *(v2 + 80);
  v8[1] = v5;
  v6 = objc_allocWithZone(type metadata accessor for _UIAppExtensionWrapper._Scene(0, v8));
  return sub_1D29DAF14(a1, a2);
}

unint64_t sub_1D29DB67C()
{
  result = qword_1EC700D90;
  if (!qword_1EC700D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC700D90);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D29DB7F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D29DB89C()
{
  result = qword_1EC700DA8;
  if (!qword_1EC700DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC700DA0, &unk_1D2A03580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC700DA8);
  }

  return result;
}

uint64_t sub_1D29DB900@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void sub_1D29DB960(uint64_t a1)
{
  sub_1D2A00598();
  sub_1D29D9A60();
  v1 = sub_1D2A00608();
  sub_1D29FFFD8();
}

void _ViewScene.consume(initializationParameters:)(uint64_t a1)
{
  sub_1D2A00598();
  sub_1D29D9A60();
  v1 = sub_1D2A00608();
  sub_1D29FFFD8();
}

uint64_t _ContentViewScene.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EC700918 != -1)
  {
    swift_once();
  }

  v10 = unk_1EC701320;
  *a5 = qword_1EC701318;
  a5[1] = v10;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;
  a5[2] = sub_1D29DD354;
  a5[3] = v11;
}

uint64_t sub_1D29DBB30@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v17 = a4;
  v18 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = *(v6 + 16);
  v16(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *(v6 + 32);
  v10(v9 + v8, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  (v16)(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18, a2);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v10(v11 + v8, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v10(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18, a2);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  result = (v10)(v12 + v8, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v14 = v17;
  *v17 = sub_1D29DD1B0;
  v14[1] = v9;
  v14[2] = sub_1D29DD1EC;
  v14[3] = v11;
  v14[4] = sub_1D29DD2D8;
  v14[5] = v12;
  return result;
}

void *_ContentViewScene.init<A>(role:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = a1[1];
  *a6 = *a1;
  a6[1] = v11;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a2;
  result[5] = a3;
  a6[2] = sub_1D29DD354;
  a6[3] = result;
  return result;
}

void *_ContentViewScene.init<A>(id:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a3;
  result[5] = a4;
  a7[2] = sub_1D29DC894;
  a7[3] = result;
  return result;
}

double sub_1D29DBE1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  sub_1D29DBB30(v9, a2, a3, v12);
  v10 = v12[1];
  *a4 = v12[0];
  a4[1] = v10;
  result = *&v13;
  a4[2] = v13;
  return result;
}

uint64_t _ConfigurationScene.init(main:scenes:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1D29DAEB8(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t _ConfigurationScene.init(scenes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D29FFF98();
  v5 = MEMORY[0x1E6966C88];
  a2[3] = v4;
  a2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(a2);
  result = sub_1D29FFF88();
  a2[5] = a1;
  return result;
}

NSObject_optional __swiftcall _ConfigurationScene._makeScene(with:)(NSObject with)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = [v2 role];
  v26 = v3;
  v5 = *(v1 + 40);
  v6 = *(v5 + 16);
  v7 = sub_1D29DCCC8;
  v8 = sub_1D29DB950;
  v9 = sub_1D29DB6D4;
  if (v6)
  {
    v25 = v2;
    v10 = 0;
    v11 = (v5 + 56);
    while (v10 < *(v5 + 16))
    {
      v13 = *(v11 - 3);
      v12 = *(v11 - 2);
      v15 = *(v11 - 1);
      v14 = *v11;
      if (v13 == sub_1D2A003E8() && v12 == v16)
      {

LABEL_13:

        v15(v27, v21);

        v7 = v27[4];
        v6 = v27[5];
        v8 = v27[2];
        v20 = v27[3];
        v9 = v27[0];
        v19 = v27[1];
LABEL_14:
        v2 = v25;
        goto LABEL_15;
      }

      v18 = sub_1D2A00708();

      if (v18)
      {
        goto LABEL_13;
      }

      ++v10;

      v11 += 4;
      v7 = sub_1D29DCCC8;
      v8 = sub_1D29DB950;
      v9 = sub_1D29DB6D4;
      if (v6 == v10)
      {
        v19 = 0;
        v20 = 0;
        v6 = 0;
        v13 = 0;
        v12 = 0;
        v15 = 0;
        v14 = 0;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v13 = 0;
    v12 = 0;
    v15 = 0;
    v14 = 0;
LABEL_15:
    v28[0] = v9;
    v28[1] = v19;
    v28[2] = v8;
    v28[3] = v20;
    v28[4] = v7;
    v28[5] = v6;

    v22 = [v2 parameters];
    v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700E18, &qword_1D2A035A0));
    v24 = sub_1D29DC9C4(v28, v22);

    sub_1D29DCC84(v13, v12, v15, v14);

    v3 = v24;
  }

  result.value.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t static _SceneBuilder.buildBlock(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D29FFF98();
  v5 = MEMORY[0x1E6966C88];
  a2[3] = v4;
  a2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1D29FFF88();
  a2[5] = a1;
}

uint64_t static _SceneBuilder.buildBlock(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D29DCCCC(a1, a3);
  *(a3 + 40) = a2;
}

id sub_1D29DC3C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _ViewSceneFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D29DC410()
{
  v0 = sub_1D29DD154();

  return v0;
}

void sub_1D29DC444(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1D29DC4A0(a3);
}

uint64_t sub_1D29DC554(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_1D29DC4D0(v4);

  return a1 & 1;
}

id sub_1D29DC5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _ViewSceneAdaptor(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1D29DC654(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x68);

  return v5(v6);
}

uint64_t sub_1D29DC710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(a3 + 24))(a2, a3);
  swift_getAssociatedConformanceWitness();
  return sub_1D2A00318();
}

uint64_t sub_1D29DC7FC@<X0>(uint64_t *a1@<X8>)
{
  result = (*v1)();
  *a1 = result;
  return result;
}

uint64_t sub_1D29DC858(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  return v2(&v4);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D29DC918()
{
  if (qword_1EC700920 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC701340;
  v1 = *algn_1EC701348;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700EB0, "r]");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D2A03590;

  sub_1D29D96A8(v0, v1, (v2 + 32));
  return v2;
}

id sub_1D29DC9C4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  *(v3 + v6) = 0;
  v7 = (v3 + *((*v5 & *v3) + 0x68));
  v8 = *a1;
  v9 = *(a1 + 32);
  v10 = *(a1 + 16);
  *v7 = *a1;
  v7[1] = v10;
  v7[2] = *(a1 + 32);

  v11 = [a2 initializationParametersPromise];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D2A00598();
    sub_1D29D9A60();
    v14 = sub_1D2A00608();
    if (os_log_type_enabled(v14, v13))
    {
      buf = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *buf = 136315138;
      v15 = v12;
      v16 = sub_1D2A003F8();
      v18 = v6;
      v19 = sub_1D29F87C4(v16, v17, &v27);

      *(buf + 4) = v19;
      v6 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1D38A6000](v25, -1, -1);
      MEMORY[0x1D38A6000](buf, -1, -1);
    }

    v27 = v12;
    v9(&v27);
  }

  v20 = v8();

  v27 = v20;
  sub_1D2A00318();
  sub_1D2A00178();

  objc_opt_self();
  v21 = swift_dynamicCastObjCClassUnconditional();
  v22 = *(v3 + v6);
  *(v3 + v6) = v21;

  v26.receiver = v3;
  v26.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700E18, &qword_1D2A035A0);
  return objc_msgSendSuper2(&v26, sel_init);
}

void sub_1D29DCC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1D29DCCCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for _EmptyViewScene(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for _EmptyViewScene(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1D29DCE68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29DCEB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D29DCF14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29DCF5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D29DCFDC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D29DD094(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29DD0DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D29DD2D8(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v4 = *a1;
  return (*(v2 + 40))(&v4);
}

id sub_1D29DD3B8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for _EXRunningUIExtension(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D29DD3FC()
{
  v1 = CFRunLoopGetMain();
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_1D29DF724;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D29ECA40;
    aBlock[3] = &block_descriptor_35;
    v4 = _Block_copy(aBlock);
    v5 = v0;

    v6 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0, v4);
    _Block_release(v4);
    v7 = qword_1ED847918;
    qword_1ED847918 = v6;

    CFRunLoopAddObserver(v2, v6, *MEMORY[0x1E695E8D0]);
    getpid();
    return memorystatus_control();
  }

  else
  {
    result = sub_1D2A006A8();
    __break(1u);
  }

  return result;
}

void sub_1D29DD570()
{
  v0 = sub_1D2A00008();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v4 = sub_1D29FFFF8();
  v5 = sub_1D2A00598();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D29CC000, v4, v5, "Pinging launchd", v6, 2u);
    MEMORY[0x1D38A6000](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_1D29FFCD8();
  v7 = sub_1D29FFCE8();
  v7();
  v8 = qword_1ED847918;
  qword_1ED847918 = 0;
}

id sub_1D29DD720()
{
  v0 = sub_1D2A003B8();

  return v0;
}

uint64_t sub_1D29DD760(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  if (a5)
  {
    sub_1D29FFC38();
    v12 = sub_1D29FFC48();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_1D29FFC48();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_1D29DE898(a4, v11);

  return sub_1D29DF638(v11);
}

uint64_t sub_1D29DD8C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D29DD950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2A00348();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D2A00368();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2A00008();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v72 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v74 = &v65 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v73 = &v65 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v65 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v65 - v20;
  sub_1D29FFFE8();
  v22 = sub_1D29FFFF8();
  v23 = sub_1D2A00598();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v9;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D29CC000, v22, v23, "Bootstrapping _UIViewServiceSessionManager", v25, 2u);
    v26 = v25;
    v9 = v24;
    MEMORY[0x1D38A6000](v26, -1, -1);
  }

  v27 = *(v10 + 8);
  v27(v21, v9);
  [objc_opt_self() startViewServiceSessionWithDelegate_];
  type metadata accessor for _EXRunningUIExtension(0);
  v28 = sub_1D29FFCE8();
  result = v28(a1, a2);
  if (!result)
  {
    v30 = v9;
    sub_1D29FFCB8();
    sub_1D29FFFE8();
    v31 = sub_1D29FFFF8();
    v32 = sub_1D2A00598();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D29CC000, v31, v32, "Configuring internal mach service listener", v33, 2u);
      MEMORY[0x1D38A6000](v33, -1, -1);
    }

    v27(v19, v30);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1D29DF4D4;
    *(v35 + 24) = v34;
    v79 = sub_1D29DF510;
    v80 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1D29EE4E8;
    v78 = &block_descriptor_8;
    v36 = _Block_copy(&aBlock);
    v37 = objc_opt_self();

    v38 = v37;
    v39 = [v37 listenerWithConfigurator_];
    _Block_release(v36);

    LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

    if ((v36 & 1) == 0)
    {
      [v39 activate];
      sub_1D29FFFE8();
      v40 = sub_1D29FFFF8();
      v41 = sub_1D2A00598();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1D29CC000, v40, v41, "Checking in with launchd", v42, 2u);
        MEMORY[0x1D38A6000](v42, -1, -1);
      }

      v27(v73, v30);
      v43 = CFRunLoopGetMain();
      if (!v43)
      {
        goto LABEL_15;
      }

      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v3;
      v79 = sub_1D29DF518;
      v80 = v45;
      aBlock = MEMORY[0x1E69E9820];
      v76 = 1107296256;
      v77 = sub_1D29ECA40;
      v78 = &block_descriptor_14;
      v46 = _Block_copy(&aBlock);
      v3 = v3;

      v47 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0, v46);
      _Block_release(v46);
      v48 = qword_1ED847918;
      qword_1ED847918 = v47;

      CFRunLoopAddObserver(v44, v47, *MEMORY[0x1E695E8D0]);
      getpid();
      memorystatus_control();
      sub_1D29FFFE8();
      v49 = sub_1D29FFFF8();
      v50 = sub_1D2A00598();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1D29CC000, v49, v50, "Configuring service listener", v51, 2u);
        MEMORY[0x1D38A6000](v51, -1, -1);
      }

      v27(v74, v30);
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = sub_1D29DF520;
      *(v53 + 24) = v52;
      v79 = sub_1D29DF744;
      v80 = v53;
      aBlock = MEMORY[0x1E69E9820];
      v76 = 1107296256;
      v77 = sub_1D29EE4E8;
      v78 = &block_descriptor_22;
      v54 = _Block_copy(&aBlock);

      v39 = [v38 listenerWithConfigurator_];
      _Block_release(v54);

      LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

      if ((v54 & 1) == 0)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
LABEL_15:
    sub_1D2A006A8();
    __break(1u);
LABEL_16:
    [v39 activate];
    sub_1D29D95F8(0, &qword_1EC7013E0, 0x1E69E9610);
    v55 = sub_1D2A005C8();
    v56 = swift_allocObject();
    *(v56 + 16) = v3;
    v79 = sub_1D29DF558;
    v80 = v56;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1D29DE600;
    v78 = &block_descriptor_28;
    v57 = _Block_copy(&aBlock);
    v58 = v3;

    v59 = v66;
    sub_1D2A00358();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D29DF57C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700FB8, &qword_1D2A03828);
    sub_1D29DF5D4();
    v60 = v68;
    v61 = v71;
    sub_1D2A00658();
    MEMORY[0x1D38A5470](0, v59, v60, v57);
    _Block_release(v57);

    (*(v70 + 8))(v60, v61);
    (*(v67 + 8))(v59, v69);
    sub_1D29FFFE8();
    v62 = sub_1D29FFFF8();
    v63 = sub_1D2A00598();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1D29CC000, v62, v63, "Resuming service listener", v64, 2u);
      MEMORY[0x1D38A6000](v64, -1, -1);
    }

    v27(v72, v30);
    result = [objc_opt_self() activateXPCService];
    __break(1u);
  }

  return result;
}

void sub_1D29DE410(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D2A00008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1D2A003B8();
    [a1 setDomain_];

    v12 = sub_1D2A003B8();
    [a1 setService_];

    [a1 setDelegate_];
  }

  else
  {
    sub_1D29FFFE8();
    v13 = sub_1D29FFFF8();
    v14 = sub_1D2A005A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D29CC000, v13, v14, "Could not find _EXRunningUIKitSceneHostedExtension when configuring listener", v15, 2u);
      MEMORY[0x1D38A6000](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1D29DE600(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1D29DE644(char *a1)
{
  *&a1[qword_1EC700F20] = 0;
  *&a1[qword_1EC700F28] = 0;
  *&a1[qword_1EC700F30] = 0;
  v2.receiver = a1;
  v2.super_class = type metadata accessor for _EXRunningUIViewServiceExtension(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_1D29DE6AC()
{
  v1 = *(v0 + qword_1EC700F30);
}

id sub_1D29DE714(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D29DE754(uint64_t a1)
{
  v2 = *(a1 + qword_1EC700F30);
}

id sub_1D29DE7B8(void *a1)
{
  [a1 setActivateOnResume];

  return [a1 setFaultOnSuspend];
}

void sub_1D29DE800(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1D29DEFA0(v7, v8);

  swift_unknownObjectRelease();
}

void sub_1D29DE898(void *a1, uint64_t a2)
{
  v63 = a1;
  v4 = sub_1D2A00008();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  v9 = MEMORY[0x1EEE9AC00](v64);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v62 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v62 - v18;
  v20 = [objc_opt_self() sharedInstance];
  sub_1D29DF6A0(a2, v19);
  v21 = sub_1D29FFC48();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = sub_1D29FFC28();
  (*(v22 + 8))(v19, v21);
  v24 = [v20 sessionForIdentifier_];

  if (v24)
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v27 = v24;
      sub_1D29FFFE8();
      sub_1D29DF6A0(a2, v17);
      v28 = sub_1D29FFFF8();
      v29 = sub_1D2A00598();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v68 = v31;
        *v30 = 136315138;
        sub_1D29DF6A0(v17, v14);
        v32 = sub_1D2A003F8();
        v34 = v33;
        sub_1D29DF638(v17);
        v35 = sub_1D29F87C4(v32, v34, &v68);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_1D29CC000, v28, v29, "Received UI session %s root view controller from UIKit", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x1D38A6000](v31, -1, -1);
        MEMORY[0x1D38A6000](v30, -1, -1);
      }

      else
      {

        sub_1D29DF638(v17);
      }

      (*(v66 + 8))(v8, v67);
      v2 = v63;
      if (v63)
      {
        objc_opt_self();
        v56 = swift_dynamicCastObjCClass();
        if (v56)
        {
          v57 = v56;
          v58 = v2;
          v59 = sub_1D29FFC58();
          [v57 setExtension_];

          [v26 setRootViewController_];
          return;
        }
      }

LABEL_16:
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_1D2A00678();

      v68 = 0xD000000000000025;
      v69 = 0x80000001D2A07C40;
      v70 = v2;
      v60 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700FE0, &unk_1D2A03840);
      v61 = sub_1D2A003F8();
      MEMORY[0x1D38A52F0](v61);

      MEMORY[0x1D38A52F0](96, 0xE100000000000000);
      sub_1D2A006A8();
      __break(1u);
      return;
    }
  }

  v36 = v65;
  sub_1D29FFFE8();
  sub_1D29DF6A0(a2, v11);
  v37 = v24;
  v38 = sub_1D29FFFF8();
  v39 = sub_1D2A005A8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v68 = v41;
    *v40 = 136315650;
    v70 = v24;
    v42 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700FD0, &qword_1D2A03838);
    v43 = sub_1D2A003F8();
    v45 = sub_1D29F87C4(v43, v44, &v68);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    sub_1D29DF6A0(v11, v14);
    v46 = sub_1D2A003F8();
    v48 = v47;
    sub_1D29DF638(v11);
    v49 = sub_1D29F87C4(v46, v48, &v68);

    *(v40 + 14) = v49;
    *(v40 + 22) = 2080;
    sub_1D29D95F8(0, &qword_1EC700FD8, off_1E8401738);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = NSStringFromClass(ObjCClassFromMetadata);
    v52 = sub_1D2A003E8();
    v54 = v53;

    v55 = sub_1D29F87C4(v52, v54, &v68);

    *(v40 + 24) = v55;
    swift_arrayDestroy();
    MEMORY[0x1D38A6000](v41, -1, -1);
    MEMORY[0x1D38A6000](v40, -1, -1);

    (*(v66 + 8))(v65, v67);
  }

  else
  {

    sub_1D29DF638(v11);
    (*(v66 + 8))(v36, v67);
  }
}

void sub_1D29DEFA0(void *a1, void *a2)
{
  v5 = sub_1D2A00008();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v47 = sub_1D29DE7B8;
  v48 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1D29EE4E8;
  v46 = &block_descriptor;
  v12 = _Block_copy(&aBlock);

  v13 = [a2 extractNSXPCConnectionWithConfigurator_];
  _Block_release(v12);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v39 = a1;
    v40 = v13;
    v41 = v5;
    v42 = v2;
    v14 = a2;
    v15 = [a2 service];
    v16 = sub_1D2A003E8();
    v18 = v17;

    if (v16 == 0x767265536E69614DLL && v18 == 0xEB00000000656369)
    {

      goto LABEL_6;
    }

    v19 = sub_1D2A00708();

    if (v19)
    {
LABEL_6:
      sub_1D29FFFE8();
      v20 = sub_1D29FFFF8();
      v21 = sub_1D2A00598();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D29CC000, v20, v21, "Received connection request on service listener", v22, 2u);
        MEMORY[0x1D38A6000](v22, -1, -1);
      }

      (*(v6 + 8))(v11, v41);
      v23 = v40;
      if (sub_1D29FFC78())
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v24 = [v14 service];
    v25 = sub_1D2A003E8();
    v27 = v26;

    if (v25 == 0x6C616E7265746E49 && v27 == 0xEF65636976726553)
    {

      goto LABEL_15;
    }

    v28 = sub_1D2A00708();

    if (v28)
    {
LABEL_15:
      sub_1D29FFFE8();
      v29 = sub_1D29FFFF8();
      v30 = sub_1D2A00598();
      v31 = os_log_type_enabled(v29, v30);
      v23 = v40;
      if (v31)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1D29CC000, v29, v30, "Received scene session connection request on internal mach service listener", v32, 2u);
        MEMORY[0x1D38A6000](v32, -1, -1);
      }

      (*(v6 + 8))(v9, v41);
      v33 = sub_1D29FFC58();
      v34 = [objc_allocWithZone(_EXUISceneSession) initWithExtension_];

      LOBYTE(v33) = [v34 shouldAcceptXPCConnection_];
      if (v33)
      {
        goto LABEL_10;
      }

LABEL_9:
      [v14 invalidate];
LABEL_10:

      return;
    }
  }

  aBlock = 0;
  v44 = 0xE000000000000000;
  sub_1D2A00678();

  aBlock = 0xD000000000000030;
  v44 = 0x80000001D2A07B90;
  v35 = [v39 description];
  v36 = sub_1D2A003E8();
  v38 = v37;

  MEMORY[0x1D38A52F0](v36, v38);

  sub_1D2A006A8();
  __break(1u);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D29DF57C()
{
  result = qword_1EC700FB0;
  if (!qword_1EC700FB0)
  {
    sub_1D2A00348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC700FB0);
  }

  return result;
}

unint64_t sub_1D29DF5D4()
{
  result = qword_1EC700FC0;
  if (!qword_1EC700FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC700FB8, &qword_1D2A03828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC700FC0);
  }

  return result;
}

uint64_t sub_1D29DF638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D29DF6A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double AppExtensionManager.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D29F7868;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

id AppExtensionManagerScene.body.getter@<X0>(uint64_t (**a1)()@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for ExtensionPickerView.Model(0)) init];
  v2 = swift_allocObject();
  *(v2 + 16) = v6;
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  *a1 = sub_1D29F7B58;
  a1[1] = 0;
  a1[2] = 0x746C7561666564;
  a1[3] = 0xE700000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D29E3224;
  *(v4 + 24) = v2;
  a1[4] = sub_1D29E3288;
  a1[5] = v4;
  a1[6] = sub_1D29E322C;
  a1[7] = v3;

  return v6;
}

uint64_t sub_1D29DF890@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ExtensionPickerView.Model(0);
  sub_1D29E5DA8(&qword_1EC7010E0, type metadata accessor for ExtensionPickerView.Model, &unk_1D2A03A74);
  v4 = a1;
  result = sub_1D2A00068();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D29DF914(void *a1, uint64_t a2)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

id sub_1D29DF9A0@<X0>(uint64_t (**a1)()@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for ExtensionPickerView.Model(0)) init];
  v2 = swift_allocObject();
  *(v2 + 16) = v6;
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  *a1 = sub_1D29F7B58;
  a1[1] = 0;
  a1[2] = 0x746C7561666564;
  a1[3] = 0xE700000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D29E68EC;
  *(v4 + 24) = v2;
  a1[4] = sub_1D29E68E8;
  a1[5] = v4;
  a1[6] = sub_1D29E68F0;
  a1[7] = v3;

  return v6;
}

uint64_t sub_1D29DFABC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  return v1;
}

id sub_1D29DFB30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7010C8, &qword_1D2A03B98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtCV12ExtensionKit19ExtensionPickerViewP33_ABD14ED04C699754E7718E30E84C391A5Model__containerApps;
  v19 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701020, &qword_1D2A03928);
  sub_1D2A00028();
  (*(v3 + 32))(&v1[v6], v5, v2);
  type metadata accessor for _EXRunningUIExtension(0);
  v7 = sub_1D29FFC98();
  sub_1D29D95F8(0, &qword_1EC7010D0, 0x1E6963620);
  v8 = v7;
  v9 = sub_1D29FFC88();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_1D29DFD2C(v9, v11, v13, v15);
  objc_opt_self();
  *&v1[OBJC_IVAR____TtCV12ExtensionKit19ExtensionPickerViewP33_ABD14ED04C699754E7718E30E84C391A5Model_hostAppRecord] = swift_dynamicCastObjCClassUnconditional();
  v16 = type metadata accessor for ExtensionPickerView.Model(0);
  v18.receiver = v1;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_1D29DFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_1D29FFB98();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1D29DFE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_1D29FFE98();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_1D29FFE78();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = sub_1D29FFEA8();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v9 = sub_1D29FFBB8();
  v5[28] = v9;
  v5[29] = *(v9 - 8);
  v5[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D29E0050, 0, 0);
}

uint64_t sub_1D29E0050()
{
  v1 = *(*(v0 + 112) + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *(v0 + 184);
      v4 =  + 40;
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = *(v0 + 208);
        v6 = *(v0 + 216);
        v8 = *(v0 + 176);

        sub_1D29FFE68();
        (*(v3 + 16))(v7, v6, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D29E3874(0, v5[2] + 1, 1, v5, &qword_1EC7010C0, &qword_1D2A03B90, MEMORY[0x1E6966C40]);
        }

        v10 = v5[2];
        v9 = v5[3];
        if (v10 >= v9 >> 1)
        {
          v5 = sub_1D29E3874((v9 > 1), v10 + 1, 1, v5, &qword_1EC7010C0, &qword_1D2A03B90, MEMORY[0x1E6966C40]);
        }

        v11 = *(v0 + 208);
        v12 = *(v0 + 176);
        (*(v3 + 8))(*(v0 + 216), v12);
        v5[2] = v10 + 1;
        (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
        v4 += 16;
        --v2;
      }

      while (v2);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

LABEL_22:
    *(v0 + 248) = v5;
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v25 = *(v0 + 128);
    *(v0 + 80) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701098, &qword_1D2A03B80);
    sub_1D29E67A4(&qword_1EC7010A0, &qword_1EC701098, &qword_1D2A03B80, MEMORY[0x1E69E6340]);
    sub_1D2A00578();
    sub_1D29FFE88();
    (*(v24 + 8))(v23, v25);
    v26 = sub_1D29E5DA8(&qword_1EC7010A8, MEMORY[0x1E6966C20], MEMORY[0x1E6966C28]);
    v27 = swift_task_alloc();
    *(v0 + 256) = v27;
    *v27 = v0;
    v27[1] = sub_1D29E062C;
    v28 = *(v0 + 152);

    return MEMORY[0x1EEE6D8C8](v0 + 88, v28, v26);
  }

  v30 = [objc_opt_self() enumeratorWithParentApplicationRecord_];
  sub_1D2A00588();
  sub_1D29FFBA8();
  if (!*(v0 + 40))
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_21:
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    goto LABEL_22;
  }

  v13 = *(v0 + 184);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D29E5DF0((v0 + 16), (v0 + 48));
    sub_1D29D95F8(0, &qword_1EC7010B8, 0x1E6963668);
    if (!swift_dynamicCast())
    {
      return sub_1D2A006A8();
    }

    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 176);
    v17 = *(v0 + 104);
    sub_1D29FFE58();
    (*(v13 + 16))(v15, v14, v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1D29E3874(0, v5[2] + 1, 1, v5, &qword_1EC7010C0, &qword_1D2A03B90, MEMORY[0x1E6966C40]);
    }

    v19 = v5[2];
    v18 = v5[3];
    if (v19 >= v18 >> 1)
    {
      v5 = sub_1D29E3874((v18 > 1), v19 + 1, 1, v5, &qword_1EC7010C0, &qword_1D2A03B90, MEMORY[0x1E6966C40]);
    }

    v21 = *(v0 + 192);
    v20 = *(v0 + 200);
    v22 = *(v0 + 176);

    (*(v13 + 8))(v20, v22);
    v5[2] = v19 + 1;
    (*(v13 + 32))(v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19, v21, v22);
    sub_1D29FFBA8();
    if (!*(v0 + 40))
    {
      goto LABEL_21;
    }
  }
}

uint64_t sub_1D29E062C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1D29E0A80;
  }

  else
  {
    v2 = sub_1D29E0740;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D29E0764()
{
  v1 = v0[34];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[35] = v2;
    *v2 = v0;
    v2[1] = sub_1D29E08C0;

    return sub_1D29E0FE0(v1);
  }

  else
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D29E08C0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = sub_1D29E5DA8(&qword_1EC7010A8, MEMORY[0x1E6966C20], MEMORY[0x1E6966C28]);
  v4 = swift_task_alloc();
  *(v1 + 256) = v4;
  *v4 = v2;
  v4[1] = sub_1D29E062C;
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6D8C8](v1 + 88, v5, v3);
}

uint64_t sub_1D29E0A80()
{
  *(v0 + 96) = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7010B0, &qword_1D2A03B88);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D29E0B14, 0, 0);
}

uint64_t sub_1D29E0B14()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D29E0BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701090, &qword_1D2A03B68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D29E6028(a3, v22 - v9, &qword_1EC701090, &qword_1D2A03B68);
  v11 = sub_1D2A00568();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D29DB7F4(v10, &qword_1EC701090, &qword_1D2A03B68);
  }

  else
  {
    sub_1D2A00558();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D2A004F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D2A00408() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D29DB7F4(a3, &qword_1EC701090, &qword_1D2A03B68);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D29DB7F4(a3, &qword_1EC701090, &qword_1D2A03B68);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D29E0FE0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D29FFE08();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_1D29FFF18();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D29E1108, 0, 0);
}

uint64_t sub_1D29E1108()
{
  v60 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v6 = MEMORY[0x1E69E7CC8];
LABEL_27:
    v0[12] = v6;
    v43 = *(v6 + 2);
    if (v43)
    {
      v44 = sub_1D29E3A50(*(v6 + 2), 0);
      v45 = sub_1D29E584C(&v59, v44 + 2, v43, v6);
      v46 = v59;
      swift_bridgeObjectRetain_n();
      sub_1D29E59CC(v46);
      if (v45 == v43)
      {
LABEL_31:
        v59 = v44;
        sub_1D29E3B4C(&v59);

        v0[13] = v59;
        sub_1D2A00548();
        v0[14] = sub_1D2A00538();
        v48 = sub_1D2A004F8();

        return MEMORY[0x1EEE6DFA0](sub_1D29E16CC, v48, v47);
      }

      __break(1u);
    }

    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v3 = v0[10];
  v4 = v0[6];
  v55 = *(v3 + 16);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v51 = (v4 + 16);
  v52 = v4;
  v53 = (v4 + 8);
  v54 = *(v3 + 72);
  v6 = MEMORY[0x1E69E7CC8];
  v7 = &off_1E8402000;
  while (1)
  {
    v55(v0[11], v5, v0[9]);
    sub_1D29FFE28();
    v8 = sub_1D29FFD88();
    if (v8)
    {
      break;
    }

    (*v53)(v0[8], v0[5]);
LABEL_4:
    v5 += v54;
    if (!--v2)
    {
      goto LABEL_27;
    }
  }

  v57 = v2;
  v9 = v8;
  v10 = [v9 v7[106]];
  v11 = sub_1D29FFBF8();
  v13 = v12;

  if (*(v6 + 2) && (v14 = sub_1D29E3AD4(v11, v13), (v15 & 1) != 0))
  {
    v16 = *(v6 + 7) + 16 * v14;
    v17 = *(v16 + 8);
    v58 = *v16;

    sub_1D29E59D4(v11, v13);
  }

  else
  {
    sub_1D29E59D4(v11, v13);
    v58 = v9;
    v17 = MEMORY[0x1E69E7CC0];
  }

  (*v51)(v0[7], v0[8], v0[5]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D29E3874(0, v17[2] + 1, 1, v17, &qword_1EC701070, &qword_1D2A03B50, MEMORY[0x1E6966C00]);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D29E3874((v18 > 1), v19 + 1, 1, v17, &qword_1EC701070, &qword_1D2A03B50, MEMORY[0x1E6966C00]);
  }

  v20 = v0[7];
  v21 = v0[5];
  v17[2] = v19 + 1;
  (*(v52 + 32))(v17 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v19, v20, v21);
  v22 = [v9 v7[106]];
  v56 = v9;

  v23 = sub_1D29FFBF8();
  v25 = v24;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v6;
  v28 = sub_1D29E3AD4(v23, v25);
  v29 = *(v6 + 2);
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    return MEMORY[0x1EEE6B550](v31);
  }

  v32 = v27;
  if (*(v6 + 3) >= v31)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v27)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v31 = sub_1D29E56C0();
      v6 = v59;
      if (v32)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    *&v6[8 * (v28 >> 6) + 64] |= 1 << v28;
    v36 = (*(v6 + 6) + 16 * v28);
    *v36 = v23;
    v36[1] = v25;
    v37 = (*(v6 + 7) + 16 * v28);
    *v37 = v58;
    v37[1] = v17;
    v38 = *(v6 + 2);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_38;
    }

    *(v6 + 2) = v40;
    goto LABEL_25;
  }

  sub_1D29E4B9C(v31, isUniquelyReferenced_nonNull_native);
  v6 = v59;
  v31 = sub_1D29E3AD4(v23, v25);
  if ((v32 & 1) == (v33 & 1))
  {
    v28 = v31;
    if ((v32 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    v34 = *(v6 + 7) + 16 * v28;
    v35 = *v34;
    *v34 = v58;
    *(v34 + 8) = v17;

    sub_1D29E59D4(v23, v25);
LABEL_25:
    v0 = v50;
    v41 = v50[8];
    v42 = v50[5];

    (*v53)(v41, v42);

    v2 = v57;
    v7 = &off_1E8402000;
    goto LABEL_4;
  }

  v31 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6B550](v31);
}

uint64_t sub_1D29E16CC()
{
  v1 = v0[13];
  v2 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;
  v3 = v2;
  sub_1D2A00048();

  return MEMORY[0x1EEE6DFA0](sub_1D29E1788, 0, 0);
}

uint64_t sub_1D29E1788()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1D29E180C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionPickerView.Model(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D29E18CC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ExtensionPickerView.Model(0);
  result = sub_1D2A00018();
  *a2 = result;
  return result;
}

uint64_t sub_1D29E190C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v35 = a1;
  v38 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7010F0, &qword_1D2A03C48);
  v36 = *(v39 - 8);
  v4 = MEMORY[0x1EEE9AC00](v39);
  v37 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-v6];
  v8 = sub_1D2A00108();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1D2A000F8();
  sub_1D2A000E8();
  v9 = [*(a2 + OBJC_IVAR____TtCV12ExtensionKit19ExtensionPickerViewP33_ABD14ED04C699754E7718E30E84C391A5Model_hostAppRecord) localizedName];
  sub_1D2A003E8();

  sub_1D2A000D8();

  sub_1D2A000E8();
  sub_1D2A00128();
  *&v40 = sub_1D2A00278();
  *(&v40 + 1) = v10;
  v12 = v11;
  v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7010F8, &qword_1D2A03C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2A03850;
  v15 = sub_1D2A00228();
  *(inited + 32) = v15;
  v16 = sub_1D2A00238();
  *(inited + 33) = v16;
  v17 = sub_1D2A00258();
  *(inited + 34) = v17;
  v18 = sub_1D2A00248();
  sub_1D2A00248();
  if (sub_1D2A00248() != v15)
  {
    v18 = sub_1D2A00248();
  }

  sub_1D2A00248();
  if (sub_1D2A00248() != v16)
  {
    v18 = sub_1D2A00248();
  }

  sub_1D2A00248();
  v19 = sub_1D2A00248();
  if (v19 != v17)
  {
    v19 = sub_1D2A00248();
    v18 = v19;
  }

  v20 = v12 & 1;
  v57 = v12 & 1;
  v34 = v12 & 1;
  v54 = 1;
  MEMORY[0x1EEE9AC00](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701100, &qword_1D2A03C58);
  sub_1D29E618C(&qword_1EC701108, &qword_1EC701100, &qword_1D2A03C58, sub_1D29E5FD4);
  v21 = v7;
  sub_1D2A00268();
  v22 = v36;
  v23 = *(v36 + 16);
  v24 = v37;
  v25 = v39;
  v23(v37, v21, v39);
  v42 = v40;
  LOBYTE(v43) = v20;
  *(&v43 + 1) = *v56;
  DWORD1(v43) = *&v56[3];
  *(&v43 + 1) = v41;
  v44[0] = v18;
  *&v44[1] = *v55;
  *&v44[4] = *&v55[3];
  memset(&v44[8], 0, 32);
  v44[40] = 1;
  v26 = *&v44[16];
  v27 = v38;
  v38[2] = *v44;
  v27[3] = v26;
  *(v27 + 57) = *&v44[25];
  v28 = v43;
  *v27 = v42;
  v27[1] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701118, &qword_1D2A03C60);
  v23(v27 + *(v29 + 48), v24, v25);
  v30 = v27 + *(v29 + 64);
  *v30 = 0;
  v30[8] = 1;
  sub_1D29E6028(&v42, &v45, &qword_1EC701120, &qword_1D2A03C68);
  v31 = *(v22 + 8);
  v31(v21, v25);
  v31(v24, v25);
  v45 = v40;
  v46 = v34;
  *v47 = *v56;
  *&v47[3] = *&v56[3];
  v48 = v41;
  v49 = v18;
  *v50 = *v55;
  *&v50[3] = *&v55[3];
  v51 = 0u;
  v52 = 0u;
  v53 = 1;
  return sub_1D29DB7F4(&v45, &qword_1EC701120, &qword_1D2A03C68);
}

uint64_t sub_1D29E1ED4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701020, &qword_1D2A03928);
  sub_1D29E67A4(&qword_1EC701128, &qword_1EC701020, &qword_1D2A03928, MEMORY[0x1E69E6338]);
  sub_1D29E5DA8(&qword_1EC701058, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1D29E5FD4();
  return sub_1D2A00328();
}

void sub_1D29E2058(void *a1)
{
  v1 = [a1 URL];
  sub_1D29FFBD8();
}

void sub_1D29E20B4(id *a1)
{
  v1 = [*a1 URL];
  sub_1D29FFBD8();
}

id sub_1D29E2114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a2 + OBJC_IVAR____TtCV12ExtensionKit19ExtensionPickerViewP33_ABD14ED04C699754E7718E30E84C391A5Model_hostAppRecord);
  *a3 = *a1;
  a3[1] = v4;
  a3[2] = v7;
  v5 = v3;

  return v7;
}

uint64_t sub_1D29E2174@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_1D2A00138();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7010E8, &qword_1D2A03C40);
  return sub_1D29E190C(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t sub_1D29E21D8(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  swift_bridgeObjectRetain_n();
  v7 = a1;
  v8 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011B0, &qword_1D2A03DA8);
  sub_1D29E67A4(&qword_1EC7011B8, &qword_1EC7011B0, &qword_1D2A03DA8, MEMORY[0x1E69E6338]);
  sub_1D29E6208();
  return sub_1D2A00328();
}

void sub_1D29E22F8(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1D29FFE08();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  v10 = a2;
  v11 = sub_1D29E625C(v8, v10);
  v13 = v12;
  v15 = v14;

  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15 & 1;
}

uint64_t sub_1D29E23F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D29E6464(a1);
  v5 = [a1 localizedName];
  sub_1D2A003E8();

  sub_1D29E5A94();
  v6 = sub_1D2A00288();
  v8 = v7;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  v10 = v9 & 1;
  *(a2 + 24) = v9 & 1;
  *(a2 + 32) = v11;

  sub_1D29E6098(v6, v8, v10);

  sub_1D29E60A8(v6, v8, v10);
}

uint64_t sub_1D29E24E4()
{
  v1 = *v0;
  v2 = sub_1D2A000C8();
  sub_1D29E23F8(v1, &v7);
  v3 = v7;
  v4 = v10;
  v5 = v8;
  v14 = 1;
  v13 = v9;
  v7 = v2;
  *&v8 = 0;
  BYTE8(v8) = 1;
  v9 = v3;
  v10 = v5;
  v11 = v13;
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701188, &qword_1D2A03D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701190, &qword_1D2A03D70);
  sub_1D29E67A4(&qword_1EC701198, &qword_1EC701188, &qword_1D2A03D68, MEMORY[0x1E6981800]);
  sub_1D29E618C(&qword_1EC7011A0, &qword_1EC701190, &qword_1D2A03D70, sub_1D29E6208);
  return sub_1D2A00338();
}

uint64_t sub_1D29E264C@<X0>(char a3@<W2>, uint64_t *a4@<X8>)
{
  v39 = a4;
  v5 = sub_1D2A000B8();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701138, &qword_1D2A03CA0);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v34 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701140, &qword_1D2A03CA8);
  v9 = *(v47 - 8);
  v10 = MEMORY[0x1EEE9AC00](v47);
  v44 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v34 - v12;
  v13 = 0;
  if (a3)
  {
    v13 = sub_1D29E2C38();
  }

  v34 = v13;
  v49 = sub_1D29FFD68();
  v50 = v14;
  sub_1D29E5A94();
  v35 = sub_1D2A00288();
  v37 = v15;
  v38 = v16;
  v36 = v17;
  sub_1D2A00118();
  type metadata accessor for AppExtensionView.ObservableAppExtensionIdentity(0);
  sub_1D29E5DA8(&qword_1EC701148, type metadata accessor for AppExtensionView.ObservableAppExtensionIdentity, &unk_1D2A03A3C);
  sub_1D2A00078();
  swift_getKeyPath();
  sub_1D2A00088();

  v18 = v40;
  sub_1D2A00308();
  v19 = v43;
  sub_1D2A000A8();
  sub_1D29E67A4(&qword_1EC701150, &qword_1EC701138, &qword_1D2A03CA0, MEMORY[0x1E697D6B0]);
  sub_1D29E5DA8(&qword_1EC701158, MEMORY[0x1E697C488], MEMORY[0x1E697C470]);
  v20 = v48;
  v21 = v42;
  v22 = v46;
  sub_1D2A002C8();
  (*(v45 + 8))(v19, v22);
  (*(v41 + 8))(v18, v21);
  v23 = *(v9 + 16);
  v24 = v44;
  v25 = v47;
  v23(v44, v20, v47);
  v27 = v38;
  v26 = v39;
  *v39 = v13;
  v28 = v35;
  v29 = v37;
  v26[1] = v35;
  v26[2] = v29;
  v30 = v36 & 1;
  *(v26 + 24) = v36 & 1;
  v26[4] = v27;
  v26[5] = 0;
  *(v26 + 48) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701160, &qword_1D2A03CB0);
  v23(v26 + *(v31 + 80), v24, v25);

  sub_1D29E6098(v28, v29, v30);

  v32 = *(v9 + 8);
  v32(v48, v25);
  v32(v24, v25);
  sub_1D29E60A8(v28, v29, v30);
}

uint64_t sub_1D29E2B40@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  *a2 = v4;
  return result;
}

uint64_t sub_1D29E2BC0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D2A00048();
  return sub_1D29E2ED4();
}

uint64_t sub_1D29E2C38()
{
  v0 = sub_1D2A00108();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D29FFD98();
  v2 = [v1 symbol];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 imageForSize:32.0 scale:{32.0, 2.0}];
    if (v4)
    {
      v5 = v4;
      if ([v4 CGImage])
      {
LABEL_8:
        [v5 scale];
        sub_1D2A000F8();
        sub_1D2A000E8();
        sub_1D29FFD68();
        sub_1D2A000D8();

        sub_1D2A000E8();
        sub_1D2A00128();
        sub_1D2A00278();
        v7 = sub_1D2A002F8();

        return v7;
      }

      __break(1u);
    }
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) init];
  [v3 setSize_];
  v6 = [v1 prepareImageForDescriptor_];
  if (v6)
  {
    v5 = v6;
    if ([v6 CGImage])
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  result = sub_1D2A006A8();
  __break(1u);
  return result;
}

uint64_t sub_1D29E2ED4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  if (v1 == 1)
  {
    return sub_1D29FFDC8();
  }

  else
  {
    return sub_1D29FFDE8();
  }
}

uint64_t sub_1D29E2F8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  return v1;
}

uint64_t sub_1D29E3000()
{
  v1 = OBJC_IVAR____TtCV12ExtensionKitP33_ABD14ED04C699754E7718E30E84C391A16AppExtensionView30ObservableAppExtensionIdentity_inner;
  v2 = sub_1D29FFE08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV12ExtensionKitP33_ABD14ED04C699754E7718E30E84C391A16AppExtensionView30ObservableAppExtensionIdentity__enabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701060, &qword_1D2A03AF8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1D29E30F8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppExtensionView.ObservableAppExtensionIdentity(0);
  result = sub_1D2A00018();
  *a2 = result;
  return result;
}

uint64_t sub_1D29E3138@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_1D2A000C8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701130, &qword_1D2A03C98);
  return sub_1D29E264C(v3, (a1 + *(v4 + 44)));
}

void sub_1D29E31A4()
{
  v1 = [*v0 URL];
  sub_1D29FFBD8();
}

uint64_t sub_1D29E3234(void *(*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_1D29E5E00();
  return sub_1D2A00318();
}

unint64_t sub_1D29E3290(uint64_t a1)
{
  result = sub_1D29E32B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D29E32B8()
{
  result = qword_1EC700FF0;
  if (!qword_1EC700FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC700FF0);
  }

  return result;
}

void sub_1D29E3340(uint64_t a1)
{
  sub_1D29E33DC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D29E33DC(uint64_t a1)
{
  if (!qword_1EC701018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC701020, &qword_1D2A03928);
    v1 = sub_1D2A00058();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC701018);
    }
  }
}

void sub_1D29E3468(uint64_t a1)
{
  sub_1D29FFE08();
  if (v1 <= 0x3F)
  {
    sub_1D29E3540();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D29E3540()
{
  if (!qword_1EC701050)
  {
    v0 = sub_1D2A00058();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC701050);
    }
  }
}

uint64_t sub_1D29E3590(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29E35D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D29E3678@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2A00038();

  *a2 = v4;
  return result;
}

uint64_t sub_1D29E36F8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1D2A00048();
}

char *sub_1D29E3770(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701080, &qword_1D2A03B58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1D29E3874(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1D29E3A50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701088, &qword_1D2A03B60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1D29E3AD4(uint64_t a1, unint64_t a2)
{
  sub_1D2A00738();
  sub_1D29FFC08();
  v4 = sub_1D2A00748();

  return sub_1D29E4E5C(a1, a2, v4);
}

uint64_t sub_1D29E3B4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D29E5A80(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D29E3BB8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D29E3BB8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D2A006E8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D2A004C8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D29E3E50(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D29E3CB0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D29E3CB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
LABEL_5:
    v18 = a3;
    v6 = *(v19 + 16 * a3);
    v16 = v5;
    v17 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;

      v9 = v7;

      v10 = [v8 localizedName];
      sub_1D2A003E8();

      v11 = [v9 localizedName];
      sub_1D2A003E8();

      sub_1D29E5A94();
      v12 = sub_1D2A00628();

      if (v12 != -1)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 16;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v13 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v13;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D29E3E50(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v105 = result;
    while (1)
    {
      v11 = v9;
      v106 = v9;
      if (v9 + 1 >= v8)
      {
        v20 = v9 + 1;
      }

      else
      {
        v112 = v8;
        v101 = v10;
        v103 = v5;
        v12 = (*v6 + 16 * (v9 + 1));
        v107 = 16 * v9;
        v13 = (*v6 + 16 * v9);
        v14 = *v13;
        v15 = *v12;

        v9 = v14;

        v16 = [v15 localizedName];
        sub_1D2A003E8();

        v17 = [v9 localizedName];
        sub_1D2A003E8();

        sub_1D29E5A94();
        v110 = sub_1D2A00628();

        v18 = v11 + 2;
        v19 = v13 + 3;
        while (1)
        {
          v20 = v112;
          if (v112 == v18)
          {
            break;
          }

          v9 = *v19;
          v21 = v19 + 2;
          v22 = *(v19 - 1);
          v23 = v19[1];

          v24 = v22;

          v25 = [v23 localizedName];
          sub_1D2A003E8();

          v26 = [v24 localizedName];
          sub_1D2A003E8();

          v27 = sub_1D2A00628();

          ++v18;
          v19 = v21;
          if ((v110 == -1) == (v27 != -1))
          {
            v20 = v18 - 1;
            break;
          }
        }

        v10 = v101;
        v5 = v103;
        v6 = a3;
        v7 = v105;
        v11 = v106;
        if (v110 == -1)
        {
          if (v20 < v106)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            return result;
          }

          if (v106 < v20)
          {
            v28 = 16 * v20 - 16;
            v29 = v106;
            v30 = v20;
            v31 = v107;
            do
            {
              if (v29 != --v30)
              {
                v33 = *a3;
                if (!*a3)
                {
                  goto LABEL_128;
                }

                v32 = *(v33 + v31);
                *(v33 + v31) = *(v33 + v28);
                *(v33 + v28) = v32;
              }

              ++v29;
              v28 -= 16;
              v31 += 16;
            }

            while (v29 < v30);
            v11 = v106;
          }
        }
      }

      v34 = v6[1];
      if (v20 >= v34)
      {
        break;
      }

      if (__OFSUB__(v20, v11))
      {
        goto LABEL_120;
      }

      if (v20 - v11 >= a4)
      {
        v9 = v20;
        if (v20 < v106)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v11 = v106;
        if (__OFADD__(v106, a4))
        {
          goto LABEL_121;
        }

        if (v106 + a4 >= v34)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = v106 + a4;
        }

        if (v9 < v106)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v20 == v9)
        {
          break;
        }

        v102 = v10;
        v104 = v5;
        v114 = *v6;
        v35 = *v6 + 16 * v20 - 16;
        v36 = v106 - v20;
        v108 = v9;
        do
        {
          v111 = v35;
          v113 = v20;
          v37 = *(v114 + 16 * v20);
          v109 = v36;
          do
          {
            v38 = *v35;
            v39 = v37;

            v40 = v38;

            v41 = [v39 localizedName];
            sub_1D2A003E8();

            v42 = [v40 localizedName];
            sub_1D2A003E8();

            sub_1D29E5A94();
            v43 = sub_1D2A00628();

            if (v43 != -1)
            {
              break;
            }

            if (!v114)
            {
              goto LABEL_125;
            }

            v44 = *v35;
            v37 = *(v35 + 16);
            *v35 = v37;
            *(v35 + 16) = v44;
            v35 -= 16;
          }

          while (!__CFADD__(v36++, 1));
          v20 = v113 + 1;
          v35 = v111 + 16;
          v9 = v108;
          v36 = v109 - 1;
        }

        while ((v113 + 1) != v108);
        v10 = v102;
        v5 = v104;
        v6 = a3;
        v7 = v105;
        if (v108 < v106)
        {
          goto LABEL_119;
        }
      }

LABEL_41:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D29E3770(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v47 = *(v10 + 16);
      v46 = *(v10 + 24);
      v48 = v47 + 1;
      v49 = v106;
      if (v47 >= v46 >> 1)
      {
        result = sub_1D29E3770((v46 > 1), v47 + 1, 1, v10);
        v49 = v106;
        v10 = result;
      }

      *(v10 + 16) = v48;
      v50 = v10 + 16 * v47;
      *(v50 + 32) = v49;
      *(v50 + 40) = v9;
      v51 = *v7;
      if (!*v7)
      {
        goto LABEL_129;
      }

      if (v47)
      {
        while (1)
        {
          v52 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v53 = *(v10 + 32);
            v54 = *(v10 + 40);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_60:
            if (v56)
            {
              goto LABEL_108;
            }

            v69 = (v10 + 16 * v48);
            v71 = *v69;
            v70 = v69[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_111;
            }

            v75 = (v10 + 32 + 16 * v52);
            v77 = *v75;
            v76 = v75[1];
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_114;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_115;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v48 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v79 = (v10 + 16 * v48);
          v81 = *v79;
          v80 = v79[1];
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_74:
          if (v74)
          {
            goto LABEL_110;
          }

          v82 = v10 + 16 * v52;
          v84 = *(v82 + 32);
          v83 = *(v82 + 40);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_113;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_81:
          v90 = v52 - 1;
          if (v52 - 1 >= v48)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          if (!*v6)
          {
            goto LABEL_126;
          }

          v91 = *(v10 + 32 + 16 * v90);
          v92 = *(v10 + 32 + 16 * v52 + 8);
          sub_1D29E46D0((*v6 + 16 * v91), (*v6 + 16 * *(v10 + 32 + 16 * v52)), (*v6 + 16 * v92), v51);
          if (v5)
          {
          }

          if (v92 < v91)
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D29E4B88(v10);
          }

          if (v90 >= *(v10 + 16))
          {
            goto LABEL_105;
          }

          v93 = v10 + 16 * v90;
          *(v93 + 32) = v91;
          *(v93 + 40) = v92;
          result = sub_1D29E4AFC(v52);
          v48 = *(v10 + 16);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = v10 + 32 + 16 * v48;
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_106;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_107;
        }

        v64 = (v10 + 16 * v48);
        v66 = *v64;
        v65 = v64[1];
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_109;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_112;
        }

        if (v68 >= v60)
        {
          v86 = (v10 + 32 + 16 * v52);
          v88 = *v86;
          v87 = v86[1];
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_116;
          }

          if (v55 < v89)
          {
            v52 = v48 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v105;
      if (v9 >= v8)
      {
        goto LABEL_92;
      }
    }

    v9 = v20;
    if (v20 < v11)
    {
      goto LABEL_119;
    }

    goto LABEL_41;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_130;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_123:
    result = sub_1D29E4B88(v10);
    v10 = result;
  }

  v94 = *(v10 + 16);
  if (v94 >= 2)
  {
    while (*v6)
    {
      v95 = *(v10 + 16 * v94);
      v96 = v10;
      v97 = *(v10 + 16 * (v94 - 1) + 32);
      v10 = *(v10 + 16 * (v94 - 1) + 40);
      sub_1D29E46D0((*v6 + 16 * v95), (*v6 + 16 * v97), (*v6 + 16 * v10), v9);
      if (v5)
      {
      }

      if (v10 < v95)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_1D29E4B88(v96);
      }

      if (v94 - 2 >= *(v96 + 2))
      {
        goto LABEL_118;
      }

      v98 = &v96[16 * v94];
      *v98 = v95;
      *(v98 + 1) = v10;
      result = sub_1D29E4AFC(v94 - 1);
      v10 = v96;
      v94 = *(v96 + 2);
      if (v94 <= 1)
      {
      }
    }

    goto LABEL_127;
  }
}

uint64_t sub_1D29E46D0(char *__src, id *__dst, char *a3, void **a4)
{
  v4 = a4;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v12] <= a4)
    {
      v22 = a3;
      memmove(a4, __dst, 16 * v12);
      a3 = v22;
    }

    v40 = &v4[2 * v12];
    if (v10 >= 16 && v5 > v6)
    {
      v35 = v6;
LABEL_26:
      v34 = v5 - 2;
      v23 = a3 - 16;
      v24 = v40;
      v39 = v5;
      do
      {
        v37 = v23;
        v25 = v23 + 16;
        v26 = *(v24 - 2);
        v24 -= 2;
        v27 = *(v5 - 2);
        v28 = v26;

        v29 = v27;

        v30 = [v28 localizedName];
        sub_1D2A003E8();

        v31 = [v29 localizedName];
        sub_1D2A003E8();

        sub_1D29E5A94();
        v32 = sub_1D2A00628();

        if (v32 == -1)
        {
          a3 = v37;
          if (v25 != v39)
          {
            *v37 = *v34;
          }

          if (v40 <= v4 || (v5 = v34, v34 <= v35))
          {
            v5 = v34;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        if (v25 != v40)
        {
          *v37 = *v24;
        }

        v23 = v37 - 16;
        v40 = v24;
        v5 = v39;
      }

      while (v24 > v4);
      v40 = v24;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v9] <= a4)
    {
      v13 = a3;
      memmove(a4, __src, 16 * v9);
      a3 = v13;
    }

    v40 = &v4[2 * v9];
    if (v7 >= 16 && v5 < a3)
    {
      v36 = a3;
      while (1)
      {
        v38 = v5;
        v14 = *v4;
        v15 = *v5;

        v16 = v14;

        v17 = [v15 localizedName];
        sub_1D2A003E8();

        v18 = [v16 localizedName];
        sub_1D2A003E8();
        v19 = v4;

        sub_1D29E5A94();
        v20 = sub_1D2A00628();

        if (v20 != -1)
        {
          break;
        }

        v21 = v38;
        v5 = v38 + 2;
        if (v6 != v38)
        {
          goto LABEL_14;
        }

LABEL_15:
        v6 += 16;
        if (v4 >= v40 || v5 >= v36)
        {
          goto LABEL_36;
        }
      }

      v21 = v4;
      v4 += 2;
      v5 = v38;
      if (v6 == v19)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v6 = *v21;
      goto LABEL_15;
    }

LABEL_36:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v4 || v5 >= (v4 + ((v40 - v4 + (v40 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v5, v4, 16 * ((v40 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D29E4AFC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D29E4B88(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D29E4B9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701068, &qword_1D2A03B48);
  result = sub_1D2A006C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = *(*(v5 + 48) + v21);
      v32 = *(*(v5 + 56) + v21);
      v33 = v22;
      if ((v4 & 1) == 0)
      {
        sub_1D29E5A28(v22, *(&v22 + 1));
        v23 = v32;
      }

      sub_1D2A00738();
      sub_1D29FFC08();
      result = sub_1D2A00748();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v16 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 16 * v15;
      *(*(v7 + 48) + v17) = v16;
      *(*(v7 + 56) + v17) = v32;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D29E4E5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_1D29E5A28(v17, v16);
      v35 = sub_1D29FFB68();
      if (v35)
      {
        v40 = sub_1D29FFB88();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_1D29FFB78();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = sub_1D29FFB68();
        if (v37)
        {
          v60 = sub_1D29FFB88();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_1D29FFB78();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = sub_1D29FFB68();
        if (v37)
        {
          v41 = sub_1D29FFB88();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = sub_1D29FFB78();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_1D29E5A28(v17, v16);
      v32 = sub_1D29FFB68();
      if (v32)
      {
        v49 = sub_1D29FFB88();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_1D29FFB78();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_1D29E5A28(v17, v16);
    v29 = sub_1D29FFB68();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_1D29FFB88();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = sub_1D29FFB78();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_1D29E59D4(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_1D29E5A28(v17, v16);
    v35 = sub_1D29FFB68();
    if (v35)
    {
      v36 = sub_1D29FFB88();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_1D29FFB78();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = sub_1D29FFB68();
      if (v37)
      {
        v57 = sub_1D29FFB88();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_1D29FFB78();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = sub_1D29FFB68();
      if (v37)
      {
        v38 = sub_1D29FFB88();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = sub_1D29FFB78();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_1D29E59D4(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_1D29E59D4(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_1D29E5A28(v17, v16);
    v32 = sub_1D29FFB68();
    if (v32)
    {
      v44 = sub_1D29FFB88();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_1D29FFB78();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_1D29E5A28(v17, v16);
  v51 = sub_1D29FFB68();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1D29FFB88();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = sub_1D29FFB78();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_1D29FFB78();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_1D29FFB78();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

void *sub_1D29E56C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701068, &qword_1D2A03B48);
  v2 = *v0;
  v3 = sub_1D2A006B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        v20 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v20;
        sub_1D29E5A28(v18, *(&v18 + 1));
        v19 = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D29E584C(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;

        goto LABEL_24;
      }

      ++v11;
      v19 = v18;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D29E59D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D29E5A28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1D29E5A94()
{
  result = qword_1EC701078;
  if (!qword_1EC701078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701078);
  }

  return result;
}

char *sub_1D29E5AE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701088, &qword_1D2A03B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D29E5BF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D29E5CB4;

  return sub_1D29DFE58(a1, v4, v5, v7, v6);
}

uint64_t sub_1D29E5CB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D29E5DA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_1D29E5DF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1D29E5E00()
{
  result = qword_1EC7010D8;
  if (!qword_1EC7010D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7010D8);
  }

  return result;
}

uint64_t sub_1D29E5E54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29E5E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D29E5EFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29E5F44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D29E5FD4()
{
  result = qword_1EC701110;
  if (!qword_1EC701110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701110);
  }

  return result;
}

uint64_t sub_1D29E6028(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D29E6098(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D29E60A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D29E60CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29E6114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D29E618C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D29E6208()
{
  result = qword_1EC7011A8;
  if (!qword_1EC7011A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7011A8);
  }

  return result;
}

uint64_t sub_1D29E625C(_BYTE *a1, void *a2)
{
  v4 = sub_1D29FFE08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v5 + 16);
  v8(v7, a1, v4);
  type metadata accessor for AppExtensionView.ObservableAppExtensionIdentity(0);
  v9 = swift_allocObject();
  v8((v9 + OBJC_IVAR____TtCV12ExtensionKitP33_ABD14ED04C699754E7718E30E84C391A16AppExtensionView30ObservableAppExtensionIdentity_inner), v7, v4);
  v10 = a2;
  LOBYTE(a2) = sub_1D29FFDF8();
  swift_beginAccess();
  v14[7] = a2 & 1;
  sub_1D2A00028();
  swift_endAccess();
  v11 = *(v5 + 8);
  v11(v7, v4);
  *(v9 + OBJC_IVAR____TtCV12ExtensionKitP33_ABD14ED04C699754E7718E30E84C391A16AppExtensionView30ObservableAppExtensionIdentity_host) = v10;
  sub_1D29E5DA8(&qword_1EC701148, type metadata accessor for AppExtensionView.ObservableAppExtensionIdentity, &unk_1D2A03A3C);
  v12 = sub_1D2A00068();
  v11(a1, v4);
  return v12;
}

uint64_t sub_1D29E6464(void *a1)
{
  v2 = sub_1D2A00108();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D29FFBE8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 URL];
  sub_1D29FFBD8();

  v8 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v9 = sub_1D29FFBC8();
  v10 = [v8 initWithURL_];

  (*(v4 + 8))(v6, v3);
  v11 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) init];
  [v11 setSize_];
  v12 = [v10 prepareImageForDescriptor_];
  if (v12)
  {
    v13 = v12;
    if ([v12 CGImage])
    {
      [v13 scale];
      sub_1D2A000F8();
      sub_1D2A000E8();
      v14 = [a1 localizedName];
      sub_1D2A003E8();

      sub_1D2A000D8();

      sub_1D2A000E8();
      sub_1D2A00128();
      sub_1D2A00278();
      v15 = sub_1D2A002F8();

      return v15;
    }

    __break(1u);
  }

  result = sub_1D2A006A8();
  __break(1u);
  return result;
}

uint64_t sub_1D29E67A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D29E67EC()
{
  result = qword_1EC7011C0;
  if (!qword_1EC7011C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7011C8, &qword_1D2A03DB0);
    sub_1D29E67A4(&qword_1EC701198, &qword_1EC701188, &qword_1D2A03D68, MEMORY[0x1E6981800]);
    sub_1D29E618C(&qword_1EC7011A0, &qword_1EC701190, &qword_1D2A03D70, sub_1D29E6208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7011C0);
  }

  return result;
}

uint64_t EXHostViewController.Configuration.appExtension.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D29FFE08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EXHostViewController.Configuration.appExtension.setter(uint64_t a1)
{
  v3 = sub_1D29FFE08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EXHostViewController.Configuration.sceneID.getter()
{
  v1 = *(v0 + *(type metadata accessor for EXHostViewController.Configuration(0) + 20));

  return v1;
}

uint64_t type metadata accessor for EXHostViewController.Configuration(uint64_t a1)
{
  result = qword_1EC7011E8;
  if (!qword_1EC7011E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EXHostViewController.Configuration.sceneID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EXHostViewController.Configuration(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EXHostViewController.Configuration.init(appExtension:sceneID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D29FFE08();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for EXHostViewController.Configuration(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t EXHostViewController.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 configuration];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 extensionIdentity];
    sub_1D29FFDA8();
    v6 = [v4 role];
    v7 = sub_1D2A003E8();
    v9 = v8;

    v10 = type metadata accessor for EXHostViewController.Configuration(0);
    v11 = (a1 + *(v10 + 20));
    *v11 = v7;
    v11[1] = v9;
    v12 = *(*(v10 - 8) + 56);
    v13 = v10;
    v14 = a1;
    v15 = 0;
  }

  else
  {
    v16 = type metadata accessor for EXHostViewController.Configuration(0);
    v12 = *(*(v16 - 8) + 56);
    v13 = v16;
    v14 = a1;
    v15 = 1;
  }

  return v12(v14, v15, 1, v13);
}

uint64_t sub_1D29E6CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011D0, &qword_1D2A03DB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D29E6F9C(a1, &v6 - v3);
  return EXHostViewController.configuration.setter(v4);
}

uint64_t EXHostViewController.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011D0, &qword_1D2A03DB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for EXHostViewController.Configuration(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  sub_1D29E6F9C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D29E700C(v6);
    [v2 setConfiguration_];
    return sub_1D29E700C(a1);
  }

  else
  {
    sub_1D29E7074(v6, v13);
    sub_1D29E70D8(v13, v11);
    v15 = objc_allocWithZone(_EXHostViewControllerConfiguration);
    sub_1D29FFDB8();
    objc_opt_self();
    v16 = swift_dynamicCastObjCClassUnconditional();
    v17 = [v15 initWithExtensionIdentity_];

    v18 = v17;
    v19 = sub_1D2A003B8();
    [v18 setRole_];

    sub_1D29E713C(v11);
    [v2 setConfiguration_];

    sub_1D29E700C(a1);
    return sub_1D29E713C(v13);
  }
}

uint64_t sub_1D29E6F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011D0, &qword_1D2A03DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29E700C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011D0, &qword_1D2A03DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D29E7074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EXHostViewController.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29E70D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EXHostViewController.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29E713C(uint64_t a1)
{
  v2 = type metadata accessor for EXHostViewController.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EXHostViewController.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7011D0, &qword_1D2A03DB8) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 configuration];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 extensionIdentity];
    sub_1D29FFDA8();
    v10 = [v8 role];
    v11 = sub_1D2A003E8();
    v13 = v12;

    v14 = type metadata accessor for EXHostViewController.Configuration(0);
    v15 = (v6 + *(v14 + 20));
    *v15 = v11;
    v15[1] = v13;
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for EXHostViewController.Configuration(0);
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  }

  return sub_1D29E7340;
}

void sub_1D29E7340(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D29E6F9C(v3, v2);
    EXHostViewController.configuration.setter(v2);
    sub_1D29E700C(v3);
  }

  else
  {
    EXHostViewController.configuration.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t EXHostViewController._Session.__allocating_init(process:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D29E73F0, 0, 0);
}

uint64_t sub_1D29E73F0()
{
  v1 = v0[14];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[17] = v3;
  v4 = sub_1D29E7AA4();
  *v3 = v0;
  v3[1] = sub_1D29E74F0;

  return MEMORY[0x1EEE6DE38](v0 + 13, 0, 0, 0xD00000000000001CLL, 0x80000001D2A07DF0, sub_1D29E7A9C, v2, v4);
}

uint64_t sub_1D29E74F0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1D29E76D4;
  }

  else
  {
    sub_1D29E7AF0(v2 + 16);

    v3 = sub_1D29E7618;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D29E7618()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = sub_1D29FFD38();
  (*(*(v4 - 8) + 8))(v1, v4);
  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1D29E76D4()
{
  v1 = *(v0 + 112);
  sub_1D29E7AF0(v0 + 16);

  v2 = sub_1D29FFD38();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_1D29E7780(uint64_t a1, double *a2)
{
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = objc_allocWithZone(_EXHostViewControllerSessionConfiguration);
  v8 = sub_1D2A003B8();
  v9 = [v7 initWithSceneIdentifier_];

  v10 = *(a2 + 7);
  v25 = *(a2 + 6);
  v26 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v19 = &v23;
  v23 = sub_1D29DE600;
  v24 = &block_descriptor_0;
  v11 = _Block_copy(&aBlock);

  [v9 setInvalidationHandler_];
  _Block_release(v11);
  [v9 setInitialFrame_];
  [v9 setRetryOnHostingFailure_];
  [v9 set:*(a2 + 80) shouldHostRemoteTextEffectsWindow:?];
  v12 = sub_1D29FFD28();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = objc_opt_self();
  v15 = v3;
  (*(v4 + 16))(v6, v20, v3);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, v6, v15);
  v25 = sub_1D29E8394;
  v26 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1D29F3848;
  v24 = &block_descriptor_24;
  v18 = _Block_copy(&aBlock);

  [v14 sessionWithProcess:v13 configuration:v9 completion:v18];
  _Block_release(v18);
}

unint64_t sub_1D29E7AA4()
{
  result = qword_1EC7011D8;
  if (!qword_1EC7011D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7011D8);
  }

  return result;
}

uint64_t sub_1D29E7B20(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  return sub_1D2A00518();
}

NSXPCConnection __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EXHostViewController._Session.makeXPCConnection()()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v6[0] = 0;
  v2 = [v1 _makeXPCConnectionWithError_];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1D29FFB98();

    swift_willThrow();
  }

  return v2;
}

uint64_t EXHostViewController._Session.identity.getter()
{
  v1 = [*(v0 + 16) extensionProcess];
  v2 = [v1 extensionIdentity];

  return MEMORY[0x1EEDC0988](v2);
}

double EXHostViewController._Session.Configuration.init(sceneID:onInvalidation:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = 1;
  *a5 = a1;
  *(a5 + 8) = a2;
  result = 0.0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t EXHostViewController._Session.Configuration.sceneID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EXHostViewController._Session.Configuration.sceneID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void EXHostViewController._Session.Configuration.initialFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t sub_1D29E7D94(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 48) = sub_1D29E836C;
  *(a2 + 56) = v5;
  return result;
}

uint64_t EXHostViewController._Session.Configuration.onInvalidation.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EXHostViewController._Session.Configuration.onInvalidation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t EXHostViewController._Session.Configuration._initializationParameters.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 72) = a1;
  return result;
}

uint64_t EXHostViewController._Session.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void *EXHostViewController._session.getter()
{
  result = [v0 session];
  if (result)
  {
    v2 = result;
    type metadata accessor for EXHostViewController._Session();
    result = swift_allocObject();
    result[2] = v2;
  }

  return result;
}

void *sub_1D29E800C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 session];
  if (result)
  {
    v4 = result;
    type metadata accessor for EXHostViewController._Session();
    result = swift_allocObject();
    result[2] = v4;
  }

  *a2 = result;
  return result;
}

id EXHostViewController._session.setter(uint64_t a1)
{
  if (a1)
  {
    [v1 setSession_];
  }

  else
  {

    return [v1 setSession_];
  }
}

id (*EXHostViewController._session.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 session];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for EXHostViewController._Session();
    v3 = swift_allocObject();
    v3[2] = v4;
  }

  *a1 = v3;
  return sub_1D29E8154;
}

id sub_1D29E8154(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      v3 = *(v2 + 16);
    }

    else
    {
      v3 = 0;
    }

    v4 = a1[1];
    goto LABEL_8;
  }

  v4 = a1[1];
  if (v2)
  {
    v3 = *(v2 + 16);
LABEL_8:
    [v4 setSession_];
  }

  return [v4 setSession_];
}

uint64_t sub_1D29E820C(uint64_t a1)
{
  result = sub_1D29FFE08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D29E82BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29E8304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D29E8394(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);

  return sub_1D29E7B20(a1);
}

uint64_t type metadata accessor for _EXRunningUISceneExtension(uint64_t a1)
{
  result = qword_1ED8477B8;
  if (!qword_1ED8477B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D29E84C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = sub_1D2A00008();
  v6 = *(v43 - 8);
  v7 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - v12;
  type metadata accessor for _EXSceneComponent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v15)
  {
    sub_1D2A003E8();
    v15 = sub_1D2A003B8();
  }

  v16 = objc_opt_self();
  v17 = [objc_opt_self() predicateWithValue_];
  [v16 _registerSceneComponentClass_withKey_predicate_];

  type metadata accessor for _EXRunningUIExtension(0);
  v18 = sub_1D29FFCE8();
  if (v18(a1, a2))
  {
    return 1;
  }

  sub_1D29FFFE8();
  v20 = sub_1D29FFFF8();
  v21 = sub_1D2A005B8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D29CC000, v20, v21, "Configuring service listener", v22, 2u);
    MEMORY[0x1D38A6000](v22, -1, -1);
  }

  v23 = *(v6 + 8);
  v23(v13, v43);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1D29EAD10;
  *(v25 + 24) = v24;
  v48 = sub_1D29DF510;
  v49 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1D29EE4E8;
  v47 = &block_descriptor_23;
  v26 = _Block_copy(&aBlock);
  v27 = objc_opt_self();

  v28 = [v27 listenerWithConfigurator_];
  _Block_release(v26);

  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  [v28 activate];
  sub_1D29FFFE8();
  v29 = sub_1D29FFFF8();
  v30 = sub_1D2A005B8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1D29CC000, v29, v30, "Checking in with launchd", v31, 2u);
    MEMORY[0x1D38A6000](v31, -1, -1);
  }

  v23(v11, v43);
  v32 = CFRunLoopGetMain();
  if (v32)
  {
    v33 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = v3;
    v48 = sub_1D29DF518;
    v49 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = sub_1D29ECA40;
    v47 = &block_descriptor_29;
    v35 = _Block_copy(&aBlock);
    v36 = v3;

    v37 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0, v35);
    _Block_release(v35);
    v38 = qword_1ED847918;
    qword_1ED847918 = v37;

    CFRunLoopAddObserver(v33, v37, *MEMORY[0x1E695E8D0]);
    getpid();
    memorystatus_control();
    sub_1D29FFFE8();
    v39 = sub_1D29FFFF8();
    v40 = sub_1D2A005B8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1D29CC000, v39, v40, "Resuming service listener", v41, 2u);
      MEMORY[0x1D38A6000](v41, -1, -1);
    }

    v23(v42, v43);
    [objc_opt_self() activateXPCService];
    __break(1u);
  }

  result = sub_1D2A006A8();
  __break(1u);
  return result;
}

void sub_1D29E8AFC(void *a1, uint64_t a2)
{
  v3 = sub_1D2A00008();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1D2A003B8();
    [a1 setDomain_];

    v10 = sub_1D2A003B8();
    [a1 setService_];

    [a1 setDelegate_];
  }

  else
  {
    sub_1D29FFFE8();
    v11 = sub_1D29FFFF8();
    v12 = sub_1D2A005A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D29CC000, v11, v12, "Could not find _EXRunningUIKitSceneHostedExtension when configuring listener", v13, 2u);
      MEMORY[0x1D38A6000](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_1D29E8D14(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1D29E9F30(v7, v8);

  swift_unknownObjectRelease();
}

id sub_1D29E8E04(void *a1)
{
  v3 = sub_1D2A00008();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v76 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v84 = v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v75 - v8;
  v10 = sub_1D29FFC48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v77 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v75 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v75 - v17;
  v80 = v1;
  *&v1[OBJC_IVAR____EXSceneComponent__scene] = a1;
  v78 = a1;
  v79 = [v78 _FBSScene];
  v19 = [v79 identifier];
  sub_1D2A003E8();

  v20 = v10;
  sub_1D29FFC18();

  if ((v11[6])(v9, 1, v10) == 1)
  {
    sub_1D29DB7F4(v9, &qword_1EC701300, &qword_1D2A03830);
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_1D2A00678();

    v89 = 0xD000000000000027;
    v90 = 0x80000001D2A07F90;
    v66 = [v79 identifier];
    v67 = sub_1D2A003E8();
    v69 = v68;

    MEMORY[0x1D38A52F0](v67, v69);
  }

  else
  {
    v11[4](v18, v9, v10);
    sub_1D29FFFE8();
    v21 = v11[2];
    v81 = v18;
    v75[0] = v21;
    v75[1] = v11 + 2;
    v21(v16, v18, v10);
    v22 = v11;
    v23 = sub_1D29FFFF8();
    v24 = sub_1D2A00598();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v89 = v26;
      *v25 = 136315138;
      sub_1D29EACB0(&qword_1EC701308, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v27 = sub_1D2A006F8();
      v29 = v28;
      v30 = v22[1];
      (v30)(v16, v10);
      v31 = sub_1D29F87C4(v27, v29, &v89);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1D29CC000, v23, v24, "UIScene connection with identifier: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1D38A6000](v26, -1, -1);
      v32 = v25;
      v20 = v10;
      MEMORY[0x1D38A6000](v32, -1, -1);
    }

    else
    {

      v30 = v22[1];
      (v30)(v16, v10);
    }

    v33 = *(v82 + 8);
    v33(v84, v83);
    v34 = v22;
    v35 = v77;
    v36 = [objc_opt_self() sharedInstance];
    v37 = v81;
    v38 = sub_1D29FFC28();
    v39 = [v36 sessionForIdentifier_];

    if (!v39)
    {
      v84 = v34;
      v48 = v30;
      v49 = v76;
      sub_1D29FFFE8();
      (v75[0])(v35, v37, v20);
      v50 = sub_1D29FFFF8();
      v51 = sub_1D2A005A8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = v20;
        v54 = swift_slowAlloc();
        v89 = v54;
        *v52 = 136315138;
        sub_1D29EACB0(&qword_1EC701308, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v55 = sub_1D2A006F8();
        v56 = v35;
        v57 = v49;
        v59 = v58;
        (v48)(v56, v53);
        v60 = sub_1D29F87C4(v55, v59, &v89);

        *(v52 + 4) = v60;
        v61 = v51;
        v30 = v48;
        _os_log_impl(&dword_1D29CC000, v50, v61, "Session not found for identifier %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        v62 = v54;
        v20 = v53;
        v37 = v81;
        MEMORY[0x1D38A6000](v62, -1, -1);
        MEMORY[0x1D38A6000](v52, -1, -1);

        v63 = v57;
      }

      else
      {

        v30 = v48;
        (v48)(v35, v20);
        v63 = v49;
      }

      v33(v63, v83);
      v64 = type metadata accessor for _EXSceneComponent();
      v88.receiver = v80;
      v88.super_class = v64;
      v47 = objc_msgSendSuper2(&v88, sel_init);

      goto LABEL_14;
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v41 = v40;
      v42 = v39;
      if ([v41 scene])
      {
        v86 = &unk_1F4E13B18;
        v43 = swift_dynamicCastObjCProtocolConditional();
        if (v43)
        {
          v44 = [v43 sceneDelegate];
          v45 = v78;
          [v78 setDelegate_];
          swift_unknownObjectRelease();
          v46 = type metadata accessor for _EXSceneComponent();
          v85.receiver = v80;
          v85.super_class = v46;
          v47 = objc_msgSendSuper2(&v85, sel_init);

          swift_unknownObjectRelease();
LABEL_14:

          (v30)(v37, v20);
          return v47;
        }

        swift_unknownObjectRelease();
      }

      v89 = 0;
      v90 = 0xE000000000000000;
      sub_1D2A00678();

      v89 = 0xD000000000000016;
      v90 = 0x80000001D2A07FE0;
      v87 = [v41 scene];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701310, &qword_1D2A03F08);
      v74 = sub_1D2A003F8();
      MEMORY[0x1D38A52F0](v74);
    }

    else
    {
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_1D2A00678();

      v89 = 0xD00000000000001ELL;
      v90 = 0x80000001D2A07FC0;
      v70 = [v39 description];
      v71 = sub_1D2A003E8();
      v73 = v72;

      MEMORY[0x1D38A52F0](v71, v73);
    }
  }

  result = sub_1D2A006A8();
  __break(1u);
  return result;
}

uint64_t sub_1D29E9894(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1D29EACB0(&qword_1EC700A88, type metadata accessor for LaunchOptionsKey, &unk_1D2A033E0);
    sub_1D2A003A8();
  }

  v6 = a3;
  v7 = a1;
  v8 = sub_1D29EA4D8(v6);

  return v8 & 1;
}

void sub_1D29E9958(void *a1)
{
  v1 = a1;
  sub_1D29FFCA8();
}

void sub_1D29E99E0()
{
  type metadata accessor for _EXSceneComponent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v1)
  {
    sub_1D2A003E8();
    v1 = sub_1D2A003B8();
  }

  v2 = objc_opt_self();
  v3 = [objc_opt_self() predicateWithValue_];
  [v2 _registerSceneComponentClass_withKey_predicate_];

  byte_1ED847770 = 1;
}

id sub_1D29E9AAC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_1D29EA7C4(v9, v10);

  return v12;
}

id sub_1D29E9B44(int a1, int a2, uint64_t a3, id a4)
{
  v4 = [a4 configuration];

  return v4;
}

id sub_1D29E9E74(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5.receiver = a1;
  v5.super_class = a4(a3, a2);
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1D29E9ED4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1D29E9F30(void *a1, void *a2)
{
  v5 = sub_1D2A00008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D29DE7B8;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D29EE4E8;
  v30 = &block_descriptor_1;
  v9 = _Block_copy(&aBlock);

  v10 = [a2 extractNSXPCConnectionWithConfigurator_];
  _Block_release(v9);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_12;
  }

  v24 = a1;
  v25 = v5;
  v26 = v2;
  v11 = [a2 service];
  v12 = sub_1D2A003E8();
  v14 = v13;

  if (v12 != 0x767265536E69614DLL || v14 != 0xEB00000000656369)
  {
    v15 = sub_1D2A00708();

    if (v15)
    {
      goto LABEL_6;
    }

LABEL_12:
    aBlock = 0;
    v28 = 0xE000000000000000;
    sub_1D2A00678();

    aBlock = 0xD000000000000030;
    v28 = 0x80000001D2A07B90;
    v19 = [v24 description];
    v20 = sub_1D2A003E8();
    v22 = v21;

    MEMORY[0x1D38A52F0](v20, v22);

    sub_1D2A006A8();
    __break(1u);
    return;
  }

LABEL_6:
  sub_1D29FFFE8();
  v16 = sub_1D29FFFF8();
  v17 = sub_1D2A00598();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D29CC000, v16, v17, "Received connection request on service listener", v18, 2u);
    MEMORY[0x1D38A6000](v18, -1, -1);
  }

  (*(v6 + 8))(v8, v25);
  if ((sub_1D29FFC78() & 1) == 0)
  {
    [a2 invalidate];
  }
}

uint64_t sub_1D29EA2B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1D29FFC48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 _FBSScene];
  v10 = [v9 identifier];
  sub_1D2A003E8();

  sub_1D29FFC18();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    return sub_1D29DB7F4(v4, &qword_1EC701300, &qword_1D2A03830);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12 = [objc_opt_self() sharedInstance];
    v13 = sub_1D29FFC28();
    [v12 removeSessionForIdentifier_];

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1D29EA4D8(void *a1)
{
  v2 = sub_1D2A00008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v6 = a1;
  v7 = sub_1D29FFFF8();
  v8 = sub_1D2A00598();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    sub_1D29DB7F4(v10, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v10, -1, -1);
    MEMORY[0x1D38A6000](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_1D29FFCB8();
  return 1;
}

uint64_t sub_1D29EA688(const char *a1)
{
  v2 = sub_1D2A00008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v6 = sub_1D29FFFF8();
  v7 = sub_1D2A00598();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D29CC000, v6, v7, a1, v8, 2u);
    MEMORY[0x1D38A6000](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_1D29EA7C4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D2A00008();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  sub_1D29FFFE8();
  v13 = sub_1D29FFFF8();
  v14 = sub_1D2A00598();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    MEMORY[0x1D38A6000](v15, -1, -1);
  }

  v16 = *(v7 + 8);
  v16(v12, v6);
  sub_1D29FFFE8();
  v17 = a2;
  v18 = sub_1D29FFFF8();
  v19 = sub_1D2A00598();

  if (os_log_type_enabled(v18, v19))
  {
    v36 = v16;
    v37 = v6;
    v38 = v3;
    v39 = a1;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = v21;
    *v20 = 136315138;
    v22 = [v17 sourceApplication];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1D2A003E8();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v40 = v24;
    v41 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7012F0, &unk_1D2A03EF8);
    v27 = sub_1D2A003F8();
    v29 = sub_1D29F87C4(v27, v28, &v42);

    *(v20 + 4) = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1D38A6000](v21, -1, -1);
    MEMORY[0x1D38A6000](v20, -1, -1);

    v36(v10, v37);
    a1 = v39;
  }

  else
  {

    v16(v10, v6);
  }

  v30 = sub_1D29FFC58();
  v31 = [objc_allocWithZone(_EXFBSSceneSession) initWithExtension_];

  result = [v17 _fbsScene];
  if (result)
  {
    v33 = result;
    [v31 connectWithFBSScene_];

    if (qword_1ED847760 != -1)
    {
      swift_once();
    }

    v34 = [a1 configuration];
    [v34 setDelegateClass_];

    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D29EAB78()
{
  v0 = sub_1D2A00008();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v4 = sub_1D29FFFF8();
  v5 = sub_1D2A00598();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D29CC000, v4, v5, "_wantsApplicationBehaviorAsExtension returning true", v6, 2u);
    MEMORY[0x1D38A6000](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 1;
}

uint64_t sub_1D29EACB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D29EAD28()
{
  sub_1D2A00738();
  sub_1D2A00428();
  return sub_1D2A00748();
}

uint64_t sub_1D29EAD7C(uint64_t a1)
{
  sub_1D2A00738();
  sub_1D2A00428();
  return sub_1D2A00748();
}

uint64_t sub_1D29EADC4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Role.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D29EAE08(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2A00708();
  }
}

uint64_t sub_1D29EAE38()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D29EAE68()
{
  result = sub_1D2A003E8();
  qword_1EC701318 = result;
  unk_1EC701320 = v1;
  return result;
}

uint64_t static Role.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC700918 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = unk_1EC701320;
  *a1 = qword_1EC701318;
  a1[1] = v2;
}

unint64_t sub_1D29EAF10()
{
  result = qword_1EC701328;
  if (!qword_1EC701328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701328);
  }

  return result;
}

unint64_t sub_1D29EAF68()
{
  result = qword_1EC701330;
  if (!qword_1EC701330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701330);
  }

  return result;
}

unint64_t sub_1D29EAFCC()
{
  result = qword_1EC701338;
  if (!qword_1EC701338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701338);
  }

  return result;
}

uint64_t _AnyViewConfiguration.init<A>(erasing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v21 = v9;
  v22 = v11;
  v11(v10, a1, a2);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v20 = *(v8 + 32);
  v20(v13 + v12, v10, a2);
  *a4 = sub_1D29EBF98;
  a4[1] = v13;
  v19 = a1;
  v22(v10, a1, a2);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v20(v14 + v12, v10, a2);
  a4[2] = sub_1D29EC0EC;
  a4[3] = v14;
  v22(v10, a1, a2);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = v20;
  v20(v15 + v12, v10, a2);
  a4[4] = sub_1D29EC278;
  a4[5] = v15;
  v16(v10, v19, a2);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  result = (v16)(v17 + v12, v10, a2);
  a4[6] = sub_1D29EC2B4;
  a4[7] = v17;
  return result;
}

uint64_t sub_1D29EB2D4@<X0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = *a1;
  v48 = a1[1];
  v3 = *v2;
  v4 = *(v2 + 8);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;

  v6 = v3(v5);
  v7 = sub_1D2A00598();
  v8 = sub_1D29D9A60();
  v9 = sub_1D2A00608();
  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v52 = v11;
    *v10 = 136315138;
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v4;
    *&v56 = sub_1D29EC96C;
    *(&v56 + 1) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701350, &qword_1D2A040D8);
    v13 = sub_1D2A003F8();
    v15 = sub_1D29F87C4(v13, v14, &v52);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D29CC000, v9, v7, "Content %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D38A6000](v11, -1, -1);
    MEMORY[0x1D38A6000](v10, -1, -1);
  }

  else
  {
  }

  v16 = *(v6 + 16);
  v17 = v47;
  if (v16)
  {
    v18 = 0;
    v19 = v16 - 1;
    v20 = 32;
    v46 = v16 - 1;
    while (1)
    {
      v21 = *(v6 + v20 + 48);
      v23 = *(v6 + v20);
      v22 = *(v6 + v20 + 16);
      v58 = *(v6 + v20 + 32);
      v59 = v21;
      v56 = v23;
      v57 = v22;
      v49 = v23;
      sub_1D29DB798(&v56, &v52);
      v24 = sub_1D2A00598();
      v25 = sub_1D2A00608();
      if (os_log_type_enabled(v25, v24))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v51[0] = v27;
        *v26 = 136315394;
        v49(&v52);
        v28 = v6;
        v29 = v8;
        v30 = sub_1D29F87C4(v52, *(&v52 + 1), v51);

        *(v26 + 4) = v30;
        v8 = v29;
        v6 = v28;
        v17 = v47;
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_1D29F87C4(v47, v48, v51);
        _os_log_impl(&dword_1D29CC000, v25, v24, "Evaluating %s) for role %s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38A6000](v27, -1, -1);
        v31 = v26;
        v19 = v46;
        MEMORY[0x1D38A6000](v31, -1, -1);
      }

      v49(&v52);
      if (v52 == __PAIR128__(v48, v17))
      {
        break;
      }

      v32 = sub_1D2A00708();

      if (v32)
      {
        goto LABEL_15;
      }

      sub_1D29DB6F8(&v56);
      if (v19 == v18)
      {
        goto LABEL_14;
      }

      ++v18;
      v20 += 64;
      if (v18 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

LABEL_15:
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    sub_1D29DB7F4(&v52, &qword_1EC700D98, &qword_1D2A03578);

    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v59;
  }

  else
  {
LABEL_14:
  }

  v33 = sub_1D2A00598();
  v34 = sub_1D2A00608();
  v56 = v60;
  v57 = v61;
  v58 = v62;
  v59 = v63;
  if (os_log_type_enabled(v34, v33))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50[0] = v36;
    *v35 = 136315138;
    v52 = v56;
    v53 = v57;
    v54 = v58;
    v55 = v59;
    sub_1D29EC8FC(&v56, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700D98, &qword_1D2A03578);
    v37 = sub_1D2A003F8();
    v39 = sub_1D29F87C4(v37, v38, v50);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1D29CC000, v34, v33, "Made View configuration: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1D38A6000](v36, -1, -1);
    MEMORY[0x1D38A6000](v35, -1, -1);
  }

  swift_beginAccess();
  v40 = v60;
  v41 = v61;
  v51[0] = v60;
  v51[1] = v61;
  v43 = v63;
  v51[2] = v62;
  v42 = v62;
  *a2 = v60;
  a2[1] = v41;
  a2[2] = v42;
  a2[3] = v43;
  v51[3] = v43;
  v52 = v40;
  v54 = v42;
  v55 = v43;
  v53 = v41;
  sub_1D29EC8FC(v51, v50);
  return sub_1D29DB7F4(&v52, &qword_1EC700D98, &qword_1D2A03578);
}

ExtensionKit::_EmptyViewConfiguration __swiftcall _EmptyViewConfiguration.init()()
{
  if (qword_1EC700920 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v2 = *algn_1EC701348;
  *v0 = qword_1EC701340;
  v0[1] = v2;

  result.role.rawValue._object = v4;
  result.role.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static _ViewConfigurationBuilder.buildBlock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700EB0, "r]");
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D2A03590;
  (*(v6 + 16))(v8, a1, a2);
  _AnyViewConfiguration.init<A>(erasing:)(v8, a2, a3, (v9 + 32));
  return v9;
}

uint64_t _ViewConfigurationGroup.init<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  swift_getFunctionTypeMetadata0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701350, &qword_1D2A040D8);
  if (swift_dynamicCast())
  {

    result = swift_allocObject();
    *(result + 16) = v12;
    v11 = sub_1D29EC33C;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = a3;
    *(result + 24) = a4;
    *(result + 32) = a1;
    *(result + 40) = a2;
    v11 = sub_1D29EC330;
  }

  *a5 = v11;
  a5[1] = result;
  return result;
}

uint64_t _Role.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D29EBACC()
{
  result = sub_1D2A003E8();
  qword_1EC701340 = result;
  *algn_1EC701348 = v1;
  return result;
}

uint64_t static _Role.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC700920 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EC701348;
  *a1 = qword_1EC701340;
  a1[1] = v2;
}

uint64_t _ViewConfiguration.role.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC700920 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EC701348;
  *a1 = qword_1EC701340;
  a1[1] = v2;
}

void sub_1D29EBC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D2A00598();
  sub_1D29D9A60();
  v5 = sub_1D2A00608();
  sub_1D29FFFD8();
}

uint64_t sub_1D29EBCAC@<X0>(void *a1@<X8>)
{
  if (qword_1EC700920 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EC701348;
  *a1 = qword_1EC701340;
  a1[1] = v2;
}

uint64_t _EmptyViewConfiguration.role.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t _EmptyViewConfiguration.role.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_1D29EBE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  v10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700EB0, "r]");
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D2A03590;
  (*(v6 + 16))(v9, v12, a3);
  _AnyViewConfiguration.init<A>(erasing:)(v9, a3, a4, (v13 + 32));
  (*(v6 + 8))(v12, a3);
  return v13;
}

uint64_t sub_1D29EC000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(a3 + 32))(a2, a3);
  swift_getAssociatedConformanceWitness();
  return sub_1D2A00318();
}

uint64_t sub_1D29EC128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700D80, "nX");
  if (swift_dynamicCast())
  {
    sub_1D29DAEB8(v7, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1D29FFFA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D29DB7F4(v7, &unk_1EC701610, &qword_1D2A03570);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1D29EC2B4(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v4 = *a1;
  return (*(v2 + 40))(&v4);
}

uint64_t _AnyViewConfiguration.view.getter@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t _AnyViewConfiguration.consume(initializationParameters:)(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_1D29EC434@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1D29EC464(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v4 = *a1;
  return v2(&v4);
}

uint64_t _InitializationParameters.resolve<A>()(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v11[0] = 0;
  v3 = [v2 resolveObjectOfClass:swift_getObjCClassFromMetadata() error:v11];
  v4 = v11[0];
  if (v3)
  {
    v5 = swift_dynamicCastUnknownClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      return v6;
    }

    else
    {
      v10 = v4;
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    v9 = v11[0];
    sub_1D29FFB98();

    return swift_willThrow();
  }
}

unint64_t sub_1D29EC5C4()
{
  result = qword_1EC701358;
  if (!qword_1EC701358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701358);
  }

  return result;
}

unint64_t sub_1D29EC61C()
{
  result = qword_1EC701360;
  if (!qword_1EC701360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701360);
  }

  return result;
}

unint64_t sub_1D29EC674()
{
  result = qword_1EC701368;
  if (!qword_1EC701368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC701368);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D29EC7A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29EC7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D29EC854(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29EC89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D29EC8FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC700D98, &qword_1D2A03578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29EC96C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for _EXRunningUIKitSceneHostedExtension(uint64_t a1)
{
  result = qword_1EC701370;
  if (!qword_1EC701370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D29ECA40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_1D29ECAE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_1D29ECB34(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for _EXRunningUIKitSceneHostedExtension(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D29ECB78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2A00008();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v49 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  type metadata accessor for _EXRunningUIExtension(0);
  v19 = sub_1D29FFCE8();
  result = v19(a1, a2);
  if (result)
  {
    return result;
  }

  sub_1D29FFFE8();
  v21 = sub_1D29FFFF8();
  v22 = sub_1D2A005B8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D29CC000, v21, v22, "Configuring internal listener", v23, 2u);
    MEMORY[0x1D38A6000](v23, -1, -1);
  }

  v50 = *(v7 + 8);
  v50(v18, v6);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1D29EE434;
  *(v25 + 24) = v24;
  v55 = sub_1D29EE470;
  v56 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1D29EE4E8;
  v54 = &block_descriptor_8_0;
  v26 = _Block_copy(&aBlock);
  v27 = objc_opt_self();

  v49 = v27;
  v28 = [v27 listenerWithConfigurator_];
  _Block_release(v26);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    isEscapingClosureAtFileLocation = &off_1E8402000;
    [v28 activate];
    sub_1D29FFFE8();
    v30 = sub_1D29FFFF8();
    v31 = sub_1D2A005B8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D29CC000, v30, v31, "Configuring service listener", v32, 2u);
      MEMORY[0x1D38A6000](v32, -1, -1);
    }

    v50(v16, v6);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1D29EE498;
    *(v34 + 24) = v33;
    v55 = sub_1D29EE4EC;
    v56 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1D29EE4E8;
    v54 = &block_descriptor_16;
    v35 = _Block_copy(&aBlock);

    v28 = [v49 listenerWithConfigurator_];
    _Block_release(v35);

    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if ((v35 & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
LABEL_10:
  [v28 *(isEscapingClosureAtFileLocation + 1208)];
  sub_1D29FFFE8();
  v36 = sub_1D29FFFF8();
  v37 = sub_1D2A005B8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D29CC000, v36, v37, "Checking in with launchd", v38, 2u);
    MEMORY[0x1D38A6000](v38, -1, -1);
  }

  v50(v13, v6);
  v39 = CFRunLoopGetMain();
  if (v39)
  {
    v40 = v39;
    v41 = swift_allocObject();
    *(v41 + 16) = v3;
    v55 = sub_1D29DF518;
    v56 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1D29ECA40;
    v54 = &block_descriptor_22_0;
    v42 = _Block_copy(&aBlock);
    v43 = v3;

    v44 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0, v42);
    _Block_release(v42);
    v45 = qword_1ED847918;
    qword_1ED847918 = v44;

    CFRunLoopAddObserver(v40, v44, *MEMORY[0x1E695E8D0]);
    getpid();
    memorystatus_control();
    sub_1D29FFFE8();
    v46 = sub_1D29FFFF8();
    v47 = sub_1D2A005B8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1D29CC000, v46, v47, "Resuming service listener", v48, 2u);
      MEMORY[0x1D38A6000](v48, -1, -1);
    }

    v50(v10, v6);
    [objc_opt_self() activateXPCService];
    __break(1u);
  }

  result = sub_1D2A006A8();
  __break(1u);
  return result;
}

void sub_1D29ED304(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D2A00008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1D2A003B8();
    [a1 setDomain_];

    v12 = sub_1D2A003B8();
    [a1 setService_];

    [a1 setDelegate_];
  }

  else
  {
    sub_1D29FFFE8();
    v13 = sub_1D29FFFF8();
    v14 = sub_1D2A005A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D29CC000, v13, v14, "Could not find _EXRunningUIKitSceneHostedExtension when configuring listener", v15, 2u);
      MEMORY[0x1D38A6000](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1D29ED4F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = sub_1D29ECB78(a3, a4);

  return v7;
}

uint64_t sub_1D29ED544(void *a1)
{
  v1 = a1;
  sub_1D29FFCB8();

  return 1;
}

void sub_1D29ED574(void *a1)
{
  v1 = a1;
  sub_1D29FFCA8();
}

id sub_1D29ED5C4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_1D29EDA58(v9, v10);

  return v12;
}

void sub_1D29ED650(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1D29EDEB4(v7, v8);

  swift_unknownObjectRelease();
}

id sub_1D29ED6E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXRunningUIKitSceneHostedExtension(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D29ED728()
{
  v0 = sub_1D2A00008();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v4 = sub_1D29FFFF8();
  v5 = sub_1D2A005B8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D29F87C4(0xD00000000000001FLL, 0x80000001D2A08190, &v10);
    _os_log_impl(&dword_1D29CC000, v4, v5, "Received: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D38A6000](v7, -1, -1);
    MEMORY[0x1D38A6000](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D29ED8C0()
{
  v0 = sub_1D2A00008();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v4 = sub_1D29FFFF8();
  v5 = sub_1D2A005B8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D29F87C4(0xD00000000000001ELL, 0x80000001D2A08170, &v10);
    _os_log_impl(&dword_1D29CC000, v4, v5, "Received: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D38A6000](v7, -1, -1);
    MEMORY[0x1D38A6000](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

id sub_1D29EDA58(void *a1, void *a2)
{
  v38 = a2;
  v40 = a1;
  v2 = sub_1D2A00378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1D2A00008();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  sub_1D29FFFE8();
  v12 = sub_1D29FFFF8();
  v13 = sub_1D2A005B8();
  v14 = os_log_type_enabled(v12, v13);
  v39 = v7;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = v6;
    v17 = swift_slowAlloc();
    v42 = v17;
    *v15 = 136446210;
    *(v15 + 4) = sub_1D29F87C4(0xD000000000000032, 0x80000001D2A08130, &v42);
    _os_log_impl(&dword_1D29CC000, v12, v13, "%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v18 = v17;
    v6 = v16;
    MEMORY[0x1D38A6000](v18, -1, -1);
    MEMORY[0x1D38A6000](v15, -1, -1);
  }

  v19 = *(v7 + 8);
  v19(v11, v6);
  sub_1D29EE3E8();
  *v5 = sub_1D2A005C8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v20 = sub_1D2A00388();
  result = (*(v3 + 8))(v5, v2);
  v22 = v41;
  if (v20)
  {
    v23 = v6;
    sub_1D29FFFE8();
    v24 = v38;
    v25 = sub_1D29FFFF8();
    v26 = sub_1D2A005B8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136446210;
      v29 = [v24 sourceApplication];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1D2A003E8();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      v34 = sub_1D29F87C4(v31, v33, &v42);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_1D29CC000, v25, v26, "Received scene connection request from host: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1D38A6000](v28, -1, -1);
      MEMORY[0x1D38A6000](v27, -1, -1);
    }

    v19(v22, v23);
    v35 = [v40 role];
    v36 = [objc_allocWithZone(MEMORY[0x1E69DCE88]) initWithName:0 sessionRole:v35];

    type metadata accessor for EXRemoteSceneDelegate();
    [v36 setDelegateClass_];
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D29EDEB4(void *a1, void *a2)
{
  v5 = sub_1D2A00008();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v47 = sub_1D29DE7B8;
  v48 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1D29EE4E8;
  v46 = &block_descriptor_2;
  v12 = _Block_copy(&aBlock);

  v13 = [a2 extractNSXPCConnectionWithConfigurator_];
  _Block_release(v12);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v39 = a1;
    v40 = v13;
    v41 = v5;
    v42 = v2;
    v14 = a2;
    v15 = [a2 service];
    v16 = sub_1D2A003E8();
    v18 = v17;

    if (v16 == 0x767265536E69614DLL && v18 == 0xEB00000000656369)
    {

      goto LABEL_6;
    }

    v19 = sub_1D2A00708();

    if (v19)
    {
LABEL_6:
      sub_1D29FFFE8();
      v20 = sub_1D29FFFF8();
      v21 = sub_1D2A00598();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D29CC000, v20, v21, "Received connection request on service listener", v22, 2u);
        MEMORY[0x1D38A6000](v22, -1, -1);
      }

      (*(v6 + 8))(v11, v41);
      v23 = v40;
      if (sub_1D29FFC78())
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v24 = [v14 service];
    v25 = sub_1D2A003E8();
    v27 = v26;

    if (v25 == 0x6C616E7265746E49 && v27 == 0xEF65636976726553)
    {

      goto LABEL_15;
    }

    v28 = sub_1D2A00708();

    if (v28)
    {
LABEL_15:
      sub_1D29FFFE8();
      v29 = sub_1D29FFFF8();
      v30 = sub_1D2A00598();
      v31 = os_log_type_enabled(v29, v30);
      v23 = v40;
      if (v31)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1D29CC000, v29, v30, "Received scene session connection request on internal mach service listener", v32, 2u);
        MEMORY[0x1D38A6000](v32, -1, -1);
      }

      (*(v6 + 8))(v9, v41);
      v33 = sub_1D29FFC58();
      v34 = [objc_allocWithZone(_EXUISceneSession) initWithExtension_];

      LOBYTE(v33) = [v34 shouldAcceptXPCConnection_];
      if (v33)
      {
        goto LABEL_10;
      }

LABEL_9:
      [v14 invalidate];
LABEL_10:

      return;
    }
  }

  aBlock = 0;
  v44 = 0xE000000000000000;
  sub_1D2A00678();

  aBlock = 0xD000000000000030;
  v44 = 0x80000001D2A07B90;
  v35 = [v39 description];
  v36 = sub_1D2A003E8();
  v38 = v37;

  MEMORY[0x1D38A52F0](v36, v38);

  sub_1D2A006A8();
  __break(1u);
}