NewsFeed::FormatFlexBoxNodeDisplay_optional __swiftcall FormatFlexBoxNodeDisplay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t sub_1D6DFAF44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E696C6E69;
  }

  else
  {
    v3 = 0x6B636F6C62;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E696C6E69;
  }

  else
  {
    v5 = 0x6B636F6C62;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

unint64_t sub_1D6DFAFE8()
{
  result = qword_1EDF26168;
  if (!qword_1EDF26168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26168);
  }

  return result;
}

uint64_t sub_1D6DFB03C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6DFB0B8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6DFB120(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6DFB198(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D6DFB1F8(uint64_t *a1@<X8>)
{
  v2 = 0x6B636F6C62;
  if (*v1)
  {
    v2 = 0x656E696C6E69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D6DFB230(uint64_t a1)
{
  *(a1 + 8) = sub_1D6DFB260();
  result = sub_1D6DFB2B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6DFB260()
{
  result = qword_1EC8966E0;
  if (!qword_1EC8966E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8966E0);
  }

  return result;
}

unint64_t sub_1D6DFB2B4()
{
  result = qword_1EDF26160;
  if (!qword_1EDF26160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26160);
  }

  return result;
}

unint64_t sub_1D6DFB30C()
{
  result = qword_1EC8966E8;
  if (!qword_1EC8966E8)
  {
    sub_1D6DFB364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8966E8);
  }

  return result;
}

void sub_1D6DFB364()
{
  if (!qword_1EC8966F0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8966F0);
    }
  }
}

unint64_t sub_1D6DFB3C4(uint64_t a1)
{
  result = sub_1D6666300();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DFB3EC(void *a1)
{
  a1[1] = sub_1D6DFB424();
  a1[2] = sub_1D6DFB478();
  result = sub_1D6DFAFE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DFB424()
{
  result = qword_1EDF26158;
  if (!qword_1EDF26158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26158);
  }

  return result;
}

unint64_t sub_1D6DFB478()
{
  result = qword_1EDF26170;
  if (!qword_1EDF26170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26170);
  }

  return result;
}

void sub_1D6DFB558(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 5)
  {
    if (v1 > 8)
    {
      if (v1 == 9)
      {
        return;
      }

      if (v1 == 10)
      {
        sub_1D6DFBEBC((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v39);
        sub_1D6DFBEBC(v39, v41);
        v2 = v42;
        if (v42)
        {
          v3 = v43;
          __swift_project_boxed_opaque_existential_1(v41, v42);
          (*(v3 + 40))(v2, v3);
          sub_1D6DFBFDC(v39);
          __swift_destroy_boxed_opaque_existential_1(v41);
        }

        else
        {
          sub_1D6DFBFDC(v39);
          sub_1D6DFBFDC(v41);
        }

        return;
      }

      v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *(v30 + 16);

      v33 = 0;
      while (v31 != v33)
      {
        if (v33 >= *(v30 + 16))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return;
        }

        v34 = v33 + 1;
        *&v39[0] = *(v30 + 8 * v33 + 32);
        v35 = sub_1D6EE6930(v32);
        v33 = v34;
        if (v35)
        {
LABEL_50:

          return;
        }
      }
    }

    else
    {
      if (v1 == 6 || v1 == 7)
      {
        return;
      }

      v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *(v18 + 16);

      v20 = 0;
      while (v19 != v20)
      {
        if (v20 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_57;
        }

        v21 = v20 + 1;
        v22 = *(v18 + 8 * v20 + 32);

        sub_1D6DFB558(v22);
        v24 = v23;

        v20 = v21;
        if (v24)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_54:

    return;
  }

  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v44.origin.x = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v44.origin.y = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v44.size.width = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v44.size.height = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      if (CGRectGetHeight(v44) == 0.0)
      {
        sub_1D726337C();
      }
    }

    else if (v1 != 4)
    {
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v39[7] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v39[8] = v25;
      v39[9] = v26;
      v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v39[3] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v39[4] = v27;
      v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v39[5] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v39[6] = v28;
      v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v39[0] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v39[1] = v29;
      v39[2] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D60081E0(v39);
    }
  }

  else if (v1)
  {
    if (v1 != 1)
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (v5)
      {
        v38 = *(v5 + 16);
        if (v38)
        {

          v6 = 0;
          v7 = v5 + 64;
          v36 = v5;
          while (1)
          {
            if (v6 >= *(v5 + 16))
            {
              goto LABEL_58;
            }

            v10 = *(v7 - 16);
            v11 = v10 >> 61;
            if ((v10 >> 61) > 1)
            {
              break;
            }

            if (v11)
            {
              type metadata accessor for FormatLayoutError(0);
              sub_1D5D285FC();
              v8 = swift_allocError();
              *v16 = 0x69702074616F6C46;
              v17 = 0xEB000000006C6578;
LABEL_39:
              v16[1] = v17;
              swift_storeEnumTagMultiPayload();

LABEL_26:

              goto LABEL_27;
            }

            if (*(v10 + 16) > 0.0)
            {
              goto LABEL_50;
            }

LABEL_28:
            ++v6;
            v7 += 40;
            if (v38 == v6)
            {
              goto LABEL_54;
            }
          }

          if (v11 == 2)
          {
            type metadata accessor for FormatLayoutError(0);
            sub_1D5D285FC();
            v8 = swift_allocError();
            *v16 = 0x63732074616F6C46;
            v17 = 0xEC00000064656C61;
            goto LABEL_39;
          }

          if (v11 == 3)
          {
            type metadata accessor for FormatLayoutError(0);
            sub_1D5D285FC();
            v8 = swift_allocError();
            *v9 = 0xD000000000000011;
            v9[1] = 0x80000001D73C5F20;
            swift_storeEnumTagMultiPayload();

            goto LABEL_26;
          }

          v12 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v37 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          type metadata accessor for FormatLayoutError(0);
          sub_1D5D285FC();
          v8 = swift_allocError();
          v14 = v13;

          sub_1D7263D4C();

          strcpy(v39, "Float option: ");
          HIBYTE(v39[0]) = -18;
          MEMORY[0x1DA6F9910](v37, v12);
          v5 = v36;

          v15 = *(&v39[0] + 1);
          *v14 = *&v39[0];
          v14[1] = v15;
          swift_storeEnumTagMultiPayload();
LABEL_27:
          swift_willThrow();

          goto LABEL_28;
        }
      }
    }
  }

  else if (*(a1 + 16))
  {

    sub_1D6DFBB8C(v4);
  }
}

double sub_1D6DFBB8C(uint64_t a1)
{
  if (*(a1 + 16) == 1 && (*(a1 + 40) & 1) == 0)
  {

    sub_1D6013498();
    v1 = v7;
  }

  else
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    v4 = v3;
    v5 = sub_1D6936F98(a1);
    MEMORY[0x1DA6F9910](v5);

    *v4 = 0x6E6F697461757145;
    v4[1] = 0xEA0000000000203ALL;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1D6DFBCA0(uint64_t a1)
{
  if (*(a1 + 16) == 1 && (*(a1 + 49) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(a1 + 40);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5D285FC();
      swift_allocError();
      v10 = v9;
      sub_1D5E04C58(v2, v8, v7, 0);
      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](v2, v8);
      *v10 = 0xD000000000000010;
      v10[1] = 0x80000001D73F3720;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D5E04C68(v2, v8, v7, 0);
    }
  }

  else
  {
    v2 = type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    v4 = v3;
    v5 = sub_1D6937104(a1);
    MEMORY[0x1DA6F9910](v5);

    *v4 = 0x6E6F697461757145;
    v4[1] = 0xEA0000000000203ALL;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v2;
}

BOOL sub_1D6DFBE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  do
  {
    v3 = v1;
    if (!v1)
    {
      break;
    }

    v4 = *v2++;

    sub_1D6DFB558(v4);
    v6 = v5;

    v1 = v3 - 1;
  }

  while ((v6 & 1) != 0);
  return v3 == 0;
}

uint64_t sub_1D6DFBEBC(uint64_t a1, uint64_t a2)
{
  sub_1D6DFBF20(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6DFBF20(uint64_t a1)
{
  if (!qword_1EDF2C330)
  {
    sub_1D6DFBF78();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF2C330);
    }
  }
}

unint64_t sub_1D6DFBF78()
{
  result = qword_1EDF2C338[0];
  if (!qword_1EDF2C338[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDF2C338);
  }

  return result;
}

uint64_t sub_1D6DFBFDC(uint64_t a1)
{
  sub_1D6DFBF20(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D6DFC074@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66ED26C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1D6DFC0BC(void *a1)
{
  a1[1] = sub_1D66589E0();
  a1[2] = sub_1D6658F0C();
  result = sub_1D6DFC0F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DFC0F4()
{
  result = qword_1EC8966F8;
  if (!qword_1EC8966F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8966F8);
  }

  return result;
}

unint64_t sub_1D6DFC148(uint64_t a1)
{
  result = sub_1D6DFC170();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DFC170()
{
  result = qword_1EC896700;
  if (!qword_1EC896700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896700);
  }

  return result;
}

void sub_1D6DFC1C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v38 - v14;
  v16 = sub_1D72577EC();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v4;
  v39 = *(v4 + 24);
  (*(v17 + 16))(v21, a2, v16, v19);
  v22 = sub_1D725B4EC();
  if (!v22)
  {
    goto LABEL_7;
  }

  v38[1] = a3;
  v23 = v22;
  v24 = [v22 fetchStartDate];

  if (v24)
  {
    sub_1D72588BC();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_1D725891C();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v11, v25, 1, v26);
  sub_1D5DF42F8(v11, v15);
  if ((*(v27 + 48))(v15, 1, v26) == 1)
  {
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v15);
LABEL_7:
    sub_1D72586EC();
    v29 = v28;
    goto LABEL_9;
  }

  sub_1D72586DC();
  v29 = v30;
  (*(v27 + 8))(v15, v26);
LABEL_9:
  v31 = sub_1D725B4CC();
  v32 = sub_1D725B4EC();
  v33 = sub_1D725B4DC();
  v34 = sub_1D725776C();
  if (a4)
  {
    a4 = sub_1D726203C();
  }

  if (v33)
  {
    v35 = sub_1D725828C();
  }

  else
  {
    v35 = 0;
  }

  v36 = objc_allocWithZone(MEMORY[0x1E69B53C0]);
  v37 = [v36 initWithType:v39 URLRequest:v34 operationID:0 requestUUID:a4 startTime:v31 HTTPResponse:v32 metrics:v29 containerName:0 error:v35];

  (*(v17 + 8))(v21, v16);
  [*(v40 + 16) logNetworkEvent_];
}

uint64_t sub_1D6DFC540()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D6DFC5A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6DFD8AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6DFC6C4(_BYTE *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v81 = a3;
  v9 = type metadata accessor for FormatInspectionItem(0);
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11).n128_u64[0];
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    sub_1D5EC0508(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem);
    v67 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    v63 = xmmword_1D7273AE0;
    *(v16 + 16) = xmmword_1D7273AE0;
    v33 = *(a2 + 16);
    swift_getObjectType();
    v34 = [v33 displayName];
    v66 = sub_1D726207C();
    *&v65 = v35;

    sub_1D5EC0508(0, &qword_1EC8803C0, sub_1D5E4F38C);
    inited = swift_initStackObject();
    *(inited + 16) = v63;
    v37 = v81[7];
    v74 = v81[6];
    v75 = v37;
    v76 = v81[8];
    v77 = *(v81 + 18);
    v38 = v81[3];
    v70 = v81[2];
    v71 = v38;
    v39 = v81[5];
    v72 = v81[4];
    v73 = v39;
    v40 = v81[1];
    v68 = *v81;
    v69 = v40;
    sub_1D67F97D8(&v68, v33, &v78);
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(inited + 64) = &off_1F518B2C0;
    v41 = swift_allocObject();
    *(inited + 32) = v41;
    *(v41 + 48) = v80;
    v42 = v79;
    *(v41 + 16) = v78;
    *(v41 + 32) = v42;
    v43 = sub_1D5F62BFC(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    v44 = sub_1D7073500(v43);

    sub_1D711AD20(0x746E657645, 0xE500000000000000, v44, v66, v65, (v16 + v67));
    goto LABEL_29;
  }

  if (*a1 == 1)
  {
    sub_1D5EC0508(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem);
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    v65 = xmmword_1D7273AE0;
    *(v16 + 16) = xmmword_1D7273AE0;
    v17 = a4;
    v18 = *(a2 + 16);
    v64 = v4;
    v19 = [objc_msgSend(v18 eventLeagueTag)];
    swift_unknownObjectRelease();
    v20 = sub_1D726207C();
    v66 = v21;
    v67 = v20;

    sub_1D5EC0508(0, &qword_1EC8803C0, sub_1D5E4F38C);
    v22 = swift_initStackObject();
    *(v22 + 16) = v65;
    v23 = v81[7];
    v74 = v81[6];
    v75 = v23;
    v76 = v81[8];
    v77 = *(v81 + 18);
    v24 = v81[3];
    v70 = v81[2];
    v71 = v24;
    v25 = v81[5];
    v72 = v81[4];
    v73 = v25;
    v26 = v81[1];
    v68 = *v81;
    v69 = v26;
    v27 = v18;
    a4 = v17;
    v28 = [v27 eventLeagueTag];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D67F97D8(&v68, v28, &v78);
    swift_unknownObjectRelease_n();
    *(v22 + 56) = &type metadata for FormatInspectionGroup;
    *(v22 + 64) = &off_1F518B2C0;
    v29 = swift_allocObject();
    *(v22 + 32) = v29;
    *(v29 + 48) = v80;
    v30 = v79;
    *(v29 + 16) = v78;
    *(v29 + 32) = v30;
    v31 = sub_1D5F62BFC(v22);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v22 + 32));
    v32 = sub_1D7073500(v31);

    sub_1D711AD20(0x65756761654CLL, 0xE600000000000000, v32, v67, v66, (v16 + v15));
LABEL_29:
    *a4 = v16;
    return;
  }

  v45 = [*(a2 + 16) eventCompetitorTags];
  if (!v45)
  {
LABEL_28:
    sub_1D5EC0508(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem);
    v60 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    v68 = 0u;
    v69 = 0u;
    sub_1D711B5C0(0x74697465706D6F43, 0xEA0000000000726FLL, &v68, (v16 + v60));
    goto LABEL_29;
  }

  v46 = v45;
  sub_1D5EC01D0();
  v47 = sub_1D726267C();

  v48 = v47;
  v49 = v47 & 0xFFFFFFFFFFFFFF8;
  v50 = v47 >> 62;
  if (v50)
  {
    goto LABEL_24;
  }

  v51 = *(v49 + 16);
  if (!v51)
  {
LABEL_27:

    goto LABEL_28;
  }

  while (1)
  {
    v52 = v48;
    *&v68 = MEMORY[0x1E69E7CC0];
    sub_1D6997AF0(0, v51 & ~(v51 >> 63), 0);
    if (v51 < 0)
    {
      break;
    }

    v16 = v68;
    v53 = v52;
    v64 = v5;
    v62 = a4;
    *&v65 = v52 & 0xFFFFFFFFFFFFFF8;
    if (v50)
    {
      v54 = sub_1D7263BFC();
      v53 = v52;
    }

    else
    {
      v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = 0;
    v48 = v53 & 0xC000000000000001;
    v66 = v53 & 0xC000000000000001;
    v67 = v54 & ~(v54 >> 63);
    v5 = v53;
    a4 = v51;
    while (v67 != v50)
    {
      if (v66)
      {
        v55 = MEMORY[0x1DA6FB460](v50);
      }

      else
      {
        if (v50 >= *(v65 + 16))
        {
          goto LABEL_23;
        }

        v55 = *(v53 + 8 * v50 + 32);
        swift_unknownObjectRetain();
      }

      sub_1D6DFCDE8(v50, v55, v81, v14);
      swift_unknownObjectRelease();
      *&v68 = v16;
      v57 = *(v16 + 16);
      v56 = *(v16 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1D6997AF0((v56 > 1), v57 + 1, 1);
        v16 = v68;
      }

      ++v50;
      *(v16 + 16) = v57 + 1;
      sub_1D613ADAC(v14, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v57);
      v53 = v5;
      if (a4 == v50)
      {

        a4 = v62;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v58 = v48;
    if (!sub_1D7263BFC())
    {
      goto LABEL_27;
    }

    v59 = sub_1D7263BFC();
    v48 = v58;
    v51 = v59;
    if (!v59)
    {

      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_29;
    }
  }

  __break(1u);
}

void sub_1D6DFCDE8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  strcpy(v22, "Competitor [");
  BYTE13(v22[0]) = 0;
  HIWORD(v22[0]) = -5120;
  *&v24[0] = a1;
  v7 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v7);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  v8 = v22[0];
  swift_getObjectType();
  v9 = [a2 displayName];
  v10 = sub_1D726207C();
  v12 = v11;

  sub_1D5EC0508(0, &qword_1EC8803C0, sub_1D5E4F38C);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v14 = *(a3 + 112);
  v22[6] = *(a3 + 96);
  v22[7] = v14;
  v22[8] = *(a3 + 128);
  v23 = *(a3 + 144);
  v15 = *(a3 + 48);
  v22[2] = *(a3 + 32);
  v22[3] = v15;
  v16 = *(a3 + 80);
  v22[4] = *(a3 + 64);
  v22[5] = v16;
  v17 = *(a3 + 16);
  v22[0] = *a3;
  v22[1] = v17;
  sub_1D67F97D8(v22, a2, v24);
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v18 = swift_allocObject();
  *(inited + 32) = v18;
  *(v18 + 48) = v25;
  v19 = v24[1];
  *(v18 + 16) = v24[0];
  *(v18 + 32) = v19;
  v20 = sub_1D5F62BFC(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  v21 = sub_1D7073500(v20);

  sub_1D711AD20(v8, *(&v8 + 1), v21, v10, v12, a4);
}

uint64_t _s8NewsFeed24FormatSportsEventBindingV7CommandO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!(v5 >> 6))
  {
    if (v9 >= 0x40)
    {
LABEL_11:
      sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DA1C);
      sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DA1C);
      sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DE10);
      sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DE10);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (v5 >> 6 == 1)
  {
    if ((v9 & 0xC0) != 0x40)
    {
      goto LABEL_11;
    }

LABEL_6:
    v17 = *a1;
    v18 = v2;
    LOBYTE(v19) = v4;
    v13 = v7;
    v14 = v6;
    LOBYTE(v15) = v8;
    sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DA1C);
    sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DA1C);
    sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DA1C);
    sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DA1C);
    v10 = static FormatTagBinding.Command.== infix(_:_:)(&v17, &v13);
    sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DE10);
    sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DE10);
    sub_1D5E1DE60(v7, v6, v8, v9, sub_1D5E1DE10);
    sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DE10);
    return v10 & 1;
  }

  if ((v9 & 0xC0) != 0x80)
  {
    goto LABEL_11;
  }

  v17 = *a1;
  v18 = v2;
  v19 = v4;
  v20 = v5 & 0x3F;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v16 = v9 & 0x3F;
  if (v3 != v7)
  {
    goto LABEL_11;
  }

  sub_1D5E1DE60(v3, v6, v8, v9, sub_1D5E1DA1C);
  sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DA1C);
  sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DA1C);
  sub_1D5E1DE60(v3, v6, v8, v9, sub_1D5E1DA1C);
  v11 = static FormatTagBinding.Command.== infix(_:_:)(&v18, &v14);
  sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DE10);
  sub_1D5E1DE60(v3, v6, v8, v9, sub_1D5E1DE10);
  sub_1D5E1DE60(v3, v6, v8, v9, sub_1D5E1DE10);
  sub_1D5E1DE60(v3, v2, v4, v5, sub_1D5E1DE10);
  if ((v11 & 1) == 0)
  {
LABEL_12:
    v10 = 0;
    return v10 & 1;
  }

  v10 = 1;
  return v10 & 1;
}

unint64_t sub_1D6DFD344(uint64_t a1)
{
  result = sub_1D6DFD36C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DFD36C()
{
  result = qword_1EC896710;
  if (!qword_1EC896710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896710);
  }

  return result;
}

unint64_t sub_1D6DFD3C0(void *a1)
{
  a1[1] = sub_1D666DE84();
  a1[2] = sub_1D66FFCEC();
  result = sub_1D6DFD3F8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DFD3F8()
{
  result = qword_1EC896728;
  if (!qword_1EC896728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896728);
  }

  return result;
}

uint64_t sub_1D6DFD44C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 25))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 24) & 0x3C | (*(a1 + 24) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6DFD49C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_1D6DFD530()
{
  result = qword_1EC896730;
  if (!qword_1EC896730)
  {
    sub_1D6DFD588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896730);
  }

  return result;
}

void sub_1D6DFD588()
{
  if (!qword_1EC896738)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896738);
    }
  }
}

unint64_t sub_1D6DFD5DC()
{
  result = qword_1EC896740;
  if (!qword_1EC896740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896740);
  }

  return result;
}

unint64_t sub_1D6DFD630()
{
  result = qword_1EC896748;
  if (!qword_1EC896748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896748);
  }

  return result;
}

void sub_1D6DFD684(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v29 = *(a1 + 144);
  v5 = *(a1 + 112);
  v28[6] = *(a1 + 96);
  v28[7] = v5;
  v28[8] = *(a1 + 128);
  v6 = *(a1 + 48);
  v28[2] = *(a1 + 32);
  v28[3] = v6;
  v7 = *(a1 + 80);
  v28[4] = *(a1 + 64);
  v28[5] = v7;
  v8 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v8;
  v9 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v9;
  v27 = *(a2 + 32);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v23 = byte_1F50F7478[v4 + 32];
    sub_1D6DFC6C4(&v23, v26, v28, v24);
    v11 = *&v24[0];
    v12 = *(*&v24[0] + 16);
    v13 = v10[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= v10[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (*(v11 + 16))
      {
LABEL_13:
        v17 = (v10[3] >> 1) - v10[2];
        type metadata accessor for FormatInspectionItem(0);
        if (v17 < v12)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v18 = v10[2];
          v19 = __OFADD__(v18, v12);
          v20 = v18 + v12;
          if (v19)
          {
            goto LABEL_21;
          }

          v10[2] = v20;
        }

        goto LABEL_3;
      }
    }

    if (v12)
    {
      goto LABEL_19;
    }

LABEL_3:
    if (++v4 == 3)
    {
      v21 = sub_1D5F62998(v10);

      sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v21, v24);

      v22 = v24[1];
      *a3 = v24[0];
      *(a3 + 16) = v22;
      *(a3 + 32) = v25;
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_1D6DFD8AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6DFD8F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6DFD96C(void *a1, __int128 *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v41 = a3;
  v9 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatCustomItem.Resolved(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 4);
  v18 = *(a2 + 5);
  v19 = a4[1];
  v20 = a4[2];
  v21 = a4[4];
  v47 = a4[3];
  v48 = v20;
  v45 = v19;
  v46 = v21;
  v22 = a4[5];
  v42 = a4[6];
  v43 = a4[7];
  v44 = v22;
  v23 = a1;
  sub_1D5B68374(a1, v5 + 16);
  v24 = *a2;
  *(v5 + 72) = a2[1];
  *(v5 + 56) = v24;
  *(v5 + 88) = v17;
  *(v5 + 96) = v18;
  v25 = v41;
  sub_1D5CED2F0(v41, v12);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1D6719A04(v12, v16);
    v26 = *&v16[*(v13 + 28)];

    sub_1D5D1EC18(v16, type metadata accessor for FormatCustomItem.Resolved);
    v27 = v44;
  }

  else
  {
    sub_1D5D1EC18(v12, type metadata accessor for FormatContentSlotItemObject.Resolved);
    v28 = FormatContentSlotItemObject.Resolved.identifier.getter();
    v30 = v42;
    v27 = v44;
    if (*(v42 + 16))
    {
      v31 = sub_1D5B69D90(v28, v29);
      v33 = v32;

      if (v33)
      {
        v26 = *(*(v30 + 56) + 8 * v31);
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }
  }

  *(v5 + 104) = v26;
  v34 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (*(v27 + 16))
  {
    v36 = sub_1D5B69D90(v34, v35);
    v38 = v37;

    if (v38)
    {
      v39 = *(*(v27 + 56) + 8 * v36);
    }

    else
    {

      v39 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {

    v39 = MEMORY[0x1E69E7CD0];
  }

  *(v5 + 112) = v39;
  swift_beginAccess();
  v49 = 1;
  sub_1D726009C();
  swift_endAccess();
  sub_1D5D1EC18(v25, type metadata accessor for FormatContentSlotItemObject.Resolved);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v5;
}

uint64_t sub_1D6DFDCE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1D67F58E4(*(v0 + 7), *(v0 + 8));

  v1 = OBJC_IVAR____TtC8NewsFeed26DebugFormatBindingTreeItem__isExpanded;
  sub_1D5EF05B8();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatBindingTreeItem(uint64_t a1)
{
  result = qword_1EC896760;
  if (!qword_1EC896760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6DFDDFC(uint64_t a1)
{
  sub_1D5EF05B8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D6DFDEB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7463757274736564;
  v4 = 0xEB00000000657669;
  if (v2 != 1)
  {
    v3 = 0x656E696C6E69;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7463757274736564;
  v8 = 0xEB00000000657669;
  if (*a2 != 1)
  {
    v7 = 0x656E696C6E69;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DFDFBC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6DFE064(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6DFE0F8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6DFE19C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6DFE4A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6DFE1CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000657669;
  v5 = 0x7463757274736564;
  if (v2 != 1)
  {
    v5 = 0x656E696C6E69;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D6DFE240(void *a1)
{
  a1[1] = sub_1D6708360();
  a1[2] = sub_1D6708138();
  result = sub_1D6DFE278();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DFE278()
{
  result = qword_1EC896770;
  if (!qword_1EC896770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896770);
  }

  return result;
}

unint64_t sub_1D6DFE2CC(uint64_t a1)
{
  result = sub_1D6DFE2F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DFE2F4()
{
  result = qword_1EC896778;
  if (!qword_1EC896778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896778);
  }

  return result;
}

unint64_t sub_1D6DFE348(uint64_t a1)
{
  *(a1 + 8) = sub_1D6DFE378();
  result = sub_1D6DFE3CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6DFE378()
{
  result = qword_1EC896780;
  if (!qword_1EC896780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896780);
  }

  return result;
}

unint64_t sub_1D6DFE3CC()
{
  result = qword_1EDF11880;
  if (!qword_1EDF11880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11880);
  }

  return result;
}

unint64_t sub_1D6DFE4A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

double FormatVideoPlayerNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 192);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatVideoPlayerNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatVideoPlayerNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 232);

  return v1;
}

double FormatVideoPlayerNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

unint64_t FormatVideoPlayerNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatVideoPlayerNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

double FormatVideoPlayerNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatVideoPlayerNode.content.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 72);

  return result;
}

double FormatVideoPlayerNode.posterContent.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 80);

  return result;
}

void FormatVideoPlayerNode.overlayContent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 144);
  *(a1 + 48) = v8;
  sub_1D62B7B54(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t FormatVideoPlayerNode.isLive.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_1D60AFDB4(v2, v3, v4, v5);
}

double sub_1D6DFE900(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 192);
  sub_1D5EB1500(v2);
  *(v3 + 192) = v2;
  return sub_1D5EB15C4(v4);
}

double FormatVideoPlayerNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 192);
  *(v1 + 192) = v2;
  return sub_1D5EB15C4(v3);
}

void FormatVideoPlayerNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *a1 = *(v1 + 208);
  *(a1 + 8) = v2;
}

double sub_1D6DFEA9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 224) = v2;

  return result;
}

double FormatVideoPlayerNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 224) = a1;

  return result;
}

double sub_1D6DFEB94(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 232) = v3;
  *(v4 + 240) = v2;

  return result;
}

double FormatVideoPlayerNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;

  return result;
}

uint64_t FormatVideoPlayerNode.allowsPrerollAds.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 248);
  v4 = *(v1 + 256);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 264);
  *(a1 + 16) = v5;
  return sub_1D6189668(v3, v4, v5);
}

uint64_t FormatVideoPlayerNode.allowsPrerollAds.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(v1 + 248);
  v6 = *(v1 + 256);
  *(v1 + 248) = v2;
  *(v1 + 256) = v3;
  v7 = *(v1 + 264);
  *(v1 + 264) = v4;
  return sub_1D60107F0(v5, v6, v7);
}

uint64_t FormatVideoPlayerNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[34];
  v3 = v1[35];
  v4 = v1[36];
  v5 = v1[37];
  v6 = v1[38];
  v7 = v1[39];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatVideoPlayerNode.__allocating_init(identifier:size:resize:adjustments:style:animation:content:posterContent:posterStyle:overlayContent:isLive:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:name:allowsPrerollAds:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21)
{
  v23 = swift_allocObject();
  v24 = *a3;
  v25 = *a4;
  v35 = *a9;
  v36 = *a8;
  v40 = *(a11 + 40);
  v41 = *(a11 + 32);
  v39 = *(a11 + 48);
  v38 = *a12;
  v37 = *(a12 + 2);
  v26 = *(a12 + 24);
  v27 = *a14;
  v44 = *a16;
  v28 = *(a16 + 8);
  v48 = a20[1];
  v49 = *a20;
  v50 = *(a20 + 16);
  *(v23 + 248) = 0u;
  v51 = *(a21 + 40);
  v53 = *(a21 + 32);
  *(v23 + 232) = 0u;
  *(v23 + 264) = -1;
  swift_beginAccess();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  swift_beginAccess();
  *(v23 + 48) = a5;
  *(v23 + 56) = a6;
  *(v23 + 64) = a7;
  *(v23 + 72) = v36;
  *(v23 + 80) = v35;
  *(v23 + 88) = a10;
  v29 = *(a11 + 16);
  *(v23 + 96) = *a11;
  *(v23 + 112) = v29;
  *(v23 + 128) = v41;
  *(v23 + 136) = v40;
  *(v23 + 144) = v39;
  *(v23 + 152) = v38;
  *(v23 + 168) = v37;
  *(v23 + 176) = v26;
  swift_beginAccess();
  *(v23 + 184) = a13;
  swift_beginAccess();
  *(v23 + 192) = v27;
  swift_beginAccess();
  *(v23 + 200) = a15;
  *(v23 + 208) = v44;
  *(v23 + 216) = v28;
  swift_beginAccess();
  *(v23 + 224) = a17;
  swift_beginAccess();
  *(v23 + 232) = a18;
  *(v23 + 240) = a19;

  swift_beginAccess();
  v30 = *(v23 + 248);
  v31 = *(v23 + 256);
  *(v23 + 248) = v49;
  *(v23 + 256) = v48;
  v32 = *(v23 + 264);
  *(v23 + 264) = v50;
  sub_1D60107F0(v30, v31, v32);
  v33 = *(a21 + 16);
  *(v23 + 272) = *a21;
  *(v23 + 288) = v33;
  *(v23 + 304) = v53;
  *(v23 + 312) = v51;
  return v23;
}

uint64_t FormatVideoPlayerNode.init(identifier:size:resize:adjustments:style:animation:content:posterContent:posterStyle:overlayContent:isLive:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:name:allowsPrerollAds:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21)
{
  v23 = *a3;
  v24 = *a4;
  v25 = *a8;
  v26 = *a9;
  v37 = *(a11 + 40);
  v38 = *(a11 + 32);
  v36 = *(a11 + 48);
  v35 = *a12;
  v34 = *(a12 + 2);
  v33 = *(a12 + 24);
  v41 = *a14;
  v45 = *a16;
  v44 = *(a16 + 8);
  v48 = a20[1];
  v49 = *a20;
  v50 = *(a20 + 16);
  *(v21 + 248) = 0u;
  *(v21 + 264) = -1;
  *(v21 + 232) = 0u;
  v46 = *(a21 + 40);
  v47 = *(a21 + 32);
  swift_beginAccess();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = v23;
  *(v21 + 40) = v24;
  swift_beginAccess();
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a7;
  *(v21 + 72) = v25;
  *(v21 + 80) = v26;
  *(v21 + 88) = a10;
  v27 = *(a11 + 16);
  *(v21 + 96) = *a11;
  *(v21 + 112) = v27;
  *(v21 + 128) = v38;
  *(v21 + 136) = v37;
  *(v21 + 144) = v36;
  *(v21 + 152) = v35;
  *(v21 + 168) = v34;
  *(v21 + 176) = v33;
  swift_beginAccess();
  *(v21 + 184) = a13;
  swift_beginAccess();
  *(v21 + 192) = v41;
  swift_beginAccess();
  *(v21 + 200) = a15;
  *(v21 + 208) = v45;
  *(v21 + 216) = v44;
  swift_beginAccess();
  *(v21 + 224) = a17;
  swift_beginAccess();
  *(v21 + 232) = a18;
  *(v21 + 240) = a19;

  swift_beginAccess();
  v28 = *(v21 + 248);
  v29 = *(v21 + 256);
  *(v21 + 248) = v49;
  *(v21 + 256) = v48;
  v30 = *(v21 + 264);
  *(v21 + 264) = v50;
  sub_1D60107F0(v28, v29, v30);
  v31 = *(a21 + 16);
  *(v21 + 272) = *a21;
  *(v21 + 288) = v31;
  *(v21 + 304) = v47;
  *(v21 + 312) = v46;
  return v21;
}

