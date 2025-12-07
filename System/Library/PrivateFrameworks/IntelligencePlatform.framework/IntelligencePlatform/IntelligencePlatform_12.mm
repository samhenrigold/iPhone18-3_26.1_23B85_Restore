uint64_t sub_1ABB5F900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1ABF219E4();
  v7 = result;
  if (result)
  {
    result = sub_1ABF21A04();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v7 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1ABF219F4();
    return sub_1ABB5F0DC(v7, a3);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

_BYTE *_s5UtilsOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABB5FA40(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3818, &unk_1ABF3D9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1ABB5FAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1ABB5F310(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1ABB5FAFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABB5F7A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1ABB5FB5C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v15 = a3 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    if (4 * v6 == v9 >> 14)
    {
      return a1;
    }

    result = v9;
    if ((v9 & 0xC) == v8)
    {
      result = sub_1ABB807B0(v9, a2, a3);
    }

    v11 = result >> 16;
    if (result >> 16 >= v6)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      result = sub_1ABF23E24();
      v12 = result;
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v14[0] = a2;
      v14[1] = v15;
      v12 = *(v14 + v11);
    }

    else
    {
      result = v13;
      if ((a2 & 0x1000000000000000) == 0)
      {
        result = sub_1ABF24B74();
      }

      v12 = *(result + v11);
    }

    if ((v9 & 0xC) == v8)
    {
      result = sub_1ABB807B0(v9, a2, a3);
      v9 = result;
      if ((a3 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v6 <= v9 >> 16)
    {
      goto LABEL_27;
    }

    v9 = sub_1ABF23E04();
LABEL_24:
    a1 = 33 * a1 + v12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1ABB5FCE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1ABB5FD38(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1ABADE03C(0, v5, 0);
    v6 = v17;
    for (i = (a3 + 32); ; ++i)
    {
      v15 = *i;

      a1(&v16, &v15, &v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v16;
      v17 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1ABADE03C(v11 > 1, v12 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_1ABB5FE68(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A29C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABB63504(v6);
  *a1 = v2;
  return result;
}

void ViewService.defaultResolverInteractionsView.getter(uint64_t a1@<X8>)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v21[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v21];

  v7 = v21[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    v13 = v11(v6, v9, v10);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v18 = type metadata accessor for ViewService.DefaultResolverInteractionsView(0);
      *(a1 + *(v18 + 24)) = v6;
      v19 = [swift_unknownObjectRetain() viewArtifactURL];
      sub_1ABF21CA4();
      swift_unknownObjectRelease();

      v20 = (a1 + *(v18 + 20));
      *v20 = v16;
      v20[1] = v17;
    }
  }

  else
  {
    v15 = v21[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }
}

uint64_t type metadata accessor for ViewService.DefaultResolverInteractionsView(uint64_t a1)
{
  result = qword_1EB4CF678;
  if (!qword_1EB4CF678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.databaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1ABF21CF4();
  sub_1ABA7BBB0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ViewService.DefaultResolverInteractionsView.db.getter()
{
  type metadata accessor for ViewService.DefaultResolverInteractionsView(0);
  sub_1ABA9A30C();
  return swift_unknownObjectRetain();
}

uint64_t sub_1ABB60190(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v46 = sub_1ABF21EB4();
  v40 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v14 = *a3;
  v13 = a3[1];
  v16 = a3[2];
  v15 = a3[3];
  sub_1ABF22BB4();
  sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1ABF34060;
  v18 = MEMORY[0x1E69E6158];
  v19 = MEMORY[0x1E69A0138];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = v19;
  *(v17 + 32) = v14;
  *(v17 + 40) = v13;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;

  sub_1ABF22834();
  v20 = sub_1ABF22854();
  sub_1ABA7B9B4(v12, 0, 1, v20);
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v21 = v50;
  v22 = sub_1ABF22B94();
  if (v21)
  {

    sub_1ABAB480C(v48, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v12, &qword_1EB4D3038, &unk_1ABF3A870);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v24 = v22;
    v50 = 0;
    v47 = v9;
    v41 = v5;
    sub_1ABAB480C(v48, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v12, &qword_1EB4D3038, &unk_1ABF3A870);
    v25 = sub_1ABAAB7C8(v24);
    v26 = 0;
    v43 = v24 & 0xC000000000000001;
    v44 = v25;
    v42 = v24 & 0xFFFFFFFFFFFFFF8;
    v27 = v39;
    v40 += 4;
    v23 = MEMORY[0x1E69E7CC0];
    v28 = v38;
    while (1)
    {
      if (v44 == v26)
      {

        return v23;
      }

      if (v43)
      {
        MEMORY[0x1AC5AA170](v26, v24);
      }

      else
      {
        if (v26 >= *(v42 + 16))
        {
          goto LABEL_22;
        }
      }

      if (__OFADD__(v26, 1))
      {
        break;
      }

      v29 = v50;
      sub_1ABB33054();
      if (v29)
      {
        goto LABEL_23;
      }

      v30 = v45;
      sub_1ABF21E04();
      sub_1ABB33264();
      v50 = 0;
      ViewService.DefaultResolverInteractionsView.UserAlignment.init(rawValue:)(v31, v48);
      if (LOBYTE(v48[0]) == 10)
      {
        v32 = 0;
      }

      else
      {
        v32 = v48[0];
      }

      v33 = v47;
      (*v40)(v47, v30, v46);
      *(v33 + *(v41 + 20)) = v32;
      sub_1ABB6611C(v33, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD9CB8();
        v23 = v35;
      }

      v34 = *(v23 + 16);
      if (v34 >= *(v23 + 24) >> 1)
      {
        sub_1ABAD9CB8();
        v23 = v36;
      }

      sub_1ABB661E0(v47, type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction);
      *(v23 + 16) = v34 + 1;
      sub_1ABB66180(v28, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v34, type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction);
      ++v26;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.fetchCandidateInteractions(candidate:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for ViewService.DefaultResolverInteractionsView(0);
  sub_1ABA9A30C();
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D3820, &qword_1ABF3D9C0);
  result = sub_1ABF22464();
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1ABB60790@<X0>(uint64_t a1@<X0>, const void *a2@<X2>, uint64_t *a3@<X8>)
{
  _s31DefaultResolverInteractionsViewV16CachedStatementsCMa();
  v7 = swift_allocObject();

  result = sub_1ABB61538(v8);
  if (!v3)
  {
    memcpy(__dst, a2, 0x41uLL);
    v10 = sub_1ABB60190(v7, a1, __dst);

    *a3 = v10;
  }

  return result;
}

uint64_t sub_1ABB60870(uint64_t a1)
{
  v1 = sub_1ABF21EB4();
  v39 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(0);
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;

  sub_1ABE8B1C0();
  v14 = static ViewService.DefaultResolverInteractionsView.stableHash(for:)(v13);

  sub_1ABF22BB4();
  sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7360];
  *(v15 + 16) = xmmword_1ABF34740;
  v17 = MEMORY[0x1E69A01D0];
  *(v15 + 56) = v16;
  *(v15 + 64) = v17;
  *(v15 + 32) = v14;
  sub_1ABF22834();
  v18 = sub_1ABF22854();
  sub_1ABA7B9B4(v12, 0, 1, v18);
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v19 = v46;
  v20 = sub_1ABF22B94();
  if (v19)
  {

    sub_1ABAB480C(v47, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v12, &qword_1EB4D3038, &unk_1ABF3A870);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = v20;
    v40 = v6;
    v41 = v4;
    v46 = v3;
    v42 = v1;
    sub_1ABAB480C(v47, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v12, &qword_1EB4D3038, &unk_1ABF3A870);
    v23 = sub_1ABAAB7C8(v22);
    v24 = 0;
    v44 = v22 & 0xC000000000000001;
    v45 = v23;
    v43 = v22 & 0xFFFFFFFFFFFFFF8;
    v25 = (v39 + 32);
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v26 = v46;
      if (v45 == v24)
      {

        return v21;
      }

      if (v44)
      {
        v27 = v22;
        MEMORY[0x1AC5AA170](v24, v22);
      }

      else
      {
        if (v24 >= *(v43 + 16))
        {
          goto LABEL_21;
        }

        v27 = v22;
      }

      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = v9;
      sub_1ABB33054();
      sub_1ABF21E04();
      sub_1ABB33264();
      v29 = v26;
      v31 = v30;

      if ((v31 - 1) < 9)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = v40;
      (*v25)(v40, v29, v42);
      *(v33 + *(v41 + 20)) = v32;
      v9 = v28;
      sub_1ABB66180(v33, v28, type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD9CB8();
        v21 = v36;
      }

      v34 = *(v21 + 16);
      v35 = v49;
      if (v34 >= *(v21 + 24) >> 1)
      {
        sub_1ABAD9CB8();
        v35 = v49;
        v21 = v37;
      }

      *(v21 + 16) = v34 + 1;
      sub_1ABB66180(v28, v21 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction);
      ++v24;
      v22 = v27;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t static ViewService.DefaultResolverInteractionsView.stableHash(for:)(uint64_t a1)
{
  v22 = sub_1ABB62E4C(a1);
  sub_1ABB5FE68(&v22);
  v1 = v22;
  v22 = 0;
  v23 = 0xE000000000000000;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 48);
    do
    {
      v4 = *(v3 - 1);
      v5 = v3[1];
      v20 = *(v3 - 2);
      v21 = *v3;

      v6 = sub_1ABA90670();
      sub_1ABAFF488(v6, v7, v8, v9, v10);
      MEMORY[0x1AC5A9410](v20, v4);
      MEMORY[0x1AC5A9410](58, 0xE100000000000000);
      MEMORY[0x1AC5A9410](v21, v5);

      v11 = sub_1ABA90670();
      sub_1ABAFF544(v11, v12, v13, v14, v15);
      MEMORY[0x1AC5A9410](10, 0xE100000000000000);
      v3 += 9;
      --v2;
    }

    while (v2);

    v16 = v22;
    v17 = v23;
  }

  else
  {

    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = sub_1ABB5FB5C(5381, v16, v17);

  return v18;
}

uint64_t ViewService.DefaultResolverInteractionsView.fetchTupleInteraction(tuple:)(uint64_t a1)
{
  type metadata accessor for ViewService.DefaultResolverInteractionsView(0);
  sub_1ABA9A30C();
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D3820, &qword_1ABF3D9C0);
  result = sub_1ABF22464();
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1ABB60FA8@<X0>(uint64_t *a2@<X8>)
{
  _s31DefaultResolverInteractionsViewV16CachedStatementsCMa();
  v4 = swift_allocObject();

  result = sub_1ABB61538(v5);
  if (!v2)
  {
    v7 = sub_1ABB60870(v4);

    *a2 = v7;
  }

  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.fetchInteractionSet(tuples:)(uint64_t a1)
{
  type metadata accessor for ViewService.DefaultResolverInteractionsView(0);
  sub_1ABA9A30C();
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D3828, &qword_1ABF3D9C8);
  return sub_1ABF22464();
}

uint64_t sub_1ABB61104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  _s31DefaultResolverInteractionsViewV16CachedStatementsCMa();
  v9 = swift_allocObject();

  result = sub_1ABB61538(v10);
  if (!v4)
  {
    MEMORY[0x1EEE9AC00](result);
    v36[2] = a3;
    v36[3] = v9;
    v36[4] = a1;
    v38 = sub_1ABB5FD38(sub_1ABB660F8, v36, a2);
    v43 = a1;
    v37 = a4;

    v13 = sub_1ABE8B290(v12);
    sub_1ABAD219C(&qword_1EB4D3820, &qword_1ABF3D9C0);
    sub_1ABB5D228();
    v14 = sub_1ABF239C4();
    v15 = 0;
    v17 = v13 + 56;
    v16 = *(v13 + 56);
    v47 = v13;
    v18 = 1 << *(v13 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v21 = (v18 + 63) >> 6;
    v40 = v17;
    v42 = v9;
    v41 = a3;
    v39 = v21;
    if ((v19 & v16) != 0)
    {
LABEL_9:
      while (1)
      {
        v23 = (*(v47 + 48) + 72 * (__clz(__rbit64(v20)) | (v15 << 6)));
        memcpy(__dst, v23, 0x41uLL);
        memcpy(v45, v23, 0x41uLL);
        sub_1ABB24348(__dst, v44);
        v24 = sub_1ABB60190(v9, v43, v45);
        swift_isUniquelyReferenced_nonNull_native();
        v45[0] = v14;
        v25 = sub_1ABAF84E4();
        if (__OFADD__(v14[2], (v26 & 1) == 0))
        {
          break;
        }

        v27 = v25;
        v28 = v26;
        sub_1ABAD219C(qword_1EB4D38C0, &qword_1ABF3DF30);
        if (sub_1ABF24C64())
        {
          v29 = sub_1ABAF84E4();
          if ((v28 & 1) != (v30 & 1))
          {
            goto LABEL_24;
          }

          v27 = v29;
        }

        if (v28)
        {
          sub_1ABB243A4(__dst);
          v14 = v45[0];
          *(*(v45[0] + 56) + 8 * v27) = v24;
        }

        else
        {
          v14 = v45[0];
          *(v45[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
          memcpy((v14[6] + 72 * v27), __dst, 0x41uLL);
          *(v14[7] + 8 * v27) = v24;
          v31 = v14[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_23;
          }

          v14[2] = v33;
        }

        v20 &= v20 - 1;
        v9 = v42;
        v17 = v40;
        v21 = v39;
        if (!v20)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      while (1)
      {
        v22 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v22 >= v21)
        {

          v34 = v37;
          v35 = v38;
          *v37 = v14;
          v34[1] = v35;
          return result;
        }

        v20 = *(v17 + 8 * v22);
        ++v15;
        if (v20)
        {
          v15 = v22;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB614E0@<X0>(uint64_t a1@<X2>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  result = sub_1ABB60870(a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t *sub_1ABB61538(uint64_t a1)
{
  v3 = sub_1ABF22E24();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = v3;
    v1[3] = sub_1ABF22E24();
    v1[4] = sub_1ABF22E24();
    v1[5] = sub_1ABF22E24();
    v5 = sub_1ABF22E24();

    v1[6] = v5;
  }

  return v1;
}

void *sub_1ABB616FC()
{

  return v0;
}

uint64_t sub_1ABB6173C()
{
  sub_1ABB616FC();

  return swift_deallocClassInstance();
}

uint64_t ViewService.DefaultResolverInteractionsView.DefaultResolverInteractionsViewSource.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1ABB617C0@<X0>(uint64_t *a1@<X8>)
{
  result = ViewService.DefaultResolverInteractionsView.DefaultResolverInteractionsViewSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB618C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ViewService.DefaultResolverInteractionsView.SourceStreams.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1ABB61908@<X0>(uint64_t *a1@<X8>)
{
  result = ViewService.DefaultResolverInteractionsView.SourceStreams.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB61930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABB6592C();
  v5 = sub_1ABB62F9C();
  v6 = MEMORY[0x1E69A0180];

  return MEMORY[0x1EEE09B38](a1, a2, v4, v5, v6);
}

uint64_t sub_1ABB619A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABB658D8();
  v7 = sub_1ABB62F9C();
  v8 = MEMORY[0x1E69A0180];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

uint64_t sub_1ABB61A74@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1ABB61AA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

uint64_t sub_1ABB61B6C(uint64_t a1)
{
  v2 = sub_1ABB65884();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABB61BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABB65884();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1ABB61C1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v11 = a1[2];
  v12 = a1[3];

  MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

  MEMORY[0x1AC5A9410](v2, v3);

  MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

  MEMORY[0x1AC5A9410](v4, v5);

  if (v11 == v7 && v12 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1ABF25054();
  }

  return v9 & 1;
}

uint64_t ViewService.DefaultResolverInteractionsView.fetchAllEvents()()
{
  type metadata accessor for ViewService.DefaultResolverInteractionsView(0);
  sub_1ABA9A30C();
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D3830, &qword_1ABF3D9D0);
  result = sub_1ABF22464();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ABB61DE0@<X0>(void *a2@<X8>)
{
  v29 = a2;
  v3 = sub_1ABAD219C(&unk_1EB4D3890, &qword_1ABF3DF18);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  _s31DefaultResolverInteractionsViewV16CachedStatementsCMa();
  v15 = swift_allocObject();

  result = sub_1ABB61538(v16);
  if (!v2)
  {
    v31 = v11;
    v37 = v8;
    sub_1ABF22BB4();
    v18 = sub_1ABF22854();
    sub_1ABA7B9B4(v14, 1, 1, v18);
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v19 = sub_1ABF22B94();
    sub_1ABAB480C(v35, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v14, &qword_1EB4D3038, &unk_1ABF3A870);
    result = sub_1ABAAB7C8(v19);
    v20 = result;
    v21 = 0;
    v33 = v19 & 0xFFFFFFFFFFFFFF8;
    v34 = v19 & 0xC000000000000001;
    v22 = MEMORY[0x1E69E7CC0];
    v30 = v6;
    while (1)
    {
      if (v20 == v21)
      {

        *v29 = v22;
        return result;
      }

      if (v34)
      {
        result = MEMORY[0x1AC5AA170](v21, v19);
        v23 = result;
      }

      else
      {
        if (v21 >= *(v33 + 16))
        {
          goto LABEL_20;
        }

        v23 = *(v19 + 8 * v21 + 32);
      }

      if (__OFADD__(v21, 1))
      {
        break;
      }

      *&v35[0] = v23;
      sub_1ABB621FC(v15, v5);

      if (sub_1ABA7E1E0(v5, 1, v6) == 1)
      {
        result = sub_1ABAB480C(v5, &unk_1EB4D3890, &qword_1ABF3DF18);
      }

      else
      {
        v24 = v31;
        sub_1ABB66180(v5, v31, type metadata accessor for ViewService.DefaultResolverInteractionsView.Event);
        sub_1ABB66180(v24, v37, type metadata accessor for ViewService.DefaultResolverInteractionsView.Event);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAD9D90();
          v22 = v27;
        }

        v25 = *(v22 + 16);
        v26 = v32;
        if (v25 >= *(v22 + 24) >> 1)
        {
          sub_1ABAD9D90();
          v26 = v32;
          v22 = v28;
        }

        *(v22 + 16) = v25 + 1;
        result = sub_1ABB66180(v37, v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, type metadata accessor for ViewService.DefaultResolverInteractionsView.Event);
        v6 = v30;
      }

      ++v21;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB621FC@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49[-v9];
  v57 = sub_1ABF21EB4();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1ABF22BC4();
  if (!*(&__src[1] + 1))
  {
    sub_1ABAB480C(__src, &qword_1EB4D3050, &qword_1ABF3DF20);
    goto LABEL_7;
  }

  v62 = sub_1ABAD219C(&qword_1EB4D38B0, &qword_1ABF3A890);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v14 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
    v15 = a2;
    v16 = 1;
    return sub_1ABA7B9B4(v15, v16, 1, v14);
  }

  v55 = v65[0];
  sub_1ABF22BC4();
  if (!*(&__src[1] + 1))
  {
    sub_1ABAB480C(__src, &qword_1EB4D3050, &qword_1ABF3DF20);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v13 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_10;
  }

  v13 = v65[0];
  v12 = v65[1];
LABEL_10:
  v51 = v12;
  sub_1ABF22BC4();
  v52 = v13;
  if (*(&__src[1] + 1))
  {
    swift_dynamicCast();
    v17 = v2;
  }

  else
  {
    v17 = v2;
    sub_1ABAB480C(__src, &qword_1EB4D3050, &qword_1ABF3DF20);
  }

  sub_1ABF21E04();
  sub_1ABF22BB4();
  v68 = a1;
  sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
  v18 = swift_allocObject();
  v61 = xmmword_1ABF34740;
  *(v18 + 16) = xmmword_1ABF34740;
  v19 = MEMORY[0x1E69A01D0];
  *(v18 + 56) = MEMORY[0x1E69E7360];
  *(v18 + 64) = v19;
  *(v18 + 32) = v55;
  sub_1ABF22834();
  v20 = sub_1ABF22854();
  sub_1ABA7B9B4(v10, 0, 1, v20);
  memset(__src, 0, 40);
  v21 = sub_1ABF22BA4();
  v53 = a2;
  if (v17)
  {

    sub_1ABAB480C(__src, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v10, &qword_1EB4D3038, &unk_1ABF3A870);
    v22 = 0;
  }

  else
  {
    v23 = v21;
    sub_1ABAB480C(__src, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v10, &qword_1EB4D3038, &unk_1ABF3A870);
    if (v23)
    {
      sub_1ABB33264();
      v25 = v24;

      ViewService.DefaultResolverInteractionsView.UserAlignment.init(rawValue:)(v25, __src);
      if (LOBYTE(__src[0]) == 10)
      {
        v22 = 0;
      }

      else
      {
        v22 = LOBYTE(__src[0]);
      }
    }

    else
    {
      v22 = 0;
    }
  }

  sub_1ABB5D228();
  v26 = sub_1ABF239C4();
  v27 = swift_allocObject();
  *(v27 + 16) = v61;
  *(v27 + 56) = MEMORY[0x1E69E7360];
  *(v27 + 64) = MEMORY[0x1E69A01D0];
  *(v27 + 32) = v55;
  sub_1ABF22834();
  sub_1ABA7B9B4(v7, 0, 1, v20);
  memset(__src, 0, 40);
  v28 = sub_1ABF22B94();
  sub_1ABAB480C(__src, &unk_1EB4D38A0, &qword_1ABF3A8B0);
  sub_1ABAB480C(v7, &qword_1EB4D3038, &unk_1ABF3A870);
  *&v61 = sub_1ABAAB7C8(v28);
  if (v61)
  {
    v50 = v22;
    v29 = 0;
    v60 = v28 & 0xC000000000000001;
    v54 = v28 & 0xFFFFFFFFFFFFFF8;
    v59 = v28;
    while (1)
    {
      if (v60)
      {
        MEMORY[0x1AC5AA170](v29, v28);
      }

      else
      {
        if (v29 >= *(v54 + 16))
        {
          goto LABEL_56;
        }
      }

      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        while (1)
        {
          swift_unexpectedError();
          __break(1u);
LABEL_58:
          sub_1ABF25104();
          __break(1u);
        }
      }

      sub_1ABF22BC4();
      v68 = v29 + 1;
      if (v66)
      {
        if (swift_dynamicCast())
        {
          v30 = v63;
          v31 = v64;
          goto LABEL_32;
        }
      }

      else
      {
        sub_1ABAB480C(v65, &qword_1EB4D3050, &qword_1ABF3DF20);
      }

      v30 = 0;
      v31 = 0xE000000000000000;
LABEL_32:
      sub_1ABF22BC4();
      if (!v66)
      {
        sub_1ABAB480C(v65, &qword_1EB4D3050, &qword_1ABF3DF20);
LABEL_36:
        v32 = 0;
        v33 = 0xE000000000000000;
        goto LABEL_37;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_36;
      }

      v32 = v63;
      v33 = v64;
LABEL_37:
      *&__src[0] = v30;
      *(&__src[0] + 1) = v31;
      *&__src[1] = v32;
      *(&__src[1] + 1) = v33;
      memset(&__src[2], 0, 32);
      LOBYTE(__src[4]) = 2;
      sub_1ABB33264();
      ViewService.DefaultResolverInteractionsView.UserAlignment.init(rawValue:)(v34, v65);
      if (LOBYTE(v65[0]) == 10)
      {
        v35 = 0;
      }

      else
      {
        v35 = v65[0];
      }

      swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v26;
      v36 = sub_1ABAF84E4();
      if (__OFADD__(v26[2], (v37 & 1) == 0))
      {
        goto LABEL_54;
      }

      v38 = v36;
      v39 = v37;
      sub_1ABAD219C(&qword_1EB4D38B8, &qword_1ABF3DF28);
      if (sub_1ABF24C64())
      {
        v40 = sub_1ABAF84E4();
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_58;
        }

        v38 = v40;
      }

      v26 = v65[0];
      if (v39)
      {
        *(*(v65[0] + 56) + v38) = v35;
        sub_1ABB243A4(__src);
      }

      else
      {
        *(v65[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
        memcpy((v26[6] + 72 * v38), __src, 0x41uLL);
        *(v26[7] + v38) = v35;
        v42 = v26[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_55;
        }

        v26[2] = v44;
      }

      ++v29;
      v28 = v59;
      if (v68 == v61)
      {

        LOBYTE(v22) = v50;
        goto LABEL_51;
      }
    }
  }

LABEL_51:
  v45 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
  v46 = v53;
  (*(v56 + 32))(v53 + v45[6], v58, v57);
  v47 = v52;
  *v46 = v55;
  v46[1] = v47;
  v46[2] = v51;
  *(v46 + v45[7]) = MEMORY[0x1E69E7CC0];
  *(v46 + v45[8]) = v22;
  *(v46 + v45[9]) = v26;
  v15 = v46;
  v16 = 0;
  v14 = v45;
  return sub_1ABA7B9B4(v15, v16, 1, v14);
}

char *sub_1ABB62B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1ABADCEBC();
  v4 = sub_1ABB645D8(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_1ABAB4C48(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1ABB62C34()
{
  sub_1ABAA37B0();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1ABA8E6E4();
    if (v4 == v3)
    {
      sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
      v5 = sub_1ABAA21A8();
      sub_1ABA81494(v5);
      sub_1ABA992FC(v6);
    }

    if (v2 != v1)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1ABB62CE0()
{
  sub_1ABAA37B0();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1ABA8E6E4();
    if (v4 == v3)
    {
      sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
      v5 = sub_1ABAA21A8();
      sub_1ABA81494(v5);
      sub_1ABA992FC(v6);
    }

    if (v2 != v1)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1ABB62D8C()
{
  sub_1ABAA37B0();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1ABA8E6E4();
    if (v5 == v4)
    {
      sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
      v6 = sub_1ABAA21A8();
      sub_1ABA81494(v6);
      *(v2 + 16) = v0;
      *(v2 + 24) = (2 * (v7 / 8)) | 1;
    }

    if (v3 != v1)
    {
      type metadata accessor for EntityResolutionRankingService.RankedEntities.ScoredEntity();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

char *sub_1ABB62E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1ABADD06C();
  v4 = sub_1ABB65B80(&v7, v3 + 32, v1, a1);
  v5 = v7;

  sub_1ABAB4C48(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1ABB62F44()
{
  result = qword_1EB4D3838;
  if (!qword_1EB4D3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3838);
  }

  return result;
}

unint64_t sub_1ABB62F9C()
{
  result = qword_1EB4CF690;
  if (!qword_1EB4CF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF690);
  }

  return result;
}

unint64_t sub_1ABB62FF4()
{
  result = qword_1EB4D3848;
  if (!qword_1EB4D3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3848);
  }

  return result;
}

unint64_t sub_1ABB6304C()
{
  result = qword_1EB4D00F0;
  if (!qword_1EB4D00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00F0);
  }

  return result;
}

unint64_t sub_1ABB630A4()
{
  result = qword_1EB4CF6A8;
  if (!qword_1EB4CF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6A8);
  }

  return result;
}

unint64_t sub_1ABB630FC()
{
  result = qword_1EB4D3850;
  if (!qword_1EB4D3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3850);
  }

  return result;
}

unint64_t sub_1ABB63154()
{
  result = qword_1EB4D3858;
  if (!qword_1EB4D3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3858);
  }

  return result;
}

unint64_t sub_1ABB631D0(uint64_t a1)
{
  result = sub_1ABF21CF4();
  if (v2 <= 0x3F)
  {
    result = sub_1ABB2CA7C();
    if (v3 <= 0x3F)
    {
      result = sub_1ABAAE1D0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *_s31DefaultResolverInteractionsViewV37DefaultResolverInteractionsViewSourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1ABB63398()
{
  sub_1ABAA37B0();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1ABA8E6E4();
    if (v4 == v3)
    {
      sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
      v5 = sub_1ABAA21A8();
      sub_1ABA81494(v5);
      sub_1ABA992FC(v6);
    }

    if (v2 != v1)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1ABB63444(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
      v9 = swift_allocObject();
      sub_1ABA81494(v9);
      v4[2] = v6;
      v4[3] = 2 * (v10 / 8);
    }

    if (v5 != a3)
    {
      memcpy(v4 + 4, (a2 + 8 * a3), 8 * v6);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t sub_1ABB63504(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABB63828(v7, v8, a1, v4);
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
    return sub_1ABB635F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABB635F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = (*a4 + 72 * a3);
    v5 = result - a3 + 1;
    while (2)
    {
      v17 = v4;
      v18 = a3;
      v16 = v5;
      for (i = v5; ; ++i)
      {
        memcpy(__dst, v4, 0x41uLL);
        memcpy(v25, v4 - 72, 0x41uLL);
        v6 = __dst[0];
        v7 = __dst[1];
        v8 = v25[1];
        v26 = v25[0];
        v10 = v25[2];
        v9 = v25[3];
        v22 = __dst[2];
        v23 = __dst[3];
        sub_1ABB24348(__dst, __src);
        sub_1ABB24348(v25, __src);

        MEMORY[0x1AC5A9410](14906, 0xE200000000000000);
        __src[0] = v22;
        __src[1] = v23;

        MEMORY[0x1AC5A9410](v6, v7);

        v11 = __src[0];
        v12 = __src[1];
        __src[0] = v10;
        __src[1] = v9;

        MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

        MEMORY[0x1AC5A9410](v26, v8);

        if (v11 == __src[0] && v12 == __src[1])
        {
          break;
        }

        v14 = sub_1ABF25054();

        sub_1ABB243A4(v25);
        result = sub_1ABB243A4(__dst);
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (!v19)
        {
          __break(1u);
          return result;
        }

        memcpy(__src, v4, 0x41uLL);
        memcpy(v4, v4 - 72, 0x48uLL);
        result = memcpy(v4 - 72, __src, 0x41uLL);
        if (!i)
        {
          goto LABEL_13;
        }

        v4 -= 72;
      }

      sub_1ABB243A4(v25);
      result = sub_1ABB243A4(__dst);
LABEL_13:
      a3 = v18 + 1;
      v4 = v17 + 72;
      v5 = v16 - 1;
      if (v18 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABB63828(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v126 = *a1;
    if (!v126)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_105;
    }

    goto LABEL_140;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v100 = v5;
    if (v5 + 1 < v4)
    {
      v9 = *a3;
      v10 = (*a3 + 72 * v8);
      memcpy(__dst, v10, 0x41uLL);
      memcpy(v123, v10, 0x41uLL);
      memcpy(v125, (v9 + 72 * v7), 0x41uLL);
      memcpy(__src, (v9 + 72 * v7), 0x41uLL);
      sub_1ABB24348(__dst, v121);
      sub_1ABB24348(v125, v121);
      v110 = sub_1ABB61C1C(v123, __src);
      if (v109)
      {
        memcpy(v120, __src, 0x41uLL);
        sub_1ABB243A4(v120);
        memcpy(v121, v123, 0x41uLL);
        sub_1ABB243A4(v121);
LABEL_115:

        return;
      }

      v97 = v6;
      memcpy(v120, __src, 0x41uLL);
      sub_1ABB243A4(v120);
      memcpy(v121, v123, 0x41uLL);
      sub_1ABB243A4(v121);
      v103 = 72 * v7;
      v105 = v4;
      v11 = (v9 + 72 * v7 + 144);
      v12 = v7 + 2;
      while (1)
      {
        v13 = v8;
        v14 = v12;
        if (v8 + 1 >= v4)
        {
          break;
        }

        memcpy(v118, v11, 0x41uLL);
        memcpy(v119, v11 - 72, 0x41uLL);
        v15 = v118[0];
        v16 = v118[1];
        v126 = v119[0];
        v112 = v119[1];
        v18 = v119[2];
        v17 = v119[3];
        v116 = v118[2];
        v117 = v118[3];
        sub_1ABB24348(v118, &v114);
        sub_1ABB24348(v119, &v114);

        MEMORY[0x1AC5A9410](14906, 0xE200000000000000);
        v114 = v116;
        v115 = v117;

        MEMORY[0x1AC5A9410](v15, v16);

        v19 = v114;
        v20 = v115;
        v114 = v18;
        v115 = v17;

        MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

        MEMORY[0x1AC5A9410](v126, v112);

        if (v19 == v114 && v20 == v115)
        {
          v22 = 0;
        }

        else
        {
          v22 = sub_1ABF25054();
        }

        sub_1ABB243A4(v119);
        sub_1ABB243A4(v118);
        v11 += 72;
        v8 = v13 + 1;
        v12 = v14 + 1;
        v4 = v105;
        if ((v110 ^ v22))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if ((v110 & 1) == 0)
      {
        v6 = v97;
LABEL_29:
        v7 = v100;
        goto LABEL_30;
      }

      v23 = v100;
      if (v8 < v100)
      {
        goto LABEL_139;
      }

      if (v100 <= v13)
      {
        if (v4 >= v14)
        {
          v24 = v14;
        }

        else
        {
          v24 = v4;
        }

        v25 = 72 * v24 - 72;
        v26 = v8;
        v6 = v97;
        v27 = v103;
        do
        {
          if (v23 != --v26)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_144;
            }

            memcpy(v119, (v28 + v27), 0x41uLL);
            memmove((v28 + v27), (v28 + v25), 0x48uLL);
            memcpy((v28 + v25), v119, 0x41uLL);
          }

          ++v23;
          v25 -= 72;
          v27 += 72;
        }

        while (v23 < v26);
        goto LABEL_29;
      }

      v6 = v97;
      v7 = v100;
    }

LABEL_30:
    v29 = a3[1];
    if (v8 < v29)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_136;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_135;
    }

    v107 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABAD8820();
      v6 = v86;
    }

    v42 = *(v6 + 2);
    v43 = v42 + 1;
    if (v42 >= *(v6 + 3) >> 1)
    {
      sub_1ABAD8820();
      v6 = v87;
    }

    *(v6 + 2) = v43;
    v44 = v6 + 32;
    v45 = &v6[16 * v42 + 32];
    *v45 = v100;
    *(v45 + 1) = v8;
    v46 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v42)
    {
      while (1)
      {
        v47 = v43 - 1;
        v48 = &v44[16 * v43 - 16];
        v49 = &v6[16 * v43];
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v50 = *(v6 + 4);
          v51 = *(v6 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_71:
          if (v53)
          {
            goto LABEL_122;
          }

          v65 = *v49;
          v64 = *(v49 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_125;
          }

          v69 = *(v48 + 1);
          v70 = v69 - *v48;
          if (__OFSUB__(v69, *v48))
          {
            goto LABEL_128;
          }

          if (__OFADD__(v67, v70))
          {
            goto LABEL_130;
          }

          if (v67 + v70 >= v52)
          {
            if (v52 < v70)
            {
              v47 = v43 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v43 < 2)
        {
          goto LABEL_124;
        }

        v72 = *v49;
        v71 = *(v49 + 1);
        v60 = __OFSUB__(v71, v72);
        v67 = v71 - v72;
        v68 = v60;
LABEL_86:
        if (v68)
        {
          goto LABEL_127;
        }

        v74 = *v48;
        v73 = *(v48 + 1);
        v60 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v60)
        {
          goto LABEL_129;
        }

        if (v75 < v67)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v47 - 1 >= v43)
        {
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
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v79 = &v44[16 * v47 - 16];
        v80 = *v79;
        v81 = &v44[16 * v47];
        v82 = *(v81 + 1);
        sub_1ABB64180((*a3 + 72 * *v79), (*a3 + 72 * *v81), (*a3 + 72 * v82), v46);
        if (v109)
        {
          goto LABEL_115;
        }

        if (v82 < v80)
        {
          goto LABEL_117;
        }

        v83 = v6;
        v84 = *(v6 + 2);
        if (v47 > v84)
        {
          goto LABEL_118;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        if (v47 >= v84)
        {
          goto LABEL_119;
        }

        v43 = v84 - 1;
        sub_1ABE7A0CC(v81 + 16, v84 - 1 - v47, &v44[16 * v47]);
        *(v83 + 2) = v84 - 1;
        v85 = v84 > 2;
        v6 = v83;
        if (!v85)
        {
          goto LABEL_100;
        }
      }

      v54 = &v44[16 * v43];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_120;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_121;
      }

      v61 = *(v49 + 1);
      v62 = v61 - *v49;
      if (__OFSUB__(v61, *v49))
      {
        goto LABEL_123;
      }

      v60 = __OFADD__(v52, v62);
      v63 = v52 + v62;
      if (v60)
      {
        goto LABEL_126;
      }

      if (v63 >= v57)
      {
        v77 = *v48;
        v76 = *(v48 + 1);
        v60 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v60)
        {
          goto LABEL_134;
        }

        if (v52 < v78)
        {
          v47 = v43 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v5 = v107;
    v4 = a3[1];
    if (v107 >= v4)
    {
      goto LABEL_103;
    }
  }

  v30 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_137;
  }

  if (v30 >= v29)
  {
    v30 = a3[1];
  }

  if (v30 < v7)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v6 = sub_1ABE7A0B4();
LABEL_105:
    v88 = v6 + 16;
    v89 = *(v6 + 2);
    while (v89 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_143;
      }

      v90 = v6;
      v91 = &v6[16 * v89];
      v92 = *v91;
      v93 = &v88[2 * v89];
      v94 = *(v93 + 1);
      sub_1ABB64180((*a3 + 72 * *v91), (*a3 + 72 * *v93), (*a3 + 72 * v94), v126);
      if (v109)
      {
        break;
      }

      if (v94 < v92)
      {
        goto LABEL_131;
      }

      if (v89 - 2 >= *v88)
      {
        goto LABEL_132;
      }

      *v91 = v92;
      *(v91 + 1) = v94;
      v95 = *v88 - v89;
      if (*v88 < v89)
      {
        goto LABEL_133;
      }

      v89 = *v88 - 1;
      sub_1ABE7A0CC(v93 + 16, v95, v93);
      *v88 = v89;
      v6 = v90;
    }

    goto LABEL_115;
  }

  if (v8 == v30)
  {
    goto LABEL_51;
  }

  v98 = v6;
  v111 = *a3;
  v31 = (*a3 + 72 * v8);
  v32 = v7 - v8 + 1;
  v101 = v30;
LABEL_39:
  v104 = v31;
  v106 = v8;
  v102 = v32;
  for (i = v32; ; ++i)
  {
    memcpy(__dst, v31, 0x41uLL);
    memcpy(v125, v31 - 72, 0x41uLL);
    v33 = __dst[0];
    v34 = __dst[1];
    v35 = v125[0];
    v126 = v125[1];
    v37 = v125[2];
    v36 = v125[3];
    __src[0] = __dst[2];
    __src[1] = __dst[3];
    sub_1ABB24348(__dst, v123);
    sub_1ABB24348(v125, v123);

    MEMORY[0x1AC5A9410](14906, 0xE200000000000000);
    v123[0] = __src[0];
    v123[1] = __src[1];

    MEMORY[0x1AC5A9410](v33, v34);

    v38 = v123[0];
    v39 = v123[1];
    v123[0] = v37;
    v123[1] = v36;

    MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

    MEMORY[0x1AC5A9410](v35, v126);

    if (v38 == v123[0] && v39 == v123[1])
    {

      sub_1ABB243A4(v125);
      sub_1ABB243A4(__dst);
LABEL_49:
      v8 = v106 + 1;
      v31 = v104 + 72;
      v32 = v102 - 1;
      if (v106 + 1 == v101)
      {
        v8 = v101;
        v6 = v98;
        v7 = v100;
        goto LABEL_51;
      }

      goto LABEL_39;
    }

    v41 = sub_1ABF25054();

    sub_1ABB243A4(v125);
    sub_1ABB243A4(__dst);
    if ((v41 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v111)
    {
      break;
    }

    memcpy(v123, v31, 0x41uLL);
    memcpy(v31, v31 - 72, 0x48uLL);
    memcpy(v31 - 72, v123, 0x41uLL);
    if (!i)
    {
      goto LABEL_49;
    }

    v31 -= 72;
  }

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
}

uint64_t sub_1ABB64180(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 72;
  v9 = (a3 - a2) / 72;
  if (v8 < v9)
  {
    sub_1ABADD498(a1, (a2 - a1) / 72, a4);
    v10 = &v4[72 * v8];
    v46 = v10;
    v48 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_47;
      }

      v50 = v7;
      v58 = v6;
      memcpy(__dst, v6, 0x41uLL);
      memcpy(v57, v4, 0x41uLL);
      v12 = __dst[0];
      v13 = __dst[1];
      v14 = v57[0];
      v15 = v57[1];
      v17 = v57[2];
      v16 = v57[3];
      v54 = __dst[2];
      v55 = __dst[3];
      sub_1ABB24348(__dst, &v52);
      sub_1ABB24348(v57, &v52);

      MEMORY[0x1AC5A9410](14906, 0xE200000000000000);
      v52 = v54;
      v53 = v55;

      MEMORY[0x1AC5A9410](v12, v13);

      v19 = v52;
      v18 = v53;
      v52 = v17;
      v53 = v16;

      MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

      MEMORY[0x1AC5A9410](v14, v15);

      if (v19 == v52 && v18 == v53)
      {

        sub_1ABB243A4(v57);
        sub_1ABB243A4(__dst);
        v22 = v50;
      }

      else
      {
        v21 = sub_1ABF25054();

        sub_1ABB243A4(v57);
        sub_1ABB243A4(__dst);
        v22 = v50;
        if (v21)
        {
          v23 = v58;
          v6 = v58 + 72;
          v24 = v50 == v58;
          goto LABEL_15;
        }
      }

      v23 = v4;
      v24 = v22 == v4;
      v4 += 72;
      v6 = v58;
LABEL_15:
      v10 = v46;
      v5 = v48;
      if (!v24)
      {
        memmove(v22, v23, 0x48uLL);
      }

      v7 = v22 + 72;
    }
  }

  sub_1ABADD498(a2, (a3 - a2) / 72, a4);
  v10 = &v4[72 * v9];
  v44 = v4;
  v51 = v7;
LABEL_19:
  __src = v6 - 72;
  v25 = v5 - 72;
  v58 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v47 = v10;
    v49 = v25;
    v27 = v10 - 72;
    memcpy(__dst, v10 - 72, 0x41uLL);
    memcpy(v57, __src, 0x41uLL);
    v28 = __dst[0];
    v29 = __dst[1];
    v31 = v57[0];
    v30 = v57[1];
    v32 = v57[2];
    v33 = v57[3];
    v54 = __dst[2];
    v55 = __dst[3];
    sub_1ABB24348(__dst, &v52);
    sub_1ABB24348(v57, &v52);

    MEMORY[0x1AC5A9410](14906, 0xE200000000000000);
    v52 = v54;
    v53 = v55;

    MEMORY[0x1AC5A9410](v28, v29);

    v34 = v52;
    v35 = v53;
    v52 = v32;
    v53 = v33;

    MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

    MEMORY[0x1AC5A9410](v31, v30);

    if (v34 == v52 && v35 == v53)
    {
      v37 = 0;
    }

    else
    {
      v37 = sub_1ABF25054();
    }

    v5 = v49;

    sub_1ABB243A4(v57);
    sub_1ABB243A4(__dst);
    v4 = v44;
    v6 = v58;
    v7 = v51;
    v10 = v47;
    v38 = v49 + 72;
    if (v37)
    {
      v40 = v38 < v58 || v49 >= v58;
      if (!v40 && v38 == v58)
      {
        v6 = __src;
      }

      else
      {
        v6 = __src;
        memmove(v49, __src, 0x48uLL);
      }

      goto LABEL_19;
    }

    v39 = v38 < v47 || v49 >= v47;
    if (v39 || v47 != v38)
    {
      memmove(v49, v27, 0x48uLL);
    }

    v25 = v49 - 72;
    v10 = v27;
  }

LABEL_47:
  v41 = 72 * ((v10 - v4) / 72);
  if (v6 != v4 || v6 >= &v4[v41])
  {
    memmove(v6, v4, v41);
  }

  return 1;
}

void *sub_1ABB645D8(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t *sub_1ABB64758(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = 0;
LABEL_16:
    v4 = 1;
LABEL_18:
    *result = v4;
    return v3;
  }

  v3 = a3;
  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 279;
    v5 = a2;
    v15 = result;
    v6 = 0;
    v7 = 0;
    v14 = a3 + 1;
    while (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v7 == 278)
      {
        v3 = 278;
        result = v15;
        goto LABEL_18;
      }

      if ((v7 + 1) >= 0x117)
      {
        goto LABEL_20;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_24;
      }

      v8 = &_Records_GDEntityPredicate_records[v6];
      if (*&_Records_GDEntityPredicate_records[v6 + 16] >= 3481)
      {
        goto LABEL_21;
      }

      if (*(v8 + 5) >= 4281)
      {
        goto LABEL_22;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_25;
      }

      v9 = v8[12];
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_26;
      }

      v11 = result;
      v12 = v10;
      result = sub_1ABF23DD4();
      *v5 = v11;
      *(v5 + 8) = v12;
      *(v5 + 16) = result;
      *(v5 + 24) = v13;
      *(v5 + 32) = v9;
      v5 += 40;
      ++v7;
      v6 += 12;
      if (v3 == v7)
      {
        v4 = v14;
        result = v15;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1ABB648F0()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v52 = sub_1ABF23334();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v51 = v11 - v10;
  v58 = sub_1ABF23314();
  sub_1ABA7BB64();
  v53 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v50 = v15 - v14;
  v49 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  sub_1ABA7BB64();
  v47 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v48 = v39 - v21;
  v22 = sub_1ABF233D4();
  v24 = v23;
  sub_1ABB661E0(v0, type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1);
  if (v4 && v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v40 = v6;
      v25 = *(v22 + 16);
      v44 = v53 + 16;
      v43 = (v8 + 8);
      v42 = v53 + 8;
      v46 = v25;
      v39[2] = v25 - v24;
      v39[1] = v2;
      v26 = v2 - 1;
      v27 = v24;
      v45 = v22;
      v41 = v24;
      v28 = v53;
      while (1)
      {
        if (v46 == v27)
        {
          v24 = v46;
          v6 = v40;
          goto LABEL_13;
        }

        if (v24 < 0)
        {
          break;
        }

        if (v27 >= *(v22 + 16))
        {
          goto LABEL_15;
        }

        v29 = *(v28 + 80);
        v57 = v26;
        v30 = v50;
        (*(v28 + 16))(v50, v22 + ((v29 + 32) & ~v29) + *(v28 + 72) * v27, v58);
        v56 = sub_1ABF232F4();
        sub_1ABF232F4();
        v31 = v51;
        sub_1ABF24454();
        sub_1ABEC9148();
        (*v43)(v31, v52);
        v55 = v59;
        v32 = v61;
        v54 = v60;
        v33 = v62;
        v34 = sub_1ABF232E4();
        type metadata accessor for VisualUnderstandingService.ObservationSequence();
        v35 = swift_allocObject();
        v35[5] = &type metadata for VisualUnderstandingServiceBackendV1.ObservationSequenceV1.Iterator;
        v35[6] = sub_1ABB66238();
        v35[2] = v34;
        v35[3] = 0;
        v36 = v4;
        v37 = *(v49 + 80);
        *v19 = v56;
        *(v19 + 8) = v55;
        *(v19 + 3) = v54;
        *(v19 + 4) = v32;
        v19[40] = v33;
        sub_1ABF23304();
        (*(v28 + 8))(v30, v58);
        *&v19[v37] = v35;
        v38 = v48;
        sub_1ABB65814(v19, v48);
        sub_1ABB65814(v38, v36);
        if (!v57)
        {
          v24 = v27 + 1;
          v6 = v40;
          v22 = v45;
          goto LABEL_13;
        }

        v4 = v36 + *(v47 + 72);
        v26 = v57 - 1;
        ++v27;
        v22 = v45;
        v24 = v41;
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *v6 = v22;
    v6[1] = v24;
    sub_1ABA7BC1C();
  }
}

void *sub_1ABB64D18(void *result, void *a2, uint64_t a3)
{
  v4 = result;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v6 = a2;
      result = swift_beginAccess();
      v7 = 0;
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_1ABA94E50(v3 + 16, *(v3 + 40));
        result = sub_1ABF24864();
        if (v11)
        {
          swift_endAccess();
          goto LABEL_11;
        }

        *v6 = v9;
        v6[1] = v10;
        v6 += 2;
        ++v7;
        if (v8 == a3)
        {
          swift_endAccess();
          v7 = a3;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_11:
    *v4 = v3;
    return v7;
  }

  return result;
}

void *sub_1ABB64E14(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        result = sub_1ABEC4C94(result, a2);
        if (a2)
        {
          goto LABEL_9;
        }

        *(a2 + 8 * v5++) = result;
        if (v8 == a3)
        {
          v5 = a3;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *v4 = v3;
    return v5;
  }

  return result;
}

void sub_1ABB64E94()
{
  sub_1ABA7E2A8();
  sub_1ABAA3C08();
  v4 = sub_1ABAD219C(&qword_1EB4D3870, &qword_1ABF3DF00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  sub_1ABA7BB64();
  v11[1] = v8;
  v12 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v11 - v9;
  v11[0] = v1;
  if (!v3 || !v2)
  {
LABEL_11:
    sub_1ABAA3444();
    sub_1ABA7BC1C();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_1ABAA2528();
    while (1)
    {
      sub_1ABA94E50(v0 + 32, *(v0 + 56));
      sub_1ABAA2840();
      if (sub_1ABA7E1E0(v6, 1, v12) == 1)
      {
        swift_endAccess();
        sub_1ABAB480C(v6, &qword_1EB4D3870, &qword_1ABF3DF00);
        goto LABEL_11;
      }

      sub_1ABB65814(v6, v10);
      sub_1ABB65814(v10, v3);
      if (v2 == 1)
      {
        break;
      }

      sub_1ABAA2FE8();
    }

    swift_endAccess();
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1ABB65048()
{
  sub_1ABA7E2A8();
  sub_1ABAA3C08();
  v4 = sub_1ABAD219C(&qword_1EB4D3868, &qword_1ABF3DEF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  type metadata accessor for VisualUnderstandingService.MappingChange(0);
  sub_1ABA7BB64();
  v12[1] = v8;
  v13 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v12[0] = v1;
  if (!v3 || !v2)
  {
LABEL_11:
    sub_1ABAA3444();
    sub_1ABA7BC1C();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_1ABAA2528();
    while (1)
    {
      sub_1ABA94E50(v0 + 32, *(v0 + 56));
      sub_1ABAA2840();
      if (sub_1ABA7E1E0(v6, 1, v13) == 1)
      {
        swift_endAccess();
        sub_1ABAB480C(v6, &qword_1EB4D3868, &qword_1ABF3DEF8);
        goto LABEL_11;
      }

      sub_1ABB66180(v6, v11, type metadata accessor for VisualUnderstandingService.MappingChange);
      sub_1ABB66180(v11, v3, type metadata accessor for VisualUnderstandingService.MappingChange);
      if (v2 == 1)
      {
        break;
      }

      sub_1ABAA2FE8();
    }

    swift_endAccess();
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1ABB65208(uint64_t result, char *a2, unint64_t a3)
{
  if (!a2 || !a3)
  {
LABEL_24:
    sub_1ABB66180(v3, result, type metadata accessor for AnswerRenderIterator);
    return;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  v6 = a2;
  v7 = type metadata accessor for AnswerRenderIterator(0);
  v8 = 0;
  v9 = v7[6];
  while (v8 < a3)
  {
    if (__OFADD__(v8, 1))
    {
      goto LABEL_26;
    }

    v10 = *(*(v3 + v9) + 16);
    if (!v10)
    {
      goto LABEL_24;
    }

    v11 = v3 + v7[8];
    if (*(v11 + 8))
    {
      v12 = 0;
      *v11 = 0;
      *(v11 + 8) = 0;
LABEL_16:
      sub_1ABE44B9C();
      goto LABEL_17;
    }

    v13 = *v11;
    if (*v11 >= v10 - 1)
    {
      goto LABEL_24;
    }

    *(v11 + 8) = 0;
    v12 = v13 + 1;
    *v11 = v13 + 1;
    if (v13 == -1)
    {
      v12 = 0;
      goto LABEL_16;
    }

    v14 = *(v3 + v7[7]);
    if (v14 == -1 || v14 && !(v12 % v14))
    {
      goto LABEL_16;
    }

LABEL_17:
    if (v12 < 0)
    {
      goto LABEL_27;
    }

    v15 = *(v3 + v9);
    if (v12 >= *(v15 + 16))
    {
      goto LABEL_28;
    }

    v16 = v15 + 112 * v12;
    memcpy(__dst, (v16 + 32), 0x70uLL);
    memmove(v6, (v16 + 32), 0x70uLL);
    if (v8 + 1 == a3)
    {
      sub_1ABAE441C(__dst, v17);
      goto LABEL_24;
    }

    v6 += 112;
    sub_1ABAE441C(__dst, v17);
    ++v8;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1ABB653B0()
{
  sub_1ABA93304();
  v6 = v5 & v4;
  if (!v7)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA7EF58(v16);
    return;
  }

  v8 = v3;
  if (!v3)
  {
    v16 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    sub_1ABA8FEB8();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v6)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v2)
          {
            sub_1ABA83FC4();
            goto LABEL_17;
          }

          sub_1ABAA5F78();
        }

        __break(1u);
        break;
      }

      v12 = v9;
      sub_1ABA80858();
      sub_1ABAA4D04(v13 | (v12 << 6), v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
      v14 = memmove(v0, v1, 0x58uLL);
      if (v11 == v8)
      {
        sub_1ABA9576C(v14, v15);
        v16 = v12;
        goto LABEL_17;
      }

      v0 += 88;
      sub_1ABA9576C(v14, v15);
      sub_1ABAA5764();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1ABB654D8()
{
  sub_1ABA8F158();
  if (!v5)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA7EF58(v13);
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    sub_1ABA8FEB8();
    while (v8 < v6)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v7, 1))
        {
          if (v7 + 1 >= v3)
          {
            sub_1ABA83FC4();
            goto LABEL_17;
          }

          sub_1ABAA5F78();
        }

        __break(1u);
        break;
      }

      v10 = v7;
      sub_1ABA80858();
      v12 = (*(v0 + 48) + 144 * (v11 | (v10 << 6)));
      memcpy(__dst, v12, 0x90uLL);
      memmove(v1, v12, 0x90uLL);
      if (v9 == v6)
      {
        sub_1ABAE42A8(__dst, v14);
        v13 = v10;
        goto LABEL_17;
      }

      v1 += 144;
      sub_1ABAE42A8(__dst, v14);
      sub_1ABAA5764();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1ABB65600()
{
  sub_1ABAA3F9C();
  if (!v1)
  {
    v2 = 0;
    goto LABEL_15;
  }

  if (!v2)
  {
LABEL_15:
    sub_1ABA81610(v0, v2, v3, v4);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (!v6)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= ((63 - v5) >> 6))
          {
            v2 = v7;
            goto LABEL_15;
          }

          v6 = *(v4 + 8 * v10);
          ++v8;
          if (v6)
          {
            v8 = v10;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      *v1++ = *(*(v3 + 48) + ((v8 << 9) | (8 * v11)));
      v7 = v9;
      if (v9 == v2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1ABB656C0()
{
  sub_1ABA8BA68();
  if (!v1)
  {
    v3 = 0;
    goto LABEL_17;
  }

  v3 = v2;
  if (!v2)
  {
LABEL_17:
    *v0 = v3;
    sub_1ABA8D208();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = v1;
    v15 = v0;
    v5 = 0;
    v6 = 0;
    while (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v6 == 181)
      {
        v3 = 181;
LABEL_16:
        v0 = v15;
        goto LABEL_17;
      }

      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_22;
      }

      v7 = (_Records_GDEntityClass_records + v5);
      if (*(_Records_GDEntityClass_records + v5 + 8) >= 1844)
      {
        goto LABEL_19;
      }

      if (v7[2] >= 3396)
      {
        goto LABEL_20;
      }

      if (!_Records_GDEntityClass_classIds[0])
      {
        goto LABEL_24;
      }

      v8 = *v7;
      v9 = sub_1ABF23DD4();
      if (!_Records_GDEntityClass_labels)
      {
        goto LABEL_23;
      }

      v11 = v9;
      v12 = v10;
      ++v6;
      v13 = sub_1ABF23DD4();
      *v4 = v11;
      *(v4 + 8) = v12;
      *(v4 + 16) = v13;
      *(v4 + 24) = v14;
      *(v4 + 32) = v8;
      v4 += 40;
      v5 += 24;
      if (v3 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_1ABB65814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABB65884()
{
  result = qword_1EB4D3880;
  if (!qword_1EB4D3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3880);
  }

  return result;
}

unint64_t sub_1ABB658D8()
{
  result = qword_1EB4D3888;
  if (!qword_1EB4D3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3888);
  }

  return result;
}

unint64_t sub_1ABB6592C()
{
  result = qword_1EB4CF6A0;
  if (!qword_1EB4CF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6A0);
  }

  return result;
}

void sub_1ABB65980()
{
  sub_1ABA7E2A8();
  v2 = v1 + 56;
  v3 = -1 << *(v1 + 32);
  sub_1ABA93304();
  v7 = v6 & v5;
  if (!v8)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA97A38(v10);
    sub_1ABA7BC1C();
    return;
  }

  v9 = v4;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    v13 = (v12 - v3) >> 6;
    while (v11 < v9)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (1)
        {
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            goto LABEL_17;
          }

          v7 = *(v2 + 8 * v15);
          ++v10;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v10;
LABEL_12:
      sub_1ABA7E43C();
      if (v16)
      {

        v10 = v15;
        goto LABEL_17;
      }

      v0 += 16;

      v11 = v14;
      v10 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1ABB65A7C()
{
  sub_1ABA8F158();
  if (!v5)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA7EF58(v14);
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v14 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    sub_1ABA8FEB8();
    while (v8 < v6)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v7, 1))
        {
          if (v7 + 1 >= v3)
          {
            sub_1ABA83FC4();
            goto LABEL_17;
          }

          sub_1ABAA5F78();
        }

        __break(1u);
        break;
      }

      v10 = v7;
      sub_1ABA80858();
      sub_1ABAA4D04(v11 | (v10 << 6), v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
      v12 = memmove(v0, v1, 0x58uLL);
      if (v9 == v6)
      {
        sub_1ABA9576C(v12, v13);
        v14 = v10;
        goto LABEL_17;
      }

      v0 += 88;
      sub_1ABA9576C(v12, v13);
      sub_1ABAA5764();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1ABB65B80(void *result, char *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v19 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 72 * (v17 | (v16 << 6)));
      memcpy(__dst, v18, 0x41uLL);
      memmove(v11, v18, 0x41uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 72;
      result = sub_1ABB24348(__dst, v20);
      v12 = v15;
      v13 = v16;
    }

    sub_1ABB24348(__dst, v20);
    v13 = v16;
LABEL_19:
    v7 = v19;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1ABB65D14()
{
  sub_1ABA8BA68();
  sub_1ABA8F158();
  if (!v4)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA7EF58(v19);
    sub_1ABA8D208();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v19 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    v10 = (v8 - v9) >> 6;
    while (v7 < v5)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v10)
          {
            sub_1ABA83FC4();
            goto LABEL_17;
          }

          sub_1ABAA5F78();
        }

        __break(1u);
        break;
      }

      v12 = v6;
      sub_1ABA80858();
      v14 = *(v0 + 48) + 40 * (v13 | (v12 << 6));
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      LOBYTE(v14) = *(v14 + 32);
      *v1 = v16;
      *(v1 + 8) = v15;
      *(v1 + 16) = v17;
      *(v1 + 24) = v18;
      *(v1 + 32) = v14;
      if (v11 == v5)
      {

        v19 = v12;
        goto LABEL_17;
      }

      v1 += 40;

      sub_1ABAA5764();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1ABB65E24()
{
  sub_1ABA7E2A8();
  v2 = v1 + 64;
  v3 = -1 << *(v1 + 32);
  sub_1ABA93304();
  v7 = v6 & v5;
  if (!v8)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA97A38(v10);
    sub_1ABA7BC1C();
    return;
  }

  v9 = v4;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    v13 = (v12 - v3) >> 6;
    while (v11 < v9)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (1)
        {
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            goto LABEL_17;
          }

          v7 = *(v2 + 8 * v15);
          ++v10;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v10;
LABEL_12:
      sub_1ABA7E43C();
      if (v16)
      {

        v10 = v15;
        goto LABEL_17;
      }

      v0 += 16;

      v11 = v14;
      v10 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1ABB65F20()
{
  sub_1ABAA3F9C();
  if (!v1)
  {
    v2 = 0;
    goto LABEL_15;
  }

  if (!v2)
  {
LABEL_15:
    sub_1ABA81610(v0, v2, v3, v4);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (!v6)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= ((63 - v5) >> 6))
          {
            v2 = v7;
            goto LABEL_15;
          }

          v6 = *(v4 + 8 * v10);
          ++v8;
          if (v6)
          {
            v8 = v10;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v11 = *(v3 + 48) + 24 * (__clz(__rbit64(v6)) | (v8 << 6));
      v12 = *(v11 + 8);
      v6 &= v6 - 1;
      *v1 = *v11;
      *(v1 + 8) = v12;
      v1 += 24;
      v7 = v9;
      if (v9 == v2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1ABB65FF0()
{
  sub_1ABA8BA68();
  sub_1ABA8F158();
  if (!v4)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA7EF58(v18);
    sub_1ABA8D208();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v18 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    v10 = (v8 - v9) >> 6;
    while (v7 < v5)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v10)
          {
            sub_1ABA83FC4();
            goto LABEL_17;
          }

          sub_1ABAA5F78();
        }

        __break(1u);
        break;
      }

      v12 = v6;
      sub_1ABA80858();
      v14 = (*(v0 + 48) + ((v12 << 11) | (32 * v13)));
      v15 = v14[1];
      v16 = v14[2];
      v17 = v14[3];
      *v1 = *v14;
      v1[1] = v15;
      v1[2] = v16;
      v1[3] = v17;
      if (v11 == v5)
      {

        v18 = v12;
        goto LABEL_17;
      }

      v1 += 4;

      sub_1ABAA5764();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABB6611C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB66180(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1ABB661E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1ABB66238()
{
  result = qword_1EB4CF978;
  if (!qword_1EB4CF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF978);
  }

  return result;
}

uint64_t sub_1ABB66290(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v46 = a1;
  v47 = a2;
  sub_1ABA7BD7C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v48 = v14 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v50 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  v44 = v21 - v20;
  swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v38 = v23;
  v39 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v35 - v24;
  v26 = sub_1ABF24494();
  if (!v26)
  {
    return sub_1ABF24154();
  }

  v49 = v26;
  v53 = sub_1ABF24C04();
  v40 = sub_1ABF24C14();
  sub_1ABF24BB4();
  result = sub_1ABF24474();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v35 = v11;
    v36 = a5;
    v28 = 0;
    v41 = (v50 + 16);
    v42 = v50 + 8;
    v43 = v8;
    while (!__OFADD__(v28, 1))
    {
      v50 = v28 + 1;
      v29 = sub_1ABF245D4();
      (*v41)(v18);
      v29(v52, 0);
      v30 = v51;
      v46(v18, v48);
      if (v30)
      {
        v33 = sub_1ABA7E46C();
        v34(v33);
        (*(v38 + 8))(v25, v39);

        return (*(v35 + 32))(v37, v48, v36);
      }

      v51 = 0;
      v31 = sub_1ABA7E46C();
      v32(v31);
      sub_1ABF24BF4();
      result = sub_1ABF244B4();
      ++v28;
      if (v50 == v49)
      {
        (*(v38 + 8))(v25, v39);
        return v53;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Dictionary<>.triples(for:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  sub_1ABA7BD7C();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v24 = *a1;
  sub_1ABB668FC();
  sub_1ABF23A64();
  if (sub_1ABA7E1E0(v14, 1, a3) == 1)
  {
    (*(v11 + 8))(v14, v9);
    sub_1ABA8E6F4();
    swift_getAssociatedTypeWitness();
    v24 = sub_1ABF24154();
    sub_1ABF241F4();
    sub_1ABA8F18C();
    swift_getWitnessTable();
    return sub_1ABF24A14();
  }

  else
  {
    (*(v16 + 32))(v20, v14, a3);
    v24 = sub_1ABC3D718(a3, a4, a5);
    sub_1ABA8E6F4();
    swift_getAssociatedTypeWitness();
    sub_1ABF241F4();
    sub_1ABA8F18C();
    swift_getWitnessTable();
    v21 = sub_1ABF24A14();
    (*(v16 + 8))(v20, a3);
  }

  return v21;
}

unint64_t sub_1ABB668FC()
{
  result = qword_1ED86DAD0;
  if (!qword_1ED86DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DAD0);
  }

  return result;
}

uint64_t Dictionary<>.enumerateTriples(for:block:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1ABA7BF40();
  Dictionary<>.triples(for:)(v9, v10, v11, v12, v13);
  swift_getAssociatedTypeWitness();
  v14 = sub_1ABF24A04();
  sub_1ABA7D36C();
  WitnessTable = swift_getWitnessTable();
  sub_1ABE5161C(a2, a3, v14, WitnessTable);
}

void *Dictionary<>.triples<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a7;
  v12[7] = a2;
  swift_getAssociatedTypeWitness();
  sub_1ABA83730();
  sub_1ABF24A04();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_1ABB444E4(sub_1ABB671DC, v12, a4, TupleTypeMetadata2, MEMORY[0x1E69E73E0], a6, MEMORY[0x1E69E7410], v10);
}

uint64_t Dictionary<>.enumerateTriples<A>(for:block:)(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t (*)(), __n128), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1ABA7BF40();
  Dictionary<>.triples<A>(for:)(v11, v12, v13, v14, v15, v16, a9);
  swift_getAssociatedTypeWitness();
  sub_1ABA83730();
  sub_1ABF24A04();
  swift_getTupleTypeMetadata2();
  sub_1ABF241F4();
  sub_1ABA8F18C();
  swift_getWitnessTable();
  sub_1ABA7D36C();
  WitnessTable = swift_getWitnessTable();
  sub_1ABA93314(a2, a3, v18, v19, v20, WitnessTable);
}

uint64_t Dictionary<>.triples()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = sub_1ABB6722C;
  v9[6] = &v10;
  sub_1ABB668FC();
  sub_1ABA8E6F4();
  v4 = sub_1ABF23A44();
  swift_getAssociatedTypeWitness();
  sub_1ABA83730();
  sub_1ABF241F4();
  sub_1ABA8E6F4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  return sub_1ABB66290(sub_1ABB6726C, v9, v4, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
}

uint64_t sub_1ABB66D20@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a4, a1, a1 + *(TupleTypeMetadata2 + 48));
  *(a4 + 8) = result;
  return result;
}

uint64_t Dictionary<>.enumerateTriples(block:)(uint64_t (*a1)(uint64_t *, uint64_t (*)(), __n128), uint64_t a2)
{
  sub_1ABA7BF40();
  Dictionary<>.triples()(v4, v5, v6, v7);
  swift_getAssociatedTypeWitness();
  sub_1ABA83730();
  sub_1ABF241F4();
  swift_getTupleTypeMetadata2();
  sub_1ABF241F4();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_1ABA93314(a1, a2, v9, v10, v11, WitnessTable);
}

uint64_t sub_1ABB66F64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, uint64_t, uint64_t))
{
  v13[2] = a2;
  v13[0] = *a1;
  sub_1ABB668FC();
  v9 = sub_1ABF23A44();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  return a8(v13, v9, WitnessTable, v11);
}

uint64_t sub_1ABB67030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.triples(for:)(a1, *v4, *(a2 + 24), *(a3 - 8), *(a3 - 16));
  *a4 = result;
  return result;
}

void *sub_1ABB67070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = Dictionary<>.triples<A>(for:)(a1, *v6, *(a4 + 24), a2, *(a5 - 8), a3, *(a5 - 16));
  *a6 = result;
  return result;
}

uint64_t sub_1ABB67124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Dictionary<>.triples()(*v3, *(a1 + 24), *(a2 - 8), *(a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1ABB671DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[4];
  v7 = v2[6];
  v6 = v2[7];
  v10 = *a1;
  v8 = v10;
  result = Dictionary<>.triples(for:)(&v10, v6, v4, v5, v7);
  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1ABB6722C(void *a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  *a1 = *a2;
  return sub_1ABC3D718(v3, v4, v5);
}

uint64_t sub_1ABB6729C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABB67328(uint64_t a1)
{

  result = sub_1ABB800DC(1, a1);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
    if (v4 == v5 >> 1)
    {
      return swift_unknownObjectRelease();
    }

    while (v4 < (v5 >> 1))
    {
      v7 = *(v3 + 8 * v4);
      if (v7 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v6 / v7;
      }

      if ((v5 >> 1) - 1 == v4)
      {
        return swift_unknownObjectRelease();
      }

      ++v4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB673E0(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ABB67490(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v9 = a3 + 32;
  v8 = *(a3 + 32);
  v7 = *(v9 + 8);
  v10 = *(*(v6 - 8) + 84);
  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = *(*(v6 - 8) + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v8 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(v11 + 80);
  v18 = *(*(v7 - 8) + 64);
  v19 = *(v14 + 80);
  v20 = *(*(v8 - 8) + 64);
  if (v16 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(*(v6 - 8) + 64) + v17;
  v23 = a2 - v21;
  if (a2 > v21)
  {
    v24 = v20 + ((v18 + v19 + (v22 & ~v17)) & ~v19) + 1;
    v25 = 8 * v24;
    if (v24 > 3)
    {
      goto LABEL_13;
    }

    v27 = ((v23 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v27 >= 2)
    {
LABEL_13:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_30;
      }

LABEL_20:
      v28 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v28 = 0;
      }

      if (v20 + ((v18 + v19 + (v22 & ~v17)) & ~v19) == -1)
      {
        v30 = 0;
      }

      else
      {
        if (v24 <= 3)
        {
          v29 = v20 + ((v18 + v19 + (v22 & ~v17)) & ~v19) + 1;
        }

        else
        {
          v29 = 4;
        }

        switch(v29)
        {
          case 2:
            v30 = *a1;
            break;
          case 3:
            v30 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v30 = *a1;
            break;
          default:
            v30 = *a1;
            break;
        }
      }

      v33 = v21 + (v30 | v28);
      return (v33 + 1);
    }
  }

LABEL_30:
  if (v10 != v21)
  {
    a1 = ((a1 + v22) & ~v17);
    if (v12 == v21)
    {
      v6 = v7;
      goto LABEL_36;
    }

    a1 = ((a1 + v18 + v19) & ~v19);
    if (v15 == v21)
    {
      v12 = v15;
      v6 = v8;
      goto LABEL_36;
    }

    v32 = *(a1 + v20);
    if (v32 < 2)
    {
      return 0;
    }

    v33 = (v32 + 2147483646) & 0x7FFFFFFF;
    return (v33 + 1);
  }

  v12 = *(*(v6 - 8) + 84);
LABEL_36:

  return sub_1ABA7E1E0(a1, v12, v6);
}

void sub_1ABB67734(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v11 = a4 + 32;
  v10 = *(a4 + 32);
  v9 = *(v11 + 8);
  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v8)
  {
    v14 = *(*(v7 - 8) + 84);
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v10 - 8);
  v16 = *(v15 + 84);
  if (v16 <= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  if (v17 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v12 + 80);
  v20 = *(*(v7 - 8) + 64) + v19;
  v21 = *(*(v9 - 8) + 64);
  v22 = *(v15 + 80);
  v23 = (v21 + v22 + (v20 & ~v19)) & ~v22;
  v24 = *(*(v10 - 8) + 64);
  v25 = v24 + v23 + 1;
  v26 = 8 * v25;
  v27 = a3 >= v18;
  v28 = a3 - v18;
  if (v28 != 0 && v27)
  {
    if (v25 <= 3)
    {
      v32 = ((v28 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 0;
  }

  if (v18 >= a2)
  {
    switch(v29)
    {
      case 1:
        a1[v25] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&a1[v25] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_52:
        __break(1u);
        return;
      case 4:
        *&a1[v25] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v8 == v18)
        {
          goto LABEL_41;
        }

        a1 = (&a1[v20] & ~v19);
        if (v13 == v18)
        {
          v8 = v13;
          v7 = v9;
        }

        else
        {
          a1 = (&a1[v21 + v22] & ~v22);
          if (v16 != v18)
          {
            a1[v24] = a2 + 1;
            return;
          }

          v8 = v16;
          v7 = v10;
        }

LABEL_41:

        sub_1ABA7B9B4(a1, a2, v8, v7);
        break;
    }
  }

  else
  {
    v30 = ~v18 + a2;
    if (v25 < 4)
    {
      v31 = (v30 >> v26) + 1;
      if (v24 + v23 != -1)
      {
        v34 = v30 & ~(-1 << v26);
        bzero(a1, v24 + v23 + 1);
        if (v25 == 3)
        {
          *v6 = v34;
          v6[2] = BYTE2(v34);
        }

        else if (v25 == 2)
        {
          *v6 = v34;
        }

        else
        {
          *v6 = v30;
        }
      }
    }

    else
    {
      bzero(a1, v24 + v23 + 1);
      *v6 = v30;
      v31 = 1;
    }

    switch(v29)
    {
      case 1:
        v6[v25] = v31;
        break;
      case 2:
        *&v6[v25] = v31;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *&v6[v25] = v31;
        break;
      default:
        return;
    }
  }
}

double sub_1ABB67AA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  sub_1ABA7BD7C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v50 = v9 - v8;
  v51 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v39 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  sub_1ABA7BD7C();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v48 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v47 = &v39 - v21;
  v54 = *(a1 + 92);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = v17 + 32;
  v45 = v17 + 16;
  v44 = (v6 + 32);
  v43 = v6 + 8;
  v42 = v17 + 8;
  v49 = TupleTypeMetadata2;
  v22 = v51;
  while (1)
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v15, 1, TupleTypeMetadata2) == 1)
    {
      (*(v39 + 8))(v15, v40);
      result = 0.0;
      v35 = v41;
      *(v41 + 16) = 0u;
      *(v35 + 32) = 0u;
      *v35 = 0u;
      *(v35 + 48) = -2;
      return result;
    }

    sub_1ABA8086C();
    v23 = v47;
    v24(v47, v15, TupleTypeMetadata2);
    sub_1ABA8086C();
    v25 = v48;
    v26(v48, v23, TupleTypeMetadata2);
    v27 = *v25;
    v28 = v25 + *(TupleTypeMetadata2 + 48);
    v29 = v50;
    (*v44)(v50, v28, v22);
    v56 = v27;
    v55 = *(v3 + *(a1 + 104));
    v30 = *(a1 + 56);
    swift_getAssociatedTypeWitness();
    *(&v38 + 1) = v30;
    *&v38 = *(a1 + 32);
    sub_1ABC80E28(&v56, v55, *(a1 + 40), &v57, v38, *(a1 + 80), *(a1 + 72), *(a1 + 64));
    sub_1ABA8086C();
    v31 = v29;
    TupleTypeMetadata2 = v49;
    v32(v31, v22);
    sub_1ABA8086C();
    v33(v23, TupleTypeMetadata2);
    if (v58[24] != 255)
    {
      break;
    }

    sub_1ABB684E0(&v57);
  }

  *&v59[9] = *&v58[9];
  v36 = v57;
  *v59 = *v58;
  v37 = v41;
  *v41 = v27;
  *(v37 + 8) = v36;
  *(v37 + 24) = *v59;
  result = *&v59[9];
  *(v37 + 33) = *&v59[9];
  return result;
}

uint64_t sub_1ABB67F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  v28[0] = a6;
  v28[1] = a7;
  v28[2] = a8;
  v28[3] = a10;
  v28[4] = a11;
  v29 = a12;
  v30 = a13;
  v31 = a14;
  v19 = type metadata accessor for DynamicGraphObjectSequence.Iterator(0, v28);
  v20 = *(v19 + 92);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a9[v20], a2, AssociatedTypeWitness);
  sub_1ABA7EF70();
  (*(v22 + 32))(&a9[v23], a3, a10);
  sub_1ABA7EF70();
  result = (*(v24 + 32))(&a9[v25], a4, a8);
  a9[*(v19 + 104)] = a5;
  return result;
}

uint64_t sub_1ABB68080@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v36 = *(a1 + 32);
  v37 = a2;
  sub_1ABA7BD7C();
  v35 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v34 = v8 - v7;
  v10 = *(v9 + 40);
  sub_1ABA7BD7C();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v18 = *(v17 + 16);
  sub_1ABA7BD7C();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  v26 = *(v25 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v30 = &v34 - v29;
  (*(v20 + 16))(v24, v3, v18, v28);
  sub_1ABF23F04();
  (*(v12 + 16))(v16, v3 + *(a1 + 92), v10);
  v31 = v34;
  v32 = v36;
  (*(v35 + 16))(v34, v3 + *(a1 + 96), v36);
  return sub_1ABB67F1C(MEMORY[0x1E69E7CD0], v30, v16, v31, *(v3 + *(a1 + 100)), v18, *(a1 + 24), v32, v37, v10, v26, *(a1 + 56), *(a1 + 72), *(a1 + 80));
}

uint64_t sub_1ABB6830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v26[0] = a5;
  v26[1] = a6;
  v26[2] = a7;
  v26[3] = a8;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v20 = type metadata accessor for DynamicGraphObjectSequence(0, v26);
  sub_1ABA7EF70();
  (*(v21 + 32))(a9 + v22, a2, a8);
  sub_1ABA7EF70();
  result = (*(v23 + 32))(a9 + v24, a3, a7);
  *(a9 + *(v20 + 100)) = a4;
  return result;
}

uint64_t sub_1ABB68450@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1ABB68080(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1ABB684E0(uint64_t a1)
{
  v2 = sub_1ABAD219C(qword_1EB4D3948, &qword_1ABF508F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1ABB68568(uint64_t a1)
{
  sub_1ABB68CCC(319);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1ABB68644(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v10 = *(a3 + 32);
  v9 = *(a3 + 40);
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  if (v8 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v7 + 84);
  }

  v14 = *(v10 - 8);
  if (v13 <= *(v14 + 84))
  {
    v15 = *(v14 + 84);
  }

  else
  {
    v15 = v13;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(v14 + 80);
  if (!a2)
  {
    return 0;
  }

  v21 = *(*(*(a3 + 40) - 8) + 64) + v20;
  if (a2 <= v16)
  {
    goto LABEL_31;
  }

  v22 = *(*(v10 - 8) + 64) + ((v21 + ((v18 + v19 + ((v17 + 8) & ~v17)) & ~v19)) & ~v20) + 1;
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v16 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v26 < 2)
    {
LABEL_31:
      if ((v15 & 0x80000000) != 0)
      {
        v31 = (a1 + v17 + 8) & ~v17;
        if (v8 == v16)
        {
          v9 = AssociatedTypeWitness;
        }

        else
        {
          v31 = (v31 + v18 + v19) & ~v19;
          if (v12 == v16)
          {
            v8 = v12;
          }

          else
          {
            v31 = (v21 + v31) & ~v20;
            v8 = *(v14 + 84);
            v9 = *(a3 + 32);
          }
        }

        return sub_1ABA7E1E0(v31, v8, v9);
      }

      else
      {
        v30 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v30) = -1;
        }

        return (v30 + 1);
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_31;
  }

LABEL_21:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (*(*(v10 - 8) + 64) + ((v21 + ((v18 + v19 + ((v17 + 8) & ~v17)) & ~v19)) & ~v20) == -1)
  {
    v29 = 0;
  }

  else
  {
    if (v22 <= 3)
    {
      v28 = *(*(v10 - 8) + 64) + ((v21 + ((v18 + v19 + ((v17 + 8) & ~v17)) & ~v19)) & ~v20) + 1;
    }

    else
    {
      v28 = 4;
    }

    switch(v28)
    {
      case 2:
        v29 = *a1;
        break;
      case 3:
        v29 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v29 = *a1;
        break;
      default:
        v29 = *a1;
        break;
    }
  }

  return v16 + (v29 | v27) + 1;
}

void sub_1ABB68940(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v12 = *(a4 + 32);
  v11 = *(a4 + 40);
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v10 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v16 = *(v12 - 8);
  v17 = *(v16 + 84);
  if (v15 <= v17)
  {
    v18 = *(v16 + 84);
  }

  else
  {
    v18 = v15;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v9 + 80);
  v21 = *(*(AssociatedTypeWitness - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(v16 + 80);
  v24 = *(*(*(a4 + 40) - 8) + 64) + v23;
  v25 = *(*(v12 - 8) + 64) + ((v24 + ((v21 + v22 + ((v20 + 8) & ~v20)) & ~v22)) & ~v23) + 1;
  v26 = 8 * v25;
  if (a3 <= v19)
  {
    v27 = 0;
  }

  else if (v25 <= 3)
  {
    v31 = ((a3 - v19 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v31))
    {
      v27 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v27 = v32;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 1;
  }

  if (v19 >= a2)
  {
    v30 = ~v23;
    switch(v27)
    {
      case 1:
        a1[v25] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v25] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_56:
        __break(1u);
        break;
      case 4:
        *&a1[v25] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if ((v18 & 0x80000000) != 0)
          {
            v35 = &a1[v20 + 8] & ~v20;
            if (v10 == v19)
            {
              v36 = a2;
              v11 = AssociatedTypeWitness;
            }

            else
            {
              v35 = (v35 + v21 + v22) & ~v22;
              if (v14 == v19)
              {
                v36 = a2;
                v10 = v14;
              }

              else
              {
                v35 = (v24 + v35) & v30;
                v36 = a2;
                v10 = v17;
                v11 = v12;
              }
            }

            sub_1ABA7B9B4(v35, v36, v10, v11);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v34 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v34 = (a2 - 1);
            }

            *a1 = v34;
          }
        }

        break;
    }
  }

  else
  {
    v28 = ~v19 + a2;
    if (v25 < 4)
    {
      v29 = (v28 >> v26) + 1;
      if (*(*(v12 - 8) + 64) + ((v24 + ((v21 + v22 + ((v20 + 8) & ~v20)) & ~v22)) & ~v23) != -1)
      {
        v33 = v28 & ~(-1 << v26);
        bzero(a1, v25);
        if (v25 == 3)
        {
          *a1 = v33;
          a1[2] = BYTE2(v33);
        }

        else if (v25 == 2)
        {
          *a1 = v33;
        }

        else
        {
          *a1 = v28;
        }
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
    }

    switch(v27)
    {
      case 1:
        a1[v25] = v29;
        break;
      case 2:
        *&a1[v25] = v29;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v25] = v29;
        break;
      default:
        return;
    }
  }
}

void sub_1ABB68CCC(uint64_t a1)
{
  if (!qword_1EB4CF818)
  {
    sub_1ABB668FC();
    v1 = sub_1ABF243D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4CF818);
    }
  }
}

void sub_1ABB68E60()
{
  sub_1ABA81628();
  v20 = *MEMORY[0x1E69E9840];
  sub_1ABA8FEE4();
  v4 = sub_1ABF23BD4();
  v16[0] = 0;
  v5 = [v2 requestAssertionForViewName:v4 error:v16];

  if (v5)
  {
    sub_1ABA7D384(OBJC_IVAR___GDSwiftViewService_databaseCache);
    v6 = sub_1ABA7D3C4();
    v3(v6);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = sub_1ABA7EF7C();
      sub_1ABBF7F98(v8, v9, v10, v11);
      v12 = v16[2];
      v13 = v19;
      v15 = v17;
      v14 = v18;
      *v0 = v16[1];
      v0[1] = v12;
      *(v0 + 1) = v15;
      *(v0 + 2) = v14;
      v0[6] = v13;
    }
  }

  else
  {
    v7 = v16[0];
    sub_1ABA8E700();

    swift_willThrow();
  }
}

void ViewService.entitySubgraphView.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BF50();
  a21 = v27;
  a22 = v28;
  v30 = v29;
  a10 = *MEMORY[0x1E69E9840];
  v31 = *(v22 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA80878(0x797469746E65);
  sub_1ABF23BD4();
  sub_1ABA7E480();
  v32 = [v31 requestAssertionForViewName:v24 error:&a9];

  if (v32)
  {
    sub_1ABA7D384(OBJC_IVAR___GDSwiftViewService_databaseCache);
    v33 = sub_1ABA80890();
    v34 = v26(v33);
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v34;
      v38 = v35;
      v39 = [swift_unknownObjectRetain() viewArtifactTableName];
      if (v39)
      {
        v40 = v39;
        v41 = sub_1ABF23C04();
        v25 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1ABA94854();
        v41 = 0x735F797469746E65;
      }

      *v30 = v32;
      *(v30 + 1) = v41;
      *(v30 + 2) = v25;
      *(v30 + 3) = v37;
      *(v30 + 4) = v38;
      *(v30 + 40) = xmmword_1ABF3E1C0;
    }
  }

  else
  {
    v36 = a9;
    sub_1ABA8E700();

    swift_willThrow();
  }

  sub_1ABA8FEC8();
}

void ViewService.peopleSubgraphView.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BF50();
  a21 = v27;
  a22 = v28;
  v30 = v29;
  a10 = *MEMORY[0x1E69E9840];
  v31 = *(v22 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA80878(0x656C706F6570);
  sub_1ABF23BD4();
  sub_1ABA7E480();
  v32 = [v31 requestAssertionForViewName:v24 error:&a9];

  if (v32)
  {
    sub_1ABA7D384(OBJC_IVAR___GDSwiftViewService_databaseCache);
    v33 = sub_1ABA80890();
    v34 = v26(v33);
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v34;
      v38 = v35;
      v39 = [swift_unknownObjectRetain() viewArtifactTableName];
      if (v39)
      {
        v40 = v39;
        v41 = sub_1ABF23C04();
        v25 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1ABA94854();
        v41 = 0x735F656C706F6570;
      }

      *v30 = v32;
      *(v30 + 1) = v41;
      *(v30 + 2) = v25;
      *(v30 + 3) = v37;
      *(v30 + 4) = v38;
      *(v30 + 40) = xmmword_1ABF3E1C0;
    }
  }

  else
  {
    v36 = a9;
    sub_1ABA8E700();

    swift_willThrow();
  }

  sub_1ABA8FEC8();
}

uint64_t Encodable.asJSONString.getter(uint64_t a1, uint64_t a2)
{
  v19[2] = a2;
  v2 = sub_1ABF23C54();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1ABF21814();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  sub_1ABF21854();
  swift_allocObject();
  sub_1ABF21844();
  sub_1ABF21804();
  v10 = sub_1ABF21824();
  sub_1ABB4D7BC();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  v10(v20, 0);
  v12 = sub_1ABF21834();
  v14 = v13;
  sub_1ABF23C44();
  v15 = sub_1ABF23C24();
  if (v16)
  {
    v17 = v15;
    sub_1ABA96210(v12, v14);
  }

  else
  {
    sub_1ABA96210(v12, v14);

    return 0;
  }

  return v17;
}

IntelligencePlatform::EntitySimilarityViewName_optional __swiftcall EntitySimilarityViewName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t EntitySimilarityViewName.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000023;
  }

  else
  {
    return 0xD000000000000017;
  }
}

unint64_t sub_1ABB697F8()
{
  result = qword_1EB4D39D0;
  if (!qword_1EB4D39D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D39D0);
  }

  return result;
}

unint64_t sub_1ABB69870@<X0>(unint64_t *a1@<X8>)
{
  result = EntitySimilarityViewName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1ABB6989C()
{
  result = qword_1EB4D39D8;
  if (!qword_1EB4D39D8)
  {
    sub_1ABAE2850(&qword_1EB4D39E0, &qword_1ABF3E280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D39D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntitySimilarityViewName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1ABB699EC(void *a1@<X8>)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v23[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v23];

  v7 = v23[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    v13 = v11(v6, v9, v10);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v18 = [swift_unknownObjectRetain() viewArtifactTableName];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1ABF23C04();
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v22 = 0x80000001ABF88AF0;
        v20 = 0xD000000000000019;
      }

      *a1 = v6;
      a1[1] = v20;
      a1[2] = v22;
      a1[3] = v16;
      a1[4] = v17;
      a1[5] = 0x44495F444DLL;
      a1[6] = 0xE500000000000000;
      a1[7] = 0x495F7463656A626FLL;
      a1[8] = 0xE900000000000044;
    }
  }

  else
  {
    v15 = v23[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }
}

uint64_t sub_1ABB69BF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001ABF88B10 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001ABF88B30 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x80000001ABF88B50 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1ABB69D10(char a1)
{
  result = 0xD000000000000013;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  return result;
}

uint64_t sub_1ABB69D68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB69DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB69BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB69E20(uint64_t a1)
{
  v2 = sub_1ABB6A388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB69E5C(uint64_t a1)
{
  v2 = sub_1ABB6A388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB69E98(uint64_t a1)
{
  v2 = sub_1ABB6A3DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB69ED4(uint64_t a1)
{
  v2 = sub_1ABB6A3DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB69F10(uint64_t a1)
{
  v2 = sub_1ABB6A484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB69F4C(uint64_t a1)
{
  v2 = sub_1ABB6A484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB69F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB69D68(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB69FB8(uint64_t a1)
{
  v2 = sub_1ABB6A430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB69FF4(uint64_t a1)
{
  v2 = sub_1ABB6A430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntitlementCheckError.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D39E8, &qword_1ABF3E300);
  sub_1ABA7BB64();
  v34 = v4;
  v35 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8E718(v6, v28);
  v33 = sub_1ABAD219C(&qword_1EB4D39F0, &qword_1ABF3E308);
  sub_1ABA7BB64();
  v32 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v28 - v9;
  sub_1ABAD219C(&qword_1EB4D39F8, &qword_1ABF3E310);
  sub_1ABA7BB64();
  v29 = v11;
  v30 = v10;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D3A00, &qword_1ABF3E318);
  sub_1ABA7BB64();
  v17 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  v21 = v1[1];
  v28 = *v1;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB6A388();
  sub_1ABF252E4();
  if (!v21)
  {
    v36 = 0;
    sub_1ABB6A484();
    sub_1ABA7BF6C(&type metadata for EntitlementCheckError.FailedToGetSelfTaskCodingKeys, &v36);
    v23 = v30;
    v24 = *(v29 + 8);
    v22 = v14;
    goto LABEL_5;
  }

  if (v21 == 1)
  {
    v38 = 2;
    sub_1ABB6A3DC();
    sub_1ABA7BF6C(&type metadata for EntitlementCheckError.EntitlementIsWrongTypeCodingKeys, &v38);
    v22 = sub_1ABA7E48C();
LABEL_5:
    v24(v22, v23);
    return (*(v17 + 8))(v20, v15);
  }

  v37 = 1;
  sub_1ABB6A430();
  v26 = v31;
  sub_1ABA7BF6C(&type metadata for EntitlementCheckError.FailedToReadEntitlementCodingKeys, &v37);
  v27 = v33;
  sub_1ABF24F34();
  (*(v32 + 8))(v26, v27);
  return (*(v17 + 8))(v20, v15);
}

unint64_t sub_1ABB6A388()
{
  result = qword_1EB4D3A08;
  if (!qword_1EB4D3A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A08);
  }

  return result;
}

unint64_t sub_1ABB6A3DC()
{
  result = qword_1EB4D3A10;
  if (!qword_1EB4D3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A10);
  }

  return result;
}

unint64_t sub_1ABB6A430()
{
  result = qword_1EB4D3A18;
  if (!qword_1EB4D3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A18);
  }

  return result;
}

unint64_t sub_1ABB6A484()
{
  result = qword_1EB4D3A20;
  if (!qword_1EB4D3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A20);
  }

  return result;
}

uint64_t EntitlementCheckError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v62 = sub_1ABAD219C(&qword_1EB4D3A28, &qword_1ABF3E320);
  sub_1ABA7BB64();
  v57 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA8E718(v5, v53);
  sub_1ABAD219C(&qword_1EB4D3A30, &qword_1ABF3E328);
  sub_1ABA7BB64();
  v58 = v7;
  v59 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D3A38, &qword_1ABF3E330);
  sub_1ABA7BB64();
  v56 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4D3A40, &unk_1ABF3E338);
  sub_1ABA7BB64();
  v61 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB6A388();
  v21 = v63;
  sub_1ABF252C4();
  if (v21)
  {
    return sub_1ABA84B54(a1);
  }

  v53 = v11;
  v54 = v15;
  v55 = v10;
  v22 = v62;
  v63 = a1;
  sub_1ABF24EA4();
  result = sub_1ABAD4EA4();
  v27 = v16;
  if (v25 == v26 >> 1)
  {
LABEL_9:
    v36 = sub_1ABF24B44();
    sub_1ABA7BD00(v36, MEMORY[0x1E69E6B28]);
    v38 = v37;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v38 = &type metadata for EntitlementCheckError;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v20, v27);
    a1 = v63;
    return sub_1ABA84B54(a1);
  }

  if (v25 >= (v26 >> 1))
  {
    __break(1u);
    return result;
  }

  v28 = v16;
  v29 = *(v24 + v25);
  v30 = sub_1ABAD4E90();
  v32 = v31;
  v34 = v33;
  swift_unknownObjectRelease();
  if (v32 != v34 >> 1)
  {
    v27 = v28;
    goto LABEL_9;
  }

  if (v29)
  {
    if (v29 == 1)
    {
      v65 = 1;
      sub_1ABB6A430();
      sub_1ABA93338(&type metadata for EntitlementCheckError.FailedToReadEntitlementCodingKeys, &v65);
      v35 = v60;
      v62 = v30;
      v41 = v59;
      v46 = sub_1ABF24E14();
      v48 = v47;
      swift_unknownObjectRelease();
      v49 = sub_1ABA7E48C();
      v50(v49, v41);
      v51 = sub_1ABA7D3D8();
      v52(v51);
    }

    else
    {
      v66 = 2;
      sub_1ABB6A3DC();
      sub_1ABA93338(&type metadata for EntitlementCheckError.EntitlementIsWrongTypeCodingKeys, &v66);
      v35 = v60;
      swift_unknownObjectRelease();
      v42 = sub_1ABA7E48C();
      v43(v42, v22);
      v44 = sub_1ABA7D3D8();
      v45(v44);
      v46 = 0;
      v48 = 1;
    }
  }

  else
  {
    v64 = 0;
    sub_1ABB6A484();
    v39 = v54;
    sub_1ABF24D94();
    v40 = v61;
    swift_unknownObjectRelease();
    (*(v56 + 8))(v39, v53);
    (*(v40 + 8))(v20, v28);
    v46 = 0;
    v48 = 0;
    v35 = v60;
  }

  *v35 = v46;
  v35[1] = v48;
  return sub_1ABA84B54(v63);
}

void static EntitlementCheck.CurrentProcessEntitlement.item<A>(of:for:)(uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  error[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v8 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = SecTaskCreateFromSelf(0);
  if (!v12)
  {
    v16 = sub_1ABB6ADDC();
    sub_1ABA7BD00(&type metadata for EntitlementCheckError, v16);
    *v17 = 0;
    v17[1] = 0;
    swift_willThrow();
    return;
  }

  v13 = v12;
  error[0] = 0;
  v14 = sub_1ABF23BD4();
  v15 = SecTaskCopyValueForEntitlement(v13, v14, error);

  if (v15)
  {
    v26 = v15;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      sub_1ABA83758(v11, 0);
      (*(*(a3 - 8) + 32))(a4, v11, a3);
      sub_1ABA83758(a4, 0);
    }

    else
    {
      sub_1ABA83758(v11, 1);
      (*(v8 + 8))(v11, v6);
      v23 = sub_1ABB6ADDC();
      sub_1ABA7BD00(&type metadata for EntitlementCheckError, v23);
      *v24 = xmmword_1ABF34750;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    goto LABEL_9;
  }

  if (error[0])
  {
    v26 = error[0];
    sub_1ABAD219C(&qword_1EB4D3A50, &qword_1ABF3E348);
    v18 = sub_1ABF23C74();
    v20 = v19;
    v21 = sub_1ABB6ADDC();
    sub_1ABA7BD00(&type metadata for EntitlementCheckError, v21);
    *v22 = v18;
    v22[1] = v20;
    swift_willThrow();
LABEL_9:
    if (error[0])
    {
    }

    goto LABEL_12;
  }

  sub_1ABA83758(a4, 1);
LABEL_12:
}

unint64_t sub_1ABB6ADDC()
{
  result = qword_1EB4D3A48;
  if (!qword_1EB4D3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A48);
  }

  return result;
}

uint64_t sub_1ABB6AE30(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABB6AE48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB6AE9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntitlementCheckError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB6B008(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABB6B0C8()
{
  result = qword_1EB4D3A58;
  if (!qword_1EB4D3A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A58);
  }

  return result;
}

unint64_t sub_1ABB6B120()
{
  result = qword_1EB4D3A60;
  if (!qword_1EB4D3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A60);
  }

  return result;
}

unint64_t sub_1ABB6B178()
{
  result = qword_1EB4D3A68;
  if (!qword_1EB4D3A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A68);
  }

  return result;
}

unint64_t sub_1ABB6B1D0()
{
  result = qword_1EB4D3A70;
  if (!qword_1EB4D3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A70);
  }

  return result;
}

unint64_t sub_1ABB6B228()
{
  result = qword_1EB4D3A78;
  if (!qword_1EB4D3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A78);
  }

  return result;
}

unint64_t sub_1ABB6B280()
{
  result = qword_1EB4D3A80;
  if (!qword_1EB4D3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A80);
  }

  return result;
}

unint64_t sub_1ABB6B2D8()
{
  result = qword_1EB4D3A88;
  if (!qword_1EB4D3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A88);
  }

  return result;
}

unint64_t sub_1ABB6B330()
{
  result = qword_1EB4D3A90;
  if (!qword_1EB4D3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A90);
  }

  return result;
}

unint64_t sub_1ABB6B388()
{
  result = qword_1EB4D3A98;
  if (!qword_1EB4D3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A98);
  }

  return result;
}

unint64_t sub_1ABB6B3E0()
{
  result = qword_1EB4D3AA0;
  if (!qword_1EB4D3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AA0);
  }

  return result;
}

uint64_t Entity.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

void Entity.init<A, B>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABB6B644(nullsub_1, 0, sub_1ABB6DD90, v11, a3, a5, &v29, a4);
  if (v5)
  {
    v12 = *(*(a2 - 8) + 8);

    v12(a1, a2);
  }

  else
  {
    v33 = v29;
    swift_beginAccess();
    v13 = *(v11 + 16);

    sub_1ABB6B738(&v33, v13, &v29);
    (*(*(a2 - 8) + 8))(a1, a2);

    sub_1ABA808A4(v14, v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v23, v29, v30, v31, v32);
  }
}

uint64_t sub_1ABB6B644@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  sub_1ABB6BCD4(sub_1ABB6DD38, a2, a3, sub_1ABB6DD78, v17, a6, a8, x8_0);
}

void sub_1ABB6B738(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (!*a1)
  {

    v12 = sub_1ABB6DA08();
    v13 = sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v12);
    sub_1ABA7BF88(v13, v14);
LABEL_7:
    swift_willThrow();
    return;
  }

  if (!*(a2 + 16))
  {

    v15 = sub_1ABB6DA08();
    sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v15);
    sub_1ABA8F1A4(v16, 1);
    *(v17 + 49) = 2;
    goto LABEL_7;
  }

  EntityClass.init(intValue:)(HIBYTE(v5), &v22);
  v7 = v23;
  if (v23)
  {
    v8 = v26;
    v10 = v24;
    v9 = v25;
    v11 = v22;
    *a3 = v5;
    *(a3 + 8) = a2;
    *(a3 + 16) = v11;
    *(a3 + 24) = v7;
    *(a3 + 32) = v10;
    *(a3 + 40) = v9;
    *(a3 + 48) = v8;
  }

  else
  {
    v18 = sub_1ABB6DA08();
    sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v18);
    sub_1ABA8F1A4(v19, 2);
    *(v20 + 49) = v21;
    swift_willThrow();
  }
}

void Entity.init<A>(enumerator:)(uint64_t (*a1)(uint64_t (*)(), _BYTE *, double), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABB6BCD4(a1, nullsub_1, 0, sub_1ABB6BA38, v8, a3, a4, &v25);
  if (v4)
  {
  }

  else
  {
    v24 = v25;
    swift_beginAccess();
    v9 = *(v8 + 16);

    sub_1ABB6B738(&v24, v9, &v25);

    sub_1ABA808A4(v10, v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v19, v25, v26, v27, v28);
  }
}

uint64_t sub_1ABB6B97C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x62uLL);
  swift_beginAccess();
  sub_1ABB6DCC8(__dst, v6);
  sub_1ABB4DDA0();
  v3 = *(*(a2 + 16) + 16);
  sub_1ABB4E1A4(v3);
  v4 = *(a2 + 16);
  *(v4 + 16) = v3 + 1;
  memcpy((v4 + 104 * v3 + 32), __dst, 0x62uLL);
  *(a2 + 16) = v4;
  return swift_endAccess();
}

uint64_t sub_1ABB6BAF4@<X0>(uint64_t (*a1)(uint64_t, _BYTE *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(_BYTE *)@<X4>, uint64_t a5@<X5>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  sub_1ABA7E498(MEMORY[0x1E69E7CD0]);
  v15 = swift_allocObject();
  sub_1ABA94868(v15);
  v31 = &v40;
  v32 = a2;
  v33 = a3;
  v34 = v16;
  v35 = a7;
  v36 = v14;
  v37 = &v42;
  v38 = &v44;

  a1(a9, v30);
  if (v29)
  {
    goto LABEL_4;
  }

  if (v41)
  {
    v17 = sub_1ABB6DA08();
    sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v17);
    sub_1ABA8F1A4(v18, 1);
    sub_1ABA81634(v19, v20);
LABEL_4:

    goto LABEL_5;
  }

  if (v43)
  {
    v22 = v40;
    v39 = v40;

    sub_1ABB6C1CC(&v39, v15, a4, a5);

    *a8 = v22;

    goto LABEL_6;
  }

  v23 = sub_1ABB6DA08();
  sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v23);
  sub_1ABA8F1A4(v24, 3);
  sub_1ABA81634(v25, v26);

LABEL_5:

LABEL_6:
}

