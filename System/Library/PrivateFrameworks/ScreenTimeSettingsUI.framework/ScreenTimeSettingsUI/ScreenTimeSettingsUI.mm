uint64_t sub_264BA4EFC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_264CC3B2C();
  }

  else
  {
    sub_264CC3ACC();
  }

  return sub_264CC3B5C();
}

uint64_t sub_264BA4F64(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_264CC3B2C();
    sub_264CC3B5C();
    sub_264C637A4();
  }

  else
  {
    sub_264CC3ACC();
    sub_264CC3B5C();
    sub_264C637F0(&qword_27FFA9048, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_264BA5058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9050, &qword_264CD1C58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264BA50C8(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264CC3E4C();

    return sub_264CC3B5C();
  }

  else
  {
    sub_264CC3B9C();
    swift_getWitnessTable();
    sub_264CC3DAC();
    sub_264CC3B5C();
    sub_264CC487C();
    swift_getWitnessTable();
    sub_264CC3B9C();
    swift_getWitnessTable();
    sub_264CC3DAC();
    return sub_264CC3B5C();
  }
}

uint64_t sub_264BA522C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264CC3E4C();
    sub_264CC3B5C();
  }

  else
  {
    sub_264CC3B9C();
    swift_getWitnessTable();
    sub_264CC3DAC();
    sub_264CC3B5C();
    sub_264CC487C();
    swift_getWitnessTable();
    sub_264CC3B9C();
    swift_getWitnessTable();
    sub_264CC3DAC();
    sub_264CC3B5C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_264BA544C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100, &unk_264CD1DA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264BA54C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100, &unk_264CD1DA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264BA561C()
{

  return swift_deallocObject();
}

uint64_t sub_264BA5660()
{

  return swift_deallocObject();
}

uint64_t sub_264BA56B0(void *a1)
{
  v1 = sub_264CC3D9C();
  sub_264C713C4(v1, v2, v3);
  swift_getWitnessTable();
  sub_264CC432C();
  sub_264CC3ACC();
  sub_264CC3B5C();
  swift_getWitnessTable();
  sub_264C71528();
  return swift_getWitnessTable();
}

uint64_t sub_264BA578C()
{

  return swift_deallocObject();
}

uint64_t sub_264BA57D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9570, &qword_264CD2B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264BA5838()
{
  sub_264C777A8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_264BA587C()
{
  swift_unknownObjectRelease();
  sub_264C777A8(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_264BA58C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9050, &qword_264CD1C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264BA5948()
{

  return swift_deallocObject();
}

uint64_t sub_264BA5984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC3C3C();
  *a1 = result;
  return result;
}

uint64_t sub_264BA59DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC3BDC();
  *a1 = result;
  return result;
}

uint64_t sub_264BA5A9C()
{
  v1 = sub_264CC34AC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_264BA5B3C(uint64_t a1)
{
  sub_264CC43FC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9728, &qword_264CD2E20);
  sub_264CC3B5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9730, &qword_264CD2E28);
  sub_264CC3B5C();
  swift_getWitnessTable();
  sub_264C64918(&qword_27FFA9738, &qword_27FFA9728, &qword_264CD2E20, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_264C64918(qword_27FFA9740, &qword_27FFA9730, &qword_264CD2E28, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_264BA5CBC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA97C8, &qword_264CD2EA8);
  sub_264CC3B5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA97D0, &unk_264CD2EB0);
  sub_264CC3B5C();
  v1 = MEMORY[0x277CE04A0];
  sub_264C64918(&qword_27FFA97D8, &qword_27FFA97C8, &qword_264CD2EA8, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_264C64918(&qword_27FFA97E0, &qword_27FFA97D0, &unk_264CD2EB0, v1);
  return swift_getWitnessTable();
}

uint64_t sub_264BA5DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850, qword_264CD3040);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264BA5E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850, qword_264CD3040);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264BA5F1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264CC3C5C();
  *a1 = result & 1;
  return result;
}

void sub_264BA5F98(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_264CC459C();
  [v2 setBundleIdentifier_];
}

uint64_t sub_264BA6008()
{

  return swift_deallocObject();
}

uint64_t sub_264BA60B4()
{

  return swift_deallocObject();
}

uint64_t sub_264BA611C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC3C9C();
  *a1 = result;
  return result;
}

uint64_t sub_264BA6174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99B0, &qword_264CD34D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264BA61E4()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6314()
{

  return swift_deallocObject();
}

uint64_t sub_264BA634C()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264C80F08();
  *a1 = result;
  return result;
}

uint64_t sub_264BA63C0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA63F8()
{

  return swift_deallocObject();
}

uint64_t sub_264BA644C()
{
  v1 = sub_264CC34AC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA64FC()
{
  v1 = sub_264CC34AC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA65AC()
{

  return swift_deallocObject();
}

uint64_t sub_264BA65E4()
{
  v1 = sub_264CC34AC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_264BA6684()
{
  v1 = sub_264CC34AC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA6734()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BE8, &qword_264CD39F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_264CD21F0;
  v1 = objc_opt_self();
  v2 = [v1 bundle];
  v3 = sub_264CC2EFC();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 48) = 1;
  v6 = [v1 bundle];
  v7 = sub_264CC2EFC();
  v9 = v8;

  *(v0 + 56) = v7;
  *(v0 + 64) = v9;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t sub_264BA68D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_264BA6910()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6950()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6988(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264BA69EC()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6A24()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA6AA8()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6AE8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA6BF0()
{

  return swift_deallocObject();
}

uint64_t sub_264BA6C28()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA6C68()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA6CAC()
{

  return swift_deallocObject();
}

__n128 sub_264BA6D4C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_264BA6D70@<X0>(uint64_t a1@<X8>)
{
  result = sub_264CC3C7C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_264BA6DE0(ValueMetadata **a1)
{
  v9 = a1[3];
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9FF8, &qword_264CD48A8);
  sub_264CC3B5C();
  sub_264CC3D6C();
  sub_264CC3B5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA000, &unk_264CD48B0);
  sub_264CC3B5C();
  sub_264C64918(&qword_27FFAA008, &qword_27FFA9FF8, &qword_264CD48A8, MEMORY[0x277CE1198]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_264C64918(&qword_27FFAA010, &qword_27FFAA000, &unk_264CD48B0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_264CC423C();
  WitnessTable = swift_getWitnessTable();
  sub_264CA54FC(WitnessTable, v2, v3);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9688, &qword_264CD35B0);
  sub_264CC3B5C();
  type metadata accessor for ContentRestrictionValue(255, v10, v9, v4);
  sub_264CC487C();
  sub_264CC46FC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA020, &qword_264CD48C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_264CA5550();
  sub_264CC3A3C();
  swift_getWitnessTable();
  sub_264CC43BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_264CC3ABC();
  swift_getWitnessTable();
  sub_264CC42FC();
  sub_264CC3B5C();
  swift_getTupleTypeMetadata3();
  sub_264CC449C();
  swift_getWitnessTable();
  sub_264CC42CC();
  swift_getTupleTypeMetadata3();
  sub_264CC449C();
  swift_getWitnessTable();
  sub_264CC42CC();
  v5 = sub_264CC3D9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  type metadata accessor for ContentRestrictionRow(255, v5, v6, v7);
  return swift_getWitnessTable();
}

uint64_t sub_264BA735C()
{

  return swift_deallocObject();
}

uint64_t sub_264BA7394(uint64_t a1, uint64_t a2)
{
  v4 = sub_264CC34AC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264BA7400(uint64_t a1, uint64_t a2)
{
  v4 = sub_264CC34AC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264BA7470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264CC387C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264BA7530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264CC387C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_264BA7620@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_264BA76F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA7730()
{

  return swift_deallocObject();
}

uint64_t sub_264BA7768()
{
  MEMORY[0x26674C850](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_264BA77AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA77F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_264BA782C()
{
  MEMORY[0x26674C850](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_264BA7864()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7960()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7AA0()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7B88()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7C64()
{

  return swift_deallocObject();
}

uint64_t sub_264BA7CAC()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7E20()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA7F58()
{

  return swift_deallocObject();
}

uint64_t sub_264BA7F90()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA80B8()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA81B4()
{
  v1 = sub_264CC387C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_264BA82B0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAA290, &qword_264CD5088) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_264CC2F6C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_264BA83D4()
{
  MEMORY[0x26674C850](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_264BA840C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_264BA8450()
{

  return swift_deallocObject();
}

uint64_t sub_264BA8488()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_264BA84C8()
{
  v1 = sub_264CC34AC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_264BA8580()
{

  return swift_deallocObject();
}

uint64_t sub_264BA85C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_264BA8618()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA3C8, &qword_264CD52B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA3D0, &qword_264CD52B8);
  sub_264C64918(&qword_27FFAA3D8, &qword_27FFAA3C8, &qword_264CD52B0, MEMORY[0x277CE04B0]);
  sub_264C64918(&qword_27FFAA3E0, &qword_27FFAA3D0, &qword_264CD52B8, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_264BA871C()
{
  MEMORY[0x26674C850](v0 + 16);

  return swift_deallocObject();
}

void sub_264BABDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BB3BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_264BB8154(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x264BB8124);
}

void sub_264BBA0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BBB044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BC2D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BC4F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264BCAAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_264BD7034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id STSupportedConfigurations(uint64_t a1)
{
  if (STSupportedConfigurations_onceToken != -1)
  {
    STSupportedConfigurations_cold_1();
  }

  v2 = STSupportedConfigurations_knownConfigurationNames;

  return v2;
}

void sub_264BE8560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __STSupportedConfigurations_block_invoke()
{
  v3[22] = *MEMORY[0x277D85DE8];
  v2[0] = @"STCustomRestrictionConfiguration";
  v3[0] = objc_opt_class();
  v2[1] = @"STMCFeatureConfiguration";
  v3[1] = objc_opt_class();
  v2[2] = @"STSBCapabilityConfiguration";
  v3[2] = objc_opt_class();
  v2[3] = @"account.settings";
  v3[3] = objc_opt_class();
  v2[4] = @"application.settings";
  v3[4] = objc_opt_class();
  v2[5] = @"application.store";
  v3[5] = objc_opt_class();
  v2[6] = @"legacy.restrictions.apps";
  v3[6] = objc_opt_class();
  v2[7] = @"media.settings";
  v3[7] = objc_opt_class();
  v2[8] = @"network.cellular.settings";
  v3[8] = objc_opt_class();
  v2[9] = @"passcode.settings";
  v3[9] = objc_opt_class();
  v2[10] = @"system.airdrop";
  v3[10] = objc_opt_class();
  v2[11] = @"system.camera";
  v3[11] = objc_opt_class();
  v2[12] = @"system.carplay";
  v3[12] = objc_opt_class();
  v2[13] = @"system.donotdisturb";
  v3[13] = objc_opt_class();
  v2[14] = @"system.gamecenter";
  v3[14] = objc_opt_class();
  v2[15] = @"system.icloud";
  v3[15] = objc_opt_class();
  v2[16] = @"system.music";
  v3[16] = objc_opt_class();
  v2[17] = @"system.ratings";
  v3[17] = objc_opt_class();
  v2[18] = @"system.siri";
  v3[18] = objc_opt_class();
  v2[19] = @"system.tvprovider";
  v3[19] = objc_opt_class();
  v2[20] = @"system.webcontentfilter.basic";
  v3[20] = objc_opt_class();
  v2[21] = @"system.web.tracking";
  v3[21] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:22];
  v1 = STSupportedConfigurations_knownConfigurationNames;
  STSupportedConfigurations_knownConfigurationNames = v0;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 8u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_264BEEDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BF2F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264BF99E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C00650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C01458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C03928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C081A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v27 + 40));
  _Unwind_Resume(a1);
}

void sub_264C08D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C0BCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C160D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_264C1AD2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_264C1B050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C2357C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C23D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __STRestrictionTypeWithString_block_invoke()
{
  v19[76] = *MEMORY[0x277D85DE8];
  v18[0] = @"application.store.allowAppInstallation";
  v18[1] = @"application.store.allowUIAppInstallation";
  v19[0] = &unk_28769D3A0;
  v19[1] = &unk_28769D3A0;
  v18[2] = @"application.store.allowMarketplaceAppInstallation";
  v18[3] = @"application.store.allowWebDistributionAppInstallation";
  v19[2] = &unk_28769D3A0;
  v19[3] = &unk_28769D3A0;
  v18[4] = @"application.store.allowAppRemoval";
  v18[5] = @"application.store.allowInAppPurchases";
  v19[4] = &unk_28769D3A0;
  v19[5] = &unk_28769D3A0;
  v18[6] = @"application.store.forceITunesStorePasswordEntry";
  v18[7] = @"legacy.restrictions.apps.blacklistedAppBundleIDs";
  v19[6] = &unk_28769D3B8;
  v19[7] = &unk_28769D3D0;
  v18[8] = @"legacy.restrictions.apps.allowiTunes";
  v18[9] = @"legacy.restrictions.apps.allowNews";
  v19[8] = &unk_28769D3A0;
  v19[9] = &unk_28769D3A0;
  v18[10] = @"legacy.restrictions.apps.allowSafari";
  v18[11] = @"legacy.restrictions.apps.allowPodcasts";
  v19[10] = &unk_28769D3A0;
  v19[11] = &unk_28769D3A0;
  v18[12] = @"legacy.restrictions.apps.allowVideoConferencing";
  v18[13] = @"legacy.restrictions.apps.allowGroupActivity";
  v19[12] = &unk_28769D3A0;
  v19[13] = &unk_28769D3A0;
  v18[14] = @"media.settings.allowBookstore";
  v18[15] = @"system.camera.allowCamera";
  v19[14] = &unk_28769D3A0;
  v19[15] = &unk_28769D3A0;
  v18[16] = @"system.airdrop.allowAirDrop";
  v18[17] = @"system.carplay.allowVehicleUI";
  v19[16] = &unk_28769D3A0;
  v19[17] = &unk_28769D3A0;
  v18[18] = @"system.ratings.ratingRegion";
  v18[19] = @"system.ratings.allowExplicitContent";
  v19[18] = &unk_28769D3E8;
  v19[19] = &unk_28769D3A0;
  v18[20] = @"system.music.allowMusicVideos";
  v18[21] = @"system.music.allowMusicArtistActivity";
  v19[20] = &unk_28769D3A0;
  v19[21] = &unk_28769D3A0;
  v18[22] = @"system.ratings.ratingMovies";
  v18[23] = @"system.ratings.allowShowingUndownloadedMovies";
  v19[22] = &unk_28769D3E8;
  v19[23] = &unk_28769D3A0;
  v18[24] = @"system.ratings.ratingTVShows";
  v18[25] = @"system.ratings.allowShowingUndownloadedTV";
  v19[24] = &unk_28769D3E8;
  v19[25] = &unk_28769D3A0;
  v18[26] = @"media.settings.allowBookstoreErotica";
  v18[27] = @"system.ratings.ratingApps";
  v19[26] = &unk_28769D3A0;
  v19[27] = &unk_28769D3E8;
  v18[28] = @"application.store.allowAppClips";
  v19[28] = &unk_28769D3A0;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x2876726E8];
  v18[29] = v17;
  v18[30] = @"system.webcontentfilter.basic.useContentFilter";
  v19[29] = &unk_28769D3E8;
  v19[30] = &unk_28769D3B8;
  v18[31] = @"system.webcontentfilter.basic.whiteListEnabled";
  v18[32] = @"system.webcontentfilter.basic.siteWhiteList";
  v19[31] = &unk_28769D3B8;
  v19[32] = &unk_28769D3D0;
  v18[33] = @"system.webcontentfilter.basic.filterWhiteList";
  v18[34] = @"system.webcontentfilter.basic.filterBlackList";
  v19[33] = &unk_28769D3D0;
  v19[34] = &unk_28769D3D0;
  v18[35] = @"system.gamecenter.allowMultiplayerGaming";
  v18[36] = @"system.gamecenter.MultiplayerGamesSpecifierName";
  v19[35] = &unk_28769D3A0;
  v19[36] = &unk_28769D3E8;
  v18[37] = @"system.gamecenter.allowAddingGameCenterFriends";
  v18[38] = @"system.gamecenter.allowGameCenterFriendsSharingModification";
  v19[37] = &unk_28769D3A0;
  v19[38] = &unk_28769D3A0;
  v18[39] = @"system.camera.allowScreenRecording";
  v19[39] = &unk_28769D3A0;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"system.gamecenter", 0x287672688];
  v18[40] = v16;
  v18[41] = @"system.gamecenter.allowGameCenterPrivateMessaging";
  v19[40] = &unk_28769D3A0;
  v19[41] = &unk_28769D3A0;
  v18[42] = @"system.gamecenter.allowGameCenterProfilePrivacyModification";
  v18[43] = @"system.gamecenter.allowGameCenterProfileModification";
  v19[42] = &unk_28769D3A0;
  v19[43] = &unk_28769D3A0;
  v18[44] = @"system.siri.allowAssistant";
  v18[45] = @"system.siri.allowDictation";
  v19[44] = &unk_28769D3A0;
  v19[45] = &unk_28769D3A0;
  v18[46] = @"system.siri.allowAssistantUserGeneratedContent";
  v18[47] = @"system.siri.forceAssistantProfanityFilter";
  v19[46] = &unk_28769D3A0;
  v19[47] = &unk_28769D3B8;
  v18[48] = @"system.siri.allowMathPaperSolving";
  v18[49] = @"system.siri.allowKeyboardMathSolving";
  v19[48] = &unk_28769D3A0;
  v19[49] = &unk_28769D3A0;
  v18[50] = @"system.siri.allowWritingTools";
  v18[51] = @"system.siri.allowExternalIntelligenceIntegrations";
  v19[50] = &unk_28769D3A0;
  v19[51] = &unk_28769D3A0;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x287672708];
  v18[52] = v15;
  v19[52] = &unk_28769D3A0;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x287672728];
  v18[53] = v14;
  v18[54] = @"system.icloud.allowFindMyFriendsModification";
  v19[53] = &unk_28769D3A0;
  v19[54] = &unk_28769D3A0;
  v18[55] = @"passcode.settings.allowPasscodeModification";
  v18[56] = @"account.settings.allowAccountModification";
  v19[55] = &unk_28769D3A0;
  v19[56] = &unk_28769D3A0;
  v18[57] = @"system.music.allowSpeakerVolumeLimitModification";
  v19[57] = &unk_28769D3A0;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x2876726C8];
  v18[58] = v13;
  v18[59] = @"network.cellular.settings.allowAppCellularDataModification";
  v19[58] = &unk_28769D3A0;
  v19[59] = &unk_28769D3A0;
  v18[60] = @"network.cellular.settings.allowCellularPlanModification";
  v18[61] = @"system.donotdisturb.allowDriverDoNotDisturbModifications";
  v19[60] = &unk_28769D3A0;
  v19[61] = &unk_28769D3A0;
  v18[62] = @"system.tvprovider.allowTVProviderModification";
  v18[63] = @"application.settings.allowAutomaticAppUpdatesModification";
  v19[62] = &unk_28769D3A0;
  v19[63] = &unk_28769D3A0;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672768];
  v18[64] = v12;
  v19[64] = &unk_28769D3A0;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727A8];
  v18[65] = v11;
  v19[65] = &unk_28769D3A0;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727E8];
  v18[66] = v10;
  v19[66] = &unk_28769D3A0;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672868];
  v18[67] = v9;
  v19[67] = &unk_28769D3A0;
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672848];
  v18[68] = v0;
  v19[68] = &unk_28769D3A0;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727C8];
  v18[69] = v1;
  v19[69] = &unk_28769D3A0;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672828];
  v18[70] = v2;
  v19[70] = &unk_28769D3A0;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672888];
  v18[71] = v3;
  v19[71] = &unk_28769D3A0;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672748];
  v18[72] = v4;
  v19[72] = &unk_28769D3A0;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672808];
  v18[73] = v5;
  v19[73] = &unk_28769D3A0;
  v18[74] = @"system.web.tracking.forceLimitAdTracking";
  v19[74] = &unk_28769D3B8;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672788];
  v18[75] = v6;
  v19[75] = &unk_28769D3A0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:76];
  v8 = STRestrictionTypeWithString_restrictionItemTypes;
  STRestrictionTypeWithString_restrictionItemTypes = v7;
}

