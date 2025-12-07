uint64_t sub_1921B6728()
{
  if (qword_1EADEE968 != -1)
  {
    result = swift_once();
  }

  if (*(off_1EADF1A70 + 2))
  {
    byte_1EADF1A68 = *(off_1EADF1A70 + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static InternalWidgetFamily.anyPlatformFamily.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EADEE960 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1EADF1A68;
  return result;
}

void *sub_1921B67F0()
{
  result = sub_1921B6810();
  off_1EADF1A70 = result;
  return result;
}

uint64_t sub_1921B6810()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_19209ADD0(0, 4, 0);
  result = v13;
  v1 = byte_19223F1C0[byte_1F06A8510];
  v3 = *(v13 + 16);
  v2 = *(v13 + 24);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    sub_19209ADD0((v2 > 1), v3 + 1, 1);
    result = v13;
  }

  *(result + 16) = v4;
  *(result + v3 + 32) = v1;
  v5 = byte_19223F1C0[byte_1F06A8511];
  v14 = result;
  v6 = *(result + 24);
  v7 = v3 + 2;
  if (v4 >= v6 >> 1)
  {
    sub_19209ADD0((v6 > 1), v3 + 2, 1);
    result = v14;
  }

  *(result + 16) = v7;
  *(result + v4 + 32) = v5;
  v8 = byte_19223F1C0[byte_1F06A8512];
  v15 = result;
  v9 = *(result + 24);
  v10 = v3 + 3;
  if (v7 >= v9 >> 1)
  {
    sub_19209ADD0((v9 > 1), v3 + 3, 1);
    result = v15;
  }

  *(result + 16) = v10;
  *(result + v7 + 32) = v8;
  v11 = byte_19223F1C0[byte_1F06A8513];
  v16 = result;
  v12 = *(result + 24);
  if (v10 >= v12 >> 1)
  {
    sub_19209ADD0((v12 > 1), v3 + 4, 1);
    result = v16;
  }

  *(result + 16) = v3 + 4;
  *(result + v10 + 32) = v11;
  return result;
}

uint64_t sub_1921B69C0()
{
  if (qword_1EADEE978 != -1)
  {
    result = swift_once();
  }

  if (*(off_1EADF1A80 + 2))
  {
    qword_1EADF1A78 = *(off_1EADF1A80 + 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static CHSWidgetFamily.anyPlatformFamily.getter()
{
  if (qword_1EADEE970 != -1)
  {
    swift_once();
  }

  return qword_1EADF1A78;
}

void *sub_1921B6A74()
{
  result = sub_1921B6A94();
  off_1EADF1A80 = result;
  return result;
}

uint64_t sub_1921B6A94()
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_19207A250(0, 4, 0);
  result = v15;
  v1 = qword_19223F1D0[byte_1F06A8510];
  v3 = *(v15 + 16);
  v2 = *(v15 + 24);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    sub_19207A250((v2 > 1), v3 + 1, 1);
    result = v15;
  }

  *(result + 16) = v4;
  *(result + 8 * v3 + 32) = v1;
  v5 = qword_19223F1D0[byte_1F06A8511];
  v16 = result;
  v6 = *(result + 24);
  v7 = v3 + 2;
  if (v4 >= v6 >> 1)
  {
    sub_19207A250((v6 > 1), v7, 1);
    result = v16;
  }

  *(result + 16) = v7;
  *(result + 8 * v4 + 32) = v5;
  v8 = qword_19223F1D0[byte_1F06A8512];
  v17 = result;
  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    sub_19207A250((v9 > 1), v10 + 1, 1);
    result = v17;
  }

  *(result + 16) = v11;
  *(result + 8 * v10 + 32) = v8;
  v12 = qword_19223F1D0[byte_1F06A8513];
  v18 = result;
  v13 = *(result + 24);
  v14 = v10 + 2;
  if (v11 >= v13 >> 1)
  {
    sub_19207A250((v13 > 1), v14, 1);
    result = v18;
  }

  *(result + 16) = v14;
  *(result + 8 * v11 + 32) = v12;
  return result;
}

double sub_1921B6C44(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1921B6CA4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1921B6CF0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1921B6D00(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1921B6D20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 < 0xD)
  {
    return qword_19223F218[v1];
  }

  result = sub_192228990();
  __break(1u);
  return result;
}

unint64_t sub_1921B6D8C()
{
  result = qword_1EADED230;
  if (!qword_1EADED230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED230);
  }

  return result;
}

uint64_t EnvironmentValues._widgetMetrics.getter()
{
  sub_19203B3CC();
  sub_1922261E0();
  return v1;
}

void (*EnvironmentValues._widgetMetrics.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_19203B3CC();
  sub_1922261E0();
  return sub_1921B6E98;
}

void sub_1921B6E98(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_1922261F0();
    v5 = *a1;
  }

  else
  {
    sub_1922261F0();
  }
}

uint64_t sub_1921B6FA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1921B7100(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1921B6FCC(uint64_t a1)
{
  v2 = sub_192046CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921B7008(uint64_t a1)
{
  v2 = sub_192046CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1921B7044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHSWidgetMetricsCodable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1921B70AC()
{
  result = qword_1EADF1AA8;
  if (!qword_1EADF1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1AA8);
  }

  return result;
}

uint64_t sub_1921B7100(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636146656C616373 && a2 == 0xEB00000000726F74 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C797453746E6F66 && a2 == 0xE900000000000065 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xEE00737465736E49 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E4974756F79616CLL && a2 == 0xEC00000073746573 || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_1922289A0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019224D6B0 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019224D6D0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1921B7414()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_192227FA0();
    v6 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v7 = sub_192049898(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t HideViewOnSnapshotModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t HideViewOnSnapshotModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1922261D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_192227FA0();
    v10 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v11 = sub_192049898(v9, 0);
    (*(v6 + 8))(v8, v5, v11);
    LOBYTE(v9) = v15[15];
  }

  if (v9)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AB0, &qword_19223F538);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AB8, &qword_19223F540);
  *(a2 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_1921B7770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1921B7B4C();

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1921B77EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1921B7B4C();

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1921B78C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1921B7414())
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AB0, &qword_19223F538);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AB8, &qword_19223F540);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_1921B798C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

double View.hideViewOnSnapshot()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x193B0A190](&KeyPath, a1, &type metadata for HideViewOnSnapshotModifier, a2);
  return sub_192049898(KeyPath, v6);
}

unint64_t sub_1921B7A5C()
{
  result = qword_1EADECE68;
  if (!qword_1EADECE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AB8, &qword_19223F540);
    sub_1921B7AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE68);
  }

  return result;
}

unint64_t sub_1921B7AE8()
{
  result = qword_1EADECD38;
  if (!qword_1EADECD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AB0, &qword_19223F538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD38);
  }

  return result;
}

unint64_t sub_1921B7B4C()
{
  result = qword_1EADEDF30;
  if (!qword_1EADEDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF30);
  }

  return result;
}

double static MetricsRequest.mock()@<D0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for MetricsRequest(0) + 40);
  v3 = sub_192226600();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *a1 = xmmword_19223F6C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_19223F6C0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  result = 0.0;
  *(a1 + 96) = xmmword_19222F810;
  return result;
}

uint64_t (*static ControlRedactions.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADECB28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921B7D4C()
{
  sub_1922279C0();
  result = sub_192227A30();
  qword_1EADECB18 = result;
  unk_1EADECB20 = v1;
  return result;
}

uint64_t (*static ControlRedactions.subtitle.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADECB10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1921B7E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  sub_1922279C0();
  result = sub_192227A30();
  *a4 = result;
  *a5 = v8;
  return result;
}

uint64_t sub_1921B7F10(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a2;

  return v5;
}

double sub_1921B7FA8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = a1;
  *a5 = a2;

  return result;
}

uint64_t (*static ControlRedactions.value.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADEE988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1921B80AC@<D0>(void *a1@<X3>, void *a2@<X4>, uint64_t *a3@<X5>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = *a3;
  *a5 = *a2;
  a5[1] = v8;

  return result;
}

double sub_1921B8124(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t a8)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = *a5;

  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v11;
  *a7 = v10;

  return result;
}

double WidgetConfiguration._containerBackgroundRemovable(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1920797E8(sub_1921B8260, v6, a2, a3);

  return result;
}

uint64_t sub_1921B8260(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 88)) = v3;
  return result;
}

uint64_t sub_1921B8294()
{
  v0 = sub_192226BE0();
  __swift_allocate_value_buffer(v0, qword_1ED749C48);
  __swift_project_value_buffer(v0, qword_1ED749C48);
  return sub_192226BD0();
}

uint64_t static ContainerBackgroundPlacement.widget.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED749C40 != -1)
  {
    swift_once();
  }

  v2 = sub_192226BE0();
  v3 = __swift_project_value_buffer(v2, qword_1ED749C48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1921B8394(uint64_t a1)
{
  v2 = sub_19217A6EC();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t static EnvironmentValues.ShowsWidgetBackgroundKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF1AD0 = a1;
  return result;
}

uint64_t (*EnvironmentValues.showsWidgetBackground.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_1920412C8();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921B8560;
}

uint64_t (*EnvironmentValues._showsWidgetBackground.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_1920412C8();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921B988C;
}

uint64_t _s7SwiftUI17EnvironmentValuesV9WidgetKitE05showsE10BackgroundSbvg_0()
{
  sub_1920412C8();
  sub_1922261E0();
  return v1;
}

uint64_t View.widgetBackgroundStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED749C40 != -1)
  {
    swift_once();
  }

  v3 = sub_192226BE0();
  __swift_project_value_buffer(v3, qword_1ED749C48);
  return sub_192227120();
}

{
  if (qword_1ED749C40 != -1)
  {
    swift_once();
  }

  v3 = sub_192226BE0();
  __swift_project_value_buffer(v3, qword_1ED749C48);
  return sub_192227120();
}

uint64_t View.widgetBackground<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1ED749C40 != -1)
  {
    swift_once();
  }

  v6 = sub_192226BE0();
  __swift_project_value_buffer(v6, qword_1ED749C48);
  sub_1922275F0();
  return sub_192227110();
}

uint64_t View.widgetBackground<A>(isRemovable:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1ED749C40 != -1)
  {
    swift_once();
  }

  v7 = sub_192226BE0();
  __swift_project_value_buffer(v7, qword_1ED749C48);
  sub_1922275F0();
  return sub_192227110();
}

uint64_t sub_1921B89C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1921B8A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1921B8A74()
{
  v1 = sub_1922261D0();
  v18 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for WidgetDescriptor(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xmmword_1ED74CC80)
  {
    v11 = *v0;
    v12 = qword_1ED74CC90;
    v13 = *(v0 + 8);
    v19 = *xmmword_1ED74CC80;
    v21 = xmmword_1ED74CC80;
    if (v13 == 1)
    {

      sub_1921B9874(v11, 1);
    }

    else
    {

      sub_1921B9874(v11, 0);
      sub_192227FA0();
      v14 = sub_192226D00();
      v17 = v1;
      v15 = v14;
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_1920498A4();
      (*(v18 + 8))(v3, v17);
      v11 = v20;
    }

    (*(*(v12 + 8) + 8))(v11, v19);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_192033970(v6, &qword_1EADEEE20, &qword_19222B670);
    }

    else
    {
      sub_19207C284(v6, v10);
      sub_192145924(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_1921B8D90()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = *(v0 + 32);
  v13[3] = *v0;
  v14 = v5;
  v15 = v7;
  v16 = v6;
  v17 = v8;
  sub_1921B8A74();
  if (v9)
  {
    return 1;
  }

  if ((v8 & 1) == 0)
  {
    sub_1921B9868(v7, v6, 0);
    sub_192227FA0();
    v11 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v12 = sub_19213AE5C(v7, v6, 0);
    (*(v2 + 8))(v4, v1, v12);
    v6 = v13[2];
  }

  return (v6 - 3) < 0xFFFFFFFFFFFFFFFELL;
}

uint64_t sub_1921B8F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AD8, &qword_19223F930);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AE0, &qword_19223F938);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AE8, &qword_19223F940);
  v29 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v29 - v11;
  v13 = v2[1];
  v40 = *v2;
  v41 = v13;
  v42 = *(v2 + 32);
  sub_1922275F0();
  sub_192225DA0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AF0, &qword_19223F948);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 44)];
  v16 = v38;
  *(v15 + 4) = v37;
  *(v15 + 5) = v16;
  *(v15 + 6) = v39;
  v17 = v34;
  *v15 = v33;
  *(v15 + 1) = v17;
  v18 = v36;
  *(v15 + 2) = v35;
  *(v15 + 3) = v18;
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  sub_1921B944C(v7, v10);
  v21 = &v10[*(v8 + 36)];
  *v21 = KeyPath;
  v21[8] = 0;
  *(v21 + 2) = v20;
  *(v21 + 12) = 0;
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 16) = v40;
  *(v22 + 32) = v23;
  *(v22 + 48) = v42;
  sub_1921B94C4(&v40, v32);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AF8, &qword_19223F9A0);
  v25 = sub_1921B96F0(&qword_1ED749FE0, &qword_1EADF1AE0, &qword_19223F938, sub_1921B94FC);
  v26 = sub_1921B9640();
  sub_192227170();

  sub_192033970(v10, &qword_1EADF1AE0, &qword_19223F938);
  v32[0] = v8;
  v32[1] = &_s9WidgetKeyVN;
  v32[2] = v24;
  v32[3] = v25;
  v32[4] = v26;
  swift_getOpaqueTypeConformance2();
  sub_19207AD50();
  v27 = v30;
  sub_192227190();
  return (*(v29 + 8))(v12, v27);
}

uint64_t sub_1921B9340@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1921B8D90();
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  if ((result & 1) != 0 && a1)
  {

    v9[64] = 0;
    v9[56] = 0;
    *&v10 = a1;
    *(&v10 + 1) = sub_192225C80();
    LOBYTE(v11) = sub_192226D10();
    *(&v11 + 1) = swift_getKeyPath();
    LOBYTE(v12) = 0;
    *(&v12 + 1) = swift_getKeyPath();
    v13 = 256;
    v14 = __PAIR128__(*(&v10 + 1), a1);
    v15 = v11;
    v16 = *(&v11 + 1);
    v17 = 0;
    v18 = *(&v12 + 1);
    v19 = 256;
    sub_1921B97F8(&v10, v9);
    result = sub_192033970(&v14, &qword_1EADF1B00, &qword_19223F9A8);
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v5 = v13;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_1921B944C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AD8, &qword_19223F930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1921B94FC()
{
  result = qword_1ED74A140;
  if (!qword_1ED74A140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AD8, &qword_19223F930);
    sub_1921B9588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A140);
  }

  return result;
}

unint64_t sub_1921B9588()
{
  result = qword_1ED74A0E8;
  if (!qword_1ED74A0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AF0, &qword_19223F948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A0E8);
  }

  return result;
}

unint64_t sub_1921B95EC()
{
  result = qword_1ED749F48;
  if (!qword_1ED749F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F48);
  }

  return result;
}

unint64_t sub_1921B9640()
{
  result = qword_1ED749FD0;
  if (!qword_1ED749FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AF8, &qword_19223F9A0);
    sub_1921B96F0(&qword_1ED749FD8, &qword_1EADF1B00, &qword_19223F9A8, sub_1921B9774);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FD0);
  }

  return result;
}

uint64_t sub_1921B96F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1921B95EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1921B9774()
{
  result = qword_1ED74A128;
  if (!qword_1ED74A128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1B08, &unk_19223F9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A128);
  }

  return result;
}