uint64_t sub_1ABB6BCD4@<X0>(uint64_t (*a1)(uint64_t (*)(), _BYTE *, double)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(_BYTE *)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  sub_1ABA7E498(MEMORY[0x1E69E7CD0]);
  v15 = swift_allocObject();
  v16 = sub_1ABA94868(v15);
  v29 = a6;
  v30 = a7;
  v31 = &v40;
  v32 = a2;
  v33 = a3;
  v34 = v17;
  v35 = a4;
  v36 = a5;
  v37 = &v42;
  v38 = &v44;
  a1(sub_1ABB6DC88, v28, v16);
  if (v27)
  {
    goto LABEL_9;
  }

  if (v41)
  {
    v18 = sub_1ABB6DA08();
    sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v18);
    v20 = 1;
LABEL_8:
    sub_1ABA8F1A4(v19, v20);
    sub_1ABA81634(v23, v24);
LABEL_9:
  }

  if (!v43)
  {
    v22 = sub_1ABB6DA08();
    sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v22);
    v20 = 3;
    goto LABEL_8;
  }

  v21 = v40;
  v39 = v40;
  sub_1ABB6C488(&v39, v15, a4, a5);

  *a8 = v21;
}

uint64_t sub_1ABB6BE9C(uint64_t (*a1)(char *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v33 = a1;
  v34 = a2;
  v10 = *(a4 - 8);
  v30[1] = a7;
  v31 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1ABF247E4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v30 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = v30 - v22;
  (*(v16 + 16))(v19, v35, a5, v21);
  v35 = v23;
  sub_1ABF23F04();
  v24 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v25 = (v31 + 32);
  v26 = (v31 + 8);
  do
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v15, 1, a4) == 1)
    {
      break;
    }

    (*v25)(v12, v15, a4);
    v27 = v33(v12);
    if (v7)
    {
      (*v26)(v12, a4);
      return (*(v32 + 8))(v35, v24);
    }

    v28 = v27;
    (*v26)(v12, a4);
  }

  while ((v28 & 1) != 0);
  return (*(v32 + 8))(v35, v24);
}