uint64_t FormatVideoPlayerNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D62B7BE0(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_1D60AFE14(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  sub_1D5EB15C4(*(v0 + 192));

  sub_1D60107F0(*(v0 + 248), *(v0 + 256), *(v0 + 264));
  sub_1D5EB2398(*(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312));
  return v0;
}

uint64_t FormatVideoPlayerNode.__deallocating_deinit()
{
  FormatVideoPlayerNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6DFF3DC(uint64_t a1, uint64_t a2)
{
  result = sub_1D6E01F4C(&qword_1EC896788, a2, type metadata accessor for FormatVideoPlayerNode, &protocol conformance descriptor for FormatVideoPlayerNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6DFF458(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6E01F4C(&qword_1EDF28FE0, a2, type metadata accessor for FormatVideoPlayerNode, &protocol conformance descriptor for FormatVideoPlayerNode);
  a1[2] = sub_1D6E01F4C(&qword_1EDF0DEB8, v3, type metadata accessor for FormatVideoPlayerNode, &protocol conformance descriptor for FormatVideoPlayerNode);
  result = sub_1D6E01F4C(&qword_1EC896790, v4, type metadata accessor for FormatVideoPlayerNode, &protocol conformance descriptor for FormatVideoPlayerNode);
  a1[3] = result;
  return result;
}

void *sub_1D6DFF504@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D66CEA9C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6DFF560(uint64_t a1, uint64_t a2)
{
  result = sub_1D6E01F4C(&qword_1EC896798, a2, type metadata accessor for FormatVideoPlayerNode, &protocol conformance descriptor for FormatVideoPlayerNode);
  *(a1 + 8) = result;
  return result;
}

double sub_1D6DFF5B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = a5;
  v54 = a8;
  v51 = a2;
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v50 = v15;
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v49 = v42 - v18;
  sub_1D6BB646C(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v56 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = (v42 - v22);
  v59 = a1;
  KeyPath = swift_getKeyPath();
  swift_unownedRetainStrong();
  v25 = *(a6 + 32);
  sub_1D5C82CD8(v25);

  v58 = v25;
  v55 = a7;
  v26 = v57;
  sub_1D5BEB9F4(a7, a3, a4, v23);
  sub_1D5C92A8C(v58);
  if (!v26)
  {
    v44 = v16;
    v45 = a3;
    v47 = v23;
    v48 = KeyPath;
    v57 = v20;
    v46 = a4;
    swift_unownedRetainStrong();
    swift_beginAccess();
    v28 = *(a6 + 48);

    v29 = v55;
    v30 = sub_1D618EFB4(v55, v28);
    v42[1] = a9;
    v43 = a10;

    v31 = v51;
    v32 = v52;
    v33 = *(v52 + 16);
    v34 = v49;
    v51 = v30;
    v35 = v50;
    v33(v49, v31, v50);
    v36 = (*(v32 + 80) + 64) & ~*(v32 + 80);
    v44 = (v44 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v38 = v45;
    v39 = v46;
    *(v37 + 2) = a6;
    *(v37 + 3) = v38;
    v40 = v54;
    *(v37 + 4) = v39;
    *(v37 + 5) = v40;
    *(v37 + 6) = a9;
    *(v37 + 7) = v29;
    (*(v32 + 32))(&v37[v36], v34, v35);
    *&v37[v44] = v43;
    swift_unownedRetain();
    sub_1D5EB563C(0);
    sub_1D6E01F4C(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);

    v41 = v47;
    sub_1D7259B1C();
    (*(v56 + 8))(v41, v57);
  }

  return result;
}

void sub_1D6DFF9F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>, __n128 a10@<Q0>, double a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>)
{
  v322 = a8;
  v323 = a9;
  v348 = a5;
  v349 = a7;
  v351 = a6;
  v20 = a10.n128_u64[0];
  sub_1D6047B58(0, a10);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v333 = &v308 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v334 = &v308 - v26;
  v27 = type metadata accessor for FormatNodeStateData.Data(0);
  v330 = *(v27 - 8);
  v331 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  *&v332 = &v308 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = type metadata accessor for FormatVideoPlayerData(0);
  MEMORY[0x1EEE9AC00](v329, v30);
  v336 = (&v308 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_1D72585BC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v328 = &v308 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v340 = &v308 - v38;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v335 = &v308 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v327 = (&v308 - v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  v324 = &v308 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v325 = &v308 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v308 - v53;
  swift_unownedRetainStrong();
  v55 = *(a1 + 80);

  *&v366 = v55;
  v337 = a3;
  v338 = a2;
  v347 = a4;
  sub_1D6F7D3CC(a2, a3, a4);
  v57 = v56;

  *&v326 = *(v348 + 32);
  v58 = *(v326 + 32);
  swift_unownedRetainStrong();
  v59 = *(a1 + 88);

  v350 = a1;

  if (!v59)
  {
    v345 = v57;
    goto LABEL_6;
  }

  v60 = v57;
  v61 = *(v59 + 248);
  v62 = *(v59 + 256);
  sub_1D62B5D88(v61);

  if (v61)
  {
    if (v61 == 1)
    {
      v345 = v60;
LABEL_6:
      v346 = v58;
      v339 = v54;
      v320 = v33;
      v321 = v32;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v343 = 0u;
      v344 = 0u;
      v341 = 0u;
      v342 = 0u;
      goto LABEL_16;
    }

    v70 = v347;
    v76 = v377;
    v77 = sub_1D6E7C848(v347, v61, 0.0, 0.0, a12, a13);
    v377 = v76;
    if (v76)
    {
LABEL_11:

      sub_1D62B5D44(v61);

      return;
    }

    v66 = v77;
    v67 = v78;
    v68 = v79;
    v69 = v80;

    if (!v62)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v66 = 0.0;
    v67 = 0.0;
    v68 = a12;
    v69 = a13;
    v70 = v347;
    if (!v62)
    {
LABEL_13:
      v345 = v60;
      v346 = v58;
      v339 = v54;
      v81 = 0uLL;
      v82 = 0uLL;
      goto LABEL_15;
    }
  }

  v71 = v377;
  *&v72 = sub_1D6E7C848(v70, v62, 0.0, 0.0, v68, v69);
  v377 = v71;
  if (v71)
  {
    goto LABEL_11;
  }

  v345 = v60;
  v346 = v58;
  v339 = v54;
  v343 = v74;
  v344 = v72;
  v341 = v73;
  v342 = v75;

  *&v82 = v343;
  *&v81 = v344;
  *(&v81 + 1) = v341;
  *(&v82 + 1) = v342;
LABEL_15:
  v320 = v33;
  v321 = v32;
  v375[0] = v81;
  v375[1] = v82;
  v376 = v62 == 0;
  sub_1D69FD714(v375, &v366, v66, v67, v68, v69);
  sub_1D62B5D44(v61);
  v343 = v367;
  v344 = v366;
  v341 = v369;
  v342 = v368;
  v63 = v370;
  v64 = v371;
  v65 = v372;
LABEL_16:
  v83 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
  v84 = v351;
  sub_1D7259F1C();
  v86 = v85;
  v87 = sub_1D7259EBC();
  v88 = type metadata accessor for FormatImageNodeContext();
  v89 = swift_allocObject();
  *(v89 + 16) = a12;
  *(v89 + 24) = a13;
  *(v89 + 32) = v86;
  *(v89 + 40) = v87;
  v90 = v343;
  *(v89 + 48) = v344;
  *(v89 + 64) = v90;
  v91 = v341;
  *(v89 + 80) = v342;
  *(v89 + 96) = v91;
  *(v89 + 112) = v63;
  *(v89 + 120) = v64;
  *(v89 + 128) = v65;
  v92 = v350;
  swift_unownedRetainStrong();
  v93 = *(v92 + 80);

  *&v366 = v93;
  v94 = v377;
  sub_1D6F7D724(v84, v349, v89, v364);
  if (v94)
  {

    return;
  }

  *&v344 = v88;

  v346 = v364[0];
  v95 = v347;
  v96 = v339;
  sub_1D6B7C374(*(v347 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v339);
  v319 = v83;
  v97 = v340;
  v98 = type metadata accessor for FeedHeadline(0);
  v345 = *(v98 - 8);
  v99 = v345 + 56;
  *&v343 = *(v345 + 56);
  (v343)(v96, 0, 1, v98);
  v100 = v95 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
  LODWORD(v347) = *(v100 + *(type metadata accessor for GroupLayoutContext(0) + 44));
  v101 = v350;
  swift_unownedRetainStrong();
  v102 = *(v101 + 72);

  *&v366 = v102;
  v103 = v351;
  sub_1D69FA148(v351, v349, v97);
  *&v341 = v99;
  *&v342 = v98;

  swift_unownedRetainStrong();
  v105 = *(v101 + 152);
  v104 = *(v101 + 160);
  v106 = *(v101 + 168);
  LOBYTE(v102) = *(v101 + 176);
  sub_1D60AFDB4(v105, v104, v106, v102);

  *&v366 = v105;
  *(&v366 + 1) = v104;
  if (v102)
  {
    LOBYTE(v367) = v106 & 1;
    sub_1D725A7EC();
    v107 = FormatBoolean.value(contextLayoutOptions:)(v364[0]);
    v108 = v321;
    v377 = 0;
    v110 = v107;

    v111 = v105;
    v112 = v104;
    v113 = v106;
    v114 = 1;
  }

  else
  {
    *&v367 = v106;
    v109 = sub_1D72459C4(v103);
    v108 = v321;
    v377 = 0;
    v110 = v109;
    v111 = v105;
    v112 = v104;
    v113 = v106;
    v114 = 0;
  }

  sub_1D60AFE14(v111, v112, v113, v114);
  v321 = v108;
  v115 = v350;
  swift_unownedRetainStrong();
  v116 = *(v115 + 96);
  v117 = *(v115 + 104);
  v118 = *(v115 + 112);
  v120 = *(v115 + 128);
  v119 = *(v115 + 136);
  v121 = *(v115 + 144);
  v318 = *(v115 + 120);
  sub_1D62B7B54(v116, v117, v118, v318, v120, v119, v121);

  if (v118 == 1)
  {
    LODWORD(v317) = v110;
    LODWORD(v325) = 0;
    v122 = 0;
    v123 = 0;
    *&v341 = 0;
    *&v343 = 0;
    v124 = 0.0;
    *&v344 = 0xC000000000000000;
    v125 = v377;
    v126 = v335;
    v127 = v342;
    v128 = v345;
    goto LABEL_61;
  }

  v313 = v117;
  v314 = v120;
  v315 = v119;
  LODWORD(v316) = v121;
  v362 = v116;
  *&v366 = 0;
  *(&v366 + 1) = 0xE000000000000000;
  v312 = v116;

  sub_1D7263D4C();

  *&v366 = v338;
  *(&v366 + 1) = v337;

  MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73F3870);
  sub_1D6F7D3CC(v366, *(&v366 + 1), v351);

  if (!v118)
  {
    goto LABEL_26;
  }

  v129 = *(v118 + 248);
  v130 = *(v118 + 256);
  if (v129)
  {
    if (v129 == 1)
    {
LABEL_26:
      LODWORD(v317) = v110;
      *&v326 = v118;

      v131 = 0;
      v132 = 0;
      v133 = 0;
      v310 = 0u;
      v311 = 0u;
      v308 = 0u;
      v309 = 0u;
      goto LABEL_36;
    }

    sub_1D62B5D88(v129);

    v138 = v377;
    v139 = sub_1D6E7C848(v351, v129, 0.0, 0.0, a12, a13);
    v377 = v138;
    if (v138)
    {
LABEL_32:

      sub_1D62B5D44(v129);

      sub_1D62B7BE0(v312, v313, v118, v318, v314, v315, v316);

      v148 = v339;
LABEL_38:
      v160 = v321;
      v161 = v340;

      (*(v320 + 8))(v161, v160);
      sub_1D6E02060(v148, sub_1D5B69BE0);
      return;
    }

    v134 = v139;
    v135 = v140;
    v136 = v141;
    v137 = v142;
  }

  else
  {

    sub_1D62B5D88(0);
    v134 = 0.0;
    v135 = 0.0;
    v136 = a12;
    v137 = a13;
  }

  if (v130)
  {

    v143 = v377;
    *&v144 = sub_1D6E7C848(v351, v130, 0.0, 0.0, v136, v137);
    v377 = v143;
    if (v143)
    {
      goto LABEL_32;
    }

    LODWORD(v317) = v110;
    v326 = v144;
    v310 = v147;
    v311 = v146;
    v309 = v145;

    *&v149 = v326;
    *(&v149 + 1) = v309;
    *&v150 = v311;
    *(&v150 + 1) = v310;
  }

  else
  {
    LODWORD(v317) = v110;
    v149 = 0uLL;
    v150 = 0uLL;
  }

  *&v326 = v118;
  v373[0] = v149;
  v373[1] = v150;
  v374 = v130 == 0;
  sub_1D69FD714(v373, &v366, v134, v135, v136, v137);
  sub_1D62B5D44(v129);
  v310 = v367;
  v311 = v366;
  v308 = v369;
  v309 = v368;
  v133 = v370;
  v132 = v371;
  v131 = v372;
LABEL_36:
  v151 = v351;
  sub_1D7259F1C();
  v153 = v152;
  v154 = sub_1D7259EBC();
  v155 = swift_allocObject();
  *(v155 + 16) = a12;
  *(v155 + 24) = a13;
  *(v155 + 32) = v153;
  *(v155 + 40) = v154;
  v156 = v310;
  *(v155 + 48) = v311;
  *(v155 + 64) = v156;
  v157 = v308;
  *(v155 + 80) = v309;
  *(v155 + 96) = v157;
  *(v155 + 112) = v133;
  *(v155 + 120) = v132;
  *(v155 + 128) = v131;
  v158 = v312;
  *&v366 = v312;

  v159 = v377;
  sub_1D6F7D724(v151, v349, v155, v364);
  v148 = v339;
  if (v159)
  {

    sub_1D62B7BE0(v158, v313, v326, v318, v314, v315, v316);

    goto LABEL_38;
  }

  *&v344 = v364[0];
  *&v366 = v313;
  sub_1D5DEA234(v313);
  v124 = sub_1D6A9D5D4(v151);
  v115 = v350;
  v126 = v335;
  v163 = v324;
  v162 = v325;
  sub_1D5CBF568(v366);
  sub_1D6B7C374(*(v151 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v162);
  v164 = v342;
  (v343)(v162, 0, 1, v342);
  sub_1D6E01FF8(v162, v163, sub_1D5B69BE0);
  if ((*(v345 + 48))(v163, 1, v164) == 1)
  {
    sub_1D6E02060(v163, sub_1D5B69BE0);
  }

  else
  {
    v165 = *(v163 + 40);
    swift_unknownObjectRetain();
    sub_1D6E02060(v163, type metadata accessor for FeedHeadline);
    [v165 videoDuration];
    v167 = v166;
    swift_unknownObjectRelease();
    if (v167 > 0.0)
    {
      if (v167 >= 60.0)
      {
        v168 = 1;
      }

      else
      {
        v168 = 8;
      }

      v169 = v315;
      if (qword_1EC87D810 != -1)
      {
        swift_once();
      }

      v170 = qword_1EC88BBE0;
      [qword_1EC88BBE0 setAllowedUnits_];
      [v170 setZeroFormattingBehavior_];
      if (qword_1EC87D810 != -1)
      {
        swift_once();
      }

      v171 = [v170 stringFromTimeInterval_];
      v115 = v350;
      v162 = v325;
      if (v171)
      {
        v172 = v171;
        *&v341 = sub_1D726207C();
        *&v343 = v173;
      }

      else
      {
        *&v341 = 0;
        *&v343 = 0;
      }

      v174 = v316;
      goto LABEL_54;
    }
  }

  *&v341 = 0;
  *&v343 = 0;
  v174 = v316;
  v169 = v315;
LABEL_54:
  *&v366 = v314;
  *(&v366 + 1) = v169;
  LOBYTE(v367) = v174 & 1;
  sub_1D725A7EC();
  v125 = 0;
  LODWORD(v325) = FormatBoolean.value(contextLayoutOptions:)(v364[0]);
  sub_1D6E02060(v162, sub_1D5B69BE0);

  v122 = v326;
  v127 = v342;
  v128 = v345;
  v175 = v315;
  if (v318)
  {
    v123 = *(v318 + 16);
    swift_beginAccess();
    if (*(*(v123 + 16) + 16))
    {
    }

    else
    {

      v123 = 0;
    }

    v176 = v318;
  }

  else
  {

    v176 = 0;
    v123 = 0;
  }

  sub_1D62B7BE0(v312, v313, v122, v176, v314, v175, v316);
LABEL_61:
  v349 = v123;
  *&v326 = v122;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v177 = *(v115 + 264);
  if (v177 == 255)
  {

    v181 = 2;
  }

  else
  {
    v178 = *(v115 + 248);
    v179 = *(v115 + 256);
    sub_1D5E04CC4(v178, v179, v177 & 1);

    v364[0] = v178;
    v364[1] = v179;
    v365 = v177 & 1;
    sub_1D725A7EC();
    v180 = FormatBoolean.value(contextLayoutOptions:)(v362);
    if (v125)
    {

      sub_1D60107F0(v178, v179, v177);
      v125 = 0;
      v181 = 2;
    }

    else
    {
      v182 = v180;

      sub_1D60107F0(v178, v179, v177);
      v181 = v182 & 1;
    }

    v126 = v335;
    v127 = v342;
    v128 = v345;
  }

  v183 = v327;
  sub_1D6E01FF8(v339, v327, sub_1D5B69BE0);
  v184 = *(v128 + 48);
  v185 = v184(v183, 1, v127);
  v377 = v125;
  if (v185 == 1)
  {
    sub_1D6E02060(v183, sub_1D5B69BE0);
    v345 = 0;
    *&v342 = 0;
  }

  else
  {
    v186 = v183[1];
    v345 = *v183;
    *&v342 = v186;

    sub_1D6E02060(v183, type metadata accessor for FeedHeadline);
  }

  v187 = v320;
  v188 = *(v351 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v189 = *(v351 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
  sub_1D6E01FF8(v339, v126, sub_1D5B69BE0);
  if (v184(v126, 1, v127) == 1)
  {

    sub_1D6E02060(v126, sub_1D5B69BE0);
    v190 = 0;
  }

  else
  {
    v190 = *(v126 + 40);

    swift_unknownObjectRetain();
    sub_1D6E02060(v126, type metadata accessor for FeedHeadline);
  }

  v191 = *(v187 + 16);
  v192 = v328;
  v193 = v187;
  v194 = v321;
  v191(v328, v340, v321);
  v195 = (v181 == 2) | v181;
  v196 = v336;
  v197 = v194;
  v198 = v342;
  *v336 = v345;
  v196[1] = v198;
  v199 = v337;
  v196[2] = v338;
  v196[3] = v199;
  v196[4] = v188;
  v196[5] = v189;
  v196[6] = v190;
  *(v196 + 56) = v347;
  v200 = v329;
  v201 = *(v329 + 36);
  v320 = v193;
  (*(v193 + 32))(v196 + v201, v192, v197);
  *(v196 + v200[10]) = v346;
  *(v196 + v200[11]) = v317 & 1;
  v202 = (v196 + v200[12]);
  *v202 = v344;
  v202[1] = v124;
  v203 = v349;
  *(v202 + 2) = v326;
  *(v202 + 3) = v203;
  *(v202 + 32) = v325 & 1;
  v204 = v343;
  *(v202 + 5) = v341;
  *(v202 + 6) = v204;
  *(v196 + v200[13]) = v195 & 1;
  v205 = v332;
  sub_1D6E01FF8(v196, v332, type metadata accessor for FormatVideoPlayerData);
  v206 = v331;
  swift_storeEnumTagMultiPayload();
  v207 = v334;
  sub_1D6E01FF8(v205, v334, type metadata accessor for FormatNodeStateData.Data);
  (*(v330 + 56))(v207, 0, 1, v206);
  v208 = v333;
  sub_1D6E01FF8(v207, v333, sub_1D6047B58);
  swift_beginAccess();

  swift_bridgeObjectRetain_n();

  sub_1D6D60A18(v208, v338, v199);
  swift_endAccess();
  sub_1D6E02060(v207, sub_1D6047B58);
  sub_1D6E02060(v205, type metadata accessor for FormatNodeStateData.Data);
  v209 = v350;
  v210 = v351;
  v211 = *(v351 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v213 = *(v209 + 16);
  v212 = *(v209 + 24);

  v214 = *(v211 + 40);
  if (v214)
  {
    v362 = *(v211 + 32);
    v363 = v214;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v213, v212);

    v213 = v362;
    v212 = v363;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v215 = *(v209 + 24);
  v328 = *(v209 + 16);

  swift_unownedRetainStrong();
  v216 = *(v209 + 40);

  v348 = v212;
  v329 = v213;
  v346 = v215;
  if (v216)
  {
    v217 = *(v216 + 16);
    swift_beginAccess();
    if (*(*(v217 + 16) + 16))
    {
      *&v341 = v217;

      goto LABEL_80;
    }
  }

  *&v341 = 0;
LABEL_80:
  swift_unownedRetainStrong();
  swift_beginAccess();
  v327 = *(v209 + 184);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v218 = *(v209 + 192);
  sub_1D5EB1500(v218);

  v360[0] = v218;
  sub_1D615B4A8(v210, v361);
  sub_1D5EB15C4(v360[0]);
  v345 = v361[0];
  swift_unownedRetainStrong();
  swift_beginAccess();
  LODWORD(v325) = *(v209 + 200);

  swift_unownedRetainStrong();
  v324 = *(v209 + 208);
  LODWORD(v319) = *(v209 + 216);

  v219 = sub_1D72583DC();
  v221 = v220;
  v222 = v337;
  v223 = v338;
  v358 = v338;
  v359 = v337;

  MEMORY[0x1DA6F9910](v219, v221);

  v318 = v358;
  *&v342 = v359;
  v358 = v223;
  v359 = v222;
  v224 = v350;

  MEMORY[0x1DA6F9910](0x2D726574736F702DLL, 0xED00006567616D69);
  *&v332 = v358;
  v335 = v359;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v226 = *(v224 + 16);
  v225 = *(v224 + 24);

  v227 = *(v211 + 40);
  v333 = v211;
  if (v227)
  {
    v356 = *(v211 + 32);
    v357 = v227;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v226, v225);

    v226 = v356;
    v225 = v357;
  }

  v347 = swift_allocObject();
  v356 = v226;
  v357 = v225;
  MEMORY[0x1DA6F9910](0x2D726574736F702DLL, 0xED00006567616D69);
  v331 = v356;
  v334 = v357;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v228 = *(v224 + 24);
  v330 = *(v224 + 16);

  v229 = (*(v210 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v231 = *v229;
  v230 = v229[1];
  swift_unownedRetainStrong();
  v232 = *(v224 + 88);

  v233 = v377;
  sub_1D6FBB580(v232, v210, v231, v230);
  v377 = v233;
  if (v233)
  {

    sub_1D5EB15C4(v345);

    sub_1D6E02060(v336, type metadata accessor for FormatVideoPlayerData);
    (*(v320 + 8))(v340, v321);
LABEL_99:
    sub_1D6E02060(v339, sub_1D5B69BE0);
    swift_deallocUninitializedObject();
    return;
  }

  v235 = v334;
  v317 = v234;

  swift_unownedRetainStrong();
  v236 = *(v224 + 40);

  v316 = v229;
  if (v236)
  {
    v237 = *(v236 + 16);
    swift_beginAccess();
    if (*(*(v237 + 16) + 16))
    {

      goto LABEL_89;
    }
  }

  v237 = 0;
LABEL_89:
  swift_unownedRetainStrong();
  swift_beginAccess();
  LODWORD(v315) = *(v224 + 200);

  swift_unownedRetainStrong();
  v238 = *(v224 + 208);
  v239 = v224;
  v240 = *(v224 + 216);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v241 = *(v239 + 232);
  v242 = *(v239 + 240);

  v314 = type metadata accessor for FormatImageNodeLayoutAttributes();
  v243 = swift_allocObject();
  v244 = v335;
  *(v243 + 16) = v332;
  *(v243 + 24) = v244;
  v245 = v330;
  *(v243 + 32) = v331;
  *(v243 + 40) = v235;
  *(v243 + 48) = v245;
  *(v243 + 56) = v228;
  *(v243 + 64) = v20;
  *(v243 + 72) = a11;
  *(v243 + 80) = a12;
  *(v243 + 88) = a13;
  v246 = v317;
  *(v243 + 96) = v317;
  *(v243 + 104) = v237;
  v332 = xmmword_1D735A320;
  *(v243 + 112) = xmmword_1D735A320;
  *(v243 + 128) = v315;
  *(v243 + 136) = v238;
  *(v243 + 144) = v240;
  *(v243 + 152) = v241;
  *(v243 + 160) = v242;
  *(v243 + 129) = 0;
  if (v246)
  {
    sub_1D6E01F94(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    v247 = swift_allocObject();
    v248 = v317;
    v249 = v247;
    *(v247 + 16) = xmmword_1D7273AE0;
    v250 = *(v248 + 72);
    v251 = v320;
    if ((~v250 & 0xF000000000000007) != 0)
    {
      v254 = &protocol witness table for FormatBackground;
      v253 = &type metadata for FormatBackground;
      v252 = *(v248 + 72);
    }

    else
    {
      v252 = 0;
      v253 = 0;
      v254 = 0;
      *(v247 + 40) = 0;
      *(v247 + 48) = 0;
    }

    *(v247 + 32) = v252;
    *(v247 + 56) = v253;
    *(v247 + 64) = v254;

    sub_1D5D04BD4(v250);
    v255 = sub_1D6E27AC0();
    swift_setDeallocating();
    sub_1D6E02060(v249 + 32, sub_1D60D65D0);
    swift_deallocClassInstance();
  }

  else
  {
    v255 = MEMORY[0x1E69E7CD0];
    v251 = v320;
  }

  *(v243 + 168) = v255;
  v354 = v338;
  v355 = v337;

  MEMORY[0x1DA6F9910](0x6D692D6F676F6C2DLL, 0xEB00000000656761);
  v331 = v354;
  v335 = v355;
  v256 = v350;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v257 = *(v256 + 16);
  v258 = *(v256 + 24);

  v259 = *(v333 + 40);
  if (v259)
  {
    v352 = *(v333 + 32);
    v353 = v259;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v257, v258);

    v257 = v352;
    v258 = v353;
  }

  v352 = v257;
  v353 = v258;
  MEMORY[0x1DA6F9910](0x6D692D6F676F6C2DLL, 0xEB00000000656761);
  v333 = v352;
  v334 = v353;
  v260 = v350;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v261 = *(v260 + 24);
  v330 = *(v260 + 16);

  sub_1D726330C();
  v263 = v262;
  v265 = v264;
  v267 = v266;
  v269 = v268;
  v270 = *v316;
  v271 = v316[1];

  v273 = v377;
  sub_1D6FBB580(v272, v351, v270, v271);
  v377 = v273;
  if (v273)
  {

    sub_1D5EB15C4(v345);

    sub_1D6E02060(v336, type metadata accessor for FormatVideoPlayerData);
    (*(v251 + 8))(v340, v321);
    goto LABEL_99;
  }

  v275 = v274;

  swift_unownedRetainStrong();
  swift_beginAccess();
  LODWORD(v351) = *(v260 + 200);
  v276 = v349;

  swift_unownedRetainStrong();
  v317 = *(v260 + 208);
  LODWORD(v316) = *(v260 + 216);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v277 = *(v260 + 232);
  v278 = *(v260 + 240);

  v279 = swift_allocObject();
  v280 = v335;
  *(v279 + 16) = v331;
  *(v279 + 24) = v280;
  v281 = v334;
  *(v279 + 32) = v333;
  *(v279 + 40) = v281;
  *(v279 + 48) = v330;
  *(v279 + 56) = v261;
  *(v279 + 64) = v263;
  *(v279 + 72) = v265;
  *(v279 + 80) = v267;
  *(v279 + 88) = v269;
  *(v279 + 96) = v275;
  *(v279 + 104) = v276;
  *(v279 + 112) = v332;
  *(v279 + 128) = v351;
  *(v279 + 136) = v317;
  *(v279 + 144) = v316;
  *(v279 + 152) = v277;
  *(v279 + 160) = v278;
  *(v279 + 129) = 0;
  if (v275)
  {
    sub_1D6E01F94(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    v282 = swift_allocObject();
    v283 = v282;
    *(v282 + 16) = xmmword_1D7273AE0;
    v284 = *(v275 + 72);
    v285 = v339;
    if ((~v284 & 0xF000000000000007) != 0)
    {
      v288 = &protocol witness table for FormatBackground;
      v287 = &type metadata for FormatBackground;
      v286 = *(v275 + 72);
    }

    else
    {
      v286 = 0;
      v287 = 0;
      v288 = 0;
      *(v282 + 40) = 0;
      *(v282 + 48) = 0;
    }

    v291 = v320;
    v290 = v321;
    *(v282 + 32) = v286;
    *(v282 + 56) = v287;
    *(v282 + 64) = v288;

    sub_1D5D04BD4(v284);
    v289 = sub_1D6E27AC0();
    swift_setDeallocating();
    sub_1D6E02060(v283 + 32, sub_1D60D65D0);
    swift_deallocClassInstance();
  }

  else
  {
    v289 = MEMORY[0x1E69E7CD0];
    v291 = v320;
    v290 = v321;
    v285 = v339;
  }

  v292 = v348;

  *(v279 + 168) = v289;
  type metadata accessor for FormatVideoPlayerNodeLayoutAttributes();
  v293 = swift_allocObject();
  *(v293 + 16) = v338;
  v294 = v328;
  v295 = v329;
  *(v293 + 24) = v337;
  *(v293 + 32) = v295;
  *(v293 + 40) = v292;
  *(v293 + 48) = v294;
  *(v293 + 56) = v346;
  *(v293 + 64) = v20;
  *(v293 + 72) = a11;
  *(v293 + 80) = a12;
  *(v293 + 88) = a13;
  v296 = v340;
  v297 = v327;
  *(v293 + 96) = v341;
  *(v293 + 104) = v297;
  *(v293 + 112) = v345;
  *(v293 + 120) = v325;
  *(v293 + 128) = v324;
  *(v293 + 136) = v319;
  v298 = v322;
  v299 = v318;
  *(v293 + 144) = v322;
  *(v293 + 152) = v299;
  *(v293 + 160) = v342;
  *(v293 + 168) = v243;
  if (v298)
  {
    sub_1D6E01F94(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    v300 = swift_allocObject();
    v301 = v300;
    *(v300 + 16) = xmmword_1D7273AE0;
    v302 = *(v298 + 64);
    v303 = v347;
    if ((~v302 & 0xF000000000000007) != 0)
    {
      v306 = &protocol witness table for FormatBackground;
      v305 = &type metadata for FormatBackground;
      v304 = *(v298 + 64);
    }

    else
    {
      v304 = 0;
      v305 = 0;
      v306 = 0;
      *(v300 + 40) = 0;
      *(v300 + 48) = 0;
    }

    *(v300 + 32) = v304;
    *(v300 + 56) = v305;
    *(v300 + 64) = v306;

    sub_1D5D04BD4(v302);
    v307 = sub_1D6E27AC0();
    swift_setDeallocating();
    sub_1D6E02060(v301 + 32, sub_1D60D65D0);
    swift_deallocClassInstance();
    v296 = v340;
  }

  else
  {

    v307 = MEMORY[0x1E69E7CD0];
    v303 = v347;
  }

  sub_1D6E02060(v336, type metadata accessor for FormatVideoPlayerData);
  (*(v291 + 8))(v296, v290);
  sub_1D6E02060(v285, sub_1D5B69BE0);
  *(v293 + 176) = v307;
  *(v293 + 184) = v279;
  *(v303 + 16) = v293;
  *v323 = v303 | 0x8000000000000004;
}

void sub_1D6E01E5C(unint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v12 = (*(*(v11 - 8) + 80) + 64) & ~*(*(v11 - 8) + 80);
  v13.n128_f64[0] = a2;
  sub_1D6DFF9F0(*(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), v5 + v12, *(v5 + ((*(*(v11 - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, v13, a3, a4, a5);
}

uint64_t sub_1D6E01F4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6E01F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6E01FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6E02060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id FormatCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

unint64_t sub_1D6E0214C()
{
  result = qword_1EDF044D0;
  if (!qword_1EDF044D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF044D0);
  }

  return result;
}

unint64_t sub_1D6E02198()
{
  result = qword_1EDF3B490;
  if (!qword_1EDF3B490)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3B490);
  }

  return result;
}

uint64_t sub_1D6E021FC(uint64_t a1)
{
  sub_1D6E02258(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6E02258(uint64_t a1)
{
  if (!qword_1EC8967A0)
  {
    sub_1D6E02198();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8967A0);
    }
  }
}

void sub_1D6E02340(void (*a1)(uint64_t, uint64_t))
{
  v3 = [v1 visibleCells];
  sub_1D6E0214C();
  v4 = sub_1D726267C();

  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1DA6FB460](i, v4);
          }

          else
          {
            v9 = *(v4 + 8 * i + 32);
          }

          v10 = v9;
          v14 = v9;
          sub_1D6E02198();
          v11 = v10;
          if (swift_dynamicCast())
          {
            sub_1D5B63F14(v12, v15);
            v7 = v16;
            v8 = v17;
            __swift_project_boxed_opaque_existential_1(v15, v16);
            a1(v7, v8);

            __swift_destroy_boxed_opaque_existential_1(v15);
          }

          else
          {

            v13 = 0;
            memset(v12, 0, sizeof(v12));
            sub_1D6E021FC(v12);
          }
        }
      }

      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }
}

id FormatCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = v5;
  v13.super_class = swift_getObjectType();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);

  return v11;
}

id FormatCollectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FormatCollectionView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id FormatCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FormatCollectionView.shouldMonitorScroll.getter()
{
  v1 = [v0 visibleCells];
  sub_1D6E0214C();
  v2 = sub_1D726267C();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v6)
      {
        swift_getObjectType();
        v8 = sub_1D725F01C();

        if (v8)
        {
          v9 = 1;
          goto LABEL_19;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v9 = 0;
LABEL_19:

  return v9;
}

void FormatCollectionView.blueprintViewportMonitor(_:viewportScrollDataDidChange:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 visibleCells];
  sub_1D6E0214C();
  v4 = sub_1D726267C();

  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6FB460](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v8)
    {
      swift_getObjectType();
      sub_1D725F02C();
    }
  }

LABEL_13:
}

void sub_1D6E02B2C()
{
  v1 = type metadata accessor for FormatOption(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 72);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v6 + 16))
    {
      if (!((*(v6 + 32 + 8 * v8) >> 59) & 0x1E | (*(v6 + 32 + 8 * v8) >> 2) & 1))
      {
        v10 = swift_projectBox();
        sub_1D5D255FC(v10, v5, type metadata accessor for FormatOption);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D5CEABA0(0, v9[2] + 1, 1, v9);
        }

        v12 = v9[2];
        v11 = v9[3];
        if (v12 >= v11 >> 1)
        {
          v9 = sub_1D5CEABA0((v11 > 1), v12 + 1, 1, v9);
        }

        v9[2] = v12 + 1;
        sub_1D5D247E0(v5, v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12);
      }

      if (v7 == ++v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D6E02CD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = v6;
  v94 = a5;
  v97 = type metadata accessor for FormatOption(0);
  v11 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 112);
  v91 = v5;
  v100 = v5[9];

  sub_1D6E035EC();
  sub_1D6985C44(v16);
  v17 = *(v15 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  v92 = v11;
  if (v17)
  {
    v93 = a4;
    v95 = a2;
    v96 = v7;
    *&v99 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v17, 0);
    v18 = v99;
    v19 = *(v11 + 80);
    v90 = v15;
    v20 = v15 + ((v19 + 32) & ~v19);
    v21 = *(v11 + 72);
    do
    {
      sub_1D5D255FC(v20, v14, type metadata accessor for FormatOption);
      v22 = swift_allocBox();
      sub_1D5D247E0(v14, v23);
      *&v99 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D5D24610((v24 > 1), v25 + 1, 1);
        v18 = v99;
      }

      *(v18 + 16) = v25 + 1;
      *(v18 + 8 * v25 + 32) = v22 | 0x8000000000000000;
      v20 += v21;
      --v17;
    }

    while (v17);

    a2 = v95;
    v7 = v96;
    a4 = v93;
  }

  sub_1D6985C44(v18);
  v26 = *(a4 + 56);
  sub_1D678F1E8(v26, &v99);
  v98 = v99;
  type metadata accessor for FormatOptionList();
  swift_allocObject();

  v27 = sub_1D71E2BC8(&v98, a2);
  v28 = v7;
  if (v7)
  {
  }

  else
  {
    v29 = v27[2];

    sub_1D6985C44(v29);
    v30 = sub_1D678F3E8(v26);
    if (v30)
    {
      v31 = *(v30 + 16);
      if (v31)
      {
        v87 = 0;
        v32 = v100;
        v33 = v30 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
        v34 = *(v92 + 72);
        do
        {
          v35 = swift_allocBox();
          sub_1D5D255FC(v33, v36, type metadata accessor for FormatOption);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1D698F420(0, v32[2] + 1, 1, v32);
          }

          v38 = v32[2];
          v37 = v32[3];
          if (v38 >= v37 >> 1)
          {
            v32 = sub_1D698F420((v37 > 1), v38 + 1, 1, v32);
          }

          v32[2] = v38 + 1;
          v32[v38 + 4] = v35 | 0x8000000000000000;
          v33 += v34;
          --v31;
        }

        while (v31);

        v100 = v32;
        v28 = v87;
      }

      else
      {
      }
    }

    v39 = v91[16];
    if (v39)
    {
      v96 = *(v39 + 16);
      if (v96)
      {
        v87 = v28;
        v40 = v91[13];
        v41 = v91[14];
        __swift_project_boxed_opaque_existential_1(v91 + 10, v40);
        *&v99 = 0;
        *(&v99 + 1) = 0xE000000000000000;

        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73F3930);
        *&v98 = *(v39 + 16);
        v42 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v42);

        MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73F3950);
        (*(v41 + 16))(v99, *(&v99 + 1), v40, v41);

        type metadata accessor for FormatVariableCollection();
        v43 = swift_allocObject();
        *(v43 + 16) = MEMORY[0x1E69E7CC8];
        type metadata accessor for FormatOptionCollection();
        swift_initStackObject();

        v45 = sub_1D5D2488C(v44, v43);

        *&v98 = v94;

        v86 = v45;
        sub_1D6F622E0(v46);
        sub_1D5B886D0(v47);

        v48 = 0;
        v95 = v39 + 32;
        v88 = " app config group options";
        v49 = v39;
        v90 = v39;
        while (v48 < *(v49 + 16))
        {
          v55 = (v95 + 24 * v48);
          v56 = v55[1];
          v57 = v55[2];
          if (v56)
          {
            v58 = *v55;
            *&v99 = *v55;
            *(&v99 + 1) = v56;
            swift_bridgeObjectRetain_n();

            if (FormatSelector.matches(_:)(v94))
            {
              swift_bridgeObjectRelease_n();
              v59 = *(v57 + 16);
              if (v59)
              {
                v93 = v48;
                *&v99 = MEMORY[0x1E69E7CC0];
                sub_1D5D24610(0, v59, 0);
                v60 = v99;
                v61 = *(v92 + 80);
                v89 = v57;
                v62 = v57 + ((v61 + 32) & ~v61);
                v63 = *(v92 + 72);
                do
                {
                  sub_1D5D255FC(v62, v14, type metadata accessor for FormatOption);
                  v64 = swift_allocBox();
                  sub_1D5D247E0(v14, v65);
                  *&v99 = v60;
                  v67 = *(v60 + 16);
                  v66 = *(v60 + 24);
                  if (v67 >= v66 >> 1)
                  {
                    sub_1D5D24610((v66 > 1), v67 + 1, 1);
                    v60 = v99;
                  }

                  *(v60 + 16) = v67 + 1;
                  *(v60 + 8 * v67 + 32) = v64 | 0x1000000000000000;
                  v62 += v63;
                  --v59;
                }

                while (v59);

                v49 = v90;
                v48 = v93;
              }

              else
              {

                v60 = MEMORY[0x1E69E7CC0];
              }

              sub_1D6985C44(v60);
            }

            else
            {

              v50 = v48;
              v51 = v91[13];
              v52 = v91[14];
              __swift_project_boxed_opaque_existential_1(v91 + 10, v51);
              *&v99 = 0;
              *(&v99 + 1) = 0xE000000000000000;
              sub_1D7263D4C();
              MEMORY[0x1DA6F9910](0xD00000000000003BLL, v88 | 0x8000000000000000);
              MEMORY[0x1DA6F9910](v58, v56);

              v53 = *(v52 + 16);
              v54 = v52;
              v48 = v50;
              v53(v99, *(&v99 + 1), v51, v54);
            }
          }

          else
          {
            v68 = *(v57 + 16);
            if (v68)
            {
              v93 = v48;
              *&v99 = MEMORY[0x1E69E7CC0];

              sub_1D5D24610(0, v68, 0);
              v69 = v99;
              v70 = v57 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
              v71 = *(v92 + 72);
              do
              {
                sub_1D5D255FC(v70, v14, type metadata accessor for FormatOption);
                v72 = swift_allocBox();
                sub_1D5D247E0(v14, v73);
                *&v99 = v69;
                v75 = *(v69 + 16);
                v74 = *(v69 + 24);
                if (v75 >= v74 >> 1)
                {
                  sub_1D5D24610((v74 > 1), v75 + 1, 1);
                  v69 = v99;
                }

                *(v69 + 16) = v75 + 1;
                *(v69 + 8 * v75 + 32) = v72 | 0x1000000000000000;
                v70 += v71;
                --v68;
              }

              while (v68);

              v48 = v93;
            }

            else
            {
              v69 = MEMORY[0x1E69E7CC0];
            }

            v76 = *(v69 + 16);
            v77 = v100;
            v78 = v100[2];
            v79 = v78 + v76;
            if (__OFADD__(v78, v76))
            {
              goto LABEL_59;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || (v81 = v77[3] >> 1, v81 < v79))
            {
              if (v78 <= v79)
              {
                v82 = v78 + v76;
              }

              else
              {
                v82 = v78;
              }

              v77 = sub_1D698F420(isUniquelyReferenced_nonNull_native, v82, 1, v77);
              v81 = v77[3] >> 1;
            }

            v49 = v90;
            if (*(v69 + 16))
            {
              if (v81 - v77[2] < v76)
              {
                goto LABEL_61;
              }

              sub_1D5D24660(0);
              swift_arrayInitWithCopy();

              if (v76)
              {
                v83 = v77[2];
                v84 = __OFADD__(v83, v76);
                v85 = v83 + v76;
                if (v84)
                {
                  goto LABEL_62;
                }

                v77[2] = v85;
              }
            }

            else
            {

              if (v76)
              {
                goto LABEL_60;
              }
            }

            v100 = v77;
          }

          if (++v48 == v96)
          {

            return;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
      }
    }
  }
}

void sub_1D6E035EC()
{
  v1 = v0;
  v50 = type metadata accessor for FormatOption(0);
  v2 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v3);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2CBA8(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  v53 = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  swift_beginAccess();
  v13 = *(v0 + v12);
  v14 = *(v13 + 16);
  v49 = v2;
  if (v14)
  {
    v47 = v7;
    v48 = v0;
    v52[0] = v11;

    sub_1D5D24610(0, v14, 0);
    v11 = v52[0];
    v15 = *(v2 + 80);
    v46[1] = v13;
    v16 = v13 + ((v15 + 32) & ~v15);
    v17 = *(v2 + 72);
    do
    {
      sub_1D5D255FC(v16, v5, type metadata accessor for FormatOption);
      v18 = swift_allocBox();
      sub_1D5D247E0(v5, v19);
      v52[0] = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D5D24610((v20 > 1), v21 + 1, 1);
        v11 = v52[0];
      }

      *(v11 + 16) = v21 + 1;
      *(v11 + 8 * v21 + 32) = v18 | 0x4000000000000000;
      v16 += v17;
      --v14;
    }

    while (v14);

    v7 = v47;
    v1 = v48;
  }

  sub_1D6985C44(v11);
  v22 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v26 = v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v27 = *(v7 + 72);
    v48 = *(v1 + v22);

    v28 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D5D255FC(v26, v10, sub_1D5C2CBA8);
      v29 = *(v10 + 8);

      sub_1D5C8C86C(v10);
      v30 = *(v29 + 16);
      v31 = v28[2];
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v32 <= v28[3] >> 1)
      {
        if (*(v29 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v28 = sub_1D5CEABA0(isUniquelyReferenced_nonNull_native, v34, 1, v28);
        if (*(v29 + 16))
        {
LABEL_20:
          if ((v28[3] >> 1) - v28[2] < v30)
          {
            goto LABEL_35;
          }

          swift_arrayInitWithCopy();

          if (v30)
          {
            v35 = v28[2];
            v36 = __OFADD__(v35, v30);
            v37 = v35 + v30;
            if (v36)
            {
              goto LABEL_36;
            }

            v28[2] = v37;
          }

          goto LABEL_10;
        }
      }

      if (v30)
      {
        goto LABEL_34;
      }

LABEL_10:
      v26 += v27;
      if (!--v24)
      {

        v25 = MEMORY[0x1E69E7CC0];
        v38 = v28[2];
        if (!v38)
        {
          goto LABEL_31;
        }

LABEL_25:
        v51 = v25;
        sub_1D5D24610(0, v38, 0);
        v39 = v51;
        v40 = v28 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v41 = *(v49 + 72);
        do
        {
          sub_1D5D255FC(v40, v5, type metadata accessor for FormatOption);
          v42 = swift_allocBox();
          sub_1D5D247E0(v5, v43);
          v51 = v39;
          v45 = *(v39 + 16);
          v44 = *(v39 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_1D5D24610((v44 > 1), v45 + 1, 1);
            v39 = v51;
          }

          *(v39 + 16) = v45 + 1;
          *(v39 + 8 * v45 + 32) = v42 | 0xB000000000000000;
          v40 += v41;
          --v38;
        }

        while (v38);

        goto LABEL_32;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
  v38 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v38)
  {
    goto LABEL_25;
  }

LABEL_31:

  v39 = MEMORY[0x1E69E7CC0];
LABEL_32:
  sub_1D6985C44(v39);
}

void sub_1D6E03AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v8 = v7;
  v87 = a6;
  v94 = a4;
  v95 = type metadata accessor for FormatOption(0);
  v12 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v13);
  v15 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 80);
  v88 = v6;
  v98 = v6[9];

  sub_1D6E035EC();
  sub_1D6985C44(v17);
  v18 = *(v16 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v89 = v12;
  if (v18)
  {
    v91 = a2;
    v92 = v8;
    v93 = a5;
    *&v97 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v18, 0);
    v19 = v97;
    v20 = *(v12 + 80);
    v90 = v16;
    v21 = v16 + ((v20 + 32) & ~v20);
    v22 = *(v12 + 72);
    do
    {
      sub_1D5D255FC(v21, v15, type metadata accessor for FormatOption);
      v23 = swift_allocBox();
      sub_1D5D247E0(v15, v24);
      *&v97 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D5D24610((v25 > 1), v26 + 1, 1);
        v19 = v97;
      }

      *(v19 + 16) = v26 + 1;
      *(v19 + 8 * v26 + 32) = v23 | 0x8000000000000004;
      v21 += v22;
      --v18;
    }

    while (v18);

    v8 = v92;
    a5 = v93;
    a2 = v91;
  }

  sub_1D6985C44(v19);
  sub_1D678F1E8(v94, &v97);
  v96 = v97;
  type metadata accessor for FormatOptionList();
  swift_allocObject();

  v27 = sub_1D71E2BC8(&v96, a2);
  if (v8)
  {
  }

  else
  {
    v86[2] = 0;
    v28 = v27[2];

    sub_1D6985C44(v28);
    v29 = *(a5 + 16);
    v30 = MEMORY[0x1E69E7CC0];
    if (v29)
    {
      *&v97 = MEMORY[0x1E69E7CC0];
      sub_1D5D24610(0, v29, 0);
      v31 = v97;
      v32 = a5 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v33 = *(v89 + 72);
      do
      {
        sub_1D5D255FC(v32, v15, type metadata accessor for FormatOption);
        v34 = swift_allocBox();
        sub_1D5D247E0(v15, v35);
        *&v97 = v31;
        v37 = *(v31 + 16);
        v36 = *(v31 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1D5D24610((v36 > 1), v37 + 1, 1);
          v31 = v97;
        }

        *(v31 + 16) = v37 + 1;
        *(v31 + 8 * v37 + 32) = v34 | 0x3000000000000004;
        v32 += v33;
        --v29;
      }

      while (v29);
      v30 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6985C44(v31);
    v38 = v88[16];
    if (v38)
    {
      v93 = *(v38 + 16);
      if (v93)
      {
        v39 = v88[13];
        v40 = v88[14];
        __swift_project_boxed_opaque_existential_1(v88 + 10, v39);
        *&v97 = 0;
        *(&v97 + 1) = 0xE000000000000000;

        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73F3930);
        *&v96 = *(v38 + 16);
        v41 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v41);

        MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73F3A80);
        (*(v40 + 16))(v97, *(&v97 + 1), v39, v40);

        type metadata accessor for FormatVariableCollection();
        v42 = swift_allocObject();
        *(v42 + 16) = MEMORY[0x1E69E7CC8];
        type metadata accessor for FormatOptionCollection();
        swift_initStackObject();

        v44 = sub_1D5D2488C(v43, v42);

        *&v96 = v87;

        v86[1] = v44;
        sub_1D6F622E0(v45);
        sub_1D5B886D0(v46);
        v47 = 0;
        v92 = v38 + 32;
        v87 = " app config decoration options";
        v90 = v38;
        while (v47 < *(v38 + 16))
        {
          v52 = (v92 + 24 * v47);
          v53 = v52[1];
          v54 = v52[2];
          if (v53)
          {
            v55 = *v52;
            *&v97 = *v52;
            *(&v97 + 1) = v53;
            v56 = v96;
            swift_bridgeObjectRetain_n();

            if (FormatSelector.matches(_:)(v56))
            {
              swift_bridgeObjectRelease_n();
              v57 = *(v54 + 16);
              if (v57)
              {
                v94 = v47;
                *&v97 = v30;
                sub_1D5D24610(0, v57, 0);
                v58 = v97;
                v59 = *(v89 + 80);
                v91 = v54;
                v60 = v54 + ((v59 + 32) & ~v59);
                v61 = *(v89 + 72);
                do
                {
                  sub_1D5D255FC(v60, v15, type metadata accessor for FormatOption);
                  v62 = swift_allocBox();
                  sub_1D5D247E0(v15, v63);
                  *&v97 = v58;
                  v65 = *(v58 + 16);
                  v64 = *(v58 + 24);
                  if (v65 >= v64 >> 1)
                  {
                    sub_1D5D24610((v64 > 1), v65 + 1, 1);
                    v58 = v97;
                  }

                  *(v58 + 16) = v65 + 1;
                  *(v58 + 8 * v65 + 32) = v62 | 0x1000000000000000;
                  v60 += v61;
                  --v57;
                }

                while (v57);

                v30 = MEMORY[0x1E69E7CC0];
                v38 = v90;
                v47 = v94;
              }

              else
              {

                v58 = v30;
              }

              sub_1D6985C44(v58);
            }

            else
            {

              v48 = v88[13];
              v49 = v88[14];
              __swift_project_boxed_opaque_existential_1(v88 + 10, v48);
              *&v97 = 0;
              *(&v97 + 1) = 0xE000000000000000;
              sub_1D7263D4C();
              MEMORY[0x1DA6F9910](0xD000000000000035, v87 | 0x8000000000000000);
              MEMORY[0x1DA6F9910](v55, v53);

              v50 = *(v49 + 16);
              v30 = MEMORY[0x1E69E7CC0];
              v51 = v49;
              v38 = v90;
              v50(v97, *(&v97 + 1), v48, v51);
            }
          }

          else
          {
            v94 = v47;
            v66 = *(v54 + 16);
            if (v66)
            {
              *&v97 = v30;

              v67 = v54;
              sub_1D5D24610(0, v66, 0);
              v68 = v97;
              v69 = *(v89 + 80);
              v91 = v67;
              v70 = v67 + ((v69 + 32) & ~v69);
              v71 = *(v89 + 72);
              do
              {
                sub_1D5D255FC(v70, v15, type metadata accessor for FormatOption);
                v72 = swift_allocBox();
                sub_1D5D247E0(v15, v73);
                *&v97 = v68;
                v75 = *(v68 + 16);
                v74 = *(v68 + 24);
                if (v75 >= v74 >> 1)
                {
                  sub_1D5D24610((v74 > 1), v75 + 1, 1);
                  v68 = v97;
                }

                *(v68 + 16) = v75 + 1;
                *(v68 + 8 * v75 + 32) = v72 | 0x1000000000000000;
                v70 += v71;
                --v66;
              }

              while (v66);

              v38 = v90;
            }

            else
            {
              v68 = v30;
            }

            v76 = *(v68 + 16);
            v77 = v98;
            v78 = v98[2];
            v79 = v78 + v76;
            if (__OFADD__(v78, v76))
            {
              goto LABEL_56;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || (v81 = v77[3] >> 1, v81 < v79))
            {
              if (v78 <= v79)
              {
                v82 = v78 + v76;
              }

              else
              {
                v82 = v78;
              }

              v77 = sub_1D698F420(isUniquelyReferenced_nonNull_native, v82, 1, v77);
              v81 = v77[3] >> 1;
            }

            v47 = v94;
            if (*(v68 + 16))
            {
              if (v81 - v77[2] < v76)
              {
                goto LABEL_58;
              }

              sub_1D5D24660(0);
              v47 = v94;
              swift_arrayInitWithCopy();

              if (v76)
              {
                v83 = v77[2];
                v84 = __OFADD__(v83, v76);
                v85 = v83 + v76;
                if (v84)
                {
                  goto LABEL_59;
                }

                v77[2] = v85;
              }
            }

            else
            {

              if (v76)
              {
                goto LABEL_57;
              }
            }

            v98 = v77;
          }

          if (++v47 == v93)
          {

            return;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
      }
    }
  }
}

