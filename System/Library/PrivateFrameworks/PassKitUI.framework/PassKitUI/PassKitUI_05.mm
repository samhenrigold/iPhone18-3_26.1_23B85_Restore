uint64_t sub_1BD0BB3C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B258, &unk_1BE0FD4A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0BB47C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B258, &unk_1BE0FD4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0BB52C()
{
  v1 = type metadata accessor for AccountModuleView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 16), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + 32), v17, v18, v19, v20, v21, v22, v23;
  if (*(v2 + 48))
  {
    *(v2 + 56), v24, v25, v26, v27, v28, v29, v30;
  }

  v31 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = sub_1BE04EB44();
    (*(*(v39 - 8) + 8))(v2 + v31, v39);
  }

  else
  {
    *(v2 + v31), v32, v33, v34, v35, v36, v37, v38;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0BB66C()
{
  v1 = type metadata accessor for AccountModuleView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 16), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + 32), v17, v18, v19, v20, v21, v22, v23;
  if (*(v2 + 48))
  {
    *(v2 + 56), v24, v25, v26, v27, v28, v29, v30;
  }

  v31 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = sub_1BE04EB44();
    (*(*(v39 - 8) + 8))(v2 + v31, v39);
  }

  else
  {
    *(v2 + v31), v32, v33, v34, v35, v36, v37, v38;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0BB7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C38, &qword_1BE0FD7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0BB86C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58, &unk_1BE0FD848);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  *(v0 + 16), v4, v5, v6, v7, v8, v9, v10;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0BB93C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0BB974()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58, &unk_1BE0FD848);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + v4 + 8), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)), v12, v13, v14, v15, v16, v17, v18;

  return swift_deallocObject();
}

uint64_t sub_1BD0BBA70()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0BBAB0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0BBAF0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0BBB34()
{
  v1 = (type metadata accessor for WalletSettingsView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  *(v0 + v2), v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  (*(*(v11 - 8) + 8))(v0 + v2 + v10, v11);
  *(v0 + v2 + v1[8] + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + v2 + v1[9] + 8), v19, v20, v21, v22, v23, v24, v25;
  v26 = v0 + v2 + v1[10];
  *(v26 + 8), v27, v28, v29, v30, v31, v32, v33;
  *(v26 + 16), v34, v35, v36, v37, v38, v39, v40;

  return swift_deallocObject();
}

uint64_t sub_1BD0BBC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BD0BBD40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0BBE0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD372A0, &qword_1BE0B12C0);
  sub_1BD0DE4F4(&qword_1EBD55D00, &qword_1EBD372A0, &qword_1BE0B12C0, MEMORY[0x1E6981870]);
  return swift_getOpaqueTypeConformance2();
}

void sub_1BD0BBEEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD402AC0(v1);
}

uint64_t sub_1BD0BBF3C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1BD0BBFD4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B1E8, &qword_1BE0BC320);
  sub_1BE04EBD4();
  sub_1BD865330();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0BC0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42948, &unk_1BE0CE200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0BC1F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42948, &unk_1BE0CE200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0BC364()
{
  v0[6], v1, v2, v3, v4, v5, v6, v7;
  v0[7], v8, v9, v10, v11, v12, v13, v14;
  v0[9], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD0BC404()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[5], v1, v2, v3, v4, v5, v6, v7;
  v0[6], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;
  v0[8], v22, v23, v24, v25, v26, v27, v28;
  v0[9], v29, v30, v31, v32, v33, v34, v35;
  v0[10], v36, v37, v38, v39, v40, v41, v42;
  v0[11], v43, v44, v45, v46, v47, v48, v49;
  v0[12], v50, v51, v52, v53, v54, v55, v56;

  return swift_deallocObject();
}

uint64_t sub_1BD0BC48C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0BC4B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0BC4E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0BC510@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0BC53C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0BC568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0BC594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0BC5C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0BC5EC()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0BC62C()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1BD0BC674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Passes(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0BC6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Passes(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0BC750()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0BC788(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0BC7C0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0BC7F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BD0BC854(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD0BC8BC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0BC8FC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0BC9C8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0BCA84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0BCB50()
{
  v1 = sub_1BE04E664();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0BCBF0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BD0BCD2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0BCE68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentRewardsDetailItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0BCED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentRewardsDetailItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0BCF54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0BCFCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0BD04C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56670, &qword_1BE0FF408);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0BD0BC()
{
  v1 = *(type metadata accessor for RedemptionStatusLinkButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0BD22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1BD0BD2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1BD0BD338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56778, &unk_1BE0FF650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0BD3A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56778, &unk_1BE0FF650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0BD410()
{
  v1 = type metadata accessor for AccountLegalDisclosureSheet(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    (*(*(v11 - 8) + 8))(v3 + v2, v11);
  }

  else
  {
    *(v3 + v2), v4, v5, v6, v7, v8, v9, v10;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0BD52C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0BD57C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0BD5B4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0BD5F0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0BD628()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0BD660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B0, &unk_1BE0D28C8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0BD79C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B0, &unk_1BE0D28C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0BD8FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56958, &qword_1BE0FFA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0BDA10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55DF8, &qword_1BE0FDDC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56A40, &qword_1BE0FFE30);
  sub_1BD0DE4F4(&qword_1EBD55E08, &qword_1EBD55DF8, &qword_1BE0FDDC0, MEMORY[0x1E69817F8]);
  sub_1BD890CB8(&qword_1EBD56A48, &qword_1EBD56A40, &qword_1BE0FFE30, sub_1BD890D3C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0BDB24()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0BDB5C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0BDB94(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0BDBD4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0BDC0C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0BDC50(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0BDD0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0BDDBC()
{
  v1 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v2[1], v10, v11, v12, v13, v14, v15, v16;
  v17 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_1BE04EB24();
    (*(*(v25 - 8) + 8))(v2 + v17, v25);
  }

  else
  {
    *(v2 + v17), v18, v19, v20, v21, v22, v23, v24;
  }

  *(v2 + *(v1 + 24)), v26, v27, v28, v29, v30, v31, v32;

  return swift_deallocObject();
}

uint64_t sub_1BD0BDF34()
{
  v1 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v2[1], v10, v11, v12, v13, v14, v15, v16;
  v17 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_1BE04EB24();
    (*(*(v25 - 8) + 8))(v2 + v17, v25);
  }

  else
  {
    *(v2 + v17), v18, v19, v20, v21, v22, v23, v24;
  }

  *(v2 + *(v1 + 24)), v26, v27, v28, v29, v30, v31, v32;

  return swift_deallocObject();
}

uint64_t sub_1BD0BE07C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0BE0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0BE178@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1BD0BE1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 216);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04C894();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0BE288(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 216) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04C894();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0BE340()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0BE378()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[6], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0BE3C4()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0BE40C()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;
  v0[7], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0BE45C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0BE494(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0BE4D0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0BE58C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0BE650()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45360, &unk_1BE0D4080);
  sub_1BD0DE4F4(&qword_1EBD57178, &qword_1EBD45360, &unk_1BE0D4080, MEMORY[0x1E69817F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0BE774(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0BE830(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1BD0BE904@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BD0BE970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0BEA2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0BEADC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD372B8, &qword_1BE0B12D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57310, &qword_1BE100E08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57318, &qword_1BE100E10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57320, &qword_1BE100E18);
  sub_1BE04ECF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57328, &qword_1BE100E20);
  sub_1BD0DE4F4(&qword_1EBD57330, &qword_1EBD57328, &qword_1BE100E20, MEMORY[0x1E697CCF0]);
  sub_1BD0DDEBC();
  swift_getOpaqueTypeConformance2();
  sub_1BD8B0314(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD57338, &qword_1EBD57318, &qword_1BE100E10, MEMORY[0x1E697C0C0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0BECF4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0BED4C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0BED88()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0BEDC0()
{

  return swift_deallocObject();
}

void sub_1BD0BEE08(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1BE052404();
  [v2 setIdentifier_];
}

uint64_t sub_1BD0BEEC8()
{
  if (*(v0 + 24))
  {
    *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  }

  if (*(v0 + 40))
  {
    *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0BEF20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57538, &qword_1BE101298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0BEF90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57538, &qword_1BE101298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0BF000(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57538, &qword_1BE101298);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57540, &qword_1BE1012A0);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  sub_1BD8B5174(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57548, &qword_1BE1012A8);
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD57550, &qword_1EBD57548, &qword_1BE1012A8, MEMORY[0x1E697C5E0]);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for MultiHyperLinkDetailSheet(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0, &qword_1BE0B86F0);
  swift_getOpaqueTypeConformance2();
  sub_1BD8B5174(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
  sub_1BD10CC54();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0BF3EC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0BF4A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0BF558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD575F8, &qword_1BE101568);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD0BF62C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD575F8, &qword_1BE101568);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1BD0BF6F4()
{
  v1 = type metadata accessor for ErrorAlertModifier(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v2[1], v10, v11, v12, v13, v14, v15, v16;
  v17 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD575F8, &qword_1BE101568) + 32));
  v18 = type metadata accessor for FeatureError(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {

    v26 = *(v18 + 20);
    v27 = sub_1BE04B824();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v17 + v26, 1, v27))
    {
      (*(v28 + 8))(v17 + v26, v27);
    }
  }

  v29 = (v2 + *(v1 + 20));
  if (*v29)
  {
    v29[1], v19, v20, v21, v22, v23, v24, v25;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0BF8B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57618, &unk_1BE1015E0);
  type metadata accessor for FeatureError(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD0DE4F4(&qword_1EBD57620, &qword_1EBD57618, &unk_1BE1015E0, MEMORY[0x1E697FDF8]);
  sub_1BD8B8858(&qword_1EBD57628, &protocol conformance descriptor for FeatureError);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BD12E194();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0BFA2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57660, &qword_1BE101610);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9E8, &unk_1BE0E9E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57658, &qword_1BE101608);
  sub_1BD8BB4CC();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0, &qword_1BE0C41C0);
  sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0, &qword_1BE0C41C0, MEMORY[0x1E697BEF0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0BFB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8MerchantVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940, &unk_1BE0CDD90);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD0BFC8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s8MerchantVMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940, &unk_1BE0CDD90);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BD0BFDB8()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0BFE04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57820, &qword_1BE1019E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0BFE74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57818, &qword_1BE1019E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0BFEDC()
{
  swift_unknownObjectRelease();

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 64), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 72), v22, v23, v24, v25, v26, v27, v28;
  *(v0 + 80), v29, v30, v31, v32, v33, v34, v35;
  *(v0 + 96), v36, v37, v38, v39, v40, v41, v42;
  *(v0 + 112), v43, v44, v45, v46, v47, v48, v49;
  if (*(v0 + 120))
  {
    *(v0 + 128), v50, v51, v52, v53, v54, v55, v56;
  }

  *(v0 + 136), v50, v51, v52, v53, v54, v55, v56;

  return swift_deallocObject();
}

uint64_t sub_1BD0BFF6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD372D0, &qword_1BE0B12F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57818, &qword_1BE1019E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57810, &unk_1BE1019C0);
  sub_1BD8C0574();
  sub_1BD8C079C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C0038()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C0074()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0C00AC()
{
  swift_unknownObjectRelease();

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 64), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 72), v22, v23, v24, v25, v26, v27, v28;
  *(v0 + 80), v29, v30, v31, v32, v33, v34, v35;
  *(v0 + 96), v36, v37, v38, v39, v40, v41, v42;
  *(v0 + 112), v43, v44, v45, v46, v47, v48, v49;
  if (*(v0 + 120))
  {
    *(v0 + 128), v50, v51, v52, v53, v54, v55, v56;
  }

  *(v0 + 136), v50, v51, v52, v53, v54, v55, v56;
  *(v0 + 152), v57, v58, v59, v60, v61, v62, v63;
  *(v0 + 184), v64, v65, v66, v67, v68, v69, v70;
  *(v0 + 192), v71, v72, v73, v74, v75, v76, v77;
  *(v0 + 208), v78, v79, v80, v81, v82, v83, v84;
  *(v0 + 224), v85, v86, v87, v88, v89, v90, v91;
  if (*(v0 + 256))
  {

    *(v0 + 256), v92, v93, v94, v95, v96, v97, v98;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C01A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C01D8()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 48), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 56), v22, v23, v24, v25, v26, v27, v28;
  *(v0 + 64), v29, v30, v31, v32, v33, v34, v35;
  *(v0 + 80), v36, v37, v38, v39, v40, v41, v42;
  *(v0 + 96), v43, v44, v45, v46, v47, v48, v49;
  if (*(v0 + 104))
  {
    *(v0 + 112), v50, v51, v52, v53, v54, v55, v56;
  }

  *(v0 + 120), v50, v51, v52, v53, v54, v55, v56;
  *(v0 + 136), v57, v58, v59, v60, v61, v62, v63;

  return swift_deallocObject();
}