uint64_t sub_1ABB6C1CC(uint64_t *a1, void *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v7 = *a1;
  swift_beginAccess();
  v8 = a2[3];
  if (!v8)
  {
  }

  if (!v7)
  {
    sub_1ABB6DA08();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 512;
LABEL_9:
    swift_willThrow();
  }

  v9 = a2[7];
  if (!v9)
  {
    sub_1ABB6DB64();
    swift_allocError();
    goto LABEL_9;
  }

  v10 = a2[2];
  v12 = a2[4];
  v11 = a2[5];
  v13 = a2[6];
  v14 = a2[8];

  sub_1ABB6DA5C(v10, v8);
  EntityClass.init(intValue:)(HIBYTE(v9), &v27);
  if (v28)
  {
    v24 = v31;
    v22 = v29;
    v23 = v30;
    v20 = v28;
    v21 = v27;

    sub_1ABB6DAAC(v10, v8);
    __src[0] = v10;
    __src[1] = v8;
    __src[2] = v12;
    __src[3] = v11;
    LOWORD(__src[4]) = v13;
    __src[5] = v7;
    __src[6] = v9;
    __src[7] = v14;
    __src[8] = v21;
    __src[9] = v20;
    __src[10] = v22;
    __src[11] = v23;
    LOBYTE(__src[12]) = v24;
    BYTE1(__src[12]) = 1;
    memcpy(__dst, __src, 0x62uLL);
    v32(__dst);
    sub_1ABB6DAFC(__src);
    if (!v5)
    {
      swift_beginAccess();
      v15 = a2[2];
      v16 = a2[3];
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *(a2 + 3) = 0u;
      a2[8] = 0;
      sub_1ABB6DAAC(v15, v16);
    }
  }

  sub_1ABB6DA08();
  swift_allocError();
  *v19 = 2;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 33) = 0u;
  *(v19 + 49) = 2;
  swift_willThrow();
  sub_1ABB6DAAC(v10, v8);
}