uint64_t __createDevices_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = [a2 coreDuetIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

void __STRestrictionTypeWithString_block_invoke_0()
{
  v19[76] = *MEMORY[0x277D85DE8];
  v18[0] = @"application.store.allowAppInstallation";
  v18[1] = @"application.store.allowUIAppInstallation";
  v19[0] = &unk_28769D430;
  v19[1] = &unk_28769D430;
  v18[2] = @"application.store.allowMarketplaceAppInstallation";
  v18[3] = @"application.store.allowWebDistributionAppInstallation";
  v19[2] = &unk_28769D430;
  v19[3] = &unk_28769D430;
  v18[4] = @"application.store.allowAppRemoval";
  v18[5] = @"application.store.allowInAppPurchases";
  v19[4] = &unk_28769D430;
  v19[5] = &unk_28769D430;
  v18[6] = @"application.store.forceITunesStorePasswordEntry";
  v18[7] = @"legacy.restrictions.apps.blacklistedAppBundleIDs";
  v19[6] = &unk_28769D448;
  v19[7] = &unk_28769D460;
  v18[8] = @"legacy.restrictions.apps.allowiTunes";
  v18[9] = @"legacy.restrictions.apps.allowNews";
  v19[8] = &unk_28769D430;
  v19[9] = &unk_28769D430;
  v18[10] = @"legacy.restrictions.apps.allowSafari";
  v18[11] = @"legacy.restrictions.apps.allowPodcasts";
  v19[10] = &unk_28769D430;
  v19[11] = &unk_28769D430;
  v18[12] = @"legacy.restrictions.apps.allowVideoConferencing";
  v18[13] = @"legacy.restrictions.apps.allowGroupActivity";
  v19[12] = &unk_28769D430;
  v19[13] = &unk_28769D430;
  v18[14] = @"media.settings.allowBookstore";
  v18[15] = @"system.camera.allowCamera";
  v19[14] = &unk_28769D430;
  v19[15] = &unk_28769D430;
  v18[16] = @"system.airdrop.allowAirDrop";
  v18[17] = @"system.carplay.allowVehicleUI";
  v19[16] = &unk_28769D430;
  v19[17] = &unk_28769D430;
  v18[18] = @"system.ratings.ratingRegion";
  v18[19] = @"system.ratings.allowExplicitContent";
  v19[18] = &unk_28769D478;
  v19[19] = &unk_28769D430;
  v18[20] = @"system.music.allowMusicVideos";
  v18[21] = @"system.music.allowMusicArtistActivity";
  v19[20] = &unk_28769D430;
  v19[21] = &unk_28769D430;
  v18[22] = @"system.ratings.ratingMovies";
  v18[23] = @"system.ratings.allowShowingUndownloadedMovies";
  v19[22] = &unk_28769D478;
  v19[23] = &unk_28769D430;
  v18[24] = @"system.ratings.ratingTVShows";
  v18[25] = @"system.ratings.allowShowingUndownloadedTV";
  v19[24] = &unk_28769D478;
  v19[25] = &unk_28769D430;
  v18[26] = @"media.settings.allowBookstoreErotica";
  v18[27] = @"system.ratings.ratingApps";
  v19[26] = &unk_28769D430;
  v19[27] = &unk_28769D478;
  v18[28] = @"application.store.allowAppClips";
  v19[28] = &unk_28769D430;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x2876726E8];
  v18[29] = v17;
  v18[30] = @"system.webcontentfilter.basic.useContentFilter";
  v19[29] = &unk_28769D478;
  v19[30] = &unk_28769D448;
  v18[31] = @"system.webcontentfilter.basic.whiteListEnabled";
  v18[32] = @"system.webcontentfilter.basic.siteWhiteList";
  v19[31] = &unk_28769D448;
  v19[32] = &unk_28769D460;
  v18[33] = @"system.webcontentfilter.basic.filterWhiteList";
  v18[34] = @"system.webcontentfilter.basic.filterBlackList";
  v19[33] = &unk_28769D460;
  v19[34] = &unk_28769D460;
  v18[35] = @"system.gamecenter.allowMultiplayerGaming";
  v18[36] = @"system.gamecenter.MultiplayerGamesSpecifierName";
  v19[35] = &unk_28769D430;
  v19[36] = &unk_28769D478;
  v18[37] = @"system.gamecenter.allowAddingGameCenterFriends";
  v18[38] = @"system.gamecenter.allowGameCenterFriendsSharingModification";
  v19[37] = &unk_28769D430;
  v19[38] = &unk_28769D430;
  v18[39] = @"system.camera.allowScreenRecording";
  v19[39] = &unk_28769D430;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"system.gamecenter", 0x287672688];
  v18[40] = v16;
  v18[41] = @"system.gamecenter.allowGameCenterPrivateMessaging";
  v19[40] = &unk_28769D430;
  v19[41] = &unk_28769D430;
  v18[42] = @"system.gamecenter.allowGameCenterProfilePrivacyModification";
  v18[43] = @"system.gamecenter.allowGameCenterProfileModification";
  v19[42] = &unk_28769D430;
  v19[43] = &unk_28769D430;
  v18[44] = @"system.siri.allowAssistant";
  v18[45] = @"system.siri.allowDictation";
  v19[44] = &unk_28769D430;
  v19[45] = &unk_28769D430;
  v18[46] = @"system.siri.allowAssistantUserGeneratedContent";
  v18[47] = @"system.siri.forceAssistantProfanityFilter";
  v19[46] = &unk_28769D430;
  v19[47] = &unk_28769D448;
  v18[48] = @"system.siri.allowMathPaperSolving";
  v18[49] = @"system.siri.allowKeyboardMathSolving";
  v19[48] = &unk_28769D430;
  v19[49] = &unk_28769D430;
  v18[50] = @"system.siri.allowWritingTools";
  v18[51] = @"system.siri.allowExternalIntelligenceIntegrations";
  v19[50] = &unk_28769D430;
  v19[51] = &unk_28769D430;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x287672708];
  v18[52] = v15;
  v19[52] = &unk_28769D430;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x287672728];
  v18[53] = v14;
  v18[54] = @"system.icloud.allowFindMyFriendsModification";
  v19[53] = &unk_28769D430;
  v19[54] = &unk_28769D430;
  v18[55] = @"passcode.settings.allowPasscodeModification";
  v18[56] = @"account.settings.allowAccountModification";
  v19[55] = &unk_28769D430;
  v19[56] = &unk_28769D430;
  v18[57] = @"system.music.allowSpeakerVolumeLimitModification";
  v19[57] = &unk_28769D430;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x2876725E8, 0x2876726C8];
  v18[58] = v13;
  v18[59] = @"network.cellular.settings.allowAppCellularDataModification";
  v19[58] = &unk_28769D430;
  v19[59] = &unk_28769D430;
  v18[60] = @"network.cellular.settings.allowCellularPlanModification";
  v18[61] = @"system.donotdisturb.allowDriverDoNotDisturbModifications";
  v19[60] = &unk_28769D430;
  v19[61] = &unk_28769D430;
  v18[62] = @"system.tvprovider.allowTVProviderModification";
  v18[63] = @"application.settings.allowAutomaticAppUpdatesModification";
  v19[62] = &unk_28769D430;
  v19[63] = &unk_28769D430;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672768];
  v18[64] = v12;
  v19[64] = &unk_28769D430;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727A8];
  v18[65] = v11;
  v19[65] = &unk_28769D430;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727E8];
  v18[66] = v10;
  v19[66] = &unk_28769D430;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672868];
  v18[67] = v9;
  v19[67] = &unk_28769D430;
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672848];
  v18[68] = v0;
  v19[68] = &unk_28769D430;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x2876727C8];
  v18[69] = v1;
  v19[69] = &unk_28769D430;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672828];
  v18[70] = v2;
  v19[70] = &unk_28769D430;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672888];
  v18[71] = v3;
  v19[71] = &unk_28769D430;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672748];
  v18[72] = v4;
  v19[72] = &unk_28769D430;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672808];
  v18[73] = v5;
  v19[73] = &unk_28769D430;
  v18[74] = @"system.web.tracking.forceLimitAdTracking";
  v19[74] = &unk_28769D448;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", 0x287672628, 0x287672788];
  v18[75] = v6;
  v19[75] = &unk_28769D430;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:76];
  v8 = STRestrictionTypeWithString_restrictionItemTypes_0;
  STRestrictionTypeWithString_restrictionItemTypes_0 = v7;
}

void sub_264C2B170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFACircleStateControllerClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FACircleStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFACircleStateControllerClass_block_invoke_cold_1();
  }

  getFACircleStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FamilyCircleUILibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __FamilyCircleUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279B7E200;
    v4 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FamilyCircleUILibraryCore_frameworkLibrary;
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    FamilyCircleUILibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFACircleContextClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FACircleContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFACircleContextClass_block_invoke_cold_1();
  }

  getFACircleContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFACircleEventTypeInitiateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FamilyCircleUILibrary();
  result = dlsym(v2, "FACircleEventTypeInitiate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFACircleEventTypeInitiateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFACircleClientNameScreenTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FamilyCircleUILibrary();
  result = dlsym(v2, "FACircleClientNameScreenTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFACircleClientNameScreenTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_264C2BB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C2F694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C3258C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C32D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 168), 8);
  _Block_object_dispose((v33 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C348BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C35B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C37038(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_264C37AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C37C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C37EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id STUIObjectDescriptionWithProperties(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v11 = v4;
  if (v4)
  {
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v11;
    v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = MEMORY[0x277CCACA8];
          v19 = [v3 valueForKeyPath:v17];
          v20 = [v18 stringWithFormat:@"%@='%@'", v17, v19];
          [v12 addObject:v20];
        }

        v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    v21 = [v12 componentsJoinedByString:{@", "}];
    v28 = expandedObjectDescription(v3, @"%@", v22, v23, v24, v25, v26, v27, v21);
  }

  else
  {
    v28 = expandedObjectDescription(v3, 0, v5, v6, v7, v8, v9, v10, v30);
  }

  return v28;
}

id expandedObjectDescription(void *a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (a2)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = a2;
    a2 = [[v11 alloc] initWithFormat:v12 arguments:&a9];
  }

  v13 = [(__CFString *)a2 length];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = v16;
  v18 = @"; ";
  v19 = &stru_28766E5A8;
  if (!v13)
  {
    v18 = &stru_28766E5A8;
  }

  if (a2)
  {
    v19 = a2;
  }

  v20 = [v14 stringWithFormat:@"<%@: %p%@%@>", v16, v10, v18, v19];

  return v20;
}

void sub_264C432A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264C44580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264C46B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C49A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v49 - 248), 8);
  _Block_object_dispose((v49 - 200), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264C54868(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Unwind_Resume(a1);
}

void sub_264C57ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __dailyUsageDeltaFromHistoricalAverageForWeekday_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v3 = [*(a1 + 32) objectForKeyedSubscript:v9];
  [v3 doubleValue];
  *(*(*(a1 + 48) + 8) + 24) = v4 + *(*(*(a1 + 48) + 8) + 24);

  v5 = *(*(*(a1 + 56) + 8) + 24);
  v6 = [*(a1 + 40) objectForKeyedSubscript:v9];
  v7 = [v6 unsignedIntegerValue];

  if (v5 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  *(*(*(a1 + 56) + 8) + 24) = v8;
}

void __weeklyUsageDeltaFromHistoricalAverage_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) dateByAddingUnit:16 value:a2 toDate:*(a1 + 40) options:0];
  v3 = [*(a1 + 32) components:8766 fromDate:v6];
  v4 = [*(a1 + 48) objectForKeyedSubscript:v3];
  [v4 doubleValue];
  *(*(*(a1 + 56) + 8) + 24) = v5 + *(*(*(a1 + 56) + 8) + 24);
}

void sub_264C58C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_264C61164(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
  sub_264CC308C();

  return *(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection);
}

uint64_t sub_264C61260(uint64_t result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
    sub_264CC307C();
  }

  return result;
}

uint64_t sub_264C6136C@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
  sub_264CC308C();

  *a3 = *(v4 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection);
  return result;
}

id STIntroCommunicationLimitsPickerViewModel.__allocating_init(selection:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_264CC309C();
  *&v3[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id STIntroCommunicationLimitsPickerViewModel.init(selection:)(uint64_t a1)
{
  sub_264CC309C();
  *&v1[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for STIntroCommunicationLimitsPickerViewModel(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL sub_264C61594(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
  sub_264CC308C();

  return *(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection) == 0;
}

void sub_264C61644(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
    sub_264CC307C();
  }
}

BOOL sub_264C61748(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
  sub_264CC308C();

  return *(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection) == 1;
}

void sub_264C617F8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection) != 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
    sub_264CC307C();
  }
}

id STIntroCommunicationLimitsPickerViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_264C61A20(void *a1)
{
  v2 = sub_264CC3E8C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for STIntroCommunicationLimitsPickerView(0);
  MEMORY[0x28223BE20](v3 - 8);
  type metadata accessor for STIntroCommunicationLimitsPickerViewModel(0);
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
  v4 = a1;
  sub_264CC442C();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9038, &unk_264CD1C48));
  v6 = sub_264CC3D5C();
  sub_264CC3E7C();
  sub_264CC3D4C();
  return v6;
}

id STIntroCommunicationLimitsPickerViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STIntroCommunicationLimitsPickerViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_264C61D68(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_264C61DA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for STIntroCommunicationLimitsPickerView(0);
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9140, &qword_264CD1EC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = v36 - v9;
  MEMORY[0x28223BE20](v10);
  v42 = v36 - v11;
  MEMORY[0x28223BE20](v12);
  v38 = v36 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100, &unk_264CD1DA0);
  sub_264CC440C();
  v14 = v46;
  swift_getKeyPath();
  v46 = v14;
  v39 = sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
  sub_264CC308C();

  v15 = *&v14[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection];

  v46 = 0x43206567616E614DLL;
  v47 = 0xEF73746361746E6FLL;
  v48 = 0xD000000000000078;
  v49 = 0x8000000264CE0630;
  v50 = v15 == 0;
  v37 = type metadata accessor for STIntroCommunicationLimitsPickerView;
  v16 = a1;
  v17 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264C64550(a1, v17, type metadata accessor for STIntroCommunicationLimitsPickerView);
  v18 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v19 = swift_allocObject();
  v20 = sub_264C640D0(v17, v19 + v18);
  v41 = sub_264C6414C(v20, v21, v22);
  sub_264CC404C();

  v23 = v16;
  sub_264CC440C();
  v24 = v46;
  swift_getKeyPath();
  v46 = v24;
  sub_264CC308C();

  v25 = *&v24[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection];

  v46 = 0x746E6F4320796E41;
  v47 = 0xEB00000000746361;
  v48 = 0xD000000000000064;
  v49 = 0x8000000264CE06B0;
  v50 = v25 == 1;
  sub_264C64550(v23, v17, v37);
  v26 = swift_allocObject();
  sub_264C640D0(v17, v26 + v18);
  v27 = v42;
  sub_264CC404C();

  v28 = *(v6 + 16);
  v29 = v43;
  v30 = v38;
  v28(v43, v38, v5);
  v31 = v44;
  v28(v44, v27, v5);
  v32 = v45;
  v28(v45, v29, v5);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9150, &qword_264CD1EC8);
  v28(&v32[*(v33 + 48)], v31, v5);
  v34 = *(v6 + 8);
  v34(v27, v5);
  v34(v30, v5);
  v34(v31, v5);
  return (v34)(v29, v5);
}

void sub_264C622F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100, &unk_264CD1DA0);
  sub_264CC440C();
  if (*&v1[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
    sub_264CC307C();
  }

  else
  {
  }
}

void sub_264C62428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100, &unk_264CD1DA0);
  sub_264CC440C();
  if (*&v1[OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection] == 1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
    sub_264CC307C();
  }
}

uint64_t sub_264C62564@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_264CC3D3C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9138, &qword_264CD1EB8);
  return sub_264C61DA0(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_264C625B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264CC3B0C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_264CC3B8C();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9188, &qword_264CD2108);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9190, &qword_264CD2110);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  *v15 = sub_264CC3CCC();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9198, &qword_264CD2118);
  sub_264C62980(v2, &v15[*(v16 + 44)]);
  v17 = sub_264CC3E9C();
  v18 = &v15[*(v13 + 44)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = *(v6 + 28);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_264CC3D1C();
  (*(*(v21 - 8) + 104))(&v8[v19], v20, v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v8 = _Q0;
  if (*(v2 + 32))
  {
    sub_264CC3AFC();
  }

  else
  {
    LODWORD(v42) = sub_264CC3DCC();
  }

  v27 = sub_264CC3A9C();
  sub_264CC3A1C();
  sub_264C64550(v8, v11, MEMORY[0x277CDFC08]);
  v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91A0, &qword_264CD2120) + 36)];
  v29 = v43;
  *v28 = v42;
  *(v28 + 1) = v29;
  *(v28 + 4) = v44;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91A8, &qword_264CD2128);
  *&v11[*(v30 + 52)] = v27;
  *&v11[*(v30 + 56)] = 256;
  v31 = sub_264CC446C();
  v33 = v32;
  sub_264C645B8(v8);
  v34 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91B0, &qword_264CD2130) + 36)];
  *v34 = v31;
  v34[1] = v33;
  v35 = sub_264CC446C();
  v37 = v36;
  v38 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91B8, &qword_264CD2138) + 36);
  sub_264C64614(v11, v38, &qword_27FFA9188, &qword_264CD2108);
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91C0, &unk_264CD2140) + 36));
  *v39 = v35;
  v39[1] = v37;
  return sub_264C64614(v15, a1, &qword_27FFA9190, &qword_264CD2110);
}

uint64_t sub_264C62980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v53 = a2;
  v47 = sub_264CC3B0C();
  MEMORY[0x28223BE20](v47);
  v46[1] = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91C8, &qword_264CD2CE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91D0, &qword_264CD2150);
  MEMORY[0x28223BE20](v6);
  v54 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v46 - v9;
  v11 = sub_264CC41EC();
  v12 = sub_264CC3F0C();
  v13 = *(v12 - 8);
  v50 = *(v13 + 56);
  v51 = v13 + 56;
  v50(v5, 1, 1, v12);
  v14 = sub_264CC3F1C();
  sub_264C646E4(v5, &qword_27FFA91C8, &qword_264CD2CE0);
  KeyPath = swift_getKeyPath();
  sub_264CC447C();
  sub_264CC3A8C();
  sub_264CC3AFC();
  *v10 = v11;
  *(v10 + 1) = KeyPath;
  *(v10 + 2) = v14;
  v16 = *&v74[31];
  *(v10 + 24) = *&v74[29];
  *(v10 + 40) = v16;
  *(v10 + 56) = *&v74[33];
  v52 = sub_264CC3D3C();
  v73 = 1;
  v17 = v49;
  sub_264C63084(v49, &v69, v18, v19);
  v77 = *&v70[16];
  v78[0] = *&v70[32];
  *(v78 + 9) = *&v70[41];
  v75 = v69;
  v76 = *v70;
  v79[2] = *&v70[16];
  v80[0] = *&v70[32];
  *(v80 + 9) = *&v70[41];
  v79[0] = v69;
  v79[1] = *v70;
  sub_264C6467C(&v75, v58, &qword_27FFA91D8, &qword_264CD2188);
  sub_264C646E4(v79, &qword_27FFA91D8, &qword_264CD2188);
  *(&v72[1] + 7) = v76;
  *(&v72[2] + 7) = v77;
  *(&v72[3] + 7) = v78[0];
  v72[4] = *(v78 + 9);
  *(v72 + 7) = v75;
  v48 = v73;
  sub_264CC447C();
  sub_264CC3BAC();
  *(&v74[6] + 7) = *&v74[21];
  *(&v74[8] + 7) = *&v74[23];
  *(&v74[10] + 7) = *&v74[25];
  *(&v74[12] + 7) = *&v74[27];
  *(v74 + 7) = *&v74[15];
  *(&v74[2] + 7) = *&v74[17];
  LOBYTE(v11) = *(v17 + 32);
  *(&v74[4] + 7) = *&v74[19];
  v49 = sub_264CC41EC();
  v50(v5, 1, 1, v12);
  v20 = sub_264CC3F1C();
  sub_264C646E4(v5, &qword_27FFA91C8, &qword_264CD2CE0);
  v21 = swift_getKeyPath();
  if (v11)
  {
    sub_264CC3AFC();
  }

  else
  {
    LODWORD(v69) = sub_264CC3DCC();
  }

  v22 = sub_264CC3A9C();
  sub_264CC448C();
  sub_264CC3A8C();
  v23 = v54;
  sub_264C6467C(v10, v54, &qword_27FFA91D0, &qword_264CD2150);
  v24 = v23;
  v25 = v53;
  sub_264C6467C(v24, v53, &qword_27FFA91D0, &qword_264CD2150);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91E0, &qword_264CD2190);
  v27 = v25 + *(v26 + 48);
  v28 = v52;
  v58[0] = v52;
  v58[1] = 0;
  v29 = v48;
  v59[0] = v48;
  *&v59[17] = v72[1];
  *&v59[33] = v72[2];
  *&v59[49] = v72[3];
  *&v59[65] = v72[4];
  *&v59[1] = v72[0];
  *&v59[129] = *&v74[6];
  *&v59[113] = *&v74[4];
  *&v59[97] = *&v74[2];
  *&v59[81] = *v74;
  *&v59[192] = *(&v74[13] + 7);
  *&v59[177] = *&v74[12];
  *&v59[161] = *&v74[10];
  *&v59[145] = *&v74[8];
  v30 = *v59;
  *v27 = v52;
  *(v27 + 16) = v30;
  v31 = *&v59[16];
  v32 = *&v59[32];
  v33 = *&v59[64];
  *(v27 + 64) = *&v59[48];
  *(v27 + 80) = v33;
  *(v27 + 32) = v31;
  *(v27 + 48) = v32;
  v34 = *&v59[80];
  v35 = *&v59[96];
  v36 = *&v59[128];
  *(v27 + 128) = *&v59[112];
  *(v27 + 144) = v36;
  *(v27 + 96) = v34;
  *(v27 + 112) = v35;
  v37 = *&v59[144];
  v38 = *&v59[160];
  v39 = *&v59[176];
  *(v27 + 208) = *&v59[192];
  *(v27 + 176) = v38;
  *(v27 + 192) = v39;
  *(v27 + 160) = v37;
  v40 = (v25 + *(v26 + 64));
  v41 = v49;
  *&v60 = v49;
  *(&v60 + 1) = v21;
  *&v61 = v20;
  *(&v61 + 1) = v22;
  v42 = v56;
  v62 = v55;
  v43 = v57;
  v63 = v56;
  v64 = v57;
  v40[2] = v55;
  v40[3] = v42;
  v40[4] = v43;
  v44 = v61;
  *v40 = v60;
  v40[1] = v44;
  sub_264C6467C(v58, &v69, &qword_27FFA91E8, &qword_264CD2198);
  sub_264C6467C(&v60, &v69, &qword_27FFA91F0, &qword_264CD21A0);
  sub_264C646E4(v10, &qword_27FFA91D0, &qword_264CD2150);
  v65[0] = v41;
  v65[1] = v21;
  v65[2] = v20;
  v65[3] = v22;
  v66 = v55;
  v67 = v56;
  v68 = v57;
  sub_264C646E4(v65, &qword_27FFA91F0, &qword_264CD21A0);
  v69 = v28;
  v70[0] = v29;
  *&v70[17] = v72[1];
  *&v70[33] = v72[2];
  *&v70[49] = v72[3];
  *&v70[65] = v72[4];
  *&v70[1] = v72[0];
  *&v70[129] = *&v74[6];
  *&v70[113] = *&v74[4];
  *&v70[97] = *&v74[2];
  *&v70[81] = *v74;
  *&v71[15] = *(&v74[13] + 7);
  *v71 = *&v74[12];
  *&v70[161] = *&v74[10];
  *&v70[145] = *&v74[8];
  sub_264C646E4(&v69, &qword_27FFA91E8, &qword_264CD2198);
  return sub_264C646E4(v54, &qword_27FFA91D0, &qword_264CD2150);
}

