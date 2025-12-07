void sub_1D6D16738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6D1679C(uint64_t a1)
{
  if (!qword_1EC894FD8)
  {
    sub_1D6D1683C(255);
    sub_1D6D16A60(255);
    sub_1D6D16A94(255);
    sub_1D6D16CC0(255);
    sub_1D6D16EF0(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC894FD8);
    }
  }
}

void sub_1D6D168D8(uint64_t a1)
{
  if (!qword_1EC894FF8)
  {
    sub_1D5F7B9E4(255);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC894FF8);
    }
  }
}

void sub_1D6D16938(uint64_t a1)
{
  if (!qword_1EC895000)
  {
    sub_1D726148C();
    sub_1D6D18708(&qword_1EC895008, MEMORY[0x1E697C918], MEMORY[0x1E697C910]);
    v1 = sub_1D726141C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC895000);
    }
  }
}

void sub_1D6D169CC(uint64_t a1)
{
  if (!qword_1EC895010)
  {
    sub_1D726146C();
    sub_1D6D18708(&qword_1EC895018, MEMORY[0x1E697C800], MEMORY[0x1E697C7F8]);
    v1 = sub_1D726141C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC895010);
    }
  }
}

void sub_1D6D16B64(uint64_t a1)
{
  if (!qword_1EC895048)
  {
    sub_1D6D16C20(255);
    sub_1D6D18708(&qword_1EC895058, sub_1D6D16C20, MEMORY[0x1E69E6338]);
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC895048);
    }
  }
}

void sub_1D6D16C54(uint64_t a1)
{
  if (!qword_1EC8859B0)
  {
    sub_1D630BAE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8859B0);
    }
  }
}

void sub_1D6D16E34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D6D18708(a4, a5, MEMORY[0x1E69E6338]);
    v8 = sub_1D72619FC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6D170CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6D17140(uint64_t a1)
{
  if (!qword_1EC8950F0)
  {
    sub_1D6D17098(255);
    sub_1D6D171C4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8950F0);
    }
  }
}

unint64_t sub_1D6D171C4()
{
  result = qword_1EC8950F8;
  if (!qword_1EC8950F8)
  {
    sub_1D6D17098(255);
    sub_1D6D17274();
    sub_1D6D18708(&qword_1EC8811A8, sub_1D5F260A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8950F8);
  }

  return result;
}

unint64_t sub_1D6D17274()
{
  result = qword_1EC895100;
  if (!qword_1EC895100)
  {
    sub_1D6D165E4(255);
    sub_1D6D18708(&qword_1EC895108, sub_1D6D16618, MEMORY[0x1E697C158]);
    sub_1D6D18708(&qword_1EC8845E8, sub_1D5F7B9E4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895100);
  }

  return result;
}

void sub_1D6D17354(uint64_t a1)
{
  if (!qword_1EC895110)
  {
    sub_1D6D17140(255);
    sub_1D6D17098(255);
    sub_1D6D171C4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC895110);
    }
  }
}

id sub_1D6D17480(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = &selRef_systemGray4Color;
  }

  else
  {
    v2 = off_1E84D00D8[v1];
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

uint64_t sub_1D6D174F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D17558(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D8020(a1, v1 + v5);
}

uint64_t sub_1D6D17634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6BB1B94(a1, v4, v5, v6);
}

unint64_t sub_1D6D17750()
{
  result = qword_1EC895118;
  if (!qword_1EC895118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895118);
  }

  return result;
}

uint64_t objectdestroy_12Tm_1()
{
  v1 = type metadata accessor for DebugFormatWorkspace(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  type metadata accessor for DebugFormatWorkspaceKind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for DebugFormatCacheFile(0);
    if ((*(*(v11 - 8) + 48))(v0 + v3, 1, v11))
    {
      goto LABEL_41;
    }

    v12 = v4 + *(v11 + 28);
    v8 = sub_1D725BD1C();
    v9 = *(*(v8 - 8) + 8);
    v9(v12, v8);
    type metadata accessor for DebugFormatCacheFileMetadata(0);

    v10 = v4 + *(v11 + 32);
    type metadata accessor for FormatFile(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v13 = type metadata accessor for FormatContent(0);
        v14 = *(v13 + 20);
        v15 = sub_1D725891C();
        (*(*(v15 - 8) + 8))(v10 + v14, v15);

        v16 = *(v13 + 44);
        v17 = sub_1D72608BC();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v10 + v16, 1, v17))
        {
          (*(v18 + 8))(v10 + v16, v17);
        }

        goto LABEL_9;
      case 1u:
LABEL_23:

        if (*(v10 + 106) != 255)
        {
          v28 = *(v10 + 104) | (*(v10 + 106) << 16);
          sub_1D60CF684(*(v10 + 96), v28, SBYTE2(v28));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v10 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v10 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v10 + 168) >= 3uLL)
        {
        }

        v42 = type metadata accessor for FormatPackage(0);
        v29 = v10 + v42[23];

        v45 = type metadata accessor for FormatCompilerOptions(0);
        v46 = v29 + *(v45 + 24);
        if (*(v46 + 8) != 1)
        {
        }

        v41 = v29;
        v30 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v49 = sub_1D725B76C();
        v43 = *(v49 - 8);
        v44 = *(v43 + 48);
        if (!v44(v46 + v30, 1))
        {
          (*(v43 + 8))(v46 + v30, v49);
        }

        v47 = *(v45 + 28);
        if (!(v44)(v41 + v47, 1, v49))
        {
          (*(v43 + 8))(v41 + v47, v49);
        }

        v9(v10 + v42[24], v8);
        v31 = v42[25];
        if (!(v44)(v10 + v31, 1, v49))
        {
          (*(v43 + 8))(v10 + v31, v49);
        }

        goto LABEL_39;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v19 = v10 + *(type metadata accessor for FormatBindingContent(0) + 28);

        v20 = type metadata accessor for FormatContent(0);
        v21 = *(v20 + 20);
        v22 = sub_1D725891C();
        (*(*(v22 - 8) + 8))(v19 + v21, v22);

        v23 = *(v20 + 44);
        v24 = sub_1D72608BC();
        v25 = *(v24 - 8);
        v48 = v23;
        v26 = v19 + v23;
        v27 = v24;
        if (!(*(v25 + 48))(v26, 1, v24))
        {
          (*(v25 + 8))(v19 + v48, v27);
        }

LABEL_9:

        goto LABEL_39;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for DebugFormatCacheFile(0);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = v4 + *(v6 + 28);
      v8 = sub_1D725BD1C();
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      type metadata accessor for DebugFormatCacheFileMetadata(0);

      v10 = v4 + *(v6 + 32);
      type metadata accessor for FormatFile(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4(0);
      sub_1D5B952F8(*(v10 + *(v32 + 44)), *(v10 + *(v32 + 44) + 8));
    }
  }