uint64_t sub_1BD0C02A8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C02E8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  if (*(v8 + 40))
  {
    *(v8 + 48), v16, v17, v18, v19, v20, v21, v22;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C0348(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0C03D0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C0418()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C0450()
{
  swift_unknownObjectRelease();

  v0[7], v1, v2, v3, v4, v5, v6, v7;
  v0[8], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0C04A4()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0C04F4()
{
  swift_unknownObjectRelease();

  v0[7], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

void sub_1BD0C0550(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD8C64B4(v1);
}

uint64_t sub_1BD0C0584()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0C05E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[4], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD0C062C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0, &unk_1BE1024F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  v0[4], v4, v5, v6, v7, v8, v9, v10;
  v0[7], v11, v12, v13, v14, v15, v16, v17;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0C070C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD0C0758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0C07C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BD0C0848(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700, &unk_1BE0E79F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1BD0C0910(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700, &unk_1BE0E79F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C09C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57A50, &qword_1BE1021F8);
  sub_1BD0DE4F4(&qword_1EBD57A58, &qword_1EBD57A50, &qword_1BE1021F8, MEMORY[0x1E697FDF8]);
  sub_1BD8D2B48();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C0A6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57A78, &qword_1BE102208);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D80, &qword_1BE0C9780);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD57BA0, &qword_1BE102308);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57A88, &qword_1BE102240);
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57A90, &qword_1BE102248);
  sub_1BD0DE4F4(&qword_1EBD57A98, &qword_1EBD57A88, &qword_1BE102240, MEMORY[0x1E697FDF8]);
  sub_1BD8D2BB0(&qword_1EBD57AA0, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet, &unk_1BE102188);
  sub_1BD8D2BF8();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
  sub_1BD8D3370();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C0CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE0493F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1BD0C0DD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BE0493F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD0C0EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FinanceKitSpendingTrend(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BD0C0FB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FinanceKitSpendingTrend(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BD0C10D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0C1190(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C1240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0C12FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C1410(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 40), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 64), v23, v24, v25, v26, v27, v28, v29;
  v37 = *(v8 + 80);
  if (v37)
  {
    v37, v30, v31, v32, v33, v34, v35, v36;
    *(v8 + 88), v38, v39, v40, v41, v42, v43, v44;
    *(v8 + 96), v45, v46, v47, v48, v49, v50, v51;
    *(v8 + 120), v52, v53, v54, v55, v56, v57, v58;
  }

  v59 = *(v8 + 136);
  if (v59)
  {
    v59, v30, v31, v32, v33, v34, v35, v36;
    if (*(v8 + 144))
    {
      *(v8 + 152), v60, v61, v62, v63, v64, v65, v66;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C14A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[8], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD0C1510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0C15CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C16C8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0C1784(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C1840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58218, &unk_1BE103450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0C18DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD581F0, &qword_1BE103438);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD581F8, &unk_1BE103440);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE4F4(&qword_1EBD58200, &qword_1EBD581F0, &qword_1BE103438, MEMORY[0x1E697FDF8]);
  sub_1BD8E5BD8();
  sub_1BD0DE4F4(&qword_1EBD58210, &qword_1EBD581F8, &unk_1BE103440, MEMORY[0x1E6981F48]);
  sub_1BD1B9AAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C1A3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58300, &qword_1BE103660);
  sub_1BD8E9A78();
  sub_1BD8E9C78();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C1AB4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[8], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD0C1BD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C1C04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C1C30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C1C5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C1C88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C1CB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C1CE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C1D0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C1D38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0C1D70(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C1DB0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C1DE8()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0C1E34(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0C1E7C()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;

  v0[6], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

void sub_1BD0C1F3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BD030394(*a1, v2);
  sub_1BD8F846C(v1, v2);
}

void sub_1BD0C1F84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BE048C84();
  sub_1BD8F8134(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD0C1FF0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C2028()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0C2070()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C20A8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C2110(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0C21F0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C2228()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0C2268()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0C22A8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C22E0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0C2330(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58888, &qword_1BE104B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0C2398(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD035CB4(*(v8 + 32), *(v8 + 40), *(v8 + 48), v9, v10, v11, v12, v13);
  sub_1BD0D4604(*(v8 + 56), *(v8 + 64), v14, v15, v16, v17, v18, v19);

  return swift_deallocObject();
}

uint64_t sub_1BD0C23E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58860, &qword_1BE104AF8);
  sub_1BE04FE84();
  sub_1BD0DE4F4(&qword_1EBD588A8, &qword_1EBD58860, &qword_1BE104AF8, MEMORY[0x1E697C0C0]);
  sub_1BD900834(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C24C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0C2604(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0C2770()
{
  v1 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  *(v0 + 16), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v2;
  sub_1BD8D3858(*(v0 + v2), *(v0 + v2 + 8));

  *(v0 + v2 + 48), v11, v12, v13, v14, v15, v16, v17;
  *(v0 + v2 + 64), v18, v19, v20, v21, v22, v23, v24;

  *(v0 + v2 + 80), v25, v26, v27, v28, v29, v30, v31;
  v32 = (v0 + v2 + v1[12]);
  v33 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = sub_1BE04AA64();
      (*(*(v34 - 8) + 8))(v32, v34);
    }

    else
    {

      v32[2], v35, v36, v37, v38, v39, v40, v41;
    }
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v32 + *(v42 + 28)), v43, v44, v45, v46, v47, v48, v49;
  *(v10 + v1[13] + 8), v50, v51, v52, v53, v54, v55, v56;
  v57 = v10 + v1[14];
  *(v57 + 8), v58, v59, v60, v61, v62, v63, v64;
  *(v57 + 16), v65, v66, v67, v68, v69, v70, v71;
  *(v10 + v1[15] + 8), v72, v73, v74, v75, v76, v77, v78;
  *(v10 + v1[16] + 8), v79, v80, v81, v82, v83, v84, v85;
  v86 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v94 = sub_1BE04E354();
    (*(*(v94 - 8) + 8))(v10 + v86, v94);
  }

  else
  {
    *(v10 + v86), v87, v88, v89, v90, v91, v92, v93;
  }

  sub_1BD0D4604(*(v10 + v1[18]), *(v10 + v1[18] + 8), v95, v96, v97, v98, v99, v100);

  return swift_deallocObject();
}

uint64_t sub_1BD0C2A04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C2A44()
{
  v1 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  sub_1BD8D3858(*(v0 + v3), *(v0 + v3 + 8));

  *(v0 + v3 + 48), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + v3 + 64), v12, v13, v14, v15, v16, v17, v18;

  *(v0 + v3 + 80), v19, v20, v21, v22, v23, v24, v25;
  v26 = (v0 + v3 + v1[12]);
  v27 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = sub_1BE04AA64();
      (*(*(v28 - 8) + 8))(v26, v28);
    }

    else
    {

      v26[2], v29, v30, v31, v32, v33, v34, v35;
    }
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v26 + *(v36 + 28)), v37, v38, v39, v40, v41, v42, v43;
  *(v4 + v1[13] + 8), v44, v45, v46, v47, v48, v49, v50;
  v51 = v4 + v1[14];
  *(v51 + 8), v52, v53, v54, v55, v56, v57, v58;
  *(v51 + 16), v59, v60, v61, v62, v63, v64, v65;
  *(v4 + v1[15] + 8), v66, v67, v68, v69, v70, v71, v72;
  *(v4 + v1[16] + 8), v73, v74, v75, v76, v77, v78, v79;
  v80 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v88 = sub_1BE04E354();
    (*(*(v88 - 8) + 8))(v4 + v80, v88);
  }

  else
  {
    *(v4 + v80), v81, v82, v83, v84, v85, v86, v87;
  }

  sub_1BD0D4604(*(v4 + v1[18]), *(v4 + v1[18] + 8), v89, v90, v91, v92, v93, v94);

  return swift_deallocObject();
}

uint64_t sub_1BD0C2D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AvailablePass(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1BD0C2E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AvailablePass(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD0C2FAC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C3000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D00, &qword_1BE105560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0C3070()
{
  v1 = type metadata accessor for SEStorageUsageCategory(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_1BE04C164();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 3, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  *(v0 + v2 + *(v1 + 20)), v6, v7, v8, v9, v10, v11, v12;
  *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v13, v14, v15, v16, v17, v18, v19;

  return swift_deallocObject();
}

uint64_t sub_1BD0C31BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BC8, &qword_1BE105318);
  sub_1BD0DE4F4(&qword_1EBD58C58, &qword_1EBD58BC8, &qword_1BE105318, MEMORY[0x1E697C1A8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C3264()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58DE8, &qword_1BE105750);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58DF0, &qword_1BE105758);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD0DE4F4(&qword_1EBD58DF8, &qword_1EBD58DE8, &qword_1BE105750, MEMORY[0x1E697FDF8]);
  sub_1BD0DDEBC();
  sub_1BD9173E4();
  sub_1BD12E194();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C33A8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

id sub_1BD0C33E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BD0C3514()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1BD0C35A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD91E244(v1);
}

uint64_t sub_1BD0C35D4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C360C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0C364C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0C369C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F204();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C3760()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59090, &qword_1BE105F88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59088, &qword_1BE105F80);
  sub_1BD92B120();
  sub_1BD0DDEBC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C381C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD590E8, &qword_1BE106188);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C40, &qword_1BE0C9410);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BD0C3958(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD590E8, &qword_1BE106188);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C40, &qword_1BE0C9410);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0C3A94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnifiedMerchantTokenData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MerchantTokenCellPresentationModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59138, &qword_1BE1061E8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1BD0C3C14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnifiedMerchantTokenData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for MerchantTokenCellPresentationModel(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59138, &qword_1BE1061E8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1BD0C3D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0C3E00(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BD0C3EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04AA64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0C3F88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04AA64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C4060()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0C40A0()
{
  v1 = type metadata accessor for MerchantTokenList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;
  *(v0 + v3), v9, v10, v11, v12, v13, v14, v15;
  *(v0 + v3 + 16), v16, v17, v18, v19, v20, v21, v22;
  v23 = v1[6];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD590E8, &qword_1BE106188);
  (*(*(v24 - 8) + 8))(v0 + v3 + v23, v24);
  v25 = (v0 + v3 + v1[7]);
  *v25, v26, v27, v28, v29, v30, v31, v32;
  v25[1], v33, v34, v35, v36, v37, v38, v39;
  v40 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30, &qword_1BE0C9228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = sub_1BE04E784();
    (*(*(v48 - 8) + 8))(v8 + v40, v48);
  }

  else
  {
    *(v8 + v40), v41, v42, v43, v44, v45, v46, v47;
  }

  *(v8 + v1[9] + 8), v49, v50, v51, v52, v53, v54, v55;
  *(v8 + v1[10] + 8), v56, v57, v58, v59, v60, v61, v62;
  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1BD0C42E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C4334()
{
  v1 = type metadata accessor for MerchantTokenList(0);
  v174 = *(*(v1 - 1) + 80);
  v2 = (v174 + 16) & ~v174;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for UnifiedMerchantTokenData(0);
  v5 = *(*(v4 - 1) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = v0 + v2;
  *(v0 + v2), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + v2 + 16), v15, v16, v17, v18, v19, v20, v21;
  v22 = v1[6];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD590E8, &qword_1BE106188);
  (*(*(v23 - 8) + 8))(v7 + v22, v23);
  v24 = (v7 + v1[7]);
  *v24, v25, v26, v27, v28, v29, v30, v31;
  v24[1], v32, v33, v34, v35, v36, v37, v38;
  v39 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30, &qword_1BE0C9228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = sub_1BE04E784();
    (*(*(v47 - 8) + 8))(v7 + v39, v47);
  }

  else
  {
    *(v7 + v39), v40, v41, v42, v43, v44, v45, v46;
  }

  *(v7 + v1[9] + 8), v48, v49, v50, v51, v52, v53, v54;
  *(v7 + v1[10] + 8), v55, v56, v57, v58, v59, v60, v61;
  v62 = v0 + v6;
  *(v0 + v6 + 8), v63, v64, v65, v66, v67, v68, v69;
  *(v0 + v6 + 24), v70, v71, v72, v73, v74, v75, v76;
  *(v0 + v6 + 40), v77, v78, v79, v80, v81, v82, v83;
  *(v0 + v6 + 56), v84, v85, v86, v87, v88, v89, v90;
  *(v0 + v6 + 72), v91, v92, v93, v94, v95, v96, v97;
  *(v0 + v6 + 88), v98, v99, v100, v101, v102, v103, v104;
  v105 = v0 + v6 + v4[10];
  v106 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  if (!(*(*(v106 - 8) + 48))(v105, 1, v106))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v105, *(v105 + 8), v167, v168, v169, v170, v171, v172);
        break;
      case 0:
        v173 = sub_1BE04AA64();
        (*(*(v173 - 8) + 8))(v105, v173);
        break;
    }
  }

  v107 = v4[11];
  v108 = sub_1BE04AA64();
  v109 = *(v108 - 8);
  v110 = *(v109 + 48);
  if (!v110(v62 + v107, 1, v108))
  {
    (*(v109 + 8))(v62 + v107, v108);
  }

  v111 = v4[12];
  v112 = sub_1BE04AF64();
  v113 = *(v112 - 8);
  if (!(*(v113 + 48))(v62 + v111, 1, v112))
  {
    (*(v113 + 8))(v62 + v111, v112);
  }

  *(v62 + v4[13] + 8), v114, v115, v116, v117, v118, v119, v120;
  v121 = v4[14];
  if (!v110(v62 + v121, 1, v108))
  {
    (*(v109 + 8))(v62 + v121, v108);
  }

  *(v62 + v4[15] + 8), v122, v123, v124, v125, v126, v127, v128;
  v129 = v4[18];
  if (!v110(v62 + v129, 1, v108))
  {
    (*(v109 + 8))(v62 + v129, v108);
  }

  *(v62 + v4[19] + 8), v130, v131, v132, v133, v134, v135, v136;
  *(v62 + v4[20] + 8), v137, v138, v139, v140, v141, v142, v143;
  *(v62 + v4[21] + 8), v144, v145, v146, v147, v148, v149, v150;
  *(v62 + v4[22]), v151, v152, v153, v154, v155, v156, v157;
  *(v62 + v4[23]), v158, v159, v160, v161, v162, v163, v164;

  return swift_deallocObject();
}