uint64_t sub_1921B97F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1B00, &qword_19223F9A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921B9868(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

id sub_1921B9874(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

_BYTE *static WidgetArchiver.unarchive(from:)(_BYTE *a1)
{
  v3 = sub_1922266C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_1ED7486D8;
  v8 = qword_1ED7486F0;
  v11 = *(&xmmword_1ED7486D8 + 8);

  v9 = a1;
  sub_192226650();
  if (!v1)
  {
    v13 = v7;
    v14 = v11;
    v15 = v8;
    v12 = 3;
    a1 = sub_19203BEEC(v6, &v12, &v13);
    (*(v4 + 8))(v6, v3);
  }

  return a1;
}

_BYTE *static WidgetArchiver.unarchive(from:validationOptions:)(void *a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_1922266C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v13 = a2[1];
  v14 = v10;
  v11 = a1;
  sub_192226650();
  if (!v2)
  {
    v16[0] = v14;
    v16[1] = v13;
    v15 = 3;
    v3 = sub_19203BEEC(v9, &v15, v16);
    (*(v7 + 8))(v9, v6);
  }

  return v3;
}

_BYTE *static WidgetArchiver.unarchive(from:)(uint64_t a1, _BYTE *a2)
{
  v5 = sub_1922266C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = xmmword_1ED7486D8;
  v10 = qword_1ED7486F0;
  v12 = *(&xmmword_1ED7486D8 + 8);

  sub_1920367C8(a1, a2);
  sub_1922266A0();
  if (!v2)
  {
    v13 = v9;
    v14 = v12;
    v15 = v10;
    v16 = 3;
    a2 = sub_19203BEEC(v8, &v16, &v13);
    (*(v6 + 8))(v8, v5);
  }

  return a2;
}

_BYTE *static WidgetArchiver.unarchive(from:validationOptions:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = sub_1922266C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v14 = a3[1];
  v15 = v12;
  sub_1920367C8(a1, a2);
  sub_1922266A0();
  if (!v3)
  {
    v16[0] = v15;
    v16[1] = v14;
    v17 = 3;
    v4 = sub_19203BEEC(v11, &v17, v16);
    (*(v9 + 8))(v11, v8);
  }

  return v4;
}

uint64_t static WidgetArchiver.unarchive(from:)(uint64_t a1)
{
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_1ED7486D8;
  v9 = *(&xmmword_1ED7486D8 + 8);
  v10 = qword_1ED7486F0;
  v2 = qword_1EADED258;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAE00780;
  v7[3] = type metadata accessor for WidgetArchiverAssertionTracker();
  v7[4] = &off_1F06B3350;
  v7[0] = v3;

  sub_19203BB68(a1, &v8, v7);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(v7);

  return v5;
}

unint64_t WidgetArchiver.ValidationError.errorDescription.getter()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    sub_192228400();

    v9 = 0xD00000000000001ELL;
    swift_getErrorValue();
    v1 = v7;
    v2 = v8;
  }

  else
  {
    sub_192228400();

    v9 = 0xD00000000000001BLL;
    swift_getErrorValue();
    v1 = v5;
    v2 = v6;
  }

  v3 = sub_1921C9C58(v1, v2);
  MEMORY[0x193B0A990](v3);

  return v9;
}

uint64_t WidgetArchiver.ValidationOptions.init(isSystemVersionSupported:isBundleSupported:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void sub_1921BA140()
{
  *&xmmword_1EADF1B10 = sub_1921BA174;
  *(&xmmword_1EADF1B10 + 1) = 0;
  qword_1EADF1B20 = sub_1921BA174;
  qword_1EADF1B28 = 0;
}

uint64_t static WidgetArchiver.ValidationOptions.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EADF1B28;
  *a1 = xmmword_1EADF1B10;
  *(a1 + 8) = *(&xmmword_1EADF1B10 + 8);
  *(a1 + 24) = v2;
}

double static WidgetArchiver.ValidationOptions.none.setter(__int128 *a1)
{
  v2 = a1[1];
  v3 = *a1;
  if (qword_1EADEE998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_1EADF1B10 = v3;
  *&qword_1EADF1B20 = v2;

  return result;
}

uint64_t (*static WidgetArchiver.ValidationOptions.none.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADEE998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921BA340@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EADF1B28;
  *a1 = xmmword_1EADF1B10;
  *(a1 + 8) = *(&xmmword_1EADF1B10 + 8);
  *(a1 + 24) = v2;
}

double sub_1921BA3E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v3 = qword_1EADEE998;
  v5 = *(a1 + 1);

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_1EADF1B10 = v1;
  *(&xmmword_1EADF1B10 + 8) = v5;
  qword_1EADF1B28 = v2;

  return result;
}

uint64_t static WidgetArchiver.ValidationOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ED7486F0;
  *a1 = xmmword_1ED7486D8;
  *(a1 + 8) = *(&xmmword_1ED7486D8 + 8);
  *(a1 + 24) = v2;
}

double static WidgetArchiver.ValidationOptions.default.setter(__int128 *a1)
{
  v2 = a1[1];
  v3 = *a1;
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_1ED7486D8 = v3;
  *&qword_1ED7486E8 = v2;

  return result;
}

uint64_t (*static WidgetArchiver.ValidationOptions.default.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1921BA660@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ED7486F0;
  *a1 = xmmword_1ED7486D8;
  *(a1 + 8) = *(&xmmword_1ED7486D8 + 8);
  *(a1 + 24) = v2;
}

double sub_1921BA704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v3 = qword_1ED7485C0;
  v5 = *(a1 + 1);

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_1ED7486D8 = v1;
  *(&xmmword_1ED7486D8 + 8) = v5;
  qword_1ED7486F0 = v2;

  return result;
}

void sub_1921BA7C0(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_1920327F8;
  a2[1] = v5;
}

uint64_t WidgetArchiver.ValidationOptions.isSystemVersionSupported.getter()
{
  v1 = *v0;

  return v1;
}

void WidgetArchiver.ValidationOptions.isSystemVersionSupported.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void sub_1921BA8B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = sub_1920327F8;
  *(a2 + 24) = v5;
}

uint64_t WidgetArchiver.ValidationOptions.isBundleSupported.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void WidgetArchiver.ValidationOptions.isBundleSupported.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1921BA9B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1921BAA10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1921BAA84@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1921BAABC()
{
  result = qword_1EADF1B48;
  if (!qword_1EADF1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1B48);
  }

  return result;
}

uint64_t sub_1921BAB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1922266D0();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1922266E0();
}

unint64_t WidgetRenderingMode.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10200u >> (8 * result);
  if (result >= 3)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t WidgetRenderingMode.description.getter()
{
  v1 = 0x6465746E65636361;
  if (*v0 != 1)
  {
    v1 = 0x746E6172626976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6C6F436C6C7566;
  }
}

void sub_1921BAD9C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1921BAE24(uint64_t a1)
{
  v2 = sub_1920475A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921BAE60(uint64_t a1)
{
  v2 = sub_1920475A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921BAE9C()
{
  v1 = 0x6465746E65636361;
  if (*v0 != 1)
  {
    v1 = 0x746E6172626976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6C6F436C6C7566;
  }
}

uint64_t WidgetRenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t (*EnvironmentValues.widgetRenderingMode.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_19202F774();
  sub_1922261E0();
  return sub_1921BAFEC;
}

unint64_t sub_1921BB028()
{
  result = qword_1EADF1B60;
  if (!qword_1EADF1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1B60);
  }

  return result;
}

unint64_t sub_1921BB080()
{
  result = qword_1EADF1B68;
  if (!qword_1EADF1B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1B70, &qword_19223FD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1B68);
  }

  return result;
}

unint64_t sub_1921BB0F8()
{
  result = qword_1EADF1B78;
  if (!qword_1EADF1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1B78);
  }

  return result;
}

unint64_t sub_1921BB158()
{
  result = qword_1ED74B568;
  if (!qword_1ED74B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B568);
  }

  return result;
}

uint64_t sub_1921BB20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t IntentTimelineProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1921BB2E0, 0, 0);
}

uint64_t sub_1921BB2E0()
{
  v1 = *(v0 + 16);
  swift_getAssociatedTypeWitness();
  sub_19203BEB4(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1921BB35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t IntentTimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v8 = (*(a3 + 64) + **(a3 + 64));
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_1921BB534;

  return v8(v3 + 2, a2, a3);
}

uint64_t sub_1921BB534()
{

  return MEMORY[0x1EEE6DFA0](sub_1921BB630, 0, 0);
}

uint64_t sub_1921BB630()
{
  v5 = v0;
  v1 = v0[3];
  v4 = v0[2];
  swift_getAssociatedTypeWitness();
  sub_19208805C(&v4, v1);
  v2 = v0[1];

  return v2();
}

uint64_t _s9WidgetKit22IntentTimelineProviderPAAE15recommendationsSayAA0C14RecommendationVy0C0QzGGyF_0(uint64_t a1, uint64_t a2)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = sub_192225890();
  v4 = sub_192227FB0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_192028000, v3, v4, "DEFAULT IMPL FOR RECOMMENDATIONS!!!", v5, 2u);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentRecommendation(0, AssociatedTypeWitness, v7, v8);

  return sub_192227BD0();
}

uint64_t dispatch thunk of IntentTimelineProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of IntentTimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return v9(a1, a2, a3);
}

void sub_1921BBA8C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    v8 = 0;
    if (a4)
    {
LABEL_3:
      v9 = sub_192224F80();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = sub_192225050();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, v8);
}

void sub_1921BBB34(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_192224F80();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

double WidgetExtensionSessionOperation.defaultTimeout.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    v4 = fmax(v1 + 5.0, 10.0);
    result = fmax(v1 + 10.0, 20.0);
    if (!*(v0 + 8))
    {
      return v4;
    }
  }

  else if (v2 == 2)
  {
    return v1 * 30.0;
  }

  else if (v2 == 3)
  {
    return v1 * 10.0;
  }

  else
  {
    return dbl_192240620[v1];
  }

  return result;
}

uint64_t ExtensionSessionType.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

__n128 ExtensionSessionOptions.init(schedulingPriority:suspensionObserver:sessionType:shouldTakeExtensionAssertion:environmentVariables:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = *a2;
  v7 = *(a2 + 16);
  *(a6 + 8) = *a2;
  v8 = *a3;
  *a6 = *a1;
  *(a6 + 24) = v7;
  *(a6 + 40) = *(a2 + 32);
  *(a6 + 48) = v8;
  *(a6 + 49) = a4;
  *(a6 + 56) = a5;
  return result;
}

double sub_1921BBD34(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2 <= 1)
  {
    v4 = fmax(v1 + 5.0, 10.0);
    result = fmax(v1 + 10.0, 20.0);
    if (!*(a1 + 8))
    {
      return v4;
    }
  }

  else if (v2 == 2)
  {
    return v1 * 30.0;
  }

  else if (v2 == 3)
  {
    return v1 * 10.0;
  }

  else
  {
    return dbl_192240620[v1];
  }

  return result;
}

uint64_t sub_1921BBDD8()
{
  v7 = sub_192228070();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_192228050();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_192227790();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  sub_192227740();
  v8 = MEMORY[0x1E69E7CC0];
  sub_192034F00(&qword_1ED74C5D8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF22E0, &qword_19222B820);
  sub_192031E74(&unk_1ED74C5E0, &unk_1EADF22E0, &qword_19222B820, MEMORY[0x1E69E6328]);
  sub_1922282F0();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1922280A0();
  qword_1EADECB98 = result;
  return result;
}

id sub_1921BC04C()
{
  result = [objc_allocWithZone(MEMORY[0x1E6966CB8]) init];
  qword_1EADECBB0 = result;
  return result;
}

id sub_1921BC080()
{
  result = [objc_allocWithZone(MEMORY[0x1E6966CB8]) init];
  qword_1EADECBC8 = result;
  return result;
}

uint64_t sub_1921BC0B4()
{
  v0 = type metadata accessor for _DefaultExtensionIdentityProvider();
  result = swift_allocObject();
  qword_1EADECB78 = v0;
  unk_1EADECB80 = &off_1F06B4AA8;
  qword_1EADECB60 = result;
  return result;
}

uint64_t static WidgetExtensionSessionFactory.extensionIdentityProvider.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_192033A64(&qword_1EADECB60, a1);
}

uint64_t static WidgetExtensionSessionFactory.extensionIdentityProvider.setter(uint64_t *a1)
{
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EADECB60, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}

uint64_t (*static WidgetExtensionSessionFactory.extensionIdentityProvider.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921BC4B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_192033A64(&qword_1EADECB60, a1);
}

uint64_t sub_1921BC534(uint64_t *a1)
{
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EADECB60, a1);
  return swift_endAccess();
}

uint64_t static WidgetExtensionSessionFactory.makeSession(for:schedulingPriority:watchdogTimeoutProvider:suspensionObserver:shouldTakeExtensionAssertion:)(uint64_t a1, char *a2, double (*a3)(uint64_t a1), uint64_t a4, uint64_t a5, char a6)
{
  if (*a2 == 5)
  {
    v10 = 1;
  }

  else
  {
    v10 = *a2;
  }

  sub_19202CFFC(a5, v15, &qword_1EADF1B88, qword_192240150);
  v11 = sub_19202BE60(MEMORY[0x1E69E7CC0]);
  v14[0] = v10;
  v15[40] = 0;
  v15[41] = a6;
  v16 = v11;
  v12 = _s9WidgetKit0A23ExtensionSessionFactoryC04makeD03for18preferredLanguages7options23watchdogTimeoutProviderAA0acD0_pSgypSg_SaySSGSgAA0cD7OptionsVSdSgAA0acD9OperationOcSgtFZ_0(a1, 0, v14, a3, a4);
  sub_1920313E8(v14);
  return v12;
}

uint64_t static WidgetExtensionSessionFactory.makeSessionAsync(for:preferredLanguages:schedulingPriority:watchdogTimeoutProvider:suspensionObserver:shouldTakeExtensionAssertion:completion:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(void), uint64_t a9)
{
  if (*a3 == 5)
  {
    v15 = 1;
  }

  else
  {
    v15 = *a3;
  }

  sub_19202CFFC(a6, v19, &qword_1EADF1B88, qword_192240150);
  v16 = sub_19202BE60(MEMORY[0x1E69E7CC0]);
  v18[0] = v15;
  v19[40] = 0;
  v19[41] = a7;
  v20 = v16;
  static WidgetExtensionSessionFactory.makeSessionAsync(for:preferredLanguages:options:watchdogTimeoutProvider:completion:)(a1, a2, v18, a4, a5, a8, a9);
  return sub_1920313E8(v18);
}

uint64_t sub_1921BC744(void *a1, uint64_t (*a2)(void), double a3)
{
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v6 = sub_1922258B0();
  __swift_project_value_buffer(v6, qword_1EAE00728);
  v7 = a1;
  v8 = sub_192225890();
  v9 = sub_192227F90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    v12 = [v7 bundleIdentifier];
    v13 = sub_192227960();
    v15 = v14;

    v16 = sub_19202B8CC(v13, v15, &v18);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    _os_log_impl(&dword_192028000, v8, v9, "[%{public}s] Unable to create new WidgetExtensionSession because begin request watchdogged after %fs", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x193B0C7F0](v11, -1, -1);
    MEMORY[0x193B0C7F0](v10, -1, -1);
  }

  return a2(0);
}

uint64_t sub_1921BC918()
{
  type metadata accessor for _RunningBoardInterface();
  result = swift_allocObject();
  qword_1EAE006B0 = result;
  return result;
}

void sub_1921BC998(char a1)
{
  *(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostToForegroundPriority) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
  os_unfair_lock_lock(*(v2 + 16));
  sub_1921BCA1C(v1);
  v3 = *(v2 + 16);

  os_unfair_lock_unlock(v3);
}

void sub_1921BCA1C(uint64_t a1)
{
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1EAE00728);
  swift_retain_n();
  v3 = sub_192225890();
  v4 = sub_192227FB0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136446466;
    v7 = sub_19203418C();
    v9 = sub_19202B8CC(v7, v8, &v22);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    v10 = *(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostToForegroundPriority);

    *(v5 + 14) = v10;

    _os_log_impl(&dword_192028000, v3, v4, "%{public}s Setting foreground boost assertion: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }

  else
  {
  }

  if (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostToForegroundPriority) == 1 && (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock_invalidated) & 1) == 0)
  {
    v21 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion;
    if (!*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion))
    {
      *(a1 + v21) = sub_192033AC8(0xD000000000000024, 0x800000019224DCD0, 0xD000000000000011, 0x800000019224D340, v11);
LABEL_13:
      swift_unknownObjectRelease();
    }
  }

  else if (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;

      v14 = sub_192225890();
      v15 = sub_192227FB0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22 = v17;
        *v16 = 136446210;
        v18 = sub_19203418C();
        v20 = sub_19202B8CC(v18, v19, &v22);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_192028000, v14, v15, "%{public}s Foreground boost assertion invalidated", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x193B0C7F0](v17, -1, -1);
        MEMORY[0x193B0C7F0](v16, -1, -1);
      }

      [v13 invalidate];
    }

    goto LABEL_13;
  }
}