uint64_t sub_264C63084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_264C64744(a1, a3, a4);

  v5 = sub_264CC3FBC();
  v7 = v6;
  v9 = v8;
  sub_264CC3F3C();
  v10 = sub_264CC3F9C();
  v33 = v11;
  v34 = v10;
  v32 = v12;
  v35 = v13;

  sub_264C64798(v5, v7, v9 & 1);

  v14 = sub_264CC3FBC();
  v16 = v15;
  v18 = v17;
  sub_264CC3EFC();
  v19 = sub_264CC3F9C();
  v21 = v20;
  v23 = v22;

  sub_264C64798(v14, v16, v18 & 1);

  sub_264CC41AC();
  v24 = sub_264CC3F5C();
  v26 = v25;
  LOBYTE(v16) = v27;
  v29 = v28;

  sub_264C64798(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  *a2 = v34;
  *(a2 + 8) = v33;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = v24;
  *(a2 + 40) = v26;
  *(a2 + 48) = v16 & 1;
  *(a2 + 56) = v29;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  sub_264C63D0C(v34, v33, v32 & 1);

  sub_264C63D0C(v24, v26, v16 & 1);

  sub_264C64798(v24, v26, v16 & 1);

  sub_264C64798(v34, v33, v32 & 1);
}

uint64_t sub_264C63318@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v33 = a7;
    v34 = a8;
    v35 = v9;
    v32 = sub_264CC3B2C();
    v18 = *(v32 - 8);
    MEMORY[0x28223BE20](v32);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_264CC492C();

      strcpy(v37, "View.task @ ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      MEMORY[0x26674B2E0](a4, a5);
      MEMORY[0x26674B2E0](58, 0xE100000000000000);
      v36 = a6;
      v25 = sub_264CC4A7C();
      MEMORY[0x26674B2E0](v25);
    }

    v26 = sub_264CC477C();
    v27 = MEMORY[0x28223BE20](v26);
    (*(v29 + 16))(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v27);

    sub_264CC3B1C();
    sub_264BA5058(v35, a9);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9058, &unk_264CD1C60);
    return (*(v18 + 32))(a9 + *(v30 + 36), v20, v32);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9060, &qword_264CD2BB0) + 36));
    v22 = *(sub_264CC3ACC() + 20);
    v23 = sub_264CC477C();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;

    return sub_264BA5058(v9, a9);
  }
}

uint64_t sub_264C63664@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  sub_264C63D0C(a3, a4, a5 & 1);
}

void *sub_264C636BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_264C63700(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

unint64_t sub_264C637A4()
{
  result = qword_27FFA9040;
  if (!qword_27FFA9040)
  {
    sub_264CC3B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9040);
  }

  return result;
}

uint64_t sub_264C637F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264C63840(uint64_t a1, id *a2)
{
  result = sub_264CC45BC();
  *a2 = 0;
  return result;
}

uint64_t sub_264C638B8(uint64_t a1, id *a2)
{
  v3 = sub_264CC45CC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_264C63938@<X0>(uint64_t *a1@<X8>)
{
  sub_264CC45DC();
  v2 = sub_264CC459C();

  *a1 = v2;
  return result;
}

BOOL sub_264C63998(void *a1, uint64_t *a2)
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

uint64_t sub_264C639FC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_264CC459C();

  *a2 = v3;
  return result;
}