uint64_t sub_1ABB6C488(uint64_t *a1, void *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v5 = v4;
  v40 = a4;
  v8 = *a1;
  result = swift_beginAccess();
  v10 = a2[3];
  if (v10)
  {
    if (v8)
    {
      v11 = a2[7];
      if (v11)
      {
        v31 = a3;
        v12 = a2[2];
        v14 = a2[4];
        v13 = a2[5];
        v15 = a2[6];
        v16 = a2[8];

        sub_1ABB6DA5C(v12, v10);
        EntityClass.init(intValue:)(HIBYTE(v11), &v35);
        if (v36)
        {
          v32 = v39;
          v29 = v37;
          v30 = v38;
          v27 = v36;
          v28 = v35;

          sub_1ABB6DAAC(v12, v10);
          __src[0] = v12;
          __src[1] = v10;
          __src[2] = v14;
          __src[3] = v13;
          LOWORD(__src[4]) = v15;
          __src[5] = v8;
          __src[6] = v11;
          __src[7] = v16;
          __src[8] = v28;
          __src[9] = v27;
          __src[10] = v29;
          __src[11] = v30;
          LOBYTE(__src[12]) = v32;
          BYTE1(__src[12]) = 1;
          memcpy(__dst, __src, 0x62uLL);
          v31(__dst);
          result = sub_1ABB6DAFC(__src);
          if (!v5)
          {
            swift_beginAccess();
            v17 = a2[2];
            v18 = a2[3];
            *(a2 + 1) = 0u;
            *(a2 + 2) = 0u;
            *(a2 + 3) = 0u;
            a2[8] = 0;
            return sub_1ABB6DAAC(v17, v18);
          }
        }

        else
        {
          v23 = sub_1ABB6DA08();
          sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v23);
          sub_1ABA8F1A4(v24, 2);
          *(v25 + 49) = v26;
          swift_willThrow();
          sub_1ABB6DAAC(v12, v10);
        }

        return result;
      }

      v22 = sub_1ABB6DB64();
      sub_1ABA7BD00(&type metadata for SubentityConstructionError, v22);
    }

    else
    {
      v19 = sub_1ABB6DA08();
      v20 = sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v19);
      sub_1ABA7BF88(v20, v21);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ABB6C6FC(uint64_t a1, unint64_t *a2, void (*a3)(_BYTE *), uint64_t a4, void *a5, void (*a6)(_BYTE *), uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v16 = *a1;
  if (*(a2 + 8) != 1)
  {
    goto LABEL_4;
  }

  *a2 = v16;
  *(a2 + 8) = 0;
  *__src = v16;
  a3(__src);
  if (v9)
  {
    return 1;
  }

  if ((a2[1] & 1) == 0)
  {
LABEL_4:
    v17 = *a2;
    if (v16 != *a2)
    {
      sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1ABF34060;
      *(v22 + 32) = v17;
      *(v22 + 40) = v16;
      sub_1ABB2C288();
      v24 = v23;
      sub_1ABB6DA08();
      swift_allocError();
      *v25 = v24;
      v26 = *&__src[25];
      v27 = *&__src[16];
      *(v25 + 8) = *__src;
      *(v25 + 24) = v27;
      *(v25 + 33) = v26;
      *(v25 + 49) = 0;
LABEL_11:
      swift_willThrow();
      return 1;
    }

    v66 = a6;
    v18 = *(a1 + 24);
    *v74 = *(a1 + 8);
    *&v74[16] = v18;
    v75 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = *(a1 + 96);
    v21 = *(a1 + 104);
    if (v19)
    {
      swift_beginAccess();
      if (a5[3])
      {
        swift_beginAccess();
        if (a5[3])
        {
          if (a5[7] == v19)
          {

            goto LABEL_28;
          }
        }
      }

      v70[0] = v16;
      sub_1ABAFF1DC(v74, __src);

      sub_1ABB6C488(v70, a5, v66, a7);
      if (v9)
      {
        sub_1ABAE4478(v74);

        return 1;
      }

      v76 = v20;
      if ((sub_1ABB130C8(v19, *a9) & 1) == 0)
      {
        sub_1ABB180DC(__src, v19);
        v67 = *&v74[8];
        v33 = *v74;
        v34 = *&v74[24];
        v35 = v75;
        swift_beginAccess();
        v36 = a5[2];
        v37 = a5[3];
        a5[2] = v33;
        *(a5 + 3) = v67;
        a5[5] = v34;
        a5[6] = v35;
        v38 = MEMORY[0x1E69E7CC0];
        a5[7] = v19;
        a5[8] = v38;
        sub_1ABB6DAAC(v36, v37);
        v20 = v76;
LABEL_28:
        v39 = *(a1 + 72);
        v71 = *(a1 + 56);
        v72 = v39;
        v73 = *(a1 + 88);
        sub_1ABAFF1DC(&v71, __src);
        if ((sub_1ABF23E64() & 1) != 0 && (, EntityIdentifier.init(_:)(v20, v21, __src), (__src[8] & 1) == 0))
        {
          v20 = *__src;

          v21 = 0;
          v40 = 1;
        }

        else
        {
          v40 = 0;
        }

        *__src = v71;
        *&__src[16] = v72;
        *&__src[32] = v73;
        *&__src[40] = v20;
        *&__src[48] = v21;
        __src[56] = v40;
        swift_beginAccess();
        if (a5[3])
        {
          sub_1ABB4DC38();
          v41 = *(a5[8] + 16);
          sub_1ABB4E03C(v41);
          v42 = a5[8];
          *(v42 + 16) = v41 + 1;
          v43 = (v42 + (v41 << 6));
          v44 = *__src;
          v45 = *&__src[16];
          v46 = *&__src[32];
          *(v43 + 73) = *&__src[41];
          v43[3] = v45;
          v43[4] = v46;
          v43[2] = v44;
          a5[8] = v42;
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          sub_1ABB6DBB8(__src);
        }

        return 1;
      }

      sub_1ABAE4478(v74);

      sub_1ABB6DC0C();
      swift_allocError();
      *v29 = v19;
      goto LABEL_11;
    }

    v70[0] = v16;
    sub_1ABAFF1DC(v74, __src);

    v28 = v66;
    sub_1ABB6C488(v70, a5, v66, a7);
    if (v9)
    {

      sub_1ABAE4478(v74);
      return 1;
    }

    if (sub_1ABF23E64())
    {

      EntityIdentifier.init(_:)(v20, v21, __src);
      if ((__src[8] & 1) == 0)
      {
        v49 = *__src;

        v50 = *&v74[16];
        v51 = *&v74[24];
        v52 = 2;
        v30 = *&v74[8];
        v65 = *v74;
LABEL_51:
        *__src = v65;
        *&__src[8] = v30;
        *&__src[16] = v50;
        *&__src[24] = v51;
        *&__src[32] = v75;
        *&__src[40] = v49;
        *&__src[48] = v21;
        __src[97] = v52;
        v28(__src);
        memcpy(__dst, __src, 0x62uLL);
        sub_1ABB6DAFC(__dst);
        return 1;
      }
    }

    if (_Records_GDEntityPredicate_records)
    {
      v76 = v20;
      sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), __src);
      v30 = *&v74[8];
      v65 = *v74;
      if (*v74 == *__src && *&v74[8] == *&__src[8])
      {
      }

      else
      {
        v32 = sub_1ABF25054();

        v28 = v66;
        if ((v32 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      if (a8[1])
      {
        sub_1ABAE4478(v74);

        sub_1ABB6DA08();
        swift_allocError();
        *v47 = 4;
        *(v47 + 8) = 0u;
        *(v47 + 24) = 0u;
        *(v47 + 33) = 0u;
        v48 = 2;
LABEL_38:
        *(v47 + 49) = v48;
        goto LABEL_11;
      }

      EntityClass.init(intValue:)(HIBYTE(v16), __src);
      v53 = *&__src[8];
      if (!*&__src[8])
      {
        sub_1ABAE4478(v74);

        sub_1ABB6DA08();
        swift_allocError();
        *v62 = 2;
        *(v62 + 8) = 0u;
        *(v62 + 24) = 0u;
        *(v62 + 33) = 0u;
        *(v62 + 49) = 2;
        goto LABEL_11;
      }

      v54 = *__src;
      v56 = *&__src[24];
      v55 = *&__src[16];
      v57 = __src[32];
      v58 = v76;
      if (*__src == v76 && *&__src[8] == v21)
      {
        v60 = v76;
        v61 = v21;
      }

      else
      {
        v64 = *&__src[16];
        if ((sub_1ABF25054() & 1) == 0)
        {
          sub_1ABAE4478(v74);
          sub_1ABB6DA08();
          swift_allocError();
          *v47 = v58;
          *(v47 + 8) = v21;
          *(v47 + 16) = v54;
          *(v47 + 24) = v53;
          *(v47 + 32) = v64;
          *(v47 + 48) = v57;
          v48 = 1;
          goto LABEL_38;
        }

        v60 = v54;
        v61 = v53;
        v56 = *(&v64 + 1);
        v55 = v64;
      }

      sub_1ABAA8FA8(v60, v61, v55, v56);
      *a8 = v58;
      a8[1] = v21;

      v28 = v66;
LABEL_50:
      v52 = 0;
      v50 = *&v74[16];
      v51 = *&v74[24];
      v49 = v76;
      goto LABEL_51;
    }

    __break(1u);
  }

  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

uint64_t sub_1ABB6CE44(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, void *a5, void (*a6)(_BYTE *), uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v71 = a5;
  if (*(a2 + 8))
  {
    v13 = *(a11 + 8);
    (v13)(__src, a10, a11);
    *a2 = *__src;
    *(a2 + 8) = 0;
    (v13)(__src, a10, a11);
    a3(__src);
    if (v11)
    {
      return 1;
    }

    v65 = 0;
    if (*(a2 + 8))
    {
      goto LABEL_57;
    }
  }

  else
  {
    v65 = v11;
    v13 = *(a11 + 8);
  }

  v14 = *a2;
  (v13)(__src, a10, a11);
  if (*__src != v14)
  {
    sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1ABF34060;
    *(v21 + 32) = v14;
    v13(a10, a11);
    sub_1ABB2C288();
    v23 = v22;
    sub_1ABB6DA08();
    swift_allocError();
    *v24 = v23;
    v25 = *&__src[25];
    v26 = *&__src[16];
    *(v24 + 8) = *__src;
    *(v24 + 24) = v26;
    *(v24 + 33) = v25;
    *(v24 + 49) = 0;
LABEL_13:
    swift_willThrow();
    return 1;
  }

  (*(a11 + 16))(__src, a10, a11);
  v15 = *&__src[8];
  v16 = *&__src[16];
  v60 = *&__src[32];
  v61 = *__src;
  (*(a11 + 24))(__src, a10, a11);
  v17 = *__src;
  v62 = (*(a11 + 40))(a10, a11);
  v19 = v18;
  if (v17)
  {
    v20 = v71;
    swift_beginAccess();
    if (v20[3])
    {
      swift_beginAccess();
      if (v20[3])
      {
        if (v20[7] == v17)
        {

          goto LABEL_30;
        }
      }
    }

    *__src = v14;
    sub_1ABB6C488(__src, v20, a6, a7);
    if (v65)
    {
      goto LABEL_17;
    }

    if ((sub_1ABB130C8(v17, *a9) & 1) == 0)
    {
      sub_1ABB180DC(__src, v17);
      v34 = v71;
      swift_beginAccess();
      v35 = v34[2];
      v36 = v34[3];
      v34[2] = v61;
      v34[3] = v15;
      *(v34 + 2) = v16;
      v34[6] = v60;
      v34[7] = v17;
      v34[8] = MEMORY[0x1E69E7CC0];
      sub_1ABB6DAAC(v35, v36);
LABEL_30:
      (*(a11 + 32))(__src, a10, a11);
      v37 = *__src;
      v38 = *&__src[16];
      v39 = *&__src[32];
      v40 = v62;
      if ((sub_1ABF23E64() & 1) != 0 && (, EntityIdentifier.init(_:)(v62, v19, __src), __src[8] != 1))
      {
        v40 = *__src;

        v19 = 0;
        v41 = 1;
      }

      else
      {
        v41 = 0;
      }

      *__src = v37;
      *&__src[16] = v38;
      *&__src[32] = v39;
      *&__src[40] = v40;
      *&__src[48] = v19;
      __src[56] = v41;
      v42 = v71;
      swift_beginAccess();
      if (v42[3])
      {
        sub_1ABB4DC38();
        v43 = *(v42[8] + 16);
        sub_1ABB4E03C(v43);
        v44 = v42[8];
        *(v44 + 16) = v43 + 1;
        v45 = (v44 + (v43 << 6));
        v46 = *__src;
        v47 = *&__src[16];
        v48 = *&__src[32];
        *(v45 + 73) = *&__src[41];
        v45[3] = v47;
        v45[4] = v48;
        v45[2] = v46;
        v42[8] = v44;
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        sub_1ABB6DBB8(__src);
      }

      return 1;
    }

    sub_1ABB6DC0C();
    swift_allocError();
    *v29 = v17;
    goto LABEL_13;
  }

  v27 = v15;
  v70[0] = v14;
  v28 = a6;
  sub_1ABB6C488(v70, v71, a6, a7);
  if (v65)
  {
LABEL_17:

    return 1;
  }

  if (sub_1ABF23E64())
  {

    EntityIdentifier.init(_:)(v62, v19, __src);
    if (__src[8] != 1)
    {
      v33 = *__src;

      v32 = 2;
      goto LABEL_42;
    }
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), __src);
    if (v61 == *__src && v27 == *&__src[8])
    {
    }

    else
    {
      v31 = sub_1ABF25054();

      if ((v31 & 1) == 0)
      {
        v32 = 0;
        v33 = v62;
LABEL_42:
        v51 = *(&v16 + 1);
LABEL_43:
        *__src = v61;
        *&__src[8] = v27;
        *&__src[16] = v16;
        *&__src[24] = v51;
        *&__src[32] = v60;
        *&__src[40] = v33;
        *&__src[48] = v19;
        __src[97] = v32;
        v28(__src);
        memcpy(__dst, __src, 0x62uLL);
        sub_1ABB6DAFC(__dst);
        return 1;
      }
    }

    if (a8[1])
    {

      sub_1ABB6DA08();
      swift_allocError();
      *v49 = 4;
      *(v49 + 8) = 0u;
      *(v49 + 24) = 0u;
      *(v49 + 33) = 0u;
      v50 = 2;
LABEL_40:
      *(v49 + 49) = v50;
      goto LABEL_13;
    }

    EntityClass.init(intValue:)(HIBYTE(v14), __src);
    v53 = *&__src[8];
    if (!*&__src[8])
    {

      sub_1ABB6DA08();
      swift_allocError();
      *v59 = 2;
      *(v59 + 8) = 0u;
      *(v59 + 24) = 0u;
      *(v59 + 33) = 0u;
      *(v59 + 49) = 2;
      goto LABEL_13;
    }

    v54 = *__src;
    v55 = *&__src[16];
    LODWORD(v71) = __src[32];
    v33 = v62;
    if (*__src == v62 && *&__src[8] == v19)
    {
      v57 = v62;
      v58 = v19;
    }

    else
    {
      if ((sub_1ABF25054() & 1) == 0)
      {

        sub_1ABB6DA08();
        swift_allocError();
        *v49 = v62;
        *(v49 + 8) = v19;
        *(v49 + 16) = v54;
        *(v49 + 24) = v53;
        *(v49 + 32) = v55;
        *(v49 + 48) = v71;
        v50 = 1;
        goto LABEL_40;
      }

      v57 = v54;
      v58 = v53;
    }

    sub_1ABAA8FA8(v57, v58, v55, *(&v55 + 1));
    v51 = *(&v16 + 1);
    *a8 = v62;
    a8[1] = v19;

    v32 = 0;
    v28 = a6;
    goto LABEL_43;
  }

  __break(1u);
LABEL_57:
  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

unint64_t sub_1ABB6D698(uint64_t a1)
{
  result = sub_1ABB6D6C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB6D6C0()
{
  result = qword_1EB4D3AA8;
  if (!qword_1EB4D3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AA8);
  }

  return result;
}

uint64_t sub_1ABB6D748(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D1148, &qword_1ABF332D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABB6D7A0(uint64_t a1)
{
  result = sub_1ABB6D7C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB6D7C8()
{
  result = qword_1EB4D3AB8;
  if (!qword_1EB4D3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AB8);
  }

  return result;
}

uint64_t sub_1ABB6D820(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB6D860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABB6D8BC(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, 0x62uLL);
  return v2(__dst);
}

uint64_t sub_1ABB6D910()
{
  sub_1ABA7D3EC();
  memcpy(__dst, v1, sizeof(__dst));
  sub_1ABA7EF90();
  return sub_1ABB6C6FC(v2, v3, v4, v5, v6, v7, v8, v9, v0) & 1;
}

uint64_t sub_1ABB6D978()
{
  sub_1ABA7D3EC();
  memcpy(__dst, v1, sizeof(__dst));
  sub_1ABA7EF90();
  return sub_1ABB6C6FC(v2, v3, v4, v5, v6, v7, v8, v9, v0) & 1;
}

unint64_t sub_1ABB6DA08()
{
  result = qword_1EB4D3AC0;
  if (!qword_1EB4D3AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AC0);
  }

  return result;
}

uint64_t sub_1ABB6DA5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABB6DAAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABB6DAFC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABB6DB64()
{
  result = qword_1EB4D3AC8;
  if (!qword_1EB4D3AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AC8);
  }

  return result;
}

unint64_t sub_1ABB6DC0C()
{
  result = qword_1EB4D3AD0;
  if (!qword_1EB4D3AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AD0);
  }

  return result;
}