void sub_1D6E043D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v41 = v4[8];
  v7 = a3[4];
  v8 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3 + 1, v7);
  v9 = *(v8 + 80);

  v10 = v9(v7, v8);
  sub_1D5B886D0(v10);
  swift_beginAccess();

  sub_1D5B886D0(v11);

  sub_1D5B886D0(v12);
  v13 = sub_1D678F664(a3[7]);
  sub_1D5B886D0(v13);
  v14 = 1 << *(a4 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a4 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (v16)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(a4 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      do
      {
LABEL_9:
        v16 &= v16 - 1;

        v20 = sub_1D724F988();
        sub_1D5B886D0(v20);
      }

      while (v16);
      continue;
    }
  }

  v21 = v4[15];
  if (v21)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v4[13];
      v24 = v4[14];
      __swift_project_boxed_opaque_existential_1(v4 + 10, v23);
      v39 = 0;
      v40 = 0xE000000000000000;

      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73F3930);
      v25 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v25);

      MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73F39B0);
      (*(v24 + 16))(0, 0xE000000000000000, v23, v24);

      v26 = 0;
      v27 = v21 + 32;
      do
      {
        v30 = (v27 + 24 * v26);
        v32 = v30[1];
        v31 = v30[2];
        if (v32)
        {
          v33 = *v30;
          v39 = *v30;
          v40 = v32;
          v34 = v41;

          if (FormatSelector.matches(_:)(v34))
          {

            sub_1D5B87D50(v31);
          }

          else
          {

            v28 = v4[13];
            v29 = v4[14];
            __swift_project_boxed_opaque_existential_1(v4 + 10, v28);
            v39 = 0;
            v40 = 0xE000000000000000;
            sub_1D7263D4C();
            MEMORY[0x1DA6F9910](0xD000000000000032, 0x80000001D73F39D0);
            MEMORY[0x1DA6F9910](v33, v32);

            (*(v29 + 16))(v39, v40, v28, v29);
          }
        }

        else
        {
          v35 = *(v31 + 16);

          if (v35)
          {
            v36 = (v31 + 40);
            do
            {
              v38 = *(v36 - 1);
              v37 = *v36;

              sub_1D5B860D0(&v39, v38, v37);

              v36 += 2;
              --v35;
            }

            while (v35);
          }
        }

        ++v26;
      }

      while (v26 != v22);
    }
  }
}

uint64_t sub_1D6E047F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = v3[8];

  sub_1D5B886D0(v5);
  swift_beginAccess();

  sub_1D5B886D0(v6);

  sub_1D5B886D0(v7);
  v8 = sub_1D678F664(a3);
  sub_1D5B886D0(v8);
  v9 = v3[15];
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v3[13];
      v12 = v3[14];
      __swift_project_boxed_opaque_existential_1(v3 + 10, v11);
      v28 = 0;
      v29 = 0xE000000000000000;

      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73F3930);
      v13 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v13);

      MEMORY[0x1DA6F9910](0xD000000000000020, 0x80000001D73F3A10);
      (*(v12 + 16))(0, 0xE000000000000000, v11, v12);

      v14 = 0;
      v15 = v9 + 32;
      do
      {
        v18 = (v15 + 24 * v14);
        v20 = v18[1];
        v19 = v18[2];
        if (v20)
        {
          v21 = *v18;
          v28 = *v18;
          v29 = v20;
          v22 = v30;

          if (FormatSelector.matches(_:)(v22))
          {

            sub_1D5B87D50(v19);
          }

          else
          {

            v16 = v3[13];
            v17 = v3[14];
            __swift_project_boxed_opaque_existential_1(v3 + 10, v16);
            v28 = 0;
            v29 = 0xE000000000000000;
            sub_1D7263D4C();
            MEMORY[0x1DA6F9910](0xD000000000000037, 0x80000001D73F3A40);
            MEMORY[0x1DA6F9910](v21, v20);

            (*(v17 + 16))(v28, v29, v16, v17);
          }
        }

        else
        {
          v23 = *(v19 + 16);

          if (v23)
          {
            v24 = (v19 + 40);
            do
            {
              v26 = *(v24 - 1);
              v25 = *v24;

              sub_1D5B860D0(&v28, v26, v25);

              v24 += 2;
              --v23;
            }

            while (v23);
          }
        }

        ++v14;
      }

      while (v14 != v10);
    }
  }

  return v30;
}

uint64_t sub_1D6E04B20()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6E04BE8()
{
  v1 = v0;
  v2 = v0[8];
  v24 = v2;
  v3 = v1[15];
  if (v3 && (v4 = *(v3 + 16)) != 0)
  {
    v5 = v1[13];
    v6 = v1[14];
    __swift_project_boxed_opaque_existential_1(v1 + 10, v5);
    v22 = 0;
    v23 = 0xE000000000000000;

    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73F3930);
    v7 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v7);

    MEMORY[0x1DA6F9910](0xD000000000000020, 0x80000001D73F3A10);
    (*(v6 + 16))(0, 0xE000000000000000, v5, v6);

    v8 = 0;
    v9 = v3 + 32;
    do
    {
      v12 = (v9 + 24 * v8);
      v14 = v12[1];
      v13 = v12[2];
      if (v14)
      {
        v15 = *v12;
        v22 = *v12;
        v23 = v14;
        v16 = v24;

        if (FormatSelector.matches(_:)(v16))
        {

          sub_1D5B87D50(v13);
        }

        else
        {

          v10 = v1[13];
          v11 = v1[14];
          __swift_project_boxed_opaque_existential_1(v1 + 10, v10);
          v22 = 0;
          v23 = 0xE000000000000000;
          sub_1D7263D4C();
          MEMORY[0x1DA6F9910](0xD000000000000037, 0x80000001D73F3A40);
          MEMORY[0x1DA6F9910](v15, v14);

          (*(v11 + 16))(v22, v23, v10, v11);
        }
      }

      else
      {
        v17 = *(v13 + 16);

        if (v17)
        {
          v18 = (v13 + 40);
          do
          {
            v20 = *(v18 - 1);
            v19 = *v18;

            sub_1D5B860D0(&v22, v20, v19);

            v18 += 2;
            --v17;
          }

          while (v17);
        }
      }

      ++v8;
    }

    while (v8 != v4);

    return v24;
  }

  else
  {
  }

  return v2;
}

uint64_t FormatNodeState.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return v0;
}

uint64_t FormatNodeState.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t FeedServiceImpressionProcessor.__allocating_init(cursorContainerBlock:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FeedServiceImpressionProcessor.init(cursorContainerBlock:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FeedServiceImpressionProcessor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1D6E05154(uint64_t a1, uint64_t (*a2)(void, uint64_t *, __n128), void (*a3)(void), void (*a4)(uint64_t), int a5)
{
  v32 = a5;
  v38 = a4;
  v43 = a2;
  v44 = a3;
  v41 = *v5;
  v42 = a1;
  v40 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v40, v6);
  v39 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v36 = &v31[-v10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_1D725CE8C();
  v34 = *(v12 - 8);
  v35 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33 = &v31[-v14];
  v15 = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v45 = v15;
  v46 = AssociatedTypeWitness;
  v47 = v16;
  v48 = AssociatedConformanceWitness;
  v17 = sub_1D725FACC();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v31[-v21];
  v23 = v5[2];
  v45 = v15;
  v46 = AssociatedTypeWitness;
  v47 = v16;
  v48 = AssociatedConformanceWitness;
  v24 = v43(0, &v45, v20);
  v44();
  v25 = v23(v22);
  (*(v18 + 8))(v22, v17);
  if ((~v25 & 0xF000000000000007) != 0)
  {
    v27 = v33;
    v38(v24);
    v29 = v35;
    v28 = v36;
    sub_1D725CE7C();
    (*(v34 + 8))(v27, v29);
    v30 = v39;
    (*(*(v41 + 112) + 8))(AssociatedTypeWitness);
    (*(v37 + 8))(v28, AssociatedTypeWitness);
    LODWORD(v28) = swift_getEnumCaseMultiPayload();
    sub_1D5BDDCA8(v30);
    sub_1D61519B4(v25);

    if (v28)
    {
      FeedServiceState.markNonGapOnScreen()();
    }

    else
    {
      FeedServiceState.markGapOnScreen(_:)(v32 & 1);
    }

    sub_1D5BD9F54(v25);
  }

  return result;
}

uint64_t FeedGroupEmitterRuleOutput.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1D5EAD0DC(v2, v3, v4);
}

uint64_t sub_1D6E05608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D6E05650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6E056C0(void *a1)
{
  v3 = v1;
  sub_1D6E05CBC(0, &qword_1EDF02870, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E05C14();
  sub_1D7264B5C();
  v12[15] = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v12[14] = *(v3 + 16);
    v12[13] = 1;
    sub_1D6E05D20();
    sub_1D726443C();
    v12[12] = 2;
    sub_1D72643FC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6E05874()
{
  v1 = 0x746C75736572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_1D6E058D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6E05E8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6E05900(uint64_t a1)
{
  v2 = sub_1D6E05C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E0593C(uint64_t a1)
{
  v2 = sub_1D6E05C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6E05978@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6E059D8(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

void sub_1D6E059D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6E05CBC(0, &qword_1EC8967A8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E05C14();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v14 = v11;
    v22 = 1;
    sub_1D6E05C68();
    sub_1D726431C();
    v20 = v23;
    v21 = 2;
    v15 = sub_1D72642BC();
    v16 = v10;
    v18 = v17;
    (*(v7 + 8))(v16, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v20;
    *(a2 + 24) = v15;
    *(a2 + 32) = v18;
  }
}

unint64_t sub_1D6E05C14()
{
  result = qword_1EDF13140;
  if (!qword_1EDF13140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13140);
  }

  return result;
}

unint64_t sub_1D6E05C68()
{
  result = qword_1EC8967B0;
  if (!qword_1EC8967B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967B0);
  }

  return result;
}

void sub_1D6E05CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6E05C14();
    v7 = a3(a1, &type metadata for FeedGroupEmitterRuleOutputDescription.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6E05D20()
{
  result = qword_1EDF139F8;
  if (!qword_1EDF139F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF139F8);
  }

  return result;
}

unint64_t sub_1D6E05D88()
{
  result = qword_1EC8967B8;
  if (!qword_1EC8967B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967B8);
  }

  return result;
}

unint64_t sub_1D6E05DE0()
{
  result = qword_1EDF13130;
  if (!qword_1EDF13130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13130);
  }

  return result;
}

unint64_t sub_1D6E05E38()
{
  result = qword_1EDF13138;
  if (!qword_1EDF13138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13138);
  }

  return result;
}

uint64_t sub_1D6E05E8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F3B20 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t FormatVideoNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatVideoNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatVideoNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double FormatVideoNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 96);

  return result;
}

double FormatVideoNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatVideoNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t sub_1D6E060C0(uint64_t a1)
{
  v2 = sub_1D6E0667C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E060FC(uint64_t a1)
{
  v2 = sub_1D6E0667C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return v0;
}

uint64_t FormatVideoNodeLayoutAttributes.__deallocating_deinit()
{
  FormatVideoNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatVideoNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6E06D8C(0, &qword_1EC8967C0, sub_1D6E0667C, &type metadata for FormatVideoNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E0667C();
  sub_1D7264B5C();
  LOBYTE(v14[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v14[0]) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v14[0] = *(v3 + 64);
    v14[1] = v12;
    v15 = 3;
    type metadata accessor for CGRect(0);
    sub_1D6E0725C(&qword_1EC8801E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D726443C();
    *&v14[0] = *(v3 + 96);
    v15 = 4;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v14[0]) = 5;
    sub_1D726442C();
    *&v14[0] = *(v3 + 112);
    v15 = 6;
    sub_1D5EB1500(*&v14[0]);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(*&v14[0]);
    LOBYTE(v14[0]) = 7;
    sub_1D726440C();
    v13 = *(v3 + 136);
    *&v14[0] = *(v3 + 128);
    BYTE8(v14[0]) = v13;
    v15 = 8;
    sub_1D5F8F434();
    sub_1D72643BC();
    *&v14[0] = *(v3 + 144);
    v15 = 9;
    type metadata accessor for FormatVideoNodeStyle();
    sub_1D6E0725C(&qword_1EC887770, 255, type metadata accessor for FormatVideoNodeStyle, &protocol conformance descriptor for FormatVideoNodeStyle);
    sub_1D72643BC();
    *&v14[0] = *(v3 + 152);
    v15 = 10;
    sub_1D6E06D8C(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D6E06DF4(&qword_1EC881AF0, sub_1D5F8F488, MEMORY[0x1E69E64F0]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6E0667C()
{
  result = qword_1EC8967C8;
  if (!qword_1EC8967C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967C8);
  }

  return result;
}

uint64_t FormatVideoNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatVideoNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatVideoNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6E06D8C(0, &qword_1EC8967D0, sub_1D6E0667C, &type metadata for FormatVideoNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E0667C();
  v18 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v16;
    LOBYTE(v19) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v19) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v19) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    v21 = 3;
    sub_1D6E0725C(&qword_1EDF1A740, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v13 = v20;
    *(v1 + 64) = v19;
    *(v1 + 80) = v13;
    v21 = 4;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 96) = v19;
    LOBYTE(v19) = 5;
    *(v1 + 104) = sub_1D72642FC();
    v21 = 6;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 112) = v19;
    LOBYTE(v19) = 7;
    *(v1 + 120) = sub_1D72642CC() & 1;
    v21 = 8;
    sub_1D5C6F27C();
    sub_1D726427C();
    v14 = BYTE8(v19);
    *(v1 + 128) = v19;
    *(v1 + 136) = v14;
    type metadata accessor for FormatVideoNodeStyle();
    v21 = 9;
    sub_1D6E0725C(&qword_1EDF0EC18, 255, type metadata accessor for FormatVideoNodeStyle, &protocol conformance descriptor for FormatVideoNodeStyle);
    sub_1D726427C();
    *(v1 + 144) = v19;
    sub_1D6E06D8C(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v21 = 10;
    sub_1D6E06DF4(&qword_1EC881B10, sub_1D5F8FD48, MEMORY[0x1E69E6510]);
    sub_1D726431C();
    (*(v8 + 8))(v18, v17);
    *(v1 + 152) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D6E06D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6E06DF4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6E06D8C(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D6E06FDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatVideoNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6E07058(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D6E0725C(&qword_1EC8940C8, a2, type metadata accessor for FormatVideoNodeLayoutAttributes, &protocol conformance descriptor for FormatVideoNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D6E07158()
{
  result = qword_1EC8967E8;
  if (!qword_1EC8967E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967E8);
  }

  return result;
}

unint64_t sub_1D6E071B0()
{
  result = qword_1EC8967F0;
  if (!qword_1EC8967F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967F0);
  }

  return result;
}

unint64_t sub_1D6E07208()
{
  result = qword_1EC8967F8;
  if (!qword_1EC8967F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8967F8);
  }

  return result;
}

uint64_t sub_1D6E0725C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6E072D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D7260FEC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6E088FC(0, v9);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = a1;
  v27 = a2;
  sub_1D6E089AC(0);
  sub_1D6E08C14(&qword_1EC8968B8, sub_1D6E089AC, MEMORY[0x1E6981F48]);
  sub_1D726168C();
  sub_1D7260FDC();
  sub_1D6E08C14(&qword_1EC8968C0, sub_1D6E088FC, MEMORY[0x1E697CD20]);
  sub_1D726183C();
  (*(v7 + 8))(v11, v6);
  (*(v14 + 8))(v17, v13);
  v18 = [objc_opt_self() secondaryLabelColor];
  v19 = sub_1D726189C();
  KeyPath = swift_getKeyPath();
  v28 = v19;
  v21 = sub_1D7260EFC();
  sub_1D6E09544(0, v22);
  v24 = (a3 + *(v23 + 36));
  *v24 = KeyPath;
  v24[1] = v21;
}

uint64_t sub_1D6E07574@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a1;
  v147 = a3;
  sub_1D5F7BAC0();
  v149 = v4;
  v148 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v162 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v155 = &v131 - v9;
  sub_1D6E09188(0, &qword_1EC8968A8, sub_1D6E09208, &type metadata for DebugFormatPackageTreeNewsroomView);
  v161 = v10;
  v146 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v156 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v154 = &v131 - v15;
  sub_1D6E08CE4(0);
  v145 = v16;
  v144 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v17);
  v140 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E09188(0, &qword_1EC896898, sub_1D6E09134, &type metadata for DebugFormatPackageTreeSlotsView);
  v139 = v19;
  v138 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v137 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v143 = &v131 - v24;
  sub_1D6E08DAC(0);
  v136 = v25;
  v135 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v134 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v142 = &v131 - v30;
  sub_1D6E08CB0(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v153 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v131 - v36;
  sub_1D6E09188(0, &qword_1EC896840, sub_1D6E08C5C, &type metadata for DebugFormatPackageTreeAttributesView);
  v160 = v38;
  v152 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v159 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v158 = &v131 - v43;
  sub_1D6E08B60(0);
  v141 = v44;
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v46);
  v132 = &v131 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68D69A0(0);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v51 = &v131 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DebugFormatEditorLayoutContext(0);
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v131 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E08AC8(0);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v151 = &v131 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v131 - v62;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  v163 = a2;
  sub_1D72600CC();

  v64 = (*(v53 + 48))(v51, 1, v52);
  v157 = v63;
  if (v64 == 1)
  {
    v65 = v163;

    v66 = sub_1D68D69A0;
    v67 = v51;
  }

  else
  {
    sub_1D6E09750(v51, v56);
    swift_getKeyPath();
    swift_getKeyPath();
    v65 = v163;
    sub_1D72600CC();

    v68 = *(v164 + 16);

    v69 = *(v68 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);

    if (v69 <= 3)
    {
      v70 = v65[2];

      v71 = sub_1D7259CCC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      v72 = v164;
      type metadata accessor for DebugFormatPackageTreeColumn();
      swift_allocObject();
      sub_1D5F3F1F0(v70, v71, v72);
      type metadata accessor for DebugFormatPackageTree(0);
      sub_1D6E08C14(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree, &unk_1D7380468);
      v73 = sub_1D7260F8C();
      v75 = v74;
      sub_1D6E08C14(&qword_1EC8968D8, type metadata accessor for DebugFormatPackageTreeColumn, &unk_1D7284298);
      v76 = sub_1D7260F8C();
      v78 = v77;
      v164 = sub_1D726185C();
      v79 = sub_1D726199C();
      v164 = v73;
      v165 = v75;
      v166 = v76;
      v167 = v78;
      v168 = v79;
      sub_1D7260EDC();
      sub_1D6E08F24(0, &qword_1EC896828, &type metadata for DebugFormatPackageTreeWorkspaceView);
      sub_1D6E08B90();
      v80 = v132;
      v65 = v163;
      v63 = v157;
      sub_1D72617DC();

      sub_1D6E097B4(v56, type metadata accessor for DebugFormatEditorLayoutContext);
      v81 = v141;
      (*(v45 + 32))(v63, v80, v141);
      v82 = v81;
      v83 = 0;
      goto LABEL_7;
    }

    v66 = type metadata accessor for DebugFormatEditorLayoutContext;
    v67 = v56;
  }

  sub_1D6E097B4(v67, v66);
  v83 = 1;
  v82 = v141;
LABEL_7:
  (*(v45 + 56))(v63, v83, 1, v82);
  v84 = type metadata accessor for DebugFormatPackageTree(0);
  v85 = sub_1D6E08C14(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree, &unk_1D7380468);
  v164 = sub_1D7260F8C();
  v165 = v86;
  sub_1D7260EDC();
  sub_1D6E08C5C();
  sub_1D72617DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v87 = *(v164 + 16);

  v88 = *(v87 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);

  v150 = v37;
  if (v88 > 3)
  {

    v109 = 1;
  }

  else
  {
    v169 = &unk_1F5119998;
    swift_getKeyPath();
    v89 = swift_allocObject();
    *(v89 + 16) = v133;
    *(v89 + 24) = v65;
    sub_1D5B5CFF8(0, &unk_1EDF3C820, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    sub_1D6E08E90(0, &qword_1EC896870, &qword_1EC896878, &type metadata for DebugFormatPackageTreeColumnView, sub_1D6E08F84);
    sub_1D6E090B8();
    sub_1D6E08F24(255, &qword_1EC896878, &type metadata for DebugFormatPackageTreeColumnView);
    v91 = v90;
    v92 = sub_1D6E08F84();

    v164 = v91;
    v165 = v92;
    swift_getOpaqueTypeConformance2();
    v93 = v142;
    sub_1D72619DC();
    v164 = sub_1D7260F8C();
    v165 = v94;
    sub_1D7260EDC();
    sub_1D6E09134();
    v95 = v143;
    sub_1D72617DC();

    v133 = v85;
    v96 = v135;
    v97 = *(v135 + 16);
    v98 = v134;
    v99 = v136;
    v97(v134, v93, v136);
    v100 = v138;
    v132 = *(v138 + 16);
    v141 = v84;
    v101 = v137;
    v102 = v95;
    v103 = v139;
    (v132)(v137, v102, v139);
    v104 = v140;
    v105.n128_f64[0] = v97(v140, v98, v99);
    sub_1D6E08D18(0, v105);
    (v132)(v104 + *(v106 + 48), v101, v103);
    v107 = *(v100 + 8);
    v107(v143, v103);
    v108 = *(v96 + 8);
    v108(v142, v99);
    v107(v101, v103);
    v108(v98, v99);
    v37 = v150;
    sub_1D5DC7AC0(v104, v150);
    v109 = 0;
  }

  (*(v144 + 56))(v37, v109, 1, v145);
  v164 = sub_1D7260F8C();
  v165 = v110;
  sub_1D7260EDC();
  sub_1D6E09208();
  v111 = v154;
  sub_1D72617DC();

  v164 = 0;
  LOBYTE(v165) = 1;
  sub_1D7260EDC();
  v112 = v155;
  sub_1D72617DC();
  v113 = v151;
  sub_1D6E09680(v157, v151, sub_1D6E08AC8);
  v163 = *(v152 + 16);
  (v163)(v159, v158, v160);
  v145 = sub_1D6E08CB0;
  v114 = v153;
  sub_1D6E09680(v37, v153, sub_1D6E08CB0);
  v115 = v146;
  v144 = *(v146 + 16);
  v116 = v156;
  (v144)(v156, v111, v161);
  v117 = v148;
  v143 = *(v148 + 16);
  v118 = v112;
  v119 = v149;
  (v143)(v162, v118, v149);
  v120 = v113;
  v121 = v147;
  sub_1D6E09680(v120, v147, sub_1D6E08AC8);
  sub_1D6E089E0(0, v122);
  v124 = v123;
  (v163)(v121 + v123[12], v159, v160);
  sub_1D6E09680(v114, v121 + v124[16], v145);
  v125 = v161;
  (v144)(v121 + v124[20], v116, v161);
  (v143)(v121 + v124[24], v162, v119);
  v126 = *(v117 + 8);
  v126(v155, v119);
  v127 = *(v115 + 8);
  v127(v154, v125);
  sub_1D6E096E8(v150, sub_1D6E08CB0);
  v128 = *(v152 + 8);
  v129 = v160;
  v128(v158, v160);
  sub_1D6E096E8(v157, sub_1D6E08AC8);
  v126(v162, v119);
  v127(v156, v161);
  sub_1D6E096E8(v153, sub_1D6E08CB0);
  v128(v159, v129);
  return sub_1D6E096E8(v151, sub_1D6E08AC8);
}

double sub_1D6E086EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a3 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D72600CC();

  type metadata accessor for DebugFormatPackageTreeColumn();
  swift_allocObject();
  sub_1D5F3F1F0(v4, v3, v6);
  type metadata accessor for DebugFormatPackageTree(0);
  sub_1D6E08C14(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree, &unk_1D7380468);
  sub_1D7260F8C();
  sub_1D6E08C14(&qword_1EC8968D8, type metadata accessor for DebugFormatPackageTreeColumn, &unk_1D7284298);
  sub_1D7260F8C();
  sub_1D726185C();
  sub_1D726199C();
  sub_1D7260EDC();
  sub_1D6E08F24(0, &qword_1EC896878, &type metadata for DebugFormatPackageTreeColumnView);
  sub_1D6E08F84();
  sub_1D72617DC();

  return result;
}

void sub_1D6E088FC(uint64_t a1, __n128 a2)
{
  if (!qword_1EC896800)
  {
    sub_1D6E089AC(255);
    sub_1D6E08C14(&qword_1EC8968B8, sub_1D6E089AC, MEMORY[0x1E6981F48]);
    v2 = sub_1D726169C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC896800);
    }
  }
}

void sub_1D6E089E0(uint64_t a1, __n128 a2)
{
  if (!qword_1EC896810)
  {
    sub_1D6E08AC8(255);
    sub_1D6E09188(255, &qword_1EC896840, sub_1D6E08C5C, &type metadata for DebugFormatPackageTreeAttributesView);
    sub_1D6E08CB0(255);
    sub_1D6E09188(255, &qword_1EC8968A8, sub_1D6E09208, &type metadata for DebugFormatPackageTreeNewsroomView);
    sub_1D5F7BAC0();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC896810);
    }
  }
}

void sub_1D6E08AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6E08BC0()
{
  result = qword_1EC896838;
  if (!qword_1EC896838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896838);
  }

  return result;
}

uint64_t sub_1D6E08C14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6E08C5C()
{
  result = qword_1EC896848;
  if (!qword_1EC896848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896848);
  }

  return result;
}

void sub_1D6E08D18(uint64_t a1, __n128 a2)
{
  if (!qword_1EC896860)
  {
    sub_1D6E08DAC(255);
    sub_1D6E09188(255, &qword_1EC896898, sub_1D6E09134, &type metadata for DebugFormatPackageTreeSlotsView);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC896860);
    }
  }
}

void sub_1D6E08DAC(uint64_t a1)
{
  if (!qword_1EC896868)
  {
    sub_1D5B5CFF8(255, &unk_1EDF3C820, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    sub_1D6E08E90(255, &qword_1EC896870, &qword_1EC896878, &type metadata for DebugFormatPackageTreeColumnView, sub_1D6E08F84);
    sub_1D6E090B8();
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC896868);
    }
  }
}

void sub_1D6E08E90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1D6E08F24(255, a3, a4);
    a5();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1D6E08F24(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1D5F260A0(255);
    v4 = sub_1D726101C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6E08FB4(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6E08F24(255, a2, a3);
    a4();
    sub_1D6E08C14(&qword_1EC8811A8, sub_1D5F260A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6E09064()
{
  result = qword_1EC896888;
  if (!qword_1EC896888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896888);
  }

  return result;
}

unint64_t sub_1D6E090B8()
{
  result = qword_1EC896890;
  if (!qword_1EC896890)
  {
    sub_1D5B5CFF8(255, &unk_1EDF3C820, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896890);
  }

  return result;
}

unint64_t sub_1D6E09134()
{
  result = qword_1EC8968A0;
  if (!qword_1EC8968A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8968A0);
  }

  return result;
}

void sub_1D6E09188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D6E09208()
{
  result = qword_1EC8968B0;
  if (!qword_1EC8968B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8968B0);
  }

  return result;
}

void sub_1D6E09264(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D6E092E4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

double sub_1D6E09360()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return result;
}

uint64_t sub_1D6E093DC(uint64_t a1, uint64_t *a2)
{
  sub_1D68D69A0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  sub_1D6C8B21C(a1, &v12 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D6C8B21C(v10, v6);

  sub_1D72600DC();
  return sub_1D6E097B4(v10, sub_1D68D69A0);
}

uint64_t sub_1D6E094EC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1DA6F87C0]();
  *a1 = result;
  return result;
}

void sub_1D6E09544(uint64_t a1, __n128 a2)
{
  if (!qword_1EC8968C8)
  {
    sub_1D6E095AC(255, a2);
    sub_1D6C2E5F4(255);
    v2 = sub_1D726101C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8968C8);
    }
  }
}

void sub_1D6E095AC(uint64_t a1, __n128 a2)
{
  if (!qword_1EC8968D0)
  {
    sub_1D6E088FC(255, a2);
    sub_1D7260FEC();
    sub_1D6E08C14(&qword_1EC8968C0, sub_1D6E088FC, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8968D0);
    }
  }
}

uint64_t sub_1D6E09680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6E096E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6E09750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatEditorLayoutContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6E097B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6E09814(__n128 a1)
{
  result = qword_1EC8968E0;
  if (!qword_1EC8968E0)
  {
    sub_1D6E09544(255, a1);
    sub_1D6E088FC(255, v2);
    sub_1D7260FEC();
    sub_1D6E08C14(&qword_1EC8968C0, sub_1D6E088FC, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1D6E08C14(&qword_1EC88D210, sub_1D6C2E5F4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8968E0);
  }

  return result;
}

BOOL UIAccessibilityContrast.isDarkerSystemColorsEnabled.getter(_BOOL8 result)
{
  if (result >= 2)
  {
    return UIAccessibilityDarkerSystemColorsEnabled();
  }

  return result;
}

uint64_t UIAccessibilityContrast.description.getter(uint64_t a1)
{
  v1 = 1751607656;
  v2 = 0x6E776F6E6B6E75;
  if (!a1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1 == -1)
  {
    return 0x6669636570736E75;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D6E099E4()
{
  v1 = *v0;
  v2 = 1751607656;
  v3 = 0x6E776F6E6B6E75;
  if (!*v0)
  {
    v3 = 0x6C616D726F6ELL;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1 == -1)
  {
    return 0x6669636570736E75;
  }

  else
  {
    return v2;
  }
}

Class FormatColor.color.getter(__n128 a1)
{
  v2 = *v1;
  v3 = *v1 >> 60;
  if (v3 <= 5)
  {
    if (v3 <= 2)
    {
      if (!v3)
      {
        v22 = *(v2 + 16);
        v23 = *(v2 + 24);
        sub_1D5C0B9F0();

        v24._countAndFlagsBits = v22;
        v24._object = v23;
        return UIColor.init(hex:)(v24).super.isa;
      }

      v4 = v2 & 0xFFFFFFFFFFFFFFFLL;
      if (v3 == 1)
      {
        v5 = *(v4 + 24);
        v6 = *(v4 + 32);
        LOBYTE(v38[0]) = *(v4 + 16);
        result = FormatSystemColor.color.getter();
        if (v6)
        {
          return result;
        }

        v8 = 1.0;
        if (v5 <= 1.0)
        {
          v8 = v5;
        }

        if (v8 < 0.0)
        {
          v8 = 0.0;
        }
      }

      else
      {
        v32 = *(v4 + 24);
        v33 = *(v4 + 32);
        LOBYTE(v38[0]) = *(v4 + 16);
        result = FormatFixedColor.color.getter();
        if (v33)
        {
          return result;
        }

        v8 = 1.0;
        if (v32 <= 1.0)
        {
          v8 = v32;
        }

        if (v8 < 0.0)
        {
          v8 = 0.0;
        }
      }

      v34 = result;
      v31 = [(objc_class *)result colorWithAlphaComponent:v8, v38[0]];

      return v31;
    }

    if (v3 == 3)
    {
      v25 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v26;
      v29 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v38[4] = sub_1D6E0CE90;
      v38[5] = v28;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 1107296256;
      v38[2] = sub_1D6E0CD34;
      v38[3] = &block_descriptor_100;
      v30 = _Block_copy(v38);

      v31 = [v29 initWithDynamicProvider_];
      _Block_release(v30);

      return v31;
    }

    if (v3 == 4)
    {
      goto LABEL_21;
    }

    v35 = v2 & 0xFFFFFFFFFFFFFFFLL;
    v36 = *(v35 + 16);
    if (*(v35 + 32))
    {
      v37 = 1.0;
    }

    else
    {
      v37 = *(v35 + 24);
    }

    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v15 = sel_initWithWhite_alpha_;
    v16 = v36;
    v17 = v37;

    return [v14 v15];
  }

  if (v3 > 8)
  {
    if (v3 == 9)
    {
      v21 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    }

    else
    {
      v21 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    }

    v38[0] = v21;
    return FormatColor.color.getter(a1);
  }

  if ((v3 - 7) >= 2)
  {
    v9 = v2 & 0xFFFFFFFFFFFFFFFLL;
    if (*(v9 + 48))
    {
      v10 = 1.0;
    }

    else
    {
      v10 = *(v9 + 40);
    }

    v11 = *(v9 + 16) / 255.0;
    v12 = *(v9 + 24) / 255.0;
    v13 = *(v9 + 32) / 255.0;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v15 = sel_initWithRed_green_blue_alpha_;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v10;

    return [v14 v15];
  }

LABEL_21:
  v20 = [objc_opt_self() clearColor];

  return v20;
}

uint64_t static FormatColor.system(_:alpha:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  *a4 = result | 0x1000000000000000;
  return result;
}

void *sub_1D6E09E48(uint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for FormatInspectionItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  *&v331 = &v300 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA74B8(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v330 = (&v300 - v15);
  v16 = *(a1 + 112);
  v354 = *(a1 + 96);
  v355 = v16;
  v356 = *(a1 + 128);
  v357 = *(a1 + 144);
  v17 = *(a1 + 48);
  v350 = *(a1 + 32);
  v351 = v17;
  v18 = *(a1 + 80);
  v352 = *(a1 + 64);
  v353 = v18;
  v19 = *(a1 + 16);
  v348 = *a1;
  v349 = v19;
  v20 = *a2;
  if ((~*a2 & 0xF000000000000007) == 0)
  {
    sub_1D5EF032C(0);
    v21 = swift_allocObject();
    v331 = xmmword_1D7273AE0;
    *(v21 + 16) = xmmword_1D7273AE0;
    sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v331;
    v24 = sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v23 + v22));
    (*(v5 + 56))(v23 + v22, 0, 1, v4, v24);
    sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v23, &v335);
    swift_setDeallocating();
    sub_1D6180C78(v23 + v22);
LABEL_49:
    swift_deallocClassInstance();
    *(v21 + 56) = &type metadata for FormatInspectionGroup;
    *(v21 + 64) = &off_1F518B2C0;
    v222 = swift_allocObject();
    *(v21 + 32) = v222;
    v223 = v336;
    *(v222 + 16) = v335;
    *(v222 + 32) = v223;
    *(v222 + 48) = v337;
    v139 = sub_1D7073500(v21);
    swift_setDeallocating();
    sub_1D5F10AA0(v21 + 32);
    swift_deallocClassInstance();
    return v139;
  }

  v25 = v20 >> 60;
  v326 = v4;
  v328 = v9;
  v329 = v5;
  if ((v20 >> 60) <= 5)
  {
    if (v25 <= 2)
    {
      if (v25)
      {
        v26 = v20 & 0xFFFFFFFFFFFFFFFLL;
        *&v331 = *(v26 + 24);
        LODWORD(v330) = *(v26 + 32);
        v27 = *(v26 + 16);
        if (v25 == 1)
        {
          sub_1D5EF032C(0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
          v28 = *(v10 + 72);
          v29 = (*(v10 + 80) + 32) & ~*(v10 + 80);
          v30 = 2 * v28;
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1D7279970;
          v32 = (v31 + v29);
          v33 = sub_1D711F844(1701869908, 0xE400000000000000, 0x6D6574737953, 0xE600000000000000, v32);
          v34 = *(v329 + 56);
          v35 = v326;
          v34(v32, 0, 1, v326, v33);
          sub_1D711FD08(1701667150, 0xE400000000000000, v27, &v32[v28]);
        }

        else
        {
          sub_1D5EF032C(0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
          v28 = *(v10 + 72);
          v162 = (*(v10 + 80) + 32) & ~*(v10 + 80);
          v30 = 2 * v28;
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1D7279970;
          v32 = (v31 + v162);
          v163 = sub_1D711F844(1701869908, 0xE400000000000000, 0x6465786946, 0xE500000000000000, v32);
          v34 = *(v329 + 56);
          v35 = v326;
          v34(v32, 0, 1, v326, v163);
          sub_1D711FFFC(1701667150, 0xE400000000000000, v27, &v32[v28]);
        }

        (v34)(&v32[v28], 0, 1, v35);
        sub_1D711A80C(0x6168706C41, 0xE500000000000000, v331, v330, &v32[v30]);
        (v34)(&v32[v30], 0, 1, v35);
        goto LABEL_47;
      }

      v101 = *(v20 + 24);
      *&v331 = *(v20 + 16);
      sub_1D5EF032C(0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v102 = *(v10 + 72);
      v103 = v5;
      v104 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D7270C10;
      v106 = (v105 + v104);

      v107 = sub_1D711F844(1701869908, 0xE400000000000000, 7890248, 0xE300000000000000, v106);
      v108 = *(v103 + 56);
      v108(v106, 0, 1, v4, v107);
      v109 = sub_1D711F844(7890248, 0xE300000000000000, v331, v101, &v106[v102]);
      v108(&v106[v102], 0, 1, v4, v109);
      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v105, &v335);
      swift_setDeallocating();
LABEL_48:
      swift_arrayDestroy();
      goto LABEL_49;
    }

    v56 = v20 & 0xFFFFFFFFFFFFFFFLL;
    if (v25 == 3)
    {
      v120 = *(v56 + 16);
      v325 = *(v56 + 24);
      sub_1D5EF032C(0);
      *&v331 = swift_allocObject();
      *(v331 + 16) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v121 = *(v10 + 72);
      v122 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v324 = (2 * v121);
      v123 = swift_allocObject();
      v330 = v123;
      *(v123 + 16) = xmmword_1D7279970;
      v124 = (v123 + v122);

      v327 = v120;

      v125 = sub_1D711F844(1701869908, 0xE400000000000000, 0x65746E4972657355, 0xED00006563616672, v124);
      v126 = *(v5 + 56);
      v126(v124, 0, 1, v4, v125);
      v127 = &v124[v121];
      v128 = *(v4 + 24);
      *&v127[v128] = v120;
      v129 = type metadata accessor for FormatInspectionItem.Value(0);
      v329 = v5 + 56;
      v130 = v129;
      swift_storeEnumTagMultiPayload();
      v131 = *(*(v130 - 8) + 56);
      v131(&v127[v128], 0, 1, v130);
      *v127 = xmmword_1D735AE50;
      *(v127 + 2) = 0;
      *(v127 + 3) = 0;
      v132 = &v127[*(v4 + 28)];
      *v132 = 0;
      *(v132 + 1) = 0;
      v132[16] = -1;
      (v126)(v127, 0, 1, v4);
      v133 = &v324[v124];
      v134 = *(v4 + 24);
      *&v324[v124 + v134] = v325;
      swift_storeEnumTagMultiPayload();
      v131(&v133[v134], 0, 1, v130);
      *v133 = xmmword_1D735AE60;
      *(v133 + 2) = 0;
      *(v133 + 3) = 0;
      v135 = &v133[*(v4 + 28)];
      *v135 = 0;
      *(v135 + 1) = 0;
      v135[16] = -1;
      (v126)(v133, 0, 1, v4);

      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v330, &v335);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v136 = v331;
      *(v331 + 56) = &type metadata for FormatInspectionGroup;
      *(v136 + 64) = &off_1F518B2C0;
      v137 = swift_allocObject();
      *(v136 + 32) = v137;
      v138 = v336;
      *(v137 + 16) = v335;
      *(v137 + 32) = v138;
      *(v137 + 48) = v337;
      v139 = sub_1D7073500(v136);
      swift_setDeallocating();
      sub_1D5F10AA0(v136 + 32);
      swift_deallocClassInstance();

      return v139;
    }

    if (v25 != 4)
    {
      v215 = *(v56 + 16);
      *&v331 = *(v56 + 24);
      LODWORD(v330) = *(v56 + 32);
      sub_1D5EF032C(0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v216 = v4;
      v217 = *(v10 + 72);
      v218 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D7279970;
      v219 = (v31 + v218);
      v220 = sub_1D711F844(1701869908, 0xE400000000000000, 0x6C61637379617247, 0xE900000000000065, v219);
      v221 = *(v5 + 56);
      v221(v219, 0, 1, v216, v220);
      sub_1D711A80C(0x6574696857, 0xE500000000000000, v215, 0, &v219[v217]);
      (v221)(&v219[v217], 0, 1, v216);
      sub_1D711A80C(0x6168706C41, 0xE500000000000000, v331, v330, &v219[2 * v217]);
      (v221)(&v219[2 * v217], 0, 1, v216);
LABEL_47:
      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v31, &v335);
      swift_setDeallocating();
      goto LABEL_48;
    }

    v57 = *(v56 + 16);
    *&v331 = *(v56 + 24);
    sub_1D5EF032C(0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1D7273AE0;
    sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    v59 = *(v10 + 72);
    v60 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1D7279970;
    v330 = v61;
    v62 = (v61 + v60);

    v63 = sub_1D711F844(1701869908, 0xE400000000000000, 0x65737365636F7250, 0xE900000000000064, v62);
    v65 = *(v5 + 56);
    v64 = v5 + 56;
    (v65)(v62, 0, 1, v4, v63);
    v327 = v62;
    v66 = &v59[v62];
    v67 = *(v4 + 24);
    v68 = v57;
    *&v66[v67] = v57;
    v69 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v69 - 8) + 56))(&v66[v67], 0, 1, v69);
    *v66 = xmmword_1D72EBCC0;
    *(v66 + 2) = 0;
    *(v66 + 3) = 0;
    v70 = &v66[*(v4 + 28)];
    *v70 = 0;
    *(v70 + 1) = 0;
    v70[16] = -1;
    v325 = v65;
    (v65)(v66, 0, 1, v4);
    v71 = v331;
    v72 = *(v331 + 16);
    if (v72)
    {
      v322 = v59;
      *&v323 = v58;
      v329 = v64;
      *&v345 = MEMORY[0x1E69E7CC0];
      v324 = v68;

      sub_1D6997EC0(0, v72, 0);
      v73 = v345;
      v74 = (v71 + 32);
      do
      {
        v75 = *v74++;
        v341 = v354;
        v342 = v355;
        v343 = v356;
        v344 = v357;
        v337 = v350;
        v338 = v351;
        v339 = v352;
        v340 = v353;
        v335 = v348;
        v336 = v349;
        v332[0] = v75;
        sub_1D5ECF0E0(v75);
        sub_1D5ECF0E0(v75);
        v76 = sub_1D5EF4424(&v335, v332);
        sub_1D5EF5F6C(v332[0]);
        sub_1D5ECF11C(v75);
        *&v345 = v73;
        v78 = *(v73 + 16);
        v77 = *(v73 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_1D6997EC0((v77 > 1), v78 + 1, 1);
          v73 = v345;
        }

        *(&v336 + 1) = &type metadata for FormatInspection;
        *&v337 = &off_1F51E3FD0;
        *&v335 = v76;
        *(v73 + 16) = v78 + 1;
        sub_1D5B63F14(&v335, v73 + 40 * v78 + 32);
        --v72;
      }

      while (v72);
      v4 = v326;
      v59 = v322;
      v58 = v323;
    }

    else
    {

      v73 = MEMORY[0x1E69E7CC0];
    }

    v278 = &v327[2 * v59];
    v279 = sub_1D5F62BFC(v73);

    v280 = sub_1D7073500(v279);

    sub_1D711AD20(0x6F737365636F7250, 0xEA00000000007372, v280, 0, 0, v278);
    (v325)(v278, 0, 1, v4);
    sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v330, &v335);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v58 + 56) = &type metadata for FormatInspectionGroup;
    *(v58 + 64) = &off_1F518B2C0;
    v281 = swift_allocObject();
    *(v58 + 32) = v281;
    v282 = v336;
    *(v281 + 16) = v335;
    *(v281 + 32) = v282;
    *(v281 + 48) = v337;
    v55 = sub_1D7073500(v58);
    swift_setDeallocating();
    sub_1D5F10AA0(v58 + 32);
    swift_deallocClassInstance();
    goto LABEL_79;
  }

  if (v25 > 8)
  {
    if (v25 == 9)
    {
      v140 = v20 & 0xFFFFFFFFFFFFFFFLL;
      v141 = *(v140 + 16);
      *&v331 = *(v140 + 24);
      v142 = *(v140 + 32);
      v321 = *(v140 + 48);
      v143 = *(v140 + 40);
      sub_1D5EF032C(0);
      v325 = swift_allocObject();
      v323 = xmmword_1D7273AE0;
      *(v325 + 1) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v324 = *(v10 + 72);
      v144 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v145 = swift_allocObject();
      *(v145 + 16) = xmmword_1D7270C10;
      v146 = (v145 + v144);
      v147 = v141;
      v330 = v141;
      v148 = v141;
      v149 = v331;
      v327 = v142;
      sub_1D5F58038(v148, v331, v142, v143);

      v150 = sub_1D711F844(1701869908, 0xE400000000000000, 0x676E69646E6942, 0xE700000000000000, v146);
      v329 = *(v5 + 56);
      (v329)(v146, 0, 1, v4, v150);
      *&v335 = sub_1D5F4D374(v147, v149, v142, v143);
      sub_1D5BBE0A8();
      sub_1D5BB0AB8();
      v322 = sub_1D7261F3C();
      v152 = v151;

      sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
      v153 = swift_allocObject();
      *(v153 + 16) = v323;
      v154 = v321;
      *&v335 = v321;

      v155 = sub_1D6E09E48(&v348, &v335);
      sub_1D5C84FF4(v154);
      *(v153 + 56) = &type metadata for FormatInspection;
      *(v153 + 64) = &off_1F51E3FD0;
      *(v153 + 32) = v155;
      v156 = sub_1D5F62BFC(v153);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v153 + 32));
      swift_deallocClassInstance();
      v157 = sub_1D7073500(v156);

      v158 = v324;
      sub_1D711AD20(0x676E69646E6942, 0xE700000000000000, v157, v322, v152, &v324[v146]);
      (v329)(&v158[v146], 0, 1, v326);
      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v145, &v335);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v159 = v325;
      *(v325 + 7) = &type metadata for FormatInspectionGroup;
      v159[8] = &off_1F518B2C0;
      v160 = swift_allocObject();
      v159[4] = v160;
      v161 = v336;
      *(v160 + 16) = v335;
      *(v160 + 32) = v161;
      *(v160 + 48) = v337;
      v55 = sub_1D7073500(v159);
      swift_setDeallocating();
      sub_1D5F10AA0((v159 + 4));
      swift_deallocClassInstance();
      sub_1D5F57FEC(v330, v331, v327, v143);