void sub_1921BCD7C(unint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, __n128), __n128 a4)
{
  if (a1 >> 62)
  {
    v11 = a2;
    v12 = sub_192228340();
    a2 = v11;
    v6 = v12;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = a2;
    v14 = MEMORY[0x1E69E7CC0];
    sub_192228520();
    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193B0B410](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      [v9 copyAsCHSAvocadoDescriptor];

      sub_1922284F0();
      sub_192228530();
      sub_192228540();
      sub_192228500();
    }

    while (v6 != v8);
    a2 = v13;
    v7 = v14;
  }

  a3(v7, a2, a4);
}

void sub_1921BCF5C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a6;
  v14[7] = a7;
  v18[4] = sub_1921C9210;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1921BD98C;
  v18[3] = &block_descriptor_434;
  v15 = _Block_copy(v18);
  v16 = a4;
  v17 = a5;

  [a1 getCurrentDescriptorsWithCompletion_];
  _Block_release(v15);
}

void sub_1921BD078(unint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t (*)(), void *, void), __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
    v14 = sub_192228340();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_192228520();
    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v20 = a7;
    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193B0B410](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      sub_1921BD21C(a2, a3);

      sub_1922284F0();
      sub_192228530();
      sub_192228540();
      sub_192228500();
    }

    while (v14 != v16);
    v15 = v21;
    a7 = v20;
  }

  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a8;
  v19[4] = v15;

  a4(sub_1921C9278, v19, 0);
}

uint64_t sub_1921BD21C(uint64_t a1, void *a2)
{
  v3 = v2;
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  *&v6 = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = &v44 - v7;
  [v2 mutableCopy];
  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A7A8(0, &qword_1ED749A50, 0x1E6994310);
  swift_dynamicCast();
  v9 = v48;
  [v48 setExtensionIdentity_];
  v10 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
  v12 = *(*(v11 - 8) + 48);
  if (!v12(a1 + v10, 1, v11))
  {
    v13 = sub_192225510();
    v15 = v14;
    swift_endAccess();
    sub_19202A7A8(0, &qword_1EADECA88, 0x1E6963620);
    v16 = sub_1920393C8(v13, v15, 1);
    if (!v16)
    {
      goto LABEL_4;
    }

    v45 = v16;
    if ([v16 developerType] != 1)
    {
      v19 = 0;
      v18 = 1;
      v17 = v45;
      v20 = v46;
      goto LABEL_5;
    }

    v40 = [v46 infoDictionary];
    v44 = v40;
    v41 = sub_192227930();
    sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
    v42 = [v40 objectForKey:v41 ofClass:swift_getObjCClassFromMetadata()];

    if (v42)
    {
      sub_1922282B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    v50 = v48;
    v51 = v49;
    if (*(&v49 + 1))
    {
      if (swift_dynamicCast())
      {
        goto LABEL_40;
      }
    }

    else
    {
      sub_192033970(&v50, &unk_1EADEF330, &unk_19222CD40);
    }

    swift_beginAccess();
    if (v12(a1 + v10, 1, v11))
    {
      swift_endAccess();
      v43 = 0;
      v17 = v45;
      v20 = v46;
LABEL_41:
      [v9 setNativeContainerBundleIdentifier_];

      v18 = 0;
      v19 = 0;
      goto LABEL_5;
    }

    sub_192225510();
    swift_endAccess();
LABEL_40:
    v20 = v46;
    v43 = sub_192227930();

    v17 = v45;
    goto LABEL_41;
  }

  swift_endAccess();
LABEL_4:
  v17 = 0;
  v18 = 1;
  v19 = 1;
  v20 = v46;
LABEL_5:
  v21 = [v9 enablesMultipleTapTargets];
  if ((v18 | v19) == 1 && v21)
  {
    [v9 setEnablesMultipleTapTargets_];
  }

  v22 = [v3 widgetVisibility];
  v23 = [v20 URL];
  sub_192224FF0();

  v24 = sub_192225020();
  (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
  v25 = sub_1921C70A0(v22, v8);
  sub_192033970(v8, &qword_1EADEEE10, &unk_19222B630);
  [v9 setWidgetVisibility_];
  v26 = [v9 sdkVersion];
  v27 = sub_192227960();
  v29 = v28;

  if (v27 == sub_192227960() && v29 == v30)
  {
  }

  else
  {
    v31 = sub_1922289A0();

    if ((v31 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v32 = [v20 SDKVersion];
  if (v32)
  {
    v33 = v32;
    [v9 setSdkVersion_];
  }

LABEL_14:
  v34 = [v20 entitlements];
  v35 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v36 = [v34 objectForKey:v35 ofClass:swift_getObjCClassFromMetadata()];

  if (v36)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (!*(&v49 + 1))
  {
    sub_192033970(&v50, &unk_1EADEF330, &unk_19222CD40);
LABEL_24:
    v37 = 0;
    v38 = 2;
    goto LABEL_25;
  }

  type metadata accessor for FileProtectionType(0);
  if ((swift_dynamicCast() & 1) == 0 || !v47)
  {
    goto LABEL_24;
  }

  v37 = v47;
  DataProtectionLevel.init(_:)(v37);
  if (v50 <= 1u)
  {
    v38 = v50 != 0;
  }

  else
  {
    v38 = 2;
    if (v50 == 3)
    {
      v38 = 3;
    }
  }

LABEL_25:
  [v9 setRequestedDataProtection_];
  [v9 copy];
  sub_1922282B0();

  swift_unknownObjectRelease();
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  swift_dynamicCast();
  return v48;
}

double sub_1921BD98C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v3 = sub_192227B70();

  v2(v3);

  return result;
}

void sub_1921BDA28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  sub_19202A7A8(0, a4, a5);
  v7 = sub_192227B60();
  if (a2)
  {
    v8 = sub_192224F80();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a3 + 16))(a3, v7);
}

void sub_1921BDAC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BC8, &qword_1922405D8);
    v2 = sub_1922286C0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v30 >= v25)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v30);
      ++v26;
      if (v7)
      {
        while (1)
        {
          v31 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v32 = (v30 << 9) | (8 * v31);
          v33 = *(*(a1 + 56) + v32);
          v34 = *(*(a1 + 48) + v32);

          v35 = sub_1920B74F8(v34);
          if (v36)
          {
            v27 = *(v2 + 48);
            v28 = *(v27 + 8 * v35);
            *(v27 + 8 * v35) = v34;
            v29 = v35;

            *(*(v2 + 56) + 8 * v29) = v33;

            v26 = v30;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v37 = *(v2 + 16);
            if (v37 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
            *(*(v2 + 48) + 8 * v35) = v34;
            *(*(v2 + 56) + 8 * v35) = v33;
            *(v2 + 16) = v37 + 1;
            v26 = v30;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v30 = v26;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a1 + 56) + v14);
      v16 = *(*(a1 + 48) + v14);

      v17 = sub_1922281C0();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      *(*(v2 + 56) + 8 * v12) = v15;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1921BE048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PlaceholderRequest();
  v11 = sub_192227B60();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a5;
  v12[5] = a6;
  v14[4] = sub_1921C9040;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1921C9404;
  v14[3] = &block_descriptor_372;
  v13 = _Block_copy(v14);

  [a1 getPlaceholdersWithRequests:v11 completion:v13];
  _Block_release(v13);
}

void sub_1921BE198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_192227930();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a6;
  v13[5] = a7;
  v15[4] = sub_1921C8FB4;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_19202AB80;
  v15[3] = &block_descriptor_353;
  v14 = _Block_copy(v15);

  [a1 handleURLSessionEventsFor:v12 completion:v14];
  _Block_release(v14);
}

double sub_1921BE2B0(void (*a1)(uint64_t (*)(), uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  a1(sub_1921C8FC0, v7, 0);

  return result;
}

uint64_t sub_1921BE498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_192227930();
  if (a6)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a7;
  v16[5] = a8;
  v19[4] = sub_1921C8F6C;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1921C9404;
  v19[3] = &block_descriptor_334;
  v17 = _Block_copy(v19);

  [a1 attachPreviewAgentWithFrameworkPath:v14 endpoint:v15 handler:v17];
  _Block_release(v17);

  return swift_unknownObjectRelease();
}

void sub_1921BEA14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a5;
  v17[5] = a6;
  v19[4] = a8;
  v19[5] = v17;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1921C9404;
  v19[3] = a9;
  v18 = _Block_copy(v19);

  [a1 *a10];
  _Block_release(v18);
}

void sub_1921BEC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ControlTemplateRequest();
  v11 = sub_192227B60();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a5;
  v12[5] = a6;
  v14[4] = sub_1921C8D34;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_19202AF14;
  v14[3] = &block_descriptor_259;
  v13 = _Block_copy(v14);

  [a1 getControlTemplatesWithRequests:v11 completion:v13];
  _Block_release(v13);
}

void sub_1921BEDB4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, char a7, uint64_t a8, uint64_t a9)
{
  aBlock[0] = a5;
  v16 = objc_allocWithZone(type metadata accessor for TimelineRequest());
  v17 = a5;
  v18 = a4;
  v19 = sub_192077DB8(v18, aBlock, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_19222C680;
  *(v20 + 32) = v19;
  v21 = v19;
  v22 = sub_192227B60();

  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a8;
  v23[5] = a9;
  aBlock[4] = sub_1921C8CB0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1921C9404;
  aBlock[3] = &block_descriptor_221;
  v24 = _Block_copy(aBlock);

  [a1 getTimelinesWithRequests:v22 isPreview:a7 & 1 completion:v24];
  _Block_release(v24);
}

void sub_1921BF110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_1921C8C3C;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1921BF2EC;
  v12[3] = &block_descriptor_202;
  v11 = _Block_copy(v12);

  [a1 getAppIntentsXPCListenerEndpointWithCompletion_];
  _Block_release(v11);
}

double sub_1921BF210(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(uint64_t (*)(), void *, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v16 = a1;

  sub_19206A874(a2, a3);
  v17 = a4;
  a5(sub_1921C8C48, v15, 0);

  return result;
}

double sub_1921BF2EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {

    v8 = a2;
    v9 = v5;
    v5 = sub_192225080();
    v11 = v10;
  }

  else
  {

    v12 = a2;
    v11 = 0xF000000000000000;
  }

  v13 = a4;
  v7(a2, v5, v11, a4);

  sub_192046ED4(v5, v11);

  return result;
}

void sub_1921BF4E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ActivityWidgetRequest(0);
  v11 = sub_192227B60();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a5;
  v12[5] = a6;
  v14[4] = sub_1921C8BB8;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1921C9404;
  v14[3] = &block_descriptor_184;
  v13 = _Block_copy(v14);

  [a1 getActivitiesWithRequests:v11 completion:v13];
  _Block_release(v13);
}

double sub_1921BF60C(void *a1, void (*a2)(uint64_t, void *, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;
  v13 = a1;

  a2(a7, v12, 0);

  return result;
}

double sub_1921BF6D8(uint64_t a1, int a2, uint64_t a3, void *aBlock, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  a5(0);
  v10 = sub_192227B70();
  _Block_copy(v9);

  a6(v10, a1, v9);
  _Block_release(v9);
  _Block_release(v9);

  return result;
}

void sub_1921BF78C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a5;
  v12[5] = a6;
  v14[4] = sub_1921C8B70;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_19202AF14;
  v14[3] = &block_descriptor_165;
  v13 = _Block_copy(v14);

  [a1 getWidgetRelevancesWithRequest:a4 completion:v13];
  _Block_release(v13);
}

double sub_1921BF894(void *a1, void (*a2)(uint64_t, void *, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;

  v13 = a1;
  a2(a7, v12, 0);

  return result;
}

double sub_1921BFB54(void *a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
    os_unfair_lock_lock(*(v8 + 16));
    v9 = *(v7 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock_invalidated);
    os_unfair_lock_unlock(*(v8 + 16));
    if ((v9 & 1) == 0)
    {
      if (qword_1EADECEC0 != -1)
      {
        swift_once();
      }

      v10 = sub_1922258B0();
      __swift_project_value_buffer(v10, qword_1EAE00728);

      v11 = a1;
      v12 = sub_192225890();
      v13 = sub_192227FB0();

      if (os_log_type_enabled(v12, v13))
      {
        v23 = a3;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v24 = v16;
        *v14 = 136446466;
        v17 = sub_19203418C();
        v19 = sub_19202B8CC(v17, v18, &v24);

        *(v14 + 4) = v19;
        *(v14 + 12) = 2114;
        v20 = a1;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 14) = v21;
        *v15 = v21;
        _os_log_impl(&dword_192028000, v12, v13, "%{public}s Unexpected error on session: %{public}@", v14, 0x16u);
        sub_192033970(v15, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v15, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x193B0C7F0](v16, -1, -1);
        v22 = v14;
        a3 = v23;
        MEMORY[0x193B0C7F0](v22, -1, -1);
      }

      sub_19203977C();
      a3(a1);
    }
  }

  return result;
}

id sub_1921BFDA4(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(id, void, uint64_t), __n128 a6)
{
  *&v49 = sub_1922255D0();
  *(&v49 + 1) = v7;
  v50 = v8;
  v51 = v9;
  v52 = v10;
  v11 = [objc_allocWithZone(MEMORY[0x1E698E620]) initWithAuditToken_];
  [v11 pid];

  if (BSPIDIsBeingDebugged())
  {
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1EAE00728);

    v13 = sub_192225890();
    v14 = sub_192227FB0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v48[0] = v16;
      *v15 = 136446466;
      v17 = sub_19203418C();
      v19 = sub_19202B8CC(v17, v18, v48);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      *&v49 = a3;
      BYTE8(v49) = a4;
      v20 = WidgetExtensionSessionOperation.description.getter();
      v22 = sub_19202B8CC(v20, v21, v48);

      *(v15 + 14) = v22;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v16, -1, -1);
      MEMORY[0x193B0C7F0](v15, -1, -1);
    }
  }

  else
  {
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v23 = sub_1922258B0();
    __swift_project_value_buffer(v23, qword_1EAE00728);

    v24 = sub_192225890();
    v25 = sub_192227FB0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v48[0] = v27;
      *v26 = 136446466;
      v28 = sub_19203418C();
      v30 = sub_19202B8CC(v28, v29, v48);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      *&v49 = a3;
      BYTE8(v49) = a4;
      v31 = WidgetExtensionSessionOperation.description.getter();
      v33 = sub_19202B8CC(v31, v32, v48);

      *(v26 + 14) = v33;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v27, -1, -1);
      MEMORY[0x193B0C7F0](v26, -1, -1);
    }

    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_192228400();

    *&v49 = 0xD000000000000020;
    *(&v49 + 1) = 0x800000019224DC80;
    *&v48[0] = a3;
    BYTE8(v48[0]) = a4;
    v34 = WidgetExtensionSessionOperation.description.getter();
    MEMORY[0x193B0A990](v34);

    v35 = v49;
    v36 = *MEMORY[0x1E69941E8];
    sub_19214036C(MEMORY[0x1E69E7CC0]);
    v37 = sub_192227960();
    v39 = v38;
    v52 = MEMORY[0x1E69E6158];
    v49 = v35;
    sub_19203BEDC(&v49, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v48, v37, v39, isUniquelyReferenced_nonNull_native);

    v41 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v42 = sub_192227830();

    v43 = [v41 initWithDomain:v36 code:1001 userInfo:v42];

    a5(v43, 0, 1);
  }

  return [a1 invalidate];
}

unint64_t sub_1921C02A8()
{
  result = sub_192140830(MEMORY[0x1E69E7CC0]);
  qword_1EADECCD0 = result;
  return result;
}