uint64_t sub_1ABB6DCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB6DDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1ABF23C04();
    v11 = v10;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v11 = 0x80000001ABF88BF0;
    v9 = 0xD000000000000010;
  }

  v12 = (a4 + *(type metadata accessor for EntityAliasView(0) + 20));
  *v12 = a2;
  v12[1] = a3;
  v12[2] = v9;
  v12[3] = v11;
  v13 = type metadata accessor for SearchableViewDatabaseTable(0);
  swift_bridgeObjectRetain_n();
  sub_1ABF22CE4();
  v14 = (v12 + v13[9]);
  *v14 = 0x44495F444DLL;
  v14[1] = 0xE500000000000000;
  *(v12 + v13[8]) = &unk_1F208FAF0;
  result = MEMORY[0x1AC5A9410](1937008223, 0xE400000000000000);
  v16 = (v12 + v13[7]);
  *v16 = v9;
  v16[1] = v11;
  return result;
}

unint64_t sub_1ABB6DEF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1ABB6DF40(char a1)
{
  result = 0x745F6C616E676973;
  switch(a1)
  {
    case 1:
      result = 0x745F797469746E65;
      break;
    case 2:
      result = 0x7361696C61;
      break;
    case 3:
      result = 0x44495F444DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABB6DFE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABB6DEF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABB6E014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABB6DF40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABB6E040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABB6F1B8();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1ABB6E08C(uint64_t a1)
{
  v2 = sub_1ABB6F20C();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1ABB6E0D8(uint64_t a1)
{
  v2 = sub_1ABB6EE50();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1ABB6E124(uint64_t a1)
{
  v2 = sub_1ABB6EE50();

  return MEMORY[0x1EEE09A88](a1, v2);
}

void EntityAliasView.fetchFirstNamesWithCollision()()
{
  v1 = sub_1ABB6E1C0();
  v3 = v0;
  sub_1ABB45E44(sub_1ABB6E5D0, &v2, v1);
}

uint64_t sub_1ABB6E1C0()
{
  v1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for EntityAliasView(0);
  swift_getObjectType();
  sub_1ABF22464();
  return v1;
}

uint64_t sub_1ABB6E3B4(uint64_t *a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  type metadata accessor for EntityAliasView(0);
  swift_getObjectType();
  sub_1ABF22464();
  if (v2)
  {
    objc_autoreleasePoolPop(v3);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v4 = sub_1ABF237F4();
    sub_1ABA7AA24(v4, qword_1ED871B40);
    v5 = v2;
    v6 = sub_1ABF237D4();
    v7 = sub_1ABF24664();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1ABF25154();
      v12 = sub_1ABADD6D8(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1ABA78000, v6, v7, "Unable to access people alias view: %s", v8, 0xCu);
      sub_1ABA84B54(v9);
      MEMORY[0x1AC5AB8B0](v9, -1, -1);
      MEMORY[0x1AC5AB8B0](v8, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return v14;
  }
}

uint64_t type metadata accessor for EntityAliasView(uint64_t a1)
{
  result = qword_1ED871C68;
  if (!qword_1ED871C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1ABB6E664(uint64_t a1)
{
  result = sub_1ABAAE1D0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SearchableViewDatabaseTable(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABB6E6E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v20 = a4;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  type metadata accessor for EntityAliasView(0);
  type metadata accessor for SearchableViewDatabaseTable(0);
  v29 = &type metadata for EntityAliasColumn;
  v11 = sub_1ABB6EE50();
  v30 = v11;
  LOBYTE(v28[0]) = 0;
  v26 = MEMORY[0x1E69E6158];
  v27 = MEMORY[0x1E69A0130];
  v24 = 0xD000000000000014;
  v25 = 0x80000001ABF88BD0;
  v12 = sub_1ABF22424();
  v13 = MEMORY[0x1E699FE60];
  v32 = v12;
  v33 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v31);
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v24);
  sub_1ABA84B54(v28);
  sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABF22CA4();
  sub_1ABA84B54(v31);
  v29 = &type metadata for EntityAliasColumn;
  v30 = v11;
  LOBYTE(v28[0]) = 2;
  v26 = MEMORY[0x1E69E6158];
  v27 = MEMORY[0x1E69A0130];
  v24 = v21;
  v25 = v22;
  v32 = v12;
  v33 = v13;
  sub_1ABA93DC0(v31);

  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v24);
  sub_1ABA84B54(v28);
  sub_1ABB6EF0C(&unk_1EB4D3AE8, MEMORY[0x1E699FF70]);
  sub_1ABF225A4();
  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_1ABA84B54(v31);
  sub_1ABB6EF0C(&qword_1ED870CC0, MEMORY[0x1E699FF60]);
  v15 = v34;
  v16 = sub_1ABF22294();
  result = (v14)(v10, v4);
  if (!v15)
  {
    v18 = sub_1ABAAB7C8(v16);

    *v20 = v18 > 1;
  }

  return result;
}

uint64_t sub_1ABB6EA20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  type metadata accessor for EntityAliasView(0);
  type metadata accessor for SearchableViewDatabaseTable(0);
  v40[3] = &type metadata for EntityAliasColumn;
  v40[4] = sub_1ABB6EE50();
  LOBYTE(v40[0]) = 0;
  v39[3] = MEMORY[0x1E69E6158];
  v39[4] = MEMORY[0x1E69A0130];
  v39[0] = 0xD000000000000014;
  v39[1] = 0x80000001ABF88BD0;
  v41[3] = sub_1ABF22424();
  v41[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v41);
  sub_1ABF22AD4();
  sub_1ABB6EEA4(v39);
  sub_1ABA84B54(v40);
  sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABF22CA4();
  sub_1ABA84B54(v41);
  sub_1ABB6EF0C(&qword_1ED870CC0, MEMORY[0x1E699FF60]);
  v9 = sub_1ABF22294();
  result = (*(v6 + 8))(v8, v5);
  if (v3)
  {
    return result;
  }

  v11 = sub_1ABAAB7C8(v9);
  v35 = a3;
  v42 = 0;
  if (v11)
  {
    v12 = v11;
    v41[0] = MEMORY[0x1E69E7CC0];
    sub_1ABADDBD4(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_29;
    }

    v13 = 0;
    v14 = v41[0];
    v37 = v9;
    v38 = v9 & 0xC000000000000001;
    v36 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v38)
      {
        MEMORY[0x1AC5AA170](v13, v9);
      }

      else
      {
        if (v13 >= *(v36 + 16))
        {
          goto LABEL_28;
        }
      }

      v16 = v42;
      sub_1ABB32E40();
      v42 = v16;
      if (v16)
      {
        goto LABEL_30;
      }

      v19 = v17;
      v20 = v18;

      v41[0] = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1ABADDBD4(v21 > 1, v22 + 1, 1);
        v14 = v41[0];
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      ++v13;
      v9 = v37;
      if (v15 == v12)
      {

        goto LABEL_16;
      }
    }
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v24 = 0;
    v25 = *(v14 + 16);
    v26 = (v14 + 40);
    v27 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v25 == v24)
      {

        *v35 = v27;
      }

      if (v24 >= *(v14 + 16))
      {
        break;
      }

      v29 = *(v26 - 1);
      v28 = *v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAAA4F4();
        v27 = v32;
      }

      v30 = *(v27 + 16);
      if (v30 >= *(v27 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v27 = v33;
      }

      *(v27 + 16) = v30 + 1;
      v31 = v27 + 16 * v30;
      *(v31 + 32) = v29;
      *(v31 + 40) = v28;
      v26 += 2;
      ++v24;
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1ABB6EE50()
{
  result = qword_1EB4D3AE0;
  if (!qword_1EB4D3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AE0);
  }

  return result;
}

uint64_t sub_1ABB6EEA4(uint64_t a1)
{
  v2 = sub_1ABAD219C(&unk_1EB4D3C40, &unk_1ABF3FCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABB6EF0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D50F0, &unk_1ABF3A620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityAliasColumn(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB6F05C()
{
  result = qword_1EB4D3AF8;
  if (!qword_1EB4D3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AF8);
  }

  return result;
}

unint64_t sub_1ABB6F0B4()
{
  result = qword_1EB4D3B00;
  if (!qword_1EB4D3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3B00);
  }

  return result;
}

unint64_t sub_1ABB6F10C()
{
  result = qword_1EB4D3B08;
  if (!qword_1EB4D3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3B08);
  }

  return result;
}

unint64_t sub_1ABB6F164()
{
  result = qword_1EB4D3B10;
  if (!qword_1EB4D3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3B10);
  }

  return result;
}

unint64_t sub_1ABB6F1B8()
{
  result = qword_1EB4D3B18;
  if (!qword_1EB4D3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3B18);
  }

  return result;
}