LABEL_41:

  v33 = (v4 + *(v1 + 24));

  v34 = type metadata accessor for FeedContext(0);
  v35 = v33 + v34[5];
  v36 = type metadata accessor for BundleSession(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = *(v36 + 20);
    v38 = sub_1D725891C();
    v4 = v0 + v3;
    (*(*(v38 - 8) + 8))(&v35[v37], v38);
  }

  if (*(v33 + v34[12] + 8) - 1 >= 3)
  {
  }

  v39 = (v4 + *(v1 + 28));
  if (v39[1])
  {

    if (v39[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v39[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D6D18520(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D847C(a1, v1 + v5);
}

uint64_t sub_1D6D18630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64680;

  return sub_1D6D16144(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t sub_1D6D18708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_74Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D6D18800(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64680;

  return sub_1D6D159B0(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t sub_1D6D188D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49DA8(255, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6D18940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D5B64680;

  return sub_1D6D15D48(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_90Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D6D18A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D5B64680;

  return sub_1D6D154EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D6D18B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6D18BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D6BB1B94(a1, v4, v5, v6);
}

uint64_t sub_1D6D18C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1D6D18CE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 48);
  v4 = ((4 * *(v2 + 50)) | (v3 >> 11) & 3);
  if (v4 > 3)
  {
    if (((4 * *(v2 + 50)) | (v3 >> 11) & 3) > 5u)
    {
      if (v4 != 6)
      {
        if (v4 != 7)
        {
          return sub_1D6D18CE8(result, a2);
        }

        goto LABEL_5;
      }

      goto LABEL_15;
    }

    if (v4 != 4)
    {
      v5 = xmmword_1D7297410;
      goto LABEL_24;
    }

    v6 = v3 >> 13;
    if (v3 >> 13 > 1)
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
LABEL_5:
          v5 = xmmword_1D72BAA90;
LABEL_24:
          *a2 = v5;
          goto LABEL_25;
        }

LABEL_15:
        v5 = xmmword_1D728CF30;
        goto LABEL_24;
      }

LABEL_10:
      v5 = xmmword_1D72BAA80;
      goto LABEL_24;
    }

    if (!v6)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
LABEL_25:
      *(a2 + 16) = 0;
      return result;
    }

LABEL_23:
    v5 = xmmword_1D72BAA60;
    goto LABEL_24;
  }

  if (((4 * *(v2 + 50)) | (v3 >> 11) & 3) <= 1u)
  {
    if (!((4 * *(v2 + 50)) | (v3 >> 11) & 3))
    {
      v5 = xmmword_1D72BAA70;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v4 == 2)
  {
    goto LABEL_10;
  }

  v7 = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
}

void sub_1D6D18E2C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a1;
  v135 = a2;
  sub_1D5C5A148(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
  v126 = v3;
  v125 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v124 = &v123 - v5;
  v130 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v130, v6);
  v131 = (&v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6D1C448(0, qword_1EDF1EF40, type metadata accessor for FormatOptionsNodeStatementResult);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v129 = (&v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v127 = (&v123 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v128 = (&v123 - v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v123 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v123 - v23);
  v133 = type metadata accessor for FormatOptionsNodeStatementEvaluation(0);
  v134 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v25);
  v132 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D1C448(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v123 - v33;
  v35 = type metadata accessor for FormatOptionsNodeStatementResult(0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = (&v123 - v41);
  MEMORY[0x1EEE9AC00](v43, v44);
  v48 = (&v123 - v47);
  v49 = *v2;
  v50 = *(v2 + 8);
  v52 = *(v2 + 16);
  v51 = *(v2 + 24);
  v54 = *(v2 + 32);
  v53 = *(v2 + 40);
  v55 = *(v2 + 48);
  v56 = ((4 * *(v2 + 50)) | (v55 >> 11) & 3);
  if (v56 > 3)
  {
    if (((4 * *(v2 + 50)) | (v55 >> 11) & 3) <= 5u)
    {
      if (v56 != 4)
      {
        v97 = *(v45 + 24);
        v98 = v49;
        v99 = v54;
        v100 = v51;
        v101 = v50;
        v102 = type metadata accessor for FormatVersionRequirement(0);
        (*(*(v102 - 8) + 56))(v38 + v97, 1, 1, v102);
        v103 = swift_allocObject();
        *(v103 + 16) = v98;
        *(v103 + 24) = v101;
        *(v103 + 32) = v52;
        *(v103 + 39) = HIBYTE(v52);
        *(v103 + 37) = HIDWORD(v52) >> 8;
        *(v103 + 33) = v52 >> 8;
        *(v103 + 40) = v100;
        *(v103 + 48) = v99;
        *v38 = v103 | 0x1000000000000000;
        v38[1] = 1;
        v104 = v132;
        sub_1D6D1C514(v38, v132, type metadata accessor for FormatOptionsNodeStatementResult);
        v105 = v133;
        swift_storeEnumTagMultiPayload();
        v106 = v104;
        v107 = v135;
        sub_1D6D1C514(v106, v135, type metadata accessor for FormatOptionsNodeStatementEvaluation);
        (*(v134 + 56))(v107, 0, 1, v105);

        return;
      }

      v77 = v46;
      v78 = v45;
      *&v140 = *v2;
      *(&v140 + 1) = v50;
      LOBYTE(v141) = v52;
      BYTE7(v141) = HIBYTE(v52);
      *(&v141 + 5) = HIDWORD(v52) >> 8;
      *(&v141 + 1) = v52 >> 8;
      *(&v141 + 1) = v51;
      *v142 = v54;
      *&v142[8] = v53;
      *&v142[16] = v55 & 0xE7FF;
      v79 = v128;
      v80 = v137;
      sub_1D7044CB4(v136, v128);
      if (v80)
      {
        return;
      }
    }

    else
    {
      if (v56 != 6)
      {
        v57 = v137;
        v58 = v136;
        if (v56 == 7)
        {
          v59 = v46;
          v60 = v45;
          *&v140 = *v2;
          v61 = v129;
          sub_1D60B1FD0(v136, v129);
          if (v57)
          {
            return;
          }

          if ((*(v59 + 48))(v61, 1, v60) == 1)
          {
            v62 = v61;
LABEL_32:
            sub_1D6D1C49C(v62);
            (*(v134 + 56))(v135, 1, 1, v133);
            return;
          }

          v110 = v61;
          goto LABEL_42;
        }

        v89 = v49[2];
        v145[0] = v49[1];
        v145[1] = v89;
        *v146 = v49[3];
        *&v146[11] = *(v49 + 59);
        v90 = v131;
        sub_1D606818C(v136, v131);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v91 = *v90;
          sub_1D5EB9920(0);
          v93 = v125;
          v94 = v124;
          v95 = v126;
          (*(v125 + 32))(v124, v90 + *(v92 + 48), v126);
          sub_1D6D1C57C(v145, &v140, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
          sub_1D6F7C7B8(v94, v91, v143);
          v140 = v143[0];
          v141 = v143[1];
          *v142 = *v144;
          *&v142[15] = *&v144[15];
          sub_1D6D18E2C(v58, v135);
          (*(v93 + 8))(v94, v95);
          sub_1D6D1A3E8(v145, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);

          v96 = v143;
        }

        else
        {
          v109 = *v90;
          v108 = v90[1];
          sub_1D6D1C57C(v145, &v140, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
          sub_1D6D1A464(v108, v109, v138);
          if (v57)
          {

            sub_1D6D1A3E8(v145, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
            return;
          }

          v140 = v138[0];
          v141 = v138[1];
          *v142 = *v139;
          *&v142[15] = *&v139[15];
          sub_1D6D18E2C(v58, v135);

          sub_1D6D1A3E8(v145, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
          v96 = &v140;
        }

        sub_1D5CF603C(v96);
        return;
      }

      v77 = v46;
      v78 = v45;
      *&v140 = *v2;
      v79 = v127;
      v81 = v137;
      sub_1D6033ABC(v136, v127);
      if (v81)
      {
        return;
      }
    }

    if ((*(v77 + 48))(v79, 1, v78) == 1)
    {
      v62 = v79;
      goto LABEL_32;
    }

    v110 = v79;
LABEL_42:
    v111 = v132;
    sub_1D6D1C514(v110, v132, type metadata accessor for FormatOptionsNodeStatementResult);
    v112 = v133;
    swift_storeEnumTagMultiPayload();
    v113 = v111;
    v114 = v135;
    sub_1D6D1C514(v113, v135, type metadata accessor for FormatOptionsNodeStatementEvaluation);
    (*(v134 + 56))(v114, 0, 1, v112);
    return;
  }

  if (((4 * *(v2 + 50)) | (v55 >> 11) & 3) <= 1u)
  {
    v63 = *v2;
    v64 = v45;
    v65 = v137;
    if ((4 * *(v2 + 50)) | (v55 >> 11) & 3)
    {
      v82 = v30;
      v83 = sub_1D6C4356C();
      v84 = sub_1D5E02AFC(v83, v63);

      if (!v65)
      {
        v85 = type metadata accessor for FormatVersionRequirement(0);
        v86 = 1;
        (*(*(v85 - 8) + 56))(v82, 1, 1, v85);
        v87 = swift_allocObject();
        *(v87 + 16) = v84;
        *(v87 + 24) = MEMORY[0x1E69E7CC0];
        sub_1D6D1BABC(v63);
        if (v88)
        {
          if (*(v88 + 16))
          {
            v86 = sub_1D5B86020(v88);
          }

          else
          {

            v86 = 1;
          }
        }

        *v42 = v87 | 0x3000000000000000;
        v42[1] = v86;
        sub_1D5EA3AFC(v82, v42 + *(v64 + 24));
        v119 = v132;
        sub_1D6D1C514(v42, v132, type metadata accessor for FormatOptionsNodeStatementResult);
        v120 = v133;
        swift_storeEnumTagMultiPayload();
        v121 = v119;
        v122 = v135;
        sub_1D6D1C514(v121, v135, type metadata accessor for FormatOptionsNodeStatementEvaluation);
        (*(v134 + 56))(v122, 0, 1, v120);
      }
    }

    else
    {
      v66 = sub_1D6C4356C();
      v67 = v65;
      v68 = sub_1D5E03020(v66, v63);

      if (!v67)
      {
        v69 = type metadata accessor for FormatVersionRequirement(0);
        v70 = 1;
        (*(*(v69 - 8) + 56))(v34, 1, 1, v69);
        v71 = swift_allocObject();
        v72 = MEMORY[0x1E69E7CC0];
        *(v71 + 16) = v68;
        *(v71 + 24) = v72;
        v73 = sub_1D6D1BC38(v63);
        if (v73)
        {
          if (*(v73 + 16))
          {
            v70 = sub_1D5B86020(v73);
          }

          else
          {

            v70 = 1;
          }
        }

        *v48 = v71 | 0x4000000000000000;
        v48[1] = v70;
        sub_1D5EA3AFC(v34, v48 + *(v64 + 24));
        v115 = v132;
        sub_1D6D1C514(v48, v132, type metadata accessor for FormatOptionsNodeStatementResult);
        v116 = v133;
        swift_storeEnumTagMultiPayload();
        v117 = v115;
        v118 = v135;
        sub_1D6D1C514(v117, v135, type metadata accessor for FormatOptionsNodeStatementEvaluation);
        (*(v134 + 56))(v118, 0, 1, v116);
      }
    }

    return;
  }

  v74 = v46;
  v75 = v45;
  v76 = v137;
  if (v56 == 2)
  {
    *&v140 = *v2;
    *(&v140 + 1) = v50;
    LOBYTE(v141) = v52;
    BYTE7(v141) = HIBYTE(v52);
    *(&v141 + 5) = HIDWORD(v52) >> 8;
    *(&v141 + 1) = v52 >> 8;
    *(&v141 + 1) = v51;
    *v142 = v54;
    *&v142[8] = v53;
    *&v142[16] = v55 & 0xE7FF;
    sub_1D690A6D4(v136, v24);
    if (v76)
    {
      return;
    }

    if ((*(v74 + 48))(v24, 1, v75) == 1)
    {
      v62 = v24;
      goto LABEL_32;
    }

    v110 = v24;
    goto LABEL_42;
  }

  *&v140 = *v2;
  *(&v140 + 1) = v50;
  LOBYTE(v141) = v52 & 1;
  sub_1D6067C78(v136, v20);
  if (!v76)
  {
    if ((*(v74 + 48))(v20, 1, v75) == 1)
    {
      v62 = v20;
      goto LABEL_32;
    }

    v110 = v20;
    goto LABEL_42;
  }
}

uint64_t static FormatOptionsNodeStatementValue.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v35 = *a1;
  v36 = v2;
  v3 = a2[1];
  v38 = *a2;
  v39 = v3;
  v5 = *a2;
  v4 = a2[1];
  *v40 = a2[2];
  *v37 = a1[2];
  v6 = *v37;
  *&v37[15] = *(a1 + 47);
  *&v40[15] = *(a2 + 47);
  v41[0] = v35;
  v41[1] = v2;
  *v42 = v6;
  *(&v42[1] + 7) = *&v37[15];
  *&v42[3] = v5;
  *&v42[5] = v4;
  *v43 = a2[2];
  *&v43[15] = *(a2 + 47);
  v7 = v35;
  v8 = v2;
  v9 = *(&v36 + 1) | ((*(&v36 + 5) | (BYTE7(v2) << 16)) << 32);
  v10 = *(&v2 + 1);
  v11 = *&v37[15] >> 8;
  v12 = ((4 * v37[18]) | (v11 >> 11) & 3);
  if (((4 * v37[18]) | (*&v37[16] >> 11) & 3) <= 3u)
  {
    if (((4 * v37[18]) | ((*&v37[15] >> 8) >> 11) & 3) <= 1u)
    {
      if ((4 * v37[18]) | ((*&v37[15] >> 8) >> 11) & 3)
      {
        if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 1)
        {
          v15 = v38;
          sub_1D5CF5DBC(&v38, v32);
          sub_1D5CF5DBC(&v35, v32);
          sub_1D633A310(v7, v15);
          goto LABEL_21;
        }
      }

      else if (!((4 * v40[18]) | (*&v40[16] >> 11) & 3))
      {
        v14 = v38;
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        v13 = sub_1D633D10C(v7, v14);
        goto LABEL_21;
      }

      goto LABEL_34;
    }

    if (v12 == 2)
    {
      if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 2)
      {
        v29 = v35;
        LOBYTE(v30) = v2;
        *(&v30 + 1) = *(&v36 + 1);
        BYTE7(v30) = (*(&v36 + 1) | ((*(&v36 + 5) | (BYTE7(v2) << 16)) << 32)) >> 48;
        *(&v30 + 5) = *(&v36 + 5);
        *(&v30 + 1) = *(&v2 + 1);
        *v31 = *v37;
        *&v31[16] = v11 & 0xE7FF;
        v25 = v38;
        v26 = v39;
        v27 = *v40;
        v28 = *&v40[16] & 0xE7FF;
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        v13 = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v29, &v25);
        goto LABEL_21;
      }

      goto LABEL_34;
    }

    if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 3)
    {
      v17 = v39;
      if (v35 == v38)
      {
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        sub_1D6D1C604(v41, sub_1D6D1A38C);
        if ((v8 ^ v17))
        {
LABEL_36:
          v16 = 0;
          return v16 & 1;
        }
      }

      else
      {
        v24 = sub_1D72646CC();
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        sub_1D6D1C604(v41, sub_1D6D1A38C);
        if (v24 & 1) == 0 || ((v8 ^ v17))
        {
          goto LABEL_36;
        }
      }

LABEL_44:
      v16 = 1;
      return v16 & 1;
    }

    goto LABEL_34;
  }

  if (((4 * v37[18]) | ((*&v37[15] >> 8) >> 11) & 3) <= 5u)
  {
    if (v12 == 4)
    {
      if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 4)
      {
        v29 = v35;
        LOBYTE(v30) = v2;
        *(&v30 + 1) = *(&v36 + 1);
        BYTE7(v30) = (*(&v36 + 1) | ((*(&v36 + 5) | (BYTE7(v2) << 16)) << 32)) >> 48;
        *(&v30 + 5) = *(&v36 + 5);
        *(&v30 + 1) = *(&v2 + 1);
        *v31 = *v37;
        *&v31[16] = v11 & 0xE7FF;
        v25 = v38;
        v26 = v39;
        v27 = *v40;
        v28 = *&v40[16] & 0xE7FF;
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        v13 = _s8NewsFeed33FormatOptionsNodeStatementBindingO2eeoiySbAC_ACtFZ_0(&v29, &v25);
        goto LABEL_21;
      }

      goto LABEL_34;
    }

    if ((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 5 && (v35 == v38 || (sub_1D72646CC()))
    {
      if (__PAIR128__(v10, v8 | (v9 << 8)) == v39)
      {
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        sub_1D6D1C604(v41, sub_1D6D1A38C);
        v16 = 1;
        return v16 & 1;
      }

      v22 = sub_1D72646CC();
      sub_1D5CF5DBC(&v38, v32);
      sub_1D5CF5DBC(&v35, v32);
LABEL_43:
      sub_1D6D1C604(v41, sub_1D6D1A38C);
      if ((v22 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_44;
    }

LABEL_34:
    sub_1D5CF5DBC(&v38, v32);
    sub_1D5CF5DBC(&v35, v32);
LABEL_35:
    sub_1D6D1C604(v41, sub_1D6D1A38C);
    goto LABEL_36;
  }

  if (v12 == 6)
  {
    if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 6)
    {
      *&v29 = v35;
      *&v25 = v38;
      sub_1D5CF5DBC(&v38, v32);
      sub_1D5CF5DBC(&v35, v32);
      v13 = static FormatDateTime.== infix(_:_:)(&v29, &v25);
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  if (v12 != 7)
  {
    v18 = *(v35 + 16);
    v19 = *(v35 + 40);
    v33[0] = *(v35 + 24);
    v33[1] = v19;
    v34[0] = *(v35 + 56);
    *(v34 + 15) = *(v35 + 71);
    if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) != 8)
    {
      goto LABEL_34;
    }

    v20 = *(v38 + 32);
    *v32 = *(v38 + 16);
    *&v32[16] = v20;
    *&v32[32] = *(v38 + 48);
    *&v32[43] = *(v38 + 59);
    v21 = *v32;
    sub_1D5CF5DBC(&v38, &v29);
    sub_1D5CF5DBC(&v35, &v29);
    sub_1D6D1C57C(v32, &v29, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    if ((sub_1D633CF14(v18, v21) & 1) == 0)
    {
      sub_1D6D1A3E8(v32, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
      goto LABEL_35;
    }

    v29 = *&v32[8];
    v30 = *&v32[24];
    *v31 = *&v32[40];
    *&v31[15] = *&v32[55];
    v22 = static FormatOptionsNodeStatementValue.== infix(_:_:)(v33, &v29);
    sub_1D6D1A3E8(v32, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    goto LABEL_43;
  }

  if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) != 7)
  {
    goto LABEL_34;
  }

  *&v29 = v35;
  *&v25 = v38;
  sub_1D5CF5DBC(&v38, v32);
  sub_1D5CF5DBC(&v35, v32);
  v13 = static FormatURL.== infix(_:_:)(&v29, &v25);
LABEL_21:
  v16 = v13;
  sub_1D6D1C604(v41, sub_1D6D1A38C);
  return v16 & 1;
}

void sub_1D6D1A38C()
{
  if (!qword_1EC895120)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC895120);
    }
  }
}

uint64_t sub_1D6D1A3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C5A148(0, a2, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6D1A464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v4;
  v33 = a3;
  v8 = sub_1D725BC7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v46 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - v14;
  v32 = v3;
  v45 = *v3;
  v16 = *(v45 + 16);

  if (!v16)
  {
LABEL_10:
    sub_1D6D1C604(&v45, sub_1D6D1C664);
    v25 = *(v32 + 3);
    v43[0] = *(v32 + 1);
    v43[1] = v25;
    *v44 = *(v32 + 5);
    v26 = *v44;
    *&v44[15] = *(v32 + 55);
    v27 = *&v44[15];
    v28 = v33;
    *v33 = v43[0];
    v28[1] = v25;
    v28[2] = v26;
    *(v28 + 47) = v27;
    return sub_1D6D1C57C(v43, v42, qword_1EDF2EEF8, type metadata accessor for FormatSwitchValue.DefaultValue);
  }

  v18 = (v17 + 32);
  v38 = (v9 + 88);
  v37 = *MEMORY[0x1E69D6B20];
  v36 = *MEMORY[0x1E69D6B28];
  v34 = *MEMORY[0x1E69D6B30];
  v39 = (v9 + 8);
  while (1)
  {
    v20 = v18[1];
    v19 = v18[2];
    v21 = *v18;
    *&v42[43] = *(v18 + 43);
    *&v42[16] = v20;
    *&v42[32] = v19;
    *v42 = v21;
    v41 = v21;
    sub_1D6D1C57C(v42, v40, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);

    sub_1D71C3968(a1, a2, v15);

    if (v5)
    {
      sub_1D6D1A3E8(v42, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
      return sub_1D6D1C604(&v45, sub_1D6D1C664);
    }

    v22 = v46;
    (*(v9 + 16))(v46, v15, v8);
    v23 = (*v38)(v22, v8);
    if (v23 == v37)
    {
      (*v39)(v15, v8);
      sub_1D6D1C604(&v45, sub_1D6D1C664);
      sub_1D5CF5DBC(&v42[8], v40);
      result = sub_1D6D1A3E8(v42, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
      v30 = *&v42[24];
      v31 = v33;
      *v33 = *&v42[8];
      v31[1] = v30;
      v31[2] = *&v42[40];
      *(v31 + 47) = *&v42[55];
      return result;
    }

    if (v23 != v36)
    {
      break;
    }

    (*v39)(v15, v8);
    sub_1D6D1A3E8(v42, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
LABEL_4:
    v18 += 4;
    if (!--v16)
    {
      goto LABEL_10;
    }
  }

  if (v23 != v34)
  {
    v35 = 0;
    v24 = *v39;
    (*v39)(v15, v8);
    sub_1D6D1A3E8(v42, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
    v24(v46, v8);
    v5 = v35;
    goto LABEL_4;
  }

  sub_1D6D1C604(&v45, sub_1D6D1C664);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57420(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1D6D1A3E8(v42, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
  return (*v39)(v15, v8);
}

uint64_t sub_1D6D1A9C8()
{
  v1 = *(v0 + 24);
  v2 = ((4 * *(v0 + 50)) | (v1 >> 11) & 3);
  if (v2 <= 3)
  {
    if (((4 * *(v0 + 50)) | (v1 >> 11) & 3) > 1u)
    {
      if (v2 == 2)
      {
        v3 = &unk_1F5118A60;
      }

      else
      {
        v3 = &unk_1F5118A88;
      }
    }

    else if ((4 * *(v0 + 50)) | (v1 >> 11) & 3)
    {
      v3 = &unk_1F5118A38;
    }

    else
    {
      v3 = &unk_1F5118A10;
    }

LABEL_26:

    return sub_1D5E28D48(v3);
  }

  if (((4 * *(v0 + 50)) | (v1 >> 11) & 3) <= 5u)
  {
    if (v2 == 4)
    {
      v4 = v1 >> 13;
      if (v1 >> 13 <= 1)
      {
        if (v4)
        {
          v3 = &unk_1F5118AD8;
        }

        else
        {
          v3 = &unk_1F5118AB0;
        }
      }

      else if (v4 == 2)
      {
        v3 = &unk_1F5118B00;
      }

      else if (v4 == 3)
      {
        v3 = &unk_1F5118B28;
      }

      else
      {
        v3 = &unk_1F5118B50;
      }
    }

    else
    {
      v3 = &unk_1F5118B78;
    }

    goto LABEL_26;
  }

  if (v2 == 6)
  {
    v3 = &unk_1F5118BA0;
    goto LABEL_26;
  }

  if (v2 == 7)
  {
    v3 = &unk_1F5118BC8;
    goto LABEL_26;
  }

  v5 = *v0;
  v6 = *(*v0 + 32);
  v22[0] = *(*v0 + 16);
  v22[1] = v6;
  v23[0] = *(v5 + 48);
  *(v23 + 11) = *(v5 + 59);
  v7 = *(v5 + 40);
  v19 = *(v5 + 24);
  v20 = v7;
  v21[0] = *(v5 + 56);
  *(v21 + 15) = *(v5 + 71);
  sub_1D6D1C57C(v22, v17, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
  result = sub_1D6D1A9C8();
  v9 = result;
  v10 = *&v22[0];
  v11 = MEMORY[0x1E69E7CC0];
  *&v19 = MEMORY[0x1E69E7CC0];
  v12 = *(*&v22[0] + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *&v22[0] + 40;
    while (v13 < *(v10 + 16))
    {
      v17[0] = *v14;
      v17[1] = *(v14 + 16);
      v18[0] = *(v14 + 32);
      *(v18 + 15) = *(v14 + 47);
      ++v13;
      v15 = sub_1D6D1A9C8();
      result = sub_1D6988038(v15);
      v14 += 64;
      if (v12 == v13)
      {
        v11 = v19;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v16 = sub_1D5EEFD2C(v11, v9);

    sub_1D6D1A3E8(v22, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    return v16;
  }

  return result;
}

uint64_t FormatOptionsNodeStatementValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v75 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v76 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v79 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v77 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v84 = &v75 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v83 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v75 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v75 - v30;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v1 + 8);
  v88 = *v1;
  v37 = *(v1 + 24);
  v85 = *(v1 + 16);
  v86 = v36;
  v39 = *(v1 + 32);
  v38 = *(v1 + 40);
  v81 = v37;
  v82 = v39;
  v80 = v38;
  v40 = *(v1 + 48);
  v41 = *(v1 + 50);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = sub_1D5C30408();
  v87 = v35;
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementValue, &type metadata for FormatCodingKeys, v45, v42, &type metadata for FormatOptionsNodeStatementValue, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v43, v35, v44, &off_1F51F6BF8);
  v46 = ((4 * v41) | (v40 >> 11) & 3);
  if (v46 > 3)
  {
    if (((4 * v41) | (v40 >> 11) & 3) <= 5u)
    {
      if (v46 == 4)
      {
        *&v96 = v88;
        *(&v96 + 1) = v86;
        v97 = v85;
        v98 = v81;
        v99 = v82;
        v100 = v80;
        v101 = v40;
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v60 = sub_1D725BD1C();
        v61 = __swift_project_value_buffer(v60, qword_1EDFFCDE0);
        v50 = v77;
        (*(*(v60 - 8) + 16))(v77, v61, v60);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = v87;
        sub_1D6389B0C(0, &v96, v50);
      }

      else
      {
        *&v104 = v88;
        *(&v104 + 1) = v86;
        v105 = v85;
        v106 = v81;
        v107 = v82;
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v72 = sub_1D725BD1C();
        v73 = __swift_project_value_buffer(v72, qword_1EDFFCE98);
        v50 = v76;
        (*(*(v72 - 8) + 16))(v76, v73, v72);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = v87;
        sub_1D6389E9C(6, &v104, v50);
      }
    }

    else if (v46 == 6)
    {
      v47 = v87;
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCE98);
      v50 = v75;
      (*(*(v62 - 8) + 16))(v75, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638A03C(7, v88, v50);
    }

    else
    {
      v47 = v87;
      if (v46 == 7)
      {
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v48 = sub_1D725BD1C();
        v49 = __swift_project_value_buffer(v48, qword_1EDFFCE98);
        v50 = v78;
        (*(*(v48 - 8) + 16))(v78, v49, v48);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D638A1D0(8, v88, v50);
      }

      else
      {
        v69 = v88[2];
        v102[0] = v88[1];
        v102[1] = v69;
        v103[0] = v88[3];
        *(v103 + 11) = *(v88 + 59);
        sub_1D6D1C57C(v102, &v89, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v70 = sub_1D725BD1C();
        v71 = __swift_project_value_buffer(v70, qword_1EDFFCDE0);
        v50 = v79;
        (*(*(v70 - 8) + 16))(v79, v71, v70);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6389CB4(4, v102, v50);
        sub_1D6D1A3E8(v102, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
      }
    }

LABEL_36:
    sub_1D6D1C604(v50, type metadata accessor for FormatVersionRequirement);
    v57 = v47;
    return sub_1D6D1C604(v57, sub_1D5D30DC4);
  }

  v51 = v31;
  v52 = v27;
  v50 = v83;
  v53 = v84;
  if (v46 > 1)
  {
    if (v46 == 2)
    {
      *&v90 = v88;
      *(&v90 + 1) = v86;
      v91 = v85;
      v92 = v81;
      v93 = v82;
      v94 = v80;
      v95 = v40 & 0xE7FF;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCD68);
      (*(*(v58 - 8) + 16))(v50, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v47 = v87;
      sub_1D63897CC(5, &v90, v50);
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD50);
      v50 = v53;
      (*(*(v67 - 8) + 16))(v53, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v47 = v87;
      sub_1D6389974(3, v88, v86, v85 & 1, v53);
    }

    goto LABEL_36;
  }

  if (v46)
  {
    v64 = v87;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v65 = sub_1D725BD1C();
    v66 = __swift_project_value_buffer(v65, qword_1EDFFCD18);
    (*(*(v65 - 8) + 16))(v52, v66, v65);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6389600(2, v88, v52);
    sub_1D6D1C604(v52, type metadata accessor for FormatVersionRequirement);
    v57 = v64;
  }

  else
  {
    v54 = v87;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v55 = sub_1D725BD1C();
    v56 = __swift_project_value_buffer(v55, qword_1EDFFCD18);
    (*(*(v55 - 8) + 16))(v51, v56, v55);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6389434(1, v88, v51);
    sub_1D6D1C604(v51, type metadata accessor for FormatVersionRequirement);
    v57 = v54;
  }

  return sub_1D6D1C604(v57, sub_1D5D30DC4);
}

uint64_t sub_1D6D1B6E0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x676E69646E6962;
    v6 = 0x74616F6C66;
    if (a1 != 2)
    {
      v6 = 0x6E6F6974706FLL;
    }

    if (a1)
    {
      v5 = 0x72656765746E69;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1836412517;
    v2 = 1702125924;
    if (a1 != 7)
    {
      v2 = 7107189;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x686374697773;
    if (a1 != 4)
    {
      v3 = 0x676E69727473;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6D1B7E0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694D938(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6D1B830(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694D938(v4, v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D6D1B874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6D1B6E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6D1B8F0()
{
  v1 = *v0;
  sub_1D7264A0C();
  if (v1 == 12)
  {
    MEMORY[0x1DA6FC0B0](0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](1);
    FormatOptionType.rawValue.getter();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

double sub_1D6D1B978(uint64_t a1)
{
  if (*v1 == 12)
  {
    MEMORY[0x1DA6FC0B0](0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](1);
    FormatOptionType.rawValue.getter();
    sub_1D72621EC();
  }

  return result;
}

uint64_t sub_1D6D1BA18(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  if (v2 == 12)
  {
    MEMORY[0x1DA6FC0B0](0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](1);
    FormatOptionType.rawValue.getter();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

void sub_1D6D1BABC(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = v5;
    v8 = *v5;
    v5 += 16;
    ++v1;
    if ((v8 & 1) == 0)
    {
      v9 = *(v7 - 1);
      if (v9 < 0)
      {
        v11 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        sub_1D5C3C480();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        *(inited + 32) = v11;
        *(inited + 40) = v10;
        v13 = *(v4 + 2);
        sub_1D62B72CC(v9, 0);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v15 = *(v4 + 3) >> 1, v15 <= v13))
        {
          v4 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v13 + 1, 1, v4);
          v15 = *(v4 + 3) >> 1;
        }

        if (v15 > *(v4 + 2))
        {
          swift_arrayInitWithCopy();

          ++*(v4 + 2);
          sub_1D62B72BC(v9, 0);
          v1 = v6;
          goto LABEL_2;
        }

        goto LABEL_16;
      }
    }
  }
}

uint64_t sub_1D6D1BC38(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    v4 = result + 49;
LABEL_3:
    v5 = (v4 + 24 * v2);
    while (v2 < v1)
    {
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_19;
      }

      if ((*v5 & 1) == 0)
      {
        if (*(v5 - 1))
        {
          v7 = *(v5 - 17);
          v8 = *(v5 - 1);
          v9 = *(v5 - 9);
          sub_1D5C3C480();
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D7273AE0;
          *(inited + 32) = v7;
          *(inited + 40) = v9;
          v11 = *(v3 + 16);
          sub_1D5E04C58(v7, v9, v8, 0);
          sub_1D5E04CC4(v7, v9, 1);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0 || (v12 = *(v3 + 24) >> 1, v12 <= v11))
          {
            result = sub_1D5B858EC(result, v11 + 1, 1, v3);
            v3 = result;
            v12 = *(result + 24) >> 1;
          }

          if (v12 > *(v3 + 16))
          {
            swift_arrayInitWithCopy();

            ++*(v3 + 16);
            result = sub_1D5E04C68(v7, v9, v8, 0);
            v2 = v6;
            if (v6 != v1)
            {
              goto LABEL_3;
            }

            return v3;
          }

LABEL_20:
          __break(1u);
          return result;
        }

        result = sub_1D5E04C68(*(v5 - 17), *(v5 - 9), *(v5 - 1), 0);
      }

      ++v2;
      v5 += 24;
      if (v6 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D6D1BE08()
{
  result = qword_1EDF2ED80;
  if (!qword_1EDF2ED80)
  {
    sub_1D5C5A148(255, &qword_1EDF2ED78, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED80);
  }

  return result;
}

void sub_1D6D1BE98(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8)
{
  v9 = ((4 * a8) | (a7 >> 11) & 3);
  if (v9 <= 3)
  {
    if (((4 * a8) | (a7 >> 11) & 3) > 1u)
    {
      if (v9 == 2)
      {
        v10 = a7 & 0xFFFFE7FF;

        sub_1D5E1DE98(a1, a2, a3, a4, a5, a6, v10);
        return;
      }

      if (v9 != 3)
      {
        return;
      }
    }

LABEL_12:

    return;
  }

  if (((4 * a8) | (a7 >> 11) & 3) <= 5u)
  {
    if (v9 == 4)
    {

      sub_1D6D1BFC8(a1, a2, a3, a4, a5, a6, a7);
      return;
    }

    if (v9 != 5)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v9 == 6)
  {

    sub_1D5F33D8C(a1);
  }

  else
  {
    if (v9 == 7)
    {
    }

    else
    {
      if (v9 != 8)
      {
        return;
      }
    }
  }
}

void sub_1D6D1BFC8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  v7 = a7 >> 13;
  if (v7 == 4 || v7 == 3)
  {
    sub_1D5D28C84(a1, a2, a3, a4);
  }

  else if (v7 == 2)
  {

    sub_1D5E1DF18(a1, a2, a3, a4, a5, a6, a7, HIBYTE(a7) & 0x1F);
  }
}

unint64_t sub_1D6D1C018()
{
  result = qword_1EDF1E660;
  if (!qword_1EDF1E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E660);
  }

  return result;
}

unint64_t sub_1D6D1C06C(void *a1)
{
  a1[1] = sub_1D5C59674();
  a1[2] = sub_1D66A7A58();
  result = sub_1D6D1C0A4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D1C0A4()
{
  result = qword_1EDF1F880;
  if (!qword_1EDF1F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F880);
  }

  return result;
}

uint64_t sub_1D6D1C108(uint64_t result, unsigned int a2)
{
  *(result + 48) = *(result + 48) & 0xE7FF | ((a2 & 3) << 11);
  *(result + 50) = a2 >> 2;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatOptionsNodeStatementValue.CodingValidationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_20;
  }

  v2 = a2 + 12;
  if (a2 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 12;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 12;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 12;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 0xC;
  v9 = v7 - 12;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FormatOptionsNodeStatementValue.CodingValidationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 12;
  if (a3 + 12 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF4)
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D6D1C28C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xC)
  {
    return v1 - 11;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D6D1C2A0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 11;
  }

  return result;
}

unint64_t sub_1D6D1C2D4()
{
  result = qword_1EC895128;
  if (!qword_1EC895128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895128);
  }

  return result;
}

unint64_t sub_1D6D1C32C()
{
  result = qword_1EDF1F890;
  if (!qword_1EDF1F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F890);
  }

  return result;
}

uint64_t sub_1D6D1C380(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 12)
  {
    if (v2 == 12)
    {
      v3 = 1;
      return v3 & 1;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if (v2 == 12)
  {
    goto LABEL_5;
  }

  v4 = FormatOptionType.rawValue.getter();
  v6 = v5;
  if (v4 == FormatOptionType.rawValue.getter() && v6 == v7)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D72646CC();
  }

  return v3 & 1;
}

void sub_1D6D1C448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6D1C49C(uint64_t a1)
{
  sub_1D6D1C448(0, qword_1EDF1EF40, type metadata accessor for FormatOptionsNodeStatementResult);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6D1C514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D1C57C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C5A148(0, a3, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6D1C604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6D1C664(uint64_t a1)
{
  if (!qword_1EDF1B280)
  {
    sub_1D5C5A148(255, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1B280);
    }
  }
}

unint64_t sub_1D6D1C708()
{
  result = qword_1EC895130;
  if (!qword_1EC895130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895130);
  }

  return result;
}

id sub_1D6D1C760()
{
  type metadata accessor for Images();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDF1BB90 = result;
  return result;
}

void sub_1D6D1C7B4()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EDF1BBA8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1CAA0()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EDF05BB0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1CD34()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895150 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1CE70()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EDF05B98 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1CFAC()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EDF05BA8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D158()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895160 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D26C()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895170 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D344(uint64_t a1, void *a2)
{
  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D3E8()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EDF05BE8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D4CC()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895178 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D5A4(uint64_t a1, void *a2)
{
  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D648()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EDF1BBD0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1DA54()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895190 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1DAF0()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895198 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1DB8C()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC8951A0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1DE88(uint64_t a1, void *a2, void **a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v11 = a3;
    swift_once();
    a3 = v11;
  }

  v6 = *a3;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 configurationWithPointSize:4 weight:3 scale:17.0];
  v10 = [v8 imageByApplyingSymbolConfiguration_];

  *a4 = v10;
}

id sub_1D6D1DF68(void *a1, id *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v3 = *a2;
  v4 = *a2;
  return v3;
}

void sub_1D6D1E000(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, void *a5)
{
  v7 = sub_1D726203C();
  v8 = [objc_opt_self() *a4];

  if (v8)
  {
    *a5 = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E104(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDF1BB90;
  v6 = sub_1D726203C();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  if (v7)
  {
    *a4 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E1EC()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951C0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E2DC()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EDF05CC0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E3CC()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951C8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E4BC()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EDF05C40 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E5AC()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951D0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E69C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951D8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E78C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951E0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E87C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951E8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E96C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951F0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1EA5C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951F8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1EB4C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC895200 = v2;
  }

  else
  {
    __break(1u);
  }
}

id Images.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Images.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Images.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *_s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(void *a1, void *a2)
{
  if (qword_1EDF05CF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1EDF05D00;
  if (*(off_1EDF05D00 + 2) && (v5 = sub_1D6D62BC4(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);

    v8 = sub_1D5EC4D50(a2, v7);
    swift_endAccess();

    if (v8)
    {
      return v8;
    }
  }

  else
  {
    swift_endAccess();
  }

  v9 = [a1 imageWithRenderingMode_];
  v8 = sub_1D726366C();

  swift_beginAccess();
  v10 = off_1EDF05D00;
  if (*(off_1EDF05D00 + 2) && (v11 = sub_1D6D62BC4(a1), (v12 & 1) != 0))
  {
    v13 = *(v10[7] + 8 * v11);
    swift_endAccess();

    if ((v13 & 0xC000000000000001) == 0)
    {
LABEL_11:
      v14 = v8;
LABEL_17:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D6D78298(v8, a2, isUniquelyReferenced_nonNull_native);
      swift_beginAccess();
      v18 = a1;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = off_1EDF05D00;
      off_1EDF05D00 = 0x8000000000000000;
      sub_1D6D7825C(v13, v18, v19);

      off_1EDF05D00 = v20;
      swift_endAccess();
      return v8;
    }
  }

  else
  {
    swift_endAccess();
    v13 = MEMORY[0x1E69E7CC8];
    if ((MEMORY[0x1E69E7CC8] & 0xC000000000000001) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v13 >= 0)
  {
    v13 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v15 = v8;
  result = sub_1D7263BFC();
  if (!__OFADD__(result, 1))
  {
    v13 = sub_1D5F58C94(v13, result + 1);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1D6D1EF58(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  if (v9)
  {
    v10 = [objc_opt_self() configurationWithPointSize:a5 weight:a2];
    v11 = [v9 imageWithConfiguration_];

    [v11 imageWithTintColor:a1 renderingMode:1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t FCPuzzleTypeProviding.isAllowed.getter()
{
  if ([v0 isPublic])
  {
    return 1;
  }

  else
  {
    return NFInternalBuild();
  }
}

char *FCPuzzleTypeProviding.contentSelectors.getter()
{
  v1 = v0;
  v2 = [v0 puzzlePrimaryColor];
  if (v2)
  {

    v3 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1D5B858EC((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[16 * v5];
    *(v6 + 4) = 0xD00000000000001DLL;
    *(v6 + 5) = 0x80000001D73F15E0;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v7 = [v0 themeColor];
  if (v7)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_1D5B858EC((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = 0xD00000000000001BLL;
    *(v10 + 5) = 0x80000001D73F15C0;
  }

  v11 = [v0 darkStylePuzzlePrimaryColor];
  if (v11)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    if (v13 >= v12 >> 1)
    {
      v3 = sub_1D5B858EC((v12 > 1), v13 + 1, 1, v3);
    }

    *(v3 + 2) = v13 + 1;
    v14 = &v3[16 * v13];
    *(v14 + 4) = 0xD000000000000022;
    *(v14 + 5) = 0x80000001D73F1590;
  }

  v15 = [v0 darkStyleThemeColor];
  if (v15)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v17 = *(v3 + 2);
    v16 = *(v3 + 3);
    if (v17 >= v16 >> 1)
    {
      v3 = sub_1D5B858EC((v16 > 1), v17 + 1, 1, v3);
    }

    *(v3 + 2) = v17 + 1;
    v18 = &v3[16 * v17];
    *(v18 + 4) = 0xD000000000000020;
    *(v18 + 5) = 0x80000001D73F1560;
  }

  v19 = [v0 orderedNavigationBarThemes];
  if (v19)
  {
    v20 = v19;
    sub_1D632010C();
    v21 = sub_1D726267C();

    v46 = v1;
    if (v21 >> 62)
    {
      v37 = sub_1D7263BFC();
      if (v37 < 0)
      {
        __break(1u);
      }

      v22 = v37;
      if (!v37)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
LABEL_50:

        v1 = v46;
        goto LABEL_51;
      }
    }

    v23 = 0;
    v24 = v21 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v26 = MEMORY[0x1DA6FB460](v23, v21);
      }

      else
      {
        v26 = *(v21 + 8 * v23 + 32);
        swift_unknownObjectRetain();
      }

      v27 = [v26 rankForegroundColor];
      swift_unknownObjectRelease();
      if (v27)
      {
        [v27 red];
        [v27 green];
        [v27 blue];
        [v27 alpha];

        sub_1D7263D4C();

        v28 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v28);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
        }

        v30 = *(v3 + 2);
        v29 = *(v3 + 3);
        if (v30 >= v29 >> 1)
        {
          v3 = sub_1D5B858EC((v29 > 1), v30 + 1, 1, v3);
        }

        *(v3 + 2) = v30 + 1;
        v31 = &v3[16 * v30];
        *(v31 + 4) = 0xD00000000000001BLL;
        *(v31 + 5) = 0x80000001D73F1540;
      }

      if (v24)
      {
        v32 = MEMORY[0x1DA6FB460](v23, v21);
      }

      else
      {
        v32 = *(v21 + 8 * v23 + 32);
        swift_unknownObjectRetain();
      }

      v33 = [v32 rankForegroundDarkModeColor];
      swift_unknownObjectRelease();
      if (v33)
      {
        [v33 red];
        [v33 green];
        [v33 blue];
        [v33 alpha];

        sub_1D7263D4C();

        v34 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v34);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
        }

        v36 = *(v3 + 2);
        v35 = *(v3 + 3);
        if (v36 >= v35 >> 1)
        {
          v3 = sub_1D5B858EC((v35 > 1), v36 + 1, 1, v3);
        }

        *(v3 + 2) = v36 + 1;
        v25 = &v3[16 * v36];
        *(v25 + 4) = 0xD000000000000020;
        *(v25 + 5) = 0x80000001D73F1510;
      }

      ++v23;
    }

    while (v22 != v23);
    goto LABEL_50;
  }

LABEL_51:
  v38 = [v1 kind];
  sub_1D726207C();

  sub_1D726210C();

  sub_1D5BF4D9C();
  v39 = sub_1D7263A6C();
  v41 = v40;

  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](v39, v41);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
  }

  v43 = *(v3 + 2);
  v42 = *(v3 + 3);
  if (v43 >= v42 >> 1)
  {
    v3 = sub_1D5B858EC((v42 > 1), v43 + 1, 1, v3);
  }

  *(v3 + 2) = v43 + 1;
  v44 = &v3[16 * v43];
  *(v44 + 4) = 0xD000000000000011;
  *(v44 + 5) = 0x80000001D73F14F0;
  return v3;
}

uint64_t sub_1D6D1F874(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D6D1FE78(0, &qword_1EC895218, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D1FE24();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v5)
  {
    v15 = 1;
    sub_1D72643FC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6D1F9F4(uint64_t a1)
{
  v2 = sub_1D6D1FE24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D1FA30(uint64_t a1)
{
  v2 = sub_1D6D1FE24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6D1FA6C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6D1FC30(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_1D6D1FABC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5F3D224();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = 0x696669746E656449;
  *(v11 + 40) = 0xEA00000000007265;
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69E61C8];
  *(v11 + 72) = MEMORY[0x1E69E6158];
  *(v11 + 80) = v13;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 88) = 0;
  *(v11 + 96) = 1701667150;
  *(v11 + 104) = 0xE400000000000000;
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = a3;
  *(v11 + 120) = a4;
  *(v11 + 152) = 0;
  *(inited + 56) = &type metadata for DebugInspectionDataSection;
  *(inited + 64) = &off_1F5132800;
  *(inited + 32) = 6775124;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v11;

  sub_1D60F3E18(inited);
  a5[3] = &type metadata for DebugInspectionDataSource;
  a5[4] = &off_1F51328C8;
  *a5 = v14;
}

uint64_t sub_1D6D1FC30(void *a1)
{
  sub_1D6D1FE78(0, &qword_1EC895208, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D1FE24();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D72642BC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6D1FE24()
{
  result = qword_1EC895210;
  if (!qword_1EC895210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895210);
  }

  return result;
}

void sub_1D6D1FE78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6D1FE24();
    v7 = a3(a1, &type metadata for DebugInspectionTag.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6D1FEF0()
{
  result = qword_1EC895220;
  if (!qword_1EC895220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895220);
  }

  return result;
}

unint64_t sub_1D6D1FF48()
{
  result = qword_1EC895228;
  if (!qword_1EC895228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895228);
  }

  return result;
}

unint64_t sub_1D6D1FFA0()
{
  result = qword_1EC895230;
  if (!qword_1EC895230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895230);
  }

  return result;
}

uint64_t sub_1D6D2006C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6D200F0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  sub_1D6D206EC(0, &qword_1EC895250, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D20698();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v4)
  {
    v15 = 1;
    sub_1D726440C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6D20270()
{
  if (*v0)
  {
    return 0x73776F726874;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1D6D202AC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73776F726874 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D6D2038C(uint64_t a1)
{
  v2 = sub_1D6D20698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D203C8(uint64_t a1)
{
  v2 = sub_1D6D20698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6D20404@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6D204B0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1D6D2045C()
{
  result = qword_1EC895238;
  if (!qword_1EC895238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895238);
  }

  return result;
}

uint64_t sub_1D6D204B0(void *a1)
{
  sub_1D6D206EC(0, &qword_1EC895240, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D20698();
  sub_1D7264B0C();
  if (!v1)
  {
    v11[15] = 0;
    v9 = sub_1D72642BC();
    v11[14] = 1;
    sub_1D72642CC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6D20698()
{
  result = qword_1EC895248;
  if (!qword_1EC895248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895248);
  }

  return result;
}

void sub_1D6D206EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6D20698();
    v7 = a3(a1, &type metadata for FormatDerivedDataBlockReference.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6D20764()
{
  result = qword_1EC895258;
  if (!qword_1EC895258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895258);
  }

  return result;
}

unint64_t sub_1D6D207BC()
{
  result = qword_1EC895260;
  if (!qword_1EC895260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895260);
  }

  return result;
}

unint64_t sub_1D6D20814()
{
  result = qword_1EC895268;
  if (!qword_1EC895268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895268);
  }

  return result;
}

void *sub_1D6D2087C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v15 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = *a5;
  v19 = *(a5 + 8);
  sub_1D5CED2F0(a1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1D5CED354(v18);
    return (*(a7 + 8))(a1, a2, a3, a4, a6, a7);
  }

  v22 = *(v18 + 1);
  if (v19 <= 2)
  {
    if (v19)
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v21);
      v34[-10] = a6;
      v34[-9] = a7;
      v34[-8] = v7;
      v34[-7] = a2;
      v34[-6] = a3;
      v34[-5] = a4;
      v34[-4] = v23;
      v34[-3] = v22;
      LOBYTE(v34[-2]) = v24;
      if (v19 == 1)
      {
        v25 = sub_1D719996C(sub_1D6D20FC0, &v34[-12], v34[0]);
      }

      else
      {
        v25 = sub_1D7199954(sub_1D6D20F90, &v34[-12], v34[0]);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v21);
      v34[-10] = a6;
      v34[-9] = a7;
      v34[-8] = v7;
      v34[-7] = a2;
      v34[-6] = a3;
      v34[-5] = a4;
      v34[-4] = v29;
      v34[-3] = v22;
      LOBYTE(v34[-2]) = v30;
      v25 = sub_1D7199954(sub_1D6D20FF0, &v34[-12], v34[0]);
    }

    goto LABEL_13;
  }

  if (v19 == 3)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v21);
    v34[-10] = a6;
    v34[-9] = a7;
    v34[-8] = v7;
    v34[-7] = a2;
    v34[-6] = a3;
    v34[-5] = a4;
    v34[-4] = v31;
    v34[-3] = v22;
    LOBYTE(v34[-2]) = v32;
    v25 = sub_1D7199954(sub_1D6D20F60, &v34[-12], v34[0]);
    goto LABEL_13;
  }

  if (v19 == 4)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v21);
    v34[-10] = a6;
    v34[-9] = a7;
    v34[-8] = v7;
    v34[-7] = a2;
    v34[-6] = a3;
    v34[-5] = a4;
    v34[-4] = v27;
    v34[-3] = v22;
    LOBYTE(v34[-2]) = v28;
    v25 = sub_1D719996C(sub_1D6D20F30, &v34[-12], v34[0]);
LABEL_13:
    v33 = v25;

    return v33;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6D20B98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v26 = a8;
  v25[0] = a3;
  v25[1] = a2;
  v16 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v16, v16);
  v18 = (v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = *a1;
  swift_storeEnumTagMultiPayload();
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7270C10;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  v27 = v19;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  swift_unknownObjectRetain();

  v20 = sub_1D7261F3C();
  v22 = v21;

  v23 = (*(a10 + 8))(v18, v25[0], v20, v22, a9, a10);

  result = sub_1D5CED354(v18);
  *v26 = v23;
  return result;
}

uint64_t sub_1D6D20D64@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v31 = a8;
  v29 = a3;
  v30 = a2;
  v28 = a9;
  v16 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v16, v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  *v18 = *a1;
  swift_storeEnumTagMultiPayload();
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7270C10;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v32 = v20;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v21 = v19;

  v22 = sub_1D7261F3C();
  v24 = v23;

  v25 = (*(a10 + 8))(v18, v29, v22, v24, v28, a10);

  result = sub_1D5CED354(v18);
  *v31 = v25;
  return result;
}

uint64_t sub_1D6D21068(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CED2F0(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v12 = *v11;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v17 = a2 & 0xDFFFFFFFFFFFFFFFLL;
      v14 = sub_1D5F33DF0(v12, a3, a4);
      swift_unknownObjectRelease();
      v13 = v14 ^ 1;
    }

    else
    {
      v17 = a2;
      v13 = sub_1D5F33DF0(v12, a3, a4);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D5CED354(v11);
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed27WebEmbedFailureContentModelO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1D6D211B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6D211F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6D2123C(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1D6D21264(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6D21BA0(a1, v7, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v9 = *v7;
    v10 = *v7 >> 61;
    if (v10 > 2)
    {
      v11 = *(*((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 48);

      v28 = [v11 identifier];
      v29 = sub_1D726207C();
      v31 = v30;

      sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

      *a2 = v29;
      *(a2 + 8) = v31;
      goto LABEL_16;
    }

    if (!v10)
    {
      v17 = *(v9 + 16);
      v18 = *(v17 + 56);
      if (!v18)
      {
        sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

        goto LABEL_3;
      }

      v19 = *(v17 + 56);
      if (v19)
      {
        v20 = [v19 identifier];
        v21 = sub_1D726207C();
        v23 = v22;

        sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

        *a2 = v21;
        *(a2 + 8) = v23;
      }

      else
      {

        sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

        *a2 = xmmword_1D734C570;
      }

LABEL_16:
      v8 = 3;
      goto LABEL_17;
    }

    if (v10 == 1)
    {
      v12 = *(*((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 56);
      if (v12)
      {

        v13 = [v12 identifier];
        v14 = sub_1D726207C();
        v16 = v15;

        sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

        *a2 = v14;
LABEL_15:
        *(a2 + 8) = v16;
        v8 = 1;
        goto LABEL_17;
      }

      sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);
    }

    else
    {
      sub_1D5E4CF90(0);

      sub_1D725BE8C();
      v24 = *(v32[1] + 56);
      swift_unknownObjectRetain();

      if (v24)
      {
        v25 = [v24 identifier];
        swift_unknownObjectRelease();
        v26 = sub_1D726207C();
        v16 = v27;

        sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

        *a2 = v26;
        goto LABEL_15;
      }

      sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);
    }

    *a2 = xmmword_1D734C570;
    v8 = 1;
    goto LABEL_17;
  }

  sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);
  sub_1D6D21C08(v7, type metadata accessor for WebEmbedDataVisualization);
LABEL_3:
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = -1;
LABEL_17:
  *(a2 + 16) = v8;
}

uint64_t sub_1D6D2171C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6D21CD8(0, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for PuzzleResourceSource(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  sub_1D6D21AA8(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D6D21C68(a1, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
    result = sub_1D6D21C68(v7, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
    *a2 = 0;
    *(a2 + 8) = 0;
    v18 = -1;
  }

  else
  {
    sub_1D6D21B3C(v7, v16);
    sub_1D6D21BA0(v16, v12, type metadata accessor for PuzzleResourceSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v20 = [*v12 identifier];
        v21 = sub_1D726207C();
        v23 = v22;
        swift_unknownObjectRelease();

        sub_1D6D21C68(a1, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
        result = sub_1D6D21C08(v16, type metadata accessor for PuzzleResourceSource);
        *a2 = v21;
        *(a2 + 8) = v23;
      }

      else
      {
        sub_1D6D21C68(a1, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
        sub_1D6D21C08(v16, type metadata accessor for PuzzleResourceSource);
        v25 = *v12;
        v26 = *(v12 + 1);
        sub_1D5B4D334(0);
        v28 = *(v27 + 48);
        sub_1D6D21C68(&v12[*(v27 + 64)], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v29 = sub_1D72585BC();
        result = (*(*(v29 - 8) + 8))(&v12[v28], v29);
        *a2 = v25;
        *(a2 + 8) = v26;
      }
    }

    else
    {
      sub_1D6D21C68(a1, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
      result = sub_1D6D21C08(v16, type metadata accessor for PuzzleResourceSource);
      v24 = *(v12 + 1);
      *a2 = *v12;
      *(a2 + 8) = v24;
    }

    v18 = 4;
  }

  *(a2 + 16) = v18;
  return result;
}

uint64_t sub_1D6D21AA8(uint64_t a1, uint64_t a2)
{
  sub_1D6D21CD8(0, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D21B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleResourceSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D21BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D21C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6D21C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6D21CD8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6D21CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t static FormatArticleOverrides.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatArticleOverrides(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF28AD0);
  return sub_1D5CE4888(v3, a1, type metadata accessor for FormatArticleOverrides);
}

uint64_t sub_1D6D21DC0()
{
  v0 = type metadata accessor for FormatArticleOverrides(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5CFA0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v35 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v0, qword_1EDF28AD0);
  v36 = __swift_project_value_buffer(v0, qword_1EDF28AD0);
  v23 = sub_1D725891C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = type metadata accessor for FormatThumbnail(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v26(v18, 1, 1, v24);
  v27 = sub_1D72585BC();
  v28 = *(*(v27 - 8) + 56);
  v37 = v7;
  v28(v7, 1, 1, v27);
  *v3 = 0;
  v3[1] = 0;
  sub_1D5CE4888(v22, v3 + v0[5], sub_1D5B5B2A0);
  *(v3 + v0[6]) = 6;
  v29 = (v3 + v0[7]);
  *v29 = 0;
  v29[1] = 0;
  sub_1D5CE4888(v18, v11, sub_1D5B5CFA0);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    sub_1D5CE4A1C(v18, sub_1D5B5CFA0);
    sub_1D5CE4A1C(v22, sub_1D5B5B2A0);
    sub_1D5CE4A1C(v11, sub_1D5B5CFA0);
    v30 = v35;
    v26(v35, 1, 1, v24);
  }

  else
  {
    v30 = v35;
    v31 = sub_1D5EFA80C();
    sub_1D5CE4A1C(v18, sub_1D5B5CFA0);
    sub_1D5CE4A1C(v22, sub_1D5B5B2A0);
    if (v31)
    {
      v32 = 1;
    }

    else
    {
      sub_1D5CE4888(v11, v30, type metadata accessor for FormatThumbnail);
      v32 = 0;
    }

    v26(v30, v32, 1, v24);
    sub_1D5CE4A1C(v11, type metadata accessor for FormatThumbnail);
  }

  sub_1D5CE46AC(v30, v3 + v0[8], sub_1D5B5CFA0);
  sub_1D5CE46AC(v37, v3 + v0[9], sub_1D5B4D3E0);
  return sub_1D5CE46AC(v3, v36, type metadata accessor for FormatArticleOverrides);
}

uint64_t FormatArticleOverrides.init(title:displayDate:storyType:shortExcerpt:thumbnail:routeURL:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v36 = a8;
  sub_1D5B5CFA0(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v35 - v23;
  v25 = *a4;
  if (a2)
  {
    v26 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v26 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {

      a1 = 0;
      a2 = 0;
    }
  }

  *a9 = a1;
  a9[1] = a2;
  v27 = type metadata accessor for FormatArticleOverrides(0);
  sub_1D5CE4888(a3, a9 + v27[5], sub_1D5B5B2A0);
  *(a9 + v27[6]) = v25;
  if (a6)
  {
    v28 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v28 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {

      a5 = 0;
      a6 = 0;
    }
  }

  v29 = (a9 + v27[7]);
  *v29 = a5;
  v29[1] = a6;
  sub_1D5CE4888(a7, v20, sub_1D5B5CFA0);
  v30 = type metadata accessor for FormatThumbnail(0);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v20, 1, v30) == 1)
  {
    sub_1D5CE4A1C(a7, sub_1D5B5CFA0);
    sub_1D5CE4A1C(a3, sub_1D5B5B2A0);
    sub_1D5CE4A1C(v20, sub_1D5B5CFA0);
    (*(v31 + 56))(v24, 1, 1, v30);
  }

  else
  {
    v32 = sub_1D5EFA80C();
    sub_1D5CE4A1C(a7, sub_1D5B5CFA0);
    sub_1D5CE4A1C(a3, sub_1D5B5B2A0);
    if (v32)
    {
      v33 = 1;
    }

    else
    {
      sub_1D5CE4888(v20, v24, type metadata accessor for FormatThumbnail);
      v33 = 0;
    }

    (*(v31 + 56))(v24, v33, 1, v30);
    sub_1D5CE4A1C(v20, type metadata accessor for FormatThumbnail);
  }

  sub_1D5CE46AC(v24, a9 + v27[8], sub_1D5B5CFA0);
  return sub_1D5CE46AC(v36, a9 + v27[9], sub_1D5B4D3E0);
}

uint64_t FormatArticleOverrides.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatArticleOverrides.storyType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FormatArticleOverrides(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t FormatArticleOverrides.shortExcerpt.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatArticleOverrides(0) + 28));

  return v1;
}

uint64_t sub_1D6D22728@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6D24288(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6D22750(uint64_t a1)
{
  v2 = sub_1D5CE4350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D2278C(uint64_t a1)
{
  v2 = sub_1D5CE4350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatArticleOverrides.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5CE42EC(0, &qword_1EDF02650, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CE4350();
  sub_1D7264B5C();
  v13[15] = 0;
  sub_1D726437C();
  if (!v2)
  {
    v11 = type metadata accessor for FormatArticleOverrides(0);
    v13[14] = 1;
    sub_1D725891C();
    sub_1D5CE45B4(&qword_1EDF45B18, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D72643BC();
    v13[13] = *(v3 + *(v11 + 24));
    v13[12] = 2;
    sub_1D6B362E8();
    sub_1D72643BC();
    v13[11] = 3;
    sub_1D726437C();
    v13[10] = 4;
    type metadata accessor for FormatThumbnail(0);
    sub_1D5CE45B4(&qword_1EDF117E8, type metadata accessor for FormatThumbnail, &protocol conformance descriptor for FormatThumbnail);
    sub_1D72643BC();
    v13[9] = 5;
    sub_1D72585BC();
    sub_1D5CE45B4(&unk_1EDF45B70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6D22B0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5CFA0(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v56 - v17;
  v19 = type metadata accessor for FormatArticleOverrides(0);
  v20 = *(v19 - 1);
  *&v22 = MEMORY[0x1EEE9AC00](v19, v21).n128_u64[0];
  v24 = (&v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 respondsToSelector_])
  {
    v58 = a2;
    v25 = [a1 appliedOverrideMetadata];
    v26 = v25;
    v60 = v10;
    if (v25)
    {
      if (([v25 respondsToSelector_] & 1) != 0 && (v27 = objc_msgSend(v26, sel_title)) != 0)
      {
        v28 = v27;
        v29 = sub_1D726207C();
        v31 = v30;

        v32 = HIBYTE(v31) & 0xF;
        v59 = v29;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {
          v56 = v31;
        }

        else
        {

          v59 = 0;
          v56 = 0;
        }

        v10 = v60;
      }

      else
      {
        v59 = 0;
        v56 = 0;
      }

      v37 = [v26 displayDate];
      if (v37)
      {
        v38 = v37;
        sub_1D72588BC();

        v39 = sub_1D725891C();
        (*(*(v39 - 8) + 56))(v14, 0, 1, v39);
      }

      else
      {
        v40 = sub_1D725891C();
        (*(*(v40 - 8) + 56))(v14, 1, 1, v40);
      }

      sub_1D5CE46AC(v14, v18, sub_1D5B5B2A0);
      if (([v26 respondsToSelector_] & 1) != 0 && (v41 = objc_msgSend(v26, sel_shortExcerpt)) != 0)
      {
        v42 = v10;
        v43 = v41;
        v44 = sub_1D726207C();
        v36 = v45;

        v46 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v46 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (v46)
        {
          v57 = v44;
        }

        else
        {

          v57 = 0;
          v36 = 0;
        }

        v35 = v56;
        v10 = v42;
      }

      else
      {
        v57 = 0;
        v36 = 0;
        v35 = v56;
      }
    }

    else
    {
      v34 = sub_1D725891C();
      (*(*(v34 - 8) + 56))(v18, 1, 1, v34);
      v35 = 0;
      v59 = 0;
      v57 = 0;
      v36 = 0;
    }

    sub_1D6D231F0(v26, v10);
    v47 = [a1 storyType];
    if (v47 <= 5)
    {
      v48 = 0x50403020106uLL >> (8 * v47);
    }

    else
    {
      v48 = 6;
    }

    sub_1D6D23430(v26, v61);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v35 && (v52 = sub_1D725891C(), v53 = (*(*(v52 - 8) + 48))(v18, 1, v52), !v36) && (v47 > 5) | (1u >> v47) & 1 && v53 == 1 && (v54 = type metadata accessor for FormatThumbnail(0), (*(*(v54 - 8) + 48))(v60, 1, v54) == 1) && (v55 = sub_1D72585BC(), (*(*(v55 - 8) + 48))(v61, 1, v55) == 1))
    {
      sub_1D5CE4A1C(v61, sub_1D5B4D3E0);
      sub_1D5CE4A1C(v60, sub_1D5B5CFA0);
      sub_1D5CE4A1C(v18, sub_1D5B5B2A0);
      v33 = 1;
      a2 = v58;
    }

    else
    {
      *v24 = v59;
      v24[1] = v35;
      sub_1D5CE4888(v18, v24 + v19[5], sub_1D5B5B2A0);
      *(v24 + v19[6]) = v48;
      v49 = (v24 + v19[7]);
      *v49 = v57;
      v49[1] = v36;
      v50 = v60;
      sub_1D5CE4888(v60, v24 + v19[8], sub_1D5B5CFA0);
      sub_1D5CE46AC(v61, v24 + v19[9], sub_1D5B4D3E0);
      sub_1D5CE4A1C(v50, sub_1D5B5CFA0);
      sub_1D5CE4A1C(v18, sub_1D5B5B2A0);
      a2 = v58;
      sub_1D5CE46AC(v24, v58, type metadata accessor for FormatArticleOverrides);
      v33 = 0;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v33 = 1;
  }

  return (*(v20 + 56))(a2, v33, 1, v19);
}

uint64_t sub_1D6D231F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5CFA0(0);
  *&v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && ([a1 respondsToSelector_] & 1) != 0)
  {
    v9 = [a1 formatThumbnail];
    v10 = v9;
    sub_1D5EFB8E4(v9, v8);
    v11 = type metadata accessor for FormatThumbnail(0);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {

      sub_1D5CE4A1C(v8, sub_1D5B5CFA0);
      return (*(v12 + 56))(a2, 1, 1, v11);
    }

    else
    {
      v16 = sub_1D5EFA80C();

      if (v16)
      {
        v17 = 1;
      }

      else
      {
        sub_1D5CE4888(v8, a2, type metadata accessor for FormatThumbnail);
        v17 = 0;
      }

      (*(v12 + 56))(a2, v17, 1, v11);
      return sub_1D5CE4A1C(v8, type metadata accessor for FormatThumbnail);
    }
  }

  else
  {
    v14 = type metadata accessor for FormatThumbnail(0);
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t sub_1D6D23430@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B4D3E0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D24494(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v25 - v16;
  if (!a1)
  {
    (*(v6 + 56))(&v25 - v16, 1, 1, v5, v17);
LABEL_10:
    sub_1D5CE4A1C(v18, sub_1D6D24494);
    v23 = sub_1D72585BC();
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  if ([a1 respondsToSelector_])
  {
    v19 = [a1 routeURL];
    if (v19)
    {
      v20 = v19;
      sub_1D72584EC();

      v21 = sub_1D72585BC();
      (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    }

    else
    {
      v22 = sub_1D72585BC();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    }

    sub_1D5CE46AC(v9, v13, sub_1D5B4D3E0);
    (*(v6 + 56))(v13, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v13, 1, 1, v5);
  }

  sub_1D5CE46AC(v13, v18, sub_1D6D24494);
  if ((*(v6 + 48))(v18, 1, v5) == 1)
  {
    goto LABEL_10;
  }

  return sub_1D5CE46AC(v18, a2, sub_1D5B4D3E0);
}

BOOL _s8NewsFeed22FormatArticleOverridesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v80 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB60D4(0);
  v82 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v83 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for FormatThumbnail(0);
  v87 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v14);
  v81 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5CFA0(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v88 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B6DEDC(0);
  v84 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v86 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D725891C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BA8044(0);
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1[1];
  v89 = a2;
  v37 = a2[1];
  if (v36)
  {
    if (!v37)
    {
      return 0;
    }

    v38 = a1;
    if ((*a1 != *v89 || v36 != v37) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v38 = a1;
    if (v37)
    {
      return 0;
    }
  }

  v77 = v5;
  v78 = v4;
  v39 = type metadata accessor for FormatArticleOverrides(0);
  v40 = v39[5];
  v41 = *(v32 + 48);
  sub_1D5CE4888(v38 + v40, v35, sub_1D5B5B2A0);
  sub_1D5CE4888(v89 + v40, &v35[v41], sub_1D5B5B2A0);
  v42 = *(v23 + 48);
  if (v42(v35, 1, v22) == 1)
  {
    if (v42(&v35[v41], 1, v22) == 1)
    {
      sub_1D5CE4A1C(v35, sub_1D5B5B2A0);
      goto LABEL_17;
    }

LABEL_13:
    v43 = sub_1D5BA8044;
    v44 = v35;
LABEL_14:
    sub_1D5CE4A1C(v44, v43);
    return 0;
  }

  sub_1D5CE4888(v35, v30, sub_1D5B5B2A0);
  if (v42(&v35[v41], 1, v22) == 1)
  {
    (*(v23 + 8))(v30, v22);
    goto LABEL_13;
  }

  (*(v23 + 32))(v26, &v35[v41], v22);
  sub_1D5CE45B4(&qword_1EDF45B10, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v46 = sub_1D7261FBC();
  v47 = *(v23 + 8);
  v47(v26, v22);
  v47(v30, v22);
  sub_1D5CE4A1C(v35, sub_1D5B5B2A0);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v48 = v39[6];
  v49 = *(v38 + v48);
  v50 = *(v89 + v48);
  if (v49 == 6)
  {
    v52 = v77;
    v51 = v78;
    v54 = v87;
    v53 = v88;
    if (v50 != 6)
    {
      return 0;
    }
  }

  else
  {
    v52 = v77;
    v51 = v78;
    v54 = v87;
    v53 = v88;
    if (v50 == 6 || (sub_1D6DDAEB0(v49, v50) & 1) == 0)
    {
      return 0;
    }
  }

  v55 = v39[7];
  v56 = (v38 + v55);
  v57 = *(v38 + v55 + 8);
  v58 = (v89 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v60 = v39;
  v61 = v39[8];
  v62 = *(v84 + 48);
  v63 = v86;
  sub_1D5CE4888(v38 + v61, v86, sub_1D5B5CFA0);
  sub_1D5CE4888(v89 + v61, v63 + v62, sub_1D5B5CFA0);
  v64 = *(v54 + 48);
  v65 = v85;
  if (v64(v63, 1, v85) == 1)
  {
    if (v64(v63 + v62, 1, v65) == 1)
    {
      sub_1D5CE4A1C(v63, sub_1D5B5CFA0);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  sub_1D5CE4888(v63, v53, sub_1D5B5CFA0);
  if (v64(v63 + v62, 1, v65) == 1)
  {
    sub_1D5CE4A1C(v53, type metadata accessor for FormatThumbnail);
LABEL_34:
    v43 = sub_1D6B6DEDC;
    v44 = v63;
    goto LABEL_14;
  }

  v66 = v81;
  sub_1D5CE46AC(v63 + v62, v81, type metadata accessor for FormatThumbnail);
  v67 = _s8NewsFeed15FormatThumbnailV2eeoiySbAC_ACtFZ_0(v53, v66);
  sub_1D5CE4A1C(v66, type metadata accessor for FormatThumbnail);
  sub_1D5CE4A1C(v53, type metadata accessor for FormatThumbnail);
  sub_1D5CE4A1C(v63, sub_1D5B5CFA0);
  if (!v67)
  {
    return 0;
  }

LABEL_36:
  v68 = v60[9];
  v69 = v83;
  v70 = *(v82 + 48);
  sub_1D5CE4888(v38 + v68, v83, sub_1D5B4D3E0);
  sub_1D5CE4888(v89 + v68, v69 + v70, sub_1D5B4D3E0);
  v71 = *(v52 + 48);
  if (v71(v69, 1, v51) != 1)
  {
    v72 = v80;
    sub_1D5CE4888(v69, v80, sub_1D5B4D3E0);
    if (v71(v69 + v70, 1, v51) == 1)
    {
      (*(v52 + 8))(v72, v51);
      goto LABEL_41;
    }

    v73 = v79;
    (*(v52 + 32))(v79, v69 + v70, v51);
    sub_1D5CE45B4(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v74 = sub_1D7261FBC();
    v75 = *(v52 + 8);
    v75(v73, v51);
    v75(v72, v51);
    sub_1D5CE4A1C(v69, sub_1D5B4D3E0);
    return (v74 & 1) != 0;
  }

  if (v71(v69 + v70, 1, v51) != 1)
  {
LABEL_41:
    v43 = sub_1D5BB60D4;
    v44 = v69;
    goto LABEL_14;
  }

  sub_1D5CE4A1C(v69, sub_1D5B4D3E0);
  return 1;
}

void sub_1D6D24120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6D24174(void *a1)
{
  a1[1] = sub_1D5CE45B4(&qword_1EDF3FCB8, type metadata accessor for FormatArticleOverrides, &protocol conformance descriptor for FormatArticleOverrides);
  a1[2] = sub_1D5CE45B4(&unk_1EDF0DB90, type metadata accessor for FormatArticleOverrides, &protocol conformance descriptor for FormatArticleOverrides);
  result = sub_1D5CE45B4(&qword_1EC895270, type metadata accessor for FormatArticleOverrides, &protocol conformance descriptor for FormatArticleOverrides);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D24234()
{
  result = qword_1EC895278;
  if (!qword_1EC895278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895278);
  }

  return result;
}

uint64_t sub_1D6D24288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70795479726F7473 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63784574726F6873 && a2 == 0xEC00000074707265 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C52556574756F72 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t FormatPaywallBinding.Text.text(from:selectors:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *v2;
  if (v5 <= 4)
  {
    if (*v2 <= 1u)
    {
      if (*v2)
      {
        v4 = *(a1 + 64);
      }

      goto LABEL_24;
    }

    if (v5 == 2)
    {
      v4 = *(a1 + 80);
      goto LABEL_24;
    }

    if (v5 == 3)
    {
      if (*(a1 + 104))
      {
        v4 = *(a1 + 96);
LABEL_24:

        return v4;
      }
    }

    else if (*(a1 + 152))
    {
      v4 = *(a1 + 144);
      goto LABEL_24;
    }

    return 0;
  }

  if (*v2 <= 6u)
  {
    if (v5 == 5)
    {
      if (*(a1 + 168))
      {
        v4 = *(a1 + 160);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + 136);
      if (!v13)
      {
        return 0xD000000000000012;
      }

      if (v13 == 1)
      {
        return 0xD000000000000011;
      }

      if (v13 != 2)
      {
        sub_1D7263D4C();

        v17 = 0x80000001D73F1600;
        v15 = MEMORY[0x1DA6F9D20](v13, MEMORY[0x1E69E6158]);
        MEMORY[0x1DA6F9910](v15);

        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        return 0xD000000000000013;
      }
    }

    return 0;
  }

  if (v5 == 7)
  {
    v6 = *(a1 + 176);
    if (!v6 || ([*(a1 + 176) respondsToSelector_] & 1) == 0)
    {
      return 0;
    }

    return FCArticleRole.selector.getter([v6 role]);
  }

  else
  {
    if (v5 == 8)
    {
      if (*(a1 + 192))
      {
        v4 = *(a1 + 184);
        goto LABEL_24;
      }

      return 0;
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);

    v16 = 0x6C6C6177796170;
    v17 = 0xE700000000000000;
    v18 = v4;
    v19 = v3;
    v20 = v10;
    v21 = v9;
    v22 = v8;
    v23 = v7;
    v24 = a2(v12);
    sub_1D72578EC();
    swift_allocObject();
    sub_1D72578DC();
    sub_1D6D247F8(0);
    sub_1D6D24F3C(&qword_1EC895290, sub_1D6D247F8, &protocol conformance descriptor for FormatCellAutomation<A>);
    v4 = sub_1D725D06C();

    sub_1D6D248A8(&v16);
  }

  return v4;
}

void sub_1D6D247F8(uint64_t a1)
{
  if (!qword_1EC895280)
  {
    v2 = sub_1D6D24854();
    v4 = type metadata accessor for FormatCellAutomation(a1, &type metadata for PaywallAutomation, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC895280);
    }
  }
}

unint64_t sub_1D6D24854()
{
  result = qword_1EC895288;
  if (!qword_1EC895288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895288);
  }

  return result;
}

uint64_t sub_1D6D248A8(uint64_t a1)
{
  sub_1D6D247F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6D24904(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x52656C6369747261;
    v6 = 0xD00000000000001DLL;
    if (a1 != 8)
    {
      v6 = 0x6974616D6F747561;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000018;
    if (a1 != 5)
    {
      v7 = 0xD000000000000015;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0xD000000000000017;
    if (a1 != 3)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 == 2)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = v2;
    }

    if (a1)
    {
      v1 = 0x4E6C656E6E616863;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D6D24A68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D6D24904(*a1);
  v5 = v4;
  if (v3 == sub_1D6D24904(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6D24AF0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6D24904(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6D24B54(uint64_t a1)
{
  sub_1D6D24904(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6D24BA8(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D6D24904(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6D24C08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6D25798(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D6D24C38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6D24904(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatPaywallBinding.Text.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6D24D9C()
{
  result = qword_1EC895298;
  if (!qword_1EC895298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895298);
  }

  return result;
}

unint64_t sub_1D6D24DF0(uint64_t a1)
{
  result = sub_1D6D24E18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D24E18()
{
  result = qword_1EC8952A0;
  if (!qword_1EC8952A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952A0);
  }

  return result;
}

unint64_t sub_1D6D24E6C(void *a1)
{
  a1[1] = sub_1D665FCD8();
  a1[2] = sub_1D6704EF8();
  result = sub_1D6D24D9C();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6D24F3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6D24F84()
{
  if (!qword_1EC8952B0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8952B0);
    }
  }
}

unint64_t sub_1D6D24FD8()
{
  result = qword_1EC8952B8;
  if (!qword_1EC8952B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952B8);
  }

  return result;
}

unint64_t sub_1D6D2502C()
{
  result = qword_1EDF2ADA0;
  if (!qword_1EDF2ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADA0);
  }

  return result;
}

uint64_t sub_1D6D25080@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  if (v5 <= 4)
  {
    if (*a1 <= 1u)
    {
      if (*a1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 72);

        v9 = 0x206C656E6E616843;
        v10 = 0xEC000000656D614ELL;
      }

      else
      {
        v7 = *a2;
        v8 = *(a2 + 8);

        v9 = 0x696669746E656449;
        v10 = 0xEA00000000007265;
      }

      goto LABEL_43;
    }

    if (v5 == 2)
    {
      v7 = *(a2 + 80);
      v8 = *(a2 + 88);

      v10 = 0x80000001D73F1710;
      v11 = a3;
      v9 = 0xD000000000000016;
LABEL_44:
      v13 = v7;
      v15 = v8;
      goto LABEL_45;
    }

    if (v5 == 3)
    {
      v6 = "Services Bundle Price";
      if (*(a2 + 104))
      {
        v7 = *(a2 + 96);
        v8 = *(a2 + 104);
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      v9 = 0xD000000000000019;
    }

    else
    {
      v6 = "Services Bundle Price Delta";
      if (*(a2 + 152))
      {
        v7 = *(a2 + 144);
        v8 = *(a2 + 152);
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      v9 = 0xD000000000000015;
    }

LABEL_42:
    v10 = v6 | 0x8000000000000000;
LABEL_43:
    v11 = a3;
    goto LABEL_44;
  }

  if (*a1 <= 6u)
  {
    if (v5 == 5)
    {
      v6 = "Activation Eligibility";
      if (*(a2 + 168))
      {
        v7 = *(a2 + 160);
        v8 = *(a2 + 168);
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      v9 = 0xD00000000000001BLL;
      goto LABEL_42;
    }

    v21 = *(a2 + 136);
    if (v21)
    {
      if (v21 == 1)
      {
        v15 = 0x80000001D73F1620;
        v13 = 0xD000000000000011;
      }

      else if (v21 == 2)
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        sub_1D7263D4C();

        *&v28 = 0xD000000000000013;
        *(&v28 + 1) = 0x80000001D73F1600;
        v25 = MEMORY[0x1DA6F9D20](v21, MEMORY[0x1E69E6158]);
        MEMORY[0x1DA6F9910](v25);

        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        v15 = 0x80000001D73F1600;
        v13 = 0xD000000000000013;
      }
    }

    else
    {
      v15 = 0x80000001D73F1640;
      v13 = 0xD000000000000012;
    }

    v10 = 0x80000001D73F1690;
    v11 = a3;
    v9 = 0xD000000000000016;
  }

  else if (v5 == 7)
  {
    v12 = *(a2 + 176);
    if (v12 && ([v12 respondsToSelector_] & 1) != 0)
    {
      v13 = FCArticleRole.selector.getter([v12 role]);
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v9 = 0x20656C6369747241;
    v10 = 0xEC000000656C6F52;
    v11 = a3;
  }

  else
  {
    if (v5 == 8)
    {
      v6 = "appleOneViaCarrier";
      if (*(a2 + 192))
      {
        v7 = *(a2 + 184);
        v8 = *(a2 + 192);
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      v9 = 0xD000000000000020;
      goto LABEL_42;
    }

    v17 = *a2;
    v16 = *(a2 + 8);
    v18 = *(a2 + 16);
    v33 = *(a2 + 32);
    v34 = v18;
    *&v28 = 0x6C6C6177796170;
    *(&v28 + 1) = 0xE700000000000000;
    *&v29 = v17;
    *(&v29 + 1) = v16;
    v30 = v18;
    v31 = v33;
    v32 = MEMORY[0x1E69E7CD0];
    v26[3] = v18;
    v26[4] = v33;
    v27 = MEMORY[0x1E69E7CD0];
    v26[1] = v28;
    v26[2] = v29;
    sub_1D72578EC();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    sub_1D5E422A8(&v34, v26);
    sub_1D5E422A8(&v33, v26);
    sub_1D72578DC();
    sub_1D6D247F8(0);
    sub_1D6D24F3C(&qword_1EC895290, sub_1D6D247F8, &protocol conformance descriptor for FormatCellAutomation<A>);
    v19 = sub_1D725D06C();
    if (v3)
    {

      sub_1D6D248A8(&v28);
    }

    else
    {
      v17 = v19;
      v22 = v20;

      sub_1D6D248A8(&v28);

      v16 = v22;
    }

    v9 = 0x6974616D6F747541;
    v11 = a3;
    v10 = 0xEA00000000006E6FLL;
    v13 = v17;
    v15 = v16;
  }

LABEL_45:
  sub_1D711F844(v9, v10, v13, v15, v11);
  v23 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v23 - 8) + 56))(a3, 0, 1, v23);
}

double sub_1D6D25598@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5EA74B8(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 192);
  v10 = *(a1 + 224);
  v29[13] = *(a1 + 208);
  v29[14] = v10;
  v11 = *(a1 + 128);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v29[9] = *(a1 + 144);
  v29[10] = v12;
  v29[11] = v13;
  v29[12] = v9;
  v14 = *(a1 + 64);
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v29[5] = *(a1 + 80);
  v29[6] = v15;
  v30 = *(a1 + 240);
  v29[7] = v16;
  v29[8] = v11;
  v17 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v17;
  v18 = *(a1 + 48);
  v29[2] = *(a1 + 32);
  v29[3] = v18;
  v29[4] = v14;
  *&v27[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 10, 0);
  v19 = 0;
  v20 = *&v27[0];
  do
  {
    v26 = byte_1F50F73F0[v19 + 32];
    sub_1D6D25080(&v26, v29, v8);
    *&v27[0] = v20;
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1D69972A4((v21 > 1), v22 + 1, 1);
      v20 = *&v27[0];
    }

    ++v19;
    *(v20 + 16) = v22 + 1;
    sub_1D5E4F52C(v8, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22);
  }

  while (v19 != 10);
  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v20, v27);

  result = *v27;
  v24 = v27[1];
  *a2 = v27[0];
  *(a2 + 16) = v24;
  *(a2 + 32) = v28;
  return result;
}

unint64_t sub_1D6D25798(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t FormatSymbolScale.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x6C6C616D73;
  v4 = 0x6D756964656DLL;
  if (v1 != 3)
  {
    v4 = 0x656772616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6669636570736E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

NewsFeed::FormatSymbolScale_optional __swiftcall FormatSymbolScale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D6D258EC()
{
  result = qword_1EC8952C0;
  if (!qword_1EC8952C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952C0);
  }

  return result;
}

uint64_t sub_1D6D25940()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6D25A1C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6D25AE4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6D25BC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v2 != 3)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6669636570736E75;
    v3 = 0xEA00000000006465;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1D6D25C60(uint64_t a1)
{
  *(a1 + 8) = sub_1D6D25C90();
  result = sub_1D6D25CE4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6D25C90()
{
  result = qword_1EC8952C8;
  if (!qword_1EC8952C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952C8);
  }

  return result;
}

unint64_t sub_1D6D25CE4()
{
  result = qword_1EDF2ED30;
  if (!qword_1EDF2ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED30);
  }

  return result;
}

unint64_t sub_1D6D25D38(uint64_t a1)
{
  result = sub_1D6D25D60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D25D60()
{
  result = qword_1EC8952D0;
  if (!qword_1EC8952D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952D0);
  }

  return result;
}

unint64_t sub_1D6D25DB4(void *a1)
{
  a1[1] = sub_1D5C954A4();
  a1[2] = sub_1D66C3A00();
  result = sub_1D6D258EC();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6D25E74()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return swift_deallocClassInstance();
}

uint64_t SharingTopicActivity.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6D25F50()
{
  result = qword_1EC8952D8;
  if (!qword_1EC8952D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952D8);
  }

  return result;
}

double sub_1D6D25FE0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  v6 = *(a1 + 16);
  v7 = sub_1D6D26098(a4, a1, a2);
  sub_1D72618EC();
  v8 = *(a2 + 16);
  *a3 = v6;
  *(a3 + 8) = 0x736E6F6974704FLL;
  *(a3 + 16) = 0xE700000000000000;
  *(a3 + 24) = v7;
  *(a3 + 32) = 0x322E686374697773;
  *(a3 + 40) = 0xE800000000000000;
  *(a3 + 48) = 0x736E6F6974704FLL;
  *(a3 + 56) = 0xE700000000000000;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = v8;
  *(a3 + 88) = 0;
  *(a3 + 96) = v10;
  *(a3 + 104) = v11;

  return result;
}

void *sub_1D6D26098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = type metadata accessor for FormatOption(0);
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v35 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v32 - v13);

  sub_1D6A9DF10(v15, v37, 0.0, 0.0, 22.0, 22.0);
  v16 = *(a3 + 16);
  if (v16)
  {
    v33 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = a3 + v33;
    v18 = *(v4 + 72);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5D2477C(v17, v14);
      v20 = *v14;
      v21 = v14[1];

      sub_1D6B777A8(v37, &v36);
      v22 = v36;
      *v7 = v20;
      *(v7 + 1) = v21;
      *(v7 + 2) = v22;
      *(v7 + 3) = 1;
      v23 = *(v34 + 28);
      v24 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v24 - 8) + 56))(&v7[v23], 1, 1, v24);
      sub_1D5D25B9C(v14);
      sub_1D5D247E0(v7, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D5CEABA0(0, v19[2] + 1, 1, v19);
      }

      v26 = v19[2];
      v25 = v19[3];
      if (v26 >= v25 >> 1)
      {
        v19 = sub_1D5CEABA0((v25 > 1), v26 + 1, 1, v19);
      }

      v19[2] = v26 + 1;
      sub_1D5D247E0(v35, v19 + v33 + v26 * v18);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1D68CAFC4(v19);
  v28 = v27;

  v29 = sub_1D5F63640(v28);

  v30 = sub_1D7073500(v29);

  sub_1D6202060(v37);
  return v30;
}

uint64_t FormatArrangementResolverOptions.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725C42C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FormatArrangementResolverOptions.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725C42C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D6D26478(uint64_t a1)
{
  result = sub_1D725C42C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6D26524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6D26598()
{
  v1 = OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_id;
  v2 = sub_1D725895C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D6D268F0(v0 + OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_cacheFile);

  v3 = OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem__isExpanded;
  sub_1D5EF05B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatFileTreeItem(uint64_t a1)
{
  result = qword_1EC8952E8;
  if (!qword_1EC8952E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6D266FC(uint64_t a1)
{
  sub_1D725895C();
  if (v1 <= 0x3F)
  {
    sub_1D6032A5C(319);
    if (v2 <= 0x3F)
    {
      sub_1D5EF05B8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1D6D2681C()
{
  result = qword_1EC881120;
  if (!qword_1EC881120)
  {
    sub_1D725895C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881120);
  }

  return result;
}

uint64_t sub_1D6D26874@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_id;
  v5 = sub_1D725895C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D6D268F0(uint64_t a1)
{
  sub_1D6032A5C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static FormatWebEmbedNodeContent.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v33 - v12;
  v14 = *a1;
  v15 = *a2;
  v16 = *a1 >> 62;
  if (!v16)
  {
    if (!(v15 >> 62))
    {
      v23 = *(v14 + 40);
      v24 = *(v14 + 32);
      v25 = *(v15 + 32);
      v26 = *(v15 + 40);
      v36 = *(v14 + 16);
      v37 = v24;
      v38 = v23;
      v33 = *(v15 + 16);
      v34 = v25;
      v35 = v26;

      v21 = _s8NewsFeed25FormatWebEmbedNodeBindingO2eeoiySbAC_ACtFZ_0(&v36, &v33);
      goto LABEL_7;
    }

LABEL_13:
    v21 = 0;
    return v21 & 1;
  }

  if (v16 != 1)
  {
    if (v15 >> 62 == 2)
    {
      v27 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v29 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v36 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      *(&v36 + 1) = v27;
      *&v33 = v29;
      *(&v33 + 1) = v28;

      if (static FormatWebEmbedNodeContent.== infix(_:_:)(&v36, &v33))
      {

        sub_1D634C12C(v27, v28);
        v31 = v30;

        swift_bridgeObjectRelease_n();
        if (v31)
        {
          v21 = 1;
          return v21 & 1;
        }
      }

      else
      {
      }
    }

    goto LABEL_13;
  }

  if (v15 >> 62 != 1)
  {
    goto LABEL_13;
  }

  v17 = v11;
  v18 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = *(v5 + 16);
  v20(v13, v18, v17);
  v20(v8, v19, v17);

  v21 = sub_1D72584CC();
  v22 = *(v5 + 8);
  v22(v8, v17);
  v22(v13, v17);
LABEL_7:

  return v21 & 1;
}

uint64_t sub_1D6D26C38(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - v12;
  v14 = *v2;
  v15 = *v2 >> 62;
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = swift_projectBox();
      v38 = v6;
      v17 = *(v6 + 16);
      v17(v13, v16, v5);
      v18 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
      v40 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
      v17(v9, v13, v5);
      v39 = v18;

      sub_1D725A7EC();
      v19 = v42;
      v20 = *(*(v42 + 40) + 16);
      swift_beginAccess();
      v21 = *(*(v20 + 16) + 16);
      v41 = a2;
      if (v21)
      {
        v46[0] = *(v19 + 56);

        sub_1D6F622E0(v22);
        sub_1D5B886D0(v23);

        v24 = v46[0];
      }

      else
      {
        v24 = sub_1D6E46E28();
      }

      v30 = MEMORY[0x1E69E7CD0];
      v47 = MEMORY[0x1E69E7CD0];
      swift_beginAccess();
      v31 = qword_1EC893B38;
      v32 = off_1EC893B40;

      v33 = sub_1D5BE240C(v31, v32, v24);

      v34 = v38;
      if (v33)
      {
        sub_1D5FEA1F0();
        v30 = v47;
      }

      type metadata accessor for FormatWebEmbedData(0);
      swift_allocObject();
      v35 = v41;

      v29 = sub_1D69B58D8(v40, v39, v9, v35, v30);
      (*(v34 + 8))(v13, v5);
    }

    else
    {

      sub_1D5FBB054();
      v46[0] = v42;
      v29 = sub_1D6D26C38(a1, a2);
    }
  }

  else
  {
    v25 = *(v14 + 16);
    v26 = *(v14 + 24);
    v27 = *(v14 + 32);
    v28 = *(v14 + 40);
    v42 = v25;
    v43 = v26;
    v44 = v27;
    v45 = v28;
    sub_1D62B6164(v25, v26, v27, v28);
    v29 = sub_1D69BB124(a1, a2);
    sub_1D62B61A8(v25, v26, v27, v28);
  }

  return v29;
}

unint64_t sub_1D6D26FD8(uint64_t a1)
{
  result = sub_1D66D3CE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D27000(void *a1)
{
  a1[1] = sub_1D5CCAEC8();
  a1[2] = sub_1D66D3C0C();
  result = sub_1D6D27038();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D27038()
{
  result = qword_1EC8952F8;
  if (!qword_1EC8952F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952F8);
  }

  return result;
}

uint64_t sub_1D6D270A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = *(v5 + 16);
  v12 = *(a4 + 64);

  result = v12(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v14;
  a5[2] = v11;
  return result;
}

uint64_t FormatSourceItemData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

id sub_1D6D271C4()
{
  sub_1D5B542A8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v5, v6).n128_u64[0];
  v9 = &v21 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC8NewsFeed32PuzzleTypeLinkPresentationSource_puzzleType);
  v11 = [v10 nameForSharing];
  if (!v11)
  {
    sub_1D726207C();
    v11 = sub_1D726203C();
  }

  v12 = [v10 identifier];
  if (!v12)
  {
    sub_1D726207C();
    v12 = sub_1D726203C();
  }

  v13 = [objc_opt_self() nss:v12 NewsURLForPuzzleTypeID:?];

  if (v13)
  {
    sub_1D72584EC();

    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  }

  else
  {
    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v15 = sub_1D6D274B0(v10);
  sub_1D5EB84C0(v9, v4);
  sub_1D72585BC();
  v16 = *(v14 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v4, 1, v14) != 1)
  {
    v17 = sub_1D725844C();
    (*(v16 + 8))(v4, v14);
  }

  v18 = [objc_allocWithZone(NELinkMetadataSource) initWithTitle:v11 url:v17 imageProvider:v15 iconProvider:v15];

  v19 = [v18 linkMetadata];
  sub_1D5E3E404(v9);
  return v19;
}

id sub_1D6D274B0(uint64_t a1)
{
  v2 = sub_1D725C2FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  sub_1D725C2DC();
  sub_1D725C2CC();
  (*(v3 + 8))(v6, v2);
  v8 = sub_1D726203C();

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1D6D27B1C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6F596C0;
  aBlock[3] = &block_descriptor_94;
  v11 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  return v7;
}

void sub_1D6D276A8(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5B542A8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1D726294C();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a6;
    v16[6] = a1;
    v16[7] = a2;
    swift_unknownObjectRetain();
    sub_1D5DEA510(a1, a2);
    sub_1D6BD1334(0, 0, v12, &unk_1D734D150, v16);
  }

  else if (a1)
  {
    a1(0, 0);
  }
}

uint64_t sub_1D6D27828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_1D6D278C0;

  return sub_1D6D27BF8(a5);
}

uint64_t sub_1D6D278C0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6D279C0, 0, 0);
}

uint64_t sub_1D6D279C0()
{
  v1 = v0[5];
  if (v1 && (v2 = UIImagePNGRepresentation(v1)) != 0)
  {
    v3 = v2;
    v4 = sub_1D725867C();
    v6 = v5;

    v7 = sub_1D725865C();
    sub_1D5B952F8(v4, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[2];
  v9 = v0[5];
  if (v8)
  {
    v10 = v7;
    v8(v7, 0);
  }

  else
  {

    v9 = v7;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D6D27B24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6D27828(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D6D27C18()
{
  v1 = [*(v0 + 48) coverImageAssetHandle];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 filePath];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1D726207C();
      v7 = v6;

      *(v0 + 32) = v5;
      *(v0 + 40) = v7;
      sub_1D5F129A4();
      swift_allocObject();
      v8 = sub_1D725BB1C();
    }

    else
    {
      *(swift_task_alloc() + 16) = v2;
      sub_1D5F129A4();
      swift_allocObject();
      v8 = sub_1D725BBAC();
    }

    *(v0 + 64) = v8;
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_1D6D27DBC;

    return MEMORY[0x1EEE44EE0](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D6D27DBC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D6D27ED8;
  }

  else
  {

    v2 = sub_1D6045CB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6D27ED8()
{
  v18 = v0;

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  __swift_project_value_buffer(v1, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EBC();
  swift_unknownObjectRelease();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  v6 = v0[7];
  if (v4)
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v7 identifier];
    v11 = sub_1D726207C();
    v13 = v12;

    v14 = sub_1D5BC5100(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1D5B42000, v2, v3, "Failed downloading asset handle for Puzzle Type ID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t WebEmbedDataVisualization.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v9, v5, type metadata accessor for GenericDataVisualization);
    v15 = 0x3A636972656E6567;
    v16 = 0xE90000000000003ALL;
    MEMORY[0x1DA6F9910](*v5, v5[1]);
    v10 = v15;
    sub_1D5BF1BAC(v5, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v11 = *v9;
    v15 = 0x3A3A7374726F7073;
    v16 = 0xE800000000000000;
    v14[1] = v11;
    v12 = SportsDataVisualization.identifier.getter();
    MEMORY[0x1DA6F9910](v12);

    return v15;
  }

  return v10;
}

uint64_t WebEmbedDataVisualization.urlDataSources.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v1, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v11 = *v9;
    v12 = *v9 >> 61;
    if (v12 <= 2)
    {
      if (!v12)
      {
        v10 = *(*(v11 + 16) + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources);

LABEL_17:

        return v10;
      }

      v16 = v11 & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 == 1)
      {
        v14 = *(v16 + 16);
        v15 = &OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources;
      }

      else
      {
        v14 = *(v16 + 16);
        v15 = &OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_urlDataSources;
      }
    }

    else
    {
      v13 = v11 & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 > 4)
      {
        if (v12 == 5)
        {
          v14 = *(v13 + 16);
          v15 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources;
        }

        else
        {
          v14 = *(v13 + 16);
          v15 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources;
        }
      }

      else if (v12 == 3)
      {
        v14 = *(v13 + 16);
        v15 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources;
      }

      else
      {
        v14 = *(v13 + 16);
        v15 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources;
      }
    }

    v10 = *(v14 + *v15);

    goto LABEL_17;
  }

  sub_1D5BE762C(v9, v5, type metadata accessor for GenericDataVisualization);
  v10 = *&v5[*(v2 + 24)];

  sub_1D5BF1BAC(v5, type metadata accessor for GenericDataVisualization);
  return v10;
}

uint64_t WebEmbedDataVisualization.webEmbedKind.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61880A0(v1, v6);
  v7 = swift_getEnumCaseMultiPayload() == 1;
  result = sub_1D5BF1BAC(v6, type metadata accessor for WebEmbedDataVisualization);
  *a1 = v7;
  return result;
}

uint64_t WebEmbedDataVisualization.kind.getter()
{
  v1 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BF1BAC(v4, type metadata accessor for WebEmbedDataVisualization);
    return 0x636972656E6567;
  }

  else
  {
    v6 = *v4 >> 61;

    if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          return 0x676E69646E617473;
        }

        else
        {
          return 0x74656B63617262;
        }
      }

      else
      {
        return 0x65726F6373;
      }
    }

    else if (v6 > 4)
    {
      if (v6 == 5)
      {
        return 0x65527972756A6E69;
      }

      else
      {
        return 0x6579616C5079656BLL;
      }
    }

    else if (v6 == 3)
    {
      return 0x65726F6353786F62;
    }

    else
    {
      return 0x726F6353656E696CLL;
    }
  }
}

uint64_t WebEmbedDataVisualization.sportsDataVisualization.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = sub_1D5BF1BAC(v7, type metadata accessor for WebEmbedDataVisualization);
    v9 = 0xF000000000000007;
  }

  else
  {
    v9 = *v7;
  }

  *a1 = v9;
  return result;
}

uint64_t static WebEmbedDataVisualization.== infix(_:_:)()
{
  v0 = WebEmbedDataVisualization.identifier.getter();
  v2 = v1;
  if (v0 == WebEmbedDataVisualization.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  return v4 & 1;
}

uint64_t sub_1D6D28818()
{
  v1 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D6D2968C();
    v6 = sub_1D6D29D78();
    v15 = v5;
    sub_1D6985118(v6);
    v7 = MEMORY[0x1E6968FB0];
    sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
    sub_1D72585BC();
    sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v7, MEMORY[0x1E69E6328]);
    sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v8 = sub_1D72623CC();

    sub_1D5BF1BAC(v4, type metadata accessor for WebEmbedDataVisualization);
  }

  else
  {
    v9 = *v4;
    if (*v4 >> 61 == 2)
    {
      v8 = *(*((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
    }

    else
    {
      v15 = *v4;
      v10 = sub_1D6F86D04();
      v14[1] = v9;
      v11 = sub_1D6F87060();
      v14[0] = v10;
      sub_1D6985118(v11);
      v15 = v14[0];
      v12 = MEMORY[0x1E6968FB0];
      sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
      sub_1D72585BC();
      sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v12, MEMORY[0x1E69E6328]);
      sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v8 = sub_1D72623CC();
    }
  }

  return v8;
}

unint64_t sub_1D6D28B24()
{
  v1 = v0;
  sub_1D5E4CF90(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebEmbedDataVisualization(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v47 - v15);
  sub_1D61880A0(v1, &v47 - v15);
  v57 = v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BF1BAC(v16, type metadata accessor for WebEmbedDataVisualization);
    return MEMORY[0x1E69E7CC0];
  }

  v17 = MEMORY[0x1E69E7CC0];
  v51 = *v16;
  v18 = MEMORY[0x1E69E7CC0];
  if (v51 >> 61 == 2)
  {
    v19 = *((v51 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    (*(v4 + 16))(v7, v19 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations, v3);
    sub_1D6D2C068(&unk_1EDF17890, sub_1D5E4CF90, MEMORY[0x1E69D6BB0]);

    sub_1D726238C();
    v49 = v9;
    v50 = v59;
    v47 = v19;
    v48 = v12;
    if (v59 >> 62)
    {
      goto LABEL_61;
    }

    v20 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v21 = v60;
    v18 = MEMORY[0x1E69E7CC0];
    if (v60 == v20)
    {
LABEL_7:

      v12 = v48;
      v9 = v49;
      v17 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v54 = v50 & 0xFFFFFFFFFFFFFF8;
    v55 = v50 & 0xC000000000000001;
    v52 = v20;
    v53 = v50 + 32;
    while (1)
    {
      if (v55)
      {
        v29 = MEMORY[0x1DA6FB460](v21, v50);
        v30 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v20 = sub_1D7263BFC();
          goto LABEL_6;
        }

        if (v21 >= *(v54 + 16))
        {
          goto LABEL_55;
        }

        v29 = *(v53 + 8 * v21);

        v30 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_54;
        }
      }

      v60 = v30;
      v31 = *(v29 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events);
      if (v31 >> 62)
      {
        v32 = sub_1D7263BFC();
        if (!v32)
        {
LABEL_39:

          v34 = MEMORY[0x1E69E7CC0];
          goto LABEL_40;
        }
      }

      else
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v32)
        {
          goto LABEL_39;
        }
      }

      v58 = MEMORY[0x1E69E7CC0];
      sub_1D6997184(0, v32 & ~(v32 >> 63), 0);
      if (v32 < 0)
      {
        goto LABEL_58;
      }

      v56 = v18;
      v33 = 0;
      v34 = v58;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1DA6FB460](v33, v31);
        }

        else
        {
          v35 = *(v31 + 8 * v33 + 32);
        }

        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        v58 = v34;
        v38 = *(v34 + 16);
        v37 = *(v34 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1D6997184((v37 > 1), v38 + 1, 1);
          v34 = v58;
        }

        ++v33;
        *(v34 + 16) = v38 + 1;
        *(v34 + 8 * v38 + 32) = v36;
      }

      while (v32 != v33);

      v18 = v56;
      v20 = v52;
LABEL_40:
      v39 = *(v34 + 16);
      v40 = *(v18 + 2);
      v41 = v40 + v39;
      if (__OFADD__(v40, v39))
      {
        goto LABEL_56;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v41 <= *(v18 + 3) >> 1)
      {
        if (*(v34 + 16))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v40 <= v41)
        {
          v43 = v40 + v39;
        }

        else
        {
          v43 = v40;
        }

        v18 = sub_1D698BA80(isUniquelyReferenced_nonNull_native, v43, 1, v18);
        if (*(v34 + 16))
        {
LABEL_49:
          if ((*(v18 + 3) >> 1) - *(v18 + 2) < v39)
          {
            goto LABEL_59;
          }

          swift_arrayInitWithCopy();

          if (v39)
          {
            v44 = *(v18 + 2);
            v45 = __OFADD__(v44, v39);
            v46 = v44 + v39;
            if (v45)
            {
              goto LABEL_60;
            }

            *(v18 + 2) = v46;
          }

          goto LABEL_19;
        }
      }

      if (v39)
      {
        goto LABEL_57;
      }

LABEL_19:
      v21 = v60;
      if (v60 == v20)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v22 = *(v18 + 2);
  if (!v22)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v59 = v17;
  sub_1D6997134(0, v22, 0);
  v23 = 32;
  v24 = v59;
  do
  {
    v25 = v18;
    *v12 = *&v18[v23];
    swift_storeEnumTagMultiPayload();
    v59 = v24;
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);

    if (v26 >= v27 >> 1)
    {
      sub_1D6997134((v27 > 1), v26 + 1, 1);
      v24 = v59;
    }

    *(v24 + 16) = v26 + 1;
    sub_1D5BE762C(v12, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, type metadata accessor for WebEmbedDataVisualization);
    v23 += 8;
    --v22;
    v18 = v25;
  }

  while (v22);

  return v24;
}

uint64_t WebEmbedKind.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

double sub_1D6D29200@<D0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v13, v9, type metadata accessor for GenericDataVisualization);
    v14 = *(v6 + 20);
    v15 = sub_1D72585BC();
    (*(*(v15 - 8) + 16))(a2, &v9[v14], v15);
    sub_1D5BF1BAC(v9, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v17[1] = *v13;
    a1();
  }

  return result;
}

uint64_t sub_1D6D29394()
{
  v0 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v27 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for WebEmbedDataVisualization(0);
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  v11 = sub_1D6D28B24();
  v12 = *(v11 + 16);
  if (v12)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v12, 0);
    v13 = v33;
    v14 = *(v3 + 80);
    v26 = v11;
    v15 = v11 + ((v14 + 32) & ~v14);
    v28 = *(v3 + 72);
    do
    {
      sub_1D61880A0(v15, v10);
      sub_1D61880A0(v10, v6);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = v27;
        sub_1D5BE762C(v6, v27, type metadata accessor for GenericDataVisualization);
        v31 = 0x3A636972656E6567;
        v32 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v16, v16[1]);
        v17 = v31;
        v18 = v32;
        sub_1D5BF1BAC(v10, type metadata accessor for WebEmbedDataVisualization);
        v19 = v16;
        v20 = type metadata accessor for GenericDataVisualization;
      }

      else
      {
        v30 = *v6;
        v31 = 0x3A3A7374726F7073;
        v32 = 0xE800000000000000;
        v21 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v21);

        v17 = v31;
        v18 = v32;
        v20 = type metadata accessor for WebEmbedDataVisualization;
        v19 = v10;
      }

      sub_1D5BF1BAC(v19, v20);
      v33 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D5BFC364((v22 > 1), v23 + 1, 1);
        v13 = v33;
      }

      *(v13 + 16) = v23 + 1;
      v24 = v13 + 16 * v23;
      *(v24 + 32) = v17;
      *(v24 + 40) = v18;
      v15 += v28;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

void *sub_1D6D2968C()
{
  v1 = v0;
  v2 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D72585BC();
  v6 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v17, v5, type metadata accessor for GenericDataVisualization);
    v18 = *&v5[*(v2 + 24)];
    if (v18 >> 62)
    {
      v19 = sub_1D7263BFC();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x1E69E7CC0];
    if (!v19)
    {
LABEL_16:
      v47 = v13;
      v28 = MEMORY[0x1E6968FB0];
      sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
      sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v28, MEMORY[0x1E69E6328]);
      sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v27 = sub_1D72623CC();

      sub_1D5BF1BAC(v5, type metadata accessor for GenericDataVisualization);
      return v27;
    }

    v43 = v18;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D69971B4(0, v19 & ~(v19 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v42 = v5;
      v20 = 0;
      v13 = v47;
      v21 = v43;
      v44 = v43 & 0xC000000000000001;
      v22 = (v6 + 16);
      v23 = v19;
      do
      {
        if (v44)
        {
          v24 = MEMORY[0x1DA6FB460](v20, v21);
          (*v22)(v9, v24 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v45);
          v21 = v43;
          swift_unknownObjectRelease();
        }

        else
        {
          (*v22)(v9, *(v21 + 8 * v20 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v45);
        }

        v47 = v13;
        v26 = *(v13 + 2);
        v25 = *(v13 + 3);
        if (v26 >= v25 >> 1)
        {
          sub_1D69971B4((v25 > 1), v26 + 1, 1);
          v21 = v43;
          v13 = v47;
        }

        ++v20;
        *(v13 + 2) = v26 + 1;
        (*(v6 + 32))(&v13[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26], v9, v45);
      }

      while (v23 != v20);
      v5 = v42;
      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
    v1 = *v17;
    if (*v17 >> 61 == 2)
    {
      v27 = *(*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_dataSourceUrls);

LABEL_30:

      return v27;
    }

    v47 = *v17;
    v29 = sub_1D6F88478();
    if (!(v29 >> 62))
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_19;
    }
  }

  v30 = sub_1D7263BFC();
LABEL_19:
  v31 = MEMORY[0x1E69E7CC0];
  if (!v30)
  {
LABEL_29:
    v47 = v31;
    v40 = MEMORY[0x1E6968FB0];
    sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
    sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v40, MEMORY[0x1E69E6328]);
    sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v27 = sub_1D72623CC();

    goto LABEL_30;
  }

  v43 = v1;
  v46 = MEMORY[0x1E69E7CC0];

  result = sub_1D69971B4(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v31 = v46;
    v44 = v32 & 0xC000000000000001;
    v35 = (v6 + 16);
    v36 = v32;
    do
    {
      if (v44)
      {
        v37 = MEMORY[0x1DA6FB460](v34, v36);
        (*v35)(v13, v37 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v45);
        swift_unknownObjectRelease();
      }

      else
      {
        (*v35)(v13, *(v36 + 8 * v34 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v45);
      }

      v46 = v31;
      v39 = *(v31 + 2);
      v38 = *(v31 + 3);
      if (v39 >= v38 >> 1)
      {
        sub_1D69971B4((v38 > 1), v39 + 1, 1);
        v31 = v46;
      }

      ++v34;
      *(v31 + 2) = v39 + 1;
      (*(v6 + 32))(&v31[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v39], v13, v45);
    }

    while (v30 != v34);

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

void *sub_1D6D29D78()
{
  v1 = 0;
  v90 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v90, v2);
  v92 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v106 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v104 = &v89 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v105 = &v89 - v13;
  v14 = type metadata accessor for WebEmbedDataVisualization(0);
  v99 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v94 = (&v89 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v89 - v27);
  sub_1D61880A0(v0, &v89 - v27);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (*v28 >> 61 == 2)
    {
      v85 = *(*((*v28 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_childDataSourceUrls);
    }

    else
    {
      v110 = MEMORY[0x1E69E7CC0];
      v87 = MEMORY[0x1E6968FB0];
      sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
      sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v87, MEMORY[0x1E69E6328]);
      sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v85 = sub_1D72623CC();
    }

    return v85;
  }

  result = sub_1D6D28B24();
  v98 = result[2];
  if (!v98)
  {

    v86 = MEMORY[0x1E69E7CC0];
LABEL_76:
    v110 = v86;
    v88 = MEMORY[0x1E6968FB0];
    sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
    sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v88, MEMORY[0x1E69E6328]);
    sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v85 = sub_1D72623CC();

    sub_1D5BF1BAC(v28, type metadata accessor for WebEmbedDataVisualization);
    return v85;
  }

  v89 = v28;
  v30 = 0;
  v97 = result + ((*(v99 + 80) + 32) & ~*(v99 + 80));
  v31 = (v5 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v107 = v5 + 32;
  v108 = v4;
  v93 = v14;
  v95 = v17;
  v96 = result;
  v33 = v94;
  v102 = v24;
  while (v30 < result[2])
  {
    v103 = v32;
    sub_1D61880A0(&v97[*(v99 + 72) * v30], v24);
    sub_1D61880A0(v24, v33);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v101 = v30;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D61880A0(v24, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v100 = v1;
        v37 = v17;
        v38 = v92;
        sub_1D5BE762C(v37, v92, type metadata accessor for GenericDataVisualization);
        v39 = *(v38 + *(v90 + 24));
        if (v39 >> 62)
        {
          v40 = sub_1D7263BFC();
        }

        else
        {
          v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v41 = MEMORY[0x1E69E7CC0];
        if (v40)
        {
          v110 = MEMORY[0x1E69E7CC0];
          result = sub_1D69971B4(0, v40 & ~(v40 >> 63), 0);
          if (v40 < 0)
          {
            goto LABEL_84;
          }

          v42 = 0;
          v41 = v110;
          do
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x1DA6FB460](v42, v39);
              (*v31)(v106, v43 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
              swift_unknownObjectRelease();
            }

            else
            {
              (*v31)(v106, *(v39 + 8 * v42 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
            }

            v110 = v41;
            v45 = *(v41 + 16);
            v44 = *(v41 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_1D69971B4((v44 > 1), v45 + 1, 1);
              v41 = v110;
            }

            ++v42;
            *(v41 + 16) = v45 + 1;
            v4 = v108;
            (*(v5 + 32))(v41 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v45, v106, v108);
          }

          while (v40 != v42);
        }

        v110 = v41;
        v68 = MEMORY[0x1E6968FB0];
        sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
        sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v68, MEMORY[0x1E69E6328]);
        sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        v1 = v100;
        v50 = sub_1D72623CC();

        sub_1D5BF1BAC(v92, type metadata accessor for GenericDataVisualization);
        goto LABEL_56;
      }

      v49 = *v17;
      if (v49 >> 61 == 2)
      {
        v50 = *(*((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_dataSourceUrls);

LABEL_56:
        v73 = v102;
        v74 = sub_1D6D29D78();
        v110 = v50;
        sub_1D6985118(v74);
        v75 = MEMORY[0x1E6968FB0];
        sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
        sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v75, MEMORY[0x1E69E6328]);
        sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        v48 = sub_1D72623CC();

        sub_1D5BF1BAC(v73, type metadata accessor for WebEmbedDataVisualization);
        v33 = v94;
        sub_1D5BF1BAC(v94, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_57;
      }

      v100 = v1;
      v110 = v49;
      v60 = sub_1D6F88478();
      v61 = v60;
      if (v60 >> 62)
      {
        v62 = sub_1D7263BFC();
        v91 = v49;
        if (!v62)
        {
          goto LABEL_54;
        }

LABEL_39:
        v109 = MEMORY[0x1E69E7CC0];

        result = sub_1D69971B4(0, v62 & ~(v62 >> 63), 0);
        if (v62 < 0)
        {
          goto LABEL_85;
        }

        v63 = 0;
        v64 = v109;
        do
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x1DA6FB460](v63, v61);
            (*v31)(v104, v65 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
            swift_unknownObjectRelease();
          }

          else
          {
            (*v31)(v104, *(v61 + 8 * v63 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
          }

          v109 = v64;
          v67 = *(v64 + 16);
          v66 = *(v64 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_1D69971B4((v66 > 1), v67 + 1, 1);
            v64 = v109;
          }

          ++v63;
          *(v64 + 16) = v67 + 1;
          v4 = v108;
          (*(v5 + 32))(v64 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v67, v104, v108);
        }

        while (v62 != v63);
      }

      else
      {
        v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v91 = v49;
        if (v62)
        {
          goto LABEL_39;
        }

LABEL_54:
        v64 = MEMORY[0x1E69E7CC0];
      }

      v110 = v64;
      v72 = MEMORY[0x1E6968FB0];
      sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
      sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v72, MEMORY[0x1E69E6328]);
      sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v1 = v100;
      v50 = sub_1D72623CC();

      goto LABEL_56;
    }

    v46 = *v33;
    if (*v33 >> 61 == 2)
    {
      v47 = v46 & 0x1FFFFFFFFFFFFFFFLL;
      sub_1D5BF1BAC(v102, type metadata accessor for WebEmbedDataVisualization);
      v48 = *(*(v47 + 16) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
    }

    else
    {
      v100 = v1;
      v91 = v46;
      v110 = v46;
      v51 = sub_1D6F88478();
      v52 = v51;
      if (v51 >> 62)
      {
        v53 = sub_1D7263BFC();
      }

      else
      {
        v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v54 = MEMORY[0x1E69E7CC0];
      if (v53)
      {
        v109 = MEMORY[0x1E69E7CC0];

        result = sub_1D69971B4(0, v53 & ~(v53 >> 63), 0);
        if (v53 < 0)
        {
          goto LABEL_83;
        }

        v55 = 0;
        v56 = v109;
        do
        {
          if ((v52 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x1DA6FB460](v55, v52);
            (*v31)(v105, v57 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
            swift_unknownObjectRelease();
          }

          else
          {
            (*v31)(v105, *(v52 + 8 * v55 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
          }

          v109 = v56;
          v59 = *(v56 + 16);
          v58 = *(v56 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_1D69971B4((v58 > 1), v59 + 1, 1);
            v56 = v109;
          }

          ++v55;
          *(v56 + 16) = v59 + 1;
          v4 = v108;
          (*(v5 + 32))(v56 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v59, v105, v108);
        }

        while (v53 != v55);

        v54 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v56 = MEMORY[0x1E69E7CC0];
      }

      v110 = v56;
      v69 = MEMORY[0x1E6968FB0];
      sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
      sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v69, MEMORY[0x1E69E6328]);
      sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v1 = v100;
      v70 = sub_1D72623CC();

      v110 = v54;
      v71 = sub_1D72623CC();

      v110 = v70;
      v4 = v108;
      sub_1D6985118(v71);
      v48 = sub_1D72623CC();

      sub_1D5BF1BAC(v102, type metadata accessor for WebEmbedDataVisualization);

      v33 = v94;
    }

LABEL_57:
    v76 = *(v48 + 16);
    result = v103;
    v77 = v103[2];
    v78 = v77 + v76;
    if (__OFADD__(v77, v76))
    {
      goto LABEL_79;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v79 = v103;
    if (result && v78 <= v103[3] >> 1)
    {
      if (*(v48 + 16))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v77 <= v78)
      {
        v80 = v77 + v76;
      }

      else
      {
        v80 = v77;
      }

      result = sub_1D5D57E44(result, v80, 1, v103);
      v79 = result;
      if (*(v48 + 16))
      {
LABEL_66:
        if ((v79[3] >> 1) - v79[2] < v76)
        {
          goto LABEL_81;
        }

        v81 = v79;
        swift_arrayInitWithCopy();

        v32 = v81;
        result = v96;
        v35 = v101;
        if (v76)
        {
          v82 = v81[2];
          v83 = __OFADD__(v82, v76);
          v84 = v82 + v76;
          if (v83)
          {
            goto LABEL_82;
          }

          v81[2] = v84;
        }

        goto LABEL_5;
      }
    }

    v34 = v79;

    v32 = v34;
    result = v96;
    v35 = v101;
    if (v76)
    {
      goto LABEL_80;
    }

LABEL_5:
    v30 = v35 + 1;
    v17 = v95;
    v24 = v102;
    if (v30 == v98)
    {
      v86 = v32;

      v28 = v89;
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t WebEmbedDataVisualization.dataSourcesContains(url:)(uint64_t a1)
{
  v2 = WebEmbedDataVisualization.urlDataSources.getter();
  v4[2] = a1;
  LOBYTE(a1) = sub_1D6151AD0(sub_1D6D2AEA8, v4, v2);

  return a1 & 1;
}

uint64_t sub_1D6D2AEEC()
{
  v0 = WebEmbedDataVisualization.identifier.getter();
  v2 = v1;
  if (v0 == WebEmbedDataVisualization.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  return v4 & 1;
}

double WebEmbedDataVisualization.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v10, v6, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1BAC(v6, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v12[1] = *v10;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  return result;
}

uint64_t WebEmbedDataVisualization.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7264A0C();
  sub_1D61880A0(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v9, v5, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1BAC(v5, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v11 = *v9;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6D2B250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7264A0C();
  sub_1D61880A0(v3, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v11, v7, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1BAC(v7, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v13 = *v11;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t WebEmbedDataVisualization.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v22, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D2BFB0(0, &qword_1EDF039C0, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D2BEB4();
  v15 = v25;
  sub_1D7264B0C();
  if (!v15)
  {
    v21 = v14;
    v25 = v11;
    v17 = v23;
    v16 = v24;
    v29 = 0;
    sub_1D6D2BF08();
    sub_1D726431C();
    if (v30)
    {
      v28 = 1;
      sub_1D6D2C068(&qword_1EC895370, type metadata accessor for GenericDataVisualization, &protocol conformance descriptor for GenericDataVisualization);
      sub_1D726431C();
      (*(v17 + 8))(v10, v7);
      v19 = v21;
      sub_1D5BE762C(v5, v21, type metadata accessor for GenericDataVisualization);
      v20 = v16;
    }

    else
    {
      v27 = 1;
      sub_1D6D2BF5C();
      sub_1D726431C();
      v20 = v16;
      (*(v17 + 8))(v10, v7);
      v19 = v21;
      *v21 = v26;
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5BE762C(v19, v20, type metadata accessor for WebEmbedDataVisualization);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double WebEmbedDataVisualization.encode(to:)(void *a1)
{
  v2 = v1;
  v20 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v20, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6D2BFB0(0, &qword_1EDF025E8, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D2BEB4();
  sub_1D7264B5C();
  sub_1D61880A0(v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v10, v6, type metadata accessor for GenericDataVisualization);
    v28 = 1;
    v27 = 0;
    sub_1D6D2C014();
    v16 = v21;
    sub_1D726443C();
    if (!v16)
    {
      v26 = 1;
      sub_1D6D2C068(&qword_1EC895378, type metadata accessor for GenericDataVisualization, &protocol conformance descriptor for GenericDataVisualization);
      sub_1D726443C();
    }

    sub_1D5BF1BAC(v6, type metadata accessor for GenericDataVisualization);
    (*(v22 + 8))(v15, v12);
  }

  else
  {
    v18 = *v10;
    v25 = 0;
    sub_1D6D2C014();
    v19 = v21;
    sub_1D726443C();
    if (!v19)
    {
      v23 = v18;
      v24 = 1;
      sub_1D6D2C0B0();
      sub_1D726443C();
    }

    (*(v22 + 8))(v15, v12);
  }

  return result;
}

void sub_1D6D2BAA4(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D6D2BB08(uint64_t a1)
{
  v2 = sub_1D6D2BEB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D2BB44(uint64_t a1)
{
  v2 = sub_1D6D2BEB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6D2BB80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636972656E6567;
  }

  else
  {
    v3 = 0x7374726F7073;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x636972656E6567;
  }

  else
  {
    v5 = 0x7374726F7073;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6D2BC24()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6D2BCA4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6D2BD10(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6D2BD98(uint64_t *a1@<X8>)
{
  v2 = 0x7374726F7073;
  if (*v1)
  {
    v2 = 0x636972656E6567;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D6D2BEB4()
{
  result = qword_1EDF0BBC0[0];
  if (!qword_1EDF0BBC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0BBC0);
  }

  return result;
}

unint64_t sub_1D6D2BF08()
{
  result = qword_1EDF0BB98;
  if (!qword_1EDF0BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BB98);
  }

  return result;
}

unint64_t sub_1D6D2BF5C()
{
  result = qword_1EDF0D138;
  if (!qword_1EDF0D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D138);
  }

  return result;
}

void sub_1D6D2BFB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6D2BEB4();
    v7 = a3(a1, &type metadata for WebEmbedDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6D2C014()
{
  result = qword_1EDF0BBA8;
  if (!qword_1EDF0BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BBA8);
  }

  return result;
}

uint64_t sub_1D6D2C068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6D2C0B0()
{
  result = qword_1EDF0D148;
  if (!qword_1EDF0D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D148);
  }

  return result;
}

unint64_t sub_1D6D2C108()
{
  result = qword_1EC895380;
  if (!qword_1EC895380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895380);
  }

  return result;
}

unint64_t sub_1D6D2C1D8()
{
  result = qword_1EC895388;
  if (!qword_1EC895388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895388);
  }

  return result;
}

unint64_t sub_1D6D2C230()
{
  result = qword_1EC895390;
  if (!qword_1EC895390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895390);
  }

  return result;
}

unint64_t sub_1D6D2C288()
{
  result = qword_1EDF0BBB0;
  if (!qword_1EDF0BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BBB0);
  }

  return result;
}

unint64_t sub_1D6D2C2E0()
{
  result = qword_1EDF0BBB8;
  if (!qword_1EDF0BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BBB8);
  }

  return result;
}

uint64_t sub_1D6D2C334(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6D2C378(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6D2C378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72627FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6D2C3CC()
{
  result = qword_1EDF0BBA0;
  if (!qword_1EDF0BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BBA0);
  }

  return result;
}

uint64_t sub_1D6D2C438(uint64_t a1)
{
  sub_1D725A76C();
  if (!*(v1 + 64))
  {
    swift_beginAccess();
    v2 = MEMORY[0x1E69D6AD8];
    sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
    sub_1D725B8DC();
    swift_endAccess();
    swift_beginAccess();
    sub_1D6D2E180(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, v2);
    sub_1D725B8DC();
    swift_endAccess();
    *(v1 + 64) = 1;

    sub_1D725B32C();
  }

  return sub_1D725A77C();
}

uint64_t sub_1D6D2C570(uint64_t *a1)
{
  v2 = v1;
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v53 - v17;
  v19 = type metadata accessor for FormatDebuggerContext(0);
  v61 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D7261B9C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = (&v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *a1;
  v59 = a1[1];
  v60 = v28;
  v29 = a1[2];
  v57 = a1[3];
  v58 = v29;
  v55 = a1[4];
  sub_1D5B5DA7C();
  *v27 = sub_1D726308C();
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8018], v23);
  LOBYTE(a1) = sub_1D7261BBC();
  result = (*(v24 + 8))(v27, v23);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  sub_1D725A76C();
  if (*(v2 + 64) == 1)
  {
    v31 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count;
    if (!*(v2 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count))
    {
      v32 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalContext;
      swift_beginAccess();
      sub_1D6D2E328(v2 + v32, v18);
      v33 = (*(v61 + 48))(v18, 1, v19);
      v54 = v32;
      if (v33 == 1)
      {
        v34 = sub_1D6CC4A78;
        v35 = v18;
      }

      else
      {
        sub_1D6D2E480(v18, v22);
        v37 = *(v22 + 16);
        v36 = *(v22 + 24);
        if (*v22 == v60 && *(v22 + 8) == v59 || (sub_1D72646CC()) && v37 == v58 && v36 == v57)
        {
          v38 = *(v22 + 40);
          sub_1D6D2E4E4(v22, type metadata accessor for FormatDebuggerContext);
          v22 = v38 + 1;
          if (!__OFADD__(v38, 1))
          {
LABEL_18:
            v39 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
            swift_beginAccess();
            v40 = *(v19 + 24);
            v41 = MEMORY[0x1E69D6AD8];
            sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
            (*(*(v42 - 8) + 16))(&v14[v40], v2 + v39, v42);
            v43 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_workspaceStack;
            swift_beginAccess();
            v44 = *(v19 + 28);
            sub_1D6D2E180(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, v41);
            (*(*(v45 - 8) + 16))(&v14[v44], v2 + v43, v45);
            v46 = v59;
            *v14 = v60;
            *(v14 + 1) = v46;
            v47 = v57;
            *(v14 + 2) = v58;
            *(v14 + 3) = v47;
            v48 = v55;
            *(v14 + 4) = v55;
            *(v14 + 5) = v22;
            (*(v61 + 56))(v14, 0, 1, v19);
            v49 = v54;
            swift_beginAccess();

            sub_1D6CC4E20(v48);
            sub_1D6D2E41C(v14, v2 + v49);
            swift_endAccess();
            sub_1D6D2E328(v2 + v49, v10);
            sub_1D6D2E328(v10, v56);

            sub_1D725B32C();

            sub_1D6D2E4E4(v10, sub_1D6CC4A78);
            result = sub_1D6D2E4E4(v14, sub_1D6CC4A78);
            v50 = *(v2 + v31);
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (!v51)
            {
              *(v2 + v31) = v52;
              sub_1D725A77C();
              return sub_1D726319C();
            }

            goto LABEL_21;
          }

          __break(1u);
        }

        v34 = type metadata accessor for FormatDebuggerContext;
        v35 = v22;
      }

      sub_1D6D2E4E4(v35, v34);
      v22 = 1;
      goto LABEL_18;
    }
  }

  return sub_1D725A77C();
}

uint64_t sub_1D6D2CB34(uint64_t a1)
{
  sub_1D725A76C();
  *(v1 + 64) = 2;

  sub_1D725B32C();

  sub_1D725A77C();
  sub_1D725A76C();
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) != 1)
  {
    return sub_1D725A77C();
  }

  *(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) = 0;
  v2 = v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
  *v2 = 0;
  *(v2 + 8) = 2;
  sub_1D725A77C();
  return sub_1D72631AC();
}

uint64_t sub_1D6D2CBFC()
{
  v1 = v0;
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19[-v8];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v19[-v12];
  sub_1D725A76C();
  if (*(v0 + 64) == 1)
  {
    swift_beginAccess();
    v14 = MEMORY[0x1E69D6AD8];
    sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
    sub_1D725B8DC();
    swift_endAccess();
    swift_beginAccess();
    sub_1D6D2E180(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, v14);
    sub_1D725B8DC();
    swift_endAccess();
    v15 = type metadata accessor for FormatDebuggerContext(0);
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalContext;
    swift_beginAccess();
    sub_1D6D2E41C(v13, v1 + v16);
    swift_endAccess();
    sub_1D6D2E328(v1 + v16, v9);
    sub_1D6D2E328(v9, v5);

    sub_1D725B32C();

    sub_1D6D2E4E4(v9, sub_1D6CC4A78);
    sub_1D6D2E4E4(v13, sub_1D6CC4A78);
    *(v1 + 64) = 0;
    v19[8] = 0;

    sub_1D725B32C();
  }

  sub_1D725A77C();
  sub_1D725A76C();
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) != 1)
  {
    return sub_1D725A77C();
  }

  *(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) = 0;
  v17 = v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
  *v17 = 0;
  *(v17 + 8) = 2;
  sub_1D725A77C();
  return sub_1D72631AC();
}

uint64_t sub_1D6D2CF00(char a1, __n128 a2)
{
  v4 = v2;
  sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1D725A76C();
  if (*(v2 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) != 1)
  {
    return sub_1D725A77C();
  }

  *(v2 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) = 0;
  v11 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
  swift_beginAccess();
  (*(v7 + 16))(v10, v4 + v11, v6);
  sub_1D6CC4D88();
  sub_1D7262BFC();
  sub_1D7262C5C();
  v12 = sub_1D7262C4C();
  (*(v7 + 8))(v10, v6);
  v13 = v4 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
  *v13 = v12;
  *(v13 + 8) = a1;
  sub_1D725A77C();
  return sub_1D72631AC();
}

void *sub_1D6D2D0E4()
{
  v1 = v0;
  v2 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21[-v10];
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D6D2E25C(0);
  swift_allocObject();
  *(v0 + 16) = sub_1D725B2FC();
  v21[7] = 0;
  sub_1D6D2E2D8(0, &qword_1EC895408, &type metadata for FormatDebugger.State, MEMORY[0x1E69D6748]);
  swift_allocObject();
  *(v0 + 24) = sub_1D725B2FC();
  v12 = type metadata accessor for FormatDebuggerContext(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  sub_1D6D2E328(v11, v7);
  sub_1D6D2E180(0, &qword_1EC895410, sub_1D6CC4A78, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v14 = sub_1D725B2FC();
  sub_1D6D2E4E4(v11, sub_1D6CC4A78);
  *(v1 + 32) = v14;
  if (qword_1EC87D730 != -1)
  {
    swift_once();
  }

  sub_1D6D2E38C();
  swift_allocObject();

  *(v1 + 40) = sub_1D725977C();
  if (qword_1EC87D738 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v15 = sub_1D725977C();
  v16 = MEMORY[0x1E69E7CC8];
  *(v1 + 48) = v15;
  *(v1 + 56) = v16;
  *(v1 + 64) = 0;
  v13((v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalContext), 1, 1, v12);
  v17 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_semaphore;
  *(v1 + v17) = dispatch_semaphore_create(0);
  v18 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_lock;
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  *(v1 + v18) = sub_1D725A7AC();
  *(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) = 0;
  v19 = v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
  *v19 = 0;
  *(v19 + 8) = 2;
  type metadata accessor for FormatDebuggerCallStackFrame(0);
  sub_1D725B8EC();
  type metadata accessor for FormatDebuggerWorkspaceStackFrame(0);
  sub_1D725B8EC();
  *(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalBindBreakExecution) = 1;
  *(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalLayoutBreakExecution) = 1;

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725974C();

  sub_1D725971C();

  sub_1D725974C();

  sub_1D725971C();

  return v1;
}

double sub_1D6D2D5D4(uint64_t a1, uint64_t *a2)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return result;
}

void sub_1D6D2D66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC8];
LABEL_16:
    swift_beginAccess();
    *(a1 + 56) = v4;

    return;
  }

  v3 = (a2 + 56);
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v7 = *(v3 - 3);
    v6 = *(v3 - 2);
    v9 = *(v3 - 1);
    v8 = *v3;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1D6D62D64(v7, v6, v9, v8);
    v13 = v4[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v4[3] < v16)
    {
      sub_1D6D74D28(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_1D6D62D64(v7, v6, v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v11;
    sub_1D6D8617C();
    v11 = v23;
    if (v17)
    {
LABEL_3:
      v5 = (v4[7] + 32 * v11);
      *v5 = v7;
      v5[1] = v6;
      v5[2] = v9;
      v5[3] = v8;

      goto LABEL_4;
    }

LABEL_11:
    v4[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v4[6] + 32 * v11);
    *v19 = v7;
    v19[1] = v6;
    v19[2] = v9;
    v19[3] = v8;
    v20 = (v4[7] + 32 * v11);
    *v20 = v7;
    v20[1] = v6;
    v20[2] = v9;
    v20[3] = v8;
    v21 = v4[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_18;
    }

    v4[2] = v22;
LABEL_4:
    v3 += 4;
    if (!--v2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_1D726493C();
  __break(1u);
}

double sub_1D6D2D884(uint64_t a1, char *a2, uint64_t a3)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return result;
}

uint64_t sub_1D6D2D914@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = v4;
  sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v57 - v13;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v58 = *a1;
  v59 = v16;
  sub_1D725A76C();
  if (a2)
  {
    if ((*(v4 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalLayoutBreakExecution) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalBindBreakExecution) & 1) == 0)
  {
    goto LABEL_26;
  }

  v57 = v17;
  v18 = v4 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
  v19 = *(v4 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState);
  if (!*(v4 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState + 8))
  {
    swift_beginAccess();
    v29 = *(v4 + 56);
    if (*(v29 + 16))
    {
      v30 = sub_1D6D62D64(v58, v15, v59, v57);
      if (v31)
      {
        v32 = (*(v29 + 56) + 32 * v30);
        v34 = *v32;
        v33 = v32[1];
        v35 = v32[2];
        v36 = v32[3];
        swift_endAccess();
        *v18 = 0;
        *(v18 + 8) = 2;
        *a3 = v34;
        a3[1] = v33;
        a3[2] = v35;
        a3[3] = v36;
        v28 = 1;
        goto LABEL_13;
      }
    }

    swift_endAccess();
    v44 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
    swift_beginAccess();
    (*(v11 + 16))(v14, v5 + v44, v10);
    sub_1D6CC4D88();
    sub_1D7262BFC();
    sub_1D7262C5C();
    v45 = sub_1D7262C4C();
    (*(v11 + 8))(v14, v10);
    if (v19 >= v45)
    {
      *v18 = 0;
      *(v18 + 8) = 2;
      v46 = v59;
      *a3 = v58;
      a3[1] = v15;
      v47 = v57;
      a3[2] = v46;
      a3[3] = v47;
      v37 = 1;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (*(v4 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState + 8) != 1)
  {
    if (v19)
    {
      *v18 = 0;
      v37 = 2;
      *(v18 + 8) = 2;
      v38 = v59;
      *a3 = v58;
      a3[1] = v15;
      v39 = v57;
      a3[2] = v38;
      a3[3] = v39;
LABEL_21:
      a3[4] = v37;

      return sub_1D725A77C();
    }

    swift_beginAccess();
    v48 = *(v4 + 56);
    if (*(v48 + 16))
    {
      v49 = sub_1D6D62D64(v58, v15, v59, v57);
      if (v50)
      {
        v51 = (*(v48 + 56) + 32 * v49);
        v53 = *v51;
        v52 = v51[1];
        v54 = v51[2];
        v55 = v51[3];
        swift_endAccess();
        *a3 = v53;
        a3[1] = v52;
        a3[2] = v54;
        a3[3] = v55;
        a3[4] = 0;
        goto LABEL_14;
      }
    }

    swift_endAccess();
LABEL_26:
    a3[4] = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    return sub_1D725A77C();
  }

  swift_beginAccess();
  v20 = *(v4 + 56);
  if (!*(v20 + 16) || (v21 = sub_1D6D62D64(v58, v15, v59, v57), (v22 & 1) == 0))
  {
    swift_endAccess();
    v40 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
    swift_beginAccess();
    (*(v11 + 16))(v14, v5 + v40, v10);
    sub_1D6CC4D88();
    sub_1D7262BFC();
    sub_1D7262C5C();
    v41 = sub_1D7262C4C();
    (*(v11 + 8))(v14, v10);
    if (v41 < v19)
    {
      *v18 = 0;
      *(v18 + 8) = 2;
      v42 = v59;
      *a3 = v58;
      a3[1] = v15;
      v43 = v57;
      a3[2] = v42;
      a3[3] = v43;
      v37 = 3;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v23 = (*(v20 + 56) + 32 * v21);
  v25 = *v23;
  v24 = v23[1];
  v26 = v23[2];
  v27 = v23[3];
  swift_endAccess();
  *v18 = 0;
  *(v18 + 8) = 2;
  *a3 = v25;
  a3[1] = v24;
  a3[2] = v26;
  a3[3] = v27;
  v28 = 3;
LABEL_13:
  a3[4] = v28;
LABEL_14:

  return sub_1D725A77C();
}

uint64_t sub_1D6D2DD9C()
{

  sub_1D6D2E4E4(v0 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalContext, sub_1D6CC4A78);

  v1 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
  v2 = MEMORY[0x1E69D6AD8];
  sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_workspaceStack;
  sub_1D6D2E180(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1D6D2DF0C()
{
  sub_1D6D2DD9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatDebugger(uint64_t a1)
{
  result = qword_1EC8953E0;
  if (!qword_1EC8953E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6D2DFB8(uint64_t a1)
{
  sub_1D6CC4A78(319);
  if (v1 <= 0x3F)
  {
    sub_1D6D2E180(319, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
    if (v2 <= 0x3F)
    {
      sub_1D6D2E180(319, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D6D2E180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D6D2E208()
{
  result = qword_1EC8953F0;
  if (!qword_1EC8953F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8953F0);
  }

  return result;
}

void sub_1D6D2E25C(uint64_t a1)
{
  if (!qword_1EC8953F8)
  {
    sub_1D6D2E2D8(255, &qword_1EC895400, &type metadata for FormatDebuggerBreakpoint, MEMORY[0x1E69E62F8]);
    v1 = sub_1D725B36C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8953F8);
    }
  }
}

void sub_1D6D2E2D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D6D2E328(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4A78(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6D2E38C()
{
  if (!qword_1EC88DD68)
  {
    v0 = sub_1D725976C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DD68);
    }
  }
}

uint64_t sub_1D6D2E41C(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4A78(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D2E480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDebuggerContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D2E4E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D6D2E564(uint64_t a1, char a2, void *a3)
{
  v8 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + *a3 + 8);
  if (a2 < 0)
  {
    sub_1D6751050(v16, v11);
    if (v3)
    {
      return v4;
    }

    v23 = a2 & 0x7F;
    sub_1D67C8650(v11);
    v4 = v19;
    v17 = type metadata accessor for FeedPuzzleStatistic;
    v18 = v11;
  }

  else
  {
    sub_1D6752174(v16, v15);
    if (v3)
    {
      return v4;
    }

    v22 = a2;
    v4 = sub_1D6CCD0FC(v15);
    v17 = type metadata accessor for FeedHeadline;
    v18 = v15;
  }

  sub_1D5BDDC48(v18, v17);
  return v4;
}

double sub_1D6D2E6DC(uint64_t a1, char a2)
{
  v5 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 < 0)
  {
    sub_1D5FB5494();
    if (v2)
    {
      return v3;
    }

    v17[15] = a2 & 0x7F;
    sub_1D67C8650(v8);
    v3 = v15;
    v13 = type metadata accessor for FeedPuzzleStatistic;
    v14 = v8;
  }

  else
  {
    sub_1D5FB61AC();
    if (v2)
    {
      return v3;
    }

    v17[14] = a2;
    v3 = sub_1D6CCD0FC(v12);
    v13 = type metadata accessor for FeedHeadline;
    v14 = v12;
  }

  sub_1D5BDDC48(v14, v13);
  return v3;
}

double FormatBindingFloatExpression.logic.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D62B50D4(v2);
}

void sub_1D6D2E894(uint64_t a1, unsigned int a2, void *a3)
{
  v7 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a2 >> 5) & 3;
  if (!v15)
  {
    sub_1D6B7C374(*(a1 + *a3), v14);
    if (v3)
    {
      return;
    }

    v19 = a2;
    sub_1D6CCD0FC(v14);
    v16 = type metadata accessor for FeedHeadline;
    v17 = v14;
    goto LABEL_7;
  }

  if (v15 == 1)
  {
    sub_1D6B7B9A4(*(a1 + *a3), v10);
    if (v3)
    {
      return;
    }

    v20 = a2 & 0x9F;
    sub_1D67C8650(v10);
    v16 = type metadata accessor for FeedPuzzleStatistic;
    v17 = v10;
LABEL_7:
    sub_1D5BDDC48(v17, v16);
    return;
  }

  sub_1D6D2E564(a1, a2 & 0x9F, a3);
}