uint64_t sub_1BD0C485C()
{
  v1 = type metadata accessor for MerchantTokenCell(0);
  v243 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v2 = (v0 + ((v243 + 32) & ~v243));
  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;
  v2[5], v17, v18, v19, v20, v21, v22, v23;
  v2[7], v24, v25, v26, v27, v28, v29, v30;
  v2[9], v31, v32, v33, v34, v35, v36, v37;
  v2[11], v38, v39, v40, v41, v42, v43, v44;
  v45 = type metadata accessor for UnifiedMerchantTokenData(0);
  v46 = (v2 + v45[10]);
  v47 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v244 = *(*(v47 - 8) + 48);
  if (!v244(v46, 1, v47))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v46, v46[1], v219, v220, v221, v222, v223, v224);
        break;
      case 0:
        v225 = sub_1BE04AA64();
        (*(*(v225 - 8) + 8))(v46, v225);
        break;
    }
  }

  v48 = v45[11];
  v49 = sub_1BE04AA64();
  v245 = *(v49 - 8);
  v50 = *(v245 + 48);
  if (!v50(v2 + v48, 1, v49))
  {
    (*(v245 + 8))(v2 + v48, v49);
  }

  v51 = v45[12];
  v52 = sub_1BE04AF64();
  v240 = *(v52 - 8);
  v241 = *(v240 + 48);
  if (!v241(v2 + v51, 1, v52))
  {
    (*(v240 + 8))(v2 + v51, v52);
  }

  *(v2 + v45[13] + 8), v53, v54, v55, v56, v57, v58, v59;
  v60 = v45[14];
  if (!v50(v2 + v60, 1, v49))
  {
    (*(v245 + 8))(v2 + v60, v49);
  }

  *(v2 + v45[15] + 8), v61, v62, v63, v64, v65, v66, v67;
  v68 = v45[18];
  if (!v50(v2 + v68, 1, v49))
  {
    (*(v245 + 8))(v2 + v68, v49);
  }

  *(v2 + v45[19] + 8), v69, v70, v71, v72, v73, v74, v75;
  *(v2 + v45[20] + 8), v76, v77, v78, v79, v80, v81, v82;
  *(v2 + v45[21] + 8), v83, v84, v85, v86, v87, v88, v89;
  *(v2 + v45[22]), v90, v91, v92, v93, v94, v95, v96;
  *(v2 + v45[23]), v97, v98, v99, v100, v101, v102, v103;
  v242 = v1;
  v104 = (v2 + *(v1 + 20));
  v104[1], v105, v106, v107, v108, v109, v110, v111;
  v104[3], v112, v113, v114, v115, v116, v117, v118;
  v104[5], v119, v120, v121, v122, v123, v124, v125;
  v104[7], v126, v127, v128, v129, v130, v131, v132;
  v104[9], v133, v134, v135, v136, v137, v138, v139;
  v104[11], v140, v141, v142, v143, v144, v145, v146;
  v147 = (v104 + v45[10]);
  if (!v244(v147, 1, v47))
  {
    v226 = swift_getEnumCaseMultiPayload();
    switch(v226)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v147, v147[1], v227, v228, v229, v230, v231, v232);
        break;
      case 0:
        (*(v245 + 8))(v147, v49);
        break;
    }
  }

  v148 = v45[11];
  if (!v50(v104 + v148, 1, v49))
  {
    (*(v245 + 8))(v104 + v148, v49);
  }

  v149 = v45[12];
  if (!v241(v104 + v149, 1, v52))
  {
    (*(v240 + 8))(v104 + v149, v52);
  }

  *(v104 + v45[13] + 8), v150, v151, v152, v153, v154, v155, v156;
  v157 = v45[14];
  if (!v50(v104 + v157, 1, v49))
  {
    (*(v245 + 8))(v104 + v157, v49);
  }

  *(v104 + v45[15] + 8), v158, v159, v160, v161, v162, v163, v164;
  v165 = v45[18];
  if (!v50(v104 + v165, 1, v49))
  {
    (*(v245 + 8))(v104 + v165, v49);
  }

  *(v104 + v45[19] + 8), v166, v167, v168, v169, v170, v171, v172;
  *(v104 + v45[20] + 8), v173, v174, v175, v176, v177, v178, v179;
  *(v104 + v45[21] + 8), v180, v181, v182, v183, v184, v185, v186;
  *(v104 + v45[22]), v187, v188, v189, v190, v191, v192, v193;
  *(v104 + v45[23]), v194, v195, v196, v197, v198, v199, v200;
  *(v2 + *(v242 + 24)), v201, v202, v203, v204, v205, v206, v207;
  v208 = (v2 + *(v242 + 28));
  if (!v244(v208, 3, v47))
  {
    v233 = swift_getEnumCaseMultiPayload();
    switch(v233)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v208, v208[1], v234, v235, v236, v237, v238, v239);
        break;
      case 0:
        (*(v245 + 8))(v208, v49);
        break;
    }
  }

  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59138, &qword_1BE1061E8);
  *(v208 + *(v209 + 28)), v210, v211, v212, v213, v214, v215, v216;

  return swift_deallocObject();
}

void sub_1BD0C4F08(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD921960(v1);
}

uint64_t sub_1BD0C4F44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37300, &unk_1BE0B1320);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD591D0, &qword_1BE1065A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD591D8, &qword_1BE1065A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59110, &qword_1BE1061A8);
  sub_1BD935918();
  sub_1BD935B28();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C50D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD372E8, &qword_1BE1067A0);
  sub_1BD0DE4F4(&qword_1EBD59430, &qword_1EBD372E8, &qword_1BE1067A0, MEMORY[0x1E69817F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C519C()
{
  v0[6], v1, v2, v3, v4, v5, v6, v7;
  v0[8], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0C5244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0C5300(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C53B0()
{
  v1 = (type metadata accessor for MoneyTransferButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  *(v2 + 32), v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1BE04E354();
    (*(*(v18 - 8) + 8))(v2 + v10, v18);
  }

  else
  {
    *(v2 + v10), v11, v12, v13, v14, v15, v16, v17;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C5514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59498, &qword_1BE106C38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0C5590()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C55C8()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0C5620@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04EF64();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C5688(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 48), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 80), v16, v17, v18, v19, v20, v21, v22;
  swift_unknownObjectRelease();
  if (*(v8 + 112))
  {
    *(v8 + 120), v23, v24, v25, v26, v27, v28, v29;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C56F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AuthorizationSheet(0, v5, *(v4 + 24), a4);
  v7 = (v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80)));
  v7[1], v8, v9, v10, v11, v12, v13, v14;
  v7[2], v15, v16, v17, v18, v19, v20, v21;

  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);
  *(v7 + v6[15] + 8), v22, v23, v24, v25, v26, v27, v28;
  *(v7 + v6[16] + 8), v29, v30, v31, v32, v33, v34, v35;
  v36 = (v7 + v6[17]);
  *v36, v37, v38, v39, v40, v41, v42, v43;
  v36[1], v44, v45, v46, v47, v48, v49, v50;
  sub_1BD0D45CC(*(v7 + v6[18]), *(v7 + v6[18] + 8), *(v7 + v6[18] + 16), v51, v52, v53, v54, v55);
  *(v7 + v6[19] + 8), v56, v57, v58, v59, v60, v61, v62;
  v63 = v6[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v71 = sub_1BE04C884();
    (*(*(v71 - 8) + 8))(v7 + v63, v71);
  }

  else
  {
    *(v7 + v63), v64, v65, v66, v67, v68, v69, v70;
  }

  sub_1BD0D4604(*(v7 + v6[21]), *(v7 + v6[21] + 8), v72, v73, v74, v75, v76, v77);
  sub_1BD0D4604(*(v7 + v6[22]), *(v7 + v6[22] + 8), v78, v79, v80, v81, v82, v83);
  sub_1BD25D6D4(*(v7 + v6[23]), *(v7 + v6[23] + 8), v84, v85, v86, v87, v88, v89);

  return swift_deallocObject();
}

uint64_t sub_1BD0C5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AuthorizationSheet(0, v5, *(v4 + 24), a4);
  v7 = (v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80)));
  v7[1], v8, v9, v10, v11, v12, v13, v14;
  v7[2], v15, v16, v17, v18, v19, v20, v21;

  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);
  *(v7 + v6[15] + 8), v22, v23, v24, v25, v26, v27, v28;
  *(v7 + v6[16] + 8), v29, v30, v31, v32, v33, v34, v35;
  v36 = (v7 + v6[17]);
  *v36, v37, v38, v39, v40, v41, v42, v43;
  v36[1], v44, v45, v46, v47, v48, v49, v50;
  sub_1BD0D45CC(*(v7 + v6[18]), *(v7 + v6[18] + 8), *(v7 + v6[18] + 16), v51, v52, v53, v54, v55);
  *(v7 + v6[19] + 8), v56, v57, v58, v59, v60, v61, v62;
  v63 = v6[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v71 = sub_1BE04C884();
    (*(*(v71 - 8) + 8))(v7 + v63, v71);
  }

  else
  {
    *(v7 + v63), v64, v65, v66, v67, v68, v69, v70;
  }

  sub_1BD0D4604(*(v7 + v6[21]), *(v7 + v6[21] + 8), v72, v73, v74, v75, v76, v77);
  sub_1BD0D4604(*(v7 + v6[22]), *(v7 + v6[22] + 8), v78, v79, v80, v81, v82, v83);
  sub_1BD25D6D4(*(v7 + v6[23]), *(v7 + v6[23] + 8), v84, v85, v86, v87, v88, v89);

  return swift_deallocObject();
}