LABEL_80:

      return v55;
    }

    if (v25 == 10)
    {
      v79 = (v20 & 0xFFFFFFFFFFFFFFFLL);
      v80 = v79[2];
      v81 = v79[3];
      v82 = v79[4];
      sub_1D5EF032C(0);
      v330 = swift_allocObject();
      *(v330 + 1) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v83 = *(v10 + 72);
      v84 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v85 = swift_allocObject();
      *(v85 + 1) = xmmword_1D7279970;
      v327 = v85;
      v86 = &v85[v84];
      *&v331 = v82;

      v87 = sub_1D711F844(1701869908, 0xE400000000000000, 0x65737365636F7250, 0xE900000000000064, v86);
      v89 = *(v5 + 56);
      v88 = v5 + 56;
      (v89)(v86, 0, 1, v4, v87);
      v325 = v86;
      v90 = v83 + v86;
      v91 = *(v4 + 24);
      *&v90[v91] = v80;
      v92 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v92 - 8) + 56))(&v90[v91], 0, 1, v92);
      *v90 = xmmword_1D72EBCC0;
      *(v90 + 2) = 0;
      *(v90 + 3) = 0;
      v93 = &v90[*(v4 + 28)];
      *v93 = 0;
      *(v93 + 1) = 0;
      v93[16] = -1;
      v324 = v89;
      (v89)(v90, 0, 1, v4);
      v94 = *(v81 + 2);
      if (v94)
      {
        v321 = v83;
        v329 = v88;
        *&v345 = MEMORY[0x1E69E7CC0];
        *&v323 = v80;

        sub_1D6997EC0(0, v94, 0);
        v95 = v345;
        v322 = v81;
        v96 = (v81 + 32);
        do
        {
          v97 = *v96++;
          v341 = v354;
          v342 = v355;
          v343 = v356;
          v344 = v357;
          v337 = v350;
          v338 = v351;
          v339 = v352;
          v340 = v353;
          v335 = v348;
          v336 = v349;
          v332[0] = v97;
          sub_1D5ECF0E0(v97);
          sub_1D5ECF0E0(v97);
          v98 = sub_1D5EF4424(&v335, v332);
          sub_1D5EF5F6C(v332[0]);
          sub_1D5ECF11C(v97);
          *&v345 = v95;
          v100 = *(v95 + 16);
          v99 = *(v95 + 24);
          if (v100 >= v99 >> 1)
          {
            sub_1D6997EC0((v99 > 1), v100 + 1, 1);
            v95 = v345;
          }

          *(&v336 + 1) = &type metadata for FormatInspection;
          *&v337 = &off_1F51E3FD0;
          *&v335 = v98;
          *(v95 + 16) = v100 + 1;
          sub_1D5B63F14(&v335, v95 + 40 * v100 + 32);
          --v94;
        }

        while (v94);
        v4 = v326;
        v83 = v321;
      }

      else
      {

        v95 = MEMORY[0x1E69E7CC0];
      }

      v283 = &v325[2 * v83];
      v284 = sub_1D5F62BFC(v95);

      v285 = sub_1D7073500(v284);

      sub_1D711AD20(0x6F737365636F7250, 0xEA00000000007372, v285, 0, 0, v283);
      (v324)(v283, 0, 1, v4);
      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v327, &v335);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v286 = v330;
      v330[7] = &type metadata for FormatInspectionGroup;
      *(v286 + 64) = &off_1F518B2C0;
      v287 = swift_allocObject();
      *(v286 + 32) = v287;
      v288 = v336;
      *(v287 + 16) = v335;
      *(v287 + 32) = v288;
      *(v287 + 48) = v337;
      v55 = sub_1D7073500(v286);
      swift_setDeallocating();
      sub_1D5F10AA0(v286 + 32);
      swift_deallocClassInstance();
    }

    else
    {
      *&v311 = v14;
      v225 = (v20 & 0xFFFFFFFFFFFFFFFLL);
      v226 = v225[2];
      v304 = v225[3];
      v227 = v225[4];
      sub_1D5EF032C(0);
      v228 = swift_allocObject();
      *(v228 + 16) = xmmword_1D7273AE0;
      sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v229 = *(v10 + 72);
      v230 = *(v10 + 80);
      v231 = (v230 + 32) & ~v230;
      v314 = v230;
      *&v315 = v232;
      v233 = swift_allocObject();
      *(v233 + 16) = xmmword_1D7279970;
      v302 = v233;
      v303 = v227;
      v313 = v231;
      v234 = (v233 + v231);

      v235 = sub_1D711F844(1701869908, 0xE400000000000000, 0x726F7463656C6553, 0xE800000000000000, v234);
      v236 = *(v5 + 56);
      (v236)(v234, 0, 1, v4, v235);
      v301 = v234;
      v237 = &v234[v229];
      v238 = *(v4 + 24);
      v305 = v226;
      *&v237[v238] = v226;
      v239 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      v240 = *(v239 - 8);
      v241 = *(v240 + 56);
      v312 = v239;
      *&v310 = v241;
      v325 = (v240 + 56);
      v241(&v237[v238], 0, 1, v239);
      v309 = xmmword_1D735AE40;
      *v237 = xmmword_1D735AE40;
      *(v237 + 2) = 0;
      *(v237 + 3) = 0;
      v242 = &v237[*(v4 + 28)];
      *v242 = 0;
      *(v242 + 1) = 0;
      v242[16] = -1;
      v316 = v236;
      v317 = v5 + 56;
      (v236)(v237, 0, 1, v4);
      v243 = v304;
      v244 = *(v304 + 16);
      if (v244)
      {
        v245 = v5;
        v300 = v228;
        *&v345 = MEMORY[0x1E69E7CC0];

        sub_1D6997EC0(0, v244, 0);
        v246 = v345;
        v308 = v229;
        v247 = 2 * v229;
        v324 = (v245 + 48);
        v248 = (v243 + 48);
        v306 = xmmword_1D731B700;
        v307 = v247;
        do
        {
          v322 = v246;
          *&v323 = v244;
          v249 = *(v248 - 2);
          v327 = *(v248 - 1);
          v250 = v327;
          v321 = v248;
          v318 = *v248;
          v251 = v313;
          v320 = swift_allocObject();
          v252 = v320 + v251;
          v253 = (v320 + v251 + *(v4 + 24));
          *v253 = v249;
          v253[1] = v250;
          v254 = v4;
          v255 = v312;
          swift_storeEnumTagMultiPayload();
          v256 = v310;
          (v310)(v253, 0, 1, v255);
          *v252 = v306;
          *(v252 + 16) = 0;
          *(v252 + 24) = 0;
          v257 = v252 + *(v254 + 28);
          *v257 = 0;
          *(v257 + 8) = 0;
          *(v257 + 16) = -1;
          v258 = v316;
          (v316)(v252, 0, 1, v254);
          v259 = v252 + v308;
          v260 = *(v254 + 24);
          *(v252 + v308 + v260) = v318;
          swift_storeEnumTagMultiPayload();
          v261 = v255;
          v4 = v254;
          v256(v259 + v260, 0, 1, v261);
          v262 = v324;
          *v259 = v309;
          *(v259 + 16) = 0;
          *(v259 + 24) = 0;
          v263 = v259 + *(v254 + 28);
          *v263 = 0;
          *(v263 + 8) = 0;
          *(v263 + 16) = -1;
          v258(v259, 0, 1, v254);
          swift_retain_n();
          swift_bridgeObjectRetain_n();
          v319 = v252;
          v264 = v330;
          sub_1D6795424(v252, v330);
          v265 = v311;
          sub_1D5CAD784(v264, v311, sub_1D5EA74B8);
          v266 = *v262;
          if ((*v262)(v265, 1, v4) == 1)
          {
            sub_1D6180C78(v265);
            v267 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1D5CAD784(v265, v331, type metadata accessor for FormatInspectionItem);
            v267 = MEMORY[0x1E69E7CC0];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v267 = sub_1D698BAE0(0, *(MEMORY[0x1E69E7CC0] + 16) + 1, 1, MEMORY[0x1E69E7CC0]);
            }

            v269 = v267[2];
            v268 = v267[3];
            if (v269 >= v268 >> 1)
            {
              v267 = sub_1D698BAE0((v268 > 1), v269 + 1, 1, v267);
            }

            v267[2] = v269 + 1;
            sub_1D5CAD784(v331, v267 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v269, type metadata accessor for FormatInspectionItem);
            v4 = v326;
          }

          v270 = v330;
          sub_1D6795424(v259, v330);
          sub_1D5CAD784(v270, v265, sub_1D5EA74B8);
          if (v266(v265, 1, v4) == 1)
          {
            sub_1D6180C78(v265);
            v271 = v321;
            v246 = v322;
          }

          else
          {
            sub_1D5CAD784(v265, v331, type metadata accessor for FormatInspectionItem);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v267 = sub_1D698BAE0(0, v267[2] + 1, 1, v267);
            }

            v271 = v321;
            v273 = v267[2];
            v272 = v267[3];
            if (v273 >= v272 >> 1)
            {
              v267 = sub_1D698BAE0((v272 > 1), v273 + 1, 1, v267);
            }

            v267[2] = v273 + 1;
            sub_1D5CAD784(v331, v267 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v273, type metadata accessor for FormatInspectionItem);
            v246 = v322;
          }

          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();

          *&v345 = v246;
          v275 = *(v246 + 2);
          v274 = *(v246 + 3);
          if (v275 >= v274 >> 1)
          {
            sub_1D6997EC0((v274 > 1), v275 + 1, 1);
            v246 = v345;
          }

          v248 = v271 + 3;
          *(&v336 + 1) = &type metadata for FormatInspectionGroup;
          *&v337 = &off_1F518B2C0;
          v276 = swift_allocObject();
          *&v335 = v276;
          v276[2] = 0;
          v276[3] = 0xE000000000000000;
          v276[4] = 0;
          v276[5] = 0;
          v276[6] = v267;
          *(v246 + 2) = v275 + 1;
          sub_1D5B63F14(&v335, &v246[40 * v275 + 32]);
          v244 = v323 - 1;
          v277 = v307;
        }

        while (v323 != 1);

        v228 = v300;
      }

      else
      {
        v277 = 2 * v229;

        v246 = MEMORY[0x1E69E7CC0];
      }

      v295 = sub_1D5F62BFC(v246);

      v296 = sub_1D7073500(v295);

      v297 = v301;
      sub_1D711AD20(0x726F7463656C6553, 0xE900000000000073, v296, 0, 0, &v301[v277]);
      (v316)(&v297[v277], 0, 1, v4);
      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v302, &v335);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v228 + 56) = &type metadata for FormatInspectionGroup;
      *(v228 + 64) = &off_1F518B2C0;
      v298 = swift_allocObject();
      *(v228 + 32) = v298;
      v299 = v336;
      *(v298 + 16) = v335;
      *(v298 + 32) = v299;
      *(v298 + 48) = v337;
      v55 = sub_1D7073500(v228);
      swift_setDeallocating();
      sub_1D5F10AA0(v228 + 32);
      swift_deallocClassInstance();
    }

LABEL_79:

    goto LABEL_80;
  }

  if (v25 == 6)
  {
    v110 = v20 & 0xFFFFFFFFFFFFFFFLL;
    v111 = v4;
    v112 = *(v110 + 16);
    v325 = *(v110 + 24);
    v113 = *(v110 + 40);
    v327 = *(v110 + 32);
    *&v331 = v113;
    LODWORD(v330) = *(v110 + 48);
    sub_1D5EF032C(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7273AE0;
    sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    v114 = *(v10 + 72);
    v115 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v116 = 4 * v114;
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_1D7279960;
    v118 = sub_1D711F844(1701869908, 0xE400000000000000, 1094862674, 0xE400000000000000, (v117 + v115));
    v119 = *(v5 + 56);
    v119(v117 + v115, 0, 1, v111, v118);
    sub_1D711A80C(6579538, 0xE300000000000000, v112, 0, (v117 + v115 + v114));
    (v119)(v117 + v115 + v114, 0, 1, v111);
    sub_1D711A80C(0x6E65657247, 0xE500000000000000, v325, 0, (v117 + v115 + 2 * v114));
    (v119)(v117 + v115 + 2 * v114, 0, 1, v111);
    v114 *= 3;
    sub_1D711A80C(1702194242, 0xE400000000000000, v327, 0, (v117 + v115 + v114));
    (v119)(v117 + v115 + v114, 0, 1, v111);
    sub_1D711A80C(0x6168706C41, 0xE500000000000000, v331, v330, (v117 + v115 + v116));
    (v119)(v117 + v115 + v116, 0, 1, v111);
    sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v117, &v335);
    swift_setDeallocating();
    goto LABEL_48;
  }

  if (v25 != 7)
  {
    v164 = v20 & 0xFFFFFFFFFFFFFFFLL;
    v165 = *(v164 + 16);
    *&v309 = *(v164 + 24);
    sub_1D5EF032C(0);
    v308 = swift_allocObject();
    *(v308 + 16) = xmmword_1D7273AE0;
    sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    v166 = *(v10 + 72);
    v167 = *(v10 + 80);
    v168 = (v167 + 32) & ~v167;
    v317 = v167;
    v318 = v169;
    v170 = swift_allocObject();
    *(v170 + 16) = xmmword_1D7279970;
    v307 = v170;
    v316 = v168;
    v171 = (v170 + v168);

    v172 = sub_1D711F844(1701869908, 0xE400000000000000, 0x726F7463656C6553, 0xE800000000000000, v171);
    v174 = *(v5 + 56);
    v173 = v5 + 56;
    v174(v171, 0, 1, v4, v172);
    *&v306 = v171;
    v175 = &v171[v166];
    v176 = *(v4 + 24);
    v177 = v165;
    *&v175[v176] = v165;
    v178 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v179 = *(v178 - 8);
    v180 = *(v179 + 56);
    v321 = (v179 + 56);
    v322 = v180;
    (v180)(&v175[v176], 0, 1, v178);
    v315 = xmmword_1D735AE40;
    *v175 = xmmword_1D735AE40;
    *(v175 + 2) = 0;
    *(v175 + 3) = 0;
    v181 = &v175[*(v4 + 28)];
    *v181 = 0;
    *(v181 + 1) = 0;
    v181[16] = -1;
    v319 = v174;
    (v174)(v175, 0, 1, v4);
    v182 = v309;
    v183 = *(v309 + 16);
    if (v183)
    {
      v313 = v178;
      v329 = v173;
      v334 = MEMORY[0x1E69E7CC0];
      v305 = v177;

      *&v331 = v183;
      sub_1D6997EC0(0, v183, 0);
      v184 = v334;
      v314 = v166;
      v185 = 2 * v166;
      v186 = (v182 + 48);
      v311 = xmmword_1D7270C10;
      v310 = xmmword_1D731B700;
      v187 = v322;
      v312 = v185;
      do
      {
        v330 = v184;
        v188 = *(v186 - 2);
        v189 = *(v186 - 1);
        v324 = v186;
        v190 = *v186;
        v191 = v316;
        v192 = swift_allocObject();
        *(v192 + 16) = v311;
        v325 = v192;
        v193 = &v191[v192];
        *&v333 = v188;
        *(&v333 + 1) = v189;
        v327 = v189;
        if (v189)
        {
          v320 = v190;
          sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v194 = swift_dynamicCast();
          *&v323 = v190 & 0xFFFFFFFFFFFFFFFLL;
          if (v194)
          {
            v195 = v326;
            v196 = *(v326 + 24);
            *&v193[v196] = v345;
            v197 = v313;
            swift_storeEnumTagMultiPayload();
            (v322)(&v193[v196], 0, 1, v197);
            *v193 = v310;
            *(v193 + 2) = 0;
            *(v193 + 3) = 0;
            v198 = &v193[*(v195 + 28)];
            *v198 = 0;
            *(v198 + 1) = 0;
            v198[16] = -1;
          }

          else
          {
            *(&v346 + 1) = &type metadata for FormatSelector;
            v347 = sub_1D6E0CF40();
            v345 = v333;
            sub_1D5B63F14(&v345, v332);
            v195 = v326;
            v201 = &v193[*(v326 + 24)];
            v202 = __swift_project_boxed_opaque_existential_1(v332, v332[3]);
            v203 = v202[1];
            *v201 = *v202;
            *(v201 + 1) = v203;
            v197 = v313;
            swift_storeEnumTagMultiPayload();
            (v322)(v201, 0, 1, v197);
            *v193 = v310;
            *(v193 + 2) = 0;
            *(v193 + 3) = 0;
            v204 = &v193[*(v195 + 28)];
            *v204 = 0;
            *(v204 + 1) = 0;
            v204[16] = -1;

            __swift_destroy_boxed_opaque_existential_1(v332);
          }

          v200 = v314;
          v190 = v320;
        }

        else
        {
          v195 = v326;
          v197 = v313;
          (v187)(&v193[*(v326 + 24)], 1, 1, v313);
          *v193 = v310;
          *(v193 + 2) = 0;
          *(v193 + 3) = 0;
          v199 = &v193[*(v195 + 28)];
          *v199 = 0;
          *(v199 + 1) = 0;
          v199[16] = -1;
          *&v323 = v190 & 0xFFFFFFFFFFFFFFFLL;
          swift_retain_n();
          v200 = v314;
        }

        v205 = v319;
        v319(v193, 0, 1, v195);
        v206 = &v193[v200];
        v207 = *(v195 + 24);
        *&v206[v207] = v190;
        swift_storeEnumTagMultiPayload();
        v208 = &v206[v207];
        v187 = v322;
        (v322)(v208, 0, 1, v197);
        *v206 = v315;
        *(v206 + 2) = 0;
        *(v206 + 3) = 0;
        v209 = &v206[*(v195 + 28)];
        *v209 = 0;
        *(v209 + 1) = 0;
        v209[16] = -1;
        v205(v206, 0, 1, v195);
        sub_1D6795150(0, 0xE000000000000000, 0, 0, v325, &v335);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();

        v184 = v330;
        v334 = v330;
        v211 = v330[2];
        v210 = v330[3];
        if (v211 >= v210 >> 1)
        {
          sub_1D6997EC0((v210 > 1), v211 + 1, 1);
          v184 = v334;
        }

        v186 = (v324 + 24);
        *(&v346 + 1) = &type metadata for FormatInspectionGroup;
        v347 = &off_1F518B2C0;
        v212 = swift_allocObject();
        *&v345 = v212;
        v213 = v336;
        *(v212 + 16) = v335;
        *(v212 + 32) = v213;
        *(v212 + 48) = v337;
        *(v184 + 16) = v211 + 1;
        sub_1D5B63F14(&v345, v184 + 40 * v211 + 32);
        *&v331 = v331 - 1;
        v214 = v312;
      }

      while (v331);

      v4 = v326;
    }

    else
    {
      v214 = 2 * v166;

      v184 = MEMORY[0x1E69E7CC0];
    }

    v289 = sub_1D5F62BFC(v184);

    v290 = sub_1D7073500(v289);

    v291 = v306;
    sub_1D711AD20(0x726F7463656C6553, 0xE900000000000073, v290, 0, 0, (v306 + v214));
    v319((v291 + v214), 0, 1, v4);
    sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v307, &v345);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v292 = v308;
    *(v308 + 56) = &type metadata for FormatInspectionGroup;
    *(v292 + 64) = &off_1F518B2C0;
    v293 = swift_allocObject();
    *(v292 + 32) = v293;
    v294 = v346;
    *(v293 + 16) = v345;
    *(v293 + 32) = v294;
    *(v293 + 48) = v347;
    v55 = sub_1D7073500(v292);
    swift_setDeallocating();
    sub_1D5F10AA0(v292 + 32);
    swift_deallocClassInstance();

    goto LABEL_80;
  }

  v36 = v20 & 0xFFFFFFFFFFFFFFFLL;
  v37 = *(v36 + 16);
  v38 = *(v36 + 24);
  v325 = *(v36 + 32);
  v39 = *(v36 + 40);
  sub_1D5EF032C(0);
  v330 = swift_allocObject();
  *(v330 + 1) = xmmword_1D7273AE0;
  sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  *&v331 = *(v10 + 72);
  v40 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D7270C10;
  v42 = v41 + v40;
  v43 = v325;
  sub_1D5F58038(v37, v38, v325, v39);
  v44 = sub_1D711F844(1701869908, 0xE400000000000000, 0x676E69646E6942, 0xE700000000000000, (v41 + v40));
  v45 = *(v329 + 56);
  v329 += 56;
  v327 = v45;
  (v45)(v41 + v40, 0, 1, v326, v44);
  v46 = sub_1D5F4D374(v37, v38, v43, v39);
  sub_1D5F57FEC(v37, v38, v43, v39);
  *&v335 = v46;
  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v47 = sub_1D7261F3C();
  v49 = v48;

  v50 = v331;
  v51 = sub_1D711F844(1752457552, 0xE400000000000000, v47, v49, (v42 + v331));
  (v327)(v42 + v50, 0, 1, v326, v51);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v41, &v335);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v52 = v330;
  v330[7] = &type metadata for FormatInspectionGroup;
  *(v52 + 64) = &off_1F518B2C0;
  v53 = swift_allocObject();
  *(v52 + 32) = v53;
  v54 = v336;
  *(v53 + 16) = v335;
  *(v53 + 32) = v54;
  *(v53 + 48) = v337;
  v55 = sub_1D7073500(v52);
  swift_setDeallocating();
  sub_1D5F10AA0(v52 + 32);
  swift_deallocClassInstance();
  return v55;
}