void sub_1921C02D0(void *a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v137 = a4;
  v138 = a3;
  v139 = a1;
  v147 = *MEMORY[0x1E69E9840];
  v133 = sub_192227730();
  v132 = *(v133 - 1);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1922251B0();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v134 = *(v136 - 1);
  MEMORY[0x1EEE9AC00](v136);
  v10 = &v123 - v9;
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v11 = sub_1922258B0();
  v12 = __swift_project_value_buffer(v11, qword_1EAE00728);

  v140 = v12;
  v13 = sub_192225890();
  v14 = sub_192227FB0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock = v16;
    *v15 = 136446466;
    v17 = sub_19203418C();
    v19 = sub_19202B8CC(v17, v18, &aBlock);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_19202B8CC(v139, a2, &aBlock);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v16, -1, -1);
    MEMORY[0x193B0C7F0](v15, -1, -1);
  }

  v20 = sub_192225890();
  v21 = sub_192227F90();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136446466;
    v24 = sub_19203418C();
    v26 = sub_19202B8CC(v24, v25, &aBlock);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_19202B8CC(v139, a2, &aBlock);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v23, -1, -1);
    MEMORY[0x193B0C7F0](v22, -1, -1);
  }

  sub_19203977C();
  v27 = objc_allocWithZone(MEMORY[0x1E69C7650]);
  v28 = sub_192227930();
  v29 = [v27 initWithExplanation_];

  sub_1922256C0();
  sub_192225500();
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_192033A64(&qword_1EADECB60, &aBlock);
  v30 = v144;
  v31 = v145;
  __swift_project_boxed_opaque_existential_1(&aBlock, v144);
  v32 = v31[1](v10, v30, v31);
  (v134)[1](v10, v136);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v33 = sub_19203418C();
  v35 = v34;
  if (qword_1EADECCC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = sub_1921C7FDC(v32, v139, a2, v33, v35, &qword_1EADECCD0, 0);
  swift_endAccess();

  [v29 setReportType_];
  [v29 setExceptionDomain_];
  [v29 setExceptionCode_];
  [v29 setMaximumTerminationResistance_];
  v127 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession__exExtensionProcess;
  v37 = sub_1922255D0();
  v38 = v37;
  v40 = v39;
  LODWORD(v36) = v41;
  v43 = v42;
  v44 = HIDWORD(v37);
  v45 = HIDWORD(v39);
  v46 = HIDWORD(v41);
  v47 = HIDWORD(v42);
  v48 = objc_allocWithZone(MEMORY[0x1E698E620]);
  aBlock = __PAIR64__(v44, v38);
  v142 = __PAIR64__(v45, v40);
  v143 = __PAIR64__(v46, v36);
  v144 = __PAIR64__(v47, v43);
  v49 = [v48 initWithAuditToken_];
  v50 = [v49 pid];

  v51 = [objc_opt_self() targetWithPid_];
  v52 = [objc_opt_self() predicateMatchingTarget_];
  v53 = [objc_allocWithZone(MEMORY[0x1E69C7660]) initWithPredicate:v52 context:v29];

  v54 = sub_192225890();
  v55 = sub_192227FB0();

  v56 = os_log_type_enabled(v54, v55);
  v139 = v53;
  v135 = v5;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v57 = 136446466;
    v59 = (v5 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
    v60 = v29;
    v61 = v51;
    v62 = v50;
    v63 = *v59;
    v50 = v59[1];

    v64 = sub_19202B8CC(v63, v50, &aBlock);
    LODWORD(v50) = v62;

    *(v57 + 4) = v64;
    v51 = v61;
    v29 = v60;
    *(v57 + 12) = 1026;
    *(v57 + 14) = v62;
    _os_log_impl(&dword_192028000, v54, v55, "%{public}s Extension process termination requested (%{public}d)", v57, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x193B0C7F0](v58, -1, -1);
    MEMORY[0x193B0C7F0](v57, -1, -1);
  }

  sub_19202A7A8(0, &qword_1EADECA78, 0x1E69C75D0);
  v65 = v52;
  v66 = sub_1921C6728(v65);

  v134 = v65;
  v136 = v51;
  v126 = v29;
  v67 = v135;
  v69 = *(v135 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
  v68 = *(v135 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier + 8);
  v124 = (v135 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
  v70 = swift_allocObject();
  *(v70 + 16) = v67;
  *(v70 + 24) = v50;
  v72 = v137;
  v71 = v138;
  *(v70 + 32) = 0x4014000000000000;
  *(v70 + 40) = v71;
  *(v70 + 48) = v72;
  type metadata accessor for CompletionOrWatchdogWrapper();
  v73 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v74 = swift_allocObject();

  v125 = v66;

  v75 = swift_slowAlloc();
  *v75 = 0;
  *(v74 + 16) = v75;
  v73[4] = v74;
  v76 = v128;
  sub_1922251A0();
  sub_192225160();
  (*(v129 + 8))(v76, v130);
  v77 = objc_allocWithZone(MEMORY[0x1E698E660]);
  LODWORD(v130) = v50;
  v78 = v77;
  v79 = sub_192227930();

  v80 = [v78 initWithIdentifier_];

  v73[5] = v80;
  v73[6] = sub_1921C8A88;
  v73[7] = v70;
  v73[2] = v69;
  v73[3] = v68;
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v81 = v132;
  v82 = v131;
  v83 = v133;
  (*(v132 + 104))(v131, *MEMORY[0x1E69E7F88], v133);

  v84 = sub_1922280B0();
  (*(v81 + 8))(v82, v83);
  v73[8] = v84;
  v85 = v73[5];
  if (v85)
  {
    v86 = v85;

    v145 = sub_1921C9408;
    v146 = v73;
    aBlock = MEMORY[0x1E69E9820];
    v142 = 1107296256;
    v143 = sub_192037950;
    v144 = &block_descriptor_97;
    v87 = _Block_copy(&aBlock);
    v88 = v84;

    [v86 scheduleWithFireInterval:v88 leewayInterval:v87 queue:5.0 handler:0.0];
    _Block_release(v87);

    v89 = swift_allocObject();
    *(v89 + 16) = v67;
    *(v89 + 24) = v130;
    v90 = v138;
    *(v89 + 32) = v73;
    *(v89 + 40) = v90;
    *(v89 + 48) = v72;
    v145 = sub_1921C8A9C;
    v146 = v89;
    aBlock = MEMORY[0x1E69E9820];
    v142 = 1107296256;
    v143 = sub_1921C1878;
    v144 = &block_descriptor_103;
    v91 = _Block_copy(&aBlock);

    v92 = v125;
    [v125 monitorForDeath_];

    _Block_release(v91);
    aBlock = 0;
    v93 = v139;
    if ([v139 execute_])
    {
      v94 = aBlock;
      sub_1922255E0();
    }

    else
    {
      v95 = aBlock;
      v96 = sub_192224F90();

      swift_willThrow();

      v97 = v96;
      v98 = sub_192225890();
      v99 = sub_192227F90();

      v100 = os_log_type_enabled(v98, v99);
      v101 = v126;
      v102 = v136;
      if (v100)
      {
        v103 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        aBlock = v135;
        *v103 = 136446722;
        v104 = v101;
        v105 = v96;
        v106 = v92;
        v107 = v93;
        v108 = *v124;
        v109 = v124[1];

        v110 = sub_19202B8CC(v108, v109, &aBlock);
        v93 = v107;
        v92 = v106;

        *(v103 + 4) = v110;
        v96 = v105;
        v101 = v104;
        *(v103 + 12) = 1026;
        *(v103 + 14) = v130;
        *(v103 + 18) = 2114;
        v111 = v96;
        v112 = _swift_stdlib_bridgeErrorToNSError();
        *(v103 + 20) = v112;
        v113 = v133;
        *v133 = v112;
        _os_log_impl(&dword_192028000, v98, v99, "%{public}s Termination failed for pid %{public}d, with error: %{public}@", v103, 0x1Cu);
        sub_192033970(v113, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v113, -1, -1);
        v114 = v135;
        __swift_destroy_boxed_opaque_existential_1(v135);
        MEMORY[0x193B0C7F0](v114, -1, -1);
        v115 = v103;
        v102 = v136;
        MEMORY[0x193B0C7F0](v115, -1, -1);
      }

      if (sub_19202DC80())
      {

        v116 = sub_192225890();
        v117 = sub_192227FB0();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = v102;
          v119 = swift_slowAlloc();
          v120 = v96;
          v121 = swift_slowAlloc();
          aBlock = v121;
          *v119 = 136446210;
          *(v119 + 4) = sub_19202B8CC(v73[2], v73[3], &aBlock);
          _os_log_impl(&dword_192028000, v116, v117, "[%{public}s] Original request finally completed, but it had already watchdogged.", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v121);
          v122 = v121;
          v96 = v120;
          MEMORY[0x193B0C7F0](v122, -1, -1);
          MEMORY[0x193B0C7F0](v119, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v138();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1921C143C(uint64_t a1, int a2, uint64_t (*a3)(void), double a4)
{
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v7 = sub_1922258B0();
  __swift_project_value_buffer(v7, qword_1EAE00728);

  v8 = sub_192225890();
  v9 = sub_192227F90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446722;
    v12 = sub_19203418C();
    v14 = sub_19202B8CC(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1026;
    *(v10 + 14) = a2;
    *(v10 + 18) = 2050;
    *(v10 + 20) = a4;
    _os_log_impl(&dword_192028000, v8, v9, "%{public}s Extension process termination watchdogged pid (%{public}d) after %{public}fs", v10, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x193B0C7F0](v11, -1, -1);
    MEMORY[0x193B0C7F0](v10, -1, -1);
  }

  return a3();
}

void sub_1921C15DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(void))
{
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v9 = sub_1922258B0();
  __swift_project_value_buffer(v9, qword_1EAE00728);

  v10 = sub_192225890();
  v11 = sub_192227FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v13 = a6;
    v14 = v23;
    *v12 = 136446466;
    v15 = sub_19203418C();
    v17 = sub_19202B8CC(v15, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1026;
    *(v12 + 14) = a4;
    _os_log_impl(&dword_192028000, v10, v11, "%{public}s Extension process terminated pid (%{public}d)", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v18 = v14;
    a6 = v13;
    MEMORY[0x193B0C7F0](v18, -1, -1);
    MEMORY[0x193B0C7F0](v12, -1, -1);
  }

  if (sub_19202DC80())
  {

    oslog = sub_192225890();
    v19 = sub_192227FB0();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_19202B8CC(*(a5 + 16), *(a5 + 24), &v23);
      _os_log_impl(&dword_192028000, oslog, v19, "[%{public}s] Original request finally completed, but it had already watchdogged.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x193B0C7F0](v21, -1, -1);
      MEMORY[0x193B0C7F0](v20, -1, -1);
    }
  }

  else
  {
    a6();
  }
}

void sub_1921C1878(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

id sub_1921C18FC(uint64_t a1, void *a2)
{
  v3 = v2;
  [v3 mutableCopy];
  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A7A8(0, qword_1EADEE810, 0x1E6994308);
  swift_dynamicCast();
  v6 = v23[0];
  [v23[0] setExtensionIdentity_];
  v7 = [v23[0] sdkVersion];
  v8 = sub_192227960();
  v10 = v9;

  if (v8 == sub_192227960() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_1922289A0();

    if ((v13 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v14 = [a2 SDKVersion];
  if (v14)
  {
    v15 = v14;
    [v23[0] setSdkVersion_];
  }

LABEL_10:
  v16 = [a2 entitlements];
  v17 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v18 = [v16 objectForKey:v17 ofClass:swift_getObjCClassFromMetadata()];

  if (v18)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    *v23 = 0u;
    v24 = 0u;
  }

  v25[0] = *v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_192033970(v25, &unk_1EADEF330, &unk_19222CD40);
LABEL_20:
    v19 = 0;
    v20 = 2;
    goto LABEL_21;
  }

  type metadata accessor for FileProtectionType(0);
  if ((swift_dynamicCast() & 1) == 0 || !v22)
  {
    goto LABEL_20;
  }

  v19 = v22;
  DataProtectionLevel.init(_:)(v19);
  if (LOBYTE(v25[0]) <= 1u)
  {
    v20 = LOBYTE(v25[0]) != 0;
  }

  else
  {
    v20 = 2;
    if (LOBYTE(v25[0]) == 3)
    {
      v20 = 3;
    }
  }

LABEL_21:
  [v6 setRequestedDataProtection_];
  [v6 copy];
  sub_1922282B0();

  swift_unknownObjectRelease();
  sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
  swift_dynamicCast();
  return v23[0];
}

uint64_t sub_1921C1C88@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1921C1CB8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_192228350();

    if (v8)
    {

      type metadata accessor for WidgetURLHandler();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_192228340();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_1921C2380(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_1921C2A10(v18 + 1);
        }

        sub_1921C3438(v19, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_192228AD0();
    sub_1922281E0();
    v10 = sub_192228B30();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
      while (1)
      {

        v14 = sub_1922281D0();

        if (v14)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_1921C35C4(v16, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1921C1F1C(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_192228AD0();
  sub_192227650();
  v6 = sub_192228B30();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while ((sub_192227640() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v5 + 48) + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1921C377C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1921C2060(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_192228AD0();
  MEMORY[0x193B0BA90](a2);
  v12 = sub_192228B30();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1921C38D0(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1921C2180(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BF8, &unk_192240610);
    v2 = sub_1922283D0();
    v15 = v2;
    sub_192228330();
    if (sub_192228360())
    {
      sub_1922282D0();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1921C27B4(v9 + 1);
        }

        v2 = v15;
        result = sub_192227880();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_192228360());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1921C2380(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD8, &qword_1922405E8);
    v2 = sub_1922283D0();
    v15 = v2;
    sub_192228330();
    if (sub_192228360())
    {
      type metadata accessor for WidgetURLHandler();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1921C2A10(v9 + 1);
        }

        v2 = v15;
        sub_192228AD0();
        sub_1922281E0();
        result = sub_192228B30();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_192228360());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1921C2580(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BA8, &qword_192240508);
    v2 = sub_1922283D0();
    v15 = v2;
    sub_192228330();
    if (sub_192228360())
    {
      sub_1922258F0();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1921C2EB0(v9 + 1);
        }

        v2 = v15;
        sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
        result = sub_192227880();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_192228360());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1921C27B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BF8, &unk_192240610);
  v4 = sub_1922283C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1922282D0();
      v18 = sub_192227880();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1921C2A10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD8, &qword_1922405E8);
  v4 = sub_1922283C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_192228AD0();
      sub_1922281E0();
      v18 = sub_192228B30();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1921C2C60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD0, &qword_1922405E0);
  v4 = sub_1922283C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_192228AD0();
      sub_192227650();
      v18 = sub_192228B30();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1921C2EB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BA8, &qword_192240508);
  v4 = sub_1922283C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1922258F0();
      sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      v18 = sub_192227880();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1921C3144(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1922283C0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_192228AD0();
      MEMORY[0x193B0BA90](v19);
      v20 = sub_192228B30();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_1921C338C(uint64_t a1, uint64_t a2)
{
  sub_1922282D0();
  sub_192227880();
  result = sub_192228320();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1921C3438(uint64_t a1, uint64_t a2)
{
  sub_192228AD0();
  sub_1922281E0();
  sub_192228B30();
  result = sub_192228320();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1921C34DC(uint64_t a1, uint64_t a2)
{
  sub_1922258F0();
  sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  sub_192227880();
  result = sub_192228320();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1921C35C4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1921C2A10(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1921C3CDC(&qword_1EADF1BD8, &qword_1922405E8);
      goto LABEL_12;
    }

    sub_1921C4188(v6 + 1);
  }

  v8 = *v3;
  sub_192228AD0();
  sub_1922281E0();
  v9 = sub_192228B30();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for WidgetURLHandler();
    sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
    do
    {

      v12 = sub_1922281D0();

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_192228A30();
  __break(1u);
}

void sub_1921C377C(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1921C2C60(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1921C3B9C();
      goto LABEL_12;
    }

    sub_1921C43B0(v6 + 1);
  }

  v8 = *v3;
  sub_192228AD0();
  sub_192227650();
  v9 = sub_192228B30();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while ((sub_192227640() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_192228A30();
  __break(1u);
}

void sub_1921C38D0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1921C3144(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      sub_1921C3E1C(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1921C45D0(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v7);
  v12 = sub_192228B30();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v7;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_192228A30();
  __break(1u);
}

void sub_1921C3A40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13D0, &qword_19223AE68);
  v2 = *v0;
  v3 = sub_1922283B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_1921C3B9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD0, &qword_1922405E0);
  v2 = *v0;
  v3 = sub_1922283B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1921C3CDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1922283B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1921C3E1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1922283B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1921C3F4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BF8, &unk_192240610);
  v4 = sub_1922283C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1922282D0();

      v18 = sub_192227880();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1921C4188(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD8, &qword_1922405E8);
  v4 = sub_1922283C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_192228AD0();

      sub_1922281E0();
      v17 = sub_192228B30();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1921C43B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD0, &qword_1922405E0);
  v4 = sub_1922283C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_192228AD0();
      sub_192227650();
      v17 = sub_192228B30();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1921C45D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1922283C0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_192228AD0();
      MEMORY[0x193B0BA90](v18);
      v19 = sub_192228B30();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

uint64_t sub_1921C47E8(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_192228370();

    if (v5)
    {
      v6 = sub_1921C4AC4(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_192228AD0();
  sub_1922281E0();
  v8 = sub_192228B30();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  while (1)
  {

    v12 = sub_1922281D0();

    if (v12)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1921C3CDC(&qword_1EADF1BD8, &qword_1922405E8);
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1921C4E2C(v10);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t sub_1921C49B4(uint64_t a1)
{
  v2 = *v1;
  sub_192228AD0();
  sub_192227650();
  v3 = sub_192228B30();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while ((sub_192227640() & 1) == 0)
  {
    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  v11 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1921C3B9C();
    v9 = v11;
  }

  v10 = *(*(v9 + 48) + 8 * v5);
  sub_1921C4FE8(v5);
  result = v10;
  *v1 = v11;
  return result;
}

uint64_t sub_1921C4AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_192228340();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1921C2380(v5, v4);
  v14 = v6;
  sub_192228AD0();

  sub_1922281E0();
  v7 = sub_192228B30();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
    while (1)
    {

      v11 = sub_1922281D0();

      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v6 + 48) + 8 * v9);
  sub_1921C4E2C(v9);
  result = sub_1922281D0();
  if (result)
  {
    *v3 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1921C4C50(uint64_t a1, uint64_t a2)
{

  v3 = sub_192228340();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1921C2580(v4, v3);
  v12 = v5;
  sub_1922258F0();
  sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);

  v6 = sub_192227880();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_192034F00(&qword_1EADECEA8, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
    while ((sub_192227910() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_19203A6C8(v8);
  result = sub_192227910();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1921C4E2C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_192228310();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_192228AD0();

        sub_1922281E0();
        v10 = sub_192228B30();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_1921C4FE8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_192228310();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_192228AD0();
        sub_192227650();
        v10 = sub_192228B30() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + 8 * v2);
          v13 = (v11 + 8 * v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

uint64_t sub_1921C5190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v12 = sub_192225510();
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v16 = sub_192034E34(v12, v14);
  v18 = v16;
  if (!v16)
  {
    return 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v27[1] = v20 + 56;
  v28 = v21;
  v21(v11, 1, 1, v19);
  v22 = [v18 containingBundleRecord];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 bundleIdentifier];

    if (v24)
    {
      sub_192227960();
      v27[0] = v25;

      sub_192225500();
      sub_192033970(v11, &qword_1EADF1988, &unk_1922404E0);
      v28(v8, 0, 1, v19);
      sub_1921C66B8(v8, v11);
    }
  }

  sub_192228100();
  (*(v3 + 16))(v5, a1, v2);
  sub_19202CFFC(v11, v8, &qword_1EADF1988, &unk_1922404E0);
  v26 = sub_1922280F0();

  sub_192033970(v11, &qword_1EADF1988, &unk_1922404E0);
  return v26;
}

id sub_1921C549C(unsigned __int8 *a1)
{
  v1 = sub_192227930();
  v2 = sub_192227930();
  v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];

  return v3;
}

uint64_t _s9WidgetKit0A23ExtensionSessionFactoryC04makeD03for18preferredLanguages7options23watchdogTimeoutProviderAA0acD0_pSgypSg_SaySSGSgAA0cD7OptionsVSdSgAA0acD9OperationOcSgtFZ_0(uint64_t a1, char *a2, unsigned __int8 *a3, double (*a4)(uint64_t a1), uint64_t a5)
{
  v108 = a2;
  v9 = sub_1922256B0();
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192225670();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - v14;
  v16 = sub_1922256D0();
  v113 = *(v16 - 8);
  v17 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v94 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v94 - v22;
  v24 = sub_1922251B0();
  v114 = *(v24 - 8);
  v115 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v26 = a4;
  }

  else
  {
    v26 = sub_1921BBD34;
  }

  v105 = v26;
  if (a4)
  {
    v27 = a5;
  }

  else
  {
    v27 = 0;
  }

  v117 = v27;
  sub_19202CFFC(a1, v118, &unk_1EADEF330, &unk_19222CD40);
  if (!v119)
  {
    sub_19202D088(a4, a5);
    sub_192033970(v118, &unk_1EADEF330, &unk_19222CD40);
    goto LABEL_14;
  }

  sub_19202D088(a4, a5);
  sub_19202A7A8(0, &qword_1EADECA68, 0x1E6966CB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_19202CFFC(a1, v118, &unk_1EADEF330, &unk_19222CD40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF330, &unk_19222CD40);
    v31 = sub_192227990();
    v33 = v32;
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v34 = sub_1922258B0();
    __swift_project_value_buffer(v34, qword_1EAE00728);

    v35 = sub_192225890();
    v36 = sub_192227FB0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v118[0] = v38;
      *v37 = 136446210;
      v39 = sub_19202B8CC(v31, v33, v118);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_192028000, v35, v36, "Unable to create new WidgetExtensionSession: extension was not an _EXExtensionIdentity - %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x193B0C7F0](v38, -1, -1);
      MEMORY[0x193B0C7F0](v37, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v28 = v121;
  v29 = a3[48];
  v101 = v16;
  if (v29)
  {
    if (qword_1EADECBA8 != -1)
    {
      swift_once();
    }

    v102 = 0x800000019224D900;
    v30 = &qword_1EADECBB0;
    v100 = 0xD000000000000012;
  }

  else
  {
    if (qword_1EADECBC0 != -1)
    {
      swift_once();
    }

    v100 = 0;
    v102 = 0;
    v30 = &qword_1EADECBC8;
  }

  v40 = *v30;
  sub_1922251A0();
  v103 = v28;
  v41 = [v28 bundleIdentifier];
  v42 = sub_192227960();
  v44 = v43;

  v45 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v46 = sub_192034E34(v42, v44);
  v104 = v40;
  v47 = v46;
  v96 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = 0;
  v48 = objc_allocWithZone(MEMORY[0x1E6966CB0]);
  v98 = v47;
  v97 = [v48 initWithApplicationExtensionRecord_];
  sub_1922256E0();
  v49 = v113;
  v50 = a3;
  v51 = *(v113 + 16);
  v52 = v101;
  v51(v20, v23, v101);
  sub_1922255F0();
  v53 = v40;
  v54 = v52;
  v95 = v53;
  sub_192225620();

  sub_192225630();
  sub_192225640();
  v102 = v50;

  sub_192225660();
  v108 = v23;
  v100 = v51;
  v51(v20, v23, v52);
  v55 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v56 = swift_allocObject();
  v57 = v20;
  (*(v49 + 32))(v56 + v55, v20, v52);
  sub_192225610();
  v119 = &type metadata for FeatureFlags.Widgets;
  v120 = sub_19202DBA4();
  LOBYTE(v118[0]) = 18;
  LOBYTE(v52) = sub_192225420();
  __swift_destroy_boxed_opaque_existential_1(v118);
  if (v52)
  {
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v58 = sub_1922258B0();
    __swift_project_value_buffer(v58, qword_1EAE00728);
    v59 = v96;
    v100(v96, v108, v54);
    v60 = sub_192225890();
    v61 = sub_192227FB0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v118[0] = v63;
      *v62 = 136446210;
      v64 = sub_1922256C0();
      v66 = v65;
      (*(v113 + 8))(v59, v54);
      v67 = sub_19202B8CC(v64, v66, v118);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_192028000, v60, v61, "Overriding assertion attributes in launch case: %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x193B0C7F0](v63, -1, -1);
      MEMORY[0x193B0C7F0](v62, -1, -1);
    }

    else
    {

      (*(v113 + 8))(v59, v54);
    }

    v68 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_19222C680;
    LOBYTE(v118[0]) = *v68;
    *(v69 + 32) = sub_1921C549C(v118);
    sub_192225650();
  }

  v70 = v111;
  v71 = v112;
  (*(v111 + 16))(v109, v15, v112);
  v72 = v110;
  v73 = v99;
  sub_192225680();
  if (v73)
  {

    (*(v70 + 8))(v15, v71);
    (*(v113 + 8))(v108, v54);
    v74 = v104;
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v75 = sub_1922258B0();
    __swift_project_value_buffer(v75, qword_1EAE00728);
    v76 = v103;
    v77 = v73;
    v78 = sub_192225890();
    v79 = sub_192227F90();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v118[0] = v82;
      *v80 = 136446466;
      v83 = [v76 bundleIdentifier];
      v84 = sub_192227960();
      v86 = v85;

      v87 = sub_19202B8CC(v84, v86, v118);

      *(v80 + 4) = v87;
      *(v80 + 12) = 2114;
      v88 = v73;
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 14) = v89;
      *v81 = v89;
      _os_log_impl(&dword_192028000, v78, v79, "[%{public}s] Unable to create new WidgetExtensionSession because begin request failed: %{public}@", v80, 0x16u);
      sub_192033970(v81, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v81, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x193B0C7F0](v82, -1, -1);
      MEMORY[0x193B0C7F0](v80, -1, -1);
    }

    else
    {
    }

    (*(v114 + 8))(v116, v115);
    return 0;
  }

  sub_192225600();
  v91 = v116;
  v92 = sub_192032834(v57, v72, v102, v105, v117, v116);

  v93 = *(v113 + 8);
  v93(v57, v54);
  (*(v106 + 8))(v72, v107);
  (*(v70 + 8))(v15, v71);
  v93(v108, v54);
  (*(v114 + 8))(v91, v115);
  return v92;
}

uint64_t sub_1921C62A0@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1921C62DC()
{
  result = qword_1EADF1B90;
  if (!qword_1EADF1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1B90);
  }

  return result;
}

uint64_t sub_1921C6330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1921C6378(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for WidgetExtensionSessionOperation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetExtensionSessionOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1921C6464(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1921C647C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1921C6538(uint64_t a1)
{
  result = sub_1922256D0();
  if (v2 <= 0x3F)
  {
    result = sub_1922256B0();
    if (v3 <= 0x3F)
    {
      result = sub_1922251B0();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1921C66B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1921C6728(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_192224F90();

    swift_willThrow();
  }

  return v1;
}

void sub_1921C67EC(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128), uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_1922256C0();
  sub_192225500();
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_192033A64(&qword_1EADECB60, &v31);
  v10 = v32;
  v11 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, v32);
  v12 = (*(v11 + 8))(v8, v10, v11);
  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (v12)
  {
    v24 = sub_192034C60(v12);
    *&v31 = 0;
    BYTE8(v31) = 4;
    v25 = swift_allocObject();
    v25[2] = v12;
    v25[3] = v24;
    v25[4] = sub_1921C92D8;
    v25[5] = v9;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1921C92D8;
    *(v26 + 24) = v9;
    swift_retain_n();
    v27 = v12;
    v28 = v24;
    sub_192031418(&v31, sub_1921C93AC, v25, sub_1921C9414, v26);
  }

  else
  {
    v13 = *MEMORY[0x1E69941E8];
    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v16 = sub_192227960();
    v18 = v17;
    v32 = MEMORY[0x1E69E6158];
    *&v31 = 0xD000000000000011;
    *(&v31 + 1) = 0x800000019224B830;
    sub_19203BEDC(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29[1] = v15;
    sub_19213DB28(v30, v16, v18, isUniquelyReferenced_nonNull_native);

    v20 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v21 = sub_192227830();

    v22 = [v20 initWithDomain:v13 code:1300 userInfo:v21];

    sub_1921BCD7C(v14, v22, a2, v23);
  }
}

void sub_1921C6C08(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  _Block_copy(a2);
  sub_1922256C0();
  sub_192225500();
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_192033A64(&qword_1EADECB60, &v29);
  v8 = v30;
  v9 = v31;
  __swift_project_boxed_opaque_existential_1(&v29, v30);
  v10 = (*(v9 + 8))(v6, v8, v9);
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(&v29);
  if (v10)
  {
    v22 = sub_192034C60(v10);
    *&v29 = 0;
    BYTE8(v29) = 4;
    v23 = swift_allocObject();
    v23[2] = v10;
    v23[3] = v22;
    v23[4] = sub_1921C9154;
    v23[5] = v7;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1921C9154;
    *(v24 + 24) = v7;
    swift_retain_n();
    v25 = v10;
    v26 = v22;
    sub_192031418(&v29, sub_1921C9180, v23, sub_1921C918C, v24);
  }

  else
  {
    v11 = *MEMORY[0x1E69941E8];
    v12 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v13 = sub_192227960();
    v15 = v14;
    v30 = MEMORY[0x1E69E6158];
    *&v29 = 0xD000000000000011;
    *(&v29 + 1) = 0x800000019224B830;
    sub_19203BEDC(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[1] = v12;
    sub_19213DB28(v28, v13, v15, isUniquelyReferenced_nonNull_native);

    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_192227830();

    v19 = [v17 initWithDomain:v11 code:1300 userInfo:v18];

    sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
    v20 = sub_192227B60();
    v21 = sub_192224F80();
    (a2)[2](a2, v20, v21);
  }
}

uint64_t sub_1921C70A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  v7 = sub_192225020();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19202CFFC(a2, v6, &qword_1EADEEE10, &unk_19222B630);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_192033970(v6, &qword_1EADEEE10, &unk_19222B630);
    return 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (a1)
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v15 = sub_192225000();
      v16 = v11;
      strcpy(v14, "AppleInternal");
      v14[7] = -4864;
      sub_1920D89F4();
      v12 = sub_192228280();

      (*(v8 + 8))(v10, v7);
      return v12 & 1;
    }
  }

  return a1;
}

void sub_1921C72D0(uint64_t a1, void *a2, uint64_t a3, void (**a4)(const void *, void, __n128))
{
  v72 = swift_allocObject();
  *(v72 + 16) = a4;
  v7 = MEMORY[0x1E69E7CC0];
  v94 = MEMORY[0x1E69E7CC0];
  v74 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v71 = a4;
  _Block_copy(a4);
  v73 = (v8 + 63) >> 6;
  v80 = a2;
  v75 = a1;

  v11 = 0;
  v12 = &property descriptor for StorageBackedControlArchive.state;
  v13 = v7;
LABEL_4:
  v15 = v74;
  v14 = v75;
  v16 = v73;
  while (v10)
  {
LABEL_10:
    v18 = (v11 << 9) | (8 * __clz(__rbit64(v10)));
    v19 = *(*(v14 + 48) + v18);
    v20 = *(*(v14 + 56) + v18);
    if (v20 >> 62)
    {
      v22 = sub_192228340();
      v16 = v73;
      v15 = v74;
      v21 = v22;
      v14 = v75;
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 &= v10 - 1;
    if (v21)
    {
      if (v21 < 1)
      {
        __break(1u);
        return;
      }

      v76 = v20 & 0xC000000000000001;
      v79 = v19;

      v23 = 0;
      v77 = v21;
      v78 = v20;
      do
      {
        v84 = v23;
        if (v76)
        {
          v24 = MEMORY[0x193B0B410](v23, v20);
        }

        else
        {
          v24 = *(v20 + 8 * v23 + 32);
        }

        v25 = v24;
        KeyPath = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_19222C680;
        v28 = v80;
        *(inited + 32) = [v25 metrics];
        v86 = v25;
        if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
        {
          v29 = type metadata accessor for WidgetEnvironment.Storage();
          v30 = objc_allocWithZone(v29);
          v31 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          *&v30[v31] = sub_192043788(MEMORY[0x1E69E7CC0]);
          v32 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          swift_beginAccess();
          v33 = *&v28[v32];
          swift_beginAccess();
          *&v30[v31] = v33;
          v12 = &property descriptor for StorageBackedControlArchive.state;

          v93.receiver = v30;
          v93.super_class = v29;
          v25 = v86;
          v34 = objc_msgSendSuper2(&v93, sel_init);

          v28 = v34;
        }

        sub_1920C61CC(inited, KeyPath);

        v35 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBA8, &qword_19222AF90);
        v36 = swift_initStackObject();
        *(v36 + 16) = xmmword_19222B480;
        InternalWidgetFamily.init(_:)([v25 family], (v36 + 32));
        if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
        {
          v37 = type metadata accessor for WidgetEnvironment.Storage();
          v38 = objc_allocWithZone(v37);
          v39 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          *&v38[v39] = sub_192043788(MEMORY[0x1E69E7CC0]);
          v40 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          swift_beginAccess();
          v41 = *&v28[v40];
          swift_beginAccess();
          *&v38[v39] = v41;
          v12 = &property descriptor for StorageBackedControlArchive.state;

          v92.receiver = v38;
          v92.super_class = v37;
          v25 = v86;
          v42 = objc_msgSendSuper2(&v92, sel_init);

          v28 = v42;
        }

        sub_1920C5E74(v36, v35);

        v43 = [v79 extensionIdentity];
        v44 = [v79 kind];
        v45 = sub_192227960();
        v47 = v46;

        v48 = [v25 fileHandle];
        v82 = type metadata accessor for PlaceholderRequest();
        v49 = objc_allocWithZone(v82);
        *&v49[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity] = v43;
        v50 = &v49[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind];
        *v50 = v45;
        v50[1] = v47;
        v51 = swift_getKeyPath();
        v81 = v43;
        v52 = v28;
        v85 = v52;
        v83 = v48;
        if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
        {
          v53 = type metadata accessor for WidgetEnvironment.Storage();
          v54 = objc_allocWithZone(v53);
          v55 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          *&v54[v55] = sub_192043788(MEMORY[0x1E69E7CC0]);
          v56 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          swift_beginAccess();
          v57 = *&v85[v56];
          swift_beginAccess();
          *&v54[v55] = v57;

          v91.receiver = v54;
          v91.super_class = v53;
          v12 = &property descriptor for StorageBackedControlArchive.state;
          v52 = objc_msgSendSuper2(&v91, sel_init);
        }

        sub_19204C8C0(0, v51);

        v58 = swift_getKeyPath();
        if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
        {
          v59 = type metadata accessor for WidgetEnvironment.Storage();
          v60 = objc_allocWithZone(v59);
          v61 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          *&v60[v61] = sub_192043788(MEMORY[0x1E69E7CC0]);
          v62 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          swift_beginAccess();
          v63 = *&v52[v62];
          swift_beginAccess();
          *&v60[v61] = v63;

          v12 = &property descriptor for StorageBackedControlArchive.state;

          v90.receiver = v60;
          v90.super_class = v59;
          v64 = objc_msgSendSuper2(&v90, sel_init);

          v52 = v64;
          v48 = v83;
        }

        v20 = v78;
        sub_19204C8C0(0, v58);

        *&v49[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment] = v52;
        *&v49[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle] = v48;
        v89.receiver = v49;
        v89.super_class = v82;
        v65 = objc_msgSendSuper2(&v89, v12[347]);

        v66 = v65;
        MEMORY[0x193B0AB00]();
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_192227BB0();
        }

        v23 = v84 + 1;
        sub_192227C00();

        v13 = v94;
      }

      while (v77 != v84 + 1);

      goto LABEL_4;
    }
  }

  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v17 >= v16)
    {
      break;
    }

    v10 = *(v15 + 8 * v17);
    ++v11;
    if (v10)
    {
      v11 = v17;
      goto LABEL_10;
    }
  }

  if (!(v13 >> 62))
  {
    v67 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v68 = v72;
    if (v67)
    {
LABEL_34:
      v87 = v67;
      v88 = 1;
      v69 = swift_allocObject();
      v69[2] = v13;
      v69[3] = sub_1920B3B6C;
      v69[4] = v68;
      v70 = swift_allocObject();
      *(v70 + 16) = sub_1920B3B6C;
      *(v70 + 24) = v68;
      swift_retain_n();
      sub_192031418(&v87, sub_1921C93B0, v69, sub_1921C940C, v70);

      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_36:
  v68 = v72;
  if (sub_192228340())
  {
    v67 = sub_192228340();
    goto LABEL_34;
  }

LABEL_38:

  (v71[2])(v71, 0);
LABEL_39:
}

double sub_1921C7B18(unint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  if (a1 >> 62)
  {
    if (sub_192228340())
    {
      v6 = sub_192228340();
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v10 = v6;
      v11 = 1;
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = sub_1920B3B6C;
      v7[4] = v5;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1920B3B6C;
      *(v8 + 24) = v5;

      _Block_copy(a3);

      sub_192031418(&v10, sub_1921C8FEC, v7, sub_1921C940C, v8);

      goto LABEL_7;
    }
  }

  _Block_copy(a3);
  a3[2](a3, 0);
LABEL_7:

  return result;
}

double sub_1921C7CB0(unint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  if (a1 >> 62)
  {
    if (sub_192228340())
    {
      v6 = sub_192228340();
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v10 = v6;
      v11 = 0;
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = sub_1920B3B6C;
      v7[4] = v5;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1920B3B6C;
      *(v8 + 24) = v5;

      _Block_copy(a3);

      sub_192031418(&v10, sub_1921C8D28, v7, sub_1921C940C, v8);

      goto LABEL_7;
    }
  }

  _Block_copy(a3);
  a3[2](a3, 0);
LABEL_7:

  return result;
}

double sub_1921C7E44(unint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  if (a1 >> 62)
  {
    if (sub_192228340())
    {
      v6 = sub_192228340();
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v10 = v6;
      v11 = 3;
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = sub_1920B3B6C;
      v7[4] = v5;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1920B3B6C;
      *(v8 + 24) = v5;

      _Block_copy(a3);

      sub_192031418(&v10, sub_1921C8BAC, v7, sub_1921C940C, v8);

      goto LABEL_7;
    }
  }

  _Block_copy(a3);
  a3[2](a3, 0);
LABEL_7:

  return result;
}

uint64_t sub_1921C7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v107 = a6;
  v104 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v93 - v13;
  v15 = sub_192225150();
  v16 = *(v15 - 8);
  v105 = v15;
  v106 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v93 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v93 - v29;
  if (!a1)
  {
    return 0;
  }

  v95 = v28;
  v96 = a4;
  v97 = a2;
  v31 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  v98 = *(v21 + 16);
  v98(v26, a1 + v31, v20);
  (*(v21 + 32))(v30, v26, v20);
  v102 = v21;
  v99 = a3;
  if (a7)
  {
    v32 = a7;
  }

  else
  {
    sub_1922254B0();
    sub_1922254A0();
    v32 = sub_192225480();
  }

  v108 = sub_192225510();
  v109 = v33;
  MEMORY[0x1EEE9AC00](v108);
  *(&v93 - 2) = &v108;
  v34 = sub_19207437C(sub_192074480, (&v93 - 4), v32);

  if ((v34 & 1) == 0)
  {
    sub_1922254B0();
    v108 = sub_192225490();
    v109 = v35;
    MEMORY[0x1EEE9AC00](v108);
    *(&v93 - 2) = &v108;
    v36 = sub_19207437C(sub_1921C938C, (&v93 - 4), v32);

    if ((v36 & 1) == 0)
    {
      (*(v102 + 8))(v30, v20);

      return 0;
    }
  }

  v37 = sub_192225510();
  v39 = *v107;
  if (*(*v107 + 16))
  {
    v40 = sub_1920440AC(v37, v38);
    v42 = v41;

    v43 = v105;
    v44 = v106;
    if (v42)
    {
      v45 = *(v39 + 56) + *(v106 + 72) * v40;
      v46 = v101;
      v94 = *(v106 + 16);
      v94(v101, v45, v105);
      sub_192225110();
      if (v47 > -180.0)
      {

        if (qword_1EADECEC0 != -1)
        {
          swift_once();
        }

        v48 = sub_1922258B0();
        __swift_project_value_buffer(v48, qword_1EAE00728);
        v98(v95, v30, v20);
        v49 = v100;
        v94(v100, v46, v43);
        v50 = v104;

        v51 = v99;

        v52 = v46;
        v53 = sub_192225890();
        v54 = sub_192227FB0();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v108 = v107;
          *v55 = 136446978;
          *(v55 + 4) = sub_19202B8CC(v96, v50, &v108);
          *(v55 + 12) = 2082;
          *(v55 + 14) = sub_19202B8CC(v97, v51, &v108);
          *(v55 + 22) = 2082;
          sub_192031E74(&unk_1EADED340, &qword_1EADF1200, &qword_19222F370, MEMORY[0x1E69940E0]);
          v56 = v95;
          v57 = sub_192228910();
          v59 = v58;
          v60 = *(v102 + 8);
          v60(v56, v20);
          v61 = sub_19202B8CC(v57, v59, &v108);

          *(v55 + 24) = v61;
          *(v55 + 32) = 2048;
          v62 = v100;
          sub_192225110();
          v64 = v63;
          v65 = *(v106 + 8);
          v66 = v62;
          v67 = v105;
          v65(v66, v105);
          *(v55 + 34) = -v64;
          v68 = v107;
          swift_arrayDestroy();
          MEMORY[0x193B0C7F0](v68, -1, -1);
          MEMORY[0x193B0C7F0](v55, -1, -1);

          v65(v101, v67);
          v60(v30, v20);
        }

        else
        {

          v91 = *(v106 + 8);
          v91(v49, v43);
          v92 = *(v102 + 8);
          v92(v95, v20);
          v91(v52, v43);
          v92(v30, v20);
        }

        return 0;
      }

      (*(v44 + 8))(v46, v43);
    }
  }

  else
  {

    v43 = v105;
    v44 = v106;
  }

  v70 = sub_192225510();
  v72 = v71;
  sub_192225130();
  (*(v44 + 56))(v14, 0, 1, v43);
  sub_1920BD078(v14, v70, v72);
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v73 = sub_1922258B0();
  __swift_project_value_buffer(v73, qword_1EAE00728);
  v74 = v103;
  v98(v103, v30, v20);
  v75 = v104;

  v76 = v99;

  v77 = sub_192225890();
  v78 = sub_192227FB0();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v108 = v107;
    *v79 = 136446978;
    *(v79 + 4) = sub_19202B8CC(v96, v75, &v108);
    *(v79 + 12) = 2082;
    *(v79 + 14) = sub_19202B8CC(v97, v76, &v108);
    *(v79 + 22) = 2082;
    sub_192031E74(&unk_1EADED340, &qword_1EADF1200, &qword_19222F370, MEMORY[0x1E69940E0]);
    v80 = sub_192228910();
    v81 = v74;
    v83 = v82;
    v106 = *(v102 + 8);
    (v106)(v81, v20);
    v84 = sub_19202B8CC(v80, v83, &v108);

    *(v79 + 24) = v84;
    *(v79 + 32) = 2082;
    v85 = MEMORY[0x193B0AB30](v32, MEMORY[0x1E69E6158]);
    v87 = v86;

    v88 = sub_19202B8CC(v85, v87, &v108);

    *(v79 + 34) = v88;
    v89 = v107;
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v89, -1, -1);
    MEMORY[0x193B0C7F0](v79, -1, -1);

    (v106)(v30, v20);
  }

  else
  {

    v90 = *(v102 + 8);
    v90(v74, v20);
    v90(v30, v20);
  }

  return 3;
}

uint64_t objectdestroy_92Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_161Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1921C907C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_19202A7A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_146Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_127Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_412Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_167Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_406Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1921C9418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v4 = sub_192225D60();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C08, &qword_192240748);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C10, &qword_192240750);
  v10 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C18, &qword_192240758);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = *(v2 + 24);
  if (v16 == 1.0)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C20, &qword_192240760);
    (*(*(v17 - 8) + 16))(v15, v35, v17);
    swift_storeEnumTagMultiPayload();
    sub_1921C9A9C();
    v18 = sub_1921C9984();
    v19 = sub_19203F6FC();
    *&v41 = v7;
    *(&v41 + 1) = v4;
    *&v42 = v18;
    *(&v42 + 1) = v19;
    swift_getOpaqueTypeConformance2();
    return sub_1922266E0();
  }

  else
  {
    v21 = *(v2 + 16);
    v33 = v10;
    sub_1922275F0();
    sub_192225AA0();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C20, &qword_192240760);
    (*(*(v34 - 8) + 16))(v9, v35, v34);
    v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C28, &qword_192240768) + 36)];
    v23 = v42;
    *v22 = v41;
    *(v22 + 1) = v23;
    *(v22 + 2) = v43;
    *&v9[*(v7 + 36)] = v16;
    v24 = v16 * v21;
    v25 = *(v4 + 20);
    v26 = *MEMORY[0x1E697F468];
    v27 = sub_192226560();
    (*(*(v27 - 8) + 104))(v6 + v25, v26, v27);
    *v6 = v24;
    v6[1] = v24;
    v28 = sub_1921C9984();
    v29 = sub_19203F6FC();
    v35 = a2;
    v30 = v29;
    sub_1922270A0();
    sub_192051814(v6);
    sub_1921C9B00(v9);
    v31 = v33;
    v32 = v36;
    (*(v33 + 16))(v15, v12, v36);
    swift_storeEnumTagMultiPayload();
    sub_1921C9A9C();
    v37 = v7;
    v38 = v4;
    v39 = v28;
    v40 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1922266E0();
    return (*(v31 + 8))(v12, v32);
  }
}