uint64_t sub_1BD0C5B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AuthorizationSheet(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = sub_1BE04E6A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = v4 + v8;
  *(v4 + v8 + 8), v14, v15, v16, v17, v18, v19, v20;
  *(v4 + v8 + 16), v21, v22, v23, v24, v25, v26, v27;

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);
  *(v4 + v8 + v6[15] + 8), v28, v29, v30, v31, v32, v33, v34;
  *(v4 + v8 + v6[16] + 8), v35, v36, v37, v38, v39, v40, v41;
  v42 = (v4 + v8 + v6[17]);
  *v42, v43, v44, v45, v46, v47, v48, v49;
  v42[1], v50, v51, v52, v53, v54, v55, v56;
  sub_1BD0D45CC(*(v13 + v6[18]), *(v13 + v6[18] + 8), *(v13 + v6[18] + 16), v57, v58, v59, v60, v61);
  *(v4 + v8 + v6[19] + 8), v62, v63, v64, v65, v66, v67, v68;
  v69 = v6[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v77 = sub_1BE04C884();
    (*(*(v77 - 8) + 8))(v13 + v69, v77);
  }

  else
  {
    *(v13 + v69), v70, v71, v72, v73, v74, v75, v76;
  }

  sub_1BD0D4604(*(v13 + v6[21]), *(v13 + v6[21] + 8), v78, v79, v80, v81, v82, v83);
  sub_1BD0D4604(*(v13 + v6[22]), *(v13 + v6[22] + 8), v84, v85, v86, v87, v88, v89);
  v96 = sub_1BD25D6D4(*(v13 + v6[23]), *(v13 + v6[23] + 8), v90, v91, v92, v93, v94, v95);
  (*(v11 + 8))(v4 + ((v8 + v9 + v12) & ~v12), v10, v96);

  return swift_deallocObject();
}