void sub_1D6E0CAE0(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 60;
  if (v4 <= 8)
  {
    if ((v4 - 4) >= 5 && v4 >= 3)
    {
      v17 = v3 & 0xFFFFFFFFFFFFFFFLL;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = swift_allocObject();
      v23[1] = v18;
      v23[2] = v19;

      sub_1D6E0CAE0(v23);
      sub_1D6E0CAE0(&v22);

      v21 = v22;
      *(v20 + 16) = v23[0];
      *(v20 + 24) = v21;
      *a1 = v20 | 0x3000000000000000;
    }

    else
    {
      *a1 = v3;
    }
  }

  else
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFLL;
    if (v4 == 9)
    {
      v11 = *(v5 + 16);
      v12 = *(v5 + 24);
      v13 = *(v5 + 32);
      v14 = *(v5 + 40);
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      *(v15 + 24) = v12;
      *(v15 + 32) = v13;
      *(v15 + 40) = v14;
      *a1 = v15 | 0x7000000000000000;

      sub_1D5F58038(v11, v12, v13, v14);
    }

    else
    {
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v4 == 10)
      {
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = v6;
        v9 = v8 | 0x4000000000000000;
      }

      else
      {
        v16 = swift_allocObject();
        *(v16 + 16) = v7;
        *(v16 + 24) = v6;
        v9 = v16 | 0x8000000000000000;
      }

      *a1 = v9;
    }
  }
}

uint64_t static FormatColor.fixed(_:alpha:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  *a4 = result | 0x2000000000000000;
  return result;
}

id sub_1D6E0CD34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1D6E0CD9C(uint64_t a1, __n128 a2)
{
  v3 = FormatColor.color.getter(a2);
  v4 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v5 = [(objc_class *)v3 resolvedColorWithTraitCollection:v4];

  return v5;
}

unint64_t sub_1D6E0CE98(uint64_t a1)
{
  result = sub_1D5B5706C();
  *(a1 + 8) = result;
  return result;
}

void sub_1D6E0CED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B49474(255, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6E0CF40()
{
  result = qword_1EC8968E8;
  if (!qword_1EC8968E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8968E8);
  }

  return result;
}

uint64_t static FeedEngagementBanner.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1D72646CC() & 1) != 0)
  {
    type metadata accessor for FeedEngagementBanner(0);

    JUMPOUT(0x1DA6F36F0);
  }

  return 0;
}

uint64_t FeedEngagementBanner.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedEngagementBanner.engagementBanner.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedEngagementBanner(0) + 20);
  v4 = sub_1D725C08C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedEngagementBanner.traits.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FeedEngagementBanner(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t FeedEngagementBanner.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FeedEngagementBanner(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t FeedEngagementBanner.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedEngagementBanner(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5BF2DDC(v4, v5);
}

uint64_t FeedEngagementBanner.init(identifier:engagementBanner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FeedEngagementBanner(0);
  *&a4[v8[6]] = 0x80000;
  v9 = &a4[v8[7]];
  *v9 = 0;
  v9[8] = 1;
  *&a4[v8[8]] = xmmword_1D72F40F0;
  *a4 = a1;
  *(a4 + 1) = a2;
  v10 = v8[5];
  v11 = sub_1D725C08C();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t sub_1D6E0D26C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 28));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

uint64_t FeedEngagementBanner.cacheIdentifier.getter()
{
  v1 = sub_1D725C09C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v9[0] = *v0;
  v9[1] = v6;

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  type metadata accessor for FeedEngagementBanner(0);
  sub_1D725C06C();
  sub_1D6E0D6C0(&qword_1EDF175E0, MEMORY[0x1E69B56E8], MEMORY[0x1E69B56F0]);
  v7 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v7);

  (*(v2 + 8))(v5, v1);
  return v9[0];
}

uint64_t FeedEngagementBanner.hashValue.getter()
{
  sub_1D7264A0C();
  type metadata accessor for FeedEngagementBanner(0);
  sub_1D6E0D6C0(&qword_1EC8968F0, type metadata accessor for FeedEngagementBanner, &protocol conformance descriptor for FeedEngagementBanner);
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D6E0D468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6E0D6C0(&qword_1EC896900, type metadata accessor for FeedEngagementBanner, &protocol conformance descriptor for FeedEngagementBanner);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D6E0D4E4(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1D72646CC() & 1) != 0)
  {

    JUMPOUT(0x1DA6F36F0);
  }

  return 0;
}

uint64_t sub_1D6E0D568(uint64_t a1)
{
  result = sub_1D6E0D6C0(&qword_1EDF14748, type metadata accessor for FeedEngagementBanner, &protocol conformance descriptor for FeedEngagementBanner);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D6E0D6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NewsFeed::FeedPartOfDay_optional __swiftcall FeedPartOfDay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t FeedPartOfDay.rawValue.getter()
{
  if (*v0)
  {
    return 0x746867696ELL;
  }

  else
  {
    return 7954788;
  }
}

uint64_t sub_1D6E0D7EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746867696ELL;
  }

  else
  {
    v3 = 7954788;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x746867696ELL;
  }

  else
  {
    v5 = 7954788;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

unint64_t sub_1D6E0D88C()
{
  result = qword_1EC896908;
  if (!qword_1EC896908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896908);
  }

  return result;
}