uint64_t View.applyScalingModifier(metrics:displayScale:)(_OWORD *a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7 = a4;
  return MEMORY[0x193B0A190](v6, a2, &type metadata for ActivityScalingModifier, a3);
}

unint64_t sub_1921C9904()
{
  result = qword_1EADF1C00;
  if (!qword_1EADF1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C00);
  }

  return result;
}

unint64_t sub_1921C9984()
{
  result = qword_1EADF1C30;
  if (!qword_1EADF1C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C08, &qword_192240748);
    sub_1921C9A10();
    sub_1920B6A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C30);
  }

  return result;
}

unint64_t sub_1921C9A10()
{
  result = qword_1EADF1C38;
  if (!qword_1EADF1C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C28, &qword_192240768);
    sub_1921C9A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C38);
  }

  return result;
}

unint64_t sub_1921C9A9C()
{
  result = qword_1EADF1C40;
  if (!qword_1EADF1C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C20, &qword_192240760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C40);
  }

  return result;
}

uint64_t sub_1921C9B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C08, &qword_192240748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1921C9B68()
{
  result = qword_1EADF1C48;
  if (!qword_1EADF1C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C50, qword_192240770);
    sub_1921C9A9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C08, &qword_192240748);
    sub_192225D60();
    sub_1921C9984();
    sub_19203F6FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C48);
  }

  return result;
}