uint64_t sub_1BD0C5DD0()
{
  v1 = sub_1BE04CA04();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0C5E74()
{
  v1 = sub_1BE04CA04();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0C5EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04F684();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BD0C5FCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04F684();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BD0C6088(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD59678, &unk_1BE107180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55600, &qword_1BE0D4A30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59688, &qword_1BE107190);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59690, &qword_1BE107198);
  type metadata accessor for AppProtectionShieldView(255, v1, v2, v3);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59698, &unk_1BE1071A0);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596A0, &qword_1BE0EFB88);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50060, &qword_1BE0EFB90);
  sub_1BE04EBD4();
  sub_1BE04FCF4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD36750, &qword_1EBD59698, &unk_1BE1071A0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD50058, &unk_1EBD596A0, &qword_1BE0EFB88, MEMORY[0x1E6980CF8]);
  swift_getWitnessTable();
  sub_1BD0DE4F4(&unk_1EBD596B0, &qword_1EBD50060, &qword_1BE0EFB90, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_1BD9548B0(&qword_1EBD50068, MEMORY[0x1E697FF20], MEMORY[0x1E697FF18]);
  swift_getOpaqueTypeMetadata2();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596C0, &unk_1BE0E1690);
  sub_1BE04EBD4();
  type metadata accessor for AuthorizationSheet.SheetShape(255, v8, v2, v4);
  swift_getWitnessTable();
  sub_1BE04E4C4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0, &unk_1BE0E1690, MEMORY[0x1E6980468]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596D0, &unk_1BE1071B0);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60, &qword_1BE0C3580);
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596E0, &unk_1BE1071C0);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  v5 = MEMORY[0x1E697F548];
  sub_1BD0DE4F4(&qword_1EBD36768, &unk_1EBD596D0, &unk_1BE1071B0, MEMORY[0x1E697F548]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, v5);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD36718, &unk_1EBD596E0, &unk_1BE1071C0, MEMORY[0x1E697FDC0]);
  swift_getWitnessTable();
  sub_1BE04E814();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD596F0, &unk_1BE0C9F40);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596F8, &qword_1BE1071D0);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  v6 = MEMORY[0x1E695C068];
  sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600, &qword_1BE0D4A30, MEMORY[0x1E695C068]);
  swift_getWitnessTable();
  sub_1BE04EE14();
  sub_1BD0DE4F4(&qword_1EBD36948, &unk_1EBD59678, &unk_1BE107180, v6);
  swift_getWitnessTable();
  sub_1BE04EE14();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0C6950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0C69BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0C6A68(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C6AA0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C6AE0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;

  v8[6], v9, v10, v11, v12, v13, v14, v15;
  v8[8], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD0C6B44()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0C6BCC()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  v0[4], v4, v5, v6, v7, v8, v9, v10;
  v0[6], v11, v12, v13, v14, v15, v16, v17;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0C6CA4()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;
  v0[7], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0C6D08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0C6D40(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD0C6D88(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD0C6DD8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0C6E28()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C6E60()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C6E98()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C6ED4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C6F18(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C6F50()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C6F88(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  v8[6], v16, v17, v18, v19, v20, v21, v22;
  v8[8], v23, v24, v25, v26, v27, v28, v29;
  v8[11], v30, v31, v32, v33, v34, v35, v36;
  v8[13], v37, v38, v39, v40, v41, v42, v43;

  return swift_deallocObject();
}

uint64_t sub_1BD0C700C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C7044(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C7084(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

void sub_1BD0C70E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD967D1C(v1);
}

uint64_t sub_1BD0C7178()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C71C0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C71F8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C7230(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C736C()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;
  v0[7], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0C7408(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[6], v9, v10, v11, v12, v13, v14, v15;
  v8[8], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD0C7460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0C751C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C75CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AvailablePass(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD0C7688(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AvailablePass(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0C779C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C77E0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C7824()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C785C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C789C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C78F8()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0C7938()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0C7988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1BE050554();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0C7AB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = sub_1BE050554();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0C7C1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BD0C7C78(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD0C7CDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  return sub_1BD97A8E4(v3 + v4, a2);
}

uint64_t sub_1BD0C7D3C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C7D7C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C7DB4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C7DF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59ED0, &qword_1BE108820);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59ED8, &qword_1BE108828);
  sub_1BD0E5E8C(255, qword_1EBD45AD0, 0x1E69B90E8);
  sub_1BD0DE4F4(&qword_1EBD59EE0, &qword_1EBD59ED0, &qword_1BE108820, MEMORY[0x1E697FDF8]);
  sub_1BD0DDEBC();
  sub_1BD980BA8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C7F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0C8020(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C80DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04D214();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0C8188(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04D214();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C8230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A010, &qword_1BE108AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0C82F4()
{
  v1 = (type metadata accessor for FinanceKitPredictedTransactionsView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1BE049BF4();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v2;
  sub_1BD0D45CC(*v7, *(v7 + 8), *(v7 + 16), v8, v9, v10, v11, v12);
  *(v7 + 24), v13, v14, v15, v16, v17, v18, v19;
  *(v7 + 32), v20, v21, v22, v23, v24, v25, v26;

  v27 = v1[9];
  v28 = sub_1BE04D214();
  (*(*(v28 - 8) + 8))(v7 + v27, v28);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD0C8484()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C84BC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C84F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C8530()
{
  if (*(v0 + 24))
  {
    *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C8580(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  if (*(v8 + 32))
  {
    *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C85D8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 16))
  {
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C863C()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0C8684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0C8740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C87F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0C8868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0C8974()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C89B8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C8A10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049E34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0C8A98()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C8AFC()
{
  v1 = (type metadata accessor for FeatureError(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  *(v0 + 16), v6, v7, v8, v9, v10, v11, v12;
  v13 = v0 + v2;

  v14 = v1[7];
  v15 = sub_1BE04B824();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v13 + v14, 1, v15))
  {
    (*(v16 + 8))(v13 + v14, v15);
  }

  if (!v17(v0 + v5, 1, v15))
  {
    (*(v16 + 8))(v0 + v5, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C8CE4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C8D20()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  *(v0 + 16), v4, v5, v6, v7, v8, v9, v10;
  v11 = sub_1BE04B7C4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v2, 1, v11))
  {
    (*(v12 + 8))(v0 + v2, v11);
  }

  v20 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + v20 + 8), v13, v14, v15, v16, v17, v18, v19;
  *(v0 + v21), v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1BD0C8E7C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  sub_1BE04EBD4();
  sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1BE04E2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A458, &qword_1BE109898);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD366F8, &qword_1EBD5A458, &qword_1BE109898, MEMORY[0x1E697C968]);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C9048()
{

  return swift_deallocObject();
}

id sub_1BD0C9080@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BD0C90EC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C9128(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C9160()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0C91A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C9208(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD0C9250()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD0C92A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C9320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C934C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C9378(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0C9434(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C9530()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C9568(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[4], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD0C95CC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C9604(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C963C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C96DC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8, &unk_1BE10A4D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0C9798(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8, &unk_1BE10A4D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C9848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04AF64();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0C9978(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BE04AF64();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0C9AE0()
{
  v1 = (type metadata accessor for FinanceKitTransactionFoundInMailView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v2[2], v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8, &unk_1BE10A4D0);
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  *(v2 + v1[9] + 8), v12, v13, v14, v15, v16, v17, v18;

  return swift_deallocObject();
}

uint64_t sub_1BD0C9BFC()
{
  v1 = (type metadata accessor for FinanceKitTransactionFoundInMailView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  *(v0 + v2 + 16), v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8, &unk_1BE10A4D0);
  (*(*(v11 - 8) + 8))(v0 + v2 + v10, v11);
  *(v0 + v2 + v1[9] + 8), v12, v13, v14, v15, v16, v17, v18;

  return swift_deallocObject();
}

uint64_t sub_1BD0C9D70()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C9E30(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C9EB4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C9EEC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 48) >= 7uLL)
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 24), v9, v10, v11, v12, v13, v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C9F3C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0C9F74()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0CA000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0CA054()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0CA08C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0CA0CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0CA120()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0CA1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s11TotalAmountVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380, &qword_1BE10B380);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BD0CA2E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s11TotalAmountVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380, &qword_1BE10B380);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BD0CA418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0CA484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0CA4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0CA634(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0CA770()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0CA7A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0CA808(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0CA84C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0C0, &qword_1BE10B950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0CA8C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0CA97C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0CAA30()
{
  v1 = (type metadata accessor for AppleCardBillingAddressSection(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  *(v0 + v2 + 8), v4, v5, v6, v7, v8, v9, v10;
  *(v0 + v2 + 16), v11, v12, v13, v14, v15, v16, v17;

  *(v0 + v2 + 32), v18, v19, v20, v21, v22, v23, v24;
  *(v0 + v2 + 48), v25, v26, v27, v28, v29, v30, v31;
  *(v0 + v2 + 72), v32, v33, v34, v35, v36, v37, v38;
  *(v0 + v2 + 88), v39, v40, v41, v42, v43, v44, v45;

  *(v0 + v2 + 104), v46, v47, v48, v49, v50, v51, v52;
  v53 = (v0 + v2 + v1[14]);
  v54 = type metadata accessor for FeatureError(0);
  if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
  {

    v55 = *(v54 + 20);
    v56 = sub_1BE04B824();
    v57 = *(v56 - 8);
    if (!(*(v57 + 48))(v53 + v55, 1, v56))
    {
      (*(v57 + 8))(v53 + v55, v56);
    }
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  *(v53 + *(v58 + 28)), v59, v60, v61, v62, v63, v64, v65;

  return swift_deallocObject();
}

uint64_t sub_1BD0CAC50()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0CAC88(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0CACC0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0CAD00(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0CAD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0CAE8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0CAFD4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0CB00C()
{
  v1 = type metadata accessor for RedemptionPresentation(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v70 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  *(v0 + v2 + 8), v4, v5, v6, v7, v8, v9, v10;
  *(v0 + v2 + 24), v11, v12, v13, v14, v15, v16, v17;
  v18 = v1[7];
  v19 = sub_1BE04AA64();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v0 + v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v3 + v18, v19);
  }

  v21 = v1[8];
  v22 = sub_1BE04AF64();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (!v24(v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v3 + v21, v22);
  }

  *(v3 + v1[10] + 8), v25, v26, v27, v28, v29, v30, v31;
  v32 = v1[11];
  if (!v24(v3 + v32, 1, v22))
  {
    (*(v23 + 8))(v3 + v32, v22);
  }

  *(v3 + v1[13] + 8), v33, v34, v35, v36, v37, v38, v39;
  v40 = (v0 + ((v70 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v40[1], v41, v42, v43, v44, v45, v46, v47;
  v40[3], v48, v49, v50, v51, v52, v53, v54;
  v40[5], v55, v56, v57, v58, v59, v60, v61;
  v40[6], v62, v63, v64, v65, v66, v67, v68;

  return swift_deallocObject();
}

uint64_t sub_1BD0CB294()
{
  v1 = type metadata accessor for RedemptionPresentation(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 24), v10, v11, v12, v13, v14, v15, v16;
  v17 = v1[7];
  v18 = sub_1BE04AA64();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v2 + v17, 1, v18))
  {
    (*(v19 + 8))(v2 + v17, v18);
  }

  v20 = v1[8];
  v21 = sub_1BE04AF64();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (!v23(v2 + v20, 1, v21))
  {
    (*(v22 + 8))(v2 + v20, v21);
  }

  *(v2 + v1[10] + 8), v24, v25, v26, v27, v28, v29, v30;
  v31 = v1[11];
  if (!v23(v2 + v31, 1, v21))
  {
    (*(v22 + 8))(v2 + v31, v21);
  }

  *(v2 + v1[13] + 8), v32, v33, v34, v35, v36, v37, v38;

  return swift_deallocObject();
}

uint64_t sub_1BD0CB4EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionPresentation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0CB558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionPresentation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0CB5CC(uint64_t *a1)
{
  sub_1BE04E8F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  return swift_getWitnessTable();
}

id sub_1BD0CB708@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1BD0CB780(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  sub_1BE048964();
  v4, v5, v6, v7, v8, v9, v10, v11;
  *(a2 + 8) = v3;
}

uint64_t sub_1BD0CB818(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0CB860(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0CB8B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0CB900@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0CB964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B758, &qword_1BE10CC48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0CB9D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B758, &qword_1BE10CC48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0CBA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0, "\\J\r");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD0CBB08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0, "\\J\r");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0CBBD0(__int128 *a1)
{
  v2 = *(a1 + 5);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55600, &qword_1BE0D4A30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B758, &qword_1BE10CC48);
  v4 = sub_1BE04EBD4();
  v22 = v2;
  v23 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v18 = *a1;
  v19 = v4;
  v20 = *(a1 + 24);
  v21 = WitnessTable;
  v6 = type metadata accessor for PaymentSheetContentContainer(255, &v18);
  v7 = swift_getWitnessTable();
  type metadata accessor for AuthorizationSheet(255, v6, v7, v8);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v9 = sub_1BE051874();
  v10 = sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600, &qword_1BE0D4A30, MEMORY[0x1E695C068]);
  v11 = swift_getWitnessTable();
  *&v18 = v3;
  *(&v18 + 1) = v9;
  v19 = v10;
  *&v20 = v11;
  sub_1BE04EE14();
  v12 = sub_1BE04EBD4();
  swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v15 = type metadata accessor for PaymentRequestViewContainer(255, v12, v13, v14);
  v16 = swift_getWitnessTable();
  *&v18 = v15;
  *(&v18 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  *&v18 = v15;
  *(&v18 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BD9EBD2C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  return swift_getWitnessTable();
}

uint64_t sub_1BD0CBEFC(void *a1)
{
  sub_1BE04F9B4();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0CBFFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7A0, &qword_1BE10CE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0CC084()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B7A0, &qword_1BE10CE10);
  sub_1BD9ED21C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0CC0E8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0CC120(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0CC1DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0CC298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B918, &qword_1BE10D088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0CC38C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1BE04AFE4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1BE049B04();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD0CC504(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1BE04AFE4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1BE049B04();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD0CC688()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BAF8, &qword_1BE10D700);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BB20, &qword_1BE10D720);
  sub_1BD0DE4F4(&qword_1EBD5BB28, &qword_1EBD5BAF8, &qword_1BE10D700, MEMORY[0x1E697D680]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BB30, &unk_1BE10D728);
  sub_1BD9FAB0C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0CC7C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BE0493F4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8, &qword_1BE0F10E0);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[9];
      goto LABEL_7;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0, &qword_1BE0F10D8);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[10];
      goto LABEL_7;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8, &qword_1BE0F10D0);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[11];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1BD0CCA44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BE04AFE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1BE0493F4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8, &qword_1BE0F10E0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0, &qword_1BE0F10D8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[10];
    goto LABEL_7;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8, &qword_1BE0F10D0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[11];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1BD0CCCC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_1BE049B04();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_1BE0493F4();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[10];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[11];

  return v19(v20, a2, v18);
}

uint64_t sub_1BD0CCEE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BE04AFE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1BE049B04();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v17 = sub_1BE0493F4();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[11];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1BD0CD100(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE049B04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1BE0493F4();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1BD0CD280(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BE049B04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_1BE0493F4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BD0CD40C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0CD444()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0, &unk_1BE0C7D50) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v20 = *(v5 + 64);
  v21 = sub_1BE04B2D4();
  v7 = *(v21 - 8);
  v8 = *(v7 + 80);
  swift_unknownObjectRelease();
  *(v0 + 32), v9, v10, v11, v12, v13, v14, v15;
  v16 = v0 + v3;
  v17 = sub_1BE04AF64();
  v18 = *(*(v17 - 8) + 8);
  v18(v16, v17);
  v18(v16 + *(v1 + 36), v17);
  if (!(*(v2 + 48))(v0 + v6, 1, v1))
  {
    v18(v0 + v6, v17);
    v18(v0 + v6 + *(v1 + 36), v17);
  }

  (*(v7 + 8))(v0 + ((v6 + v20 + v8) & ~v8), v21);

  return swift_deallocObject();
}

uint64_t sub_1BD0CD6CC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  *(v0 + 16), v3, v4, v5, v6, v7, v8, v9;
  v10 = sub_1BE04AF64();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v2, v10);
  v11(v0 + v2 + v1[11], v10);

  return swift_deallocObject();
}

uint64_t sub_1BD0CD7E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0, &unk_1BE0C7D50) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    v12 = sub_1BE04AF64();
    v13 = *(*(v12 - 8) + 8);
    v13(v0 + v2, v12);
    v13(v0 + v2 + *(v4 + 36), v12);
  }

  *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6, v7, v8, v9, v10, v11;

  return swift_deallocObject();
}

uint64_t sub_1BD0CD95C()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0CD99C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD0, &qword_1BE10DEE8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDE0, &unk_1BE10DF00);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDC8, &qword_1BE10DEE0) + 52);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD8, &unk_1BE10DEF0);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = v1[18];
  v9 = sub_1BE053924();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  *(v4 + v1[19] + 8), v10, v11, v12, v13, v14, v15, v16;
  *(v0 + v3), v17, v18, v19, v20, v21, v22, v23;

  return swift_deallocObject();
}

uint64_t sub_1BD0CDB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s14MerchantOriginOMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0CDC38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s14MerchantOriginOMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0CDCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD0CDDD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BD0CDEE0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CDF18()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CDF58()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CDF98()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0CE008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE0511B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0CE0B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE0511B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0CE1AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0CE1E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0CE21C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0CE2EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0CE338(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 40))
  {
    *(v8 + 48), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

void *sub_1BD0CE380@<X0>(char *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1BD20B2EC(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1BD0CE3B0(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  sub_1BE048C84();
  sub_1BD20B3A0(v3, v4, v5);
}

uint64_t sub_1BD0CE434@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F024();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0CE48C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0CE4C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F0E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CE614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE049B94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0CE66C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049534();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CE73C@<X0>(_WORD *a1@<X8>)
{
  result = sub_1BE0498C4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0CE770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720, &qword_1BE0DBCF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0CE82C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720, &qword_1BE0DBCF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0CE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CachedAsyncImage(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));
  sub_1BDA32618(*v6, v7, v8, v9, v10, v11, v12, v13);
  *(v6 + 8), v14, v15, v16, v17, v18, v19, v20;
  *(v6 + 24), v21, v22, v23, v24, v25, v26, v27;
  v28 = v5[10];
  v29 = sub_1BE04A134();
  v30 = *(v29 - 8);
  if (!(*(v30 + 48))(v6 + v28, 1, v29))
  {
    (*(v30 + 8))(v6 + v28, v29);
  }

  *(v6 + v5[12]), v31, v32, v33, v34, v35, v36, v37;

  return swift_deallocObject();
}

uint64_t sub_1BD0CEA3C()
{
  v1 = *(v0 + 16);
  v45 = *(v0 + 24);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350, &unk_1BE10F3D0);
  v2 = *(v43 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1BE04A134();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v10 = type metadata accessor for CachedAsyncImage(0, v1, v45, v9);
  v11 = *(*(v10 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v43);
  v44 = *(v6 + 8);
  v44(v0 + v7, v5);
  v12 = v0 + ((v7 + v8 + v11) & ~v11);
  sub_1BDA32618(*v12, v13, v14, v15, v16, v17, v18, v19);
  *(v12 + 8), v20, v21, v22, v23, v24, v25, v26;
  *(v12 + 24), v27, v28, v29, v30, v31, v32, v33;
  v34 = v10[10];
  if (!(*(v6 + 48))(v12 + v34, 1, v5))
  {
    v44(v12 + v34, v5);
  }

  *(v12 + v10[12]), v35, v36, v37, v38, v39, v40, v41;

  return swift_deallocObject();
}

uint64_t sub_1BD0CEC98(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C330, &qword_1BE10F390);
  sub_1BE04EBD4();
  sub_1BDA32814();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0CED18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C360, &qword_1BE10F508);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D80, &qword_1BE0C9780);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD0DE4F4(&qword_1EBD5C368, &qword_1EBD5C360, &qword_1BE10F508, MEMORY[0x1E697FDF8]);
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
  sub_1BD12E194();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0CEEA4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[4], a2, a3, a4, a5, a6, a7, a8;
  v8[6], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0CEEF4()
{
  v1 = type metadata accessor for DeviceViewModel(0);
  v2 = (*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80);
  v0[3], v3, v4, v5, v6, v7, v8, v9;
  v0[5], v10, v11, v12, v13, v14, v15, v16;

  v17 = v0 + v2;
  *(v0 + v2 + 8), v18, v19, v20, v21, v22, v23, v24;
  *(v0 + v2 + 24), v25, v26, v27, v28, v29, v30, v31;
  v32 = v1[6];
  v33 = sub_1BE04AA64();
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(v0 + v2 + v32, 1, v33))
  {
    (*(v34 + 8))(&v17[v32], v33);
  }

  *&v17[v1[7] + 8], v35, v36, v37, v38, v39, v40, v41;
  *&v17[v1[8] + 8], v42, v43, v44, v45, v46, v47, v48;
  *&v17[v1[9] + 8], v49, v50, v51, v52, v53, v54, v55;

  return swift_deallocObject();
}

uint64_t sub_1BD0CF078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD0CF150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DeviceViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1BD0CF20C()
{
  v1 = *(type metadata accessor for DeviceRowView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 24), v10, v11, v12, v13, v14, v15, v16;
  v17 = type metadata accessor for DeviceViewModel(0);
  v18 = v17[6];
  v19 = sub_1BE04AA64();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  *(v2 + v17[7] + 8), v21, v22, v23, v24, v25, v26, v27;
  *(v2 + v17[8] + 8), v28, v29, v30, v31, v32, v33, v34;
  *(v2 + v17[9] + 8), v35, v36, v37, v38, v39, v40, v41;

  return swift_deallocObject();
}

uint64_t sub_1BD0CF37C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C5A8, &qword_1BE10FA20);
  sub_1BD0DE4F4(&qword_1EBD5C5B8, &qword_1EBD5C5A8, &qword_1BE10FA20, MEMORY[0x1E69817F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0CF428()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CF460(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 56), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 64), v23, v24, v25, v26, v27, v28, v29;
  *(v8 + 80), v30, v31, v32, v33, v34, v35, v36;
  *(v8 + 88), v37, v38, v39, v40, v41, v42, v43;
  *(v8 + 96), v44, v45, v46, v47, v48, v49, v50;
  *(v8 + 104), v51, v52, v53, v54, v55, v56, v57;
  *(v8 + 120), v58, v59, v60, v61, v62, v63, v64;
  *(v8 + 216), v65, v66, v67, v68, v69, v70, v71;
  *(v8 + 224), v72, v73, v74, v75, v76, v77, v78;
  *(v8 + 240), v79, v80, v81, v82, v83, v84, v85;
  if (*(v8 + 248))
  {
    *(v8 + 256), v86, v87, v88, v89, v90, v91, v92;
  }

  sub_1BD0D4604(*(v8 + 272), *(v8 + 280), v87, v88, v89, v90, v91, v92);

  return swift_deallocObject();
}

uint64_t sub_1BD0CF50C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40, &unk_1BE0DFFB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8, &unk_1BE0DFF70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1BD0CF694(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40, &unk_1BE0DFFB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8, &unk_1BE0DFF70);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD0CF814()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;
  v0[9], v22, v23, v24, v25, v26, v27, v28;
  v0[10], v29, v30, v31, v32, v33, v34, v35;

  return swift_deallocObject();
}

uint64_t sub_1BD0CF874(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;
  v8[8], v30, v31, v32, v33, v34, v35, v36;

  return swift_deallocObject();
}

uint64_t sub_1BD0CF8D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF0, &unk_1BE10FE80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0CF980@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049A04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CFA4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE049A74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0CFB6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049144();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CFC14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049E24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CFCBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C750, &qword_1BE10FD78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C758, &qword_1BE10FD80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C760, &qword_1BE10FD88);
  sub_1BDA4A7D4();
  swift_getOpaqueTypeConformance2();
  sub_1BD0F9764();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0CFDB4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CFE64()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0CFF38()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0CFF78()
{
  swift_unknownObjectRelease();

  v0[6], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0CFFD0()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0D0018()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0D0050(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0D00A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BD0D0170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0D0240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CBC0, &qword_1BE110A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D0334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0D03A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0D0410()
{
  v1 = *(type metadata accessor for PeerPaymentAddMoneyRow(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v2[1], v4, v5, v6, v7, v8, v9, v10;
    v2[3], v11, v12, v13, v14, v15, v16, v17;
    v18 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v19 = sub_1BE04CF34();
    (*(*(v19 - 8) + 8))(v2 + v18, v19);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v20 = type metadata accessor for AvailablePass(0);
  v21 = (v2 + v20[6]);
  v22 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
  {
    v21[1], v23, v24, v25, v26, v27, v28, v29;
    v30 = v22[5];
    v31 = sub_1BE04DA84();
    (*(*(v31 - 8) + 8))(v21 + v30, v31);
    *(v21 + v22[6] + 8), v32, v33, v34, v35, v36, v37, v38;
    *(v21 + v22[7] + 8), v39, v40, v41, v42, v43, v44, v45;
    *(v21 + v22[8] + 8), v46, v47, v48, v49, v50, v51, v52;
  }

  v53 = (v2 + v20[7]);
  v54 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
  {

    v55 = *(v54 + 28);
    v56 = sub_1BE04AF64();
    v57 = *(v56 - 8);
    if (!(*(v57 + 48))(v53 + v55, 1, v56))
    {
      (*(v57 + 8))(v53 + v55, v56);
    }
  }

  v58 = v2 + v20[10];
  v59 = type metadata accessor for PassEligibleRewardsInfo(0);
  if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
  {
    v67 = *(v58 + 2);
    if (v67 != 1)
    {
      v67, v60, v61, v62, v63, v64, v65, v66;
      *(v58 + 4), v68, v69, v70, v71, v72, v73, v74;
      *(v58 + 6), v75, v76, v77, v78, v79, v80, v81;
    }

    v82 = *(v58 + 9);
    if (v82 != 1)
    {
      v82, v60, v61, v62, v63, v64, v65, v66;
      *(v58 + 11), v83, v84, v85, v86, v87, v88, v89;
      *(v58 + 13), v90, v91, v92, v93, v94, v95, v96;
    }

    v97 = *(v59 + 28);
    v98 = sub_1BE04AF64();
    v99 = *(v98 - 8);
    v100 = *(v99 + 48);
    if (!v100(&v58[v97], 1, v98))
    {
      (*(v99 + 8))(&v58[v97], v98);
    }

    v101 = *(v59 + 32);
    if (!v100(&v58[v101], 1, v98))
    {
      (*(v99 + 8))(&v58[v101], v98);
    }
  }

  v102 = (v2 + v20[12]);
  if (*v102)
  {

    v102[4], v103, v104, v105, v106, v107, v108, v109;
  }

  v110 = (v2 + v20[13]);
  if (*v110)
  {

    v110[2], v111, v112, v113, v114, v115, v116, v117;
  }

  *(v2 + v20[14]), v60, v61, v62, v63, v64, v65, v66;
  *(v2 + v20[15]), v118, v119, v120, v121, v122, v123, v124;

  return swift_deallocObject();
}

uint64_t sub_1BD0D0924(uint64_t *a1)
{
  sub_1BE04E8F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0D0A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0D0B6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0D0CA8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_1BE04AD84();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[9]];

  return v15(v16, a2, v14);
}

char *sub_1BD0D0E2C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_1BE04AD84();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[9]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD0D0FC0()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD0D107C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D008, &qword_1BE1117B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D060, &qword_1BE111828);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D000, &qword_1BE1117B0);
  sub_1BDA67B10();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD5D068, &qword_1EBD5D060, &qword_1BE111828, MEMORY[0x1E6981F48]);
  sub_1BD170E70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0D1224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0D12E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0D1390()
{
  v1 = (type metadata accessor for ActionButton(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  *(v0 + v2 + 16), v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
  (*(*(v11 - 8) + 8))(v0 + v2 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_1BD0D1484()
{
  v1 = (type metadata accessor for ActionButton(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  *(v0 + v2 + 16), v5, v6, v7, v8, v9, v10, v11;
  v12 = v1[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
  (*(*(v13 - 8) + 8))(v4 + v12, v13);

  return swift_deallocObject();
}

uint64_t sub_1BD0D15B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D168, &qword_1BE111BF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D16C4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0D16FC()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;
  v0[7], v8, v9, v10, v11, v12, v13, v14;
  v0[9], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD0D175C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0D17F4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0D182C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0D186C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D18B4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

BOOL sub_1BD0D1984(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1BDA731C0(v12, v14);
}

uint64_t sub_1BD0D1A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D518, &qword_1BE112BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D1AEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0D1B24(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0D1B64(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0D1B9C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0D1BD4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0D1C2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0D1C64()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0D1CA4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0D1CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5D8, &qword_1BE113088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0D1D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D648, &qword_1BE113100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D1DB4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D1E00@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1BD0D1ECC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1BE048C84();
}

uint64_t sub_1BD0D1F2C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B258, &unk_1BE0FD4A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[17];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD0D20BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B258, &unk_1BE0FD4A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[17];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD0D224C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8C8, &qword_1BE1138F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D22C0()
{
  v1 = sub_1BE04D474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for SavingsBalanceHistoryView(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  *(v0 + v6 + 24), v8, v9, v10, v11, v12, v13, v14;
  v15 = (v0 + v6 + v5[6]);
  *v15, v16, v17, v18, v19, v20, v21, v22;
  v15[1], v23, v24, v25, v26, v27, v28, v29;
  v30 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860) + 32);
  v31 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    v32 = *(v31 + 20);
    v33 = sub_1BE04AF64();
    (*(*(v33 - 8) + 8))(&v30[v32], v33);
  }

  v34 = v5[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = sub_1BE04E354();
    (*(*(v42 - 8) + 8))(v7 + v34, v42);
  }

  else
  {
    *(v7 + v34), v35, v36, v37, v38, v39, v40, v41;
  }

  v43 = v5[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = sub_1BE04EB44();
    (*(*(v51 - 8) + 8))(v7 + v43, v51);
  }

  else
  {
    *(v7 + v43), v44, v45, v46, v47, v48, v49, v50;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0D2598()
{
  v1 = type metadata accessor for SavingsBalanceHistoryView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v52 = *(*(v1 - 1) + 64);
  v3 = sub_1BE04D474();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;

  *(v0 + v2 + 24), v7, v8, v9, v10, v11, v12, v13;
  v14 = (v0 + v2 + v1[6]);
  *v14, v15, v16, v17, v18, v19, v20, v21;
  v14[1], v22, v23, v24, v25, v26, v27, v28;
  v29 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860) + 32);
  v30 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    v31 = *(v30 + 20);
    v32 = sub_1BE04AF64();
    (*(*(v32 - 8) + 8))(&v29[v31], v32);
  }

  v33 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = sub_1BE04E354();
    (*(*(v41 - 8) + 8))(v6 + v33, v41);
  }

  else
  {
    *(v6 + v33), v34, v35, v36, v37, v38, v39, v40;
  }

  v42 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = sub_1BE04EB44();
    (*(*(v50 - 8) + 8))(v6 + v42, v50);
  }

  else
  {
    *(v6 + v42), v43, v44, v45, v46, v47, v48, v49;
  }

  (*(v4 + 8))(v0 + ((v2 + v52 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_1BD0D289C()
{
  v1 = type metadata accessor for SavingsBalanceHistoryView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  *(v0 + v2 + 24), v5, v6, v7, v8, v9, v10, v11;
  v12 = (v0 + v2 + v1[6]);
  *v12, v13, v14, v15, v16, v17, v18, v19;
  v12[1], v20, v21, v22, v23, v24, v25, v26;
  v27 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860) + 32);
  v28 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    v29 = *(v28 + 20);
    v30 = sub_1BE04AF64();
    (*(*(v30 - 8) + 8))(&v27[v29], v30);
  }

  v31 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = sub_1BE04E354();
    (*(*(v39 - 8) + 8))(v4 + v31, v39);
  }

  else
  {
    *(v4 + v31), v32, v33, v34, v35, v36, v37, v38;
  }

  v40 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = sub_1BE04EB44();
    (*(*(v48 - 8) + 8))(v4 + v40, v48);
  }

  else
  {
    *(v4 + v40), v41, v42, v43, v44, v45, v46, v47;
  }

  *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), v49, v50, v51, v52, v53, v54, v55;

  return swift_deallocObject();
}

uint64_t sub_1BD0D2B04()
{
  v1 = type metadata accessor for SavingsBalanceHistoryView(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  *(v0 + 16), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v2;

  *(v0 + v2 + 24), v11, v12, v13, v14, v15, v16, v17;
  v18 = (v0 + v2 + v1[6]);
  *v18, v19, v20, v21, v22, v23, v24, v25;
  v18[1], v26, v27, v28, v29, v30, v31, v32;
  v33 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860) + 32);
  v34 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
  {
    v35 = *(v34 + 20);
    v36 = sub_1BE04AF64();
    (*(*(v36 - 8) + 8))(&v33[v35], v36);
  }

  v37 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = sub_1BE04E354();
    (*(*(v45 - 8) + 8))(v10 + v37, v45);
  }

  else
  {
    *(v10 + v37), v38, v39, v40, v41, v42, v43, v44;
  }

  v46 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = sub_1BE04EB44();
    (*(*(v54 - 8) + 8))(v10 + v46, v54);
  }

  else
  {
    *(v10 + v46), v47, v48, v49, v50, v51, v52, v53;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0D2DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB00, &qword_1BE113E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D2E2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB00, &qword_1BE113E10);
  sub_1BDA918B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0D2E90(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0D2F4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0D2FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD0D30B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0D3170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB78, &qword_1BE113F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0D31E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB78, &qword_1BE113F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D3248()
{
  v1 = type metadata accessor for FinanceKitTransactionMapView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v2[2], v3, v4, v5, v6, v7, v8, v9;
  v10 = *(type metadata accessor for FinanceKitTransactionMapView.ViewModel(0) + 24);
  v11 = sub_1BE0491B4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  *(v2 + *(v1 + 20) + 8), v13, v14, v15, v16, v17, v18, v19;
  *(v2 + *(v1 + 24) + 8), v20, v21, v22, v23, v24, v25, v26;

  return swift_deallocObject();
}

uint64_t sub_1BD0D33B4()
{
  v1 = type metadata accessor for FinanceKitTransactionMapView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  *(v0 + v2 + 16), v4, v5, v6, v7, v8, v9, v10;
  v11 = *(type metadata accessor for FinanceKitTransactionMapView.ViewModel(0) + 24);
  v12 = sub_1BE0491B4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  *(v3 + *(v1 + 20) + 8), v14, v15, v16, v17, v18, v19, v20;
  *(v3 + *(v1 + 24) + 8), v21, v22, v23, v24, v25, v26, v27;

  return swift_deallocObject();
}

uint64_t sub_1BD0D3578@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0D44B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return sub_1BE048964();
  }

  return result;
}

void sub_1BD0D455C(void *a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

void sub_1BD0D4604(id result, SEL a2, id x2_0, id x3_0, id x4_0, id x5_0, id x6_0, id x7_0)
{
  if ((a2 & 1) == 0)
  {
    result, a2, x2_0, x3_0, x4_0, x5_0, x6_0, x7_0;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for PaymentOfferInstallmentAmountEntry(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  sub_1BE048964();
  return v2 + 16;
}

uint64_t sub_1BD0D4658@<X0>(void *a1@<X8>)
{
  result = sub_1BE04E684();
  *a1 = v3;
  return result;
}

void sub_1BD0D468C(void *result, void *a2)
{
  if (result)
  {

    a2, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t get_enum_tag_for_layout_string_13PaymentUIBase16ClientViewSource_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI15SetupFooterViewV13ConfigurationV0eG0VSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1BD0D4744(uint64_t result, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (result)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

void *sub_1BD0D4770(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;

    return sub_1BE048C84();
  }

  return result;
}

void static AppIntentUIUtilities.annotate(view:withEntityForPass:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37128, &unk_1BE0B1160);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7[-v4];
  if (a2)
  {
    sub_1BD02F840(a2, 0, 0xF000000000000000, v12);
    v8 = v12[0];
    v9 = v12[1];
    v10 = v12[2];
    v11 = v12[3];
    sub_1BD0303B8(v12, v7);
    sub_1BD0304AC();
    sub_1BE048904();
    v6 = sub_1BE048914();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    sub_1BE052F74();
    sub_1BD030458(v12);
  }
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

uint64_t static AppIntentUIUtilities.annotate(view:withEntityForTransaction:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37128, &unk_1BE0B1160);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9[-v4 - 8];
  sub_1BD51B424(a2, v15);
  v12 = v15[2];
  v13 = v15[3];
  v14 = v16;
  v10 = v15[0];
  v11 = v15[1];
  sub_1BD0D7104(v15, v9);
  sub_1BD0D7160();
  sub_1BE048904();
  v6 = sub_1BE048914();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1BE052F74();
  return sub_1BD0D71B4(v15);
}

void sub_1BD0D4C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0, &unk_1BE1024F0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(&v15[v14], v13, v9);
  aBlock[4] = a3;
  v25 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD976224;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  v25, v17, v18, v19, v20, v21, v22, v23;
  a5(v16);
  _Block_release(v16);
}

void sub_1BD0D4DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0, &unk_1BE1024F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  v6 = sub_1BE04A9C4();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(&v8[v7], v5, v2);
  aBlock[4] = sub_1BD0DB158;
  v18 = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD976224;
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);
  v18, v10, v11, v12, v13, v14, v15, v16;
  PKOpenURL();
  _Block_release(v9);
}

id AppIntentUIUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentUIUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentUIUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppIntentUIUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppIntentUIUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD0D50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9, a3, a4);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1BD0D5130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10, a3, a4);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_1BD0D518C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE052AA4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0D522C(uint64_t a1, id *a2)
{
  v3 = sub_1BE052424();
  *a2 = 0;
  return v3 & 1;
}

void sub_1BD0D52AC(uint64_t *a2@<X8>)
{
  sub_1BE052434();
  v4 = v3;
  v5 = sub_1BE052404();
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5;
}

uint64_t sub_1BD0D52F0()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t sub_1BD0D5338(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v2);
  return sub_1BE053D64();
}

_DWORD *sub_1BD0D537C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1BD0D543C(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  swift_getWitnessTable();
  sub_1BE04CDC4();
  return sub_1BE053D64();
}

uint64_t sub_1BD0D54B4(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError, &unk_1BE0B6318);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1BD0D5520(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError, &unk_1BE0B6318);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1BD0D558C(void *a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError, &unk_1BE0B6318);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1BD0D561C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError, &unk_1BE0B6318);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1BD0D56A8(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError, &unk_1BE0B6550);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1BD0D5714(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError, &unk_1BE0B6550);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1BD0D5780(void *a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError, &unk_1BE0B6550);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1BD0D5810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError, &unk_1BE0B6550);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1BD0D589C(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError, &unk_1BE0B6418);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1BD0D5908(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError, &unk_1BE0B6418);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1BD0D5974(void *a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError, &unk_1BE0B6418);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1BD0D5A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError, &unk_1BE0B6418);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1BD0D5A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE053D04();
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD0D5AE0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1BE04CDB4();
}