uint64_t sub_1D6E0D8E0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6E0D958(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6E0D9BC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6E0DA30(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D6E0DA90(uint64_t *a1@<X8>)
{
  v2 = 7954788;
  if (*v1)
  {
    v2 = 0x746867696ELL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D6E0DB84()
{
  result = qword_1EC896910;
  if (!qword_1EC896910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896910);
  }

  return result;
}

uint64_t static ContextMenuItem.openRecipes(recipeContext:)(uint64_t *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_1EDF3ACD0 != -1)
  {
    swift_once();
  }

  v11[1] = v7;

  swift_unknownObjectRetain();
  sub_1D6E0DE00();
  if (qword_1EDF1BBE8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDF1BBF0;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v11[0] = v7;
  swift_allocObject();
  v9 = v8;
  return sub_1D725D3AC();
}

double static Commands.Recipes.openRecipe.getter()
{
  if (qword_1EDF3ACD0 != -1)
  {
    swift_once();
  }

  return result;
}

id sub_1D6E0DE00()
{
  result = [*v0 recipeIDs];
  if (result)
  {
    v2 = result;
    v3 = sub_1D726267C();

    v4 = *(v3 + 16);

    if (v4)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v7 = sub_1D725811C();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6E0DFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatThumbnail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6E0E018()
{
  result = qword_1EDF043D8;
  if (!qword_1EDF043D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF043D8);
  }

  return result;
}

uint64_t sub_1D6E0E064(uint64_t a1)
{
  v2 = type metadata accessor for FormatThumbnail(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6E0E0C0(uint64_t a1)
{
  sub_1D5C25D84(0, &qword_1EDF17F30, MEMORY[0x1E69D6430], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6E0E15C(void *a1)
{
  v3 = v1;
  sub_1D6E13148(0, &qword_1EC8969D0, sub_1D6E130F4, &type metadata for H12_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E130F4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6E12A4C(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
    sub_1D6CBA8E0(&qword_1EC894B38, sub_1D67490D8, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6E0E3B8(uint64_t a1)
{
  v2 = sub_1D6E130F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E0E3F4(uint64_t a1)
{
  v2 = sub_1D6E130F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6E0E430@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6E12E40(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6E0E490(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6E12B0C();

  return sub_1D725A24C();
}

uint64_t sub_1D6E0E50C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6E13148(0, &qword_1EC894B08, sub_1D6CBA51C, &type metadata for HMultiLayoutItem, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6E0E5C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v49 = a1;
  v50 = a3;
  v42 = sub_1D725895C();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v13;
  v14 = type metadata accessor for GroupLayoutBindingContext(0);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *v3;
  v43 = *v3;
  v18 = *(v3 + 1);
  v19 = v3[16];
  v40 = type metadata accessor for GroupLayoutBindingContext;
  v20 = a1;
  v21 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3F40(v20, v21, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BE3F40(a2, v13, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v39 = sub_1D725893C();
  v38 = v22;
  (*(v6 + 8))(v9, v42);
  v59 = &type metadata for H12_V1;
  v42 = sub_1D5ECE13C();
  v60 = v42;
  LOBYTE(v57[0]) = v17;
  v57[1] = v18;
  v58 = v19;
  type metadata accessor for GroupLayoutKey(0);
  v23 = swift_allocObject();
  sub_1D5BEE8A0(v18, v19);
  v55 = sub_1D7264C5C();
  v56 = v24;
  v53 = 95;
  v54 = 0xE100000000000000;
  v51 = 45;
  v52 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v25 = sub_1D7263A6C();
  v27 = v26;

  *(v23 + 16) = v25;
  *(v23 + 24) = v27;
  v28 = (v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v29 = v38;
  *v28 = v39;
  v28[1] = v29;
  sub_1D5B68374(v57, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v30 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA89C(v21, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v40);
  (*(v44 + 56))(v23 + v30, 0, 1, v45);
  v31 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v41, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v47 + 56))(v23 + v31, 0, 1, v48);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v32 = type metadata accessor for H12_V1.Bound(0);
  v33 = v50;
  v50[3] = v32;
  v33[4] = sub_1D6E12A4C(&qword_1EC896928, type metadata accessor for H12_V1.Bound, &unk_1D735B574);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v35 = v42;
  boxed_opaque_existential_1[4] = &type metadata for H12_V1;
  boxed_opaque_existential_1[5] = v35;
  *(boxed_opaque_existential_1 + 8) = v43;
  boxed_opaque_existential_1[2] = v18;
  *(boxed_opaque_existential_1 + 24) = v19;
  sub_1D5BE3F40(v46, boxed_opaque_existential_1 + *(v32 + 24), type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v18, v19);
  sub_1D6C555B4(0, 0, 0, 0, 0);
  *boxed_opaque_existential_1 = v23;
  *(boxed_opaque_existential_1 + *(v32 + 28)) = v36;
}

void sub_1D6E0EA60(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + *(type metadata accessor for H12_V1.Bound(0) + 28));
  v29 = v1;
  v24 = sub_1D5FBD90C(sub_1D6E12A94, v28, v9);
  *&v31 = v24;
  sub_1D6CBA34C(0, &qword_1EC894A60, &type metadata for HGroupLayoutContext, MEMORY[0x1E69E62F8]);
  v11 = v10;
  sub_1D5BD4AA4(&qword_1EC894A68, &qword_1EC894A60, &type metadata for HGroupLayoutContext, MEMORY[0x1E69E6340]);
  v25 = v11;
  v12 = sub_1D7262C1C();
  v13 = *MEMORY[0x1E69D7130];
  v14 = sub_1D7259D1C();
  (*(*(v14 - 8) + 104))(v8, v13, v14);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
  v26 = v12;
  v27 = v2;
  sub_1D6E12C3C(0, &qword_1EC896948, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v15 = v33;
  v16 = MEMORY[0x1E69E62F8];
  sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
  v17 = MEMORY[0x1E69E6328];
  sub_1D5BD4AA4(&qword_1EC894A90, &qword_1EC894A60, &type metadata for HGroupLayoutContext, MEMORY[0x1E69E6328]);
  sub_1D5BD4AA4(&qword_1EC894A98, &qword_1EC894A88, &type metadata for HMultiLayoutItem, v17);
  v22 = v32;
  v23 = v31;
  v30 = v15;
  *&v31 = v24;

  v18 = sub_1D725C00C();

  *a1 = 0;
  v19 = v23;
  *(a1 + 24) = v22;
  *(a1 + 8) = v19;
  *&v31 = v18;
  sub_1D6CBA34C(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v16);
  sub_1D5BD4AA4(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v17);
  sub_1D5BDEFF8();
  v20 = sub_1D72623BC();

  v21 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
}

uint64_t sub_1D6E0EE88@<X0>(uint64_t a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v287 = a3;
  v286 = sub_1D725891C();
  v6 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286, v7);
  v284 = &v274 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EF9748(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v274 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v278 = &v274 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v274 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v277 = &v274 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v274 - v25;
  sub_1D5F76E40(a1, &v320);
  if (v336)
  {
    if (v336 != 1)
    {
      v302 = v326;
      v303[0] = v327[0];
      v303[1] = v327[1];
      v304 = v328;
      v298 = v322;
      v299 = v323;
      v300 = v324;
      v301 = v325;
      v296 = v320;
      v297 = v321;
      v137 = *a2;
      sub_1D5EE5AF8(&v296, &v288);
      v138 = a2 + *(type metadata accessor for H12_V1.Bound(0) + 24);
      v139 = type metadata accessor for GroupLayoutContext(0);
      v140 = *(*&v138[*(v139 + 40)] + 16);
      v141 = *&v138[*(v139 + 32)];
      sub_1D5B68374(v140 + 16, &v305);
      sub_1D5B68374(v140 + 56, v319);
      v142 = v141 * *(v140 + 96);
      type metadata accessor for FeedLayoutStylerFactory();
      v143 = swift_allocObject();
      sub_1D5B63F14(&v305, v143 + 16);
      sub_1D5B63F14(v319, v143 + 56);
      *(v143 + 96) = v142;

      FeedLayoutStylerFactory.styler()(&v308);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v143 + 16));
      __swift_destroy_boxed_opaque_existential_1((v143 + 56));
      swift_deallocClassInstance();
      v144 = v287;
      CoverChannelViewLayout.Context.init(key:model:styler:)(v137, &v288, &v308, v287);
      result = sub_1D5EE5B54(&v296);
      *(v144 + 392) = 1;
      return result;
    }

    v275 = v12;
    v276 = v3;
    v302 = v326;
    v303[0] = v327[0];
    *(v303 + 9) = *(v327 + 9);
    v298 = v322;
    v299 = v323;
    v300 = v324;
    v301 = v325;
    v296 = v320;
    v297 = v321;
    v294 = v334;
    v295[0] = *v335;
    *(v295 + 9) = *&v335[9];
    v290 = v330;
    v291 = v331;
    v292 = v332;
    v293 = v333;
    v288 = v328;
    v289 = v329;
    v280 = *a2;
    v27 = v280;
    v28 = a2 + *(type metadata accessor for H12_V1.Bound(0) + 24);
    v29 = type metadata accessor for GroupLayoutContext(0);
    v30 = *(*&v28[*(v29 + 40)] + 16);
    v31 = *&v28[*(v29 + 32)];
    sub_1D5B68374(v30 + 16, &v305);
    sub_1D5B68374(v30 + 56, &v316);
    v32 = v31 * *(v30 + 96);
    type metadata accessor for FeedLayoutStylerFactory();
    v33 = swift_allocObject();
    sub_1D5B63F14(&v305, v33 + 16);
    sub_1D5B63F14(&v316, v33 + 56);
    *(v33 + 96) = v32;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6CBA14C(&v288, &v308, &qword_1EDF34E30, &type metadata for FeedIssue);
    FeedLayoutStylerFactory.styler()(v319);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v33 + 16));
    __swift_destroy_boxed_opaque_existential_1((v33 + 56));
    swift_deallocClassInstance();
    v34 = v300;
    v35 = v287;
    *(v287 + 11) = v301;
    v36 = v303[0];
    *(v35 + 13) = v302;
    *(v35 + 15) = v36;
    *(v35 + 129) = *(v303 + 9);
    v37 = v296;
    *(v35 + 3) = v297;
    v38 = v299;
    *(v35 + 5) = v298;
    *(v35 + 7) = v38;
    *(v35 + 9) = v34;
    *(v35 + 1) = v37;
    v39 = v292;
    *(v35 + 29) = v293;
    v40 = v295[0];
    *(v35 + 31) = v294;
    *(v35 + 33) = v40;
    *(v35 + 273) = *(v295 + 9);
    v41 = v288;
    *(v35 + 21) = v289;
    v42 = v291;
    *(v35 + 23) = v290;
    *(v35 + 25) = v42;
    *(v35 + 27) = v39;
    *v35 = v27;
    *(v35 + 19) = v41;
    sub_1D5B68374(v319, (v35 + 37));
    sub_1D5B68374(v319, &v316);
    v281 = *(v6 + 56);
    v282 = v6 + 56;
    v281(v26, 1, 1, v286);
    v43 = swift_allocObject();
    v285 = v6;
    v283 = v26;
    v44 = v43;
    v45 = v303[0];
    v43[7] = v302;
    v43[8] = v45;
    *(v43 + 137) = *(v303 + 9);
    v46 = v299;
    v43[3] = v298;
    v43[4] = v46;
    v47 = v301;
    v43[5] = v300;
    v43[6] = v47;
    v48 = v297;
    v43[1] = v296;
    v43[2] = v48;
    sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
    v277 = v49;
    v50 = swift_allocObject();
    *(v50 + 2) = 0xC04E000000000000;
    v51 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    sub_1D5ECF2C4(&v296, &v305);

    v52 = sub_1D6CAFA6C();
    v53 = (*(v51 + 80))(v52);

    *&v50[*(*v50 + 120)] = v53;
    *&v50[*(*v50 + 136)] = v53;
    v54 = v53;
    v55 = v284;
    sub_1D725890C();
    v56 = *(*v50 + 128);
    v57 = v286;
    v58 = *(v285 + 32);
    v285 += 32;
    v279 = v58;
    v58(&v50[v56], v55, v286);
    v280 = objc_opt_self();
    LOBYTE(v55) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v50[qword_1EDF347F8] = v55;
    v59 = v283;
    sub_1D5DF42F8(v283, &v50[qword_1EDF347F0]);
    v60 = swift_allocObject();
    v60[2] = sub_1D5EF97AC;
    v60[3] = v44;
    v60[4] = v54;
    *(v50 + 3) = sub_1D5EF97B4;
    *(v50 + 4) = v60;
    v35[42] = v50;
    sub_1D5B68374(v319, &v316);
    v281(v59, 1, 1, v57);
    v61 = swift_allocObject();
    v62 = v303[0];
    v61[7] = v302;
    v61[8] = v62;
    *(v61 + 137) = *(v303 + 9);
    v63 = v299;
    v61[3] = v298;
    v61[4] = v63;
    v64 = v301;
    v61[5] = v300;
    v61[6] = v64;
    v65 = v297;
    v61[1] = v296;
    v61[2] = v65;
    v66 = swift_allocObject();
    *(v66 + 2) = 0xC04E000000000000;
    v67 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    v68 = sub_1D6CAFA6C();
    v69 = (*(v67 + 88))(v68);

    *&v66[*(*v66 + 120)] = v69;
    *&v66[*(*v66 + 136)] = v69;
    v70 = v69;
    v71 = v284;
    sub_1D725890C();
    v72 = v286;
    v279(&v66[*(*v66 + 128)], v71, v286);
    LOBYTE(v71) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v66[qword_1EDF347F8] = v71;
    sub_1D5DF42F8(v283, &v66[qword_1EDF347F0]);
    v73 = swift_allocObject();
    v73[2] = sub_1D5EF97C0;
    v73[3] = v61;
    v73[4] = v70;
    *(v66 + 3) = sub_1D5EF9FF8;
    *(v66 + 4) = v73;
    v35[43] = v66;
    sub_1D5B68374(v319, &v305);
    v281(v278, 1, 1, v72);
    v74 = swift_allocObject();
    v75 = v303[0];
    v74[7] = v302;
    v74[8] = v75;
    *(v74 + 137) = *(v303 + 9);
    v76 = v299;
    v74[3] = v298;
    v74[4] = v76;
    v77 = v301;
    v74[5] = v300;
    v74[6] = v77;
    v78 = v297;
    v74[1] = v296;
    v74[2] = v78;
    v79 = swift_allocObject();
    *(v79 + 2) = 0xC04E000000000000;
    v81 = v306;
    v80 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v301 == 1 || !v302)
    {
      v146 = v296;
      sub_1D5ECF2C4(&v296, &v308);
      v147 = [v146 coverDate];
      sub_1D726207C();
    }

    else
    {
      sub_1D5ECF2C4(&v296, &v308);
    }

    v148 = sub_1D726213C();
    v150 = v149;

    v151 = (*(v80 + 96))(v148, v150, v81, v80);

    *&v79[*(*v79 + 120)] = v151;
    *&v79[*(*v79 + 136)] = v151;
    v152 = v151;
    v153 = v284;
    sub_1D725890C();
    v154 = v153;
    v155 = v286;
    v279(&v79[*(*v79 + 128)], v154, v286);
    LOBYTE(v150) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v79[qword_1EDF347F8] = v150;
    sub_1D5DF42F8(v278, &v79[qword_1EDF347F0]);
    v156 = swift_allocObject();
    v156[2] = sub_1D5EF97C8;
    v156[3] = v74;
    v156[4] = v152;
    *(v79 + 3) = sub_1D5EF9FF8;
    *(v79 + 4) = v156;
    v287[44] = v79;
    sub_1D5B68374(v319, &v305);
    v281(v275, 1, 1, v155);
    v157 = swift_allocObject();
    v158 = v303[0];
    v157[7] = v302;
    v157[8] = v158;
    *(v157 + 137) = *(v303 + 9);
    v159 = v299;
    v157[3] = v298;
    v157[4] = v159;
    v160 = v301;
    v157[5] = v300;
    v157[6] = v160;
    v161 = v297;
    v157[1] = v296;
    v157[2] = v161;
    v162 = swift_allocObject();
    *(v162 + 2) = 0xC04E000000000000;
    v163 = BYTE8(v297);
    v164 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v163 == 2)
    {
      LOBYTE(v316) = 2;
      sub_1D5ECF2C4(&v296, &v308);
      v165 = sub_1D6CAFB7C();
      v166 = (*(v164 + 96))(v165);
    }

    else
    {
      LOBYTE(v316) = v163;
      sub_1D5ECF2C4(&v296, &v308);
      v188 = sub_1D6CAFB7C();
      v166 = (*(v164 + 104))(v188);
    }

    v189 = v166;

    *&v162[*(*v162 + 120)] = v189;
    *&v162[*(*v162 + 136)] = v189;
    v190 = v189;
    v191 = v284;
    sub_1D725890C();
    v192 = v286;
    v279(&v162[*(*v162 + 128)], v191, v286);
    LOBYTE(v191) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v162[qword_1EDF347F8] = v191;
    sub_1D5DF42F8(v275, &v162[qword_1EDF347F0]);
    v193 = swift_allocObject();
    v193[2] = sub_1D5EF97D0;
    v193[3] = v157;
    v193[4] = v190;
    *(v162 + 3) = sub_1D5EF9FF8;
    *(v162 + 4) = v193;
    v287[45] = v162;
    sub_1D5B68374(v319, &v308);
    v281(v283, 1, 1, v192);
    v194 = swift_allocObject();
    *(v194 + 2) = 0xC04E000000000000;
    v195 = *(&v309 + 1);
    v196 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v278 = ObjCClassFromMetadata;
    v275 = objc_opt_self();
    v198 = [v275 bundleForClass_];
    sub_1D725811C();

    v199 = sub_1D726213C();
    v201 = v200;

    v202 = (*(v196 + 112))(v199, v201, v195, v196);

    *&v194[*(*v194 + 120)] = v202;
    *&v194[*(*v194 + 136)] = v202;
    v203 = v202;
    v204 = v284;
    sub_1D725890C();
    v205 = v286;
    v279(&v194[*(*v194 + 128)], v204, v286);
    LOBYTE(v204) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v194[qword_1EDF347F8] = v204;
    v206 = v283;
    sub_1D5DF42F8(v283, &v194[qword_1EDF347F0]);
    v207 = swift_allocObject();
    v207[2] = sub_1D6EAD6D0;
    v207[3] = 0;
    v207[4] = v203;
    *(v194 + 3) = sub_1D5EF9FF8;
    *(v194 + 4) = v207;
    v287[46] = v194;
    sub_1D5B68374(v319, &v308);
    v208 = v205;
    v281(v206, 1, 1, v205);
    v209 = swift_allocObject();
    *(v209 + 2) = 0xC04E000000000000;
    v210 = *(&v309 + 1);
    v211 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    v212 = [v275 bundleForClass_];
    sub_1D725811C();

    v213 = sub_1D726213C();
    v215 = v214;

    v216 = (*(v211 + 120))(v213, v215, v210, v211);

    *&v209[*(*v209 + 120)] = v216;
    *&v209[*(*v209 + 136)] = v216;
    v217 = v216;
    v218 = v284;
    sub_1D725890C();
    v219 = v208;
    v220 = v208;
    v221 = v279;
    v279(&v209[*(*v209 + 128)], v218, v220);
    LOBYTE(v213) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v209[qword_1EDF347F8] = v213;
    v222 = v283;
    sub_1D5DF42F8(v283, &v209[qword_1EDF347F0]);
    v223 = swift_allocObject();
    v223[2] = sub_1D6EAD7F8;
    v223[3] = 0;
    v223[4] = v217;
    *(v209 + 3) = sub_1D5EF9FF8;
    *(v209 + 4) = v223;
    v287[47] = v209;
    sub_1D5B68374(v319, &v305);
    v281(v222, 1, 1, v219);
    v224 = swift_allocObject();
    v225 = v303[0];
    v224[7] = v302;
    v224[8] = v225;
    *(v224 + 137) = *(v303 + 9);
    v226 = v299;
    v224[3] = v298;
    v224[4] = v226;
    v227 = v301;
    v224[5] = v300;
    v224[6] = v227;
    v228 = v297;
    v224[1] = v296;
    v224[2] = v228;
    sub_1D5EF97E0(0);
    v229 = swift_allocObject();
    *(v229 + 2) = 0xC04E000000000000;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6EAD930(&v296, &v308);
    sub_1D5ECF320(&v296);
    v230 = v308;
    *&v229[*(*v229 + 120)] = v308;
    *&v229[*(*v229 + 136)] = v230;
    swift_bridgeObjectRetain_n();
    sub_1D725890C();
    v221(&v229[*(*v229 + 128)], v218, v219);
    LOBYTE(v222) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v229[qword_1EDF347F8] = v222;
    sub_1D5DF42F8(v283, &v229[qword_1EDF347F0]);
    v231 = swift_allocObject();
    *(v231 + 16) = sub_1D5EF97D8;
    *(v231 + 24) = v224;
    *(v231 + 32) = v230;
    *(v229 + 3) = sub_1D5EF98AC;
    *(v229 + 4) = v231;
    sub_1D5ECF320(&v296);
    sub_1D6CBA1CC(&v288, &qword_1EDF34E30, &type metadata for FeedIssue);
  }

  else
  {
    v275 = v19;
    v276 = v3;
    v302 = v326;
    v303[0] = v327[0];
    *(v303 + 9) = *(v327 + 9);
    v298 = v322;
    v299 = v323;
    v300 = v324;
    v301 = v325;
    v296 = v320;
    v297 = v321;
    v82 = *a2;
    sub_1D5D62850(&v288);
    v83 = a2 + *(type metadata accessor for H12_V1.Bound(0) + 24);
    v84 = type metadata accessor for GroupLayoutContext(0);
    v85 = *(*&v83[*(v84 + 40)] + 16);
    v86 = *&v83[*(v84 + 32)];
    sub_1D5B68374(v85 + 16, &v305);
    sub_1D5B68374(v85 + 56, &v316);
    v87 = v86 * *(v85 + 96);
    type metadata accessor for FeedLayoutStylerFactory();
    v88 = swift_allocObject();
    sub_1D5B63F14(&v305, v88 + 16);
    sub_1D5B63F14(&v316, v88 + 56);
    *(v88 + 96) = v87;
    sub_1D5ECF2C4(&v296, &v308);
    FeedLayoutStylerFactory.styler()(v319);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v88 + 16));
    __swift_destroy_boxed_opaque_existential_1((v88 + 56));
    swift_deallocClassInstance();
    v89 = v300;
    v90 = v287;
    *(v287 + 11) = v301;
    v91 = v303[0];
    *(v90 + 13) = v302;
    *(v90 + 15) = v91;
    *(v90 + 129) = *(v303 + 9);
    v92 = v296;
    *(v90 + 3) = v297;
    v93 = v299;
    *(v90 + 5) = v298;
    *(v90 + 7) = v93;
    *(v90 + 9) = v89;
    *(v90 + 1) = v92;
    v94 = v292;
    *(v90 + 29) = v293;
    v95 = v295[0];
    *(v90 + 31) = v294;
    *(v90 + 33) = v95;
    *(v90 + 273) = *(v295 + 9);
    v96 = v288;
    *(v90 + 21) = v289;
    v97 = v291;
    *(v90 + 23) = v290;
    *(v90 + 25) = v97;
    *(v90 + 27) = v94;
    *v90 = v82;
    *(v90 + 19) = v96;
    sub_1D5B68374(v319, (v90 + 37));
    sub_1D5B68374(v319, &v316);
    v281 = *(v6 + 56);
    v282 = v6 + 56;
    v281(v26, 1, 1, v286);
    v98 = swift_allocObject();
    v285 = v6;
    v283 = v26;
    v99 = v98;
    v100 = v303[0];
    v98[7] = v302;
    v98[8] = v100;
    *(v98 + 137) = *(v303 + 9);
    v101 = v299;
    v98[3] = v298;
    v98[4] = v101;
    v102 = v301;
    v98[5] = v300;
    v98[6] = v102;
    v103 = v297;
    v98[1] = v296;
    v98[2] = v103;
    sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
    v278 = v104;
    v105 = swift_allocObject();
    *(v105 + 2) = 0xC04E000000000000;
    v106 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    sub_1D5ECF2C4(&v296, &v305);

    v107 = sub_1D6CAFA6C();
    v108 = (*(v106 + 80))(v107);

    *&v105[*(*v105 + 120)] = v108;
    *&v105[*(*v105 + 136)] = v108;
    v109 = v108;
    v110 = v284;
    sub_1D725890C();
    v111 = *(*v105 + 128);
    v112 = v286;
    v113 = *(v285 + 32);
    v285 += 32;
    v279 = v113;
    v113(&v105[v111], v110, v286);
    v280 = objc_opt_self();
    LOBYTE(v110) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v105[qword_1EDF347F8] = v110;
    v114 = v283;
    sub_1D5DF42F8(v283, &v105[qword_1EDF347F0]);
    v115 = swift_allocObject();
    v115[2] = sub_1D6CBAA8C;
    v115[3] = v99;
    v115[4] = v109;
    *(v105 + 3) = sub_1D5EF9FF8;
    *(v105 + 4) = v115;
    v90[42] = v105;
    sub_1D5B68374(v319, &v316);
    v281(v114, 1, 1, v112);
    v116 = swift_allocObject();
    v117 = v303[0];
    v116[7] = v302;
    v116[8] = v117;
    *(v116 + 137) = *(v303 + 9);
    v118 = v299;
    v116[3] = v298;
    v116[4] = v118;
    v119 = v301;
    v116[5] = v300;
    v116[6] = v119;
    v120 = v297;
    v116[1] = v296;
    v116[2] = v120;
    v121 = swift_allocObject();
    *(v121 + 2) = 0xC04E000000000000;
    v122 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    v123 = sub_1D6CAFA6C();
    v124 = (*(v122 + 88))(v123);

    *&v121[*(*v121 + 120)] = v124;
    *&v121[*(*v121 + 136)] = v124;
    v125 = v124;
    v126 = v284;
    sub_1D725890C();
    v127 = v286;
    v279(&v121[*(*v121 + 128)], v126, v286);
    LOBYTE(v126) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v121[qword_1EDF347F8] = v126;
    sub_1D5DF42F8(v283, &v121[qword_1EDF347F0]);
    v128 = swift_allocObject();
    v128[2] = sub_1D6CBAA90;
    v128[3] = v116;
    v128[4] = v125;
    *(v121 + 3) = sub_1D5EF9FF8;
    *(v121 + 4) = v128;
    v90[43] = v121;
    sub_1D5B68374(v319, &v305);
    v281(v277, 1, 1, v127);
    v129 = swift_allocObject();
    v130 = v303[0];
    v129[7] = v302;
    v129[8] = v130;
    *(v129 + 137) = *(v303 + 9);
    v131 = v299;
    v129[3] = v298;
    v129[4] = v131;
    v132 = v301;
    v129[5] = v300;
    v129[6] = v132;
    v133 = v297;
    v129[1] = v296;
    v129[2] = v133;
    v134 = swift_allocObject();
    *(v134 + 2) = 0xC04E000000000000;
    v135 = v306;
    v136 = v307;
    v274 = __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v301 == 1 || !v302)
    {
      v167 = v296;
      sub_1D5ECF2C4(&v296, &v308);
      v168 = [v167 coverDate];
      sub_1D726207C();
    }

    else
    {
      sub_1D5ECF2C4(&v296, &v308);
    }

    v169 = v275;
    v170 = sub_1D726213C();
    v172 = v171;

    v173 = (*(v136 + 96))(v170, v172, v135, v136);

    *&v134[*(*v134 + 120)] = v173;
    *&v134[*(*v134 + 136)] = v173;
    v174 = v173;
    v175 = v284;
    sub_1D725890C();
    v176 = v286;
    v279(&v134[*(*v134 + 128)], v175, v286);
    LOBYTE(v175) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v134[qword_1EDF347F8] = v175;
    sub_1D5DF42F8(v277, &v134[qword_1EDF347F0]);
    v177 = swift_allocObject();
    v177[2] = sub_1D6CBAA94;
    v177[3] = v129;
    v177[4] = v174;
    *(v134 + 3) = sub_1D5EF9FF8;
    *(v134 + 4) = v177;
    v287[44] = v134;
    sub_1D5B68374(v319, &v305);
    v281(v169, 1, 1, v176);
    v178 = swift_allocObject();
    v179 = v303[0];
    v178[7] = v302;
    v178[8] = v179;
    *(v178 + 137) = *(v303 + 9);
    v180 = v299;
    v178[3] = v298;
    v178[4] = v180;
    v181 = v301;
    v178[5] = v300;
    v178[6] = v181;
    v182 = v297;
    v178[1] = v296;
    v178[2] = v182;
    v183 = swift_allocObject();
    *(v183 + 2) = 0xC04E000000000000;
    v184 = BYTE8(v297);
    v185 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v184 == 2)
    {
      LOBYTE(v316) = 2;
      sub_1D5ECF2C4(&v296, &v308);
      v186 = sub_1D6CAFB7C();
      v187 = (*(v185 + 96))(v186);
    }

    else
    {
      LOBYTE(v316) = v184;
      sub_1D5ECF2C4(&v296, &v308);
      v232 = sub_1D6CAFB7C();
      v187 = (*(v185 + 104))(v232);
    }

    v233 = v187;

    *&v183[*(*v183 + 120)] = v233;
    *&v183[*(*v183 + 136)] = v233;
    v234 = v233;
    v235 = v284;
    sub_1D725890C();
    v236 = v286;
    v279(&v183[*(*v183 + 128)], v235, v286);
    LOBYTE(v235) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v183[qword_1EDF347F8] = v235;
    sub_1D5DF42F8(v275, &v183[qword_1EDF347F0]);
    v237 = swift_allocObject();
    v237[2] = sub_1D6CBAA98;
    v237[3] = v178;
    v237[4] = v234;
    *(v183 + 3) = sub_1D5EF9FF8;
    *(v183 + 4) = v237;
    v287[45] = v183;
    sub_1D5B68374(v319, &v308);
    v281(v283, 1, 1, v236);
    v238 = swift_allocObject();
    *(v238 + 2) = 0xC04E000000000000;
    v239 = *(&v309 + 1);
    v240 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    type metadata accessor for Localized();
    v241 = swift_getObjCClassFromMetadata();
    v277 = v241;
    v275 = objc_opt_self();
    v242 = [v275 bundleForClass_];
    sub_1D725811C();

    v243 = sub_1D726213C();
    v245 = v244;

    v246 = (*(v240 + 112))(v243, v245, v239, v240);

    *&v238[*(*v238 + 120)] = v246;
    *&v238[*(*v238 + 136)] = v246;
    v247 = v246;
    v248 = v284;
    sub_1D725890C();
    v249 = v286;
    v279(&v238[*(*v238 + 128)], v248, v286);
    LOBYTE(v248) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v238[qword_1EDF347F8] = v248;
    v250 = v283;
    sub_1D5DF42F8(v283, &v238[qword_1EDF347F0]);
    v251 = swift_allocObject();
    v251[2] = sub_1D6EAD6D0;
    v251[3] = 0;
    v251[4] = v247;
    *(v238 + 3) = sub_1D5EF9FF8;
    *(v238 + 4) = v251;
    v287[46] = v238;
    sub_1D5B68374(v319, &v308);
    v281(v250, 1, 1, v249);
    v252 = swift_allocObject();
    *(v252 + 2) = 0xC04E000000000000;
    v253 = *(&v309 + 1);
    v254 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    v255 = [v275 bundleForClass_];
    sub_1D725811C();

    v256 = sub_1D726213C();
    v258 = v257;

    v259 = (*(v254 + 120))(v256, v258, v253, v254);

    *&v252[*(*v252 + 120)] = v259;
    *&v252[*(*v252 + 136)] = v259;
    v260 = v259;
    v261 = v284;
    sub_1D725890C();
    v262 = v286;
    v263 = v279;
    v279(&v252[*(*v252 + 128)], v261, v286);
    LOBYTE(v256) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v252[qword_1EDF347F8] = v256;
    v264 = v283;
    sub_1D5DF42F8(v283, &v252[qword_1EDF347F0]);
    v265 = swift_allocObject();
    v265[2] = sub_1D6EAD7F8;
    v265[3] = 0;
    v265[4] = v260;
    *(v252 + 3) = sub_1D5EF9FF8;
    *(v252 + 4) = v265;
    v287[47] = v252;
    sub_1D5B68374(v319, &v305);
    v281(v264, 1, 1, v262);
    v266 = swift_allocObject();
    v267 = v303[0];
    v266[7] = v302;
    v266[8] = v267;
    *(v266 + 137) = *(v303 + 9);
    v268 = v299;
    v266[3] = v298;
    v266[4] = v268;
    v269 = v301;
    v266[5] = v300;
    v266[6] = v269;
    v270 = v297;
    v266[1] = v296;
    v266[2] = v270;
    sub_1D5EF97E0(0);
    v229 = swift_allocObject();
    *(v229 + 2) = 0xC04E000000000000;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6EAD930(&v296, &v308);
    sub_1D5ECF320(&v296);
    v271 = v308;
    *&v229[*(*v229 + 120)] = v308;
    *&v229[*(*v229 + 136)] = v271;
    swift_bridgeObjectRetain_n();
    sub_1D725890C();
    v263(&v229[*(*v229 + 128)], v261, v262);
    LOBYTE(v261) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v229[qword_1EDF347F8] = v261;
    sub_1D5DF42F8(v283, &v229[qword_1EDF347F0]);
    v272 = swift_allocObject();
    *(v272 + 16) = sub_1D6CBAA9C;
    *(v272 + 24) = v266;
    *(v272 + 32) = v271;
    *(v229 + 3) = sub_1D6CBAA88;
    *(v229 + 4) = v272;
    sub_1D5ECF320(&v296);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v319);
  v273 = v287;
  v287[48] = v229;
  *(v273 + 392) = 0;
  return result;
}

void sub_1D6E11418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  sub_1D6E13148(0, &qword_1EC896960, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v21 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    v27 = *MEMORY[0x1E69D7460];
    v26 = *(v8 + 104);
    v25 = *MEMORY[0x1E69D7098];
    v29 = v8 + 104;
    v24 = (v8 + 8);
    v23 = xmmword_1D7273AE0;
    v28 = a1;
    v22 = v6;
    do
    {
      v12 += 8;
      v31 = a1;
      v26(v10, v27, v6);
      sub_1D6E12B60(0);
      sub_1D6E13148(0, &qword_1EC896970, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D70D8]);
      v14 = v13;
      v15 = *(v13 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v23;
      v18 = (*(v15 + 104))(v17 + v16, v25, v14);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D7150];
      sub_1D6E12C3C(0, &qword_1EC896978, MEMORY[0x1E69D7150]);
      sub_1D6E12BF8(&qword_1EC896980, &qword_1EC896978, v20, MEMORY[0x1E69D7158]);

      a1 = v28;
      v6 = v22;
      sub_1D72599EC();

      (*v24)(v10, v6);
      --v11;
    }

    while (v11);
  }
}

void sub_1D6E11778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v118 = a1;
  v102 = sub_1D725A34C();
  v4 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v5);
  v105 = &v96[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6E13148(0, &qword_1EC896960, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D74B0]);
  v123 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v117 = &v96[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v103 = &v96[-v13];
  v14 = sub_1D725A36C();
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v96[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a2 + 16);
  if (!v19)
  {
    return;
  }

  v20 = 0;
  v21 = a2 + 32;
  v109 = *MEMORY[0x1E69D7378];
  v108 = (v16 + 104);
  v116 = *MEMORY[0x1E69D7200];
  v22 = *MEMORY[0x1E69D7208];
  v114 = *MEMORY[0x1E69D7468];
  v115 = v22;
  v113 = (v8 + 104);
  v112 = *MEMORY[0x1E69D7050];
  v111 = *MEMORY[0x1E69D7080];
  v107 = (v8 + 8);
  v98 = (v4 + 8);
  v99 = (v4 + 104);
  v97 = *MEMORY[0x1E69D7350];
  v100 = *MEMORY[0x1E69D7340];
  v110 = xmmword_1D7273AE0;
  v101 = v14;
  v119 = &v96[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  while (1)
  {
    v120 = v21;
    v121 = v19;
    sub_1D6CB9EB0(v21, v133);
    v122 = v20;
    if ((v134 & 1) == 0)
    {
      memcpy(v124, v133, 0x188uLL);
      if ((BYTE8(v124[3]) & 0x10) != 0)
      {
        v23 = v104 + *(type metadata accessor for H12_V1.Bound(0) + 24);
        v24 = type metadata accessor for GroupLayoutContext(0);
        v25 = *(*(v23 + *(v24 + 40)) + 24);
        v27 = MEMORY[0x1EEE9AC00](v24, v26);
        *&v96[-32] = v124;
        *&v96[-24] = v25;
        v94 = v28;
      }

      else
      {
        v73 = v104 + *(type metadata accessor for H12_V1.Bound(0) + 24);
        v74 = type metadata accessor for GroupLayoutContext(0);
        v75 = *(*(v73 + *(v74 + 40)) + 24);
        v27 = MEMORY[0x1EEE9AC00](v74, v76);
        v94 = v124;
        v95 = v75;
      }

      (*v108)(v18, v109, v14, v27);
      sub_1D5EF94BC(0);
      swift_allocObject();

      v106 = sub_1D725A4CC();

      v125 = v118;
      swift_getKeyPath();
      sub_1D5EF9444(0);
      v30 = v29;
      v31 = swift_allocBox();
      v33 = v32;
      v34 = *(v30 + 48);
      sub_1D725993C();
      v35 = swift_allocBox();
      sub_1D725992C();
      *v33 = v35;
      v36 = sub_1D725A09C();
      v37 = *(*(v36 - 8) + 104);
      v37(v33, v116, v36);
      v37((v33 + v34), v115, v36);
      v38 = v103;
      *v103 = v31;
      (*v113)(v38, v114, v123);
      sub_1D6E12B60(0);
      sub_1D6E13148(0, &qword_1EC896970, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D70D8]);
      v40 = v39;
      v41 = *(v39 - 8);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v110;
      sub_1D6E13148(0, &qword_1EC896988, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D7078]);
      (*(*(v44 - 8) + 104))(v43 + v42, v112, v44);
      (*(v41 + 104))(v43 + v42, v111, v40);
      v45 = MEMORY[0x1E69D6F38];
      sub_1D6E12C3C(0, &qword_1EC896990, MEMORY[0x1E69D6F38]);
      v47 = v46;
      v48 = sub_1D6E12BF8(&qword_1EC896998, &qword_1EC896990, v45, MEMORY[0x1E69D6F40]);
      v94 = v47;
      v95 = v48;
      v20 = v122;
      sub_1D7259B0C();

      (*v107)(v38, v123);
      sub_1D5EF93F0(v124);
      v14 = v101;
      goto LABEL_5;
    }

    v124[12] = *&v133[192];
    v124[13] = *&v133[208];
    v124[14] = *&v133[224];
    *&v124[15] = *&v133[240];
    v124[8] = *&v133[128];
    v124[9] = *&v133[144];
    v124[10] = *&v133[160];
    v124[11] = *&v133[176];
    v124[4] = *&v133[64];
    v124[5] = *&v133[80];
    v124[6] = *&v133[96];
    v124[7] = *&v133[112];
    v124[0] = *v133;
    v124[1] = *&v133[16];
    v124[2] = *&v133[32];
    v124[3] = *&v133[48];
    v132 = v118;
    swift_getKeyPath();
    sub_1D5EF9444(0);
    v50 = v49;
    v51 = swift_allocBox();
    v53 = v52;
    v54 = *(v50 + 48);
    sub_1D725993C();
    v55 = swift_allocBox();
    sub_1D725992C();
    *v53 = v55;
    v56 = sub_1D725A09C();
    v57 = *(*(v56 - 8) + 104);
    v57(v53, v116, v56);
    v57((v53 + v54), v115, v56);
    *v117 = v51;
    (*v113)();
    sub_1D6E12B60(0);
    sub_1D6E13148(0, &qword_1EC896970, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D70D8]);
    v59 = v58;
    v60 = *(v58 - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v110;
    sub_1D6E13148(0, &qword_1EC896988, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D7078]);
    (*(*(v63 - 8) + 104))(v62 + v61, v112, v63);
    (*(v60 + 104))(v62 + v61, v111, v59);
    v64 = *(&v124[11] + 1);
    v65 = *&v124[12];
    __swift_project_boxed_opaque_existential_1(&v124[10], *(&v124[11] + 1));
    v66 = (*(v65 + 48))(v64, v65);
    v67 = *(&v124[11] + 1);
    v68 = *&v124[12];
    __swift_project_boxed_opaque_existential_1(&v124[10], *(&v124[11] + 1));
    v69 = (*(v68 + 56))(v67, v68);
    sub_1D6CBA14C(&v124[5] + 8, &v125, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
    if (v126 == 1)
    {
      v70 = &v125;
      v71 = &qword_1EDF13058;
      v72 = &type metadata for FeedTag.Overrides;
LABEL_18:
      sub_1D6CBA1CC(v70, v71, v72);
      v78 = v100;
      v20 = v122;
      goto LABEL_19;
    }

    sub_1D6CBA14C(v127, v128, &unk_1EC880A80, &type metadata for FeedTag.Overrides.Image);
    sub_1D5EED280(&v125);
    if (!v129)
    {
      v70 = v128;
      v71 = &unk_1EC880A80;
      v72 = &type metadata for FeedTag.Overrides.Image;
      goto LABEL_18;
    }

    v77 = v131;
    sub_1D5EED4FC(v128);
    v78 = v100;
    v20 = v122;
    if ((v77 & 1) == 0)
    {
      break;
    }

LABEL_19:
    v81 = v105;
    v82 = v102;
    v83 = (*v99)(v105, v78, v102);
    v85 = MEMORY[0x1EEE9AC00](v83, v84);
    *&v96[-32] = v81;
    *&v96[-24] = v66 + v69 + v69;
    v94 = v124;
    (*v108)(v119, v109, v14, v85);
    sub_1D6CBA24C(0);
    swift_allocObject();
    sub_1D725A4CC();
    (*v98)(v81, v82);
    v86 = MEMORY[0x1E69D6F38];
    sub_1D6E12C3C(0, &qword_1EC896990, MEMORY[0x1E69D6F38]);
    v88 = v87;
    v89 = sub_1D6E12BF8(&qword_1EC896998, &qword_1EC896990, v86, MEMORY[0x1E69D6F40]);
    v94 = v88;
    v95 = v89;
    v90 = v117;
    sub_1D7259B0C();

    (*v107)(v90, v123);
    sub_1D6CB9F0C(v124);
LABEL_5:
    v21 = v120 + 400;
    v19 = v121 - 1;
    v18 = v119;
    if (v121 == 1)
    {
      return;
    }
  }

  sub_1D6CBA14C(&v124[5] + 8, &v125, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
  if (v126 != 1)
  {
    sub_1D6CBA14C(v127, v128, &unk_1EC880A80, &type metadata for FeedTag.Overrides.Image);
    sub_1D5EED280(&v125);
    if (!v129)
    {
      v91 = &unk_1EC880A80;
      v92 = &type metadata for FeedTag.Overrides.Image;
      v93 = v128;
      goto LABEL_23;
    }

    v79 = v130;
    v80 = v131;
    sub_1D5EED4FC(v128);
    if (v80)
    {
      goto LABEL_24;
    }

    *v105 = v79;
    v78 = v97;
    goto LABEL_19;
  }

  v91 = &qword_1EDF13058;
  v92 = &type metadata for FeedTag.Overrides;
  v93 = &v125;
LABEL_23:
  sub_1D6CBA1CC(v93, v91, v92);
LABEL_24:
  __break(1u);
}