unint64_t sub_1ABB6F20C()
{
  result = qword_1EB4D3B20;
  if (!qword_1EB4D3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3B20);
  }

  return result;
}

void static EntityClass.walletTransaction.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB5968(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v14);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v12, v14[0], v14[1], v15);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderEmailRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF60), *(_Records_GDEntityClass_records + 0xF68), *(_Records_GDEntityClass_records + 0xF70), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderTransactionRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF78), *(_Records_GDEntityClass_records + 0xF80), *(_Records_GDEntityClass_records + 0xF88), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.shippinginfo.getter(uint64_t a1)
{
  if (_Records_GDEntityClass_records)
  {
    v1 = sub_1ABB7E0DC(_Records_GDEntityClass_records);
    v4 = sub_1ABA8882C(v1, v2, v3, v15);
    sub_1ABA8F1BC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14, v13, v15[0], v15[1], v16);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderShippingInfoRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1010), *(_Records_GDEntityClass_records + 0x1018), _Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.entityOrganizationRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1028), *(_Records_GDEntityClass_records + 0x1030), _Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.shipmentFullFillmentEmailRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1040), *(_Records_GDEntityClass_records + 0x1048), _Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderShipmentFullFillmentRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1058), *(_Records_GDEntityClass_records + 0x1060), _Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderPaymentRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1070), *(_Records_GDEntityClass_records + 0x1078), _Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.fromToEmailRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1088), *(_Records_GDEntityClass_records + 0x1090), _Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderPersonRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x10A0), *(_Records_GDEntityClass_records + 0x10A8), _Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.holidayEvent.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x10B8), *(_Records_GDEntityClass_records + 0x10C0), _Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.shipmentPersonRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x10D0), *(_Records_GDEntityClass_records + 0x10D8), _Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.emailInfoRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x10E8), *(_Records_GDEntityClass_records + 0x10F0), _Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t EntityClass.ancestorClasses.getter()
{
  EntityClass.ancestorClassesSet.getter();

  return sub_1ABB455E4(v0);
}