uint64_t sub_264C63A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC45DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_264C63A70(uint64_t a1)
{
  v2 = sub_264C637F0(&qword_27FFA9200, type metadata accessor for Name, &unk_264CD2024);
  v3 = sub_264C637F0(&qword_27FFA9208, type metadata accessor for Name, &unk_264CD1FC4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_264C63B2C()
{
  v0 = sub_264CC45DC();
  v1 = MEMORY[0x26674B310](v0);

  return v1;
}

uint64_t sub_264C63B68(uint64_t a1)
{
  sub_264CC45DC();
  sub_264CC460C();
}

uint64_t sub_264C63BBC(uint64_t a1)
{
  sub_264CC45DC();
  sub_264CC4B7C();
  sub_264CC460C();
  v1 = sub_264CC4B9C();

  return v1;
}

uint64_t sub_264C63C30(void *a1, uint64_t *a2)
{
  v2 = sub_264CC45DC();
  v4 = v3;
  if (v2 == sub_264CC45DC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_264CC4AAC();
  }

  return v7 & 1;
}

uint64_t sub_264C63CB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264CC3C1C();
  *a1 = result;
  return result;
}

uint64_t sub_264C63D0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_264C63D24(uint64_t a1, uint64_t a2)
{
  result = sub_264CC30AC();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_264C63F30(uint64_t a1, int a2)
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

uint64_t sub_264C63F50(uint64_t result, int a2, int a3)
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

void sub_264C63FDC(uint64_t a1)
{
  sub_264C64048(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_264C64048(uint64_t a1)
{
  if (!qword_27FFA9120)
  {
    type metadata accessor for STIntroCommunicationLimitsPickerViewModel(255);
    v1 = sub_264CC444C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFA9120);
    }
  }
}

uint64_t sub_264C640D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STIntroCommunicationLimitsPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264C6414C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FFA9148;
  if (!qword_27FFA9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9148);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for STIntroCommunicationLimitsPickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9100, &unk_264CD1DA0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_264C64290(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for STIntroCommunicationLimitsPickerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_264C64318(uint64_t a1, unint64_t *a2, uint64_t a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264C64378(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_264C643C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_264C64550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264C645B8(uint64_t a1)
{
  v2 = sub_264CC3B8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264C64614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_264C6467C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_264C646E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_264C64744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FFA91F8;
  if (!qword_27FFA91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA91F8);
  }

  return result;
}

uint64_t sub_264C64798(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_264C647A8()
{
  result = qword_27FFA9210;
  if (!qword_27FFA9210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA91B8, &qword_264CD2138);
    sub_264C64860();
    sub_264C64918(&unk_27FFA9230, &qword_27FFA91C0, &unk_264CD2140, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9210);
  }

  return result;
}

unint64_t sub_264C64860()
{
  result = qword_27FFA9218;
  if (!qword_27FFA9218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9190, &qword_264CD2110);
    sub_264C64918(&qword_27FFA9220, &qword_27FFA9228, &qword_264CD21D8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9218);
  }

  return result;
}

uint64_t sub_264C64918(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t UsageDetails.lastUpdatedDate.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC20ScreenTimeSettingsUI12UsageDetails_lastUpdatedDate;
  v5 = sub_264CC2FCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id UsageDetails.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UsageDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UsageDetails(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UsageDetails(uint64_t a1)
{
  result = qword_27FFA92C8;
  if (!qword_27FFA92C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static UsageDetails.earliestUsageDateForUserWithAltDSID(_:deviceActivityIdentifier:)@<X0>(void (**a1)(char *, uint64_t, uint64_t)@<X0>, void (**a2)(char *, uint64_t)@<X1>, unsigned int (**a3)(uint64_t, uint64_t, uint64_t)@<X2>, char *x8_0@<X8>)
{
  v10[3] = sub_264CC32DC();
  v10[4] = sub_264C6A9DC(&qword_27FFA92A8, MEMORY[0x277CC57C0], &unk_264CD2220);
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_264CC32CC();
  sub_264C6510C(a1, a2, a3, v10, x8_0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
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

uint64_t sub_264C6510C@<X0>(void (**a1)(char *, uint64_t, uint64_t)@<X0>, void (**a2)(char *, uint64_t)@<X1>, unsigned int (**a3)(uint64_t, uint64_t, uint64_t)@<X2>, void *a5@<X4>, char *a6@<X8>)
{
  v64 = a3;
  v58 = a2;
  v62 = a1;
  v63 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80, &qword_264CD2348);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v49 - v8;
  v74 = sub_264CC2FCC();
  v57 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_264CC325C();
  v56 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92E8, &qword_264CD2340);
  MEMORY[0x28223BE20](v12 - 8);
  v60 = &v49 - v13;
  v14 = sub_264CC330C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_264CC332C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264CC2E4C();
  (*(v15 + 104))(v17, *MEMORY[0x277CC5840], v14);

  sub_264CC331C();
  v22 = v63;
  sub_264CC2FBC();
  v23 = a5[3];
  v24 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v23);
  v25 = sub_264C6A9DC(&qword_27FFA92A8, MEMORY[0x277CC57C0], &unk_264CD2220);
  v26 = v65;
  (*(v25 + 24))(v21, v23, v24);
  if (v26)
  {
    (*(v57 + 8))(v22, v74);
    return (*(v19 + 8))(v21, v18);
  }

  else
  {
    v54 = v19;
    v55 = v18;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92F0, &qword_264CD2350);
    v28 = sub_264CC49EC();

    result = v28;
    v52 = *(v28 + 16);
    if (v52)
    {
      v49 = 0;
      v53 = v21;
      v29 = 0;
      v50 = v28 + 32;
      v30 = (v56 + 6);
      v65 = (v56 + 4);
      v64 = (v57 + 48);
      v62 = (v57 + 32);
      v31 = (v56 + 1);
      v58 = (v57 + 8);
      v32 = v61;
      v33 = v60;
      v51 = v28;
      while (v29 < *(result + 16))
      {
        sub_264C6A834(v50 + 40 * v29, v73);
        v57 = v29 + 1;
        __swift_project_boxed_opaque_existential_1(v73, v73[3]);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1(v67);
        sub_264CC326C();
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        v37 = __swift_project_boxed_opaque_existential_1(v67, AssociatedTypeWitness);
        v56 = &v49;
        v38 = MEMORY[0x28223BE20](v37);
        (*(v40 + 16))(&v49 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
        v71 = swift_getAssociatedTypeWitness();
        v72 = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1(v70);
        sub_264CC465C();
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        while (1)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
          sub_264CC488C();
          v41 = (*v30)(v33, 1, v32);
          v42 = v74;
          if (v41 == 1)
          {
            break;
          }

          (*v65)(v11, v33, v32);
          v43 = v66;
          sub_264CC322C();
          if ((*v64)(v43, 1, v42) == 1)
          {
            (*v31)(v11, v32);
            sub_264C646E4(v43, &unk_27FFA9B80, &qword_264CD2348);
          }

          else
          {
            v44 = *v62;
            v45 = v32;
            v46 = v59;
            (*v62)(v59, v43, v42);
            v47 = sub_264CC2F9C();
            (*v31)(v11, v45);
            v48 = *v58;
            if (v47)
            {
              v34 = v63;
              v48(v63, v42);
              v44(v34, v46, v42);
              v32 = v61;
              v33 = v60;
              break;
            }

            v48(v46, v42);
            v32 = v61;
            v33 = v60;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        v29 = v57;
        v35 = v55;
        v36 = v54;
        result = v51;
        if (v57 == v52)
        {

          v21 = v53;
          return (*(v36 + 8))(v21, v35);
        }
      }

      __break(1u);
    }

    else
    {

      v35 = v55;
      v36 = v54;
      return (*(v36 + 8))(v21, v35);
    }
  }

  return result;
}

void (**static UsageDetails.detailsForUserWithAltDSID(_:deviceActivityIdentifier:dateInterval:referenceDate:usageContext:)(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(char *, uint64_t)
{
  v16[3] = sub_264CC32DC();
  v16[4] = sub_264C6A9DC(&qword_27FFA92A8, MEMORY[0x277CC57C0], &unk_264CD2220);
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_264CC32CC();
  v14 = sub_264C68A70(a1, a2, a3, a4, a5, a6, a7, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v14;
}

uint64_t sub_264C66018(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_264C9FC08(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_264C66094(v6);
  return sub_264CC497C();
}

void sub_264C66094(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_264CC4A6C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_264C6A7A4();
        v6 = sub_264CC46CC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_264C663B8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_264C66198(0, v2, 1, a1);
  }
}

void sub_264C66198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_264CC2FCC();
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      sub_264CC2FAC();

      v22 = [v20 startDate];
      v23 = v34;
      sub_264CC2FAC();

      LOBYTE(v22) = sub_264CC2F9C();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_264C663B8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_264CC2FCC();
  MEMORY[0x28223BE20](v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_264C9A858(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_264C66C28((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_264C9A858(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_264C9A7CC(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 startDate];
      v24 = v123;
      sub_264CC2FAC();

      v25 = [v22 startDate];
      v26 = v124;
      sub_264CC2FAC();

      LODWORD(v121) = sub_264CC2F9C();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 startDate];
        v34 = v123;
        sub_264CC2FAC();

        v35 = [v32 startDate];
        v36 = v124;
        sub_264CC2FAC();

        LODWORD(v35) = sub_264CC2F9C() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_264C98858(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_264C98858((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_264C66C28((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_264C9A858(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_264C9A7CC(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 startDate];
    v53 = v123;
    sub_264CC2FAC();

    v54 = [v51 startDate];
    v55 = v124;
    sub_264CC2FAC();

    LOBYTE(v54) = sub_264CC2F9C();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_264C66C28(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_264CC2FCC();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 startDate];
        v41 = v54;
        sub_264CC2FAC();

        v42 = [v39 startDate];
        v43 = v55;
        sub_264CC2FAC();

        LOBYTE(v42) = sub_264CC2F9C();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v54;
        sub_264CC2FAC();

        v22 = [v19 startDate];
        v23 = v55;
        sub_264CC2FAC();

        LOBYTE(v22) = sub_264CC2F9C();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_264C670C4(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80, &qword_264CD2348);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_264CC2FCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264C6A8E8(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_264C646E4(a1, &unk_27FFA9B80, &qword_264CD2348);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = sub_264CC2F8C();
    result = (*(v8 + 8))(v10, v7);
    v6 = a1;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  sub_264C646E4(v6, &unk_27FFA9B80, &qword_264CD2348);
  (*(v8 + 16))(a1, a2, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

uint64_t sub_264C672C4(uint64_t a1)
{
  v2 = sub_264CC305C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9318, &unk_264CD2370);
    v9 = sub_264CC490C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_264C6A9DC(&qword_27FFA9320, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_264CC456C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_264C6A9DC(&qword_27FFA9328, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_264CC458C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_264C675E4(uint64_t *a1, uint64_t a2)
{
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80, &qword_264CD2348);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v70 - v4;
  v5 = sub_264CC2FCC();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v70 - v9;
  v10 = sub_264CC2EEC();
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264CC306C();
  v78 = *(v13 - 8);
  v79 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264CC304C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92F8, &qword_264CD2358);
  v16 = sub_264CC305C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_264CD21F0;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x277CC99B8], v16);
  v22(v21 + v18, *MEMORY[0x277CC9940], v16);
  v23 = a2;
  sub_264C672C4(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v75 = v15;
  sub_264CC303C();

  v24 = sub_264CC2EAC();
  if (v25 & 1) != 0 || (v26 = v24, v27 = sub_264CC2EDC(), (v28))
  {
    if (qword_27FFA9008 != -1)
    {
      swift_once();
    }

    v29 = sub_264CC387C();
    __swift_project_value_buffer(v29, qword_27FFAC2C8);
    v30 = v73;
    v31 = v74;
    (*(v73 + 16))(v7, v23, v74);
    v32 = sub_264CC385C();
    v33 = sub_264CC47EC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v81 = v35;
      *v34 = 136446210;
      sub_264C6A9DC(&qword_27FFA9300, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v36 = sub_264CC4A7C();
      v38 = v37;
      (*(v30 + 8))(v7, v31);
      v39 = sub_264C85E3C(v36, v38, &v81);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_264BA2000, v32, v33, "Failed to get week and weekday components from pickup: %{public}s)", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x26674C780](v35, -1, -1);
      MEMORY[0x26674C780](v34, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v7, v31);
    }

    (*(v76 + 8))(v12, v77);
    return (*(v78 + 8))(v75, v79);
  }

  v41 = v27;
  v42 = *v72;
  if (!*(*v72 + 16) || (v43 = sub_264C83D94(v26), (v44 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9308, &unk_264CD2360);
    v57 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9310, &qword_264CD37B0) - 8);
    v58 = v12;
    v59 = v23;
    v60 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_264CD2200;
    v62 = v57[14];
    *(v61 + v60) = v41;
    (*(v73 + 16))(v61 + v60 + v62, v59, v74);
    v63 = sub_264C834A0(v61);
    swift_setDeallocating();
    sub_264C646E4(v61 + v60, &qword_27FFA9310, &qword_264CD37B0);
    swift_deallocClassInstance();
    v64 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *v64;
    sub_264C830C4(v63, v26, isUniquelyReferenced_nonNull_native);
    *v64 = v81;
    (*(v76 + 8))(v58, v77);
    return (*(v78 + 8))(v75, v79);
  }

  v45 = v41;
  v46 = *(*(v42 + 56) + 8 * v43);
  v81 = v46;
  v47 = v73;
  v48 = v74;
  if (!*(v46 + 16) || (v49 = sub_264C83D94(v45), (v50 & 1) == 0))
  {
    v66 = v71;
    (*(v47 + 16))(v71, v23, v48);
    (*(v47 + 56))(v66, 0, 1, v48);

    sub_264C7FF94(v66, v45);
    v67 = v81;

    v68 = v72;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *v68;
    sub_264C830C4(v67, v26, v69);
    *v68 = v80;
    goto LABEL_18;
  }

  v51 = *(v47 + 16);
  v52 = v70;
  v51(v70, *(v46 + 56) + *(v47 + 72) * v49, v48);

  if (sub_264CC2F9C())
  {
    v53 = v71;
    v51(v71, v23, v48);
    (*(v47 + 56))(v53, 0, 1, v48);
    sub_264C7FF94(v53, v45);
    v54 = v81;

    v55 = v72;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *v55;
    sub_264C830C4(v54, v26, v56);
    *v55 = v80;
    (*(v47 + 8))(v70, v48);
LABEL_18:
    (*(v76 + 8))(v12, v77);
    (*(v78 + 8))(v75, v79);
  }

  (*(v47 + 8))(v52, v48);
  (*(v76 + 8))(v12, v77);
  (*(v78 + 8))(v75, v79);
}

uint64_t sub_264C67EE0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() systemHiddenBundleIdentifiersForDeviceFamily_];
  v5 = sub_264CC47AC();

  LOBYTE(v4) = sub_264C8E728(a1, a2, v5);

  if (v4 & 1) != 0 || (sub_264CC45DC(), v6 = sub_264CC463C(), , (v6))
  {
    v7 = 0;
  }

  else
  {
    sub_264CC45DC();
    v8 = sub_264CC463C();

    v7 = v8 ^ 1;
  }

  return v7 & 1;
}

id sub_264C67FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = [objc_allocWithZone(STUsageItem) init];
  [v8 setItemType_];
  if (a2 && (sub_264C67EE0(a1, a2) & 1) != 0)
  {
    sub_264CC45DC();
    v9 = sub_264CC463C();

    if (v9)
    {
      v10 = MEMORY[0x277D4BC98];
    }

    else
    {
      sub_264CC45DC();
      v13 = sub_264CC463C();

      if ((v13 & 1) == 0)
      {
        MEMORY[0x26674B2E0](a1, a2);
        v17 = sub_264CC459C();

        [v8 setIdentifier_];

        v18 = objc_allocWithZone(MEMORY[0x277D4BAD0]);
        v19 = sub_264CC459C();
        v11 = [v18 initWithIdentifier:v19 usageTrusted:a5 & 1];

        goto LABEL_10;
      }

      v10 = MEMORY[0x277D4BC58];
    }

    v14 = *v10;
    v15 = sub_264CC45DC();
    MEMORY[0x26674B2E0](v15);

    v16 = sub_264CC459C();

    [v8 setIdentifier_];

    v11 = [objc_allocWithZone(MEMORY[0x277D4BAD0]) initWithIdentifier:v14 usageTrusted:a5 & 1];
LABEL_10:
    v12 = &selRef_setTrustIdentifier_;
    goto LABEL_11;
  }

  v11 = sub_264CC459C();
  v12 = &selRef_setIdentifier_;
LABEL_11:
  [v8 *v12];

  [v8 setTimePeriod_];
  v20 = sub_264CC2F7C();
  [v8 setStartDate_];

  v21 = sub_264CC47BC();
  [v8 setTotalUsage_];

  return v8;
}

void sub_264C682B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_264CC30EC();
  v13 = v12;
  if (a6)
  {
    if (sub_264CC30FC() >= 1)
    {

      v14 = sub_264CC30FC();
      v15 = sub_264CC310C();
      sub_264C67FDC(v11, v13, a5, v14, v15 & 1);

      MEMORY[0x26674B340](v16);
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264CC46BC();
      }

      sub_264CC46DC();
    }

    if (sub_264CC30DC() >= 1)
    {

      v49 = sub_264CC30DC();
      v17 = sub_264CC310C();
      v18 = [objc_allocWithZone(STUsageItem) init];
      [v18 setItemType_];
      if (sub_264C67EE0(v11, v13))
      {
        v51 = 0xD000000000000017;
        v52 = 0x8000000264CE0D00;
        MEMORY[0x26674B2E0](v11, v13);
        v19 = sub_264CC459C();

        [v18 setIdentifier_];

        v20 = objc_allocWithZone(MEMORY[0x277D4BAD0]);
        v21 = sub_264CC459C();
        v22 = [v20 initWithIdentifier:v21 usageTrusted:v17 & 1];

        v23 = &selRef_setTrustIdentifier_;
      }

      else
      {
        v22 = sub_264CC459C();
        v23 = &selRef_setIdentifier_;
      }

      [v18 *v23];

      [v18 setTimePeriod_];
      v24 = sub_264CC2F7C();
      [v18 setStartDate_];

      v25 = sub_264CC47BC();
      [v18 setTotalUsage_];

      MEMORY[0x26674B340]();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264CC46BC();
      }

      sub_264CC46DC();
    }
  }

  v26 = *MEMORY[0x277CF9618];
  if (sub_264CC45DC() == a3 && v27 == a4)
  {
  }

  else
  {
    v29 = sub_264CC4AAC();

    if ((v29 & 1) == 0)
    {
      v30 = [objc_opt_self() systemHiddenBundleIdentifiersForDeviceFamily_];
      v31 = sub_264CC47AC();

      LOBYTE(v30) = sub_264C8E728(v11, v13, v31);

      if ((v30 & 1) == 0)
      {
        sub_264CC30CC();
        if (v32 <= 0.0)
        {
        }

        else
        {
          sub_264CC30CC();
          v33 = sub_264CC310C();
          v34 = [objc_allocWithZone(STUsageItem) init];
          [v34 setItemType_];
          v51 = 0xD000000000000013;
          v52 = 0x8000000264CE0CE0;
          MEMORY[0x26674B2E0](v11, v13);
          v35 = sub_264CC459C();

          [v34 setIdentifier_];

          v36 = objc_allocWithZone(MEMORY[0x277D4BAD0]);
          v37 = sub_264CC459C();

          v38 = [v36 initWithIdentifier:v37 usageTrusted:v33 & 1];

          [v34 setTrustIdentifier_];
          v39 = sub_264CC459C();
          if (([v39 isEqualToString:*MEMORY[0x277CF9620]] & 1) != 0 || objc_msgSend(v39, "isEqualToString:", *MEMORY[0x277CF9610]))
          {

            v40 = 0;
          }

          else
          {
            v48 = [v39 isEqualToString:v26];

            if (v48)
            {
              v40 = 0;
            }

            else
            {
              v40 = sub_264CC459C();
            }
          }

          [v34 setCategoryIdentifier_];

          [v34 setTimePeriod_];
          v41 = sub_264CC2F7C();
          [v34 setStartDate_];

          v42 = sub_264CC479C();
          [v34 setTotalUsage_];

          MEMORY[0x26674B340]();
          if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_264CC46BC();
          }

          sub_264CC46DC();
        }

        return;
      }
    }
  }

  if (qword_27FFA9008 != -1)
  {
    swift_once();
  }

  v43 = sub_264CC387C();
  __swift_project_value_buffer(v43, qword_27FFAC2C8);

  oslog = sub_264CC385C();
  v44 = sub_264CC47DC();

  if (os_log_type_enabled(oslog, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v45 = 136446210;
    v47 = sub_264C85E3C(v11, v13, &v51);

    *(v45 + 4) = v47;
    _os_log_impl(&dword_264BA2000, oslog, v44, "Skipping usage item for system hidden app: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x26674C780](v46, -1, -1);
    MEMORY[0x26674C780](v45, -1, -1);
  }

  else
  {
  }
}

void (**sub_264C68A70(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8))(char *, uint64_t)
{
  v199 = a8;
  v209 = a7;
  v201 = a5;
  v205 = a4;
  v208 = a3;
  v206 = a2;
  v207 = a1;
  v204 = sub_264CC31AC();
  v183 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v202 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_264CC311C();
  v182 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v181 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_264CC316C();
  v165 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v194 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_264CC2E7C();
  v211 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v169 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_264CC325C();
  v196 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v195 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92E8, &qword_264CD2340);
  MEMORY[0x28223BE20](v14 - 8);
  v173 = &v147 - v15;
  v16 = sub_264CC2FCC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v149 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v203 = &v147 - v20;
  MEMORY[0x28223BE20](v21);
  v212 = &v147 - v22;
  MEMORY[0x28223BE20](v23);
  v200 = &v147 - v24;
  v25 = sub_264CC330C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_264CC332C();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v30 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80, &qword_264CD2348);
  MEMORY[0x28223BE20](v31 - 8);
  v148 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v147 - v34;
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v147 - v38;
  v224 = MEMORY[0x277D84F90];
  v151 = v17;
  v40 = *(v17 + 56);
  v178 = v16;
  v40(&v147 - v38, 1, 1, v16, v37);
  v223 = MEMORY[0x277D84F98];
  (v211[2])(v28, v201, v170);
  (*(v26 + 104))(v28, *MEMORY[0x277CC5838], v25);

  sub_264CC331C();
  v41 = v199[3];
  v42 = v199[4];
  __swift_project_boxed_opaque_existential_1(v199, v41);
  v43 = sub_264C6A9DC(&qword_27FFA92A8, MEMORY[0x277CC57C0], &unk_264CD2220);
  v44 = v210;
  (*(v43 + 24))(v30, v41, v42);
  if (v44)
  {
    v45 = v44;
    (*(v152 + 8))(v30, v153);
    sub_264C646E4(v39, &unk_27FFA9B80, &qword_264CD2348);
    return v45;
  }

  v46 = v196;
  v164 = v35;
  v150 = 0;
  v159 = v39;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92F0, &qword_264CD2350);
  v47 = sub_264CC49EC();

  v48 = v47;
  v156 = *(v47 + 16);
  v157 = v30;
  if (v156)
  {
    v49 = 0;
    v154 = v48 + 32;
    v177 = (v151 + 8);
    v171 = (v46 + 48);
    v168 = (v46 + 32);
    v167 = (v211 + 1);
    v163 = "STUsageItemTypeNotifications";
    v162 = (v151 + 48);
    v160 = (v151 + 32);
    v161 = "STUsageItemTypeCategory";
    v185 = v165 + 16;
    v201 = *MEMORY[0x277CF9620];
    v198 = *MEMORY[0x277CF9610];
    v197 = *MEMORY[0x277CF9618];
    v175 = 0x8000000264CE0CC0;
    v208 = v183 + 16;
    v207 = (v183 + 8);
    v199 = 0x8000000264CE0CA0;
    v184 = (v165 + 8);
    v166 = (v46 + 8);
    v186 = a6;
    v50 = v200;
    v155 = v48;
    v180 = v182 + 16;
    v179 = (v182 + 8);
    while (1)
    {
      v52 = *(v48 + 16);
      if (v49 >= v52)
      {
        break;
      }

      v158 = v49;
      sub_264C6A834(v154 + 40 * v49, &v221);
      __swift_project_boxed_opaque_existential_1(&v221, v222);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v211 = &v147;
      v54 = *(AssociatedTypeWitness - 8);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v56 = &v147 - v55;
      sub_264CC32AC();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v54 + 8))(v56, AssociatedTypeWitness);
      v58 = v203;
      sub_264C670C4(v159, v50);
      v176 = *v177;
      v176(v50, v178);
      v59 = v194;
      v60 = v187;
      __swift_project_boxed_opaque_existential_1(&v221, v222);
      v216 = swift_getAssociatedTypeWitness();
      v217 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v214);
      sub_264CC326C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v221);
      v61 = __swift_project_boxed_opaque_existential_1(&v214, v216);
      v211 = &v147;
      v62 = MEMORY[0x28223BE20](v61);
      (*(v64 + 16))(&v147 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), v62);
      v219 = swift_getAssociatedTypeWitness();
      v220 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v218);
      sub_264CC465C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v214);
      v65 = v172;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(&v218, v219);
        v66 = v173;
        sub_264CC488C();
        if ((*v171)(v66, 1, v65) == 1)
        {
          break;
        }

        v67 = v195;
        (*v168)(v195, v66, v65);
        v68 = v169;
        sub_264CC323C();
        v69 = v212;
        sub_264CC2E6C();
        (*v167)(v68, v170);
        sub_264CC321C();
        if (v70 > 0.0)
        {
          v71 = [objc_allocWithZone(STUsageItem) init];
          [v71 setItemType_];
          v72 = sub_264CC459C();
          [v71 setIdentifier_];

          [v71 setTimePeriod_];
          v73 = sub_264CC2F7C();
          [v71 setStartDate_];

          v74 = sub_264CC479C();
          [v71 setTotalUsage_];

          MEMORY[0x26674B340]();
          if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_264CC46BC();
            v67 = v195;
          }

          sub_264CC46DC();
        }

        if (v209 != 1)
        {
          v75 = v164;
          sub_264CC322C();
          v76 = v75;
          v77 = v75;
          v78 = v178;
          if ((*v162)(v77, 1, v178) == 1)
          {
            sub_264C646E4(v76, &unk_27FFA9B80, &qword_264CD2348);
          }

          else
          {
            (*v160)(v58, v76, v78);
            sub_264C675E4(&v223, v58);
            v176(v58, v78);
          }

          sub_264CC320C();
          v79 = [objc_allocWithZone(STUsageItem) init];
          [v79 setItemType_];
          v80 = sub_264CC459C();
          [v79 setIdentifier_];

          [v79 setTimePeriod_];
          v81 = sub_264CC2F7C();
          [v79 setStartDate_];

          v82 = sub_264CC47BC();
          [v79 setTotalUsage_];

          MEMORY[0x26674B340]();
          if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_264CC46BC();
          }

          sub_264CC46DC();
          v67 = v195;
        }

        v83 = sub_264CC324C();
        v191 = *(v83 + 16);
        if (v191)
        {
          v84 = 0;
          v85 = (*(v165 + 80) + 32) & ~*(v165 + 80);
          v174 = v83;
          v190 = v83 + v85;
          v189 = *(v165 + 72);
          v188 = *(v165 + 16);
          while (1)
          {
            v196 = v84;
            v188(v59, v190 + v189 * v84, v60);
            v86 = sub_264CC313C();
            v88 = v87;
            v205 = v86;
            v89 = sub_264CC459C();
            if (([v89 isEqualToString:v201] & 1) != 0 || objc_msgSend(v89, "isEqualToString:", v198))
            {

              v90 = v192;
              v91 = v204;
            }

            else
            {
              v124 = [v89 isEqualToString:v197];

              v90 = v192;
              v91 = v204;
              if ((v124 & 1) == 0)
              {
                sub_264CC312C();
                if (v125 > 0.0)
                {
                  sub_264CC312C();
                  v126 = [objc_allocWithZone(STUsageItem) init];
                  [v126 setItemType_];
                  v214 = 0xD000000000000018;
                  v215 = v175;
                  MEMORY[0x26674B2E0](v205, v88);
                  v127 = sub_264CC459C();

                  [v126 setIdentifier_];

                  v128 = objc_allocWithZone(MEMORY[0x277D4BAD0]);
                  v129 = sub_264CC459C();
                  v130 = [v128 initWithIdentifier:v129 usageTrusted:1];

                  [v126 setTrustIdentifier_];
                  v131 = sub_264CC459C();
                  [v126 setCategoryIdentifier_];

                  [v126 setTimePeriod_];
                  v132 = sub_264CC2F7C();
                  [v126 setStartDate_];

                  v133 = sub_264CC479C();
                  [v126 setTotalUsage_];

                  MEMORY[0x26674B340]();
                  if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_264CC46BC();
                  }

                  sub_264CC46DC();
                  v67 = v195;
                  v90 = v192;
                }
              }
            }

            v206 = v88;
            v92 = sub_264CC315C();
            v93 = *(v92 + 16);
            if (v93)
            {
              v94 = (*(v182 + 80) + 32) & ~*(v182 + 80);
              v193 = v92;
              v95 = v92 + v94;
              v211 = *(v182 + 72);
              v210 = *(v182 + 16);
              v96 = v181;
              v97 = v90;
              v98 = v179;
              v99 = v206;
              v100 = v205;
              do
              {
                v101 = v209 != 1;
                (v210)(v96, v95, v97);
                sub_264C682B4(&v224, v96, v100, v99, v212, v101);
                (*v98)(v96, v97);
                v95 += v211;
                --v93;
              }

              while (v93);

              v59 = v194;
              v67 = v195;
              v50 = v200;
              v91 = v204;
            }

            else
            {
            }

            v102 = sub_264CC314C();
            v103 = *(v102 + 16);
            v104 = v202;
            v58 = v203;
            v69 = v212;
            if (v103)
            {
              break;
            }

LABEL_24:
            v84 = v196 + 1;
            v60 = v187;
            (*v184)(v59, v187);
            a6 = v186;
            if (v84 == v191)
            {
              goto LABEL_8;
            }
          }

          v105 = (*(v183 + 80) + 32) & ~*(v183 + 80);
          v210 = v102;
          v106 = v102 + v105;
          v107 = *(v183 + 72);
          v211 = *(v183 + 16);
          v108 = v211;
          (v211)(v202, v102 + v105, v91);
          while (2)
          {
            sub_264CC317C();
            if (v112 <= 0.0)
            {
              goto LABEL_40;
            }

            v113 = sub_264CC318C();
            v115 = v114;
            sub_264CC317C();
            v116 = sub_264CC319C();
            v117 = [objc_allocWithZone(STUsageItem) init];
            [v117 setItemType_];
            v214 = 0xD000000000000017;
            v215 = v199;
            MEMORY[0x26674B2E0](v113, v115);
            v118 = sub_264CC459C();

            [v117 setIdentifier_];

            v119 = objc_allocWithZone(MEMORY[0x277D4BAD0]);
            v120 = sub_264CC459C();

            v121 = [v119 initWithIdentifier:v120 usageTrusted:v116 & 1];

            [v117 setTrustIdentifier_];
            v122 = sub_264CC459C();
            if (([v122 isEqualToString:v201] & 1) != 0 || objc_msgSend(v122, "isEqualToString:", v198))
            {
            }

            else
            {
              v123 = [v122 isEqualToString:v197];

              if ((v123 & 1) == 0)
              {
                v109 = sub_264CC459C();
LABEL_37:
                v91 = v204;
                v58 = v203;
                v50 = v200;
                [v117 setCategoryIdentifier_];

                [v117 setTimePeriod_];
                v69 = v212;
                v110 = sub_264CC2F7C();
                [v117 setStartDate_];

                v111 = sub_264CC479C();
                [v117 setTotalUsage_];

                MEMORY[0x26674B340]();
                if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_264CC46BC();
                  v69 = v212;
                }

                sub_264CC46DC();
                v104 = v202;
                v108 = v211;
LABEL_40:
                (*v207)(v104, v91);
                v106 += v107;
                if (!--v103)
                {

                  v59 = v194;
                  v67 = v195;
                  goto LABEL_24;
                }

                (v108)(v104, v106, v91);
                continue;
              }
            }

            break;
          }

          v109 = 0;
          goto LABEL_37;
        }

LABEL_8:

        v176(v69, v178);
        v65 = v172;
        (*v166)(v67, v172);
      }

      v49 = v158 + 1;
      __swift_destroy_boxed_opaque_existential_1Tm(&v218);
      v51 = v159;
      v48 = v155;
      if (v49 == v156)
      {

        v134 = v151;
        goto LABEL_55;
      }
    }

    __break(1u);
  }

  else
  {

    v134 = v151;
    v51 = v159;
LABEL_55:

    v221 = sub_264CABA0C(v135);
    v136 = v150;
    sub_264C66018(&v221);
    v137 = v149;
    v138 = v153;
    v52 = &v182;
    v150 = v136;
    if (!v136)
    {

      v139 = v221;
      v140 = v148;
      sub_264C6A8E8(v51, v148);
      v141 = *(v134 + 48);
      v142 = v178;
      if (v141(v140, 1, v178) == 1)
      {
        (*(v134 + 16))(v137, a6, v142);
        if (v141(v140, 1, v142) != 1)
        {
          sub_264C646E4(v140, &unk_27FFA9B80, &qword_264CD2348);
        }
      }

      else
      {
        (*(v134 + 32))(v137, v140, v142);
      }

      v143 = v223;
      v144 = type metadata accessor for UsageDetails(0);
      v145 = objc_allocWithZone(v144);
      *&v145[OBJC_IVAR____TtC20ScreenTimeSettingsUI12UsageDetails_usageItems] = v139;
      (*(v134 + 16))(&v145[OBJC_IVAR____TtC20ScreenTimeSettingsUI12UsageDetails_lastUpdatedDate], v137, v142);
      *&v145[OBJC_IVAR____TtC20ScreenTimeSettingsUI12UsageDetails_firstPickupByWeekdayByWeek] = v143;
      v213.receiver = v145;
      v213.super_class = v144;
      v45 = objc_msgSendSuper2(&v213, sel_init);
      (*(v134 + 8))(v137, v142);
      (*(v152 + 8))(v157, v138);
      sub_264C646E4(v159, &unk_27FFA9B80, &qword_264CD2348);
      return v45;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_264C6A61C()
{
  result = qword_27FFA92B8;
  if (!qword_27FFA92B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA92C0, &qword_264CD2240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA92B8);
  }

  return result;
}

uint64_t sub_264C6A688(uint64_t a1, uint64_t a2)
{
  result = sub_264CC2FCC();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_264C6A7A4()
{
  result = qword_27FFA92E0;
  if (!qword_27FFA92E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFA92E0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_264C6A834(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_264C6A8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80, &qword_264CD2348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_264C6A9DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_264C6AA24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264CC3CBC();
  v18 = 1;
  sub_264C6AB40(a1, __src);
  memcpy(__dst, __src, 0x171uLL);
  memcpy(v20, __src, 0x171uLL);
  sub_264C6467C(__dst, v15, &qword_27FFA9360, &qword_264CD23E8);
  sub_264C646E4(v20, &qword_27FFA9360, &qword_264CD23E8);
  memcpy(&v17[7], __dst, 0x171uLL);
  v5 = v18;
  LOBYTE(a1) = sub_264CC3EBC();
  sub_264CC39DC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  result = memcpy((a2 + 17), v17, 0x178uLL);
  *(a2 + 400) = a1;
  *(a2 + 408) = v7;
  *(a2 + 416) = v9;
  *(a2 + 424) = v11;
  *(a2 + 432) = v13;
  *(a2 + 440) = 0;
  return result;
}

uint64_t sub_264C6AB40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v58 = sub_264CC41EC();
  v57 = sub_264CC3EFC();
  KeyPath = swift_getKeyPath();
  v55 = sub_264CC417C();
  v54 = sub_264CC3E9C();
  sub_264CC39DC();
  v4 = v3;
  v52 = v5;
  v53 = v3;
  v6 = v5;
  v8 = v7;
  v50 = v9;
  v51 = v7;
  v10 = v9;
  sub_264CC417C();
  v49 = sub_264CC418C();

  v48 = sub_264CC3E9C();
  v47 = sub_264CC3EAC();
  sub_264CC39DC();
  v12 = v11;
  v45 = v13;
  v46 = v11;
  v14 = v13;
  v16 = v15;
  v43 = v17;
  v44 = v15;
  v18 = v17;
  v19 = sub_264CC3D3C();
  LOBYTE(v101[0]) = 1;
  sub_264C6B058(a1, v62);
  *&v61[7] = v62[0];
  *&v61[23] = v62[1];
  *&v61[39] = v62[2];
  *&v61[55] = v62[3];
  LOBYTE(a1) = v101[0];
  v37 = sub_264CC3ECC();
  sub_264CC39DC();
  v35 = v21;
  v36 = v20;
  v33 = v23;
  v34 = v22;
  v42 = sub_264CC41EC();
  v41 = sub_264CC3EFC();
  v40 = swift_getKeyPath();
  v39 = sub_264CC3DDC();
  v38 = sub_264CC3EAC();
  sub_264CC39DC();
  *&v63 = v58;
  *(&v63 + 1) = KeyPath;
  *&v64 = v57;
  *(&v64 + 1) = v55;
  v65 = xmmword_264CD2380;
  LOBYTE(v66) = v54;
  *(&v66 + 1) = v4;
  *&v67 = v6;
  *(&v67 + 1) = v8;
  *&v68 = v10;
  BYTE8(v68) = 0;
  *&v69 = v49;
  BYTE8(v69) = v48;
  *(&v69 + 9) = 256;
  LOBYTE(v70) = v47;
  *(&v70 + 1) = v12;
  *v71 = v14;
  *&v71[8] = v16;
  *&v71[16] = v18;
  v71[24] = 0;
  __src[4] = v67;
  __src[5] = v68;
  __src[2] = xmmword_264CD2380;
  __src[3] = v66;
  __src[0] = v63;
  __src[1] = v64;
  *(&__src[8] + 9) = *&v71[9];
  __src[6] = v69;
  __src[7] = v70;
  v72 = v19;
  v73[0] = a1;
  *&v73[49] = *&v61[48];
  *&v73[33] = *&v61[32];
  *&v73[17] = *&v61[16];
  *&v73[1] = *v61;
  *&v73[64] = *&v61[63];
  v73[72] = v37;
  *&v74 = v36;
  *(&v74 + 1) = v35;
  *&v75 = v34;
  *(&v75 + 1) = v33;
  __src[8] = *v71;
  __src[10] = v19;
  __src[11] = *v73;
  __src[16] = v74;
  __src[17] = v75;
  __src[13] = *&v73[32];
  __src[14] = *&v73[48];
  LOBYTE(v101[0]) = 0;
  v76 = 0;
  LOBYTE(__src[18]) = 0;
  __src[15] = *&v73[64];
  __src[12] = *&v73[16];
  *&v77 = v42;
  *(&v77 + 1) = v40;
  *&v78 = v41;
  DWORD2(v78) = v39;
  LOBYTE(v79) = v38;
  v25 = v24;
  *(&v79 + 1) = v24;
  v27 = v26;
  *v80 = v26;
  v29 = v28;
  *&v80[8] = v28;
  v31 = v30;
  *&v80[16] = v30;
  v80[24] = 0;
  *(&__src[20] + 8) = v79;
  *(&__src[21] + 8) = *v80;
  *(&__src[22] + 1) = *&v80[9];
  *(&__src[18] + 8) = v77;
  *(&__src[19] + 8) = v78;
  memcpy(a2, __src, 0x171uLL);
  v81[0] = v42;
  v81[1] = v40;
  v81[2] = v41;
  v82 = v39;
  v83 = v38;
  v84 = v25;
  v85 = v27;
  v86 = v29;
  v87 = v31;
  v88 = 0;
  sub_264C6467C(&v63, v101, &qword_27FFA9368, &qword_264CD2420);
  sub_264C6467C(&v72, v101, &qword_27FFA9370, &qword_264CD2428);
  sub_264C6467C(&v77, v101, &qword_27FFA9378, &unk_264CD2430);
  sub_264C646E4(v81, &qword_27FFA9378, &unk_264CD2430);
  v92 = *&v61[16];
  v93 = *&v61[32];
  *v94 = *&v61[48];
  v89[0] = v19;
  v89[1] = 0;
  v90 = a1;
  *&v94[15] = *&v61[63];
  v91 = *v61;
  v95 = v37;
  v96 = v36;
  v97 = v35;
  v98 = v34;
  v99 = v33;
  v100 = 0;
  sub_264C646E4(v89, &qword_27FFA9370, &qword_264CD2428);
  v101[0] = v58;
  v101[1] = KeyPath;
  v101[2] = v57;
  v101[3] = v55;
  v102 = xmmword_264CD2380;
  v103 = v54;
  v104 = v53;
  v105 = v52;
  v106 = v51;
  v107 = v50;
  v108 = 0;
  v109 = v49;
  v110 = v48;
  v111 = 256;
  v112 = v47;
  v113 = v46;
  v114 = v45;
  v115 = v44;
  v116 = v43;
  v117 = 0;
  return sub_264C646E4(v101, &qword_27FFA9368, &qword_264CD2420);
}

id sub_264C6B058@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  result = [result propertyForKey_];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_264CC489C();
  swift_unknownObjectRelease();
  sub_264C6B7DC(v23, v24);
  swift_dynamicCast();
  LODWORD(v24[0]) = sub_264CC3DBC();
  v4 = sub_264CC3F6C();
  v6 = v5;
  v8 = v7;

  v9 = sub_264CC3F8C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_264C64798(v4, v6, v8 & 1);

  result = [v2 propertyForKey_];
  if (result)
  {
    sub_264CC489C();
    swift_unknownObjectRelease();
    sub_264C6B7DC(v23, v24);
    swift_dynamicCast();
    sub_264CC3DDC();
    v16 = sub_264CC3F6C();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13 & 1;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    *(a2 + 40) = v18;
    *(a2 + 48) = v20 & 1;
    *(a2 + 56) = v22;
    sub_264C63D0C(v9, v11, v13 & 1);

    sub_264C63D0C(v16, v18, v20 & 1);

    sub_264C64798(v16, v18, v20 & 1);

    sub_264C64798(v9, v11, v13 & 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_264C6B490(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_264CC459C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_264C6B6C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_264C6B724()
{
  result = qword_27FFA9340;
  if (!qword_27FFA9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9338, &qword_264CD23D8);
    sub_264C64918(&qword_27FFA9348, &qword_27FFA9350, &qword_264CD23E0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9340);
  }

  return result;
}

_OWORD *sub_264C6B7DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_264C6B7EC@<X0>(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_264C6B86C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264CC393C();
}

uint64_t sub_264C6B8F0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  return v3;
}

uint64_t sub_264C6B964(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA93C8, &qword_264CD25A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9388, &qword_264CD2488);
  sub_264CC390C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_264C6BB04@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  *a3 = v5;
  return result;
}

uint64_t sub_264C6BB84(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264CC393C();
}

uint64_t sub_264C6BBF8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  return v3;
}

uint64_t sub_264C6BC6C(char a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264CC393C();
}

uint64_t (*sub_264C6BCDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264CC391C();
  return sub_264C6BD80;
}

void sub_264C6BD80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_264C6BDE8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_264CC38FC();
  return swift_endAccess();
}

uint64_t sub_264C6BE64(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9398, &qword_264CD24E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10, &qword_264CD4170);
  sub_264CC390C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_264C6C004(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_264CC38FC();
  return swift_endAccess();
}

uint64_t sub_264C6C07C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9398, &qword_264CD24E0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10, &qword_264CD4170);
  sub_264CC390C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_264C6C1B4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9398, &qword_264CD24E0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__isAnimating;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10, &qword_264CD4170);
  sub_264CC38FC();
  swift_endAccess();
  return sub_264C6C324;
}