uint64_t sub_1921C9C58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_192228950();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_192224F80();

  v12 = [v11 debugDescription];
  v13 = sub_192227960();

  return v13;
}

uint64_t sub_1921C9EC0()
{
  v0 = sub_1922258B0();
  __swift_allocate_value_buffer(v0, qword_1EAE00740);
  __swift_project_value_buffer(v0, qword_1EAE00740);
  return sub_1922258A0();
}

uint64_t sub_1921C9FBC()
{
  v0 = sub_1922258B0();
  __swift_allocate_value_buffer(v0, qword_1EAE008C0);
  __swift_project_value_buffer(v0, qword_1EAE008C0);
  return sub_1922258A0();
}

void sub_1921CA100(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_192224F80();
  if (a2)
  {
    v34 = v6;

    v7 = sub_192225890();
    v8 = sub_192227F90();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136446978;
      *(v9 + 4) = sub_19202B8CC(a1, a2, &v35);
      *(v9 + 12) = 2082;
      v11 = [v34 domain];
      v12 = sub_192227960();
      v14 = v13;

      v15 = sub_19202B8CC(v12, v14, &v35);

      *(v9 + 14) = v15;
      *(v9 + 22) = 2050;
      v16 = [v34 code];

      *(v9 + 24) = v16;
      *(v9 + 32) = 2082;
      v17 = [v34 debugDescription];
      v18 = sub_192227960();
      v20 = v19;

      v21 = sub_19202B8CC(v18, v20, &v35);

      *(v9 + 34) = v21;
      _os_log_impl(&dword_192028000, v7, v8, "%{public}s: %{public}s (%{public}ld) %{public}s", v9, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v10, -1, -1);
      MEMORY[0x193B0C7F0](v9, -1, -1);

      return;
    }
  }

  else
  {
    v34 = v6;
    v7 = sub_192225890();
    v22 = sub_192227F90();
    if (os_log_type_enabled(v7, v22))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136446722;
      v23 = [v34 domain];
      v24 = sub_192227960();
      v26 = v25;

      v27 = sub_19202B8CC(v24, v26, &v35);

      *(v9 + 4) = v27;
      *(v9 + 12) = 2050;
      v28 = [v34 code];

      *(v9 + 14) = v28;
      *(v9 + 22) = 2082;
      v29 = [v34 debugDescription];
      v30 = sub_192227960();
      v32 = v31;

      v33 = sub_19202B8CC(v30, v32, &v35);

      *(v9 + 24) = v33;
      _os_log_impl(&dword_192028000, v7, v22, "%{public}s (%{public}ld) %{public}s", v9, 0x20u);
      goto LABEL_6;
    }
  }
}

uint64_t EnvironmentValues._widgetInvertsAccentFilterStyle.getter()
{
  sub_192143E60();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._widgetInvertsAccentFilterStyle.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192143E60();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921CA5A0;
}