uint64_t sub_1BD0D5B4C(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD37B60, type metadata accessor for PKAccessibilityIdentifier, &unk_1BE0B32C4);
  sub_1BD0D8820(&qword_1EBD37B68, type metadata accessor for PKAccessibilityIdentifier, &unk_1BE0B326C);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D5C08(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD35EE0, type metadata accessor for PKContactField, &unk_1BE0B362C);
  sub_1BD0D8820(&qword_1EBD37B58, type metadata accessor for PKContactField, &unk_1BE0B35D4);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D5CC4(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD37BA0, type metadata accessor for PKAnalyticsSubject, &unk_1BE0B2048);
  sub_1BD0D8820(&unk_1EBD37BA8, type metadata accessor for PKAnalyticsSubject, &unk_1BE0B1FF0);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D5D80(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD38340, type metadata accessor for TextStyle, &unk_1BE0B6948);
  sub_1BD0D8820(&qword_1EBD38348, type metadata accessor for TextStyle, &unk_1BE0B68E8);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D5E3C(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD38230, type metadata accessor for UIContentSizeCategory, &unk_1BE0B5FE4);
  sub_1BD0D8820(&qword_1EBD38238, type metadata accessor for UIContentSizeCategory, &unk_1BE0B5F84);

  return sub_1BE053A24();
}