void sub_264C6C324(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_264CC390C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_264CC390C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t STMicaAnimator.__allocating_init(states:delay:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  STMicaAnimator.init(states:delay:)(a1, a2, a3);
  return v6;
}

uint64_t STMicaAnimator.init(states:delay:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380, &qword_264CD24E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10, &qword_264CD4170);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  v15 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__isAnimating;
  v25 = 0;
  sub_264CC38EC();
  result = (*(v12 + 32))(v4 + v15, v14, v11);
  *(v4 + OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator_states) = a1;
  v17 = (v4 + OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator_delay);
  *v17 = a2;
  v17[1] = a3;
  if (a1[2])
  {
    v19 = a1[4];
    v18 = a1[5];
    swift_beginAccess();
    v24[1] = v19;
    v24[2] = v18;

    sub_264CC38EC();
    swift_endAccess();
    v20 = sub_264CC477C();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    sub_264CC474C();

    v21 = sub_264CC473C();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v4;
    sub_264C6D038(0, 0, v10, &unk_264CD24F8, v22);

    swift_getKeyPath();
    swift_getKeyPath();
    v25 = 1;

    sub_264CC393C();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264C6C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA93E0, &qword_264CD25C0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9398, &qword_264CD24E0);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA93E8, &qword_264CD25C8);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_264CC474C();
  v4[17] = sub_264CC473C();
  v9 = sub_264CC471C();
  v4[18] = v9;
  v4[19] = v8;

  return MEMORY[0x2822009F8](sub_264C6C978, v9, v8);
}

uint64_t sub_264C6C978()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10, &qword_264CD4170);
  sub_264CC38FC();
  swift_endAccess();
  v7 = sub_264C64918(&qword_27FFA93F0, &qword_27FFA9398, &qword_264CD24E0, MEMORY[0x277CBCEC8]);
  MEMORY[0x26674A660](v4, v7);
  (*(v2 + 8))(v1, v4);
  sub_264CC38CC();
  (*(v6 + 8))(v3, v5);
  v0[20] = sub_264CC473C();
  v8 = sub_264C64918(&qword_27FFA93F8, &qword_27FFA93E8, &qword_264CD25C8, MEMORY[0x277CBCDD0]);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_264C6CB58;
  v10 = v0[13];

  return MEMORY[0x282200308](v0 + 23, v10, v8);
}

uint64_t sub_264C6CB58()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_264CC471C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_264C6CEF8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_264CC471C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_264C6CCF0;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_264C6CCF0()
{

  *(v0 + 185) = *(v0 + 184);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_264C6CD5C, v1, v2);
}

uint64_t sub_264C6CD5C(uint64_t a1)
{
  v2 = *(v1 + 185);
  if (v2 == 2)
  {
    (*(*(v1 + 112) + 8))(*(v1 + 120), *(v1 + 104));

    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    if (v2)
    {
      (*(**(v1 + 48) + 248))(a1);
    }

    *(v1 + 160) = sub_264CC473C();
    v5 = sub_264C64918(&qword_27FFA93F8, &qword_27FFA93E8, &qword_264CD25C8, MEMORY[0x277CBCDD0]);
    v6 = swift_task_alloc();
    *(v1 + 168) = v6;
    *v6 = v1;
    v6[1] = sub_264C6CB58;
    v7 = *(v1 + 104);

    return MEMORY[0x282200308](v1 + 184, v7, v5);
  }
}

uint64_t sub_264C6CEF8()
{
  *(v0 + 40) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9400, &unk_264CD25D0);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_264C6CF84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264C6EA28;

  return sub_264C6C7A4(a1, v4, v5, v6);
}

uint64_t sub_264C6D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380, &qword_264CD24E8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_264C6E7DC(a3, v25 - v10);
  v12 = sub_264CC477C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_264C6E84C(v11);
  }

  else
  {
    sub_264CC476C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264CC471C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_264CC45FC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_264C6E84C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_264C6E84C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_264C6D2F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380, &qword_264CD24E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_264CC477C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_264CC474C();

  v6 = sub_264CC473C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_264C6D038(0, 0, v4, &unk_264CD2508, v7);
}

uint64_t sub_264C6D41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_264CC49BC();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_264CC49CC();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  sub_264CC474C();
  v4[20] = sub_264CC473C();
  v8 = sub_264CC471C();
  v4[21] = v8;
  v4[22] = v7;

  return MEMORY[0x2822009F8](sub_264C6D578, v8, v7);
}

uint64_t sub_264C6D578(uint64_t a1, uint64_t a2)
{
  v6 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator_delay;
  *(v2 + 184) = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator_states;
  *(v2 + 192) = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (*(v2 + 57) == 1)
  {
    v7 = *(v2 + 184);
    v8 = *(v2 + 96);
    swift_beginAccess();
    v9 = *(v8 + v7);
    v10 = *(v9 + 2);
    if (v10)
    {
      v11 = *(v2 + 184);
      v12 = *(v2 + 96);
      v5 = *(v9 + 4);
      v7 = *(v9 + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + v11) = v9;
      if (!isUniquelyReferenced_nonNull_native || (v10 - 1) > *(v9 + 3) >> 1)
      {
        v14 = *(v2 + 184);
        v15 = *(v2 + 96);
        v9 = sub_264C9895C(isUniquelyReferenced_nonNull_native, v10, 1, v9);
        *(v15 + v14) = v9;
      }

      v16 = *(v2 + 184);
      v17 = *(v2 + 96);
      sub_264C6E740((v9 + 32));
      v18 = *(v9 + 2);
      memmove(v9 + 32, v9 + 48, 16 * v18 - 16);
      *(v9 + 2) = v18 - 1;
      *(v17 + v16) = v9;
      v4 = *(v9 + 2);
      v3 = *(v9 + 3);
      v10 = v4 + 1;

      if (v4 < v3 >> 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v9 = sub_264C9895C((v3 > 1), v10, 1, v9);
LABEL_7:
    v19 = *(v2 + 184);
    v20 = *(v2 + 96);
    v21 = (v20 + *(v2 + 192));
    *(v9 + 2) = v10;
    v22 = &v9[16 * v4];
    *(v22 + 4) = v5;
    *(v22 + 5) = v7;
    *(v20 + v19) = v9;
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v2 + 64) = v5;
    *(v2 + 72) = v7;

    sub_264CC393C();
    v24 = *v21;
    v23 = v21[1];
    sub_264CC4B0C();
    *(v2 + 80) = v24;
    *(v2 + 88) = v23;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 56) = 1;

    return MEMORY[0x2822009F8](sub_264C6D830, 0, 0);
  }

  v25 = *(v2 + 8);

  return v25();
}

uint64_t sub_264C6D830()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = sub_264C6E794(&qword_27FFA93D0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_264CC4AEC();
  sub_264C6E794(&qword_27FFA93D8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_264CC49DC();
  v5 = *(v2 + 8);
  v0[25] = v5;
  v0[26] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_264C6D9B4;
  v8 = v0[16];
  v7 = v0[17];

  return MEMORY[0x2822008C8](v8, v0 + 5, v7, v4);
}

uint64_t sub_264C6D9B4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[25];
    v4 = v2[16];
    v5 = v2[13];

    v3(v4, v5);
    v6 = sub_264C6DDCC;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = v2[18];
    v9 = v2[19];
    v11 = v2[17];
    (v2[25])(v2[16], v2[13]);
    (*(v10 + 8))(v9, v11);
    v7 = v2[21];
    v8 = v2[22];
    v6 = sub_264C6DB28;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_264C6DB28(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (*(v2 + 57) == 1)
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 96);
    swift_beginAccess();
    v8 = *(v7 + v6);
    v9 = *(v8 + 2);
    if (v9)
    {
      v10 = *(v2 + 184);
      v11 = *(v2 + 96);
      v5 = *(v8 + 4);
      v6 = *(v8 + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + v10) = v8;
      if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > *(v8 + 3) >> 1)
      {
        v13 = *(v2 + 184);
        v14 = *(v2 + 96);
        v8 = sub_264C9895C(isUniquelyReferenced_nonNull_native, v9, 1, v8);
        *(v14 + v13) = v8;
      }

      v15 = *(v2 + 184);
      v16 = *(v2 + 96);
      sub_264C6E740((v8 + 32));
      v17 = *(v8 + 2);
      memmove(v8 + 32, v8 + 48, 16 * v17 - 16);
      *(v8 + 2) = v17 - 1;
      *(v16 + v15) = v8;
      v4 = *(v8 + 2);
      v3 = *(v8 + 3);
      v9 = v4 + 1;

      if (v4 < v3 >> 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v8 = sub_264C9895C((v3 > 1), v9, 1, v8);
LABEL_7:
    v18 = *(v2 + 184);
    v19 = *(v2 + 96);
    v20 = (v19 + *(v2 + 192));
    *(v8 + 2) = v9;
    v21 = &v8[16 * v4];
    *(v21 + 4) = v5;
    *(v21 + 5) = v6;
    *(v19 + v18) = v8;
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v2 + 64) = v5;
    *(v2 + 72) = v6;

    sub_264CC393C();
    v23 = *v20;
    v22 = v20[1];
    sub_264CC4B0C();
    *(v2 + 80) = v23;
    *(v2 + 88) = v22;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 56) = 1;

    return MEMORY[0x2822009F8](sub_264C6D830, 0, 0);
  }

  v24 = *(v2 + 8);

  return v24();
}

uint64_t sub_264C6DDCC()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x2822009F8](sub_264C6EA24, v1, v2);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_264C6DE80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264C6DF34;

  return sub_264C6D41C(a1, v4, v5, v6);
}

uint64_t sub_264C6DF34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t STMicaAnimator.deinit()
{
  v1 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__currentState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9388, &qword_264CD2488);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__isAnimating;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10, &qword_264CD4170);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t STMicaAnimator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__currentState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9388, &qword_264CD2488);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20ScreenTimeSettingsUI14STMicaAnimator__isAnimating;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10, &qword_264CD4170);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_264C6E200@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for STMicaAnimator(0);
  result = sub_264CC38DC();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for STMicaAnimator(uint64_t a1)
{
  result = qword_27FFA93B0;
  if (!qword_27FFA93B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264C6E294(uint64_t a1)
{
  sub_264C6E504(319, &qword_27FFA93C0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_264C6E504(319, &qword_27FFA9E00, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_264C6E504(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_264CC394C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264C6E550(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_264C6E648;

  return v6(a1);
}

uint64_t sub_264C6E648()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264C6E794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264C6E7DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380, &qword_264CD24E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264C6E84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380, &qword_264CD24E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264C6E8B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264C6EA28;

  return sub_264C6E550(a1, v4);
}

uint64_t sub_264C6E96C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264C6DF34;

  return sub_264C6E550(a1, v4);
}

uint64_t DeviceDetails.coreDuetIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_coreDuetIdentifier);

  return v1;
}

uint64_t DeviceDetails.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_identifier);

  return v1;
}

id sub_264C6EAC8(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_264CC459C();

  return v3;
}

uint64_t DeviceDetails.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_name);

  return v1;
}

uint64_t DeviceDetails.lastUpdatedDate.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_lastUpdatedDate;
  v5 = sub_264CC2FCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id DeviceDetails.__allocating_init(coreDuetIdentifier:identifier:name:platform:isLocalDevice:lastUpdatedDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, char a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_coreDuetIdentifier];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_identifier];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_name];
  *v21 = a5;
  v21[1] = a6;
  *&v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_platform] = a7;
  v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_isLocalDevice] = a8;
  v22 = OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_lastUpdatedDate;
  v23 = sub_264CC2FCC();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v18[v22], a9, v23);
  v27.receiver = v18;
  v27.super_class = v9;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  (*(v24 + 8))(a9, v23);
  return v25;
}

id DeviceDetails.init(coreDuetIdentifier:identifier:name:platform:isLocalDevice:lastUpdatedDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, char a8, uint64_t a9)
{
  v10 = &v9[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_coreDuetIdentifier];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v9[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_identifier];
  *v11 = a3;
  v11[1] = a4;
  v12 = &v9[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_name];
  *v12 = a5;
  v12[1] = a6;
  *&v9[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_platform] = a7;
  v9[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_isLocalDevice] = a8;
  v13 = OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_lastUpdatedDate;
  v14 = sub_264CC2FCC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v9[v13], a9, v14);
  v18.receiver = v9;
  v18.super_class = type metadata accessor for DeviceDetails(0);
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v15 + 8))(a9, v14);
  return v16;
}