void sub_1921CA5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
    return;
  }

  v6 = objc_opt_self();
  v7 = 0;
  v8 = a1 + 32;
  v9 = &selRef_setWantsLiveScene_;
  v29 = a1 + 32;
  v30 = v6;
  while (1)
  {
    v10 = (v8 + 16 * v7);
    v12 = *v10;
    v11 = v10[1];

    queriesForExtensionPoint(extensionPointIdentifier:)(v12, v11);

    sub_19202A7A8(0, &qword_1EADECA48, 0x1E6966CE0);
    v13 = sub_192227B60();

    v14 = [v6 v9[62]];

    sub_19202A7A8(0, &qword_1EADECA68, 0x1E6966CB0);
    v15 = sub_192227B70();

    v32 = v7;
    if (v15 >> 62)
    {
      break;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_3:
    v7 = v32 + 1;

    v6 = v30;
    v8 = v29;
    v9 = &selRef_setWantsLiveScene_;
    if (v32 + 1 == v31)
    {
      return;
    }
  }

  v16 = sub_192228340();
  if (!v16)
  {
    goto LABEL_3;
  }

LABEL_6:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x193B0B410](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v21 = a2;
    v22 = a3;
    v23 = [v18 bundleIdentifier];
    v24 = sub_192227960();
    v26 = v25;

    a3 = v22;
    if (v24 == v21 && v26 == v22)
    {

LABEL_23:

      return;
    }

    a2 = v21;
    v28 = sub_1922289A0();

    if (v28)
    {
      goto LABEL_23;
    }

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void static WidgetPreviewAgent.attachPreviewAgent(extensionIdentifier:frameworkPath:environmentVariables:pidCallback:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(unint64_t), uint64_t a7, void (*a8)(__int128 *), uint64_t a9)
{
  v89 = a8;
  v87 = a4;
  v88 = a9;
  v13 = sub_1922277B0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v85 - v18;
  sub_1921CA5E8(&unk_1F06A8540, a1, a2);
  if (v20)
  {
    v21 = v20;
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    LOBYTE(v97) = 3;
    v101 = 0;
    v102 = a5;
    *(&v93 + 1) = sub_19202A7A8(0, &qword_1EADECA68, 0x1E6966CB0);
    *&aBlock = v21;
    v86 = v21;

    v22 = _s9WidgetKit0A23ExtensionSessionFactoryC04makeD03for18preferredLanguages7options23watchdogTimeoutProviderAA0acD0_pSgypSg_SaySSGSgAA0cD7OptionsVSdSgAA0acD9OperationOcSgtFZ_0(&aBlock, 0, &v97, 0, 0);
    sub_192030F04(&aBlock);
    if (v22)
    {
      v23 = [v22 respondsToSelector_];
      if (v23)
      {
        v24 = [v22 pid];
      }

      else
      {
        v24 = 0;
      }

      LOBYTE(aBlock) = (v23 & 1) == 0;
      a6(v24 | (aBlock << 32));
      v50 = dispatch_group_create();
      v51 = swift_allocObject();
      *(v51 + 16) = 0u;
      v85[1] = v51 + 16;
      *(v51 + 32) = 0u;
      *(v51 + 48) = 1;
      dispatch_group_enter(v50);
      v52 = sub_192227930();
      v53 = swift_allocObject();
      *(v53 + 16) = v51;
      *(v53 + 24) = v50;
      v94 = sub_1921CB748;
      v95 = v53;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v93 = sub_1921CB6A4;
      *(&v93 + 1) = &block_descriptor_7;
      v54 = _Block_copy(&aBlock);

      v55 = v50;

      v87 = v22;
      [v22 attachPreviewAgentWithFrameworkPath:v52 endpoint:0 handler:v54];
      _Block_release(v54);

      sub_1922277A0();
      sub_192227800();
      v56 = *(v14 + 8);
      v57 = v16;
      v58 = v55;
      v56(v57, v13);
      sub_192228030();
      v56(v19, v13);
      if (sub_1922276F0())
      {
        v59 = *MEMORY[0x1E69941E8];
        v60 = sub_19214036C(MEMORY[0x1E69E7CC0]);
        v61 = sub_192227960();
        v63 = v62;
        *(&v93 + 1) = MEMORY[0x1E69E6158];
        *&aBlock = 0xD000000000000015;
        *(&aBlock + 1) = 0x800000019224B930;
        sub_19203BEDC(&aBlock, v96);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91[0] = v60;
        sub_19213DB28(v96, v61, v63, isUniquelyReferenced_nonNull_native);

        v65 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v66 = sub_192227830();

        v67 = [v65 initWithDomain:v59 code:1051 userInfo:v66];

        if (qword_1ED74C6B0 != -1)
        {
          swift_once();
        }

        v68 = sub_1922258B0();
        __swift_project_value_buffer(v68, qword_1ED74CCC8);
        v69 = v67;
        sub_1921CA4BC();

        aBlock = v69;
        v93 = 0uLL;
        LOBYTE(v94) = 1;
        v70 = v69;
        v89(&aBlock);
      }

      else
      {
        swift_beginAccess();
        if (*(v51 + 48))
        {
          v71 = *MEMORY[0x1E69941E8];
          v72 = sub_19214036C(MEMORY[0x1E69E7CC0]);
          v73 = sub_192227960();
          v75 = v74;
          *(&v93 + 1) = MEMORY[0x1E69E6158];
          *&aBlock = 0xD000000000000014;
          *(&aBlock + 1) = 0x800000019224B950;
          sub_19203BEDC(&aBlock, v96);
          v76 = swift_isUniquelyReferenced_nonNull_native();
          v90 = v72;
          sub_19213DB28(v96, v73, v75, v76);

          v77 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v78 = sub_192227830();

          v79 = [v77 initWithDomain:v71 code:1050 userInfo:v78];

          if (qword_1ED74C6B0 != -1)
          {
            swift_once();
          }

          v80 = sub_1922258B0();
          __swift_project_value_buffer(v80, qword_1ED74CCC8);
          v81 = v79;
          sub_1921CA4BC();

          aBlock = v81;
          v93 = 0uLL;
          LOBYTE(v94) = 1;
          v82 = v81;
          v89(&aBlock);
        }

        else
        {
          v83 = *(v51 + 32);
          aBlock = *(v51 + 16);
          v93 = v83;
          LOBYTE(v94) = 0;
          v89(&aBlock);
        }
      }

      [v87 invalidate];
      v84 = v86;

      swift_unknownObjectRelease();
    }

    else
    {
      v37 = *MEMORY[0x1E69941E8];
      v38 = sub_19214036C(MEMORY[0x1E69E7CC0]);
      v39 = sub_192227960();
      v41 = v40;
      *(&v93 + 1) = MEMORY[0x1E69E6158];
      *&aBlock = 0xD000000000000014;
      *(&aBlock + 1) = 0x800000019224B950;
      sub_19203BEDC(&aBlock, v96);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v91[0] = v38;
      sub_19213DB28(v96, v39, v41, v42);

      v43 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v44 = sub_192227830();

      v45 = [v43 initWithDomain:v37 code:1050 userInfo:v44];

      if (qword_1ED74C6B0 != -1)
      {
        swift_once();
      }

      v46 = sub_1922258B0();
      __swift_project_value_buffer(v46, qword_1ED74CCC8);
      v47 = v45;
      sub_1921CA4BC();

      aBlock = v47;
      v93 = 0uLL;
      LOBYTE(v94) = 1;
      v48 = v47;
      v89(&aBlock);
      v49 = v86;
    }

    sub_1920313E8(&v97);
  }

  else
  {
    v25 = *MEMORY[0x1E69941E8];
    v26 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v27 = sub_192227960();
    v29 = v28;
    *&v99 = MEMORY[0x1E69E6158];
    v97 = 0xD000000000000011;
    *&v98 = 0x800000019224B830;
    sub_19203BEDC(&v97, &aBlock);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *&v96[0] = v26;
    sub_19213DB28(&aBlock, v27, v29, v30);

    v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v32 = sub_192227830();

    v33 = [v31 initWithDomain:v25 code:1300 userInfo:v32];

    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v34 = sub_1922258B0();
    __swift_project_value_buffer(v34, qword_1ED74CCC8);
    v35 = v33;
    sub_1921CA4BC();

    v97 = v35;
    v98 = 0uLL;
    *&v99 = 0;
    BYTE8(v99) = 1;
    v36 = v35;
    v89(&v97);
  }
}

void sub_1921CB390(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    [a1 realToken];
    v27 = v29[1];
    swift_beginAccess();
    *(a3 + 16) = v29[0];
    *(a3 + 32) = v27;
    *(a3 + 48) = 0;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1922258B0();
    __swift_project_value_buffer(v7, qword_1ED74CCC8);
    v8 = a1;
    v9 = sub_192225890();
    v10 = sub_192227F80();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C58, &qword_192240838);
      v13 = sub_192228230();
      v15 = sub_19202B8CC(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_192028000, v9, v10, "Preview Agent attached to extension: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x193B0C7F0](v12, -1, -1);
      MEMORY[0x193B0C7F0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v17 = sub_1922258B0();
    __swift_project_value_buffer(v17, qword_1ED74CCC8);
    v18 = a2;
    v19 = sub_192225890();
    v20 = sub_192227F90();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v29[0] = v22;
      *v21 = 136446210;
      if (a2)
      {
        swift_getErrorValue();
        v23 = sub_1921C9C58(v30, v31);
        v25 = v24;
      }

      else
      {
        v25 = 0x800000019224DF40;
        v23 = 0xD000000000000011;
      }

      v26 = sub_19202B8CC(v23, v25, v29);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_192028000, v19, v20, "Preview Agent failed to attach to extension: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x193B0C7F0](v22, -1, -1);
      MEMORY[0x193B0C7F0](v21, -1, -1);
    }
  }

  dispatch_group_leave(a4);
}

void sub_1921CB6A4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

WidgetKit::DataProtectionLevel_optional __swiftcall DataProtectionLevel.init(_:)(NSFileProtectionType a1)
{
  v3 = v1;
  v4 = sub_192227960();
  v6 = v5;
  if (v4 == sub_192227960() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_1922289A0();

  if (v9)
  {

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v12 = sub_192227960();
  v14 = v13;
  if (v12 == sub_192227960() && v14 == v15)
  {

    v11 = 1;
  }

  else
  {
    v17 = sub_1922289A0();

    if (v17)
    {

      v11 = 1;
    }

    else
    {
      v18 = sub_192227960();
      v20 = v19;
      if (v18 == sub_192227960() && v20 == v21)
      {

        v11 = 2;
      }

      else
      {
        v22 = sub_1922289A0();

        if (v22)
        {

          v11 = 2;
        }

        else
        {
          v23 = sub_192227960();
          v25 = v24;
          if (v23 == sub_192227960() && v25 == v26)
          {

            v11 = 3;
          }

          else
          {
            v27 = sub_1922289A0();

            if (v27)
            {
              v11 = 3;
            }

            else
            {
              v11 = 4;
            }
          }
        }
      }
    }
  }

LABEL_9:
  *v3 = v11;
  return result;
}

uint64_t static DataProtectionLevel.systemDefault.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ED74B5B8 = v1;
  return result;
}

unint64_t DataProtectionLevel.init(_:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

WidgetKit::DataProtectionLevel_optional __swiftcall DataProtectionLevel.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 74)
  {
    if (rawValue == 75)
    {
      *v1 = 1;
      return rawValue;
    }

    if (rawValue == 100)
    {
      *v1 = 0;
      return rawValue;
    }

LABEL_8:
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 25)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 50)
  {
    goto LABEL_8;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_1921CBBA8()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](-25 * v1 + 100);
  return sub_192228B30();
}

uint64_t sub_1921CBC30()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](-25 * v1 + 100);
  return sub_192228B30();
}

unint64_t sub_1921CBDC0()
{
  result = qword_1EADF1C60;
  if (!qword_1EADF1C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C68, &qword_1922408E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C60);
  }

  return result;
}

unint64_t sub_1921CBE24()
{
  result = qword_1EADECB00;
  if (!qword_1EADECB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECB00);
  }

  return result;
}

uint64_t Cartesian2ProductCollection<>.init(_:environment:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a3 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  (*(v13 + 16))(v17, a1, a3, v15);
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v12 = v18;
  sub_19209C05C(v12);
  v20 = v19;
  (*(v13 + 8))(a1, a3);
  sub_1921CF7D4(v12);
  v25 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1638, &unk_192240A20);
  v22 = sub_1921CF830();
  return Cartesian2ProductCollection.init(_:_:)(v17, &v25, a3, v21, a4, v22, a5);
}

uint64_t Cartesian2ProductCollection.count.getter(void *a1)
{
  v1 = sub_192227E20();
  v2 = sub_192227E20();
  result = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t Cartesian2ProductCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v16 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  sub_1921CC8FC(&v16 - v13, v10, a3, a4);
  sub_1921CCB1C(a1, v17, v14, v10, a4);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1921CC26C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 24);
  v6 = *(a1 + a2 - 16);
  v7 = *(a1 + a2 - 8);
  v8 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v10 = type metadata accessor for Cartesian2ProductCollection(0, v12);
  return Cartesian2ProductCollection.subscript.getter(a3, a3 + v9, v8, v10);
}

uint64_t sub_1921CC358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24[1] = a2;
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v9 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = v24 - v14;
  v16 = *a3;
  (*(v17 + 16))(v24 - v14, a1, TupleTypeMetadata2, v13);
  v18 = *(TupleTypeMetadata2 + 48);
  v25[0] = v6;
  v25[1] = v7;
  v25[2] = v9;
  v25[3] = v8;
  v19 = type metadata accessor for Cartesian2ProductCollection(0, v25);
  v20 = Cartesian2ProductCollection.subscript.modify(v25, v16, v19);
  v22 = v21;
  (*(*(AssociatedTypeWitness - 8) + 40))(v21, v15, AssociatedTypeWitness);
  (*(*(v11 - 8) + 40))(v22 + *(TupleTypeMetadata2 + 48), &v15[v18], v11);
  return (v20)(v25, 0);
}

uint64_t (*Cartesian2ProductCollection.subscript.modify(uint64_t *a1, uint64_t a2, void *a3))()
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 - 1);
  if (v6)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(*(a3 - 1) + 64));
  }

  v11 = v10;
  *(v8 + 32) = v10;
  *(v8 + 40) = swift_getAssociatedTypeWitness();
  *(v8 + 48) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v8 + 56) = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = v13;
  *(v8 + 64) = v13;
  v15 = *(v13 + 64);
  if (v6)
  {
    v16 = swift_coroFrameAlloc();
    *(v8 + 72) = v16;
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(*(v13 + 64));
    *(v8 + 72) = v16;
    v17 = malloc(v15);
  }

  v18 = v17;
  *(v8 + 80) = v17;
  v19 = *(TupleTypeMetadata2 + 48);
  (*(v9 + 16))(v11, v3, a3);
  sub_1921CC8FC(v18, v18 + v19, a2, a3);
  (*(v9 + 8))(v11, a3);
  (*(v14 + 16))(v16, v18, TupleTypeMetadata2);
  v20 = *(TupleTypeMetadata2 + 48);
  *(v8 + 96) = v20;
  *(v8 + 88) = Cartesian2ProductCollection.subscript.modify(v8, v16, v16 + v20, a3);
  return sub_1921CC7F0;
}

void sub_1921CC7F0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v9 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  (*(*a1 + 88))(*a1, 0);
  (*(v5 + 8))(v3, v6);
  (*(*(v7 - 8) + 8))(&v4[v2], v7);
  (*(*(v8 - 8) + 8))(v4, v8);
  free(v3);
  free(v4);
  free(v9);

  free(v1);
}

uint64_t sub_1921CC8FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a1;
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v21 = a3;
  v20 = sub_192227E20();
  sub_19209C5BC();
  sub_1922282A0();
  v14 = v22;
  v13 = v23;
  sub_1921CE688(v12, v8, a4);
  sub_1921CE6E8(v18, v19, v12, v8, v13, v14, a4);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1921CCB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_192227ED0();
  v9 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v9, AssociatedTypeWitness);
  v7(v16, 0);
  v11 = sub_192227ED0();
  v13 = v12;
  v14 = swift_getAssociatedTypeWitness();
  (*(*(v14 - 8) + 16))(a2, v13, v14);
  return v11(v16, 0);
}