void EntityClass.parentClasses.getter()
{
  sub_1ABAA00E4();
  sub_1ABAA6308();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA8A72C();
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    sub_1ABAA0230();
    static EntityClass.employmentRelationshipType.getter();
    sub_1ABA88CE8(v257, v258, v259, v260, v261, v262, v263, v264, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
    sub_1ABA7BFC4();
    sub_1ABA88934(v265 + 3568);
    if (v0)
    {
      v266 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA8E764(v266);
      sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityClass.membershipRelationshipType.getter();
      goto LABEL_34;
    }

    goto LABEL_49;
  }

  v5 = sub_1ABA8A714(_Records_GDEntityClass_records);
  v8 = sub_1ABA8882C(v5, v6, v7, v3 - 160);
  sub_1ABAB5FB8(v8, v9, v10, v11, v12, v13, v14, v15, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
  sub_1ABB7E38C();
  if (v0)
  {
LABEL_3:
    v16 = sub_1ABAA6734(0);
    v0 = v16;
    goto LABEL_35;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_44;
  }

  v17 = sub_1ABB7E070(_Records_GDEntityClass_records);
  sub_1ABA8882C(v17, v18, v19, v3 - 208);
  *&v20 = sub_1ABAB5FA0().n128_u64[0];
  sub_1ABB7E910(v21, v22, v23, v24, v25, v26, v27, v28, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904, v20);
  sub_1ABB7E464();
  if (v0)
  {
    v29 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v30 = sub_1ABA8E764(v29);
    sub_1ABA8A780(v30, xmmword_1ABF34740);
    if (v31)
    {
      v32 = sub_1ABA8C944(v31);
      sub_1ABA8882C(v32, v33, v34, v3 - 208);
      v35 = *(v3 - 208);
      v36 = *(v3 - 192);
LABEL_33:
      sub_1ABAA0D10(v36, v35);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_48;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    sub_1ABA89710();
    static EntityClass.locationRelationshipType.getter();
    sub_1ABA9DF58(v267, v268, v269, v270, v271, v272, v273, v274, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
    sub_1ABA7BFC4();
    sub_1ABA88934(v275 + 3520);
    if (v0)
    {
      goto LABEL_42;
    }

    sub_1ABA8926C();
    static EntityClass.timeZoneRelationshipType.getter();
    sub_1ABA9E0A0(v276, v277, v278, v279, v280, v281, v282, v283, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
    sub_1ABA7BFC4();
    sub_1ABA88934(v284 + 3472);
LABEL_55:
    sub_1ABA88F2C();
    static EntityClass.quantityRelationshipType.getter();
    sub_1ABA9E1C0(v285, v286, v287, v288, v289, v290, v291, v292, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
    sub_1ABA7BFC4();
    sub_1ABA88934(v293 + 3424);
    if ((v0 & 1) == 0)
    {
      sub_1ABA89008();
      static EntityClass.religionRelationshipType.getter();
      sub_1ABA9E300(v294, v295, v296, v297, v298, v299, v300, v301, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
      sub_1ABA7BFC4();
      sub_1ABA88934(v302 + 3376);
      sub_1ABA8A75C();
      static EntityClass.person.getter();
      sub_1ABA88E90(v303, v304, v305, v306, v307, v308, v309, v310, v1229, v1327, v1425, v1523, v1621, v1719, v1817, v1915);
      sub_1ABA7BFC4();
      sub_1ABA88934(v311 + 3328);
      goto LABEL_63;
    }

LABEL_42:
    v255 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v0 = sub_1ABA8E764(v255);
    v256 = sub_1ABA888E0(v0, xmmword_1ABF34740);
    static EntityClass.relationshipType.getter(v256);
    goto LABEL_34;
  }

  v37 = sub_1ABA8CA50(_Records_GDEntityClass_records);
  sub_1ABA8882C(v37, v38, v39, v3 - 256);
  *&v40 = sub_1ABAA63FC().n128_u64[0];
  sub_1ABB7E8F0(v41, v42, v43, v44, v45, v46, v47, v48, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904, v40);
  sub_1ABB7E2FC();
  if (v0)
  {
    v49 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v50 = sub_1ABA8E764(v49);
    sub_1ABA8A780(v50, xmmword_1ABF34740);
    if (v51)
    {
      v52 = sub_1ABA8C944(v51);
      sub_1ABA8882C(v52, v53, v54, v3 - 256);
      v35 = *(v3 - 256);
      v36 = *(v3 - 240);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_52;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  sub_1ABA8D1D4(_Records_GDEntityClass_records);
  sub_1ABA7EFC8();
  sub_1ABA8882C(v55, v56, v57, v58);
  *&v59 = sub_1ABA88E28().n128_u64[0];
  sub_1ABB7E8D0(v60, v61, v62, v63, v64, v65, v66, v67, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904, v59);
  sub_1ABAA654C();
  if (v0)
  {
    v68 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v69 = sub_1ABA8E764(v68);
    sub_1ABA8A780(v69, xmmword_1ABF34740);
    if (v70)
    {
      v71 = sub_1ABAABC74(v70);
      sub_1ABA8882C(v71, v73, v74, v72 + 288);
      v35 = sub_1ABB7E6FC();
      goto LABEL_33;
    }

    goto LABEL_53;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_1ABA9E070(_Records_GDEntityClass_records);
  sub_1ABAA0398();
  sub_1ABA8882C(v75, v76, v77, v78);
  sub_1ABAAFAE0();
  v2045 = v2044;
  v79 = sub_1ABAA0C80();
  sub_1ABA856C4(v79, &v2002);
  sub_1ABA808E4();
  sub_1ABA88934(v80 + 288);
  if (v0)
  {
    v81 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v82 = sub_1ABA8E764(v81);
    sub_1ABA8A780(v82, xmmword_1ABF34740);
    if (v83)
    {
      v84 = sub_1ABAABC74(v83);
      sub_1ABA8882C(v84, v86, v87, v85 + 240);
      v35 = sub_1ABB7E6E8();
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_58;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_1ABA88E44(_Records_GDEntityClass_records);
  sub_1ABA9E4DC();
  sub_1ABA8882C(v88, v89, v90, v91);
  sub_1ABA8A7C0();
  v2044 = v2043;
  v92 = sub_1ABB7DF88();
  sub_1ABA856C4(v92, &v2002);
  sub_1ABA808E4();
  sub_1ABA88934(v93 + 240);
  if (v0)
  {
    v94 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v95 = sub_1ABA8E764(v94);
    sub_1ABA8A780(v95, xmmword_1ABF34740);
    if (v96)
    {
      v97 = sub_1ABAABC74(v96);
      sub_1ABA8882C(v97, v99, v100, v98 + 192);
      v35 = sub_1ABB7E6D4();
      goto LABEL_33;
    }

    goto LABEL_59;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_1ABB7E6C8();
  sub_1ABA9ECB8(v101);
  sub_1ABB7E088();
  sub_1ABA8882C(v102, v103, v104, v105);
  sub_1ABA8D4A8();
  v2043 = *(v1 + 4064);
  v106 = sub_1ABB7DF7C();
  sub_1ABA856C4(v106, &v2002);
  sub_1ABA808E4();
  sub_1ABA88934(v107 + 192);
  if (v0)
  {
    v108 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v109 = sub_1ABA8E764(v108);
    sub_1ABA8A780(v109, xmmword_1ABF34740);
    if (v110)
    {
      v111 = sub_1ABAABC74(v110);
      sub_1ABA8882C(v111, v113, v114, v112 + 144);
      v35 = sub_1ABB7E6B4();
      goto LABEL_33;
    }

    goto LABEL_61;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    sub_1ABA8ACD4();
    static EntityClass.role.getter();
    sub_1ABA9E408(v312, v313, v314, v315, v316, v317, v318, v319, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
    sub_1ABA7BFC4();
    sub_1ABA88934(v320 + 3280);
    if (v0)
    {
      v321 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA8E764(v321);
      v322 = sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityClass.concept.getter(v322);
      goto LABEL_34;
    }

    goto LABEL_66;
  }

  sub_1ABA9F1E0(_Records_GDEntityClass_records);
  sub_1ABB7E07C();
  v119 = sub_1ABA8882C(v115, v116, v117, v118);
  sub_1ABAA0C9C(v119, v120, v121, v122, v123, v124, v125, v126, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
  sub_1ABA808E4();
  sub_1ABA88934(v127 + 144);
  if ((v0 & 1) == 0)
  {
    sub_1ABAB51F4();
    static EntityClass.occurrence.getter(v135);
    sub_1ABB7D8B8(v136, v137, v138, v139, v140, v141, v142, v143, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
    sub_1ABA808E4();
    v145 = sub_1ABA88934(v144 + 96);
    static EntityClass.topic.getter(v145);
    sub_1ABAA0D44(v153, v154, v155, v156, v157, v158, v159, v160, v1219, v1317, v1415, v1513, v1611, v1709, v1807, v1905);
    sub_1ABA808E4();
    sub_1ABA88934(v161 + 48);
    if (v0)
    {
      v162 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA8E764(v162);
      sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityClass.entity.getter();
      goto LABEL_34;
    }

    sub_1ABA8B7F8();
    static EntityClass.senderRelationshipType.getter();
    sub_1ABA88A28();
    sub_1ABA88ABC();
    sub_1ABA856C4(v163, &v2002);
    sub_1ABA808E4();
    sub_1ABA88934(v164);
    sub_1ABB7E094();
    static EntityClass.membershipRelationshipType.getter();
    sub_1ABB7D884(v165, v166, v167, v168, v169, v170, v171, v172, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
    sub_1ABA7BFC4();
    sub_1ABA88934(v173 + 4048);
    sub_1ABA887C4();
    static EntityClass.organizerRelationshipType.getter();
    sub_1ABA8CE60(v174, v175, v176, v177, v178, v179, v180, v181, v1220, v1318, v1416, v1514, v1612, v1710, v1808, v1906);
    sub_1ABA7BFC4();
    sub_1ABA88934(v182 + 4000);
    sub_1ABA8D33C();
    static EntityClass.topicRelationshipType.getter();
    sub_1ABA8CF94(v183, v184, v185, v186, v187, v188, v189, v190, v1221, v1319, v1417, v1515, v1613, v1711, v1809, v1907);
    sub_1ABA7BFC4();
    sub_1ABA88934(v191 + 3952);
    sub_1ABA8B57C();
    static EntityClass.calendarRelationshipType.getter();
    sub_1ABA8D0DC(v192, v193, v194, v195, v196, v197, v198, v199, v1222, v1320, v1418, v1516, v1614, v1712, v1810, v1908);
    sub_1ABA7BFC4();
    sub_1ABA88934(v200 + 3904);
    sub_1ABA9DDEC();
    static EntityClass.eventRelationshipType.getter();
    sub_1ABA8D224(v201, v202, v203, v204, v205, v206, v207, v208, v1223, v1321, v1419, v1517, v1615, v1713, v1811, v1909);
    sub_1ABA7BFC4();
    sub_1ABA88934(v209 + 3856);
    sub_1ABA8B99C();
    static EntityClass.textRelationshipType.getter();
    sub_1ABA8D374(v210, v211, v212, v213, v214, v215, v216, v217, v1224, v1322, v1420, v1518, v1616, v1714, v1812, v1910);
    sub_1ABA7BFC4();
    sub_1ABA88934(v218 + 3808);
    sub_1ABA90C10();
    static EntityClass.addressRelationshipType.getter();
    sub_1ABA88B1C(v219, v220, v221, v222, v223, v224, v225, v226, v1225, v1323, v1421, v1519, v1617, v1715, v1813, v1911);
    sub_1ABA7BFC4();
    sub_1ABA88934(v227 + 3760);
    sub_1ABA9E19C();
    static EntityClass.languageRelationshipType.getter();
    sub_1ABA90F70(v228, v229, v230, v231, v232, v233, v234, v235, v1226, v1324, v1422, v1520, v1618, v1716, v1814, v1912);
    sub_1ABA7BFC4();
    sub_1ABA88934(v236 + 3712);
    sub_1ABA90F2C();
    static EntityClass.identifierRelationshipType.getter();
    sub_1ABA88C10(v237, v238, v239, v240, v241, v242, v243, v244, v1227, v1325, v1423, v1521, v1619, v1717, v1815, v1913);
    sub_1ABA7BFC4();
    sub_1ABA88934(v245 + 3664);
    sub_1ABA9E3DC();
    static EntityClass.imageRelationshipType.getter();
    sub_1ABA9DE20(v246, v247, v248, v249, v250, v251, v252, v253, v1228, v1326, v1424, v1522, v1620, v1718, v1816, v1914);
    sub_1ABA7BFC4();
    sub_1ABA88934(v254 + 3616);
    goto LABEL_45;
  }

  v128 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  v129 = sub_1ABA8E764(v128);
  sub_1ABA8A780(v129, xmmword_1ABF34740);
  if (v130)
  {
    v131 = sub_1ABAABC74(v130);
    sub_1ABA8882C(v131, v133, v134, v132 + 96);
    v35 = sub_1ABB7E6A0();
    goto LABEL_33;
  }

  __break(1u);
LABEL_66:
  sub_1ABA9E8AC();
  static EntityClass.typeOfProfession.getter();
  sub_1ABA88F64(v323, v324, v325, v326, v327, v328, v329, v330, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
  sub_1ABA7BFC4();
  sub_1ABA88934(v331 + 3232);
  if (v0)
  {
    v332 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v0 = sub_1ABA8E764(v332);
    sub_1ABA888E0(v0, xmmword_1ABF34740);
    static EntityClass.role.getter();
  }

  else
  {
    sub_1ABA9EA28();
    static EntityClass.religion.getter();
    sub_1ABA9E4FC(v333, v334, v335, v336, v337, v338, v339, v340, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
    sub_1ABA7BFC4();
    sub_1ABA88934(v341 + 3184);
    sub_1ABA9F114();
    static EntityClass.language.getter();
    sub_1ABA89040(v342, v343, v344, v345, v346, v347, v348, v349, v1230, v1328, v1426, v1524, v1622, v1720, v1818, v1916);
    sub_1ABA7BFC4();
    sub_1ABA88934(v350 + 3136);
    sub_1ABB7E0D0();
    static EntityClass.organization.getter();
    sub_1ABA9E64C(v351, v352, v353, v354, v355, v356, v357, v358, v1231, v1329, v1427, v1525, v1623, v1721, v1819, v1917);
    sub_1ABA7BFC4();
    sub_1ABA88934(v359 + 3088);
    sub_1ABA9EE08();
    static EntityClass.politicalParty.getter();
    sub_1ABA89108(v360, v361, v362, v363, v364, v365, v366, v367, v1232, v1330, v1428, v1526, v1624, v1722, v1820, v1918);
    sub_1ABA7BFC4();
    sub_1ABA88934(v368 + 3040);
    sub_1ABA9EF58();
    static EntityClass.populatedPlace.getter();
    sub_1ABA9E7E8(v369, v370, v371, v372, v373, v374, v375, v376, v1233, v1331, v1429, v1527, v1625, v1723, v1821, v1919);
    sub_1ABA7BFC4();
    sub_1ABA88934(v377 + 2992);
    sub_1ABA88A48();
    static EntityClass.state.getter();
    sub_1ABA891C4(v380, v381, v382, v383, v384, v385, v386, v387, v1234, v1332, v1430, v1528, v1626, v1724, v1822, v1920);
    sub_1ABA7BFC4();
    sub_1ABA88934(v388 + 2944);
    if (v0)
    {
      v398 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA8E764(v398);
      sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityClass.populatedPlace.getter();
    }

    else
    {
      sub_1ABA8A430();
      static EntityClass.country.getter();
      sub_1ABA9E8E4(v389, v390, v391, v392, v393, v394, v395, v396, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
      sub_1ABA7BFC4();
      sub_1ABA88934(v397 + 2896);
      sub_1ABAA0650();
      static EntityClass.timeZone.getter();
      sub_1ABA892B4(v399, v400, v401, v402, v403, v404, v405, v406, v1235, v1333, v1431, v1529, v1627, v1725, v1823, v1921);
      sub_1ABA7BFC4();
      sub_1ABA88934(v407 + 2848);
      if ((v0 & 1) == 0)
      {
        sub_1ABA8AA60();
        static EntityClass.event.getter();
        sub_1ABA9EA74(v408, v409, v410, v411, v412, v413, v414, v415, v1218, v1316, v1414, v1512, v1610, v1708, v1806, v1904);
        sub_1ABA7BFC4();
        sub_1ABA88934(v416 + 2800);
        sub_1ABA89EA4();
        static EntityClass.interestRelationshipType.getter();
        sub_1ABA8938C(v417, v418, v419, v420, v421, v422, v423, v424, v1236, v1334, v1432, v1530, v1628, v1726, v1824, v1922);
        sub_1ABA7BFC4();
        sub_1ABA88934(v425 + 2752);
        sub_1ABA88A04();
        static EntityClass.groupOfHumans.getter();
        sub_1ABA9EB90(v426, v427, v428, v429, v430, v431, v432, v433, v1237, v1335, v1433, v1531, v1629, v1727, v1825, v1923);
        sub_1ABA7BFC4();
        sub_1ABA88934(v434 + 2704);
        sub_1ABA88DB4();
        static EntityClass.siribaseType.getter(v435);
        sub_1ABA894B8(v436, v437, v438, v439, v440, v441, v442, v443, v1238, v1336, v1434, v1532, v1630, v1728, v1826, v1924);
        sub_1ABA7BFC4();
        sub_1ABA88934(v444 + 2656);
        sub_1ABA8B3A8();
        static EntityClass.participationRelationshipType.getter();
        sub_1ABA9ECE4(v445, v446, v447, v448, v449, v450, v451, v452, v1239, v1337, v1435, v1533, v1631, v1729, v1827, v1925);
        sub_1ABA7BFC4();
        sub_1ABA88934(v453 + 2608);
        sub_1ABA897E4();
        static EntityClass.devicePrimaryUser.getter();
        sub_1ABA895F4(v454, v455, v456, v457, v458, v459, v460, v461, v1240, v1338, v1436, v1534, v1632, v1730, v1828, v1926);
        sub_1ABA7BFC4();
        sub_1ABA88934(v462 + 2560);
        sub_1ABA88BCC();
        static EntityClass.calendar.getter(v463);
        sub_1ABA9EE34(v464, v465, v466, v467, v468, v469, v470, v471, v1241, v1339, v1437, v1535, v1633, v1731, v1829, v1927);
        sub_1ABA7BFC4();
        sub_1ABA88934(v472 + 2512);
        sub_1ABA8A8D8();
        static EntityClass.calendarEvent.getter();
        sub_1ABA8974C(v473, v474, v475, v476, v477, v478, v479, v480, v1242, v1340, v1438, v1536, v1634, v1732, v1830, v1928);
        sub_1ABA7BFC4();
        sub_1ABA88934(v481 + 2464);
        sub_1ABA89BA0();
        static EntityClass.home.getter();
        sub_1ABA9EF98(v482, v483, v484, v485, v486, v487, v488, v489, v1243, v1341, v1439, v1537, v1635, v1733, v1831, v1929);
        sub_1ABA7BFC4();
        sub_1ABA88934(v490 + 2416);
        sub_1ABA8CC34();
        static EntityClass.document.getter();
        sub_1ABA8986C(v491, v492, v493, v494, v495, v496, v497, v498, v1244, v1342, v1440, v1538, v1636, v1734, v1832, v1930);
        sub_1ABA7BFC4();
        sub_1ABA88934(v499 + 2368);
        sub_1ABA8CDC0();
        static EntityClass.software.getter();
        sub_1ABA9F070(v500, v501, v502, v503, v504, v505, v506, v507, v1245, v1343, v1441, v1539, v1637, v1735, v1833, v1931);
        sub_1ABA7BFC4();
        sub_1ABA88934(v508 + 2320);
        sub_1ABA9DF28();
        static EntityClass.genre.getter();
        sub_1ABA899B0(v509, v510, v511, v512, v513, v514, v515, v516, v1246, v1344, v1442, v1540, v1638, v1736, v1834, v1932);
        sub_1ABA7BFC4();
        sub_1ABA88934(v517 + 2272);
        sub_1ABA8A798();
        static EntityClass.work.getter(v518);
        sub_1ABA9F154(v519, v520, v521, v522, v523, v524, v525, v526, v1247, v1345, v1443, v1541, v1639, v1737, v1835, v1933);
        sub_1ABA7BFC4();
        sub_1ABA88934(v527 + 2224);
        sub_1ABA8A154();
        static EntityClass.calendarSourceRelationshipType.getter();
        sub_1ABA89AE8(v528, v529, v530, v531, v532, v533, v534, v535, v1248, v1346, v1444, v1542, v1640, v1738, v1836, v1934);
        sub_1ABA7BFC4();
        sub_1ABA88934(v536 + 2176);
        sub_1ABA89D68();
        static EntityClass.agentAffiliationRelationshipType.getter();
        sub_1ABA9F210(v537, v538, v539, v540, v541, v542, v543, v544, v1249, v1347, v1445, v1543, v1641, v1739, v1837, v1935);
        sub_1ABA7BFC4();
        sub_1ABA88934(v545 + 2128);
        sub_1ABA8AA7C();
        static EntityClass.dateRelationshipType.getter();
        sub_1ABA89C30(v546, v547, v548, v549, v550, v551, v552, v553, v1250, v1348, v1446, v1544, v1642, v1740, v1838, v1936);
        sub_1ABA7BFC4();
        sub_1ABA88934(v554 + 2080);
        sub_1ABA8A848();
        static EntityClass.typeOfActivity.getter(v555);
        sub_1ABA9F314(v556, v557, v558, v559, v560, v561, v562, v563, v1251, v1349, v1447, v1545, v1643, v1741, v1839, v1937);
        sub_1ABA7BFC4();
        sub_1ABA88934(v564 + 2032);
        sub_1ABA891A4();
        static EntityClass.activityEvent.getter();
        sub_1ABA89D9C(v565, v566, v567, v568, v569, v570, v571, v572, v1252, v1350, v1448, v1546, v1644, v1742, v1840, v1938);
        sub_1ABA7BFC4();
        sub_1ABA88934(v573 + 1984);
        sub_1ABA9E758();
        static EntityClass.administratorRelationshipType.getter();
        sub_1ABA9F418(v574, v575, v576, v577, v578, v579, v580, v581, v1253, v1351, v1449, v1547, v1645, v1743, v1841, v1939);
        sub_1ABA7BFC4();
        sub_1ABA88934(v582 + 1936);
        sub_1ABA9F748();
        static EntityClass.county.getter();
        sub_1ABA89EE4(v583, v584, v585, v586, v587, v588, v589, v590, v1254, v1352, v1450, v1548, v1646, v1744, v1842, v1940);
        sub_1ABA7BFC4();
        sub_1ABA88934(v591 + 1888);
        sub_1ABA89340();
        static EntityClass.visualIdentifierRelationshipType.getter();
        sub_1ABA9F4A8(v592, v593, v594, v595, v596, v597, v598, v599, v1255, v1353, v1451, v1549, v1647, v1745, v1843, v1941);
        sub_1ABA7BFC4();
        sub_1ABA88934(v600 + 1840);
        sub_1ABA9FCA0();
        static EntityClass.song.getter();
        sub_1ABA8A040(v601, v602, v603, v604, v605, v606, v607, v608, v1256, v1354, v1452, v1550, v1648, v1746, v1844, v1942);
        sub_1ABA7BFC4();
        sub_1ABA88934(v609 + 1792);
        sub_1ABAA09F4();
        static EntityClass.songRelationshipType.getter();
        sub_1ABA9F560(v610, v611, v612, v613, v614, v615, v616, v617, v1257, v1355, v1453, v1551, v1649, v1747, v1845, v1943);
        sub_1ABA7BFC4();
        sub_1ABA88934(v618 + 1744);
        sub_1ABA9F8D4();
        static EntityClass.animal.getter();
        sub_1ABA8A90C(v619, v620, v621, v622, v623, v624, v625, v626, v1258, v1356, v1454, v1552, v1650, v1748, v1846, v1944);
        sub_1ABA7BFC4();
        sub_1ABA88934(v627 + 1696);
        sub_1ABA9E2B8();
        static EntityClass.softwareRelationshipType.getter();
        sub_1ABA9F670(v628, v629, v630, v631, v632, v633, v634, v635, v1259, v1357, v1455, v1553, v1651, v1749, v1847, v1945);
        sub_1ABA7BFC4();
        sub_1ABA88934(v636 + 1648);
        sub_1ABA8AE6C();
        static EntityClass.vehicle.getter();
        sub_1ABA8A178(v637, v638, v639, v640, v641, v642, v643, v644, v1260, v1358, v1456, v1554, v1652, v1750, v1848, v1946);
        sub_1ABA7BFC4();
        sub_1ABA88934(v645 + 1600);
        sub_1ABA9F03C();
        static EntityClass.onFoot.getter();
        sub_1ABA9F760(v646, v647, v648, v649, v650, v651, v652, v653, v1261, v1359, v1457, v1555, v1653, v1751, v1849, v1947);
        sub_1ABA7BFC4();
        sub_1ABA88934(v654 + 1552);
        sub_1ABA88AD8();
        static EntityClass.automobile.getter();
        sub_1ABA8A254(v655, v656, v657, v658, v659, v660, v661, v662, v1262, v1360, v1458, v1556, v1654, v1752, v1850, v1948);
        sub_1ABA7BFC4();
        sub_1ABA88934(v663 + 1504);
        sub_1ABA9F9AC();
        static EntityClass.plane.getter();
        sub_1ABA9F830(v664, v665, v666, v667, v668, v669, v670, v671, v1263, v1361, v1459, v1557, v1655, v1753, v1851, v1949);
        sub_1ABA7BFC4();
        sub_1ABA88934(v672 + 1456);
        sub_1ABA9E618();
        static EntityClass.bicycle.getter();
        sub_1ABA8AACC(v673, v674, v675, v676, v677, v678, v679, v680, v1264, v1362, v1460, v1558, v1656, v1754, v1852, v1950);
        sub_1ABA7BFC4();
        sub_1ABA88934(v681 + 1408);
        sub_1ABB7E0B8();
        static EntityClass.ship.getter();
        sub_1ABA9F908(v682, v683, v684, v685, v686, v687, v688, v689, v1265, v1363, v1461, v1559, v1657, v1755, v1853, v1951);
        sub_1ABA7BFC4();
        sub_1ABA88934(v690 + 1360);
        sub_1ABA8D034();
        static EntityClass.bus.getter();
        sub_1ABA8A370(v691, v692, v693, v694, v695, v696, v697, v698, v1266, v1364, v1462, v1560, v1658, v1756, v1854, v1952);
        sub_1ABA7BFC4();
        sub_1ABA88934(v699 + 1312);
        sub_1ABA89A68();
        static EntityClass.locomotiveTrain.getter();
        sub_1ABA9F9F8(v700, v701, v702, v703, v704, v705, v706, v707, v1267, v1365, v1463, v1561, v1659, v1757, v1855, v1953);
        sub_1ABA7BFC4();
        sub_1ABA88934(v708 + 1264);
        sub_1ABA8A80C();
        static EntityClass.transportationActivity.getter();
        sub_1ABA8A4A4(v709, v710, v711, v712, v713, v714, v715, v716, v1268, v1366, v1464, v1562, v1660, v1758, v1856, v1954);
        sub_1ABA7BFC4();
        sub_1ABA88934(v717 + 1216);
        sub_1ABA8C8CC();
        static EntityClass.workingActivity.getter();
        sub_1ABA9FAFC(v718, v719, v720, v721, v722, v723, v724, v725, v1269, v1367, v1465, v1563, v1661, v1759, v1857, v1955);
        sub_1ABA7BFC4();
        sub_1ABA88934(v726 + 1168);
        sub_1ABA9FBA0();
        static EntityClass.meetingActivity.getter();
        sub_1ABA8AD1C(v727, v728, v729, v730, v731, v732, v733, v734, v1270, v1368, v1466, v1564, v1662, v1760, v1858, v1956);
        sub_1ABA7BFC4();
        sub_1ABA88934(v735 + 1120);
        sub_1ABA8A590();
        static EntityClass.eatingActivity.getter();
        sub_1ABA9FBD0(v736, v737, v738, v739, v740, v741, v742, v743, v1271, v1369, v1467, v1565, v1663, v1761, v1859, v1957);
        sub_1ABA7BFC4();
        sub_1ABA88934(v744 + 1072);
        sub_1ABAA0844();
        static EntityClass.watchingTVActivity.getter();
        sub_1ABA8A5D4(v745, v746, v747, v748, v749, v750, v751, v752, v1272, v1370, v1468, v1566, v1664, v1762, v1860, v1958);
        sub_1ABA7BFC4();
        sub_1ABA88934(v753 + 1024);
        sub_1ABA8BBF0();
        static EntityClass.communicatingActivity.getter();
        sub_1ABA9FCF4(v754, v755, v756, v757, v758, v759, v760, v761, v1273, v1371, v1469, v1567, v1665, v1763, v1861, v1959);
        sub_1ABA7BFC4();
        sub_1ABA88934(v762 + 976);
        sub_1ABA9FE14();
        static EntityClass.shoppingActivity.getter();
        sub_1ABA8AEC8(v763, v764, v765, v766, v767, v768, v769, v770, v1274, v1372, v1470, v1568, v1666, v1764, v1862, v1960);
        sub_1ABA7BFC4();
        sub_1ABA88934(v771 + 928);
        sub_1ABA9F80C();
        static EntityClass.travelingActivity.getter();
        sub_1ABA9FE54(v772, v773, v774, v775, v776, v777, v778, v779, v1275, v1373, v1471, v1569, v1667, v1765, v1863, v1961);
        sub_1ABA7BFC4();
        sub_1ABA88934(v780 + 880);
        sub_1ABA9F2D4();
        static EntityClass.readingActivity.getter();
        sub_1ABA8B0E0(v781, v782, v783, v784, v785, v786, v787, v788, v1276, v1374, v1472, v1570, v1668, v1766, v1864, v1962);
        sub_1ABA7BFC4();
        sub_1ABA88934(v789 + 832);
        sub_1ABA9F490();
        static EntityClass.vacationingActivity.getter();
        sub_1ABA950DC(v790, v791, v792, v793, v794, v795, v796, v797, v1277, v1375, v1473, v1571, v1669, v1767, v1865, v1963);
        sub_1ABA7BFC4();
        sub_1ABA88934(v798 + 784);
        sub_1ABAA0DF8();
        static EntityClass.gamingActivity.getter();
        sub_1ABA8B25C(v799, v800, v801, v802, v803, v804, v805, v806, v1278, v1376, v1474, v1572, v1670, v1768, v1866, v1964);
        sub_1ABA7BFC4();
        sub_1ABA88934(v807 + 736);
        sub_1ABA9FF2C();
        static EntityClass.socializingActivity.getter();
        sub_1ABA9FFAC(v808, v809, v810, v811, v812, v813, v814, v815, v1279, v1377, v1475, v1573, v1671, v1769, v1867, v1965);
        sub_1ABA7BFC4();
        sub_1ABA88934(v816 + 688);
        sub_1ABA8C658();
        static EntityClass.wakingUpActivity.getter();
        sub_1ABA8B490(v817, v818, v819, v820, v821, v822, v823, v824, v1280, v1378, v1476, v1574, v1672, v1770, v1868, v1966);
        sub_1ABA7BFC4();
        sub_1ABA88934(v825 + 640);
        sub_1ABB7E0AC();
        static EntityClass.goingToBedActivity.getter();
        sub_1ABAA0128(v826, v827, v828, v829, v830, v831, v832, v833, v1281, v1379, v1477, v1575, v1673, v1771, v1869, v1967);
        sub_1ABA7BFC4();
        sub_1ABA88934(v834 + 592);
        sub_1ABA9EB58();
        static EntityClass.sleepingActivity.getter();
        sub_1ABA8B65C(v835, v836, v837, v838, v839, v840, v841, v842, v1282, v1380, v1478, v1576, v1674, v1772, v1870, v1968);
        sub_1ABA7BFC4();
        sub_1ABA88934(v843 + 544);
        sub_1ABA8B19C();
        static EntityClass.exercisingActivity.getter();
        sub_1ABAA02C8(v844, v845, v846, v847, v848, v849, v850, v851, v1283, v1381, v1479, v1577, v1675, v1773, v1871, v1969);
        sub_1ABA7BFC4();
        sub_1ABA88934(v852 + 496);
        sub_1ABB7E0C4();
        static EntityClass.mindfulnessActivity.getter();
        sub_1ABA8B874(v853, v854, v855, v856, v857, v858, v859, v860, v1284, v1382, v1480, v1578, v1676, v1774, v1872, v1970);
        sub_1ABA7BFC4();
        sub_1ABA88934(v861 + 448);
        sub_1ABA9F524();
        static EntityClass.onThePhoneActivity.getter();
        sub_1ABAA0408(v862, v863, v864, v865, v866, v867, v868, v869, v1285, v1383, v1481, v1579, v1677, v1775, v1873, v1971);
        sub_1ABA7BFC4();
        sub_1ABA88934(v870 + 400);
        sub_1ABAA00CC();
        static EntityClass.facetimeActivity.getter();
        sub_1ABA8BA84(v871, v872, v873, v874, v875, v876, v877, v878, v1286, v1384, v1482, v1580, v1678, v1776, v1874, v1972);
        sub_1ABA7BFC4();
        sub_1ABA88934(v879 + 352);
        sub_1ABA9F3DC();
        static EntityClass.walkingActivity.getter();
        sub_1ABAA0520(v880, v881, v882, v883, v884, v885, v886, v887, v1287, v1385, v1483, v1581, v1679, v1777, v1875, v1973);
        sub_1ABA7BFC4();
        sub_1ABA88934(v888 + 304);
        sub_1ABA8947C();
        static EntityClass.runningActivity.getter();
        sub_1ABAA06D0(v889, v890, v891, v892, v893, v894, v895, v896, v1288, v1386, v1484, v1582, v1680, v1778, v1876, v1974);
        sub_1ABA7BFC4();
        sub_1ABA88934(v897 + 256);
        sub_1ABA9FF50();
        sub_1ABA8BC54(v898, v899, v900, v901, v902, v903, v904, v905, v1289, v1387, v1485, v1583, v1681, v1779, v1877, v1975);
        sub_1ABA7BFC4();
        sub_1ABA88934(v906 + 208);
        sub_1ABA8BD88();
        static EntityClass.hikingActivity.getter();
        sub_1ABAA088C(v907, v908, v909, v910, v911, v912, v913, v914, v1290, v1388, v1486, v1584, v1682, v1780, v1878, v1976);
        sub_1ABA7BFC4();
        sub_1ABA88934(v915 + 160);
        sub_1ABA8CF70();
        static EntityClass.modeOfTransportation.getter(v916);
        sub_1ABA8C55C(v917, v918, v919, v920, v921, v922, v923, v924, v1291, v1389, v1487, v1585, v1683, v1781, v1879, v1977);
        sub_1ABA7BFC4();
        sub_1ABA88934(v925 + 112);
        sub_1ABB7E0A0();
        static EntityClass.automobileModel.getter(v926);
        sub_1ABAA0A44(v927, v928, v929, v930, v931, v932, v933, v934, v1292, v1390, v1488, v1586, v1684, v1782, v1880, v1978);
        sub_1ABA7BFC4();
        sub_1ABA88934(v935 + 64);
        static EntityClass.transportationActivityType.getter();
        sub_1ABA8C710(v936, v937, v938, v939, v940, v941, v942, v943, v1293, v1391, v1489, v1587, v1685, v1783, v1881, v1979);
        sub_1ABA7BFC4();
        sub_1ABA88934(v944 + 16);
        static EntityClass.workingActivityType.getter();
        *&v945 = sub_1ABAB0F68().n128_u64[0];
        sub_1ABB7DF94(v946, v947, v948, v949, v950, v951, v952, v953, v1294, v1392, v1490, v1588, v1686, v1784, v1882, v1980, v945);
        sub_1ABA8A830();
        static EntityClass.meetingActivityType.getter();
        *&v954 = sub_1ABAB3BD0().n128_u64[0];
        sub_1ABB7DFB4(v955, v956, v957, v958, v959, v960, v961, v962, v1295, v1393, v1491, v1589, v1687, v1785, v1883, v1981, v954);
        sub_1ABB7E14C();
        static EntityClass.eatingActivityType.getter();
        sub_1ABA8CAAC();
        sub_1ABAB61B4(v963, v1296, v1394, v1492, v1590, v1688, v1786, v1884, v1982);
        sub_1ABAB5E8C();
        static EntityClass.watchingMediaActivityType.getter();
        sub_1ABA95488();
        sub_1ABA856C4(v964, &v2002);
        sub_1ABAA6708();
        static EntityClass.communicatingActivityType.getter();
        sub_1ABA90C94();
        sub_1ABA856C4(v965, &v2002);
        sub_1ABB7E50C();
        static EntityClass.shoppingActivityType.getter();
        sub_1ABA885E0();
        sub_1ABA856C4(v966, &v2002);
        sub_1ABB7E3EC();
        static EntityClass.mindfulActivityType.getter();
        sub_1ABAB5298();
        sub_1ABA856C4(v967, &v2002);
        sub_1ABB7E284();
        static EntityClass.sleepActivityType.getter();
        sub_1ABAA0E90();
        sub_1ABA856C4(v968, &v2002);
        sub_1ABB7E194();
        static EntityClass.travelActivityType.getter();
        sub_1ABAB548C();
        sub_1ABA856C4(v969, &v2002);
        sub_1ABAB5F38();
        static EntityClass.readingActivityType.getter();
        sub_1ABAA10B4();
        sub_1ABA856C4(v970, &v2002);
        sub_1ABAA11F8();
        static EntityClass.vacationActivityType.getter();
        sub_1ABAB5660();
        sub_1ABA856C4(v971, &v2002);
        sub_1ABAA2778();
        static EntityClass.socialActivityType.getter();
        sub_1ABAA128C();
        sub_1ABA856C4(v972, &v2002);
        sub_1ABB7E44C();
        static EntityClass.wakingActivityType.getter();
        sub_1ABAB5828();
        sub_1ABA856C4(v973, &v2002);
        sub_1ABB7E2E4();
        static EntityClass.goingToBedActivityType.getter();
        sub_1ABAA14F4();
        sub_1ABA856C4(v974, &v2002);
        sub_1ABB7E20C();
        static EntityClass.phoneCallActivityType.getter();
        sub_1ABAB5A24();
        sub_1ABA856C4(v975, &v2002);
        sub_1ABAA36E4();
        static EntityClass.facetimeActivityType.getter();
        sub_1ABA95260();
        sub_1ABA856C4(v976, &v2002);
        sub_1ABAA47F8();
        static EntityClass.walkingActivityType.getter();
        sub_1ABA96024();
        sub_1ABA856C4(v977, &v2002);
        sub_1ABAA1E08();
        static EntityClass.runningActivityType.getter();
        sub_1ABAA1764();
        sub_1ABA856C4(v978, &v2002);
        sub_1ABB7E4C4();
        static EntityClass.bikingActivityType.getter();
        sub_1ABA82DEC();
        sub_1ABA856C4(v979, &v2002);
        sub_1ABB7E374();
        static EntityClass.hikingActivityType.getter();
        sub_1ABAA1980();
        sub_1ABA856C4(v980, &v2002);
        sub_1ABA88910();
        static EntityClass.typeOfPhysicalExercise.getter();
        sub_1ABA97F20();
        sub_1ABA856C4(v981, &v2002);
        sub_1ABB7E164();
        static EntityClass.localizedNameRelationshipType.getter();
        sub_1ABAA1BC0();
        sub_1ABA856C4(v982, &v2002);
        sub_1ABAA2B18();
        static EntityClass.mediaWork.getter();
        sub_1ABA97768();
        sub_1ABA856C4(v983, &v2002);
        sub_1ABAA3B30();
        static EntityClass.commuteActivity.getter();
        sub_1ABA96C28();
        sub_1ABA856C4(v984, &v2002);
        sub_1ABAB5214();
        static EntityClass.diningActivity.getter();
        sub_1ABAB5C84();
        sub_1ABA856C4(v985, &v2002);
        sub_1ABB7E404();
        static EntityClass.attendingAPerformanceActivity.getter();
        sub_1ABAA1EB4();
        sub_1ABA856C4(v986, &v2002);
        sub_1ABB7E2B4();
        static EntityClass.stationaryActivity.getter();
        sub_1ABAB1044();
        sub_1ABA856C4(v987, &v2002);
        v988 = sub_1ABB7E1C4();
        static EntityClass.knowledgeSource.getter(v988);
        sub_1ABA7AC70();
        sub_1ABA856C4(v989, &v2002);
        sub_1ABA94EA0();
        static EntityClass.confidenceRelationshipType.getter();
        sub_1ABA82774();
        sub_1ABA856C4(v990, &v2002);
        sub_1ABAA6408();
        static EntityClass.commuteActivityType.getter();
        sub_1ABA96964();
        sub_1ABA856C4(v991, &v2002);
        sub_1ABAB5EB0();
        static EntityClass.make.getter();
        sub_1ABAA2228();
        sub_1ABA856C4(v992, &v2002);
        sub_1ABB7E47C();
        static EntityClass.locationVisitActivity.getter();
        sub_1ABA95784();
        sub_1ABA856C4(v993, &v2002);
        sub_1ABB7E344();
        static EntityClass.performanceRelationshipType.getter();
        sub_1ABAA2548();
        sub_1ABA856C4(v994, &v2002);
        sub_1ABB7E23C();
        static EntityClass.partWholeRelationshipType.getter();
        sub_1ABAA2860();
        sub_1ABA856C4(v995, &v2002);
        sub_1ABAA102C();
        static EntityClass.ratingRelationshipType.getter();
        sub_1ABA974C0();
        sub_1ABA856C4(v996, &v2002);
        sub_1ABAA5644();
        static EntityClass.musicalArtist.getter();
        sub_1ABAA2C18();
        sub_1ABA856C4(v997, &v2002);
        sub_1ABAB6000();
        static EntityClass.contentRating.getter();
        sub_1ABAA2FFC();
        sub_1ABA856C4(v998, &v2002);
        sub_1ABB7E4F4();
        static EntityClass.sportsGameEvent.getter();
        sub_1ABAA3458();
        sub_1ABA856C4(v999, &v2002);
        sub_1ABB7E3D4();
        static EntityClass.sportsTeam.getter();
        sub_1ABAA37BC();
        sub_1ABA856C4(v1000, &v2002);
        sub_1ABB7E26C();
        static EntityClass.drivingActivity.getter();
        sub_1ABAA3C1C();
        sub_1ABA856C4(v1001, &v2002);
        sub_1ABB7E1AC();
        static EntityClass.drivingActivityType.getter();
        sub_1ABAA3FC8();
        sub_1ABA856C4(v1002, &v2002);
        sub_1ABAB5BA4();
        static EntityClass.behaviorActivity.getter();
        sub_1ABAA4474();
        sub_1ABA856C4(v1003, &v2002);
        sub_1ABAA18F4();
        static EntityClass.behaviorActivityType.getter();
        sub_1ABAA48E8();
        sub_1ABA856C4(v1004, &v2002);
        v1005 = sub_1ABB7E32C();
        static EntityClass.time.getter(v1005);
        sub_1ABAA4D28();
        sub_1ABA856C4(v1006, &v2002);
        sub_1ABB7E224();
        static EntityClass.album.getter();
        sub_1ABAA5230();
        sub_1ABA856C4(v1007, &v2002);
        sub_1ABAA20E4();
        static EntityClass.musicalWork.getter();
        sub_1ABAA5770();
        sub_1ABA856C4(v1008, &v2002);
        v1009 = sub_1ABAA1674();
        static EntityClass.group.getter(v1009);
        sub_1ABA97A50();
        sub_1ABA856C4(v1010, &v2002);
        sub_1ABAA0E1C();
        static EntityClass.groupRelationshipType.getter();
        sub_1ABA83FD0();
        sub_1ABA856C4(v1011, &v2002);
        sub_1ABB7E4DC();
        static EntityClass.livingBeingRelationship.getter();
        sub_1ABA8E138();
        sub_1ABA856C4(v1012, &v2002);
        sub_1ABB7E3BC();
        static EntityClass.entityAliasRelationshipType.getter();
        sub_1ABA9A318();
        sub_1ABA856C4(v1013, &v2002);
        sub_1ABB7E254();
        static EntityClass.pet.getter();
        sub_1ABAA5F84();
        sub_1ABA856C4(v1014, &v2002);
        sub_1ABB7E17C();
        static EntityClass.dog.getter();
        sub_1ABA90688();
        sub_1ABA856C4(v1015, &v2002);
        sub_1ABAA0DD4();
        static EntityClass.cat.getter();
        sub_1ABA9930C();
        sub_1ABA856C4(v1016, &v2002);
        sub_1ABAA2114();
        static EntityClass.extractionTagRelationshipType.getter();
        sub_1ABA8BF00();
        sub_1ABA856C4(v1017, &v2002);
        sub_1ABAA4C3C();
        static EntityClass.movie.getter();
        sub_1ABA8FEF8();
        sub_1ABA856C4(v1018, &v2002);
        sub_1ABB7E41C();
        static EntityClass.sportsOrganization.getter();
        sub_1ABA9487C();
        sub_1ABA856C4(v1019, &v2002);
        sub_1ABB7E2CC();
        static EntityClass.sportsLeague.getter();
        sub_1ABA81650();
        sub_1ABA856C4(v1020, &v2002);
        sub_1ABB7E1F4();
        static EntityClass.athlete.getter();
        sub_1ABA83770();
        sub_1ABA856C4(v1021, &v2002);
        sub_1ABAA5D30();
        static EntityClass.personInTheArts.getter();
        sub_1ABA8E744();
        sub_1ABA856C4(v1022, &v2002);
        sub_1ABAA63AC();
        static EntityClass.musician.getter();
        sub_1ABA7E4B0();
        sub_1ABA856C4(v1023, &v2002);
        sub_1ABAA2F20();
        static EntityClass.televisionProgram.getter();
        sub_1ABA9335C();
        sub_1ABA856C4(v1024, &v2002);
        sub_1ABB7E494();
        static EntityClass.sportsActivity.getter();
        sub_1ABA7BFA4();
        sub_1ABA856C4(v1025, &v2002);
        v1026 = sub_1ABB7E35C();
        static EntityClass.screenTimeSegment.getter(v1026);
        sub_1ABA808C4();
        sub_1ABA856C4(v1027, &v2002);
        sub_1ABA888EC();
        static EntityClass.myPet.getter();
        sub_1ABA7FC3C();
        sub_1ABA856C4(v1028, &v2002);
        sub_1ABA889A8();
        static EntityClass.myDog.getter();
        sub_1ABA8CC90();
        sub_1ABA856C4(v1029, &v2002);
        sub_1ABB7E314();
        static EntityClass.myCat.getter();
        sub_1ABB7D86C();
        sub_1ABA856C4(v1030, &v2002);
        v1031 = sub_1ABB7E434();
        static EntityClass.walletOrder.getter(v1031);
        sub_1ABA96F80();
        sub_1ABA856C4(v1032, &v2002);
        sub_1ABAA63D0();
        static EntityClass.walletTransaction.getter();
        sub_1ABAB659C();
        sub_1ABA856C4(v1033, &v2002);
        sub_1ABAA5DCC();
        static EntityClass.orderEmailRelationshipType.getter();
        sub_1ABAB6778();
        sub_1ABA856C4(v1034, &v2002);
        sub_1ABAA2478();
        static EntityClass.orderTransactionRelationshipType.getter();
        sub_1ABAB68A4();
        sub_1ABA856C4(v1035, &v2002);
        v1036 = sub_1ABAA64C8();
        static EntityClass.payment.getter(v1036);
        sub_1ABB7D854();
        sub_1ABA856C4(v1037, &v2002);
        v1038 = sub_1ABB7E1DC();
        static EntityClass.transaction.getter(v1038);
        sub_1ABA972E0();
        sub_1ABA856C4(v1039, &v2002);
        v1040 = sub_1ABB7E29C();
        static EntityClass.email.getter(v1040);
        sub_1ABA82A44();
        sub_1ABA856C4(v1041, &v2002);
        v1042 = sub_1ABB7E3A4();
        static EntityClass.shippinginfo.getter(v1042);
        sub_1ABB7D83C();
        sub_1ABA856C4(v1043, &v2002);
        v1044 = sub_1ABB7E4AC();
        static EntityClass.shipmentFullFillmentInfo.getter(v1044);
        sub_1ABA963E0(v1045, v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1297, v1395, v1493, v1591, v1689, v1787, v1885, v1983, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, *(&v2028 + 1), v2029, *(&v2029 + 1), v2030, v2031, v2032, *(&v2032 + 1), v2033, *(&v2033 + 1), v2034, v2035, v2036, *(&v2036 + 1), v2037, v2038, v2039, v2040, v2041, *(&v2041 + 1), v2042);
        sub_1ABA856C4(v1053, &v2002);
        sub_1ABAA5BF4();
        static EntityClass.orderShippingInfoRelationshipType.getter();
        sub_1ABAB2AE0(v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1298, v1396, v1494, v1592, v1690, v1788, v1886, v1984, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, *(&v2028 + 1), v2029, *(&v2029 + 1), v2030, v2031, v2032, *(&v2032 + 1), v2033, *(&v2033 + 1), v2034, v2035, v2036, *(&v2036 + 1), v2037, v2038, v2039, v2040, v2041);
        v1063 = sub_1ABA856C4(v1062, &v2002);
        sub_1ABAB5E68(v1063, v1064, v1065, v1066, v1067, v1068, v1069, v1070, v1299, v1397, v1495, v1593, v1691, v1789, v1887, v1985, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, *(&v2028 + 1), v2029, *(&v2029 + 1), v2030, v2031, v2032, *(&v2032 + 1), v2033, *(&v2033 + 1), v2034, v2035, v2036, *(&v2036 + 1), v2037, v2038, v2039, v2040, v2041, *(&v2041 + 1), v2042);
        static EntityClass.entityOrganizationRelationshipType.getter();
        sub_1ABB7D824(v1071, v1072, v1073, v1074, v1075, v1076, v1077, v1078, v1300, v1398, v1496, v1594, v1692, v1790, v1888, v1986, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, *(&v2028 + 1), v2029, *(&v2029 + 1), v2030, v2031, v2032, *(&v2032 + 1), v2033, *(&v2033 + 1), v2034, v2035, v2036);
        v1080 = sub_1ABA856C4(v1079, &v2002);
        sub_1ABAA1DE4(v1080, v1081, v1082, v1083, v1084, v1085, v1086, v1087, v1301, v1399, v1497, v1595, v1693, v1791, v1889, v1987, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, *(&v2028 + 1), v2029, *(&v2029 + 1), v2030, v2031, v2032, *(&v2032 + 1), v2033, *(&v2033 + 1), v2034, v2035, v2036, *(&v2036 + 1), v2037, v2038, v2039, v2040);
        static EntityClass.shipmentFullFillmentEmailRelationshipType.getter();
        sub_1ABB7D80C(v1088, v1089, v1090, v1091, v1092, v1093, v1094, v1095, v1302, v1400, v1498, v1596, v1694, v1792, v1890, v1988, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, *(&v2028 + 1), v2029, *(&v2029 + 1), v2030, v2031, v2032);
        v1097 = sub_1ABA856C4(v1096, &v2002);
        sub_1ABA887FC(v1097, v1098, v1099, v1100, v1101, v1102, v1103, v1104, v1303, v1401, v1499, v1597, v1695, v1793, v1891, v1989, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, *(&v2028 + 1), v2029, *(&v2029 + 1), v2030, v2031, v2032, *(&v2032 + 1), v2033, *(&v2033 + 1), v2034, v2035);
        static EntityClass.orderShipmentFullFillmentRelationshipType.getter();
        v1113 = sub_1ABB7DF54(v1105, v1106, v1107, v1108, v1109, v1110, v1111, v1112, v1304, v1402, v1500, v1598, v1696, v1794, v1892, v1990, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, v2029, v2030, v2031, v2032, v2033, v2034);
        sub_1ABA889E0(v1113, v1114, v1115, v1116, v1117, v1118, v1119, v1120, v1305, v1403, v1501, v1599, v1697, v1795, v1893, v1991, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, *(&v2028 + 1), v2029, *(&v2029 + 1), v2030, v2031);
        static EntityClass.orderPaymentRelationshipType.getter();
        v1129 = sub_1ABB7DF2C(v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1128, v1306, v1404, v1502, v1600, v1698, v1796, v1894, v1992, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, v2029, v2030);
        sub_1ABB7EA70(v1129, v1130, v1131, v1132, v1133, v1134, v1135, v1136, v1307, v1405, v1503, v1601, v1699, v1797, v1895, v1993, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2027);
        static EntityClass.fromToEmailRelationshipType.getter();
        v1145 = sub_1ABB7E9B0(v1137, v1138, v1139, v1140, v1141, v1142, v1143, v1144, v1308, v1406, v1504, v1602, v1700, v1798, v1896, v1994, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022);
        sub_1ABB7EA40(v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1309, v1407, v1505, v1603, v1701, v1799, v1897, v1995, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2020, v2021, v2022);
        static EntityClass.orderPersonRelationshipType.getter();
        v1161 = sub_1ABB7E998(v1153, v1154, v1155, v1156, v1157, v1158, v1159, v1160, v1310, v1408, v1506, v1604, v1702, v1800, v1898, v1996, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017);
        sub_1ABB7EA10(v1161, v1162, v1163, v1164, v1165, v1166, v1167, v1168, v1311, v1409, v1507, v1605, v1703, v1801, v1899, v1997, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017);
        static EntityClass.holidayEvent.getter();
        v1177 = sub_1ABB7E980(v1169, v1170, v1171, v1172, v1173, v1174, v1175, v1176, v1312, v1410, v1508, v1606, v1704, v1802, v1900, v1998, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012);
        sub_1ABB7E9F8(v1177, v1178, v1179, v1180, v1181, v1182, v1183, v1184, v1313, v1411, v1509, v1607, v1705, v1803, v1901, v1999, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012);
        static EntityClass.shipmentPersonRelationshipType.getter();
        v1193 = sub_1ABB7E968(v1185, v1186, v1187, v1188, v1189, v1190, v1191, v1192, v1314, v1412, v1510, v1608, v1706, v1804, v1902, v2000);
        sub_1ABB7EA58(v1193, v1194, v1195, v1196, v1197, v1198, v1199, v1200, v1315, v1413, v1511, v1609, v1707, v1805, v1903, v2001, v2002, v2003, v2004, v2005, v2006, v2007);
        static EntityClass.emailInfoRelationshipType.getter();
        v1207 = sub_1ABB7E950(v1201, v1202, v1203, v1204, v1205, v1206);
        sub_1ABB7EA28(v1207, v1208, v1209, v1210, v1211, v1212);
        sub_1ABC6D528();
        v1213 = sub_1ABF237D4();
        sub_1ABF24674();
        sub_1ABAA20BC();
        if (sub_1ABB7E014())
        {
          v1214 = sub_1ABAD8744(2);
          sub_1ABAA0B68(v1214);
          if (v2)
          {
            while (1)
            {
              sub_1ABA88988();
              v1215();
              sub_1ABA9FAB0();
            }
          }

          sub_1ABA8A7E0(&dword_1ABA78000, v1216, v1217, "EntityClass: parentClasses: unknown entity class.");
          sub_1ABAD874C();
        }

        goto LABEL_3;
      }

      v378 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA8E764(v378);
      v379 = sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityClass.place.getter(v379);
    }
  }

LABEL_34:
  v16 = v0;
LABEL_35:
  if (sub_1ABA8DEE8(v16))
  {
    sub_1ABA8DEF4(v0, v146, v147, v148, v149, v150, v151, v152, v1218, v1316, v1414, v1512, SBYTE4(v1512), v1610, v1708, v1806, v1904, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019);
  }

  else
  {
  }

  sub_1ABAB5B7C();
  sub_1ABA82A00();
}