uint64_t type metadata accessor for DeviceDetails(uint64_t a1)
{
  result = qword_27FFA9430;
  if (!qword_27FFA9430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DeviceDetails.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceDetails(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264C6F3F4()
{
  qword_27FFAC270 = sub_264CC37BC();
  unk_27FFAC278 = &off_28766BE48;
  __swift_allocate_boxed_opaque_existential_1(qword_27FFAC258);
  return sub_264CC32CC();
}

uint64_t sub_264C6F434()
{
  qword_27FFAC298 = sub_264CC335C();
  unk_27FFAC2A0 = &off_28766BE58;
  __swift_allocate_boxed_opaque_existential_1(qword_27FFAC280);
  return sub_264CC334C();
}

uint64_t sub_264C6F474(uint64_t a1, uint64_t a2)
{
  v90 = sub_264CC2FCC();
  v106 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFA9440, &qword_264CD26B0);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v76 - v7;
  MEMORY[0x28223BE20](v9);
  v88 = v76 - v10;
  v101 = sub_264CC31FC();
  v105 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264CC329C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v87 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v93 = v76 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v76 - v19;
  v110 = MEMORY[0x277D84F90];
  if (qword_27FFA8FD8 != -1)
  {
    swift_once();
  }

  sub_264C6A834(qword_27FFAC280, &v108);
  __swift_project_boxed_opaque_existential_1(&v108, v109);
  v21 = sub_264CC333C();
  if (v2)
  {

    v83 = 0;
    v91 = 0;
  }

  else
  {
    v83 = v21;
    v91 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v108);
  if (qword_27FFA8FD0 != -1)
  {
    swift_once();
  }

  sub_264C6A834(qword_27FFAC258, &v108);
  __swift_project_boxed_opaque_existential_1(&v108, v109);
  v23 = sub_264CC379C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v108);
  v25 = *(v23 + 16);
  if (!v25)
  {

    v74 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v76[1] = 0;
  v27 = v14 + 16;
  v26 = *(v14 + 16);
  v28 = (*(v27 + 64) + 32) & ~*(v27 + 64);
  v76[0] = v23;
  v29 = v23 + v28;
  v86 = (v106 + 16);
  v99 = *(v27 + 56);
  v80 = *MEMORY[0x277CC57F8];
  v79 = *MEMORY[0x277CC57F0];
  v78 = *MEMORY[0x277CC57E8];
  v77 = *MEMORY[0x277CC57E0];
  v85 = (v106 + 8);
  v97 = (v27 - 8);
  v98 = (v105 + 8);
  v96 = MEMORY[0x277D84F90];
  *&v24 = 136446210;
  v81 = v24;
  v92 = v8;
  v100 = v12;
  v104 = v27;
  v105 = v13;
  v103 = v26;
  v82 = v20;
  do
  {
    v106 = v25;
    v26(v20, v29, v13);
    sub_264CC328C();
    v31 = sub_264CC31CC();
    if (v32)
    {
      v33 = v31;
      v34 = v32;
      v35 = sub_264CC31DC();
      if (v36)
      {
        v37 = v36;
        v102 = v35;
        v38 = sub_264CC31BC();
        v95 = v39;
        v96 = v38;
        sub_264CC31EC();
        v40 = v88;
        sub_264CC32EC();
        sub_264C70078(v40, v8);
        v41 = sub_264CC32FC();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v8, 1, v41) == 1)
        {
LABEL_16:
          v94 = 0;
LABEL_34:
          sub_264C700E8(v8);
          v62 = sub_264CC31BC();
          if (v91)
          {
            if (v62 == v83 && v91 == v63)
            {
              v64 = 1;
            }

            else
            {
              v64 = sub_264CC4AAC();
            }
          }

          else
          {
            v64 = 0;
          }

          v65 = v89;
          sub_264CC327C();
          v66 = type metadata accessor for DeviceDetails(0);
          v67 = objc_allocWithZone(v66);
          v68 = &v67[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_coreDuetIdentifier];
          *v68 = v33;
          v68[1] = v34;
          v69 = &v67[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_identifier];
          v70 = v95;
          *v69 = v96;
          v69[1] = v70;
          v71 = &v67[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_name];
          *v71 = v102;
          v71[1] = v37;
          *&v67[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_platform] = v94;
          v67[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_isLocalDevice] = v64 & 1;
          v72 = v90;
          (*v86)(&v67[OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_lastUpdatedDate], v65, v90);
          v107.receiver = v67;
          v107.super_class = v66;
          objc_msgSendSuper2(&v107, sel_init, v76[0]);
          v73 = (*v85)(v65, v72);
          MEMORY[0x26674B340](v73);
          if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_264CC46BC();
          }

          sub_264CC46DC();
          v12 = v100;
          (*v98)(v100, v101);
          v13 = v105;
          (*v97)(v20, v105);
          v96 = v110;
          v8 = v92;
          goto LABEL_12;
        }

        v57 = v84;
        sub_264C70150(v8, v84);
        v58 = (*(v42 + 88))(v57, v41);
        if (v58 == v80 || v58 == v79 || v58 == v78)
        {
          v61 = 2;
        }

        else
        {
          if (v58 != v77)
          {
            (*(v42 + 8))(v84, v41);
            goto LABEL_16;
          }

          v61 = 1;
        }

        v94 = v61;
        goto LABEL_34;
      }

      v26 = v103;
    }

    v102 = v29;
    if (qword_27FFA9008 != -1)
    {
      swift_once();
    }

    v43 = sub_264CC387C();
    __swift_project_value_buffer(v43, qword_27FFAC2C8);
    v44 = v93;
    v26(v93, v20, v13);
    v45 = sub_264CC385C();
    v46 = v26;
    v47 = sub_264CC47FC();
    if (os_log_type_enabled(v45, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v108 = v49;
      *v48 = v81;
      v46(v87, v44, v13);
      v50 = sub_264CC45EC();
      v52 = v51;
      v53 = *v97;
      (*v97)(v44, v105);
      v54 = sub_264C85E3C(v50, v52, &v108);
      v8 = v92;

      *(v48 + 4) = v54;
      _os_log_impl(&dword_264BA2000, v45, v47, "Skipping device without Core Duet identifier or name: %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      v55 = v49;
      v12 = v100;
      MEMORY[0x26674C780](v55, -1, -1);
      v56 = v48;
      v20 = v82;
      MEMORY[0x26674C780](v56, -1, -1);

      (*v98)(v12, v101);
      v53(v20, v105);
      v13 = v105;
    }

    else
    {

      v30 = *v97;
      (*v97)(v44, v13);
      (*v98)(v12, v101);
      v30(v20, v13);
    }

    v29 = v102;
LABEL_12:
    v29 += v99;
    v25 = v106 - 1;
    v26 = v103;
  }

  while (v106 != 1);

  v74 = v96;
LABEL_46:

  return v74;
}

uint64_t sub_264C6FF3C(uint64_t a1, uint64_t a2)
{
  result = sub_264CC2FCC();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_264C70078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFA9440, &qword_264CD26B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264C700E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFA9440, &qword_264CD26B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264C70150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFA9440, &qword_264CD26B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264C701C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_264C7021C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_264C70264(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_264C70348@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v4 = sub_264CC477C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = sub_264CC3D9C();
  v10 = sub_264C713C4(v7, v8, v9);
  v11 = *(a1 + 24);
  v44 = v10;
  v45 = v11;
  swift_getWitnessTable();
  v12 = sub_264CC432C();
  v33 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  sub_264CC3ACC();
  v15 = sub_264CC3B5C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v32 = &v32 - v20;
  v38 = v6;
  v39 = v11;
  v40 = v2;
  sub_264CC3D2C();
  sub_264CC431C();
  v48 = *v2;
  v21 = *(v2 + 6);
  v46 = *(v2 + 7);
  v47 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = v11;
  v23 = v2[1];
  *(v22 + 32) = *v2;
  *(v22 + 48) = v23;
  v24 = v2[3];
  *(v22 + 64) = v2[2];
  *(v22 + 80) = v24;
  sub_264C714CC(&v48, v43);

  sub_264C6467C(&v47, v43, &qword_27FFA94E0, &qword_264CD27B0);
  sub_264C6467C(&v46, v43, &qword_27FFA94E8, &qword_264CD27B8);
  WitnessTable = swift_getWitnessTable();
  v26 = v34;
  sub_264CC475C();
  sub_264CC40EC();

  (*(v35 + 8))(v26, v36);
  (*(v33 + 8))(v14, v12);
  v27 = sub_264C71528();
  v41 = WitnessTable;
  v42 = v27;
  swift_getWitnessTable();
  v28 = *(v16 + 16);
  v29 = v32;
  v28(v32, v18, v15);
  v30 = *(v16 + 8);
  v30(v18, v15);
  v28(v37, v29, v15);
  return (v30)(v29, v15);
}

uint64_t sub_264C70780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = sub_264CC3D9C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v37 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94F0, &qword_264CD27C8);
  v17 = sub_264CC425C();
  v20 = v41;
  if (v41)
  {
    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    *&v37 = v41;
    *(&v37 + 1) = v21;
    v38 = v22;
    v23 = sub_264C713C4(v17, v18, v19);
    v24 = v36;
    sub_264C70A68(&v37, &type metadata for AppIconImage, a2, v23, v36);
  }

  else
  {
    (*(a1 + 32))(v17);
    v28 = *(v7 + 16);
    v28(v12, v9, a2);
    v35 = a4;
    v29 = *(v7 + 8);
    v29(v9, a2);
    v30 = (v28)(v9, v12, a2);
    v33 = sub_264C713C4(v30, v31, v32);
    v24 = v36;
    sub_264C70B60(v9, &type metadata for AppIconImage, a2, v33, v36);
    v29(v9, a2);
    v25 = (v29)(v12, a2);
    a4 = v35;
  }

  v39 = sub_264C713C4(v25, v26, v27);
  v40 = v24;
  swift_getWitnessTable();
  (*(v14 + 16))(a4, v16, v13);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_264C70A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_264CC3D7C();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_264CC3D8C();
}

uint64_t sub_264C70B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_264CC3D7C();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_264CC3D8C();
}

uint64_t sub_264C70C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = sub_264CC474C();
  v3[7] = sub_264CC473C();
  v6 = swift_task_alloc();
  v3[8] = v6;
  type metadata accessor for AppIcon(0, a2, a3, v7);
  *v6 = v3;
  v6[1] = sub_264C70D2C;

  return sub_264C70F0C();
}

uint64_t sub_264C70D2C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C70E70, v3, v2);
}

uint64_t sub_264C70E70()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + 48);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94F0, &qword_264CD27C8);
  sub_264CC426C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264C70F0C()
{
  v1[19] = v0;
  sub_264CC474C();
  v1[20] = sub_264CC473C();
  v3 = sub_264CC471C();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x2822009F8](sub_264C70FA4, v3, v2);
}

uint64_t sub_264C70FA4()
{
  v1 = [objc_opt_self() sharedCache];
  v0[23] = v1;
  v2 = sub_264CC459C();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_264C71104;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94F8, &qword_264CD27D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264C71288;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 imageForBundleIdentifier:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264C71104()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_264C7120C, v2, v1);
}

uint64_t sub_264C7120C()
{
  v2 = v0[23];
  v1 = v0[24];

  v3 = v0[18];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_264C71288(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_264C71328@<X0>(uint64_t *a1@<X8>)
{
  sub_264CC414C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94C8, &qword_264CD2798);
  sub_264C64918(&qword_27FFA94D0, &qword_27FFA94C8, &qword_264CD2798, MEMORY[0x277CDF3A0]);
  result = sub_264CC433C();
  *a1 = result;
  return result;
}

unint64_t sub_264C713C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FFA94D8;
  if (!qword_27FFA94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA94D8);
  }

  return result;
}

uint64_t sub_264C71424()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264C6DF34;

  return sub_264C70C58(v0 + 32, v2, v3);
}

unint64_t sub_264C71528()
{
  result = qword_27FFA9048;
  if (!qword_27FFA9048)
  {
    sub_264CC3ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9048);
  }

  return result;
}

uint64_t sub_264C71590(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_264C71638(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_264C71680(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_264C716EC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_264CC41FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  sub_264CC41DC();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v13 = sub_264CC420C();
  (*(v9 + 8))(v11, v8);
  if (a3)
  {
    v18 = v13;
    v19 = 0;
    v20 = 1;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9500, &qword_264CD2858);
    sub_264C64918(&qword_27FFA9508, &qword_27FFA9500, &qword_264CD2858, MEMORY[0x277CDF7D8]);
    sub_264CC3D8C();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a2;
    v18 = sub_264C71994;
    v19 = v14;
    v20 = 0;
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9500, &qword_264CD2858);
    sub_264C64918(&qword_27FFA9508, &qword_27FFA9500, &qword_264CD2858, MEMORY[0x277CDF7D8]);
    sub_264CC3D8C();
  }

  result = *&v21;
  v16 = v22;
  *a4 = v21;
  *(a4 + 16) = v16;
  return result;
}

unint64_t sub_264C719A0()
{
  result = qword_27FFA9510;
  if (!qword_27FFA9510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9518, &unk_264CD2860);
    sub_264C64918(&qword_27FFA9508, &qword_27FFA9500, &qword_264CD2858, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9510);
  }

  return result;
}

id STAllActivityViewController.__allocating_init(userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(v4);
  sub_264CC380C();
  swift_allocObject();
  *&v5[OBJC_IVAR____TtC20ScreenTimeSettingsUI27STAllActivityViewController_bridge] = sub_264CC37FC();
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id STAllActivityViewController.init(userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_264CC380C();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC20ScreenTimeSettingsUI27STAllActivityViewController_bridge] = sub_264CC37FC();
  v7.receiver = v4;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall STAllActivityViewController.update(userAltDSID:deviceIdentifier:)(Swift::String_optional userAltDSID, Swift::String_optional deviceIdentifier)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9528, &qword_264CD2880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;

  sub_264CC37CC();
  v5 = sub_264CC37DC();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_264CC37EC();
}

Swift::Void __swiftcall STAllActivityViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_264CC382C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v40 - v9;
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, sel_viewDidLoad, v8);

  sub_264CC381C();
  (*(v4 + 16))(v6, v10, v3);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9530, &qword_264CD2888));
  v12 = sub_264CC3D5C();
  [v1 addChildViewController_];
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = v15;
  v40 = v4;
  v41 = v3;
  [v15 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D00, qword_264CD2890);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_264CD2870;
  v18 = [v14 topAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v17 + 32) = v22;
  v23 = [v14 bottomAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v17 + 40) = v27;
  v28 = [v14 leadingAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v30 = v29;
  v31 = [v29 leadingAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v17 + 48) = v32;
  v33 = [v14 trailingAnchor];
  v34 = [v1 view];
  if (v34)
  {
    v35 = v34;
    v36 = objc_opt_self();
    v37 = [v35 trailingAnchor];

    v38 = [v33 constraintEqualToAnchor_];
    *(v17 + 56) = v38;
    sub_264C723C0();
    v39 = sub_264CC468C();

    [v36 activateConstraints_];

    [v12 didMoveToParentViewController_];
    (*(v40 + 8))(v10, v41);
    return;
  }

LABEL_13:
  __break(1u);
}

unint64_t sub_264C723C0()
{
  result = qword_27FFA9538;
  if (!qword_27FFA9538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFA9538);
  }

  return result;
}

id STAllActivityViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_264CC459C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id STAllActivityViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264C725E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_264C72640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_264C726C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_264C72708(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_264C72774@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9540, &qword_264CD2AF8);
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v2 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9548, &qword_264CD2B00);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9550, &qword_264CD2B08);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - v7;
  type metadata accessor for SettingsPresetViewModel(0);
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel, &protocol conformance descriptor for SettingsPresetViewModel);
  v9 = sub_264CC3A0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (v22 == 1)
  {
    sub_264CC3A4C();
    v10 = v19;
    (*(v6 + 16))(v5, v8, v19);
    swift_storeEnumTagMultiPayload();
    sub_264C64918(&qword_27FFA9560, &qword_27FFA9550, &qword_264CD2B08, MEMORY[0x277CDD7F8]);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9050, &qword_264CD1C58);
    v12 = sub_264C77588();
    v22 = v11;
    v23 = v12;
    swift_getOpaqueTypeConformance2();
    sub_264CC3D8C();
    return (*(v6 + 8))(v8, v10);
  }

  else
  {
    sub_264C72B80(v2);
    v14 = v18;
    v15 = v21;
    (*(v18 + 16))(v5, v2, v21);
    swift_storeEnumTagMultiPayload();
    sub_264C64918(&qword_27FFA9560, &qword_27FFA9550, &qword_264CD2B08, MEMORY[0x277CDD7F8]);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9050, &qword_264CD1C58);
    v17 = sub_264C77588();
    v22 = v16;
    v23 = v17;
    swift_getOpaqueTypeConformance2();
    sub_264CC3D8C();
    return (*(v14 + 8))(v2, v15);
  }
}

uint64_t sub_264C72B80@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9050, &qword_264CD1C58) - 8);
  MEMORY[0x28223BE20](v42);
  v3 = &v38 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9570, &qword_264CD2B60);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9580, &qword_264CD2B68);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v44 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9598, &qword_264CD2B70);
  sub_264C64918(&qword_27FFA95A0, &qword_27FFA9598, &qword_264CD2B70, MEMORY[0x277CE14C0]);
  sub_264CC3F4C();
  sub_264C64918(&qword_27FFA9588, &qword_27FFA9580, &qword_264CD2B68, MEMORY[0x277CDE580]);
  sub_264CC40CC();
  (*(v8 + 8))(v10, v7);
  *&v6[*(v4 + 36)] = 256;
  sub_264C77650();
  sub_264CC40BC();
  sub_264BA57D0(v6);
  v49[0] = *(v1 + 24);
  v46[0] = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95A8, &qword_264CD2B78);
  sub_264CC427C();
  v11 = v47;
  v12 = v48;
  v47 = *v1;
  v48 = *(v1 + 16);
  v13 = swift_allocObject();
  v14 = v1[1];
  *(v13 + 16) = *v1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v1 + 4);
  v15 = *(v42 + 11);
  v42 = v3;
  v16 = &v3[v15];
  *v16 = v11;
  v16[16] = v12;
  *(v16 + 3) = &unk_264CD2B88;
  *(v16 + 4) = v13;
  sub_264CC474C();
  sub_264C6467C(&v47, v46, &qword_27FFA95B0, &qword_264CD2B98);
  sub_264C6467C(v49, v46, &qword_27FFA95A8, &qword_264CD2B78);
  sub_264C6467C(&v47, v46, &qword_27FFA95B0, &qword_264CD2B98);
  sub_264C6467C(v49, v46, &qword_27FFA95A8, &qword_264CD2B78);
  v17 = sub_264CC473C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = v1[1];
  *(v18 + 32) = *v1;
  *(v18 + 48) = v20;
  *(v18 + 64) = *(v1 + 4);
  v21 = sub_264CC477C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v38 - v24;
  sub_264CC475C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v40 = sub_264CC3B2C();
    v41 = &v38;
    v39 = *(v40 - 8);
    MEMORY[0x28223BE20](v40);
    v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v46[0] = 0;
    *(&v46[0] + 1) = 0xE000000000000000;
    sub_264CC492C();

    *&v46[0] = 0xD00000000000003BLL;
    *(&v46[0] + 1) = 0x8000000264CE10A0;
    v45 = 190;
    v28 = sub_264CC4A7C();
    MEMORY[0x26674B2E0](v28);

    v30 = MEMORY[0x28223BE20](v29);
    (*(v22 + 16))(&v38 - v24, v25, v21, v30);
    sub_264CC3B1C();
    (*(v22 + 8))(v25, v21);
    v31 = v43;
    sub_264BA58C8(v42, v43);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9058, &unk_264CD1C60);
    return (*(v39 + 32))(v31 + *(v32 + 36), v27, v40);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9060, &qword_264CD2BB0);
    v35 = v43;
    v36 = (v43 + *(v34 + 36));
    v37 = sub_264CC3ACC();
    (*(v22 + 32))(&v36[*(v37 + 20)], &v38 - v24, v21);
    *v36 = &unk_264CD2BA0;
    *(v36 + 1) = v18;
    return sub_264BA58C8(v42, v35);
  }
}

uint64_t sub_264C73204(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  __dst[0] = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95A8, &qword_264CD2B78);
  sub_264CC427C();
  v55 = v94[1];
  v56 = v94[0];
  v53 = v94[2];
  type metadata accessor for SettingsPresetViewModel(0);
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel, &protocol conformance descriptor for SettingsPresetViewModel);
  sub_264CC3A0C();
  v5 = sub_264CC3A0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v52 = v94[1];
  v6 = sub_264CC3AEC();
  v50 = v7;
  v51 = v6;
  sub_264C73B28(&v72);
  sub_264C73E44(v2, __src);
  sub_264C75080(v2, v83);
  sub_264C760F0(v84);
  sub_264C76BDC(&v62);
  v48 = objc_opt_self();
  v8 = [v48 bundle];
  sub_264CC3CFC();
  LOWORD(v47) = 256;
  v9 = sub_264CC3FAC();
  v11 = v10;
  v13 = v12;
  sub_264CC3F2C();
  v14 = sub_264CC3F9C();
  v16 = v15;
  v18 = v17;

  sub_264C64798(v9, v11, v13 & 1);

  sub_264CC41AC();
  v19 = sub_264CC3F5C();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_264C64798(v14, v16, v18 & 1);

  *&v70 = v19;
  *(&v70 + 1) = v21;
  LOBYTE(v71) = v23 & 1;
  *(&v71 + 1) = v25;
  v26 = [v48 bundle];
  sub_264CC3CFC();
  v27 = sub_264CC3FAC();
  v29 = v28;
  LOBYTE(v14) = v30;
  sub_264CC3F2C();
  v31 = sub_264CC3F9C();
  v33 = v32;
  v35 = v34;

  sub_264C64798(v27, v29, v14 & 1);

  sub_264CC41AC();
  v36 = sub_264CC3F5C();
  v49 = v37;
  LOBYTE(v14) = v38;
  v40 = v39;

  sub_264C64798(v31, v33, v35 & 1);

  v85[8] = v80;
  v86[0] = v81[0];
  *(v86 + 9) = *(v81 + 9);
  v85[4] = v76;
  v85[5] = v77;
  v85[7] = v79;
  v85[6] = v78;
  v85[0] = v72;
  v85[1] = v73;
  v85[3] = v75;
  v85[2] = v74;
  *(&v61[7] + 7) = v79;
  *(&v61[8] + 7) = v80;
  *(&v61[9] + 7) = v81[0];
  v61[10] = *(v81 + 9);
  *(&v61[3] + 7) = v75;
  *(&v61[4] + 7) = v76;
  *(&v61[5] + 7) = v77;
  *(&v61[6] + 7) = v78;
  *(v61 + 7) = v72;
  *(&v61[1] + 7) = v73;
  *(&v61[2] + 7) = v74;
  memcpy(__dst, __src, 0x2A1uLL);
  memcpy(&v60[7], __src, 0x2A1uLL);
  memcpy(v88, v83, 0x1A9uLL);
  memcpy(&v59[7], v83, 0x1A9uLL);
  memcpy(v89, v84, 0x179uLL);
  memcpy(&v58[7], v84, 0x179uLL);
  v90[6] = v68;
  v90[7] = v69;
  v90[8] = v70;
  v90[9] = v71;
  v90[2] = v64;
  v90[3] = v65;
  v90[4] = v66;
  v90[5] = v67;
  v90[0] = v62;
  v90[1] = v63;
  *&v57[103] = v68;
  *&v57[119] = v69;
  *&v57[135] = v70;
  *&v57[151] = v71;
  *&v57[39] = v64;
  *&v57[55] = v65;
  *&v57[71] = v66;
  *&v57[87] = v67;
  *&v57[7] = v62;
  *&v57[23] = v63;
  v41 = v61[6];
  *(v4 + 153) = v61[7];
  v42 = v61[9];
  *(v4 + 169) = v61[8];
  *(v4 + 185) = v42;
  *(v4 + 201) = v61[10];
  v43 = v61[2];
  *(v4 + 89) = v61[3];
  v44 = v61[5];
  *(v4 + 105) = v61[4];
  *(v4 + 121) = v44;
  *(v4 + 137) = v41;
  v45 = v61[1];
  *(v4 + 41) = v61[0];
  *(v4 + 57) = v45;
  *v4 = v56;
  *(v4 + 8) = v55;
  *(v4 + 16) = v53;
  *(v4 + 24) = v51;
  *(v4 + 32) = v50;
  *(v4 + 40) = v52;
  *(v4 + 73) = v43;
  memcpy((v4 + 217), v60, 0x2A8uLL);
  memcpy((v4 + 897), v59, 0x1B0uLL);
  memcpy((v4 + 1329), v58, 0x180uLL);
  *(v4 + 1841) = *&v57[128];
  *(v4 + 1857) = *&v57[144];
  *(v4 + 1872) = *&v57[159];
  *(v4 + 1777) = *&v57[64];
  *(v4 + 1793) = *&v57[80];
  *(v4 + 1809) = *&v57[96];
  *(v4 + 1825) = *&v57[112];
  *(v4 + 1713) = *v57;
  *(v4 + 1729) = *&v57[16];
  *(v4 + 1745) = *&v57[32];
  *(v4 + 1761) = *&v57[48];
  *(v4 + 1880) = v36;
  *(v4 + 1888) = v49;
  *(v4 + 1896) = v14 & 1;
  *(v4 + 1904) = v40;

  v54 = v50;
  sub_264C6467C(v85, v94, &qword_27FFA95B8, &qword_264CD2C00);
  sub_264C6467C(__dst, v94, &qword_27FFA95C0, &qword_264CD2C08);
  sub_264C6467C(v88, v94, &qword_27FFA95C8, &qword_264CD2C10);
  sub_264C6467C(v89, v94, &qword_27FFA95D0, &qword_264CD2C18);
  sub_264C6467C(v90, v94, &qword_27FFA95D8, &qword_264CD2C20);
  sub_264C63D0C(v36, v49, v14 & 1);

  sub_264C64798(v36, v49, v14 & 1);

  v91[6] = v68;
  v91[7] = v69;
  v91[8] = v70;
  v91[9] = v71;
  v91[2] = v64;
  v91[3] = v65;
  v91[4] = v66;
  v91[5] = v67;
  v91[0] = v62;
  v91[1] = v63;
  sub_264C646E4(v91, &qword_27FFA95D8, &qword_264CD2C20);
  memcpy(v92, v84, 0x179uLL);
  sub_264C646E4(v92, &qword_27FFA95D0, &qword_264CD2C18);
  memcpy(v93, v83, 0x1A9uLL);
  sub_264C646E4(v93, &qword_27FFA95C8, &qword_264CD2C10);
  memcpy(v94, __src, 0x2A1uLL);
  sub_264C646E4(v94, &qword_27FFA95C0, &qword_264CD2C08);
  v95[8] = v80;
  v96[0] = v81[0];
  *(v96 + 9) = *(v81 + 9);
  v95[4] = v76;
  v95[5] = v77;
  v95[7] = v79;
  v95[6] = v78;
  v95[0] = v72;
  v95[1] = v73;
  v95[3] = v75;
  v95[2] = v74;
  sub_264C646E4(v95, &qword_27FFA95B8, &qword_264CD2C00);
}