void (*Cartesian2ProductCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3, void *a4))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x98uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a4;
  v8[1] = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[2] = TupleTypeMetadata2;
  v41 = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  v13 = v7;
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v14 = malloc(v12);
  }

  v40 = v14;
  v9[5] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[6] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v39 = v16;
  v9[7] = v16;
  v44 = a4;
  if (v7)
  {
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v17 = malloc(*(v16 + 64));
  }

  v38 = v17;
  v9[8] = v17;
  v18 = swift_getAssociatedTypeWitness();
  v9[9] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v9[10] = v19;
  if (v7)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v37 = v21;
  v9[11] = v21;
  v22 = AssociatedTypeWitness;
  v23 = swift_getTupleTypeMetadata2();
  v9[12] = v23;
  v24 = *(v23 - 8);
  v25 = v24;
  v9[13] = v24;
  v26 = *(v24 + 64);
  if (v13)
  {
    v27 = swift_coroFrameAlloc();
    v9[14] = v27;
    v28 = swift_coroFrameAlloc();
    v9[15] = v28;
    v29 = swift_coroFrameAlloc();
  }

  else
  {
    v27 = malloc(*(v24 + 64));
    v9[14] = v27;
    v28 = malloc(v26);
    v9[15] = v28;
    v29 = malloc(v26);
  }

  v30 = v29;
  v9[16] = v29;
  v36 = *(v20 + 16);
  v36();
  v31 = *(v39 + 16);
  v31(v30 + *(v23 + 48), a3, v22);
  v43 = v18;
  v32 = *(v25 + 16);
  v32(v28, v30, v23);
  *(v9 + 34) = *(v23 + 48);
  v32(v27, v30, v23);
  v33 = *(v23 + 48);
  *(v9 + 35) = v33;
  (v36)(v37, v28, v43);
  v31(v38, v27 + v33, v22);
  v34 = *(v41 + 48);
  *(v9 + 36) = v34;
  sub_1921CCB1C(v40, v40 + v34, v28, v27 + v33, v44);
  return sub_1921CD110;
}

void sub_1921CD110(uint64_t a1, char a2)
{
  v2 = *a1;
  v29 = *(*a1 + 140);
  v30 = *(*a1 + 136);
  if (a2)
  {
    v41 = v2[16];
    v3 = v2[13];
    v33 = v2[14];
    v35 = v2[15];
    v4 = v2[11];
    v31 = v2[12];
    v5 = v2[10];
    v7 = v2[7];
    v6 = v2[8];
    v8 = v2[5];
    v26 = v2[6];
    v10 = v2[3];
    v9 = v2[4];
    v11 = v2[2];
    v27 = v2[9];
    v38 = *v2;
    (v10[2])(v9, v8, v11);
    v37 = v9;
    sub_1921CFA48(v9, v9 + *(v11 + 12), v4, v6, v38);
    v12 = v7[1];
    v39 = v6;
    v12(v6, v26);
    v13 = v5[1];
    v40 = v4;
    v13(v4, v27);
    (v3[1])(v41, v31);
    v14 = v33;
    v32 = v8;
    (v10[1])(v8, v11);
    v12(&v33[v29], v26);
    v13(v33, v27);
    v12(&v35[v30], v26);
    v15 = v35;
    v13(v35, v27);
  }

  else
  {
    v16 = v2[16];
    v17 = v2[13];
    v34 = v2[14];
    v36 = v2[15];
    v18 = v2[11];
    v28 = v2[12];
    v20 = v2[9];
    v19 = v2[10];
    v22 = v2[7];
    v21 = v2[8];
    v23 = v2[6];
    v32 = v2[5];
    v37 = v2[4];
    sub_1921CFA48(v32, v32 + *(v2 + 36), v18, v21, *v2);
    v24 = v22[1];
    v39 = v21;
    v24(v21, v23);
    v25 = v19[1];
    v40 = v18;
    v25(v18, v20);
    v41 = v16;
    (v17[1])(v16, v28);
    v14 = v34;
    v24(&v34[v29], v23);
    v25(v34, v20);
    v24(&v36[v30], v23);
    v15 = v36;
    v25(v36, v20);
  }

  free(v41);
  free(v15);
  free(v14);
  free(v40);
  free(v39);
  free(v32);
  free(v37);

  free(v2);
}

uint64_t Cartesian2ProductCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v66 = a3;
  v63 = a1;
  v64 = a2;
  v70 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = *(TupleTypeMetadata2 - 8);
  v5 = v56;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getTupleTypeMetadata2();
  v62 = *(v18 - 8);
  v19 = v62;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54 - v23;
  v55 = &v54 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = *(v16 - 8);
  v59 = v16;
  v60 = v27;
  v28 = *(v27 + 32);
  v30 = &v54 - v29;
  v61 = &v54 - v29;
  v28(v26);
  v67 = v18;
  v31 = *(v18 + 48);
  v58 = v17;
  v63 = *(v17 - 8);
  (*(v63 + 32))(&v30[v31], v64, v17);
  (*(v19 + 16))(v24, v30, v18);
  v64 = *(v18 + 48);
  v32 = &v15[*(TupleTypeMetadata2 + 48)];
  v57 = v15;
  sub_1921CC8FC(v15, v32, v66, v70);
  v33 = *(v5 + 16);
  v34 = v68;
  v33(v68, v15, TupleTypeMetadata2);
  v35 = *(TupleTypeMetadata2 + 48);
  v66 = v35;
  v36 = *(AssociatedTypeWitness - 8);
  v37 = v69;
  (*(v36 + 16))(v69, v34);
  v38 = *(v73 - 8);
  (*(v38 + 16))(&v37[*(TupleTypeMetadata2 + 48)], &v34[v35]);
  v39 = v72;
  v33(v72, v37, TupleTypeMetadata2);
  v54 = *(TupleTypeMetadata2 + 48);
  v40 = v65;
  v33(v65, v37, TupleTypeMetadata2);
  v41 = *(TupleTypeMetadata2 + 48);
  v42 = *(v67 + 48);
  v43 = v70;
  sub_1921CCB1C(v21, &v21[v42], v39, &v40[v41], v70);
  v44 = v55;
  (*(v60 + 40))(v21, v55, v59);
  (*(v63 + 40))(&v21[v42], &v44[v64], v58);
  v45 = v72;
  sub_1921CFA48(v21, &v21[v42], v72, &v40[v41], v43);
  v46 = *(v56 + 8);
  v46(v69, TupleTypeMetadata2);
  v46(v57, TupleTypeMetadata2);
  (*(v62 + 8))(v61, v67);
  v47 = *(v38 + 8);
  v48 = v73;
  v47(&v40[v41], v73);
  v49 = *(v36 + 8);
  v50 = v40;
  v51 = AssociatedTypeWitness;
  v49(v50, AssociatedTypeWitness);
  v47((v45 + v54), v48);
  v49(v45, v51);
  v52 = v68;
  v47(&v68[v66], v48);
  return (v49)(v52, v51);
}

uint64_t Cartesian2ProductCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v32 = a2;
  v29 = a4;
  v31 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = a5;
  v8 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  v28 = AssociatedTypeWitness;
  v20 = *(AssociatedTypeWitness - 8);
  (*(v20 + 16))(&v28 - v18, a3, AssociatedTypeWitness, v17);
  v21 = *(v8 - 8);
  (*(v21 + 16))(&v19[*(TupleTypeMetadata2 + 48)], v29, v8);
  v22 = *(v10 + 16);
  v22(v15, v19, TupleTypeMetadata2);
  v29 = *(TupleTypeMetadata2 + 48);
  v22(v12, v19, TupleTypeMetadata2);
  v23 = *(TupleTypeMetadata2 + 48);
  sub_1921CCB1C(v31, v32, v15, &v12[v23], v30);
  (*(v10 + 8))(v19, TupleTypeMetadata2);
  v24 = *(v21 + 8);
  v24(&v12[v23], v8);
  v25 = *(v20 + 8);
  v26 = v28;
  v25(v12, v28);
  v24(&v15[v29], v8);
  return (v25)(v15, v26);
}

uint64_t Cartesian2ProductCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v76 = a4;
  v74 = a3;
  v79 = a2;
  v72 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = a5;
  v7 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  v9 = v65;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v75 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getTupleTypeMetadata2();
  v82 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v71 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v78 = &v62 - v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = *(v20 - 8);
  v69 = v20;
  v70 = v28;
  v30 = &v62 - v29;
  (*(v28 + 32))(v27);
  v31 = *(v22 + 48);
  v32 = v22;
  v33 = v21;
  v68 = v21;
  v72 = *(v21 - 8);
  v34 = *(v72 + 32);
  v35 = v30;
  v66 = v30;
  v34(&v30[v31], v79, v33);
  v79 = *(AssociatedTypeWitness - 8);
  v80 = AssociatedTypeWitness;
  v36 = *(v79 + 32);
  v67 = v19;
  v36(v19, v74, AssociatedTypeWitness);
  v37 = *(TupleTypeMetadata2 + 48);
  v38 = v7;
  v39 = *(v7 - 8);
  v40 = *(v39 + 32);
  v64 = v7;
  v40(&v19[v37], v76, v7);
  v41 = *(v9 + 16);
  v42 = v81;
  v43 = TupleTypeMetadata2;
  v41(v81, v19, TupleTypeMetadata2);
  v44 = *(TupleTypeMetadata2 + 48);
  v76 = v44;
  v45 = v32;
  (*(v82 + 16))(v78, v35, v32);
  v63 = *(v32 + 48);
  v62 = v32;
  v46 = v83;
  (*(v79 + 16))(v83, v42, v80);
  (*(v39 + 16))(&v46[*(v43 + 48)], &v42[v44], v38);
  v47 = v73;
  v41(v73, v46, v43);
  v74 = *(v43 + 48);
  v48 = v75;
  v41(v75, v46, v43);
  v49 = *(v43 + 48);
  v50 = *(v45 + 48);
  v51 = v71;
  v52 = v77;
  sub_1921CCB1C(v71, v71 + v50, v47, &v48[v49], v77);
  v53 = v78;
  (*(v70 + 40))(v51, v78, v69);
  (*(v72 + 40))(v51 + v50, &v53[v63], v68);
  sub_1921CFA48(v51, v51 + v50, v47, &v48[v49], v52);
  v54 = *(v65 + 8);
  v54(v83, v43);
  v54(v67, v43);
  (*(v82 + 8))(v66, v62);
  v55 = *(v39 + 8);
  v56 = &v48[v49];
  v57 = v64;
  v55(v56, v64);
  v58 = v80;
  v59 = *(v79 + 8);
  v59(v48, v80);
  v55((v47 + v74), v57);
  v59(v47, v58);
  v60 = v81;
  v55(&v81[v76], v57);
  return (v59)(v60, v58);
}

Swift::Int __swiftcall Cartesian2ProductCollection.index(_:offsetBy:)(Swift::Int _, Swift::tuple_Int_Int offsetBy)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v30 = _;
  v29 = sub_192227E20();
  sub_19209C5BC();
  sub_1922282A0();
  v18 = v31;
  v17 = v32;
  sub_1921CE688(v13, v7, v3);
  sub_1921CE6E8(v16, v10, v13, v7, v17, v18, v3);
  v19 = *(v28 + 8);
  v28 += 8;
  v19(v7, AssociatedTypeWitness);
  v20 = *(v26 + 8);
  v21 = v13;
  v22 = v27;
  v20(v21, v27);
  v23 = sub_1921CE8D4(v16, v10, v3);
  v19(v10, AssociatedTypeWitness);
  v20(v16, v22);
  return v23;
}

uint64_t sub_1921CE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v21 = a2;
  v22 = a6;
  v19 = a1;
  v20 = a5;
  v16 = a3;
  v17 = *(a7[4] + 8);
  v18 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v15 - v12;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v15 - v12, v16, AssociatedTypeWitness, v11);
  (*(*(v8 - 8) + 16))(&v13[*(TupleTypeMetadata2 + 48)], v18, v8);
  sub_192227E40();
  sub_192227E40();
  return (*(v10 + 8))(v13, TupleTypeMetadata2);
}

uint64_t sub_1921CE8D4(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = a1;
  v43 = a2;
  v4 = *(a3[5] + 8);
  v44 = a3[3];
  v45 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v37 - v7;
  v46 = a3;
  v8 = swift_getAssociatedTypeWitness();
  v40 = *(v8 - 8);
  v9 = v40;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v38 = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  v13 = v41;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - v18;
  (*(v9 + 16))(&v37 - v18, v42, v8, v17);
  v20 = TupleTypeMetadata2;
  (*(v6 + 16))(&v19[*(TupleTypeMetadata2 + 48)], v43, AssociatedTypeWitness);
  v21 = v11;
  v22 = v11;
  v23 = v39;
  v24 = v46;
  sub_1921CE688(v22, v39, v46);
  v25 = *(v13 + 16);
  v37 = v20;
  v25(v15, v19, v20);
  v26 = *(v20 + 48);
  v27 = v21;
  v28 = sub_1921CED34(v21, v23, v15, &v15[v26], v24);
  v42 = v29;
  v43 = v28;
  v30 = *(v6 + 8);
  v30(v23, AssociatedTypeWitness);
  v31 = *(v40 + 8);
  v32 = v27;
  v33 = v38;
  v31(v32, v38);
  v30(&v15[v26], AssociatedTypeWitness);
  v31(v15, v33);
  v34 = sub_192227E20();
  result = (*(v41 + 8))(v19, v37);
  v36 = v43 * v34;
  if ((v43 * v34) >> 64 != (v43 * v34) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v36 + v42;
  if (__OFADD__(v36, v42))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Cartesian2ProductCollection.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for Cartesian2ProductCollection(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t sub_1921CED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = a3;
  v24 = a2;
  v30 = *(a5[4] + 8);
  v31 = a4;
  v29 = a5[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(a5[5] + 8);
  v8 = a5[3];
  v25 = a5;
  v26 = v8;
  v9 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  v17 = *(*(AssociatedTypeWitness - 8) + 16);
  v17(&v22 - v15, a1, AssociatedTypeWitness, v14);
  v22 = *(TupleTypeMetadata2 + 48);
  v18 = *(*(v9 - 8) + 16);
  v18(&v16[v22], v24, v9);
  (v17)(v12, v27, AssociatedTypeWitness);
  v18(&v12[*(TupleTypeMetadata2 + 48)], v31, v9);
  v19 = sub_192227E50();
  sub_192227E50();
  v20 = *(v23 + 8);
  v20(v12, TupleTypeMetadata2);
  v20(v16, TupleTypeMetadata2);
  return v19;
}

uint64_t sub_1921CEFC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_1921CF048@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Cartesian2ProductCollection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_1921CF070(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_1921CF2CC(v8, *a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(AssociatedTypeWitness - 8) + 16))(v14);
  (*(*(v10 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v10);
  return sub_1921CF254;
}

void sub_1921CF254(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_1921CF2CC(uint64_t *a1, uint64_t a2, void *a3))()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  Cartesian2ProductCollection.subscript.getter(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1921CF41C;
}

void sub_1921CF41C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void *sub_1921CF46C()
{
  swift_getWitnessTable();

  return sub_192227DE0();
}

uint64_t sub_1921CF564(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_1921CF5EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1921CF664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_1922285B0();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1921CF6F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1921CF744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1921CF978(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_1921CF7D4(uint64_t a1)
{
  v2 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1921CF830()
{
  result = qword_1EADEE008;
  if (!qword_1EADEE008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1638, &unk_192240A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE008);
  }

  return result;
}

uint64_t sub_1921CF894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1922278D0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1921CF97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1922278D0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_192227F00();
  result = sub_1922278D0();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1921CFA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = a3;
  v31 = a4;
  v27 = a5[4];
  v25 = a5[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = a5;
  v30 = a5[5];
  v28 = a5[3];
  v9 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = *(TupleTypeMetadata2 - 8);
  v11 = v23;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  v24 = AssociatedTypeWitness;
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 32))(&v23 - v16, a1, AssociatedTypeWitness, v15);
  v19 = *(v9 - 8);
  (*(v19 + 32))(&v17[*(TupleTypeMetadata2 + 48)], a2, v9);
  v20 = *(v11 + 16);
  v20(v13, v17, TupleTypeMetadata2);
  v21 = *(TupleTypeMetadata2 + 48);
  sub_192227EE0();
  (*(v19 + 8))(&v13[v21], v9);
  v20(v13, v17, TupleTypeMetadata2);
  sub_192227EE0();
  (*(v23 + 8))(v17, TupleTypeMetadata2);
  return (*(v18 + 8))(v13, v24);
}