double sub_1BD0D5EF8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1BD0D5F04(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD38250, type metadata accessor for Weight, &unk_1BE0B5D74);
  sub_1BD0D8820(&qword_1EBD38258, type metadata accessor for Weight, &unk_1BE0B5D14);
  sub_1BD0DAEB4();
  return sub_1BE053A24();
}

uint64_t sub_1BD0D5FCC(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD37B70, type metadata accessor for PKPaymentNetwork, &unk_1BE0B2EBC);
  sub_1BD0D8820(&qword_1EBD37B78, type metadata accessor for PKPaymentNetwork, &unk_1BE0B2E64);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6088(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  sub_1BD0D8820(&qword_1EBD37BB8, type metadata accessor for PKAnalyticsKey, &unk_1BE0B1EF0);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6144(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey, &unk_1BE0B3A4C);
  sub_1BD0D8820(&qword_1EBD37B98, type metadata accessor for OpenExternalURLOptionsKey, &unk_1BE0B217C);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6200(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD38278, type metadata accessor for AttributeName, &unk_1BE0B6294);
  sub_1BD0D8820(&qword_1EBD38280, type metadata accessor for AttributeName, &unk_1BE0B5AA8);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D62BC(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD38268, type metadata accessor for TraitKey, &unk_1BE0B5C1C);
  sub_1BD0D8820(&qword_1EBD38270, type metadata accessor for TraitKey, &unk_1BE0B5BBC);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6378(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD382B8, type metadata accessor for UITextContentType, &unk_1BE0B4A20);
  sub_1BD0D8820(&qword_1EBD382C0, type metadata accessor for UITextContentType, &unk_1BE0B49C0);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6434(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD382C8, type metadata accessor for ActivityType, &unk_1BE0B4548);
  sub_1BD0D8820(&qword_1EBD382D0, type metadata accessor for ActivityType, &unk_1BE0B44F0);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D64F0(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD382A8, type metadata accessor for UIBackgroundTaskIdentifier, &unk_1BE0B55A0);
  sub_1BD0D8820(&qword_1EBD382B0, type metadata accessor for UIBackgroundTaskIdentifier, &unk_1BE0B5540);
  return sub_1BE053A24();
}

uint64_t sub_1BD0D65AC(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD37B80, type metadata accessor for Key, &unk_1BE0B3A08);
  sub_1BD0D8820(&qword_1EBD37B88, type metadata accessor for Key, &unk_1BE0B2334);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6668(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD38298, type metadata accessor for PKPassLibraryNotificationKey, &unk_1BE0B62D8);
  sub_1BD0D8820(&qword_1EBD382A0, type metadata accessor for PKPassLibraryNotificationKey, &unk_1BE0B5848);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6724(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1BE0B61A0);
  sub_1BD0D8820(&qword_1EBD38228, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1BE0B6100);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D67E0(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD38288, type metadata accessor for FileProtectionType, &unk_1BE0B59B0);
  sub_1BD0D8820(&qword_1EBD38290, type metadata accessor for FileProtectionType, &unk_1BE0B5950);

  return sub_1BE053A24();
}

void sub_1BD0D689C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1BE052404();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_1BD0D68E4(uint64_t a1)
{
  sub_1BD0D8820(&qword_1EBD38240, type metadata accessor for VFXWorldLoaderOption, &unk_1BE0B6250);
  sub_1BD0D8820(&qword_1EBD38248, type metadata accessor for VFXWorldLoaderOption, &unk_1BE0B5E70);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D69A0(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD38180, type metadata accessor for PrivateEmailError, &unk_1BE0B5708);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BD0D6A0C(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD38180, type metadata accessor for PrivateEmailError, &unk_1BE0B5708);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BD0D6A78(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError, &unk_1BE0B6318);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1BD0D6AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError, &unk_1BE0B6318);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1BD0D6B68(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381F8, type metadata accessor for CIDVUIBiometricBindingEnrollmentError, &unk_1BE0B5138);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BD0D6BD4(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381F8, type metadata accessor for CIDVUIBiometricBindingEnrollmentError, &unk_1BE0B5138);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BD0D6C40(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError, &unk_1BE0B6550);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1BD0D6CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError, &unk_1BE0B6550);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1BD0D6D30(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381C0, type metadata accessor for CIDVUIProofingError, &unk_1BE0B5434);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BD0D6D9C(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381C0, type metadata accessor for CIDVUIProofingError, &unk_1BE0B5434);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BD0D6E08(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError, &unk_1BE0B6418);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1BD0D6E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError, &unk_1BE0B6418);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1BD0D6F00()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1BFB40DD0](*&v1);
}