__n128 sub_264C73B28@<Q0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() bundle];
  sub_264CC3CFC();
  v4 = sub_264CC3FAC();
  v25 = v5;
  v26 = v4;
  v23 = v6;
  v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94E0, &qword_264CD27B0);
  sub_264CC424C();
  v22 = sub_264CC415C();
  v21 = sub_264C86E90();
  v8 = sub_264CC45DC();
  v10 = v9;
  v20 = v8;
  type metadata accessor for SettingsPresetViewModel(0);
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel, &protocol conformance descriptor for SettingsPresetViewModel);
  v11 = sub_264CC3A0C();
  sub_264CC474C();

  v12 = sub_264CC473C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v15 = v14;
  v13[4] = v11;
  v13[5] = v20;
  v13[6] = v10;
  v16 = sub_264CC3A0C();
  v17 = sub_264CC473C();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v15;
  v18[4] = v16;
  v18[5] = v20;
  v18[6] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D70, &qword_264CD2CC0);
  sub_264CC437C();
  result = v27;
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v24;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0xD000000000000016;
  *(a2 + 72) = 0x8000000264CE1360;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 96) = sub_264C71328;
  *(a2 + 104) = 0;
  *(a2 + 112) = v27;
  *(a2 + 128) = v22;
  *(a2 + 136) = v21;
  *(a2 + 144) = v27;
  *(a2 + 160) = v28;
  *(a2 + 168) = v29;
  return result;
}

uint64_t sub_264C73E44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v99 = a2;
  v105 = sub_264CC411C();
  v136 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = objc_opt_self();
  v4 = [v135 bundle];
  sub_264CC3CFC();
  v5 = sub_264CC3FAC();
  v129 = v6;
  v130 = v5;
  v119 = v7;
  v131 = v8;
  v132 = 0x8000000264CE12C0;
  *&v153 = 0;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA94E0, &qword_264CD27B0);
  sub_264CC424C();
  v127 = v249;
  v128 = v248;
  v150 = 1;
  v126 = sub_264CC415C();
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v12 = *a1;
  LODWORD(v133) = *(a1 + 16);
  v125 = sub_264C87070(v12, v10, v11);
  v124 = sub_264CC45DC();
  v14 = v13;
  v15 = type metadata accessor for SettingsPresetViewModel(0);
  v16 = sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel, &protocol conformance descriptor for SettingsPresetViewModel);
  v137 = v9;
  v134 = v10;
  v101 = v16;
  v102 = v15;
  v17 = sub_264CC3A0C();
  sub_264CC474C();

  v18 = sub_264CC473C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v21 = v124;
  v19[5] = v124;
  v19[6] = v14;
  v22 = v133;
  v23 = sub_264CC3A0C();
  v24 = sub_264CC473C();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = MEMORY[0x277D85700];
  v25[4] = v23;
  v25[5] = v21;
  v25[6] = v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D70, &qword_264CD2CC0);
  sub_264CC437C();
  v123 = v249;
  v124 = v248;
  v122 = v250;
  v121 = v251;
  v120 = v150;
  LOBYTE(v153) = v251;
  v119 &= 1u;
  LOBYTE(v248) = v119;
  v26 = [v135 bundle];
  sub_264CC3CFC();
  v27 = sub_264CC3FAC();
  v116 = v28;
  v117 = v27;
  v111 = v29;
  v118 = v30;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9608, &qword_264CD2C98);
  v31 = swift_allocObject();
  v100 = xmmword_264CD21F0;
  *(v31 + 16) = xmmword_264CD21F0;
  v34 = v136 + 104;
  v33 = *(v136 + 104);
  v36 = v104;
  v35 = v105;
  LODWORD(v96) = *MEMORY[0x277CE0EE0];
  v32 = v96;
  v33(v104, v96, v105);
  v97 = v33;
  v136 = v34;
  *(v31 + 32) = sub_264CC41BC();
  v33(v36, v32, v35);
  *(v31 + 40) = sub_264CC41BC();
  sub_264CC44BC();
  sub_264CC44CC();
  MEMORY[0x26674B120](v31);
  sub_264CC3ADC();
  v115 = sub_264C87088(v137, v134, v22);
  v114 = sub_264CC45DC();
  v38 = v37;
  v112 = sub_264CC3A0C();
  v113 = v38;

  v39 = sub_264CC473C();
  v40 = swift_allocObject();
  v40[2] = v39;
  v41 = v112;
  v40[3] = MEMORY[0x277D85700];
  v40[4] = v41;
  v42 = v114;
  v40[5] = v114;
  v40[6] = v38;
  v43 = sub_264CC3A0C();
  v44 = sub_264CC473C();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = MEMORY[0x277D85700];
  v45[4] = v43;
  v46 = v113;
  v45[5] = v42;
  v45[6] = v46;
  sub_264CC437C();
  v113 = v249;
  v114 = v248;
  v112 = v250;
  v107 = v251;
  LOBYTE(v153) = v251;
  v111 &= 1u;
  LOBYTE(v248) = v111;
  v47 = [v135 bundle];
  sub_264CC3CFC();
  v48 = sub_264CC3FAC();
  v109 = v49;
  v110 = v48;
  LODWORD(v95) = v50;
  v108 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = v100;
  v53 = v104;
  v54 = v105;
  v55 = v96;
  v56 = v97;
  v97(v104, v96, v105);
  *(v52 + 32) = sub_264CC41BC();
  v56(v53, v55, v54);
  *(v52 + 40) = sub_264CC41BC();
  sub_264CC44BC();
  sub_264CC44CC();
  MEMORY[0x26674B120](v52);
  sub_264CC3ADC();
  v105 = sub_264C870A0(v137, v134, v133);
  v136 = sub_264CC45DC();
  v58 = v57;
  v104 = sub_264CC3A0C();

  v59 = sub_264CC473C();
  v60 = swift_allocObject();
  v60[2] = v59;
  v61 = v104;
  v60[3] = MEMORY[0x277D85700];
  v60[4] = v61;
  v62 = v136;
  v60[5] = v136;
  v60[6] = v58;
  v63 = sub_264CC3A0C();
  v64 = sub_264CC473C();
  v65 = swift_allocObject();
  v65[2] = v64;
  v65[3] = MEMORY[0x277D85700];
  v65[4] = v63;
  v65[5] = v62;
  v65[6] = v58;
  sub_264CC437C();
  v104 = v248;
  v136 = v249;
  v106 = v250;
  LODWORD(v100) = v251;
  LOBYTE(v153) = v251;
  LODWORD(v103) = v95 & 1;
  LOBYTE(v248) = v95 & 1;
  v66 = [v135 bundle];
  sub_264CC3CFC();
  v67 = sub_264CC3FAC();
  v92 = v68;
  v93 = v67;
  v91 = v69;
  v135 = v70;
  v97 = 0x8000000264CE1320;
  *&v153 = 0;
  sub_264CC424C();
  v98 = v248;
  v96 = v249;
  v152 = 1;
  v95 = sub_264CC415C();
  v94 = sub_264C87218();
  v71 = sub_264CC45DC();
  v90 = v71;
  v73 = v72;
  v89 = sub_264CC3A0C();

  v74 = sub_264CC473C();
  v75 = swift_allocObject();
  v75[2] = v74;
  v76 = v89;
  v75[3] = MEMORY[0x277D85700];
  v75[4] = v76;
  v75[5] = v71;
  v75[6] = v73;
  v77 = sub_264CC3A0C();
  v78 = sub_264CC473C();
  v79 = swift_allocObject();
  v79[2] = v78;
  v79[3] = MEMORY[0x277D85700];
  v79[4] = v77;
  v79[5] = v90;
  v79[6] = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E0, &qword_264CD2C28);
  sub_264CC437C();
  v133 = v249;
  v134 = v248;
  LODWORD(v101) = v152;
  LOBYTE(v248) = v91 & 1;
  LODWORD(v137) = v91 & 1;
  *&v153 = v130;
  *(&v153 + 1) = v129;
  LOBYTE(v154) = v119;
  *(&v154 + 1) = *v142;
  DWORD1(v154) = *&v142[3];
  *(&v154 + 1) = v131;
  v155 = 0u;
  v156 = 0u;
  *&v157 = 0xD000000000000012;
  *(&v157 + 1) = v132;
  *&v158 = 0;
  BYTE8(v158) = v120;
  HIDWORD(v158) = *&v149[3];
  *(&v158 + 9) = *v149;
  v159 = sub_264C71328;
  v160 = 0;
  *&v161 = v128;
  *(&v161 + 1) = v127;
  *&v162 = v126;
  *(&v162 + 1) = v125;
  *&v163[0] = v124;
  *(&v163[0] + 1) = v123;
  *&v163[1] = v122;
  BYTE8(v163[1]) = v121;
  *v138 = v153;
  *&v138[16] = v154;
  *&v138[64] = v157;
  *&v138[80] = v158;
  memset(&v138[32], 0, 32);
  *&v138[153] = *(v163 + 9);
  *&v138[128] = v162;
  *&v138[144] = v163[0];
  *&v138[96] = sub_264C71328;
  *&v138[112] = v161;
  *&v164 = v117;
  *(&v164 + 1) = v116;
  LOBYTE(v165) = v111;
  *(&v165 + 1) = v141[0];
  DWORD1(v165) = *(v141 + 3);
  *(&v165 + 1) = v118;
  v166 = 0u;
  v167 = 0u;
  *&v168 = 1835821414;
  *(&v168 + 1) = 0xE400000000000000;
  *(v169 + 8) = v143;
  *(&v169[1] + 8) = v144;
  *&v169[0] = 0x402A000000000000;
  *(&v169[2] + 1) = v145;
  *&v170 = v115;
  *(&v170 + 1) = v114;
  *&v171 = v113;
  *(&v171 + 1) = v112;
  *&v138[176] = v164;
  *&v138[192] = v165;
  *&v138[272] = v169[1];
  *&v138[288] = v169[2];
  *&v138[240] = v168;
  *&v138[256] = v169[0];
  memset(&v138[208], 0, 32);
  *&v138[304] = v170;
  *&v138[320] = v171;
  *&v173 = v110;
  *(&v173 + 1) = v109;
  LOBYTE(v174) = v103;
  *(&v174 + 1) = v140[0];
  DWORD1(v174) = *(v140 + 3);
  v175 = 0u;
  v176 = 0u;
  *(&v174 + 1) = v108;
  *&v177 = 30324;
  *(&v178[2] + 1) = v148;
  *(&v183 + 1) = v139[0];
  *(&v177 + 1) = 0xE200000000000000;
  *&v178[0] = 0x402A000000000000;
  *(v178 + 8) = v146;
  *(&v178[1] + 8) = v147;
  *&v179 = v105;
  *(&v179 + 1) = v104;
  *&v180 = v136;
  *(&v180 + 1) = v106;
  *&v138[344] = v173;
  *&v138[360] = v174;
  *&v138[440] = v178[1];
  *&v138[456] = v178[2];
  *&v138[408] = v177;
  *&v138[424] = v178[0];
  v172 = v107;
  v138[336] = v107;
  v181 = v100;
  memset(&v138[376], 0, 32);
  *&v138[472] = v179;
  *&v138[488] = v180;
  v138[504] = v100;
  v81 = v92;
  v80 = v93;
  *&v182 = v93;
  *(&v182 + 1) = v92;
  LOBYTE(v183) = v91 & 1;
  DWORD1(v183) = *(v139 + 3);
  *(&v183 + 1) = v135;
  v184 = 0u;
  v185 = 0u;
  HIDWORD(v187) = *&v151[3];
  *(&v187 + 9) = *v151;
  *&v186 = 0xD000000000000010;
  v83 = v97;
  v82 = v98;
  *(&v186 + 1) = v97;
  *&v187 = 0;
  BYTE8(v187) = v152;
  v188 = sub_264C71328;
  v189 = 0;
  *&v190 = v98;
  v85 = v95;
  v84 = v96;
  *(&v190 + 1) = v96;
  *&v191 = v95;
  v86 = v94;
  *(&v191 + 1) = v94;
  v192 = __PAIR128__(v249, v134);
  LODWORD(v102) = v250;
  v193 = v250;
  v138[672] = v250;
  *&v138[512] = v182;
  *&v138[528] = v183;
  *&v138[576] = v186;
  *&v138[592] = v187;
  memset(&v138[544], 0, 32);
  *&v138[608] = sub_264C71328;
  *&v138[624] = v190;
  *&v138[640] = v191;
  *&v138[656] = __PAIR128__(v249, v134);
  memcpy(v99, v138, 0x2A1uLL);
  v194[0] = v80;
  v194[1] = v81;
  v195 = v137;
  *v196 = v139[0];
  *&v196[3] = *(v139 + 3);
  v198 = 0u;
  v199 = 0u;
  v197 = v135;
  v200 = 0xD000000000000010;
  v201 = v83;
  v202 = 0;
  v203 = v101;
  *v204 = *v151;
  *&v204[3] = *&v151[3];
  v205 = sub_264C71328;
  v206 = 0;
  v207 = v82;
  v208 = v84;
  v209 = v85;
  v210 = v86;
  v211 = v134;
  v212 = v133;
  v213 = v102;
  sub_264C6467C(&v153, &v248, &qword_27FFA9628, &qword_264CD2CC8);
  sub_264C6467C(&v164, &v248, &qword_27FFA9630, &qword_264CD2CD0);
  sub_264C6467C(&v173, &v248, &qword_27FFA9630, &qword_264CD2CD0);
  sub_264C6467C(&v182, &v248, &qword_27FFA9638, &qword_264CD2CD8);
  sub_264C646E4(v194, &qword_27FFA9638, &qword_264CD2CD8);
  v224 = v147;
  v214[0] = v110;
  v214[1] = v109;
  v215 = v103;
  *v216 = v140[0];
  *&v216[3] = *(v140 + 3);
  v217 = v108;
  v218 = 0u;
  v219 = 0u;
  v220 = 30324;
  v221 = 0xE200000000000000;
  v222 = 0x402A000000000000;
  v225 = v148;
  v223 = v146;
  v226 = v105;
  v227 = v104;
  v228 = v136;
  v229 = v106;
  v230 = v100;
  sub_264C646E4(v214, &qword_27FFA9630, &qword_264CD2CD0);
  v231[0] = v117;
  v231[1] = v116;
  v232 = v111;
  *v233 = v141[0];
  *&v233[3] = *(v141 + 3);
  v235 = 0u;
  v236 = 0u;
  v234 = v118;
  v237 = 1835821414;
  v238 = 0xE400000000000000;
  v239 = 0x402A000000000000;
  v241 = v144;
  v240 = v143;
  v242 = v145;
  v243 = v115;
  v244 = v114;
  v245 = v113;
  v246 = v112;
  v247 = v107;
  sub_264C646E4(v231, &qword_27FFA9630, &qword_264CD2CD0);
  v248 = v130;
  v249 = v129;
  LOBYTE(v250) = v119;
  *(&v250 + 1) = *v142;
  HIDWORD(v250) = *&v142[3];
  v251 = v131;
  v252 = 0u;
  v253 = 0u;
  v254 = 0xD000000000000012;
  v255 = v132;
  v256 = 0;
  v257 = v120;
  *v258 = *v149;
  *&v258[3] = *&v149[3];
  v259 = sub_264C71328;
  v260 = 0;
  v261 = v128;
  v262 = v127;
  v263 = v126;
  v264 = v125;
  v265 = v124;
  v266 = v123;
  v267 = v122;
  v268 = v121;
  return sub_264C646E4(&v248, &qword_27FFA9628, &qword_264CD2CC8);
}

uint64_t sub_264C75080@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v124 = a1;
  v106 = a2;
  v126 = sub_264CC411C();
  v136 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v94[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_264CC302C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = objc_opt_self();
  v8 = [v7 bundle];
  sub_264CC3CFC();
  v9 = sub_264CC3FAC();
  v132 = v10;
  v133 = v9;
  v123 = v11;
  v134 = v12;
  sub_264CC301C();
  sub_264CC300C();
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  if (v14)
  {
    v15 = sub_264CC459C();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  if (!v15)
  {
    v17 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_0(&v180);
      _os_log_error_impl(&dword_264BA2000, v17, OS_LOG_TYPE_ERROR, "Failed to provide region code for explicit content restriction key. Returning least restrictive string key.", &v180, 2u);
    }
  }

  if ([v16 isEqual:@"CN"])
  {
    v18 = @"MusicPodcastsWorkoutsSpecifierName";
  }

  else
  {
    v18 = @"MusicPodcastsNewsWorkoutsSpecifierName";
  }

  v19 = v18;

  v20 = v18;
  sub_264CC45DC();

  v111 = v7;
  v21 = [v7 bundle];

  sub_264CC3CFC();
  v22 = v21;
  v23 = sub_264CC3FAC();
  v130 = v24;
  v131 = v23;
  LOBYTE(v21) = v25;
  *(&v129 + 1) = v26;

  *&v129 = v21 & 1;
  v27 = [v7 bundle];
  v28 = sub_264CC421C();
  v29 = swift_allocObject();
  v121 = v29;
  *(v29 + 16) = v28;
  *(v29 + 24) = 0x3FECCCCCCCCCCCCDLL;
  v128 = sub_264CC415C();
  v127 = sub_264C8725C();
  v122 = sub_264CC45DC();
  v31 = v30;
  v32 = *v124;
  v135 = *(v124 + 8);
  v33 = *(v124 + 16);
  v34 = type metadata accessor for SettingsPresetViewModel(0);
  v108 = sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel, &protocol conformance descriptor for SettingsPresetViewModel);
  v109 = v32;
  v107 = v33;
  v35 = sub_264CC3A0C();
  sub_264CC474C();

  v36 = sub_264CC473C();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v35;
  v39 = v122;
  v37[5] = v122;
  v37[6] = v31;
  v40 = sub_264CC3A0C();
  v41 = sub_264CC473C();
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = MEMORY[0x277D85700];
  v42[4] = v40;
  v42[5] = v39;
  v42[6] = v31;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E0, &qword_264CD2C28);
  sub_264CC437C();
  v119 = v180;
  v124 = v181;
  v118 = v182;
  v123 &= 1u;
  v211 = v123;
  v43 = [v111 bundle];
  sub_264CC3CFC();
  v114 = sub_264CC3FAC();
  v120 = v44;
  v113 = v45;
  v122 = v46;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9608, &qword_264CD2C98);
  v47 = swift_allocObject();
  v101 = xmmword_264CD21F0;
  *(v47 + 16) = xmmword_264CD21F0;
  v49 = v136 + 104;
  v50 = *(v136 + 104);
  v51 = v125;
  v52 = v126;
  v98 = *MEMORY[0x277CE0EE0];
  v48 = v98;
  v50(v125, v98, v126);
  v97 = v50;
  v136 = v49;
  v100 = 0x3FEF7F7F7F7F7F7FLL;
  v99 = 0x3FD7171717171717;
  *(v47 + 32) = sub_264CC41BC();
  v50(v51, v48, v52);
  *(v47 + 40) = sub_264CC41BC();
  sub_264CC44BC();
  sub_264CC44CC();
  MEMORY[0x26674B120](v47);
  sub_264CC3ADC();
  v110 = sub_264C87298();
  v117 = sub_264CC45DC();
  v54 = v53;
  v96 = v34;
  v116 = sub_264CC3A0C();

  v55 = sub_264CC473C();
  v56 = swift_allocObject();
  v56[2] = v55;
  v58 = v116;
  v57 = v117;
  v56[3] = MEMORY[0x277D85700];
  v56[4] = v58;
  v56[5] = v57;
  v56[6] = v54;
  v59 = v54;
  v60 = sub_264CC3A0C();
  v61 = sub_264CC473C();
  v62 = swift_allocObject();
  v62[2] = v61;
  v62[3] = MEMORY[0x277D85700];
  v62[4] = v60;
  v62[5] = v117;
  v62[6] = v59;
  sub_264CC437C();
  v116 = v181;
  v117 = v180;
  v115 = v182;
  v113 &= 1u;
  LOBYTE(v180) = v113;
  v63 = v111;
  v64 = [v111 bundle];
  sub_264CC3CFC();
  v65 = sub_264CC3FAC();
  v103 = v66;
  v104 = v65;
  v95 = v67;
  v105 = v68;
  v69 = [v63 bundle];
  v70 = sub_264CC421C();
  v71 = swift_allocObject();
  v111 = v71;
  v71[2] = v70;
  v71[3] = 0x3FECCCCCCCCCCCCDLL;
  v72 = swift_allocObject();
  *(v72 + 16) = v101;
  v73 = v125;
  v74 = v126;
  v75 = v98;
  v76 = v97;
  v97(v125, v98, v126);
  *(v72 + 32) = sub_264CC41BC();
  v76(v73, v75, v74);
  *(v72 + 40) = sub_264CC41BC();
  sub_264CC44BC();
  sub_264CC44CC();
  MEMORY[0x26674B120](v72);
  sub_264CC3ADC();
  v136 = sub_264C87298();
  v126 = sub_264CC45DC();
  v78 = v77;
  v125 = sub_264CC3A0C();

  v79 = sub_264CC473C();
  v80 = swift_allocObject();
  v80[2] = v79;
  v81 = v125;
  v80[3] = MEMORY[0x277D85700];
  v80[4] = v81;
  v82 = v126;
  v80[5] = v126;
  v80[6] = v78;
  v83 = sub_264CC3A0C();
  v84 = sub_264CC473C();
  v85 = swift_allocObject();
  v85[2] = v84;
  v85[3] = MEMORY[0x277D85700];
  v85[4] = v83;
  v85[5] = v82;
  v85[6] = v78;
  sub_264CC437C();
  v86 = v180;
  v87 = v181;
  LOBYTE(v74) = v182;
  LOBYTE(v180) = v95 & 1;
  LODWORD(v126) = v95 & 1;
  *&v140 = v133;
  *(&v140 + 1) = v132;
  LOBYTE(v141) = v123;
  *(&v141 + 1) = *v210;
  DWORD1(v141) = *&v210[3];
  *(&v141 + 1) = v134;
  *&v142 = v131;
  *(&v142 + 1) = v130;
  v143 = v129;
  v135 = sub_264C71994;
  *(&v148 + 1) = v120;
  LOBYTE(v149) = v113;
  DWORD1(v149) = *(v139 + 3);
  *(&v149 + 1) = v139[0];
  *(&v149 + 1) = v122;
  v150 = 0u;
  v151 = 0u;
  *&v153[0] = 0x402A000000000000;
  *(&v153[2] + 1) = v214;
  strcpy(&v152, "music.note.tv");
  HIWORD(v152) = -4864;
  *(v153 + 8) = v212;
  *(&v153[1] + 8) = v213;
  *&v154[0] = v110;
  *(&v154[0] + 1) = v117;
  *&v154[1] = v116;
  BYTE8(v154[1]) = v115;
  *(&v137[16] + 1) = *(v154 + 9);
  *&v148 = v114;
  *&v144 = sub_264C71994;
  *(&v144 + 1) = v121;
  *&v145 = v128;
  *(&v145 + 1) = v127;
  *&v146 = v119;
  *(&v146 + 1) = v124;
  v147 = v118;
  v137[2] = v142;
  v137[3] = v129;
  v137[0] = v140;
  v137[1] = v141;
  LOBYTE(v137[7]) = v118;
  v137[5] = v145;
  v137[6] = v146;
  v137[4] = v144;
  *(&v137[8] + 8) = v149;
  *(&v137[7] + 8) = v148;
  *(&v137[12] + 8) = v153[0];
  *(&v137[11] + 8) = v152;
  *(&v137[10] + 8) = 0u;
  *(&v137[9] + 8) = 0u;
  *(&v137[15] + 8) = v154[0];
  *(&v137[14] + 8) = v153[2];
  *(&v137[13] + 8) = v153[1];
  v88 = v103;
  v89 = v104;
  *&v155 = v104;
  *(&v155 + 1) = v103;
  LOBYTE(v156) = v95 & 1;
  *(&v156 + 1) = v138[0];
  DWORD1(v156) = *(v138 + 3);
  v90 = v105;
  *(&v156 + 1) = v105;
  v157 = 0u;
  v158 = 0u;
  *&v162 = v217;
  *&v159 = sub_264C787CC;
  v91 = v111;
  *(&v159 + 1) = v111;
  v160 = v215;
  v161 = v216;
  v92 = v136;
  *(&v162 + 1) = v136;
  v163 = __PAIR128__(v181, v86);
  *(&v137[17] + 8) = v155;
  *(&v137[18] + 8) = v156;
  *(&v137[21] + 8) = v159;
  *(&v137[22] + 8) = v215;
  *(&v137[19] + 8) = 0u;
  *(&v137[20] + 8) = 0u;
  *(&v137[24] + 8) = v162;
  *(&v137[25] + 8) = __PAIR128__(v181, v86);
  *(&v137[23] + 8) = v216;
  v164 = v182;
  BYTE8(v137[26]) = v182;
  memcpy(v106, v137, 0x1A9uLL);
  v165[0] = v89;
  v165[1] = v88;
  v166 = v126;
  *v167 = v138[0];
  *&v167[3] = *(v138 + 3);
  v169 = 0u;
  v170 = 0u;
  v168 = v90;
  v171 = sub_264C787CC;
  v172 = v91;
  v175 = v217;
  v173 = v215;
  v174 = v216;
  v176 = v92;
  v177 = v86;
  v178 = v87;
  v179 = v74;
  sub_264C6467C(&v140, &v180, &qword_27FFA9610, &qword_264CD2CA0);
  sub_264C6467C(&v148, &v180, &qword_27FFA9618, &qword_264CD2CA8);
  sub_264C6467C(&v155, &v180, &qword_27FFA9620, &unk_264CD2CB0);
  sub_264C646E4(v165, &qword_27FFA9620, &unk_264CD2CB0);
  v185 = 0u;
  v186 = 0u;
  v190 = v213;
  v180 = v114;
  v181 = v120;
  v182 = v113;
  *v183 = v139[0];
  *&v183[3] = *(v139 + 3);
  v184 = v122;
  strcpy(v187, "music.note.tv");
  v187[7] = -4864;
  v188 = 0x402A000000000000;
  v191 = v214;
  v189 = v212;
  v192 = v110;
  v193 = v117;
  v194 = v116;
  v195 = v115;
  sub_264C646E4(&v180, &qword_27FFA9618, &qword_264CD2CA8);
  v196[0] = v133;
  v196[1] = v132;
  v197 = v123;
  *v198 = *v210;
  *&v198[3] = *&v210[3];
  v199 = v134;
  v200 = v131;
  v201 = v130;
  v202 = v129;
  v203 = v135;
  v204 = v121;
  v205 = v128;
  v206 = v127;
  v207 = v119;
  v208 = v124;
  v209 = v118;
  return sub_264C646E4(v196, &qword_27FFA9610, &qword_264CD2CA0);
}

uint64_t sub_264C760F0@<X0>(void *a2@<X8>)
{
  v63 = objc_opt_self();
  v2 = [v63 bundle];
  sub_264CC3CFC();
  LOWORD(v50) = 256;
  v3 = sub_264CC3FAC();
  v80 = v4;
  v81 = v3;
  v73 = v5;
  v83 = v6;
  v82 = sub_264CC414C();
  v79 = sub_264C874BC();
  v77 = sub_264CC45DC();
  v8 = v7;
  type metadata accessor for SettingsPresetViewModel(0);
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel, &protocol conformance descriptor for SettingsPresetViewModel);
  v9 = sub_264CC3A0C();
  sub_264CC474C();

  v10 = sub_264CC473C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = v77;
  v11[6] = v8;
  v13 = sub_264CC3A0C();
  v14 = sub_264CC473C();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = MEMORY[0x277D85700];
  v15[4] = v13;
  v15[5] = v77;
  v15[6] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E0, &qword_264CD2C28);
  sub_264CC437C();
  v76 = *(&v125 + 1);
  v78 = v125;
  v74 = v73 & 1;
  v75 = v126;
  LOBYTE(v125) = v74;
  v16 = [v63 bundle];
  sub_264CC3CFC();
  LOWORD(v51) = 256;
  v59 = sub_264CC3FAC();
  v72 = v17;
  v64 = v18;
  v61 = v19;
  v60 = sub_264CC414C();
  v71 = sub_264C872C4();
  v69 = sub_264CC45DC();
  v21 = v20;
  v67 = sub_264CC3A0C();

  v22 = sub_264CC473C();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = MEMORY[0x277D85700];
  v23[4] = v67;
  v23[5] = v69;
  v23[6] = v21;
  v24 = sub_264CC3A0C();
  v25 = sub_264CC473C();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = MEMORY[0x277D85700];
  v26[4] = v24;
  v26[5] = v69;
  v26[6] = v21;
  sub_264CC437C();
  v68 = *(&v125 + 1);
  v70 = v125;
  v66 = v126;
  v27 = v64 & 1;
  LOBYTE(v125) = v64 & 1;
  v28 = sub_264CC336C();
  *(&v126 + 1) = v28;
  v29 = sub_264C78764(&qword_27FFA95F0, MEMORY[0x277D4B880], MEMORY[0x277D4B858]);
  *&v127 = v29;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v125);
  v31 = *(*(v28 - 8) + 104);
  v31(boxed_opaque_existential_1, *MEMORY[0x277D4B860], v28);
  LOBYTE(v21) = sub_264CC30BC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v125);
  v65 = v64 & 1;
  if (v21 & 1) != 0 && (*(&v126 + 1) = v28, *&v127 = v29, v32 = __swift_allocate_boxed_opaque_existential_1(&v125), v31(v32, *MEMORY[0x277D4B878], v28), v33 = sub_264CC30BC(), __swift_destroy_boxed_opaque_existential_1Tm(&v125), (v33))
  {
    v34 = [v63 bundle];
    sub_264CC3CFC();
    v35 = sub_264CC3FAC();
    v56 = v36;
    v57 = v35;
    v53 = v37;
    v55 = v38;
    v58 = sub_264CC414C();
    v54 = sub_264C874BC();
    v39 = sub_264CC45DC();
    v41 = v40;
    v52 = sub_264CC3A0C();

    v42 = sub_264CC473C();
    v43 = swift_allocObject();
    v43[2] = v42;
    v44 = MEMORY[0x277D85700];
    v43[3] = MEMORY[0x277D85700];
    v43[4] = v52;
    v43[5] = v39;
    v43[6] = v41;
    v45 = sub_264CC3A0C();
    v46 = sub_264CC473C();
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = v44;
    v47[4] = v45;
    v47[5] = v39;
    v47[6] = v41;
    sub_264CC437C();
    v48 = v125;
    LOBYTE(v125) = v53 & 1;
    *&v117 = v57;
    *(&v117 + 1) = v56;
    LOBYTE(v118) = v53 & 1;
    *(&v118 + 1) = v55;
    v119 = 0u;
    v120 = 0u;
    v27 = v65;
    *&v121 = 0xD00000000000001BLL;
    *(&v121 + 1) = 0x8000000264CE1220;
    *&v122 = 0x4030000000000000;
    *(&v122 + 1) = v58;
    *v123 = v54;
    *&v123[8] = __PAIR128__(*(&v125 + 1), v48);
    v123[24] = v126;
    nullsub_1();
    v129 = v121;
    v130 = v122;
    *v131 = *v123;
    *&v131[9] = *&v123[9];
    v125 = v117;
    v126 = v118;
    v127 = 0u;
    v128 = 0u;
  }

  else
  {
    sub_264C787AC(&v125);
  }

  v101[4] = v129;
  v101[5] = v130;
  v102[0] = *v131;
  *(v102 + 9) = *&v131[9];
  v101[0] = v125;
  v101[1] = v126;
  v101[2] = v127;
  v101[3] = v128;
  *&v85 = v81;
  *(&v85 + 1) = v80;
  LOBYTE(v86) = v74;
  DWORD1(v86) = *(v132 + 3);
  *(&v86 + 1) = v132[0];
  *(&v86 + 1) = v83;
  v87 = 0u;
  v88 = 0u;
  *&v89 = 0xD000000000000016;
  *(&v89 + 1) = 0x8000000264CE1190;
  *&v90 = 0x4030000000000000;
  *(&v90 + 1) = v82;
  *v91 = v79;
  *&v91[8] = v78;
  *&v91[16] = v76;
  v91[24] = v75;
  *(&__src[6] + 9) = *&v91[9];
  __src[5] = v90;
  __src[6] = *v91;
  __src[4] = v89;
  __src[1] = v86;
  memset(&__src[2], 0, 32);
  __src[0] = v85;
  *&v92 = v59;
  *(&v92 + 1) = v72;
  LOBYTE(v93) = v27;
  DWORD1(v93) = *(v124 + 3);
  *(&v93 + 1) = v124[0];
  *(&v93 + 1) = v61;
  v94 = 0u;
  v95 = 0u;
  *&v96 = 0xD000000000000016;
  *(&v96 + 1) = 0x8000000264CE11D0;
  *&v97 = 0x4030000000000000;
  *(&v97 + 1) = v60;
  *v98 = v71;
  *&v98[8] = v70;
  *&v98[16] = v68;
  v98[24] = v66;
  memset(&__src[10], 0, 32);
  __src[8] = v92;
  __src[9] = v93;
  *(&__src[14] + 9) = *&v98[9];
  __src[13] = v97;
  __src[14] = *v98;
  __src[12] = v96;
  v99[2] = v127;
  v99[3] = v128;
  v99[0] = v125;
  v99[1] = v126;
  *(v100 + 9) = *&v131[9];
  v99[5] = v130;
  v100[0] = *v131;
  v99[4] = v129;
  *(&__src[22] + 9) = *&v131[9];
  __src[18] = v127;
  __src[19] = v128;
  __src[16] = v125;
  __src[17] = v126;
  __src[21] = v130;
  __src[22] = *v131;
  __src[20] = v129;
  memcpy(a2, __src, 0x179uLL);
  sub_264C6467C(&v85, &v117, &qword_27FFA95F8, &qword_264CD2C88);
  sub_264C6467C(&v92, &v117, &qword_27FFA95F8, &qword_264CD2C88);
  sub_264C6467C(v99, &v117, &qword_27FFA9600, &qword_264CD2C90);
  sub_264C646E4(v101, &qword_27FFA9600, &qword_264CD2C90);
  v103[0] = v59;
  v103[1] = v72;
  v104 = v65;
  *v105 = v124[0];
  *&v105[3] = *(v124 + 3);
  v106 = v61;
  v107 = 0u;
  v108 = 0u;
  v109 = 0xD000000000000016;
  v110 = 0x8000000264CE11D0;
  v111 = 0x4030000000000000;
  v112 = v60;
  v113 = v71;
  v114 = v70;
  v115 = v68;
  v116 = v66;
  sub_264C646E4(v103, &qword_27FFA95F8, &qword_264CD2C88);
  *&v117 = v81;
  *(&v117 + 1) = v80;
  LOBYTE(v118) = v74;
  *(&v118 + 1) = v132[0];
  DWORD1(v118) = *(v132 + 3);
  *(&v118 + 1) = v83;
  v119 = 0u;
  v120 = 0u;
  *&v121 = 0xD000000000000016;
  *(&v121 + 1) = 0x8000000264CE1190;
  *&v122 = 0x4030000000000000;
  *(&v122 + 1) = v82;
  *v123 = v79;
  *&v123[8] = v78;
  *&v123[16] = v76;
  v123[24] = v75;
  return sub_264C646E4(&v117, &qword_27FFA95F8, &qword_264CD2C88);
}

double sub_264C76BDC@<D0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() bundle];
  sub_264CC3CFC();
  v4 = sub_264CC3FAC();
  v24 = v5;
  v25 = v4;
  v21 = v6;
  v23 = v7;
  v26 = sub_264CC412C();
  v22 = sub_264C874BC();
  v8 = sub_264CC45DC();
  v10 = v9;
  v20 = v8;
  type metadata accessor for SettingsPresetViewModel(0);
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel, &protocol conformance descriptor for SettingsPresetViewModel);
  v11 = sub_264CC3A0C();
  sub_264CC474C();

  v12 = sub_264CC473C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v15 = v14;
  v13[4] = v11;
  v13[5] = v20;
  v13[6] = v10;
  v16 = sub_264CC3A0C();
  v17 = sub_264CC473C();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v15;
  v18[4] = v16;
  v18[5] = v20;
  v18[6] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E0, &qword_264CD2C28);
  sub_264CC437C();
  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0xD000000000000011;
  *(a2 + 72) = 0x8000000264CE1140;
  *(a2 + 80) = 0x4030000000000000;
  *(a2 + 88) = v26;
  *(a2 + 96) = v22;
  *(a2 + 104) = v27;
  *(a2 + 112) = v28;
  *(a2 + 120) = v29;
  return result;
}

uint64_t sub_264C76EC0()
{
  v1 = *(v0 + 16);
  *(v0 + 24) = *v1;
  *(v0 + 32) = *(v1 + 8);
  *(v0 + 96) = *(v1 + 16);
  *(v0 + 40) = type metadata accessor for SettingsPresetViewModel(0);
  *(v0 + 48) = sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel, &protocol conformance descriptor for SettingsPresetViewModel);
  *(v0 + 56) = sub_264CC3A0C();
  *(v0 + 64) = sub_264CC474C();
  *(v0 + 72) = sub_264CC473C();
  v3 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C76FE0, v3, v2);
}

uint64_t sub_264C76FE0()
{
  v1 = *(v0 + 56);

  sub_264C8E894();

  return MEMORY[0x2822009F8](sub_264C77054, 0, 0);
}

uint64_t sub_264C77054()
{
  *(v0 + 80) = sub_264CC3A0C();
  *(v0 + 88) = sub_264CC473C();
  v2 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C770F4, v2, v1);
}

uint64_t sub_264C770F4()
{
  v1 = *(v0 + 80);

  sub_264C8E8A8(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_264C7715C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  sub_264CC474C();
  *(v3 + 24) = sub_264CC473C();
  v5 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C771F4, v5, v4);
}

uint64_t sub_264C771F4()
{

  type metadata accessor for SettingsPresetViewModel(0);
  sub_264C78764(&qword_27FFA9558, type metadata accessor for SettingsPresetViewModel, &protocol conformance descriptor for SettingsPresetViewModel);
  v1 = sub_264CC3A0C();
  [*&v1[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_agePresetsAnalytics] sendPresetsViewedAnalyticsEventWithIsInitialSetup_];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264C7732C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91C8, &qword_264CD2CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;

  v5 = sub_264CC41EC();
  v6 = sub_264CC3F0C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_264CC3F1C();
  sub_264C646E4(v4, &qword_27FFA91C8, &qword_264CD2CE0);
  KeyPath = swift_getKeyPath();
  v9 = sub_264CC416C();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  a1[3] = result;
  a1[4] = v9;
  return result;
}

uint64_t sub_264C77498@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  *a3 = v5;
  return result;
}

uint64_t sub_264C77518(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264CC393C();
}

unint64_t sub_264C77588()
{
  result = qword_27FFA9568;
  if (!qword_27FFA9568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9050, &qword_264CD1C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9570, &qword_264CD2B60);
    sub_264C77650();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_264C7774C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9568);
  }

  return result;
}

unint64_t sub_264C77650()
{
  result = qword_27FFA9578;
  if (!qword_27FFA9578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9570, &qword_264CD2B60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9580, &qword_264CD2B68);
    sub_264C64918(&qword_27FFA9588, &qword_27FFA9580, &qword_264CD2B68, MEMORY[0x277CDE580]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9578);
  }

  return result;
}

unint64_t sub_264C7774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FFA9590;
  if (!qword_27FFA9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9590);
  }

  return result;
}

uint64_t sub_264C777A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

uint64_t sub_264C777B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_264C6DF34;

  return sub_264C76EA0(v0 + 16);
}

uint64_t sub_264C7784C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264C6EA28;

  return sub_264C7715C(v2, v3, v0 + 32);
}

uint64_t sub_264C778F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC3C3C();
  *a1 = result;
  return result;
}

uint64_t sub_264C77948@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264CC3BDC();
  *a1 = result;
  return result;
}

uint64_t sub_264C779A0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_264CC4B7C();
  sub_264CC460C();
  v8 = sub_264CC4B9C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_264CC4AAC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_264C77D50(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_264C77AF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E8, &qword_264CD2C80);
  result = sub_264CC48FC();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_264CC4B7C();
      sub_264CC460C();
      result = sub_264CC4B9C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}