uint64_t sub_1BD0D6F64()
{
  v0 = sub_1BE052434();
  v2 = v1;
  v3 = MEMORY[0x1BFB3F690](v0);
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

void sub_1BD0D6FA0(uint64_t a1)
{
  sub_1BE052434();
  v2 = v1;
  sub_1BE052524();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD0D6FF4(uint64_t a1)
{
  sub_1BE052434();
  v2 = v1;
  sub_1BE053D04();
  sub_1BE052524();
  v3 = sub_1BE053D64();
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

uint64_t sub_1BD0D707C(void *a1, uint64_t *a2)
{
  v2 = sub_1BE052434();
  v4 = v3;
  v5 = sub_1BE052434();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1BE053B84();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

unint64_t sub_1BD0D7160()
{
  result = qword_1EBD37138;
  if (!qword_1EBD37138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37138);
  }

  return result;
}

unint64_t sub_1BD0D722C()
{
  result = qword_1EBD37140;
  if (!qword_1EBD37140)
  {
    sub_1BE04EAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37140);
  }

  return result;
}

uint64_t sub_1BD0D7278()
{
  v1 = sub_1BE04D214();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1BD0D73B0;
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 6, 0, 0, 0x6C6C61576E65706FLL, 0xEC00000029287465, sub_1BD0D4B94, 0, v3);
}

uint64_t sub_1BD0D73B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD0D74AC, 0, 0);
}

uint64_t sub_1BD0D74AC(uint64_t a1)
{
  v34 = v1;
  v2 = *(v1 + 48);
  sub_1BE04D074();
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 16);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    if (v2)
    {
      v11 = 0x73736563637573;
    }

    else
    {
      v11 = 0x64656C696166;
    }

    v32 = v7;
    v12 = v2;
    if (v2)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    v14 = sub_1BD123690(v11, v13, &v33);
    v15 = v13;
    v2 = v12;
    v15, v16, v17, v18, v19, v20, v21, v22;
    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v3, v4, "Open Wallet: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10, v23, v24, v25, v26, v27, v28, v29);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    (*(v6 + 8))(v32, v8);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v30 = *(v1 + 8);

  return v30(v2);
}

uint64_t sub_1BD0D7668()
{
  v1 = sub_1BE04D214();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1BD0D779C;
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 6, 0, 0, 0xD000000000000014, 0x80000001BE118370, sub_1BD0D4BD0, 0, v3);
}

uint64_t sub_1BD0D779C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD0D7898, 0, 0);
}

uint64_t sub_1BD0D7898(uint64_t a1)
{
  v34 = v1;
  v2 = *(v1 + 48);
  sub_1BE04D074();
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 16);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    if (v2)
    {
      v11 = 0x73736563637573;
    }

    else
    {
      v11 = 0x64656C696166;
    }

    v32 = v7;
    v12 = v2;
    if (v2)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    v14 = sub_1BD123690(v11, v13, &v33);
    v15 = v13;
    v2 = v12;
    v15, v16, v17, v18, v19, v20, v21, v22;
    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v3, v4, "Open Wallet settings: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10, v23, v24, v25, v26, v27, v28, v29);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    (*(v6 + 8))(v32, v8);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v30 = *(v1 + 8);

  return v30(v2);
}

uint64_t sub_1BD0D7A54(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1BE04D214();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD0D7B14, 0, 0);
}

uint64_t sub_1BD0D7B14()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1BD0D7C0C;
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001BE118350, sub_1BD0D93A8, v2, v4);
}

uint64_t sub_1BD0D7C0C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD0D7D24, 0, 0);
}

uint64_t sub_1BD0D7D24(uint64_t a1)
{
  v34 = v1;
  v2 = *(v1 + 64);
  sub_1BE04D074();
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 24);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    if (v2)
    {
      v11 = 0x73736563637573;
    }

    else
    {
      v11 = 0x64656C696166;
    }

    v32 = v7;
    v12 = v2;
    if (v2)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    v14 = sub_1BD123690(v11, v13, &v33);
    v15 = v13;
    v2 = v12;
    v15, v16, v17, v18, v19, v20, v21, v22;
    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v3, v4, "Open URL: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10, v23, v24, v25, v26, v27, v28, v29);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    (*(v6 + 8))(v32, v8);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v30 = *(v1 + 8);

  return v30(v2);
}

uint64_t sub_1BD0D7EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1BD0D7F18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1BE048964();
  }

  else
  {
    return sub_1BE048C84();
  }
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

unint64_t sub_1BD0D7F70()
{
  result = qword_1EBD37430;
  if (!qword_1EBD37430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37430);
  }

  return result;
}

unint64_t sub_1BD0D7FC4()
{
  result = qword_1EBD37438;
  if (!qword_1EBD37438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37438);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BD0D81B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0D81D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BD0D83DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0D83FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FundingSourceButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for UIFlowItemConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BD0D8820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0, &unk_1BE1024F0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0D9448(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0, &unk_1BE1024F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0, &unk_1BE1024F0);
  return sub_1BE052864();
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

uint64_t sub_1BD0D95DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0D95FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1BD0D971C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0D973C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1BD0DAA5C()
{
  result = qword_1EBD381A8;
  if (!qword_1EBD381A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD381A8);
  }

  return result;
}

unint64_t sub_1BD0DAEB4()
{
  result = qword_1EBD38260;
  if (!qword_1EBD38260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38260);
  }

  return result;
}

uint64_t sub_1BD0DB188()
{
  sub_1BD0D4534(v0 + 16);
  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocClassInstance();
}

id _s9PassKitUI29PKDataReleaseRelyingPartyCellCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD0DB300()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v7 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v8 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_category);
  v9 = objc_allocWithZone(PKPaymentSetupProductsViewController);
  sub_1BD0DB624();
  v10 = sub_1BE052724();
  v11 = [v9 initWithProvisioningController:v6 context:v7 delegate:0 category:v8 paymentSetupProducts:v10];

  [v11 setFlowDelegate_];
  sub_1BE052434();
  v13 = v12;
  v14 = sub_1BE04BB74();
  v13, v15, v16, v17, v18, v19, v20, v21;
  [v11 setReporter_];

  return v11;
}

uint64_t sub_1BD0DB4C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD0DB4FC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD0DB624()
{
  result = qword_1EBD38568;
  if (!qword_1EBD38568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD38568);
  }

  return result;
}

id sub_1BD0DB670(id result, void *a2, unint64_t a3)
{
  v6 = result;
  if (a3 >> 62)
  {
    if (sub_1BE053704() != 1)
    {
      goto LABEL_19;
    }

    result = sub_1BE053704();
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_19;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1BFB40900](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = *(a3 + 32);
  }

  v8 = v7;
  result = [v7 configuration];
  if (!result)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = result;
  v10 = [result type];

  if (v10 == 7)
  {
    goto LABEL_21;
  }

  result = [v8 configuration];
  if (!result)
  {
    goto LABEL_30;
  }

  v18 = result;
  v19 = [result productIdentifier];

  if (!v19)
  {
    sub_1BE052434();
    goto LABEL_15;
  }

  v20 = sub_1BE052434();
  v22 = v21;

  v23 = sub_1BE052434();
  if (!v22)
  {
LABEL_15:
    v24, v24, v25, v26, v27, v28, v29, v30;
    goto LABEL_16;
  }

  if (v20 == v23 && v22 == v24)
  {
    v31 = v24;
    a3, v24, v23, v26, v27, v28, v29, v30;
    v22, v32, v33, v34, v35, v36, v37, v38;
    v39 = v31;
LABEL_22:
    v39, v11, v12, v13, v14, v15, v16, v17;
    v64 = type metadata accessor for PaymentSetupProductFlowSection();
    v65 = objc_allocWithZone(v64);
    *&v65[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = MEMORY[0x1E69E7CC0];
    *&v65[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v66 = &v65[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
    *v66 = 0xD000000000000012;
    *(v66 + 1) = 0x80000001BE118AA0;
    *&v65[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = v6;
    *&v65[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = v8;
    v68.receiver = v65;
    v68.super_class = v64;
    sub_1BE048964();
    v46 = objc_msgSendSuper2(&v68, sel_init);
    v47 = &off_1F3BAAA80;
    goto LABEL_23;
  }

  v48 = v24;
  v49 = sub_1BE053B84();
  v22, v50, v51, v52, v53, v54, v55, v56;
  v48, v57, v58, v59, v60, v61, v62, v63;
  if (v49)
  {
LABEL_21:
    v39 = a3;
    goto LABEL_22;
  }

LABEL_16:
  result = [v8 configuration];
  if (result)
  {
    v40 = result;
    v41 = [result type];

    if (v41 == 6)
    {
      goto LABEL_21;
    }

LABEL_19:
    v42 = type metadata accessor for PaymentSetupProductsFlowItem();
    v43 = objc_allocWithZone(v42);
    *&v43[OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v44 = &v43[OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_identifier];
    *v44 = 0xD000000000000010;
    *(v44 + 1) = 0x80000001BE118A60;
    *&v43[OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_context] = v6;
    *&v43[OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_category] = a2;
    *&v43[OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_products] = a3;
    v69.receiver = v43;
    v69.super_class = v42;
    sub_1BE048964();
    v45 = a2;
    v46 = objc_msgSendSuper2(&v69, sel_init);
    v47 = &off_1F3B91888;
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1BE0B69E0;
    *(v67 + 32) = v46;
    *(v67 + 40) = v47;
    *(v3 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v3 + 40) = 0xD000000000000013;
    *(v3 + 48) = 0x80000001BE118A80;
    *(v3 + 56) = v67;
    *(v3 + 32) = 514;
    return v3;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1BD0DBA78()
{
  v1 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
  v2 = sub_1BE048964();
  v6 = sub_1BD87126C(v2, 0, 0);
  v3 = v0 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3B91888, v6, &off_1F3BC0AB0, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD0DBB6C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_context);
  v4 = type metadata accessor for PaymentSetupProductFlowSection();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
  *v6 = 0xD000000000000012;
  *(v6 + 1) = 0x80000001BE118AA0;
  *&v5[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = v3;
  *&v5[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = a1;
  v29.receiver = v5;
  v29.super_class = v4;
  sub_1BE048964();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v29, sel_init);
  type metadata accessor for UIFlowModifier();
  v9 = swift_allocObject();
  v10 = byte_1EBDAB281;
  *(v9 + 32) = byte_1EBDAB280;
  *(v9 + 33) = v10;
  *(v9 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 16) = v8;
  *(v9 + 24) = &off_1F3BAAA80;
  *(v9 + 32) = 1;
  v11 = v1 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v21 = v8;
    sub_1BD865948(v1, &off_1F3B91888, v9, &off_1F3BAC7A0, ObjectType, v19);
    v9, v22, v23, v24, v25, v26, v27, v28;

    swift_unknownObjectRelease();
  }

  else
  {
    v9, v12, v13, v14, v15, v16, v17, v18;
  }
}

uint64_t FlightWidgetProgressView.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[11];
  v35 = v1[12];
  v36 = v2;
  v4 = v1[13];
  v37 = v1[14];
  v5 = v1[9];
  v7 = v1[7];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v8 = v1[9];
  v9 = v1[11];
  v33 = v1[10];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v13 = v1[3];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v29 = v1[6];
  v16 = v29;
  v30 = v15;
  v17 = v1[1];
  v24[0] = *v1;
  v24[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v25 = v1[2];
  v21 = v25;
  v26 = v18;
  *(a1 + 192) = v35;
  *(a1 + 208) = v4;
  *(a1 + 224) = v1[14];
  *(a1 + 128) = v6;
  *(a1 + 144) = v8;
  *(a1 + 160) = v10;
  *(a1 + 176) = v3;
  *(a1 + 64) = v12;
  *(a1 + 80) = v14;
  *(a1 + 96) = v16;
  *(a1 + 112) = v7;
  *a1 = v20;
  *(a1 + 16) = v19;
  v38 = *(v1 + 30);
  *(a1 + 240) = *(v1 + 30);
  *(a1 + 32) = v21;
  *(a1 + 48) = v13;
  return sub_1BD0DBDF0(v24, v23);
}

__n128 FlightWidgetProgressView.init(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FlightWidgetProgressView(0);
  sub_1BD0DBFDC();
  sub_1BE04E524();
  *(a2 + v4[6]) = 0x4044000000000000;
  sub_1BE04E524();
  *(a2 + v4[8]) = 0x403E000000000000;
  sub_1BE04E524();
  sub_1BE04E524();
  *(a2 + v4[11]) = 0x4059000000000000;
  v5 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v5;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  v6 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v6;
  v7 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v7;
  v8 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v8;
  v9 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v9;
  v10 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v12;
  return result;
}