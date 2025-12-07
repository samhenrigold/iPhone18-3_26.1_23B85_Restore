uint64_t StaticRoom.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double StaticRoom.staticZones.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

uint64_t StaticRoom.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticRoom(0) + 36);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double StaticRoom.staticAccessoriesDictionary.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

double StaticRoom.staticActionSetsDictionary.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

double StaticRoom.staticCameraProfilesDictionary.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

double StaticRoom.staticMediaSystemsDictionary.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

double StaticRoom.staticMediaProfilesDictionary.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

double StaticRoom.staticServiceGroupsDictionary.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

double StaticRoom.staticServicesDictionary.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

double StaticRoom.actionSetsSortOrder.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

double StaticRoom.servicesSortOrder.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

double StaticRoom.roomServicesSortOrderGroupedByCategory.getter()
{
  type metadata accessor for StaticRoom(0);

  return result;
}

unint64_t sub_1D1D101A4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6564644165746164;
      break;
    case 3:
      result = 0x6C75616665447369;
      break;
    case 4:
      result = 0x6F5A636974617473;
      break;
    case 5:
      result = 0x6449656D6F68;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1D10390@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D25380(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D103B8(uint64_t a1)
{
  v2 = sub_1D1D25034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D103F4(uint64_t a1)
{
  v2 = sub_1D1D25034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRoom.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAB0, &qword_1D1EA7E50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D25034();
  sub_1D1E6930C();
  LOBYTE(v14) = 0;
  sub_1D1E66A7C();
  sub_1D1D1D848(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticRoom(0);
    LOBYTE(v14) = 1;
    sub_1D1E68ECC();
    v12 = v9;
    LOBYTE(v14) = 2;
    sub_1D1E669FC();
    sub_1D1D1D848(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
    v10 = v12;
    LOBYTE(v14) = 3;
    sub_1D1E68EDC();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAC0, &qword_1D1EA7E58);
    sub_1D1D251E8(&qword_1EC64DAC8, &qword_1EC64CD08, &protocol conformance descriptor for StaticZone, MEMORY[0x1E69E64F0]);
    sub_1D1E68E5C();
    LOBYTE(v14) = 5;
    sub_1D1E68F1C();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
    sub_1D1B86AB4();
    sub_1D1E68F1C();
    v14 = *(v3 + v10[11]);
    v13 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD10, &qword_1D1EA2680);
    sub_1D1CBE964();
    sub_1D1E68F1C();
    v14 = *(v3 + v10[12]);
    v13 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD20, &qword_1D1EA2688);
    sub_1D1CBEA50();
    sub_1D1E68F1C();
    v14 = *(v3 + v10[13]);
    v13 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD30, &qword_1D1EA2690);
    sub_1D1CBEB3C();
    sub_1D1E68F1C();
    v14 = *(v3 + v10[14]);
    v13 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD40, &qword_1D1EA2698);
    sub_1D1CBEC28();
    sub_1D1E68F1C();
    v14 = *(v3 + v12[15]);
    v13 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
    sub_1D1B86BA0();
    sub_1D1E68F1C();
    v14 = *(v3 + v12[16]);
    v13 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B43D98();
    sub_1D1E68F1C();
    v14 = *(v3 + v12[17]);
    v13 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1D25088(&qword_1EC644D58, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
    sub_1D1E68F1C();
    v14 = *(v3 + v12[18]);
    v13 = 14;
    sub_1D1E68F1C();
    v14 = *(v3 + v12[19]);
    v13 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAD0, &qword_1D1EA7E60);
    sub_1D1D25124();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticRoom.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v37 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = sub_1D1E669FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  sub_1D1D1D848(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v16 = type metadata accessor for StaticRoom(0);
  sub_1D1E678EC();
  v39 = v16;
  sub_1D1741C08(v2 + *(v16 + 24), v15, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    sub_1D1E6922C();
    sub_1D1D1D848(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v10 + 8))(v12, v9);
  }

  v17 = v39;
  sub_1D1E6922C();
  v18 = *(v2 + v17[8]);
  sub_1D1E6922C();
  if (v18)
  {
    sub_1D176F198(a1, v18);
  }

  v19 = v39;
  sub_1D1E676EC();
  sub_1D1859F70(a1, *(v2 + v19[10]));
  sub_1D185EA44(a1, *(v2 + v19[11]));
  sub_1D185E4C8(a1, *(v2 + v19[12]));
  sub_1D185DF4C(a1, *(v2 + v19[13]));
  sub_1D185D9D0(a1, *(v2 + v19[14]));
  sub_1D1859478(a1, *(v2 + v19[15]));
  sub_1D18599F4(a1, *(v2 + v19[16]));
  v20 = v19[17];
  v38 = v2;
  v21 = *(v2 + v20);
  MEMORY[0x1D3892850](*(v21 + 16));
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = *(v37 + 16);
    v24 = v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v25 = *(v37 + 72);
    v26 = (v37 + 8);
    do
    {
      v23(v8, v24, v4);
      sub_1D1E676EC();
      (*v26)(v8, v4);
      v24 += v25;
      --v22;
    }

    while (v22);
  }

  v27 = *(v38 + v39[18]);
  MEMORY[0x1D3892850](*(v27 + 16));
  v28 = *(v27 + 16);
  v29 = a1;
  v30 = v36;
  if (v28)
  {
    v31 = *(v37 + 16);
    v32 = v27 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v33 = *(v37 + 72);
    v34 = (v37 + 8);
    do
    {
      v31(v30, v32, v4);
      sub_1D1E676EC();
      (*v34)(v30, v4);
      v32 += v33;
      --v28;
    }

    while (v28);
  }

  return sub_1D186058C(v29, *(v38 + v39[19]));
}

uint64_t StaticRoom.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v40 - v4;
  v5 = sub_1D1E66A7C();
  v47 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAE0, &qword_1D1EA7E68);
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for StaticRoom(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D25034();
  v51 = v12;
  v16 = v52;
  sub_1D1E692FC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v8;
  v43 = v13;
  v44 = a1;
  v52 = v15;
  LOBYTE(v54) = 0;
  sub_1D1D1D848(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  v18 = v5;
  v19 = (v47 + 32);
  v20 = *(v47 + 32);
  v21 = v52;
  v20(v52, v50, v18);
  LOBYTE(v54) = 1;
  v22 = sub_1D1E68D2C();
  v41 = v18;
  v40 = v20;
  v50 = v19;
  v23 = v43;
  v24 = &v21[v43[5]];
  *v24 = v22;
  v24[1] = v25;
  sub_1D1E669FC();
  LOBYTE(v54) = 2;
  sub_1D1D1D848(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v26 = v46;
  sub_1D1E68CBC();
  sub_1D1741A90(v26, &v21[v23[6]], &qword_1EC642570, &qword_1D1E6C6A0);
  LOBYTE(v54) = 3;
  v21[v23[7]] = sub_1D1E68D3C() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAC0, &qword_1D1EA7E58);
  v53 = 4;
  sub_1D1D251E8(&qword_1EC64DAE8, &qword_1EC64CDF0, &protocol conformance descriptor for StaticZone, MEMORY[0x1E69E6510]);
  sub_1D1E68CBC();
  *&v21[v23[8]] = v54;
  LOBYTE(v54) = 5;
  v31 = v42;
  sub_1D1E68D7C();
  v40(&v21[v23[9]], v31, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
  v53 = 6;
  sub_1D1B86D78();
  sub_1D1E68D7C();
  *&v21[v23[10]] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD10, &qword_1D1EA2680);
  v53 = 7;
  sub_1D1CBF3B4();
  sub_1D1E68D7C();
  *&v21[v43[11]] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD20, &qword_1D1EA2688);
  v53 = 8;
  sub_1D1CBF4A0();
  sub_1D1E68D7C();
  v50 = 0;
  *&v52[v43[12]] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD30, &qword_1D1EA2690);
  v53 = 9;
  sub_1D1CBF58C();
  v32 = v50;
  sub_1D1E68D7C();
  v50 = v32;
  if (v32)
  {
    (*(v48 + 8))(v51, v49);
    LODWORD(v42) = 0;
    LODWORD(v45) = 0;
    LODWORD(v46) = 0;
    LODWORD(v48) = 0;
    LODWORD(v49) = 0;
    LODWORD(v51) = 0;
    LODWORD(v40) = 1;
  }

  else
  {
    *&v52[v43[13]] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD40, &qword_1D1EA2698);
    v53 = 10;
    sub_1D1CBF678();
    v33 = v50;
    sub_1D1E68D7C();
    v50 = v33;
    if (v33)
    {
      (*(v48 + 8))(v51, v49);
      LODWORD(v45) = 0;
      LODWORD(v46) = 0;
      LODWORD(v48) = 0;
      LODWORD(v49) = 0;
      LODWORD(v51) = 0;
      LODWORD(v40) = 1;
      LODWORD(v42) = 1;
    }

    else
    {
      *&v52[v43[14]] = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
      v53 = 11;
      sub_1D1B86E64();
      v34 = v50;
      sub_1D1E68D7C();
      v50 = v34;
      if (v34)
      {
        (*(v48 + 8))(v51, v49);
        LODWORD(v46) = 0;
        LODWORD(v48) = 0;
        LODWORD(v49) = 0;
        LODWORD(v51) = 0;
        LODWORD(v40) = 1;
        LODWORD(v42) = 1;
        LODWORD(v45) = 1;
      }

      else
      {
        *&v52[v43[15]] = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
        v53 = 12;
        sub_1D1B43CAC();
        v35 = v50;
        sub_1D1E68D7C();
        v50 = v35;
        if (v35)
        {
          (*(v48 + 8))(v51, v49);
          LODWORD(v48) = 0;
          LODWORD(v49) = 0;
          LODWORD(v51) = 0;
          LODWORD(v40) = 1;
          LODWORD(v42) = 1;
          LODWORD(v45) = 1;
          LODWORD(v46) = 1;
        }

        else
        {
          *&v52[v43[16]] = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
          v53 = 13;
          sub_1D1D25088(&qword_1EC644DA0, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
          v36 = v50;
          sub_1D1E68D7C();
          v50 = v36;
          if (v36)
          {
            (*(v48 + 8))(v51, v49);
            LODWORD(v49) = 0;
            LODWORD(v51) = 0;
            LODWORD(v40) = 1;
            LODWORD(v42) = 1;
            LODWORD(v45) = 1;
            LODWORD(v46) = 1;
            LODWORD(v48) = 1;
          }

          else
          {
            *&v52[v43[17]] = v54;
            v53 = 14;
            v37 = v50;
            sub_1D1E68D7C();
            v50 = v37;
            if (v37)
            {
              (*(v48 + 8))(v51, v49);
              LODWORD(v51) = 0;
              LODWORD(v40) = 1;
              LODWORD(v42) = 1;
              LODWORD(v45) = 1;
              LODWORD(v46) = 1;
              LODWORD(v48) = 1;
              LODWORD(v49) = 1;
            }

            else
            {
              *&v52[v43[18]] = v54;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAD0, &qword_1D1EA7E60);
              v53 = 15;
              sub_1D1D25284();
              v38 = v50;
              sub_1D1E68D7C();
              v50 = v38;
              if (!v38)
              {
                (*(v48 + 8))(v51, v49);
                v39 = v52;
                *&v52[v43[19]] = v54;
                sub_1D1D1D7E0(v39, v45, type metadata accessor for StaticRoom);
                __swift_destroy_boxed_opaque_existential_1(v44);
                return sub_1D1D1D890(v39, type metadata accessor for StaticRoom);
              }

              (*(v48 + 8))(v51, v49);
              LODWORD(v40) = 1;
              LODWORD(v42) = 1;
              LODWORD(v45) = 1;
              LODWORD(v46) = 1;
              LODWORD(v48) = 1;
              LODWORD(v49) = 1;
              LODWORD(v51) = 1;
            }
          }
        }
      }
    }
  }

  v27 = v47;
  __swift_destroy_boxed_opaque_existential_1(v44);
  v28 = *(v27 + 8);
  v28(v52, v41);

  v29 = v43;
  v30 = v52;
  sub_1D1741A30(&v52[v43[6]], &qword_1EC642570, &qword_1D1E6C6A0);

  v28(&v30[v29[9]], v41);

  if (v40)
  {

    if (v42)
    {
LABEL_7:

      if ((v45 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if (v42)
  {
    goto LABEL_7;
  }

  if (!v45)
  {
LABEL_8:
    if (v46)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:

  if (v46)
  {
LABEL_9:

    if ((v48 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v48)
  {
LABEL_10:
    if (v49)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:

  if (v49)
  {
LABEL_11:

    if (v51)
    {
    }

    return result;
  }

LABEL_18:
  if (v51)
  {
  }

  return result;
}

uint64_t StaticRoom.staticAccessories.getter()
{
  type metadata accessor for StaticRoom(0);

  return sub_1D1781AF4(v0);
}

uint64_t StaticRoom.staticActionSets.getter()
{
  type metadata accessor for StaticRoom(0);

  return sub_1D1782F48(v0);
}

uint64_t StaticRoom.staticCameraProfiles.getter()
{
  type metadata accessor for StaticRoom(0);

  return sub_1D1781428(v0);
}

uint64_t StaticRoom.staticMediaSystems.getter()
{
  type metadata accessor for StaticRoom(0);

  return sub_1D17818B0(v0);
}

uint64_t StaticRoom.staticMediaProfiles.getter()
{
  type metadata accessor for StaticRoom(0);

  return sub_1D178166C(v0);
}

uint64_t StaticRoom.staticServiceGroups.getter()
{
  type metadata accessor for StaticRoom(0);

  return sub_1D17821C0(v0);
}

uint64_t StaticRoom.staticServices.getter()
{
  type metadata accessor for StaticRoom(0);

  return sub_1D1781D38(v0);
}

uint64_t RoomType.id.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoomType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1D1D7E0(v1, v8, type metadata accessor for RoomType);
  v9 = (*(v3 + 48))(v8, 4, v2);
  if (v9 <= 1)
  {
    if (v9)
    {
      return 0x65536E6F69746361;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v11 = sub_1D1E66A1C();
      (*(v3 + 8))(v5, v2);
      return v11;
    }
  }

  else if (v9 == 2)
  {
    return 0x52736172656D6163;
  }

  else if (v9 == 3)
  {
    return 0x657469726F766166;
  }

  else
  {
    return 0x526E776F6E6B6E75;
  }
}

uint64_t RoomType.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoomType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1D1D7E0(v1, v8, type metadata accessor for RoomType);
  v9 = (*(v3 + 48))(v8, 4, v2);
  if (v9 <= 1)
  {
    if (!v9)
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x1D3892850](4);
      sub_1D1D1D848(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      return (*(v3 + 8))(v5, v2);
    }

    v10 = 0;
  }

  else if (v9 == 2)
  {
    v10 = 1;
  }

  else if (v9 == 3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  return MEMORY[0x1D3892850](v10);
}

uint64_t sub_1D1D12634(uint64_t (*a1)(void *))
{
  sub_1D1E6920C();
  a1(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D12694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D1E6920C();
  a3(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D126F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D1E6920C();
  a4(v6);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D1273C@<X0>(uint64_t *a1@<X8>)
{
  result = RoomType.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *StaticRoom.orderedStaticActionSets.getter()
{
  v1 = type metadata accessor for StaticRoom(0);

  v3 = sub_1D1782F48(v2);
  v4 = v3;
  v5 = *(v0 + *(v1 + 68));
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_1D1804318(*(v3 + 16), 0);
  v8 = *(type metadata accessor for StaticActionSet(0) - 8);
  v9 = sub_1D1806238(&v12, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v4);
  v10 = v12;

  sub_1D1716918(v10);
  if (v9 != v6)
  {
    __break(1u);
LABEL_4:

    v7 = MEMORY[0x1E69E7CC0];
  }

  v12 = v7;

  sub_1D1CC1BF4(&v12, v5);

  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t StaticRoom.orderedVisibleStaticActionSets(filterCategory:forDashboard:)(unsigned __int8 *a1, int a2)
{
  v47 = a2;
  v45 = type metadata accessor for StaticActionSet(0);
  v4 = *(v45 - 8);
  v5 = MEMORY[0x1EEE9AC00](v45);
  v49 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = v42 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v42 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v42 - v12;
  v48 = *a1;
  v14 = type metadata accessor for StaticRoom(0);

  v16 = sub_1D1782F48(v15);
  v17 = v16;
  v18 = *(v2 + *(v14 + 68));
  v19 = *(v16 + 16);
  if (v19)
  {
    v20 = sub_1D1804318(*(v16 + 16), 0);
    v21 = sub_1D1806238(v50, v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v19, v17);
    v22 = v50[0];
    v46 = v50[2];
    v42[1] = v50[4];
    v43 = v50[3];

    sub_1D1716918(v22);
    if (v21 == v19)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v50[0] = v20;

  sub_1D1CC1BF4(v50, v18);

  swift_bridgeObjectRelease_n();
  v23 = v50[0];
  v24 = v44;
  v46 = *(v50[0] + 16);
  if (v46)
  {
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    v43 = v11;
    while (v25 < *(v23 + 16))
    {
      v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v28 = *(v4 + 72);
      sub_1D1D1D7E0(v23 + v27 + v28 * v25, v13, type metadata accessor for StaticActionSet);
      if ((v47 & 1) != 0 && v13[*(v45 + 48)] != 1)
      {
        sub_1D1D1D890(v13, type metadata accessor for StaticActionSet);
      }

      else
      {
        sub_1D1D26328(v13, v11, type metadata accessor for StaticActionSet);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50[0] = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178CE74(0, v26[2] + 1, 1);
          v24 = v44;
          v26 = v50[0];
        }

        v31 = v26[2];
        v30 = v26[3];
        if (v31 >= v30 >> 1)
        {
          sub_1D178CE74((v30 > 1), v31 + 1, 1);
          v24 = v44;
          v26 = v50[0];
        }

        v26[2] = v31 + 1;
        v32 = v26 + v27 + v31 * v28;
        v11 = v43;
        sub_1D1D26328(v43, v32, type metadata accessor for StaticActionSet);
      }

      if (v46 == ++v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v33 = v26[2];
  if (v33)
  {
    v34 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    while (v34 < v26[2])
    {
      v36 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v37 = *(v4 + 72);
      sub_1D1D1D7E0(v26 + v36 + v37 * v34, v24, type metadata accessor for StaticActionSet);
      if (v48 == 8 || (sub_1D171B004(v48, *(v24 + *(v45 + 52))) & 1) != 0)
      {
        sub_1D1D26328(v24, v49, type metadata accessor for StaticActionSet);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v50[0] = v35;
        if ((v38 & 1) == 0)
        {
          sub_1D178CE74(0, *(v35 + 16) + 1, 1);
          v24 = v44;
          v35 = v50[0];
        }

        v40 = *(v35 + 16);
        v39 = *(v35 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D178CE74((v39 > 1), v40 + 1, 1);
          v24 = v44;
          v35 = v50[0];
        }

        *(v35 + 16) = v40 + 1;
        sub_1D1D26328(v49, v35 + v36 + v40 * v37, type metadata accessor for StaticActionSet);
      }

      else
      {
        sub_1D1D1D890(v24, type metadata accessor for StaticActionSet);
      }

      if (v33 == ++v34)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
    swift_bridgeObjectRelease_n();

    __break(1u);
    return result;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_31:

  return v35;
}

uint64_t StaticRoom.status(matterSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v573 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B828, &qword_1D1E9AD28);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v604 = &v445 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v598 = &v445 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B820, &qword_1D1E9AD20);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v603 = &v445 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v572 = &v445 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B818, &qword_1D1E9AD18);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v602 = &v445 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v571 = &v445 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B810, &qword_1D1E9AD10);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v601 = &v445 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v570 = &v445 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B808, &qword_1D1E9AD08);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v600 = &v445 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v569 = &v445 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B800, &qword_1D1E9AD00);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v599 = &v445 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v597 = &v445 - v27;
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAF8, &qword_1D1EA7E70);
  v567 = *(v568 - 8);
  MEMORY[0x1EEE9AC00](v568);
  v508 = &v445 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB00, &qword_1D1EA7E78);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v506 = &v445 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v507 = &v445 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v505 = &v445 - v34;
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB08, &qword_1D1EA7E80);
  v565 = *(v566 - 8);
  MEMORY[0x1EEE9AC00](v566);
  v504 = &v445 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B868, &qword_1D1E9AD68);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v502 = &v445 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v503 = &v445 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v501 = &v445 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB10, &qword_1D1EA7E88);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v561 = &v445 - v43;
  v563 = type metadata accessor for OccupancySensorStatusItem(0);
  v562 = *(v563 - 8);
  MEMORY[0x1EEE9AC00](v563);
  v500 = &v445 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7F8, &qword_1D1E9ACF8);
  v45 = MEMORY[0x1EEE9AC00](v564);
  v596 = &v445 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v595 = &v445 - v47;
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB18, &qword_1D1EA7E90);
  v559 = *(v560 - 8);
  MEMORY[0x1EEE9AC00](v560);
  v499 = &v445 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB20, &qword_1D1EA7E98);
  v50 = MEMORY[0x1EEE9AC00](v49 - 8);
  v497 = &v445 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v498 = &v445 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v496 = &v445 - v54;
  v558 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB28, &qword_1D1EA7EA0);
  v557 = *(v558 - 8);
  MEMORY[0x1EEE9AC00](v558);
  v495 = &v445 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B860, &qword_1D1E9AD60);
  v57 = MEMORY[0x1EEE9AC00](v56 - 8);
  v493 = &v445 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v494 = &v445 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v492 = &v445 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB30, &qword_1D1EA7EA8);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v553 = &v445 - v63;
  v555 = type metadata accessor for MotionSensorStatusItem(0);
  v554 = *(v555 - 8);
  MEMORY[0x1EEE9AC00](v555);
  v491 = &v445 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7F0, &qword_1D1E9ACF0);
  v65 = MEMORY[0x1EEE9AC00](v556);
  v594 = &v445 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v628 = &v445 - v67;
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB38, &qword_1D1EA7EB0);
  v551 = *(v552 - 8);
  MEMORY[0x1EEE9AC00](v552);
  v490 = &v445 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB40, &qword_1D1EA7EB8);
  v70 = MEMORY[0x1EEE9AC00](v69 - 8);
  v488 = &v445 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v489 = &v445 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v487 = &v445 - v74;
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB48, &qword_1D1EA7EC0);
  v549 = *(v550 - 8);
  MEMORY[0x1EEE9AC00](v550);
  v486 = &v445 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B858, &qword_1D1E9AD58);
  v77 = MEMORY[0x1EEE9AC00](v76 - 8);
  v484 = &v445 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v485 = &v445 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v483 = &v445 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB50, &qword_1D1EA7EC8);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v545 = &v445 - v83;
  v547 = type metadata accessor for ContactSensorStatusItem(0);
  v546 = *(v547 - 8);
  MEMORY[0x1EEE9AC00](v547);
  v482 = &v445 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7E8, &qword_1D1E9ACE8);
  v85 = MEMORY[0x1EEE9AC00](v548);
  v593 = &v445 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v627 = &v445 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7E0, &qword_1D1E9ACE0);
  v89 = MEMORY[0x1EEE9AC00](v88 - 8);
  v592 = &v445 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v626 = &v445 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7D8, &qword_1D1E9ACD8);
  v93 = MEMORY[0x1EEE9AC00](v92 - 8);
  v591 = &v445 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v625 = &v445 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7D0, &qword_1D1E9ACD0);
  v97 = MEMORY[0x1EEE9AC00](v96 - 8);
  v590 = &v445 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v97);
  v624 = &v445 - v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7C8, &qword_1D1E9ACC8);
  v101 = MEMORY[0x1EEE9AC00](v100 - 8);
  v589 = &v445 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v101);
  v623 = &v445 - v103;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB58, &qword_1D1EA7ED0);
  v543 = *(v544 - 8);
  MEMORY[0x1EEE9AC00](v544);
  v481 = &v445 - v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB60, &qword_1D1EA7ED8);
  v106 = MEMORY[0x1EEE9AC00](v105 - 8);
  v478 = &v445 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x1EEE9AC00](v106);
  v480 = &v445 - v109;
  MEMORY[0x1EEE9AC00](v108);
  v477 = &v445 - v110;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB68, &qword_1D1EA7EE0);
  v541 = *(v542 - 8);
  MEMORY[0x1EEE9AC00](v542);
  v479 = &v445 - v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B850, &qword_1D1E9AD50);
  v113 = MEMORY[0x1EEE9AC00](v112 - 8);
  v475 = &v445 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = MEMORY[0x1EEE9AC00](v113);
  v476 = &v445 - v116;
  MEMORY[0x1EEE9AC00](v115);
  v474 = &v445 - v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB70, &qword_1D1EA7EE8);
  MEMORY[0x1EEE9AC00](v118 - 8);
  v537 = &v445 - v119;
  v539 = type metadata accessor for WindowStatusItem(0);
  v538 = *(v539 - 8);
  MEMORY[0x1EEE9AC00](v539);
  v473 = &v445 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7C0, &qword_1D1E9ACC0);
  v121 = MEMORY[0x1EEE9AC00](v540);
  v588 = &v445 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v121);
  v622 = &v445 - v123;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB78, &qword_1D1EA7EF0);
  v533 = *(v534 - 8);
  MEMORY[0x1EEE9AC00](v534);
  v472 = &v445 - v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB80, &qword_1D1EA7EF8);
  v126 = MEMORY[0x1EEE9AC00](v125 - 8);
  v469 = &v445 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = MEMORY[0x1EEE9AC00](v126);
  v471 = &v445 - v129;
  MEMORY[0x1EEE9AC00](v128);
  v468 = &v445 - v130;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB88, &qword_1D1EA7F00);
  v530 = *(v531 - 8);
  MEMORY[0x1EEE9AC00](v531);
  v470 = &v445 - v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B848, &qword_1D1E9AD48);
  v133 = MEMORY[0x1EEE9AC00](v132 - 8);
  v466 = &v445 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = MEMORY[0x1EEE9AC00](v133);
  v467 = &v445 - v136;
  MEMORY[0x1EEE9AC00](v135);
  v465 = &v445 - v137;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB90, &qword_1D1EA7F08);
  MEMORY[0x1EEE9AC00](v138 - 8);
  v526 = &v445 - v139;
  v528 = type metadata accessor for DoorStatusItem(0);
  v527 = *(v528 - 8);
  MEMORY[0x1EEE9AC00](v528);
  v464 = &v445 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7B8, &qword_1D1E9ACB8);
  v141 = MEMORY[0x1EEE9AC00](v529);
  v587 = &v445 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v141);
  v621 = &v445 - v143;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB98, &qword_1D1EA7F10);
  v524 = *(v525 - 8);
  MEMORY[0x1EEE9AC00](v525);
  v463 = &v445 - v144;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBA0, &qword_1D1EA7F18);
  v146 = MEMORY[0x1EEE9AC00](v145 - 8);
  v460 = &v445 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = MEMORY[0x1EEE9AC00](v146);
  v462 = &v445 - v149;
  MEMORY[0x1EEE9AC00](v148);
  v459 = &v445 - v150;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBA8, &qword_1D1EA7F20);
  v522 = *(v523 - 8);
  MEMORY[0x1EEE9AC00](v523);
  v461 = &v445 - v151;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B840, &qword_1D1E9AD40);
  v153 = MEMORY[0x1EEE9AC00](v152 - 8);
  v457 = &v445 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = MEMORY[0x1EEE9AC00](v153);
  v458 = &v445 - v156;
  MEMORY[0x1EEE9AC00](v155);
  v456 = &v445 - v157;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBB0, &qword_1D1EA7F28);
  MEMORY[0x1EEE9AC00](v158 - 8);
  v519 = &v445 - v159;
  v520 = type metadata accessor for GarageDoorStatusItem(0);
  v518 = *(v520 - 8);
  MEMORY[0x1EEE9AC00](v520);
  v455 = &v445 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7B0, &qword_1D1E9ACB0);
  v161 = MEMORY[0x1EEE9AC00](v521);
  v586 = &v445 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v161);
  v620 = &v445 - v163;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7A8, &qword_1D1E9ACA8);
  v165 = MEMORY[0x1EEE9AC00](v164 - 8);
  v585 = &v445 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v165);
  v619 = &v445 - v167;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7A0, &qword_1D1E9ACA0);
  v169 = MEMORY[0x1EEE9AC00](v168 - 8);
  v584 = &v445 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v169);
  v618 = &v445 - v171;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B798, &qword_1D1E9AC98);
  v173 = MEMORY[0x1EEE9AC00](v172 - 8);
  v583 = &v445 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v173);
  v617 = &v445 - v175;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B790, &qword_1D1E9AC90);
  v177 = MEMORY[0x1EEE9AC00](v176 - 8);
  v582 = &v445 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v177);
  v616 = &v445 - v179;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B788, &qword_1D1E9AC88);
  v181 = MEMORY[0x1EEE9AC00](v180 - 8);
  v581 = &v445 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v181);
  v615 = &v445 - v183;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B740, &qword_1D1E9AC40);
  v185 = MEMORY[0x1EEE9AC00](v184 - 8);
  v580 = &v445 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v185);
  v614 = &v445 - v187;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B748, &qword_1D1E9AC48);
  v189 = MEMORY[0x1EEE9AC00](v188 - 8);
  v579 = &v445 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v189);
  v613 = &v445 - v191;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBB8, &qword_1D1EA7F30);
  v516 = *(v517 - 8);
  MEMORY[0x1EEE9AC00](v517);
  v454 = &v445 - v192;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBC0, &qword_1D1EA7F38);
  v194 = MEMORY[0x1EEE9AC00](v193 - 8);
  v451 = &v445 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = MEMORY[0x1EEE9AC00](v194);
  v453 = &v445 - v197;
  MEMORY[0x1EEE9AC00](v196);
  v450 = &v445 - v198;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBC8, &qword_1D1EA7F40);
  v514 = *(v515 - 8);
  MEMORY[0x1EEE9AC00](v515);
  v452 = &v445 - v199;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B750, &qword_1D1E9AC50);
  v201 = MEMORY[0x1EEE9AC00](v200 - 8);
  v448 = &v445 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = MEMORY[0x1EEE9AC00](v201);
  v449 = &v445 - v204;
  MEMORY[0x1EEE9AC00](v203);
  v447 = &v445 - v205;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBD0, &qword_1D1EA7F48);
  MEMORY[0x1EEE9AC00](v206 - 8);
  v511 = &v445 - v207;
  v510 = type metadata accessor for BlindsStatusItem(0);
  v509 = *(v510 - 8);
  MEMORY[0x1EEE9AC00](v510);
  v446 = &v445 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0);
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B780, &qword_1D1E9AC80);
  v209 = MEMORY[0x1EEE9AC00](v513);
  v578 = &v445 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v209);
  v612 = &v445 - v211;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B758, &qword_1D1E9AC58);
  v213 = MEMORY[0x1EEE9AC00](v212 - 8);
  v577 = &v445 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v213);
  v611 = &v445 - v215;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B760, &qword_1D1E9AC60);
  v217 = MEMORY[0x1EEE9AC00](v216 - 8);
  v576 = &v445 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v217);
  v610 = &v445 - v219;
  v220 = type metadata accessor for StatusItemLocation(0);
  MEMORY[0x1EEE9AC00](v220 - 8);
  v222 = &v445 - ((v221 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B768, &qword_1D1E9AC68);
  v224 = MEMORY[0x1EEE9AC00](v223 - 8);
  v575 = &v445 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v224);
  v609 = &v445 - v226;
  v227 = type metadata accessor for StaticRoom(0);
  v228 = *(v2 + v227[10]);
  v229 = sub_1D18DBDB4(MEMORY[0x1E69E7CC0]);
  v632[2] = a1;
  v230 = sub_1D18FC6E4(v229, sub_1D1D25348, v632, v228);
  v631[2] = a1;
  v512 = sub_1D1789DAC(sub_1D1D25364, v631, v230);

  sub_1D1D24618(v228, v230, sub_1D1D258AC, sub_1D1D258AC);

  swift_bridgeObjectRelease_n();
  v231 = v2;
  v232 = *(v2 + v227[16]);
  v233 = sub_1D1D1D2C8(v232, sub_1D1D1EA84, sub_1D1D1EA84);
  v536 = sub_1D1D1D2C8(*(v2 + v227[14]), sub_1D1D1F1EC, sub_1D1D1F1EC);
  v535 = sub_1D1D1D2C8(*(v2 + v227[13]), sub_1D1D1F5D8, sub_1D1D1F5D8);
  v234 = sub_1D1E66A7C();
  v235 = *(v234 - 8);
  v236 = *(v235 + 16);
  v236(v222, v231, v234);
  v237 = *(v235 + 56);
  v237(v222, 0, 1, v234);
  swift_bridgeObjectRetain_n();
  sub_1D1B34554(v232, v222, v609);
  v630 = v235 + 56;
  v629 = v231;
  v608 = v235 + 16;
  v607 = v236;
  v236(v222, v231, v234);
  v532 = v234;
  v238 = v234;
  v239 = v511;
  v605 = v237;
  v237(v222, 0, 1, v238);
  v240 = v510;
  v241 = v232;
  v242 = v509;
  v606 = v222;
  sub_1D1B35B48(v241, v222, v610);

  sub_1D1B37208(v243, v611);

  sub_1D1B53CE8(v244, v239);
  if ((*(v242 + 48))(v239, 1, v240) == 1)
  {
    sub_1D1741A30(v239, &qword_1EC64DBD0, &qword_1D1EA7F48);

    v246 = v450;
    sub_1D1D083F4(v245, v450);
    v247 = v453;
    sub_1D1741C08(v246, v453, &qword_1EC64DBC0, &qword_1D1EA7F38);
    v248 = v451;
    sub_1D1741C08(v247, v451, &qword_1EC64DBC0, &qword_1D1EA7F38);
    v249 = v248;
    v250 = v454;
    sub_1D1741A90(v249, v454, &qword_1EC64DBC0, &qword_1D1EA7F38);
    sub_1D1741A30(v246, &qword_1EC64DBC0, &qword_1D1EA7F38);
    sub_1D1741A30(v247, &qword_1EC64DBC0, &qword_1D1EA7F38);
    v251 = v612;
    (*(v514 + 56))(v612, 1, 1, v515);
    v252 = *(v513 + 52);
    sub_1D1741A90(v250, v251 + v252, &qword_1EC64DBB8, &qword_1D1EA7F30);
    (*(v516 + 56))(v251 + v252, 0, 1, v517);
  }

  else
  {
    v253 = v446;
    sub_1D1D26328(v239, v446, type metadata accessor for BlindsStatusItem);
    v254 = v447;
    sub_1D1D1D7E0(v253, v447, type metadata accessor for BlindsStatusItem);
    (*(v242 + 56))(v254, 0, 1, v240);
    v255 = v449;
    sub_1D1741C08(v254, v449, &qword_1EC64B750, &qword_1D1E9AC50);
    v256 = v448;
    sub_1D1741C08(v255, v448, &qword_1EC64B750, &qword_1D1E9AC50);
    v257 = v256;
    v258 = v452;
    sub_1D1741A90(v257, v452, &qword_1EC64B750, &qword_1D1E9AC50);
    sub_1D1741A30(v254, &qword_1EC64B750, &qword_1D1E9AC50);
    sub_1D1D1D890(v253, type metadata accessor for BlindsStatusItem);
    sub_1D1741A30(v255, &qword_1EC64B750, &qword_1D1E9AC50);
    v259 = v258;
    v260 = v612;
    sub_1D1741A90(v259, v612, &qword_1EC64DBC8, &qword_1D1EA7F40);
    (*(v514 + 56))(v260, 0, 1, v515);
    (*(v516 + 56))(v260 + *(v513 + 52), 1, 1, v517);
  }

  sub_1D1B37BA0(v261, v613);

  sub_1D1B38748(v262, v614);
  v634[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBD8, &qword_1D1EA7F50);
  v634[4] = sub_1D17D8EA8(&qword_1EC64DBE0, &qword_1EC64DBD8, &qword_1D1EA7F50, MEMORY[0x1E69E6340]);
  v634[0] = v512;
  sub_1D1B4A8AC(v634, v615);

  sub_1D1B3AE7C(v263, v616);

  sub_1D1B41C84(v264, v617);

  sub_1D1B40B20(v265, v618);

  sub_1D1B55400(v266, v619);

  v268 = v519;
  sub_1D1B56598(v267, v519);
  v269 = v518;
  v270 = v520;
  v271 = (*(v518 + 48))(v268, 1, v520);
  v272 = v233;
  v273 = v526;
  if (v271 == 1)
  {
    sub_1D1741A30(v268, &qword_1EC64DBB0, &qword_1D1EA7F28);

    v275 = v459;
    sub_1D1D0917C(v274, v459);
    v276 = v462;
    sub_1D1741C08(v275, v462, &qword_1EC64DBA0, &qword_1D1EA7F18);
    v277 = v460;
    sub_1D1741C08(v276, v460, &qword_1EC64DBA0, &qword_1D1EA7F18);
    v278 = v277;
    v279 = v463;
    sub_1D1741A90(v278, v463, &qword_1EC64DBA0, &qword_1D1EA7F18);
    sub_1D1741A30(v275, &qword_1EC64DBA0, &qword_1D1EA7F18);
    sub_1D1741A30(v276, &qword_1EC64DBA0, &qword_1D1EA7F18);
    v280 = v620;
    (*(v522 + 56))(v620, 1, 1, v523);
    v281 = *(v521 + 52);
    sub_1D1741A90(v279, v280 + v281, &qword_1EC64DB98, &qword_1D1EA7F10);
    (*(v524 + 56))(v280 + v281, 0, 1, v525);
  }

  else
  {
    v282 = v455;
    sub_1D1D26328(v268, v455, type metadata accessor for GarageDoorStatusItem);
    v283 = v456;
    sub_1D1D1D7E0(v282, v456, type metadata accessor for GarageDoorStatusItem);
    (*(v269 + 56))(v283, 0, 1, v270);
    v284 = v458;
    sub_1D1741C08(v283, v458, &qword_1EC64B840, &qword_1D1E9AD40);
    v285 = v457;
    sub_1D1741C08(v284, v457, &qword_1EC64B840, &qword_1D1E9AD40);
    v286 = v285;
    v287 = v461;
    sub_1D1741A90(v286, v461, &qword_1EC64B840, &qword_1D1E9AD40);
    sub_1D1741A30(v283, &qword_1EC64B840, &qword_1D1E9AD40);
    v288 = v282;
    v272 = v233;
    sub_1D1D1D890(v288, type metadata accessor for GarageDoorStatusItem);
    sub_1D1741A30(v284, &qword_1EC64B840, &qword_1D1E9AD40);
    v289 = v620;
    sub_1D1741A90(v287, v620, &qword_1EC64DBA8, &qword_1D1EA7F20);
    (*(v522 + 56))(v289, 0, 1, v523);
    (*(v524 + 56))(v289 + *(v521 + 52), 1, 1, v525);
  }

  sub_1D1B57AD4(v290, v273);
  v291 = v527;
  v292 = v528;
  v293 = (*(v527 + 48))(v273, 1, v528);
  v294 = v537;
  if (v293 == 1)
  {
    sub_1D1741A30(v273, &qword_1EC64DB90, &qword_1D1EA7F08);

    v296 = v468;
    sub_1D1D09F00(v295, v468);
    v297 = v471;
    sub_1D1741C08(v296, v471, &qword_1EC64DB80, &qword_1D1EA7EF8);
    v298 = v469;
    sub_1D1741C08(v297, v469, &qword_1EC64DB80, &qword_1D1EA7EF8);
    v299 = v298;
    v300 = v472;
    sub_1D1741A90(v299, v472, &qword_1EC64DB80, &qword_1D1EA7EF8);
    sub_1D1741A30(v296, &qword_1EC64DB80, &qword_1D1EA7EF8);
    sub_1D1741A30(v297, &qword_1EC64DB80, &qword_1D1EA7EF8);
    v301 = v621;
    (*(v530 + 56))(v621, 1, 1, v531);
    v302 = *(v529 + 52);
    sub_1D1741A90(v300, v301 + v302, &qword_1EC64DB78, &qword_1D1EA7EF0);
    (*(v533 + 56))(v301 + v302, 0, 1, v534);
  }

  else
  {
    v303 = v464;
    sub_1D1D26328(v273, v464, type metadata accessor for DoorStatusItem);
    v304 = v465;
    sub_1D1D1D7E0(v303, v465, type metadata accessor for DoorStatusItem);
    (*(v291 + 56))(v304, 0, 1, v292);
    v305 = v467;
    sub_1D1741C08(v304, v467, &qword_1EC64B848, &qword_1D1E9AD48);
    v306 = v466;
    sub_1D1741C08(v305, v466, &qword_1EC64B848, &qword_1D1E9AD48);
    v307 = v306;
    v308 = v470;
    sub_1D1741A90(v307, v470, &qword_1EC64B848, &qword_1D1E9AD48);
    sub_1D1741A30(v304, &qword_1EC64B848, &qword_1D1E9AD48);
    sub_1D1D1D890(v303, type metadata accessor for DoorStatusItem);
    sub_1D1741A30(v305, &qword_1EC64B848, &qword_1D1E9AD48);
    v309 = v621;
    sub_1D1741A90(v308, v621, &qword_1EC64DB88, &qword_1D1EA7F00);
    (*(v530 + 56))(v309, 0, 1, v531);
    (*(v533 + 56))(v309 + *(v529 + 52), 1, 1, v534);
  }

  sub_1D1B59184(v310, v294);
  v311 = v538;
  v312 = v539;
  v313 = (*(v538 + 48))(v294, 1, v539);
  v574 = v272;
  if (v313 == 1)
  {
    sub_1D1741A30(v294, &qword_1EC64DB70, &qword_1D1EA7EE8);

    v315 = v477;
    sub_1D1D0AC84(v314, v477);
    v316 = v480;
    sub_1D1741C08(v315, v480, &qword_1EC64DB60, &qword_1D1EA7ED8);
    v317 = v478;
    sub_1D1741C08(v316, v478, &qword_1EC64DB60, &qword_1D1EA7ED8);
    v318 = v317;
    v319 = v481;
    sub_1D1741A90(v318, v481, &qword_1EC64DB60, &qword_1D1EA7ED8);
    sub_1D1741A30(v315, &qword_1EC64DB60, &qword_1D1EA7ED8);
    sub_1D1741A30(v316, &qword_1EC64DB60, &qword_1D1EA7ED8);
    v320 = v622;
    (*(v541 + 56))(v622, 1, 1, v542);
    v321 = *(v540 + 52);
    sub_1D1741A90(v319, v320 + v321, &qword_1EC64DB58, &qword_1D1EA7ED0);
    (*(v543 + 56))(v320 + v321, 0, 1, v544);
  }

  else
  {
    v322 = v473;
    sub_1D1D26328(v294, v473, type metadata accessor for WindowStatusItem);
    v323 = v474;
    sub_1D1D1D7E0(v322, v474, type metadata accessor for WindowStatusItem);
    (*(v311 + 56))(v323, 0, 1, v312);
    v324 = v476;
    sub_1D1741C08(v323, v476, &qword_1EC64B850, &qword_1D1E9AD50);
    v325 = v475;
    sub_1D1741C08(v324, v475, &qword_1EC64B850, &qword_1D1E9AD50);
    v326 = v325;
    v327 = v479;
    sub_1D1741A90(v326, v479, &qword_1EC64B850, &qword_1D1E9AD50);
    sub_1D1741A30(v323, &qword_1EC64B850, &qword_1D1E9AD50);
    sub_1D1D1D890(v322, type metadata accessor for WindowStatusItem);
    sub_1D1741A30(v324, &qword_1EC64B850, &qword_1D1E9AD50);
    v328 = v622;
    sub_1D1741A90(v327, v622, &qword_1EC64DB68, &qword_1D1EA7EE0);
    (*(v541 + 56))(v328, 0, 1, v542);
    (*(v543 + 56))(v328 + *(v540 + 52), 1, 1, v544);
  }

  v329 = v606;
  v330 = v629;
  v331 = v532;
  v332 = v607;
  v607(v606, v629, v532);
  v333 = v605;
  v605(v329, 0, 1, v331);

  sub_1D1B676EC(v334, v329, v623);
  v332(v329, v330, v331);
  v333(v329, 0, 1, v331);

  sub_1D1B67F90(v335, v329, v624);
  v332(v329, v330, v331);
  v333(v329, 0, 1, v331);

  sub_1D1B687F4(v336, v329, v625);

  sub_1D1B4468C(v337, v626);
  v332(v329, v330, v331);
  v333(v329, 0, 1, v331);

  v339 = v545;
  sub_1D1B69058(v338, v329, v545);
  v340 = v546;
  v341 = v547;
  if ((*(v546 + 48))(v339, 1, v547) == 1)
  {
    sub_1D1741A30(v339, &qword_1EC64DB50, &qword_1D1EA7EC8);
    v332(v329, v330, v331);
    v333(v329, 0, 1, v331);
    v342 = v574;

    v344 = v487;
    sub_1D1B6B318(v343, v329, v487);
    v345 = v329;
    v346 = v489;
    sub_1D1741C08(v344, v489, &qword_1EC64DB40, &qword_1D1EA7EB8);
    v347 = v488;
    sub_1D1741C08(v346, v488, &qword_1EC64DB40, &qword_1D1EA7EB8);
    v348 = v347;
    v349 = v490;
    sub_1D1741A90(v348, v490, &qword_1EC64DB40, &qword_1D1EA7EB8);
    sub_1D1741A30(v344, &qword_1EC64DB40, &qword_1D1EA7EB8);
    sub_1D1741A30(v346, &qword_1EC64DB40, &qword_1D1EA7EB8);
    v350 = v627;
    (*(v549 + 56))(v627, 1, 1, v550);
    v351 = *(v548 + 52);
    sub_1D1741A90(v349, v350 + v351, &qword_1EC64DB38, &qword_1D1EA7EB0);
    (*(v551 + 56))(v350 + v351, 0, 1, v552);
  }

  else
  {
    v352 = v339;
    v353 = v482;
    sub_1D1D26328(v352, v482, type metadata accessor for ContactSensorStatusItem);
    v354 = v483;
    sub_1D1D1D7E0(v353, v483, type metadata accessor for ContactSensorStatusItem);
    (*(v340 + 56))(v354, 0, 1, v341);
    v345 = v329;
    v355 = v485;
    sub_1D1741C08(v354, v485, &qword_1EC64B858, &qword_1D1E9AD58);
    v356 = v484;
    sub_1D1741C08(v355, v484, &qword_1EC64B858, &qword_1D1E9AD58);
    v357 = v356;
    v358 = v486;
    sub_1D1741A90(v357, v486, &qword_1EC64B858, &qword_1D1E9AD58);
    sub_1D1741A30(v354, &qword_1EC64B858, &qword_1D1E9AD58);
    sub_1D1D1D890(v353, type metadata accessor for ContactSensorStatusItem);
    sub_1D1741A30(v355, &qword_1EC64B858, &qword_1D1E9AD58);
    v359 = v627;
    sub_1D1741A90(v358, v627, &qword_1EC64DB48, &qword_1D1EA7EC0);
    (*(v549 + 56))(v359, 0, 1, v550);
    (*(v551 + 56))(v359 + *(v548 + 52), 1, 1, v552);
    v342 = v574;
  }

  v607(v345, v629, v331);
  v333(v345, 0, 1, v331);

  v361 = v553;
  sub_1D1B69978(v360, v345, v553);
  v362 = v554;
  v363 = v555;
  if ((*(v554 + 48))(v361, 1, v555) == 1)
  {
    v364 = v345;
    sub_1D1741A30(v361, &qword_1EC64DB30, &qword_1D1EA7EA8);
    v365 = v345;
    v366 = v607;
    v607(v365, v629, v331);
    v333(v364, 0, 1, v331);

    v368 = v496;
    sub_1D1B6BC38(v367, v364, v496);
    v369 = v498;
    sub_1D1741C08(v368, v498, &qword_1EC64DB20, &qword_1D1EA7E98);
    v370 = v497;
    sub_1D1741C08(v369, v497, &qword_1EC64DB20, &qword_1D1EA7E98);
    v371 = v370;
    v372 = v499;
    sub_1D1741A90(v371, v499, &qword_1EC64DB20, &qword_1D1EA7E98);
    sub_1D1741A30(v368, &qword_1EC64DB20, &qword_1D1EA7E98);
    sub_1D1741A30(v369, &qword_1EC64DB20, &qword_1D1EA7E98);
    v373 = v628;
    (*(v557 + 56))(v628, 1, 1, v558);
    v374 = *(v556 + 52);
    sub_1D1741A90(v372, v373 + v374, &qword_1EC64DB18, &qword_1D1EA7E90);
    (*(v559 + 56))(v373 + v374, 0, 1, v560);
  }

  else
  {
    v375 = v491;
    sub_1D1D26328(v361, v491, type metadata accessor for MotionSensorStatusItem);
    v376 = v492;
    sub_1D1D1D7E0(v375, v492, type metadata accessor for MotionSensorStatusItem);
    (*(v362 + 56))(v376, 0, 1, v363);
    v377 = v494;
    sub_1D1741C08(v376, v494, &qword_1EC64B860, &qword_1D1E9AD60);
    v378 = v493;
    sub_1D1741C08(v377, v493, &qword_1EC64B860, &qword_1D1E9AD60);
    v379 = v378;
    v380 = v495;
    sub_1D1741A90(v379, v495, &qword_1EC64B860, &qword_1D1E9AD60);
    sub_1D1741A30(v376, &qword_1EC64B860, &qword_1D1E9AD60);
    sub_1D1D1D890(v375, type metadata accessor for MotionSensorStatusItem);
    sub_1D1741A30(v377, &qword_1EC64B860, &qword_1D1E9AD60);
    v381 = v628;
    sub_1D1741A90(v380, v628, &qword_1EC64DB28, &qword_1D1EA7EA0);
    (*(v557 + 56))(v381, 0, 1, v558);
    (*(v559 + 56))(v381 + *(v556 + 52), 1, 1, v560);
    v366 = v607;
  }

  v382 = v606;
  v383 = v629;
  v366(v606, v629, v331);
  v333(v382, 0, 1, v331);

  v385 = v561;
  sub_1D1B6A208(v384, v382, v561);
  v386 = v562;
  v387 = v563;
  if ((*(v562 + 48))(v385, 1, v563) == 1)
  {
    sub_1D1741A30(v385, &qword_1EC64DB10, &qword_1D1EA7E88);
    v388 = v606;
    v366(v606, v383, v331);
    v605(v388, 0, 1, v331);

    v390 = v505;
    sub_1D1B6C4D0(v389, v388, v505);
    v391 = v507;
    sub_1D1741C08(v390, v507, &qword_1EC64DB00, &qword_1D1EA7E78);
    v392 = v331;
    v393 = v506;
    sub_1D1741C08(v391, v506, &qword_1EC64DB00, &qword_1D1EA7E78);
    v394 = v393;
    v395 = v508;
    sub_1D1741A90(v394, v508, &qword_1EC64DB00, &qword_1D1EA7E78);
    sub_1D1741A30(v390, &qword_1EC64DB00, &qword_1D1EA7E78);
    sub_1D1741A30(v391, &qword_1EC64DB00, &qword_1D1EA7E78);
    v396 = v595;
    (*(v565 + 56))(v595, 1, 1, v566);
    v397 = *(v564 + 52);
    sub_1D1741A90(v395, v396 + v397, &qword_1EC64DAF8, &qword_1D1EA7E70);
    (*(v567 + 56))(v396 + v397, 0, 1, v568);
    v398 = v388;
    v399 = v605;
  }

  else
  {
    v400 = v500;
    sub_1D1D26328(v385, v500, type metadata accessor for OccupancySensorStatusItem);
    v401 = v501;
    sub_1D1D1D7E0(v400, v501, type metadata accessor for OccupancySensorStatusItem);
    (*(v386 + 56))(v401, 0, 1, v387);
    v402 = v503;
    sub_1D1741C08(v401, v503, &qword_1EC64B868, &qword_1D1E9AD68);
    v392 = v331;
    v403 = v502;
    sub_1D1741C08(v402, v502, &qword_1EC64B868, &qword_1D1E9AD68);
    v404 = v403;
    v405 = v504;
    sub_1D1741A90(v404, v504, &qword_1EC64B868, &qword_1D1E9AD68);
    sub_1D1741A30(v401, &qword_1EC64B868, &qword_1D1E9AD68);
    v406 = v400;
    v399 = v605;
    sub_1D1D1D890(v406, type metadata accessor for OccupancySensorStatusItem);
    sub_1D1741A30(v402, &qword_1EC64B868, &qword_1D1E9AD68);
    v396 = v595;
    sub_1D1741A90(v405, v595, &qword_1EC64DB08, &qword_1D1EA7E80);
    (*(v565 + 56))(v396, 0, 1, v566);
    (*(v567 + 56))(v396 + *(v564 + 52), 1, 1, v568);
    v398 = v606;
  }

  v407 = v597;
  sub_1D1B3C9B0(v536, v535, v597);

  v409 = v569;
  sub_1D1B3E58C(v408, v569);
  v399(v398, 1, 1, v392);

  v411 = v570;
  sub_1D1B6AAAC(v410, v398, v570);

  v413 = v571;
  sub_1D1B4BDE4(v412, v571);

  v415 = v572;
  sub_1D1B5A834(v414, v572);
  sub_1D1B3FEFC(v342, v598);
  v416 = v575;
  sub_1D1741C08(v609, v575, &qword_1EC64B768, &qword_1D1E9AC68);
  v633[0] = v416;
  v417 = v576;
  sub_1D1741C08(v610, v576, &qword_1EC64B760, &qword_1D1E9AC60);
  v633[1] = v417;
  v418 = v577;
  sub_1D1741C08(v611, v577, &qword_1EC64B758, &qword_1D1E9AC58);
  v633[2] = v418;
  v419 = v578;
  sub_1D1741C08(v612, v578, &qword_1EC64B780, &qword_1D1E9AC80);
  v633[3] = v419;
  v420 = v579;
  sub_1D1741C08(v613, v579, &qword_1EC64B748, &qword_1D1E9AC48);
  v633[4] = v420;
  v421 = v580;
  sub_1D1741C08(v614, v580, &qword_1EC64B740, &qword_1D1E9AC40);
  v633[5] = v421;
  v422 = v581;
  sub_1D1741C08(v615, v581, &qword_1EC64B788, &qword_1D1E9AC88);
  v633[6] = v422;
  v423 = v582;
  sub_1D1741C08(v616, v582, &qword_1EC64B790, &qword_1D1E9AC90);
  v633[7] = v423;
  v424 = v583;
  sub_1D1741C08(v617, v583, &qword_1EC64B798, &qword_1D1E9AC98);
  v633[8] = v424;
  v425 = v584;
  sub_1D1741C08(v618, v584, &qword_1EC64B7A0, &qword_1D1E9ACA0);
  v633[9] = v425;
  v426 = v585;
  sub_1D1741C08(v619, v585, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  v633[10] = v426;
  v427 = v586;
  sub_1D1741C08(v620, v586, &qword_1EC64B7B0, &qword_1D1E9ACB0);
  v633[11] = v427;
  v428 = v587;
  sub_1D1741C08(v621, v587, &qword_1EC64B7B8, &qword_1D1E9ACB8);
  v633[12] = v428;
  v429 = v588;
  sub_1D1741C08(v622, v588, &qword_1EC64B7C0, &qword_1D1E9ACC0);
  v633[13] = v429;
  v430 = v589;
  sub_1D1741C08(v623, v589, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  v633[14] = v430;
  v431 = v590;
  sub_1D1741C08(v624, v590, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  v633[15] = v431;
  v432 = v591;
  sub_1D1741C08(v625, v591, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  v633[16] = v432;
  v433 = v592;
  sub_1D1741C08(v626, v592, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  v633[17] = v433;
  v434 = v593;
  sub_1D1741C08(v627, v593, &qword_1EC64B7E8, &qword_1D1E9ACE8);
  v633[18] = v434;
  v435 = v594;
  sub_1D1741C08(v628, v594, &qword_1EC64B7F0, &qword_1D1E9ACF0);
  v633[19] = v435;
  v436 = v596;
  sub_1D1741C08(v396, v596, &qword_1EC64B7F8, &qword_1D1E9ACF8);
  v633[20] = v436;
  v437 = v599;
  sub_1D1741C08(v407, v599, &qword_1EC64B800, &qword_1D1E9AD00);
  v633[21] = v437;
  v438 = v600;
  sub_1D1741C08(v409, v600, &qword_1EC64B808, &qword_1D1E9AD08);
  v633[22] = v438;
  v439 = v601;
  sub_1D1741C08(v411, v601, &qword_1EC64B810, &qword_1D1E9AD10);
  v633[23] = v439;
  v440 = v602;
  sub_1D1741C08(v413, v602, &qword_1EC64B818, &qword_1D1E9AD18);
  v633[24] = v440;
  v441 = v603;
  sub_1D1741C08(v415, v603, &qword_1EC64B820, &qword_1D1E9AD20);
  v633[25] = v441;
  v442 = v598;
  v443 = v604;
  sub_1D1741C08(v598, v604, &qword_1EC64B828, &qword_1D1E9AD28);
  v633[26] = v443;
  sub_1D1B5C58C(v633, v573);
  sub_1D1741A30(v442, &qword_1EC64B828, &qword_1D1E9AD28);
  sub_1D1741A30(v415, &qword_1EC64B820, &qword_1D1E9AD20);
  sub_1D1741A30(v413, &qword_1EC64B818, &qword_1D1E9AD18);
  sub_1D1741A30(v411, &qword_1EC64B810, &qword_1D1E9AD10);
  sub_1D1741A30(v409, &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A30(v597, &qword_1EC64B800, &qword_1D1E9AD00);
  sub_1D1741A30(v595, &qword_1EC64B7F8, &qword_1D1E9ACF8);
  sub_1D1741A30(v628, &qword_1EC64B7F0, &qword_1D1E9ACF0);
  sub_1D1741A30(v627, &qword_1EC64B7E8, &qword_1D1E9ACE8);
  sub_1D1741A30(v626, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  sub_1D1741A30(v625, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A30(v624, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A30(v623, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A30(v622, &qword_1EC64B7C0, &qword_1D1E9ACC0);
  sub_1D1741A30(v621, &qword_1EC64B7B8, &qword_1D1E9ACB8);
  sub_1D1741A30(v620, &qword_1EC64B7B0, &qword_1D1E9ACB0);
  sub_1D1741A30(v619, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  sub_1D1741A30(v618, &qword_1EC64B7A0, &qword_1D1E9ACA0);
  sub_1D1741A30(v617, &qword_1EC64B798, &qword_1D1E9AC98);
  sub_1D1741A30(v616, &qword_1EC64B790, &qword_1D1E9AC90);
  sub_1D1741A30(v615, &qword_1EC64B788, &qword_1D1E9AC88);
  sub_1D1741A30(v614, &qword_1EC64B740, &qword_1D1E9AC40);
  sub_1D1741A30(v613, &qword_1EC64B748, &qword_1D1E9AC48);
  sub_1D1741A30(v612, &qword_1EC64B780, &qword_1D1E9AC80);
  sub_1D1741A30(v611, &qword_1EC64B758, &qword_1D1E9AC58);
  sub_1D1741A30(v610, &qword_1EC64B760, &qword_1D1E9AC60);
  sub_1D1741A30(v609, &qword_1EC64B768, &qword_1D1E9AC68);
  sub_1D1741A30(v604, &qword_1EC64B828, &qword_1D1E9AD28);
  sub_1D1741A30(v603, &qword_1EC64B820, &qword_1D1E9AD20);
  sub_1D1741A30(v602, &qword_1EC64B818, &qword_1D1E9AD18);
  sub_1D1741A30(v601, &qword_1EC64B810, &qword_1D1E9AD10);
  sub_1D1741A30(v600, &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A30(v599, &qword_1EC64B800, &qword_1D1E9AD00);
  sub_1D1741A30(v596, &qword_1EC64B7F8, &qword_1D1E9ACF8);
  sub_1D1741A30(v594, &qword_1EC64B7F0, &qword_1D1E9ACF0);
  sub_1D1741A30(v593, &qword_1EC64B7E8, &qword_1D1E9ACE8);
  sub_1D1741A30(v592, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  sub_1D1741A30(v591, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A30(v590, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A30(v589, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A30(v588, &qword_1EC64B7C0, &qword_1D1E9ACC0);
  sub_1D1741A30(v587, &qword_1EC64B7B8, &qword_1D1E9ACB8);
  sub_1D1741A30(v586, &qword_1EC64B7B0, &qword_1D1E9ACB0);
  sub_1D1741A30(v585, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  sub_1D1741A30(v584, &qword_1EC64B7A0, &qword_1D1E9ACA0);
  sub_1D1741A30(v583, &qword_1EC64B798, &qword_1D1E9AC98);
  sub_1D1741A30(v582, &qword_1EC64B790, &qword_1D1E9AC90);
  sub_1D1741A30(v581, &qword_1EC64B788, &qword_1D1E9AC88);
  sub_1D1741A30(v580, &qword_1EC64B740, &qword_1D1E9AC40);
  sub_1D1741A30(v579, &qword_1EC64B748, &qword_1D1E9AC48);
  sub_1D1741A30(v578, &qword_1EC64B780, &qword_1D1E9AC80);
  sub_1D1741A30(v577, &qword_1EC64B758, &qword_1D1E9AC58);
  sub_1D1741A30(v576, &qword_1EC64B760, &qword_1D1E9AC60);
  return sub_1D1741A30(v575, &qword_1EC64B768, &qword_1D1E9AC68);
}

uint64_t sub_1D1D173C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741C08(a2, v13, &qword_1EC644B30, &qword_1D1E77280);
  sub_1D1D26328(&v13[*(v11 + 56)], v16, type metadata accessor for StaticAccessory);
  v17 = sub_1D1E66A7C();
  (*(*(v17 - 8) + 8))(v13, v17);
  v18 = &v16[*(v14 + 144)];
  if (v18[8] == 1 || v16[*(v14 + 148)] != 1)
  {
    return sub_1D1D1D890(v16, type metadata accessor for StaticAccessory);
  }

  v19 = *v18;
  sub_1D1741C08(a3, v7, &unk_1EC64F390, &qword_1D1E92B10);
  v20 = type metadata accessor for MatterStateSnapshot(0);
  if ((*(*(v20 - 8) + 48))(v7, 1, v20) == 1)
  {
    sub_1D1D1D890(v16, type metadata accessor for StaticAccessory);
    sub_1D1741A30(v7, &unk_1EC64F390, &qword_1D1E92B10);
    v21 = type metadata accessor for StaticMatterDevice(0);
    v22 = v36;
    (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
    return sub_1D1741A30(v22, &qword_1EC643650, &qword_1D1E71D40);
  }

  v24 = *&v7[*(v20 + 24)];

  sub_1D1D1D890(v7, type metadata accessor for MatterStateSnapshot);
  if (*(v24 + 16) && (v25 = sub_1D17420B0(v19), (v26 & 1) != 0))
  {
    v27 = v25;
    v28 = *(v24 + 56);
    v29 = type metadata accessor for StaticMatterDevice(0);
    v30 = *(v29 - 8);
    v31 = v28 + *(v30 + 72) * v27;
    v22 = v36;
    sub_1D1D1D7E0(v31, v36, type metadata accessor for StaticMatterDevice);

    (*(v30 + 56))(v22, 0, 1, v29);
  }

  else
  {

    v29 = type metadata accessor for StaticMatterDevice(0);
    v22 = v36;
    (*(*(v29 - 8) + 56))(v36, 1, 1, v29);
  }

  type metadata accessor for StaticMatterDevice(0);
  if ((*(*(v29 - 8) + 48))(v22, 1, v29) == 1)
  {
    sub_1D1D1D890(v16, type metadata accessor for StaticAccessory);
    return sub_1D1741A30(v22, &qword_1EC643650, &qword_1D1E71D40);
  }

  sub_1D1741A30(v22, &qword_1EC643650, &qword_1D1E71D40);
  v32 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v32;
  sub_1D1756D58(v19, v16, isUniquelyReferenced_nonNull_native);
  result = sub_1D1D1D890(v16, type metadata accessor for StaticAccessory);
  *v32 = v37;
  return result;
}

uint64_t sub_1D1D17910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v9 = *a1;
  sub_1D1741C08(a2, v20 - v7, &unk_1EC64F390, &qword_1D1E92B10);
  v10 = type metadata accessor for MatterStateSnapshot(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1D1741A30(v8, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    v11 = *&v8[*(v10 + 24)];

    sub_1D1D1D890(v8, type metadata accessor for MatterStateSnapshot);
    if (*(v11 + 16))
    {
      v12 = sub_1D17420B0(v9);
      if (v13)
      {
        v14 = v12;
        v15 = *(v11 + 56);
        v16 = type metadata accessor for StaticMatterDevice(0);
        v17 = *(v16 - 8);
        sub_1D1D1D7E0(v15 + *(v17 + 72) * v14, a3, type metadata accessor for StaticMatterDevice);

        return (*(v17 + 56))(a3, 0, 1, v16);
      }
    }
  }

  v19 = type metadata accessor for StaticMatterDevice(0);
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

void sub_1D1D17B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = type metadata accessor for StaticAccessory(0);
  if (*(a2 + *(v8 + 124)) == 1)
  {
    v26 = a2;
    v27 = a3;
    v9 = *(a2 + *(v8 + 80));
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    if (v12)
    {
      while (1)
      {
LABEL_12:
        while (1)
        {
          v17 = __clz(__rbit64(v12));
          v12 &= v12 - 1;
          v18 = v17 | (v14 << 6);
          v19 = *(v9 + 48);
          v20 = sub_1D1E66A7C();
          (*(*(v20 - 8) + 16))(v7, v19 + *(*(v20 - 8) + 72) * v18, v20);
          v21 = *(v9 + 56);
          v22 = type metadata accessor for StaticService(0);
          v23 = v21 + *(*(v22 - 1) + 72) * v18;
          v24 = &v7[*(v5 + 48)];
          sub_1D1D1D7E0(v23, v24, type metadata accessor for StaticService);
          v25 = *(v24 + v22[9]);
          if (v25 == 2 || (v25 & 1) == 0)
          {
            break;
          }

          sub_1D1741A30(v7, &qword_1EC642DB0, &unk_1D1E6F360);
          if (!v12)
          {
            goto LABEL_8;
          }
        }

        v29 = *(v24 + v22[32]);
        v28 = *(v24 + v22[26]);

        v15 = StaticCharacteristicsBag.isReachable(for:)(&v28);

        sub_1D1741A30(v7, &qword_1EC642DB0, &unk_1D1E6F360);
        if (!v15)
        {
          break;
        }

        if (!v12)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_8:
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          return;
        }

        if (v16 >= v13)
        {
          break;
        }

        v12 = *(v9 + 64 + 8 * v16);
        ++v14;
        if (v12)
        {
          v14 = v16;
          goto LABEL_12;
        }
      }

      if (*(v27 + 16))
      {
        sub_1D1742188();
      }
    }
  }
}

uint64_t sub_1D1D17DF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  v5 = type metadata accessor for StaticMediaSystem(0);
  MEMORY[0x1EEE9AC00](v5);
  v9[2] = a4;
  sub_1D1D04EFC(sub_1D1D262E8, v9, v6);
  return v7 & 1;
}

uint64_t sub_1D1D17E94(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StaticAccessory(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + *(type metadata accessor for StaticRoom(0) + 40));
  if (!*(v7 + 16))
  {
    return 1;
  }

  v8 = sub_1D1742188();
  if ((v9 & 1) == 0)
  {
    return 1;
  }

  sub_1D1D1D7E0(*(v7 + 56) + *(v4 + 72) * v8, v6, type metadata accessor for StaticAccessory);
  v10 = v6[*(v3 + 72)];
  sub_1D1D1D890(v6, type metadata accessor for StaticAccessory);
  return v10;
}

uint64_t sub_1D1D17FC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = type metadata accessor for StaticAccessory(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  v11 = v8;
  v12 = *(a4 + *(type metadata accessor for StaticRoom(0) + 40));
  if (!*(v12 + 16))
  {
    return 1;
  }

  type metadata accessor for StaticMediaProfile(0);
  v13 = sub_1D1742188();
  if ((v14 & 1) == 0)
  {
    return 1;
  }

  sub_1D1D1D7E0(*(v12 + 56) + *(v7 + 72) * v13, v10, type metadata accessor for StaticAccessory);
  v15 = v10[*(v11 + 72)];
  sub_1D1D1D890(v10, type metadata accessor for StaticAccessory);
  return v15;
}

uint64_t sub_1D1D18108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for StaticAccessory(0);
  v9 = v8;
  if (*(a2 + v8[27]) == 1)
  {
    if (*(a2 + v8[37]) != 1 || (v10 = a2 + v8[36], (*(v10 + 8) & 1) != 0))
    {
      v11 = 1;
      return v11 & 1;
    }

    v12 = *v10;
    v13 = *(a3 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
    if (!*(v13 + 16) || (v14 = sub_1D17420B0(v12), (v15 & 1) == 0))
    {
      v25 = type metadata accessor for StaticMatterDevice(0);
      v11 = 1;
      (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
      sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
      return v11 & 1;
    }

    v16 = v14;
    v17 = *(v13 + 56);
    v18 = type metadata accessor for StaticMatterDevice(0);
    v19 = *(v18 - 8);
    sub_1D1D1D7E0(v17 + *(v19 + 72) * v16, v7, type metadata accessor for StaticMatterDevice);
    (*(v19 + 56))(v7, 0, 1, v18);
    sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
  }

  StaticAccessory.staticServicesExcludingComponents.getter();
  v21 = *(v20 + 16);

  if (v21 >= 2 && (StaticAccessory.visibleStaticServices.getter(), v23 = *(v22 + 16), , v23))
  {
    v11 = *(a2 + v9[19]) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

BOOL sub_1D1D18354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for StaticAccessory(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(a3 + *(type metadata accessor for StaticRoom(0) + 40));
  if (*(v11 + 16))
  {
    type metadata accessor for StaticService(0);
    v12 = sub_1D1742188();
    if (v13)
    {
      sub_1D1D1D7E0(*(v11 + 56) + *(v5 + 72) * v12, v8, type metadata accessor for StaticAccessory);
      sub_1D1D26328(v8, v10, type metadata accessor for StaticAccessory);
      if (v10[*(v4 + 76)] != 1)
      {
        StaticAccessory.staticServicesExcludingComponents.getter();
        v16 = v15;
        sub_1D1D1D890(v10, type metadata accessor for StaticAccessory);
        v17 = *(v16 + 16);

        return v17 == 1;
      }

      sub_1D1D1D890(v10, type metadata accessor for StaticAccessory);
    }
  }

  return 1;
}

uint64_t sub_1D1D1850C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v52);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643758, &qword_1D1E71EB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  if (!*(a3 + 16))
  {
    return 1;
  }

  v55 = *(a3 + 16);
  v20 = a3 + 32;
  v21 = *(type metadata accessor for StaticService(0) + 44);
  v49 = (v5 + 56);
  v50 = v21;
  v22 = (v5 + 16);
  v41 = (v5 + 32);
  v44 = (v5 + 8);
  v51 = v11;
  v46 = (v5 + 16);
  v47 = (v5 + 48);
  v54 = v17;
  v48 = v8;
  while (1)
  {
    sub_1D17419CC(v20, v57);
    sub_1D17419CC(v57, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    v24 = type metadata accessor for StaticMediaProfile(0);
    v25 = swift_dynamicCast();
    v26 = *(*(v24 - 8) + 56);
    v27 = v49;
    if (v25)
    {
      v26(v11, 0, 1, v24);
      v28 = *(v24 + 56);
      v29 = v11;
      v30 = *v22;
      (*v22)(v19, v29 + v28, v4);
      sub_1D1D1D890(v29, type metadata accessor for StaticMediaProfile);
      v31 = *v27;
      (*v27)(v19, 0, 1, v4);
    }

    else
    {
      v26(v11, 1, 1, v24);
      sub_1D1741A30(v11, &qword_1EC643758, &qword_1D1E71EB0);
      v31 = *v27;
      (*v27)(v19, 1, 1, v4);
      v30 = *v22;
    }

    v32 = v54;
    v30(v54, v53 + v50, v4);
    v31(v32, 0, 1, v4);
    v33 = *(v52 + 48);
    v34 = v48;
    sub_1D1741C08(v19, v48, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741C08(v32, v34 + v33, &qword_1EC642590, qword_1D1E71260);
    v35 = *v47;
    if ((*v47)(v34, 1, v4) == 1)
    {
      break;
    }

    v36 = v45;
    sub_1D1741C08(v34, v45, &qword_1EC642590, qword_1D1E71260);
    if (v35(v34 + v33, 1, v4) == 1)
    {
      sub_1D1741A30(v32, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
      __swift_destroy_boxed_opaque_existential_1(v57);
      (*v44)(v36, v4);
      v11 = v51;
      goto LABEL_4;
    }

    v37 = v36;
    v38 = v42;
    (*v41)(v42, v34 + v33, v4);
    sub_1D1D1D848(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v43 = sub_1D1E6775C();
    v39 = *v44;
    (*v44)(v38, v4);
    sub_1D1741A30(v54, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v39(v37, v4);
    sub_1D1741A30(v34, &qword_1EC642590, qword_1D1E71260);
    v11 = v51;
    if (v43)
    {
      return 0;
    }

LABEL_5:
    v20 += 40;
    --v55;
    v22 = v46;
    if (!v55)
    {
      return 1;
    }
  }

  sub_1D1741A30(v32, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v23 = v35(v34 + v33, 1, v4);
  v11 = v51;
  if (v23 != 1)
  {
LABEL_4:
    sub_1D1741A30(v34, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_5;
  }

  sub_1D1741A30(v34, &qword_1EC642590, qword_1D1E71260);
  return 0;
}

uint64_t sub_1D1D18B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StaticAccessory(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + *(type metadata accessor for StaticRoom(0) + 40));
  if (!*(v9 + 16) || (v10 = type metadata accessor for StaticService(0), v11 = sub_1D1742188(), (v12 & 1) == 0))
  {
LABEL_6:
    v16 = 1;
    return v16 & 1;
  }

  sub_1D1D1D7E0(*(v9 + 56) + *(v6 + 72) * v11, v8, type metadata accessor for StaticAccessory);
  v13 = &v8[*(v5 + 92)];
  v14 = *v13;
  v15 = v13[8];
  sub_1D18EB144(*v13, v13[8]);
  sub_1D1D1D890(v8, type metadata accessor for StaticAccessory);
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = (v14 & 0x100) == 0;
      return v16 & 1;
    }

    if (v15 != 255)
    {
      v16 = v14 != 1;
      return v16 & 1;
    }

    goto LABEL_6;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v18 = *(a2 + *(v10 + 112));
    if (v18 == 53)
    {
      v18 = *(a2 + *(v10 + 104));
    }

    v19 = sub_1D17C4E00(v18, &unk_1F4D66110);
    sub_1D18EB2D8(v14, 0);
    v16 = !v19;
  }

  return v16 & 1;
}

uint64_t sub_1D1D18D58@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  LODWORD(v162) = a2;
  v151 = a3;
  v143 = type metadata accessor for StaticEndpoint(0);
  v4 = MEMORY[0x1EEE9AC00](v143);
  v141 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v142 = &v138 - v6;
  v147 = type metadata accessor for StaticMatterDevice(0);
  v7 = MEMORY[0x1EEE9AC00](v147);
  v144 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v146 = &v138 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v148 = &v138 - v11;
  v160 = type metadata accessor for StaticServiceGroup(0);
  v12 = MEMORY[0x1EEE9AC00](v160);
  v150 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v161 = &v138 - v14;
  v15 = type metadata accessor for StaticMediaSystem(0);
  MEMORY[0x1EEE9AC00](v15);
  v164 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StaticMediaProfile(0);
  MEMORY[0x1EEE9AC00](v17);
  v165 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v145 = *(v158 - 8);
  v22 = MEMORY[0x1EEE9AC00](v158);
  v156 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v155 = &v138 - v24;
  v159 = type metadata accessor for StaticService(0);
  v154 = *(v159 - 8);
  v25 = MEMORY[0x1EEE9AC00](v159);
  v153 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v163 = &v138 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v157 = &v138 - v29;
  v30 = type metadata accessor for StaticAccessory(0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v138 - v34;
  sub_1D17419CC(a1, &v170);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v149 = v35;
  v37 = v30;
  if (swift_dynamicCast())
  {
    sub_1D17419CC(a1, &v166);
    swift_dynamicCast();
    v38 = &v33[*(v30 + 92)];
    v39 = v38[8];
    v40 = a1;
    if (v39 == 255)
    {
      goto LABEL_46;
    }

    v41 = *v38;
    if (v162 > 3u)
    {
      if (v162 > 5u)
      {
        if (v162 == 6)
        {
          v42 = "3E68745D-F0E1-4B73-8FBD-0E8978A33403";
        }

        else
        {
          v42 = "7FADD792-61A4-4340-A849-215882E2F008";
        }
      }

      else if (v162 == 4)
      {
        v42 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
      }

      else
      {
        v42 = "63489665-5E39-4C17-A590-755E1AAC02AE";
      }
    }

    else if (v162 > 1u)
    {
      if (v162 == 2)
      {
        v42 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
      }

      else
      {
        v42 = "7A5BD1AB-6478-4560-AD68-D91053B75F44";
      }
    }

    else if (v162)
    {
      v42 = "B92ACEEE-DFF5-4773-A058-C5E64BC487B2";
    }

    else
    {
      v42 = "0CA6536B-8EAD-4013-AA62-01754F256DD5";
    }

    a1 = (v42 - 32) | 0x8000000000000000;
    if (a1 == 0x80000001D1EB3730)
    {
      sub_1D1771B4C(v41, v39);
    }

    else
    {
      v36 = sub_1D1E6904C();
      sub_1D1771B4C(v41, v39);

      if ((v36 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    if (v39)
    {
      if (v39 != 2)
      {
        sub_1D18EB2D8(v41, v39);
LABEL_240:
        v111 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_1D1E739C0;
        sub_1D17419CC(v40, v112 + 32);
        *v151 = v112;
        v110 = v111;
LABEL_241:
        sub_1D1D1D890(v110, type metadata accessor for StaticAccessory);
        v44 = v149;
        v43 = type metadata accessor for StaticAccessory;
        goto LABEL_288;
      }

      if ((v41 & 0x100) != 0)
      {
        goto LABEL_240;
      }

LABEL_46:
      v148 = v33;
      v55 = sub_1D1C56820();
      v163 = *(v55 + 16);
      v139 = v40;
      v140 = v37;
      if (v163)
      {
        v160 = v55;
        if (qword_1EC642398 != -1)
        {
          swift_once();
        }

        v56 = 0;
        v48 = v160;
        v161 = v160 + 32;
        v57 = qword_1EC6BE1B0;
        v165 = (qword_1EC6BE1B0 + 56);
        v58 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v59 = *(v48 + 2);
          if (v56 >= v59)
          {
            break;
          }

          if (*(v57 + 16))
          {
            v164 = v58;
            v36 = v161[v56];
            sub_1D1E6920C();
            v171 = v36;
            ServiceKind.rawValue.getter();
            sub_1D1E678EC();

            v60 = sub_1D1E6926C();
            v61 = -1 << *(v57 + 32);
            v62 = v60 & ~v61;
            if ((*&v165[(v62 >> 3) & 0xFFFFFFFFFFFFFF8] >> v62))
            {
              v63 = ~v61;
              while (1)
              {
                v64 = "takeSnaphotsWhenBusy";
                switch(*(*(v57 + 48) + v62))
                {
                  case 1:
                    v65 = "0000003E-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 2:
                    v65 = "00000270-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 3:
                    v65 = "000000BB-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 4:
                    v65 = "0000008D-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 5:
                    v65 = "00000096-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 6:
                    v65 = "00000042-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 7:
                    v65 = "00000110-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 8:
                    v65 = "00000204-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 9:
                    v65 = "00000097-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xA:
                    v65 = "0000007F-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xB:
                    v65 = "00000080-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xC:
                    v65 = "00000129-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xD:
                    v65 = "00000237-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xE:
                    v65 = "00000081-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xF:
                    v65 = "00000121-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x10:
                    v65 = "00000040-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x11:
                    v65 = "000000D7-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x12:
                    v65 = "000000BA-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x13:
                    v65 = "00000041-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x14:
                    v65 = "000000BC-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x15:
                    v65 = "000000BD-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x16:
                    v65 = "00000082-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x17:
                    v65 = "000000D9-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x18:
                    v65 = "000000CF-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x19:
                    v65 = "000000CC-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1A:
                    v65 = "00000083-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1B:
                    v65 = "00000084-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1C:
                    v65 = "00000043-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1D:
                    v65 = "00000044-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1E:
                    v65 = "00000045-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1F:
                    v65 = "00000112-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x20:
                    v65 = "00000085-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x21:
                    v65 = "00000086-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x22:
                    v65 = "00000047-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x23:
                    v65 = "0000007E-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x24:
                    v65 = "000000B9-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x25:
                    v65 = "00000087-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x26:
                    v65 = "00000113-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x27:
                    v65 = "00000088-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x28:
                    v65 = "00000089-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x29:
                    v65 = "00000049-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2A:
                    v65 = "00000125-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2B:
                    v65 = "00000122-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2C:
                    v65 = "000000D8-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2D:
                    v65 = "0000008A-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2E:
                    v65 = "0000004A-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2F:
                    v65 = "000000D0-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x30:
                    v65 = "000000B7-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x31:
                    v65 = "0000020A-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x32:
                    v65 = "0000020F-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x33:
                    v65 = "0000008B-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x34:
                    v65 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_109:
                    v64 = v65 - 32;
                    break;
                  default:
                    break;
                }

                v66 = v64 | 0x8000000000000000;
                v67 = "takeSnaphotsWhenBusy";
                switch(v36)
                {
                  case 1uLL:
                    v68 = "0000003E-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 2uLL:
                    v68 = "00000270-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 3uLL:
                    v68 = "000000BB-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 4uLL:
                    v68 = "0000008D-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 5uLL:
                    v68 = "00000096-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 6uLL:
                    v68 = "00000042-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 7uLL:
                    v68 = "00000110-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 8uLL:
                    v68 = "00000204-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 9uLL:
                    v68 = "00000097-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0xAuLL:
                    v68 = "0000007F-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0xBuLL:
                    v68 = "00000080-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0xCuLL:
                    v68 = "00000129-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0xDuLL:
                    v68 = "00000237-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0xEuLL:
                    v68 = "00000081-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0xFuLL:
                    v68 = "00000121-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x10uLL:
                    v68 = "00000040-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x11uLL:
                    v68 = "000000D7-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x12uLL:
                    v68 = "000000BA-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x13uLL:
                    v68 = "00000041-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x14uLL:
                    v68 = "000000BC-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x15uLL:
                    v68 = "000000BD-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x16uLL:
                    v68 = "00000082-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x17uLL:
                    v68 = "000000D9-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x18uLL:
                    v68 = "000000CF-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x19uLL:
                    v68 = "000000CC-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x1AuLL:
                    v68 = "00000083-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x1BuLL:
                    v68 = "00000084-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x1CuLL:
                    v68 = "00000043-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x1DuLL:
                    v68 = "00000044-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x1EuLL:
                    v68 = "00000045-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x1FuLL:
                    v68 = "00000112-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x20uLL:
                    v68 = "00000085-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x21uLL:
                    v68 = "00000086-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x22uLL:
                    v68 = "00000047-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x23uLL:
                    v68 = "0000007E-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x24uLL:
                    v68 = "000000B9-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x25uLL:
                    v68 = "00000087-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x26uLL:
                    v68 = "00000113-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x27uLL:
                    v68 = "00000088-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x28uLL:
                    v68 = "00000089-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x29uLL:
                    v68 = "00000049-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x2AuLL:
                    v68 = "00000125-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x2BuLL:
                    v68 = "00000122-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x2CuLL:
                    v68 = "000000D8-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x2DuLL:
                    v68 = "0000008A-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x2EuLL:
                    v68 = "0000004A-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x2FuLL:
                    v68 = "000000D0-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x30uLL:
                    v68 = "000000B7-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x31uLL:
                    v68 = "0000020A-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x32uLL:
                    v68 = "0000020F-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x33uLL:
                    v68 = "0000008B-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 0x34uLL:
                    v68 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_163:
                    v67 = v68 - 32;
                    break;
                  default:
                    break;
                }

                LOBYTE(a1) = v67;
                if (v66 == (v67 | 0x8000000000000000))
                {
                  break;
                }

                v69 = sub_1D1E6904C();

                if (v69)
                {
                  goto LABEL_169;
                }

                v62 = (v62 + 1) & v63;
                if (((*&v165[(v62 >> 3) & 0xFFFFFFFFFFFFFF8] >> v62) & 1) == 0)
                {
                  v58 = v164;
                  v48 = v160;
                  goto LABEL_51;
                }
              }

LABEL_169:
              v58 = v164;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v169 = v58;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D178CF80(0, *(v58 + 16) + 1, 1);
                v58 = v169;
              }

              v72 = *(v58 + 16);
              v71 = *(v58 + 24);
              a1 = v72 + 1;
              if (v72 >= v71 >> 1)
              {
                sub_1D178CF80((v71 > 1), v72 + 1, 1);
                v58 = v169;
              }

              *(v58 + 16) = a1;
              *(v58 + v72 + 32) = v36;
              v48 = v160;
            }

            else
            {
              v58 = v164;
            }
          }

LABEL_51:
          if (++v56 == v163)
          {

            v73 = v58;
            goto LABEL_176;
          }
        }

        __break(1u);
      }

      else
      {

        v73 = MEMORY[0x1E69E7CC0];
LABEL_176:
        v160 = *(v73 + 16);
        if (!v160)
        {
LABEL_214:

          v83 = v152;
          v48 = sub_1D1D1D15C(v82, v162);
          v152 = v83;

          v84 = *(v48 + 2);
          if (!v84)
          {

            v85 = MEMORY[0x1E69E7CC0];
LABEL_237:
            *v151 = v85;
LABEL_238:
            v110 = v148;
            goto LABEL_241;
          }

          v169 = MEMORY[0x1E69E7CC0];
          sub_1D178CF40(0, v84, 0);
          v85 = v169;
          v86 = v48 + 64;
          v87 = sub_1D1E6869C();
          v88 = 0;
          v89 = *(v48 + 9);
          v150 = v48 + 72;
          v59 = &v172;
          v153 = v84;
          v160 = v89;
          v161 = v48 + 64;
          v162 = v48;
          while ((v87 & 0x8000000000000000) == 0)
          {
            v59 = 1 << v48[32];
            if (v87 >= v59)
            {
              break;
            }

            a1 = v87 >> 6;
            v59 = *&v86[8 * (v87 >> 6)];
            if ((v59 & (1 << v87)) == 0)
            {
              goto LABEL_308;
            }

            LODWORD(v59) = *(v48 + 9);
            if (v89 != v59)
            {
              goto LABEL_309;
            }

            v163 = v88;
            v164 = 1 << v87;
            v165 = v85;
            v93 = v158;
            v94 = *(v158 + 48);
            v95 = *(v48 + 6);
            v96 = sub_1D1E66A7C();
            v97 = *(v96 - 8);
            v36 = v155;
            (*(v97 + 16))(v155, v95 + *(v97 + 72) * v87, v96);
            sub_1D1D1D7E0(*(v48 + 7) + *(v154 + 72) * v87, v36 + v94, type metadata accessor for StaticService);
            v98 = v156;
            (*(v97 + 32))(v156, v36, v96);
            v99 = *(v93 + 48);
            v85 = v165;
            sub_1D1D26328(v36 + v94, v98 + v99, type metadata accessor for StaticService);
            v100 = v98 + v99;
            v101 = v157;
            sub_1D1D1D7E0(v100, v157, type metadata accessor for StaticService);
            sub_1D1741A30(v98, &qword_1EC642DB0, &unk_1D1E6F360);
            v169 = v85;
            v103 = *(v85 + 2);
            v102 = *(v85 + 3);
            if (v103 >= v102 >> 1)
            {
              sub_1D178CF40((v102 > 1), v103 + 1, 1);
              v101 = v157;
              v85 = v169;
            }

            v167 = v159;
            v168 = sub_1D1D1D848(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v166);
            sub_1D1D1D7E0(v101, boxed_opaque_existential_1, type metadata accessor for StaticService);
            *(v85 + 2) = v103 + 1;
            sub_1D16EEE20(&v166, &v85[40 * v103 + 32]);
            sub_1D1D1D890(v101, type metadata accessor for StaticService);
            v48 = v162;
            LOBYTE(v59) = v162[32];
            v90 = 1 << v59;
            if (v87 >= 1 << v59)
            {
              goto LABEL_310;
            }

            v86 = v161;
            v59 = *&v161[8 * a1];
            if ((v59 & v164) == 0)
            {
              goto LABEL_311;
            }

            LODWORD(v89) = v160;
            if (v160 != *(v162 + 9))
            {
              goto LABEL_312;
            }

            v105 = v59 & (-2 << (v87 & 0x3F));
            if (v105)
            {
              v90 = __clz(__rbit64(v105)) | v87 & 0x7FFFFFFFFFFFFFC0;
              v59 = &v172;
              v91 = v153;
              v92 = v163;
            }

            else
            {
              v36 = a1 << 6;
              v106 = a1 + 1;
              v107 = &v150[8 * a1];
              v91 = v153;
              while (v106 < (v90 + 63) >> 6)
              {
                v108 = *v107++;
                a1 = v108;
                v36 += 64;
                ++v106;
                if (v108)
                {
                  sub_1D1716920(v87, v160, 0);
                  v59 = __clz(__rbit64(a1));
                  v90 = v59 + v36;
                  goto LABEL_233;
                }
              }

              sub_1D1716920(v87, v160, 0);
LABEL_233:
              v92 = v163;
            }

            v88 = v92 + 1;
            v87 = v90;
            if (v88 == v91)
            {

              goto LABEL_237;
            }
          }

          goto LABEL_307;
        }

        v59 = 0;
        v48 = "00-8000-0026BB765291";
        v164 = "73-8FBD-0E8978A33403";
        v165 = "17-A590-755E1AAC02AE";
        v163 = "60-AD68-D91053B75F44";
        v161 = "7E-BE63-1D00B1500545";
        while (v59 < *(v73 + 16))
        {
          v74 = v59 + 1;
          v75 = v73;
          LOBYTE(v166) = *(v73 + v59 + 32);
          ServiceKind.umbrellaCategory.getter(&v169);
          v76 = v165;
          if (v169 != 6)
          {
            v76 = v164;
          }

          v77 = v163;
          if (v169 != 4)
          {
            v77 = v161;
          }

          if (v169 <= 5u)
          {
            v76 = v77;
          }

          if (v169 == 2)
          {
            v78 = "73-A058-C5E64BC487B2";
          }

          else
          {
            v78 = "CE-986D-63B28F62C9E3";
          }

          if (v169)
          {
            v79 = "13-AA62-01754F256DD5";
          }

          else
          {
            v79 = "00-8000-0026BB765291";
          }

          if (v169 <= 1u)
          {
            v78 = v79;
          }

          if (v169 <= 3u)
          {
            v80 = v78;
          }

          else
          {
            v80 = v76;
          }

          if (v162 > 3u)
          {
            if (v162 > 5u)
            {
              if (v162 == 6)
              {
                v81 = v165;
              }

              else
              {
                v81 = v164;
              }
            }

            else if (v162 == 4)
            {
              v81 = v163;
            }

            else
            {
              v81 = v161;
            }
          }

          else if (v162 > 1u)
          {
            if (v162 == 2)
            {
              v81 = "73-A058-C5E64BC487B2";
            }

            else
            {
              v81 = "CE-986D-63B28F62C9E3";
            }
          }

          else
          {
            v81 = "00-8000-0026BB765291";
            if (v162)
            {
              v81 = "13-AA62-01754F256DD5";
            }
          }

          LOBYTE(a1) = v80;
          if ((v80 | 0x8000000000000000) == (v81 | 0x8000000000000000))
          {

            v73 = v75;
          }

          else
          {
            v36 = sub_1D1E6904C();

            v73 = v75;
            if ((v36 & 1) == 0)
            {
              goto LABEL_214;
            }
          }

          v59 = v74;
          if (v160 == v74)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
            v109 = swift_allocObject();
            *(v109 + 16) = xmmword_1D1E739C0;
            sub_1D17419CC(v139, v109 + 32);
            *v151 = v109;
            goto LABEL_238;
          }
        }
      }

      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
      goto LABEL_313;
    }

LABEL_45:
    sub_1D18EB2D8(v41, v39);
    goto LABEL_46;
  }

  if (!swift_dynamicCast())
  {
    v45 = v165;
    if (swift_dynamicCast())
    {
      if (v162 > 3u)
      {
        if (v162 > 5u)
        {
          if (v162 == 6)
          {
            v46 = "3E68745D-F0E1-4B73-8FBD-0E8978A33403";
          }

          else
          {
            v46 = "7FADD792-61A4-4340-A849-215882E2F008";
          }
        }

        else if (v162 == 4)
        {
          v46 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
        }

        else
        {
          v46 = "63489665-5E39-4C17-A590-755E1AAC02AE";
        }
      }

      else if (v162 > 1u)
      {
        if (v162 == 2)
        {
          v46 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
        }

        else
        {
          v46 = "7A5BD1AB-6478-4560-AD68-D91053B75F44";
        }
      }

      else if (v162)
      {
        v46 = "B92ACEEE-DFF5-4773-A058-C5E64BC487B2";
      }

      else
      {
        v46 = "0CA6536B-8EAD-4013-AA62-01754F256DD5";
      }

      if (((v46 - 32) | 0x8000000000000000) == 0x80000001D1EB3730)
      {
      }

      else
      {
        v117 = sub_1D1E6904C();

        if ((v117 & 1) == 0)
        {
          v118 = MEMORY[0x1E69E7CC0];
          goto LABEL_267;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1D1E739C0;
      sub_1D17419CC(a1, v118 + 32);
LABEL_267:
      *v151 = v118;
      v119 = type metadata accessor for StaticMediaProfile;
LABEL_287:
      v43 = v119;
      v44 = v45;
      goto LABEL_288;
    }

    v45 = v164;
    v47 = swift_dynamicCast();
    v48 = a1;
    LOBYTE(a1) = v162;
    if (v47)
    {
      if (v162 > 3u)
      {
        if (v162 > 5u)
        {
          if (v162 == 6)
          {
            v49 = "3E68745D-F0E1-4B73-8FBD-0E8978A33403";
          }

          else
          {
            v49 = "7FADD792-61A4-4340-A849-215882E2F008";
          }
        }

        else if (v162 == 4)
        {
          v49 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
        }

        else
        {
          v49 = "63489665-5E39-4C17-A590-755E1AAC02AE";
        }
      }

      else if (v162 > 1u)
      {
        if (v162 != 2)
        {
          v128 = "CE-986D-63B28F62C9E3";
          goto LABEL_281;
        }

        v49 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
      }

      else if (v162)
      {
        v49 = "B92ACEEE-DFF5-4773-A058-C5E64BC487B2";
      }

      else
      {
        v49 = "0CA6536B-8EAD-4013-AA62-01754F256DD5";
      }

      v128 = (v49 - 32);
LABEL_281:
      if ((v128 | 0x8000000000000000) == 0x80000001D1EB3730)
      {
      }

      else
      {
        v129 = sub_1D1E6904C();

        if ((v129 & 1) == 0)
        {
          v130 = MEMORY[0x1E69E7CC0];
          goto LABEL_286;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_1D1E739C0;
      sub_1D17419CC(v48, v130 + 32);
LABEL_286:
      *v151 = v130;
      v119 = type metadata accessor for StaticMediaSystem;
      goto LABEL_287;
    }

    v50 = v163;
    v51 = v159;
    if (swift_dynamicCast())
    {
      sub_1D17419CC(v48, &v166);
      v52 = v153;
      swift_dynamicCast();
      v53 = *(v52 + *(v51 + 112));
      if (v53 == 53)
      {
        LOBYTE(v53) = *(v52 + *(v51 + 104));
      }

      LOBYTE(v166) = v53;
      ServiceKind.umbrellaCategory.getter(&v169);
      if (sub_1D179F48C(v169, a1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1D1E739C0;
        sub_1D17419CC(v48, v54 + 32);
      }

      else
      {
        v54 = MEMORY[0x1E69E7CC0];
      }

      *v151 = v54;
      v116 = type metadata accessor for StaticService;
      goto LABEL_300;
    }

    v50 = v161;
    if (!swift_dynamicCast())
    {
      v120 = v146;
      v121 = v147;
      if (swift_dynamicCast())
      {
        v36 = v144;
        sub_1D1D26328(v120, v144, type metadata accessor for StaticMatterDevice);
        static MatterDeviceType.primaryDeviceType(for:)(*(v36 + *(v121 + 32)), &v166);
        if (v166 == 28)
        {
          v122 = 7;
        }

        else
        {
          LOBYTE(v169) = v166;
          MatterDeviceType.umbrellaCategory.getter(&v171);
          v122 = v171;
        }

        if (sub_1D179F48C(a1, v122))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
          v135 = swift_allocObject();
          *(v135 + 16) = xmmword_1D1E739C0;
          sub_1D17419CC(v48, v135 + 32);
        }

        else
        {
          v135 = MEMORY[0x1E69E7CC0];
        }

        v137 = type metadata accessor for StaticMatterDevice;
        goto LABEL_304;
      }

      v132 = v142;
      v133 = v143;
      if (!swift_dynamicCast())
      {
        *v151 = MEMORY[0x1E69E7CC0];
        return __swift_destroy_boxed_opaque_existential_1(&v170);
      }

      v36 = v141;
      sub_1D1D26328(v132, v141, type metadata accessor for StaticEndpoint);
      static MatterDeviceType.primaryDeviceType(for:)(*(v36 + *(v133 + 32)), &v166);
      LOBYTE(v59) = v166;
      if (v166 == 28)
      {
        v134 = 7;
LABEL_314:
        if (sub_1D179F48C(a1, v134))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
          v135 = swift_allocObject();
          *(v135 + 16) = xmmword_1D1E739C0;
          sub_1D17419CC(v48, v135 + 32);
        }

        else
        {
          v135 = MEMORY[0x1E69E7CC0];
        }

        v137 = type metadata accessor for StaticEndpoint;
LABEL_304:
        sub_1D1D1D890(v36, v137);
        *v151 = v135;
        return __swift_destroy_boxed_opaque_existential_1(&v170);
      }

LABEL_313:
      LOBYTE(v169) = v59;
      MatterDeviceType.umbrellaCategory.getter(&v171);
      v134 = v171;
      goto LABEL_314;
    }

    sub_1D17419CC(v48, &v166);
    v52 = v150;
    swift_dynamicCast();

    v114 = v148;
    sub_1D17727C0(v113, v148);

    v115 = v158;
    if ((*(v145 + 48))(v114, 1, v158) == 1)
    {
      sub_1D1741A30(v114, &qword_1EC643C68, &unk_1D1E764C0);
    }

    else
    {
      v123 = v114 + *(v115 + 48);
      v124 = *(v123 + *(v51 + 112));
      if (v124 == 53)
      {
        LOBYTE(v124) = *(v123 + *(v51 + 104));
      }

      sub_1D1D1D890(v123, type metadata accessor for StaticService);
      LOBYTE(v166) = v124;
      ServiceKind.umbrellaCategory.getter(&v169);
      v125 = v169;
      v126 = sub_1D1E66A7C();
      (*(*(v126 - 8) + 8))(v114, v126);
      if (v125 != 8)
      {
        if (a1 != 8 && (sub_1D179F48C(v125, a1) & 1) != 0)
        {
          goto LABEL_277;
        }

        goto LABEL_298;
      }
    }

    if (a1 == 8)
    {
LABEL_277:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_1D1E739C0;
      sub_1D17419CC(v48, v127 + 32);
LABEL_299:
      *v151 = v127;
      v116 = type metadata accessor for StaticServiceGroup;
LABEL_300:
      v136 = v116;
      sub_1D1D1D890(v52, v116);
      v44 = v50;
      v43 = v136;
      goto LABEL_288;
    }

LABEL_298:
    v127 = MEMORY[0x1E69E7CC0];
    goto LABEL_299;
  }

  *v151 = MEMORY[0x1E69E7CC0];
  v43 = type metadata accessor for StaticActionSet;
  v44 = v21;
LABEL_288:
  sub_1D1D1D890(v44, v43);
  return __swift_destroy_boxed_opaque_existential_1(&v170);
}

uint64_t StaticRoom.orderedVisibleTileInfos(filter:matterSnapshot:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBE8, &qword_1D1EA7F58);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBF0, &qword_1D1EA7F60);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBF8, &qword_1D1EA7F68);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC00, &qword_1D1EA7F70);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = a2;
  sub_1D1741C08(a1, &v43 - v17, &qword_1EC64DC00, &qword_1D1EA7F70);
  v20 = type metadata accessor for TilesFilter(0);
  if ((*(*(v20 - 8) + 48))(v18, 1, v20) == 1)
  {
LABEL_2:
    LOBYTE(v49) = 8;
    v21 = a2;
    v22 = 1;
    v23 = 0;
LABEL_3:
    v24 = StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(&v49, v21, v22, v23);
LABEL_4:
    sub_1D1741A30(v18, &qword_1EC64DC00, &qword_1D1EA7F70);
    return v24;
  }

  sub_1D1741C08(v18, v16, &qword_1EC64DC00, &qword_1D1EA7F70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v41 = v44;
      v40 = v45;
      (*(v44 + 32))(v10, v16, v45);
      LOBYTE(v49) = 8;
      v49 = StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(&v49, v19, 1, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC08, &qword_1D1EA7F78);
      sub_1D17D8EA8(&qword_1EC64DC10, &qword_1EC64DC08, &qword_1D1EA7F78, MEMORY[0x1E69E6328]);
      v24 = sub_1D1E67A1C();

      (*(v41 + 8))(v10, v40);
      goto LABEL_4;
    }

    LOBYTE(v49) = *v16;
    v21 = a2;
    v22 = 0;
    v23 = 1;
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v27 = v43;
      (*(v43 + 32))(v7, v16, v5);
      LOBYTE(v49) = 8;
      v28 = StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(&v49, a2, 1, 0);
      MEMORY[0x1EEE9AC00](v28);
      *(&v43 - 2) = v7;
      v24 = sub_1D1796C00(sub_1D1D25B90, (&v43 - 4), v29);
      (*(v27 + 8))(v7, v5);
      goto LABEL_4;
    }

    sub_1D1D1D890(v16, type metadata accessor for TilesFilter);
    goto LABEL_2;
  }

  v30 = v46;
  (*(v47 + 32))(v46, v16, v48);
  v31 = type metadata accessor for StaticRoom(0);

  v33 = sub_1D1781D38(v32);
  v34 = v33;
  v35 = *(v2 + *(v31 + 72));
  v36 = *(v33 + 16);
  if (!v36)
  {

    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v37 = sub_1D18042C8(*(v33 + 16), 0);
  v38 = *(type metadata accessor for StaticService(0) - 8);
  v45 = sub_1D1804A98(&v49, v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v36, v34);
  v39 = v49;

  sub_1D1716918(v39);
  if (v45 == v36)
  {
    v30 = v46;
LABEL_17:
    v49 = v37;

    sub_1D1D235D8(&v49, v35);

    swift_bridgeObjectRelease_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9C8, &qword_1D1EA11A8);
    sub_1D17D8EA8(&qword_1EC64DC18, &qword_1EC64C9C8, &qword_1D1EA11A8, MEMORY[0x1E69E6328]);
    v42 = sub_1D1E67A1C();

    v24 = sub_1D18F9FDC(v42);

    (*(v47 + 8))(v30, v48);
    goto LABEL_4;
  }

  __break(1u);
  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

uint64_t sub_1D1D1B26C(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v43 - v7;
  v8 = type metadata accessor for StaticEndpoint(0);
  v46 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v43 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v45 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v43 - v20;
  v21 = type metadata accessor for StaticMatterDevice(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v43 - v25;
  sub_1D17419CC(a1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if (swift_dynamicCast())
  {
    v27 = sub_1D1D26328(v26, v24, type metadata accessor for StaticMatterDevice);
    v28 = *&v24[*(v21 + 56)];
    MEMORY[0x1EEE9AC00](v27);
    *(&v43 - 2) = v24;

    v29 = v49;
    sub_1D1746B78(sub_1D18076C8, v28, v6);

    v30 = v46;
    v31 = *(v46 + 48);
    if (v31(v6, 1, v8) == 1)
    {

      v33 = v47;
      sub_1D1771D7C(v32, v47);

      if (v31(v6, 1, v8) != 1)
      {
        sub_1D1741A30(v6, &qword_1EC644780, &qword_1D1E91AA0);
      }
    }

    else
    {
      v33 = v47;
      sub_1D1D26328(v6, v47, type metadata accessor for StaticEndpoint);
      (*(v30 + 56))(v33, 0, 1, v8);
    }

    if (v31(v33, 1, v8) == 1)
    {
      sub_1D1D1D890(v24, type metadata accessor for StaticMatterDevice);
      sub_1D1741A30(v33, &qword_1EC644780, &qword_1D1E91AA0);
      goto LABEL_11;
    }

    v37 = v33;
    v38 = v44;
    sub_1D1D26328(v37, v44, type metadata accessor for StaticEndpoint);
    v39 = v45;
    sub_1D1D1D7E0(v38, v45, type metadata accessor for StaticEndpoint);
    v51 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBE8, &qword_1D1EA7F58);
    v40 = sub_1D1E66C6C();
    if (v29)
    {

      sub_1D1D1D890(v38, type metadata accessor for StaticEndpoint);
      sub_1D1D1D890(v24, type metadata accessor for StaticMatterDevice);
      sub_1D1D1D890(v39, type metadata accessor for StaticEndpoint);
      v36 = 0;
      goto LABEL_18;
    }

    v36 = v40;
    sub_1D1D1D890(v38, type metadata accessor for StaticEndpoint);
    sub_1D1D1D890(v24, type metadata accessor for StaticMatterDevice);
    v41 = v39;
LABEL_17:
    sub_1D1D1D890(v41, type metadata accessor for StaticEndpoint);
    goto LABEL_18;
  }

  v34 = v49;
  if (swift_dynamicCast())
  {
    sub_1D1D26328(v17, v14, type metadata accessor for StaticEndpoint);
    sub_1D1D1D7E0(v14, v11, type metadata accessor for StaticEndpoint);
    v51 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBE8, &qword_1D1EA7F58);
    v35 = sub_1D1E66C6C();
    if (v34)
    {

      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    sub_1D1D1D890(v14, type metadata accessor for StaticEndpoint);
    v41 = v11;
    goto LABEL_17;
  }

LABEL_11:
  v36 = 0;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v36 & 1;
}

BOOL StaticRoom.hasContent(filterCategory:matterSnapshot:forDashboard:)(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v5 = *a1;
  v3 = StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(&v5, a2, a3, 0)[2];

  return v3 != 0;
}

uint64_t sub_1D1D1B8DC(void *a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v64 = v3;
  v65 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticZone(0);
  v53 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - v12;
  v14 = [a1 zones];
  sub_1D1741B10(0, &qword_1EE07B268, 0x1E696CCC8);
  v15 = sub_1D1E67C1C();

  if (v15 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v51 = v6;
    v17 = 0;
    v57 = v15 & 0xFFFFFFFFFFFFFF8;
    v58 = v15 & 0xC000000000000001;
    v56 = v15 + 32;
    v62 = 0;
    v63 = v65 + 32;
    v18 = &selRef_addZoneWithName_completionHandler_;
    v60 = MEMORY[0x1E69E7CC0];
    v49 = v13;
    v50 = v9;
    v48 = v15;
    v55 = i;
    while (1)
    {
      while (1)
      {
        if (v58)
        {
          v19 = MEMORY[0x1D3891EF0](v17, v15);
          v20 = __OFADD__(v17, 1);
          v21 = v17 + 1;
          if (v20)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v17 >= *(v57 + 16))
          {
            goto LABEL_37;
          }

          v19 = *(v56 + 8 * v17);
          v20 = __OFADD__(v17, 1);
          v21 = v17 + 1;
          if (v20)
          {
            goto LABEL_36;
          }
        }

        v61 = v21;
        v22 = v19;
        v23 = [v19 v18[6]];
        sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
        v24 = sub_1D1E67C1C();

        v6 = &v48;
        v67 = v59;
        MEMORY[0x1EEE9AC00](v25);
        *(&v48 - 2) = &v67;
        v26 = v62;
        LOBYTE(v23) = sub_1D18B8754(sub_1D1D26308, (&v48 - 4), v24);

        v62 = v26;
        if (v23)
        {
          break;
        }

        v17 = v61;
        if (v61 == v55)
        {
          goto LABEL_40;
        }
      }

      v27 = [v22 uniqueIdentifier];
      sub_1D1E66A5C();

      v28 = [v22 name];
      v29 = sub_1D1E6781C();
      v13 = v30;

      v6 = v51;
      v31 = &v9[*(v51 + 20)];
      *v31 = v29;
      v31[1] = v13;
      v32 = v18[6];
      v54 = v22;
      v33 = [v22 v32];
      v15 = sub_1D1E67C1C();

      if (v15 >> 62)
      {
        break;
      }

      v34 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v6;
      if (v34)
      {
        goto LABEL_11;
      }

LABEL_27:
      v37 = MEMORY[0x1E69E7CC0];
LABEL_28:

      v9 = v50;
      *&v50[*(v35 + 24)] = v37;
      v42 = v52;
      sub_1D1D26328(v9, v52, type metadata accessor for StaticZone);
      v13 = v49;
      sub_1D1D26328(v42, v49, type metadata accessor for StaticZone);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1D177D7A4(0, v60[2] + 1, 1, v60);
      }

      v15 = v48;
      v43 = v55;
      v17 = v61;
      v18 = &selRef_addZoneWithName_completionHandler_;
      v6 = v60[2];
      v44 = v60[3];
      if (v6 >= v44 >> 1)
      {
        v60 = sub_1D177D7A4((v44 > 1), v6 + 1, 1, v60);
      }

      v45 = v60;
      v60[2] = v6 + 1;
      sub_1D1D26328(v13, v45 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v6, type metadata accessor for StaticZone);
      if (v17 == v43)
      {
        goto LABEL_40;
      }
    }

    v34 = sub_1D1E6873C();
    v35 = v6;
    if (!v34)
    {
      goto LABEL_27;
    }

LABEL_11:
    v36 = 0;
    v9 = (v15 & 0xC000000000000001);
    v37 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v9)
      {
        v38 = MEMORY[0x1D3891EF0](v36, v15);
      }

      else
      {
        if (v36 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v38 = *(v15 + 8 * v36 + 32);
      }

      v13 = v38;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v40 = [v38 uniqueIdentifier];
      sub_1D1E66A5C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1D177D0AC(0, v37[2] + 1, 1, v37);
      }

      v6 = v37[2];
      v41 = v37[3];
      v13 = (v6 + 1);
      if (v6 >= v41 >> 1)
      {
        v37 = sub_1D177D0AC((v41 > 1), v6 + 1, 1, v37);
      }

      v37[2] = v13;
      (*(v65 + 32))(v37 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v6, v66, v64);
      ++v36;
      if (v39 == v34)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_40:

  v46 = sub_1D17843EC(v60);

  return v46;
}

uint64_t sub_1D1D1BF5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for StaticRoom(0);
  __swift_allocate_value_buffer(v10, qword_1EE07DC10);
  v11 = __swift_project_value_buffer(v10, qword_1EE07DC10);
  if (qword_1EE07DC28 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_1EE07DC30);
  (*(v4 + 16))(v9, v12, v3);
  sub_1D1E669EC();
  v13 = sub_1D1E669FC();
  (*(*(v13 - 8) + 56))(v2, 0, 1, v13);
  sub_1D1E66A6C();
  v28 = v7;
  v14 = MEMORY[0x1E69E7CC0];
  v29 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v27 = sub_1D18D50D4(v14);
  v26 = sub_1D18D5520(v14);
  v25 = sub_1D18D573C(v14);
  v24 = sub_1D18D5958(v14);
  v23 = sub_1D18D5B74(v14);
  v15 = sub_1D18D5D90(v14);
  v16 = sub_1D18D52F0(v14);
  v17 = *(v4 + 32);
  v17(v11, v9, v3);
  v18 = (v11 + v10[5]);
  *v18 = 0x6F52207974706D45;
  v18[1] = 0xEA00000000006D6FLL;
  sub_1D1741A90(v2, v11 + v10[6], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v11 + v10[7]) = 0;
  *(v11 + v10[8]) = 0;
  result = (v17)(v11 + v10[9], v28, v3);
  *(v11 + v10[10]) = v29;
  v20 = v26;
  *(v11 + v10[11]) = v27;
  *(v11 + v10[12]) = v20;
  v21 = v24;
  *(v11 + v10[13]) = v25;
  *(v11 + v10[14]) = v21;
  *(v11 + v10[15]) = v23;
  *(v11 + v10[16]) = v15;
  *(v11 + v10[17]) = v14;
  *(v11 + v10[18]) = v14;
  *(v11 + v10[19]) = v16;
  return result;
}

uint64_t sub_1D1D1C2DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for StaticRoom(0);
  __swift_allocate_value_buffer(v10, qword_1EC64DA80);
  v11 = __swift_project_value_buffer(v10, qword_1EC64DA80);
  if (qword_1EC6423F0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_1EC64DA98);
  (*(v4 + 16))(v9, v12, v3);
  sub_1D1E669EC();
  v13 = sub_1D1E669FC();
  (*(*(v13 - 8) + 56))(v2, 0, 1, v13);
  sub_1D1E66A6C();
  v28 = v7;
  v14 = MEMORY[0x1E69E7CC0];
  v29 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v27 = sub_1D18D50D4(v14);
  v26 = sub_1D18D5520(v14);
  v25 = sub_1D18D573C(v14);
  v24 = sub_1D18D5958(v14);
  v23 = sub_1D18D5B74(v14);
  v15 = sub_1D18D5D90(v14);
  v16 = sub_1D18D52F0(v14);
  v17 = *(v4 + 32);
  v17(v11, v9, v3);
  v18 = (v11 + v10[5]);
  *v18 = 0x5220656C706D6153;
  v18[1] = 0xEB000000006D6F6FLL;
  sub_1D1741A90(v2, v11 + v10[6], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v11 + v10[7]) = 0;
  *(v11 + v10[8]) = 0;
  result = (v17)(v11 + v10[9], v28, v3);
  *(v11 + v10[10]) = v29;
  v20 = v26;
  *(v11 + v10[11]) = v27;
  *(v11 + v10[12]) = v20;
  v21 = v24;
  *(v11 + v10[13]) = v25;
  *(v11 + v10[14]) = v21;
  *(v11 + v10[15]) = v23;
  *(v11 + v10[16]) = v15;
  *(v11 + v10[17]) = v14;
  *(v11 + v10[18]) = v14;
  *(v11 + v10[19]) = v16;
  return result;
}

uint64_t sub_1D1D1C660@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for StaticRoom(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_1D1D1D7E0(v7, a4, type metadata accessor for StaticRoom);
}

uint64_t sub_1D1D1C6C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v3, qword_1EE07DC30);
  v4 = __swift_project_value_buffer(v3, qword_1EE07DC30);
  sub_1D1E66A0C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1C81C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v3, qword_1EC64DA98);
  v4 = __swift_project_value_buffer(v3, qword_1EC64DA98);
  sub_1D1E66A0C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t StaticRoom.description.getter()
{
  sub_1D1E6884C();

  v1 = type metadata accessor for StaticRoom(0);
  MEMORY[0x1D3890F70](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x1D3890F70](0x27203A6469202C27, 0xE800000000000000);
  sub_1D1E66A7C();
  sub_1D1D1D848(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0xD000000000000013, 0x80000001D1EC8710);
  if (*(v0 + *(v1 + 28)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v3, v4);

  MEMORY[0x1D3890F70](39, 0xE100000000000000);
  return 0x27206D6F6F52;
}

uint64_t sub_1D1D1CAEC(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v61 = type metadata accessor for StaticService(0);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || &a2[v27] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = &a4[v27];
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = &a4[v27];
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = &a2[v38];
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = &v39[v38];
          sub_1D1D1D7E0(&v39[v38], v40, type metadata accessor for StaticService);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_1D1D1D7E0(v42, v59, type metadata accessor for StaticService);
          v49 = sub_1D1D0D3A0(v47, v48, v62);
          if (v46)
          {
            sub_1D1D1D890(v48, type metadata accessor for StaticService);
            sub_1D1D1D890(v47, type metadata accessor for StaticService);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = &v44[v38];
          sub_1D1D1D890(v48, type metadata accessor for StaticService);
          sub_1D1D1D890(v47, type metadata accessor for StaticService);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = &v44[v38];
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = &v44[v38];
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || &a1[v26] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = &a4[v26];
    v64 = &a4[v26];
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_1D1D1D7E0(a2, v21, type metadata accessor for StaticService);
        sub_1D1D1D7E0(a4, v17, type metadata accessor for StaticService);
        v31 = sub_1D1D0D3A0(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_1D1D1D890(v33, type metadata accessor for StaticService);
        sub_1D1D1D890(v21, type metadata accessor for StaticService);
        if (v32)
        {
          v36 = &a2[v29];
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = &v34[v29];
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1D1D890(v17, type metadata accessor for StaticService);
      sub_1D1D1D890(v21, type metadata accessor for StaticService);
    }
  }

LABEL_62:
  sub_1D1DC712C(&v66, &v65, &v64);

  return 1;
}

void *sub_1D1D1D15C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D1D1DE58(v8, v6, v4, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1D1D20740(v10, v6, v4, v3);
  result = MEMORY[0x1D3893640](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void *sub_1D1D1D2C8(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1D1D20920(v12, v7, v5, a3);
  result = MEMORY[0x1D3893640](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void *sub_1D1D1D438(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v10 = v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D1D20208(v10, v8, a3, v6, a2, type metadata accessor for StaticService, sub_1D188B1C8, type metadata accessor for StaticService, type metadata accessor for StaticService);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1D1B7441C(v12, v8, a3, v6, a2);
  result = MEMORY[0x1D3893640](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1D1D1D7E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D1D848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1D1D890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D1D1D8F0(uint64_t a1, char a2, uint64_t (*a3)(char *, unint64_t, uint64_t, void), uint64_t (*a4)(void *, uint64_t, uint64_t, void))
{
  v7 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v11 = v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v10);
    result = a3(v11, v9, v7, a2 & 1);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v14 = swift_slowAlloc();
  v15 = sub_1D1D20890(v14, v9, v7, a2 & 1, a4);
  result = MEMORY[0x1D3893640](v14, -1, -1);
  if (!v4)
  {
    return v15;
  }

  return result;
}

void *sub_1D1D1DB10(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v24 = a6;
  v13 = a1;
  v25 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 32);
  v15 = ((1 << v14) + 63) >> 6;
  v16 = 8 * v15;
  if ((v14 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  v23 = (((1 << v14) + 63) >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v15 = v23;
LABEL_2:
    v22 = a5;
    v23 = &v22;
    MEMORY[0x1EEE9AC00](a1);
    bzero(&v22 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);
    result = sub_1D1D20208(&v22 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v15, a3, v13, a2, a4, v22, v24, a7);
    if (v7)
    {
      return swift_willThrow();
    }

    return result;
  }

  v18 = swift_slowAlloc();
  v19 = a3;
  v20 = v18;
  v21 = sub_1D1D207C8(v18, v23, v19, v13, a2, a4, a5, v24, a7);
  result = MEMORY[0x1D3893640](v20, -1, -1);
  if (!v7)
  {
    return v21;
  }

  return result;
}

void *sub_1D1D1DCD8(uint64_t (*a1)(uint64_t *, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1D1D20528(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1D1D20A4C(v11, v7, a3, v5);
  result = MEMORY[0x1D3893640](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1D1D1DE58(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v35 = a2;
  v40 = a4;
  v36 = a1;
  v44 = type metadata accessor for StaticService(0);
  v39 = *(v44 - 8);
  result = MEMORY[0x1EEE9AC00](v44);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v8 = 0;
  v41 = a3;
  v42 = v7;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v43 = (v14 - 1) & v14;
LABEL_13:
    v19 = v16 | (v8 << 6);
    v20 = v41[7];
    v21 = *(v39 + 72);
    v38 = v19;
    sub_1D1D1D7E0(v20 + v21 * v19, v7, type metadata accessor for StaticService);
    v22 = v7[*(v44 + 112)];
    if (v22 == 53)
    {
      LOBYTE(v22) = v7[*(v44 + 104)];
    }

    LOBYTE(v46[0]) = v22;
    ServiceKind.umbrellaCategory.getter(&v48);
    if ((sub_1D179F48C(v48, v40) & 1) == 0)
    {
      goto LABEL_5;
    }

    if (qword_1EC642398 != -1)
    {
      swift_once();
    }

    v23 = qword_1EC6BE1B0;
    if (*(qword_1EC6BE1B0 + 16) && (v24 = v42[*(v44 + 104)], sub_1D1E6920C(), v47 = v24, v48 = v24, ServiceKind.rawValue.getter(), sub_1D1E678EC(), , v25 = sub_1D1E6926C(), v26 = -1 << *(v23 + 32), v27 = v25 & ~v26, ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
    {
      v45 = ~v26;
      while (1)
      {
        LOBYTE(v46[0]) = *(*(v23 + 48) + v27);
        v48 = v47;
        v28 = ServiceKind.rawValue.getter();
        v30 = v29;
        if (v28 == ServiceKind.rawValue.getter() && v30 == v31)
        {
          break;
        }

        v33 = sub_1D1E6904C();

        if (v33)
        {
          goto LABEL_29;
        }

        v27 = (v27 + 1) & v45;
        if (((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_29:
      v7 = v42;
      result = sub_1D1D1D890(v42, type metadata accessor for StaticService);
      *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v34 = __OFADD__(v37++, 1);
      v14 = v43;
      if (v34)
      {
        goto LABEL_34;
      }
    }

    else
    {
LABEL_5:
      v7 = v42;
      result = sub_1D1D1D890(v42, type metadata accessor for StaticService);
      v14 = v43;
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_1D188B1C8(v36, v35, v37, v41);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v43 = (v18 - 1) & v18;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D1D1E228(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = a2;
  v25 = a4;
  v22 = a1;
  v5 = type metadata accessor for StaticService(0);
  v24 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v24 + 72) * v17, v8, type metadata accessor for StaticService);
    if (v25)
    {
      v18 = v8[*(v5 + 96)];
      result = sub_1D1D1D890(v8, type metadata accessor for StaticService);
      if (v18)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = sub_1D1D1D890(v8, type metadata accessor for StaticService);
LABEL_15:
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1D188B1C8(v22, v21, v23, a3);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return sub_1D188B1C8(v22, v21, v23, a3);
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1E440(unint64_t *a1, uint64_t a2, void *a3)
{
  v56 = a2;
  v57 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v59 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v54 - v9;
  v10 = type metadata accessor for StaticService(0);
  v65 = *(v10 - 1);
  result = MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v14 = 0;
  v66 = result;
  v67 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v68 = 0x80000001D1EB3580;
  v69 = v13;
  v63 = v21;
  v64 = v16;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v70 = (v20 - 1) & v20;
LABEL_13:
    v25 = v22 | (v14 << 6);
    v26 = v67[7];
    v27 = *(v65 + 72);
    v61 = v25;
    sub_1D1D1D7E0(v26 + v27 * v25, v13, type metadata accessor for StaticService);
    v28 = v10[26];
    LOBYTE(v71[0]) = v13[v28];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v68 == v29)
    {

LABEL_17:
      v62 = v28;
      v31 = &v13[v10[29]];
      v32 = v60;
      sub_1D1741C08(v31, v60, &qword_1EC642590, qword_1D1E71260);
      v33 = sub_1D1E66A7C();
      v34 = *(*(v33 - 8) + 48);
      v35 = v34(v32, 1, v33);
      sub_1D1741A30(v32, &qword_1EC642590, qword_1D1E71260);
      if (v35 != 1)
      {
        goto LABEL_5;
      }

      v13 = v69;
      v36 = v59;
      sub_1D1741C08(&v69[v10[37]], v59, &qword_1EC642590, qword_1D1E71260);
      v37 = v34(v36, 1, v33);
      sub_1D1741A30(v36, &qword_1EC642590, qword_1D1E71260);
      v28 = v62;
      if (v37 != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }

    v30 = sub_1D1E6904C();

    if (v30)
    {
      goto LABEL_17;
    }

LABEL_19:
    if (qword_1EC642398 != -1)
    {
      swift_once();
    }

    v38 = qword_1EC6BE1B0;
    if (*(qword_1EC6BE1B0 + 16) && (v39 = v13[v28], sub_1D1E6920C(), v72 = v39, ServiceKind.rawValue.getter(), sub_1D1E678EC(), , v40 = sub_1D1E6926C(), v41 = -1 << *(v38 + 32), v42 = v40 & ~v41, ((*(v38 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
    {
      v43 = ~v41;
      while (1)
      {
        LOBYTE(v71[0]) = *(*(v38 + 48) + v42);
        v72 = v39;
        v44 = ServiceKind.rawValue.getter();
        v46 = v45;
        if (v44 == ServiceKind.rawValue.getter() && v46 == v47)
        {
          break;
        }

        v49 = sub_1D1E6904C();

        if (v49)
        {
          goto LABEL_32;
        }

        v42 = (v42 + 1) & v43;
        if (((*(v38 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_32:
      v10 = v66;
      v13 = v69;
      v50 = v55;
      sub_1D1741C08(&v69[*(v66 + 116)], v55, &qword_1EC642590, qword_1D1E71260);
      v51 = sub_1D1E66A7C();
      v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
      sub_1D1741A30(v50, &qword_1EC642590, qword_1D1E71260);
      result = sub_1D1D1D890(v13, type metadata accessor for StaticService);
      v21 = v63;
      v16 = v64;
      v20 = v70;
      if (v52 == 1)
      {
        *(v57 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
        if (__OFADD__(v58++, 1))
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_5:
      v13 = v69;
      result = sub_1D1D1D890(v69, type metadata accessor for StaticService);
      v10 = v66;
      v21 = v63;
      v16 = v64;
      v20 = v70;
    }
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return sub_1D188B1C8(v57, v56, v58, v67);
    }

    v24 = v16[v14];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v70 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D1D1EA84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a1;
  v4 = type metadata accessor for StaticService(0);
  v23 = *(v4 - 1);
  result = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = v13 | (v8 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v23 + 72) * v16, v7, type metadata accessor for StaticService);
    if (v7[v4[8]] == 1)
    {
      v17 = v7[v4[9]];
      if (v17 != 2 && (v17 & 1) != 0)
      {
        result = sub_1D1D1D890(v7, type metadata accessor for StaticService);
LABEL_18:
        *(v21 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v21, v20, v22, a3);
        }
      }

      else
      {
        v25 = *&v7[v4[32]];
        v24 = v7[v4[26]];

        v18 = StaticCharacteristicsBag.isReachable(for:)(&v24);

        result = sub_1D1D1D890(v7, type metadata accessor for StaticService);
        if (v18)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      result = sub_1D1D1D890(v7, type metadata accessor for StaticService);
    }
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
      return sub_1D188B1C8(v21, v20, v22, a3);
    }

    v15 = *(a3 + 64 + 8 * v8);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1ED70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v4 = type metadata accessor for StaticMediaProfile(0);
  v25 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = v13 | (v8 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v25 + 72) * v16, v7, type metadata accessor for StaticMediaProfile);
    v17 = &v7[*(v4 + 92)];
    v18 = v17[8];
    if (v18 <= 1)
    {
      if (v17[8])
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v19 = *v17;
    if (v18 == 2)
    {
      result = sub_1D1D1D890(v7, type metadata accessor for StaticMediaProfile);
      if ((v19 & 0x100) != 0)
      {
LABEL_22:
        *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_1D188BA98(v23, v22, v24, a3);
        }
      }
    }

    else
    {
      if (v18 != 3)
      {
        goto LABEL_21;
      }

      if ((v19 - 2) >= 2)
      {
        if (v19)
        {
LABEL_21:
          result = sub_1D1D1D890(v7, type metadata accessor for StaticMediaProfile);
          goto LABEL_22;
        }

LABEL_19:
        result = sub_1D1D1D890(v7, type metadata accessor for StaticMediaProfile);
      }

      else
      {
        v20 = *(*&v7[*(v4 + 68)] + 16);
        result = sub_1D1D1D890(v7, type metadata accessor for StaticMediaProfile);
        if (!v20)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
      return sub_1D188BA98(v23, v22, v24, a3);
    }

    v15 = *(a3 + 64 + 8 * v8);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1F000(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a1;
  v4 = type metadata accessor for StaticMediaProfile(0);
  v22 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v8 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v22 + 72) * v16, v7, type metadata accessor for StaticMediaProfile);
    v17 = v7[*(v4 + 52)];
    result = sub_1D1D1D890(v7, type metadata accessor for StaticMediaProfile);
    if ((v17 & 1) == 0)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_1D188BA98(v20, v19, v21, a3);
      }
    }
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
      return sub_1D188BA98(v20, v19, v21, a3);
    }

    v15 = *(a3 + 64 + 8 * v8);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1F1EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
  v4 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v37 - v6;
  v7 = type metadata accessor for StaticMediaProfile(0);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v48);
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v10;
  v12 = 0;
  v55 = a3;
  v13 = *(a3 + 64);
  v42 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v40 = 0;
  v41 = (v14 + 63) >> 6;
  v44 = v10 + 8;
  v45 = v10 + 16;
  v17 = v48;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v56 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v12 << 6);
    v22 = v55;
    v23 = v46;
    v24 = v47;
    v25 = *(v47 + 16);
    v25(v46, v55[6] + *(v47 + 72) * v21, v17);
    v26 = v22[7];
    v27 = *(v50 + 72);
    v43 = v21;
    v28 = v26 + v27 * v21;
    v29 = v49;
    sub_1D1D1D7E0(v28, v49, type metadata accessor for StaticMediaProfile);
    v30 = v52;
    v25(v52, v23, v17);
    v31 = v54;
    sub_1D1D1D7E0(v29, &v30[*(v54 + 48)], type metadata accessor for StaticMediaProfile);
    v32 = v30;
    v33 = v53;
    sub_1D1741A90(v32, v53, &qword_1EC645468, &unk_1D1E995E0);
    v34 = v33 + *(v31 + 48);
    LODWORD(v31) = *(v34 + *(v51 + 60));
    sub_1D1D1D890(v34, type metadata accessor for StaticMediaProfile);
    v35 = *(v24 + 8);
    v35(v33, v17);
    sub_1D1D1D890(v29, type metadata accessor for StaticMediaProfile);
    result = (v35)(v23, v17);
    v16 = v56;
    if (v31 == 1)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_1D188BA98(v39, v38, v40, v55);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v41)
    {
      return sub_1D188BA98(v39, v38, v40, v55);
    }

    v20 = *(v42 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v56 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1F5D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
  v4 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v37 - v6;
  v7 = type metadata accessor for StaticMediaSystem(0);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v48);
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v10;
  v12 = 0;
  v55 = a3;
  v13 = *(a3 + 64);
  v42 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v40 = 0;
  v41 = (v14 + 63) >> 6;
  v44 = v10 + 8;
  v45 = v10 + 16;
  v17 = v48;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v56 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v12 << 6);
    v22 = v55;
    v23 = v46;
    v24 = v47;
    v25 = *(v47 + 16);
    v25(v46, v55[6] + *(v47 + 72) * v21, v17);
    v26 = v22[7];
    v27 = *(v50 + 72);
    v43 = v21;
    v28 = v26 + v27 * v21;
    v29 = v49;
    sub_1D1D1D7E0(v28, v49, type metadata accessor for StaticMediaSystem);
    v30 = v52;
    v25(v52, v23, v17);
    v31 = v54;
    sub_1D1D1D7E0(v29, &v30[*(v54 + 48)], type metadata accessor for StaticMediaSystem);
    v32 = v30;
    v33 = v53;
    sub_1D1741A90(v32, v53, &qword_1EC645478, &qword_1D1E79A08);
    v34 = v33 + *(v31 + 48);
    LODWORD(v31) = *(v34 + *(v51 + 52));
    sub_1D1D1D890(v34, type metadata accessor for StaticMediaSystem);
    v35 = *(v24 + 8);
    v35(v33, v17);
    sub_1D1D1D890(v29, type metadata accessor for StaticMediaSystem);
    result = (v35)(v23, v17);
    v16 = v56;
    if (v31 == 1)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_1D188BF00(v39, v38, v40, v55);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v41)
    {
      return sub_1D188BF00(v39, v38, v40, v55);
    }

    v20 = *(v42 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v56 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1F9C4(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = a2;
  v25 = a4;
  v22 = a1;
  v5 = type metadata accessor for StaticAccessory(0);
  v24 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v24 + 72) * v17, v8, type metadata accessor for StaticAccessory);
    if (v25)
    {
      v18 = v8[*(v5 + 72)];
      result = sub_1D1D1D890(v8, type metadata accessor for StaticAccessory);
      if (v18)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = sub_1D1D1D890(v8, type metadata accessor for StaticAccessory);
LABEL_15:
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1D188CC38(v22, v21, v23, a3);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return sub_1D188CC38(v22, v21, v23, a3);
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1FBDC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v4 = type metadata accessor for StaticAccessory(0);
  v24 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = v14 | (v8 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v24 + 72) * v17, v7, type metadata accessor for StaticAccessory);
    v18 = &v7[*(v4 + 92)];
    v19 = v18[8];
    if (v19 == 2)
    {
      v13 = *v18;
      result = sub_1D1D1D890(v7, type metadata accessor for StaticAccessory);
      if ((v13 & 0x100) == 0)
      {
LABEL_16:
        *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_1D188CC38(v22, v21, v23, a3);
        }
      }
    }

    else
    {
      if (v19 == 255)
      {
        result = sub_1D1D1D890(v7, type metadata accessor for StaticAccessory);
        goto LABEL_16;
      }

      result = sub_1D1D1D890(v7, type metadata accessor for StaticAccessory);
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
      return sub_1D188CC38(v22, v21, v23, a3);
    }

    v16 = *(a3 + 64 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1FE20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v4 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v37 - v6;
  v7 = type metadata accessor for StaticAccessory(0);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v48);
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v10;
  v12 = 0;
  v55 = a3;
  v13 = *(a3 + 64);
  v42 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v40 = 0;
  v41 = (v14 + 63) >> 6;
  v44 = v10 + 8;
  v45 = v10 + 16;
  v17 = v48;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v56 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v12 << 6);
    v22 = v55;
    v23 = v46;
    v24 = v47;
    v25 = *(v47 + 16);
    v25(v46, v55[6] + *(v47 + 72) * v21, v17);
    v26 = v22[7];
    v27 = *(v50 + 72);
    v43 = v21;
    v28 = v26 + v27 * v21;
    v29 = v49;
    sub_1D1D1D7E0(v28, v49, type metadata accessor for StaticAccessory);
    v30 = v52;
    v25(v52, v23, v17);
    v31 = v54;
    sub_1D1D1D7E0(v29, &v30[*(v54 + 48)], type metadata accessor for StaticAccessory);
    v32 = v30;
    v33 = v53;
    sub_1D1741A90(v32, v53, &qword_1EC644B30, &qword_1D1E77280);
    v34 = v33 + *(v31 + 48);
    LOBYTE(v31) = *(v34 + *(v51 + 60));
    sub_1D1D1D890(v34, type metadata accessor for StaticAccessory);
    v35 = *(v24 + 8);
    v35(v33, v17);
    sub_1D1D1D890(v29, type metadata accessor for StaticAccessory);
    result = (v35)(v23, v17);
    v16 = v56;
    if ((v31 & 1) == 0)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_1D188CC38(v39, v38, v40, v55);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v41)
    {
      return sub_1D188CC38(v39, v38, v40, v55);
    }

    v20 = *(v42 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v56 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D20208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void), uint64_t (*a9)(void))
{
  v48 = a4;
  v49 = a8;
  v38 = a2;
  v39 = a7;
  v40 = a1;
  v43 = a9;
  v10 = a6(0);
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = &v37 - v11;
  v12 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v12);
  v50 = a3;
  v51 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v19 = *(a3 + 64);
  v18 = a3 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v44 = v14 + 16;
  v45 = v14;
  v41 = 0;
  v42 = (v14 + 8);
  while (v22)
  {
    v52 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v16 << 6);
    v25 = v51;
LABEL_11:
    v28 = v50;
    (*(v45 + 16))(v25, *(v50 + 48) + *(v45 + 72) * v24, v12);
    v29 = v24;
    v30 = *(v28 + 56) + *(v47 + 72) * v24;
    v31 = v12;
    v32 = v46;
    sub_1D1D1D7E0(v30, v46, v49);
    v33 = v53;
    v34 = v48(v25, v32);
    v53 = v33;
    if (v33)
    {
      sub_1D1D1D890(v32, v43);
      return (*v42)(v25, v31);
    }

    v35 = v34;
    sub_1D1D1D890(v32, v43);
    result = (*v42)(v25, v31);
    v12 = v31;
    v22 = v52;
    if (v35)
    {
      *(v40 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
        return v39(v40, v38, v41, v50);
      }
    }
  }

  v26 = v16;
  v25 = v51;
  while (1)
  {
    v16 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v16 >= v23)
    {
      return v39(v40, v38, v41, v50);
    }

    v27 = *(v18 + 8 * v16);
    ++v26;
    if (v27)
    {
      v52 = (v27 - 1) & v27;
      v24 = __clz(__rbit64(v27)) | (v16 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D20528(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, char *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for StaticMatterDevice(0);
  v28 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v10 = 0;
  v30 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v30[7];
    v31 = *(v30[6] + 8 * v21);
    sub_1D1D1D7E0(v22 + *(v28 + 72) * v21, v9, type metadata accessor for StaticMatterDevice);
    v23 = v29(&v31, v9);
    result = sub_1D1D1D890(v9, type metadata accessor for StaticMatterDevice);
    if (v4)
    {
      return result;
    }

    if (v23)
    {
      *(v26 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_1D188D804(v26, v25, v27, v30);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_1D188D804(v26, v25, v27, v30);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1D20740(void *result, uint64_t a2, void *a3, int a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D1D1DE58(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D1D207C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void), uint64_t (*a9)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v10 = result;
      v17 = a2;
      v11 = a8;
      v12 = a7;
      v13 = a6;
      v14 = a5;
      v15 = a4;
      bzero(result, 8 * a2);
      result = v10;
      a2 = v17;
      a4 = v15;
      a5 = v14;
      a6 = v13;
      a7 = v12;
      a8 = v11;
    }

    v16 = sub_1D1D20208(result, a2, a3, a4, a5, a6, a7, a8, a9);

    return v16;
  }

  return result;
}

void *sub_1D1D20890(void *result, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *, uint64_t, uint64_t, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4 & 1);

    return v10;
  }

  return result;
}

void *sub_1D1D20920(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1D1D209A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1D1D20A4C(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D1D20528(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D1D20ADC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D16EEE20(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1D1D20B74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D16EEE20(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s13HomeDataModel8RoomTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RoomType(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E98, &unk_1D1E74290);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D1D1D7E0(a1, &v21 - v13, type metadata accessor for RoomType);
  sub_1D1D1D7E0(a2, &v14[v15], type metadata accessor for RoomType);
  v16 = *(v5 + 48);
  v17 = v16(v14, 4, v4);
  if (v17 <= 1)
  {
    if (!v17)
    {
      sub_1D1D1D7E0(v14, v10, type metadata accessor for RoomType);
      if (!v16(&v14[v15], 4, v4))
      {
        (*(v5 + 32))(v7, &v14[v15], v4);
        v18 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v20 = *(v5 + 8);
        v20(v7, v4);
        v20(v10, v4);
        sub_1D1D1D890(v14, type metadata accessor for RoomType);
        return v18 & 1;
      }

      (*(v5 + 8))(v10, v4);
      goto LABEL_12;
    }

    if (v16(&v14[v15], 4, v4) == 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_1D1741A30(v14, &qword_1EC643E98, &unk_1D1E74290);
    v18 = 0;
    return v18 & 1;
  }

  if (v17 == 2)
  {
    if (v16(&v14[v15], 4, v4) == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v17 != 3)
  {
    if (v16(&v14[v15], 4, v4) == 4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v16(&v14[v15], 4, v4) != 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1D1D1D890(v14, type metadata accessor for RoomType);
  v18 = 1;
  return v18 & 1;
}

uint64_t _s13HomeDataModel10StaticRoomV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = type metadata accessor for StaticRoom(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v34 = v14;
  v35 = a2;
  v20 = *(v14 + 24);
  v21 = *(v11 + 48);
  sub_1D1741C08(a1 + v20, v13, &qword_1EC642570, &qword_1D1E6C6A0);
  v22 = v35 + v20;
  v23 = v35;
  sub_1D1741C08(v22, &v13[v21], &qword_1EC642570, &qword_1D1E6C6A0);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) != 1)
  {
    sub_1D1741C08(v13, v10, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v24(&v13[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v21], v4);
      sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v25 = sub_1D1E6775C();
      v26 = *(v5 + 8);
      v26(v7, v4);
      v26(v10, v4);
      v23 = v35;
      sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    (*(v5 + 8))(v10, v4);
LABEL_12:
    sub_1D1741A30(v13, &qword_1EC642AC0, &qword_1D1E6E810);
    goto LABEL_15;
  }

  if (v24(&v13[v21], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_14:
  v27 = v34;
  if (*(a1 + v34[7]) == *(v23 + v34[7]))
  {
    v30 = v34[8];
    v31 = *(a1 + v30);
    v32 = *(v23 + v30);
    if (v31)
    {
      if (!v32)
      {
        goto LABEL_15;
      }

      v33 = sub_1D17ABBCC(v31, v32);

      if ((v33 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v32)
    {
      goto LABEL_15;
    }

    if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (sub_1D1848AD4(*(a1 + v27[10]), *(v23 + v27[10])) & 1) != 0 && (sub_1D184F4FC(*(a1 + v27[11]), *(v23 + v27[11])) & 1) != 0 && (sub_1D184FAD4(*(a1 + v27[12]), *(v23 + v27[12])) & 1) != 0 && (sub_1D18500AC(*(a1 + v27[13]), *(v23 + v27[13])) & 1) != 0 && (sub_1D1850684(*(a1 + v27[14]), *(v23 + v27[14])) & 1) != 0 && (sub_1D1849684(*(a1 + v27[15]), *(v23 + v27[15])) & 1) != 0 && (sub_1D18490AC(*(a1 + v27[16]), *(v23 + v27[16])) & 1) != 0 && (sub_1D17796E4(*(a1 + v27[17]), *(v23 + v27[17])) & 1) != 0 && (sub_1D17796E4(*(a1 + v27[18]), *(v23 + v27[18])))
    {
      v28 = sub_1D1850C5C(*(a1 + v34[19]), *(v35 + v34[19]));
      return v28 & 1;
    }
  }

LABEL_15:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1D1D21434(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v216 = a1;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v229 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v228 = &v210 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v213 = &v210 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v212 = &v210 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v233 = &v210 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v234 = &v210 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v218 = &v210 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v210 - v26;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v28 = MEMORY[0x1EEE9AC00](v242);
  v239 = &v210 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v210 - v30;
  v249 = type metadata accessor for StaticService(0);
  v231 = *(v249 - 8);
  v32 = MEMORY[0x1EEE9AC00](v249);
  v223 = &v210 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v247 = &v210 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v210 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v250 = &v210 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v238 = &v210 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v237 = &v210 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v45);
  v232 = a3;
  v48 = a3[1];
  v244 = a5;
  if (v48 < 1)
  {
    swift_bridgeObjectRetain_n();
    v219 = MEMORY[0x1E69E7CC0];
LABEL_148:
    v250 = *v216;
    if (!v250)
    {
      goto LABEL_187;
    }

    swift_bridgeObjectRetain_n();
    v10 = v219;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_150:
      v255 = v10;
      v200 = *(v10 + 16);
      if (v200 >= 2)
      {
        do
        {
          v201 = *v232;
          if (!*v232)
          {
            goto LABEL_185;
          }

          v202 = *(v10 + 16 * v200);
          v203 = *(v10 + 16 * (v200 - 1) + 40);
          v204 = *(v231 + 72);
          v205 = (v201 + v204 * v202);
          v206 = (v201 + v204 * *(v10 + 16 * (v200 - 1) + 32));
          v207 = (v201 + v204 * v203);
          v208 = v244;

          sub_1D1D1CAEC(v205, v206, v207, v250, v208);
          if (v6)
          {
            break;
          }

          if (v203 < v202)
          {
            goto LABEL_174;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v200 - 2 >= *(v10 + 16))
          {
            goto LABEL_175;
          }

          v209 = (v10 + 16 * v200);
          *v209 = v202;
          v209[1] = v203;
          v255 = v10;
          sub_1D1E0BDB8(v200 - 1);
          v10 = v255;
          v200 = *(v255 + 16);
        }

        while (v200 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_181:
    v10 = sub_1D1E0BE44(v10);
    goto LABEL_150;
  }

  v210 = &v210 - v46;
  v211 = v47;
  v240 = (v11 + 48);
  v230 = (v11 + 32);
  v236 = (v11 + 8);
  swift_bridgeObjectRetain_n();
  v219 = MEMORY[0x1E69E7CC0];
  v215 = a4;
  v241 = v10;
  v217 = v27;
  v49 = v239;
  v221 = v31;
  v243 = v38;
  v50 = 0;
LABEL_4:
  if (v50 + 1 >= v48)
  {
    v61 = v50 + 1;
    goto LABEL_49;
  }

  v235 = v48;
  v51 = *v232;
  v52 = *(v231 + 72);
  v53 = *v232 + v52 * (v50 + 1);
  v54 = v50;
  v55 = v210;
  sub_1D1D1D7E0(v53, v210, type metadata accessor for StaticService);
  v245 = v51;
  v56 = v51 + v52 * v54;
  v57 = v211;
  sub_1D1D1D7E0(v56, v211, type metadata accessor for StaticService);
  LODWORD(v248) = sub_1D1D0D3A0(v55, v57, v244);
  if (v6)
  {
    sub_1D1D1D890(v57, type metadata accessor for StaticService);
    sub_1D1D1D890(v55, type metadata accessor for StaticService);
    swift_bridgeObjectRelease_n();
  }

  v220 = 0;
  sub_1D1D1D890(v57, type metadata accessor for StaticService);
  sub_1D1D1D890(v55, type metadata accessor for StaticService);
  v214 = v54;
  v58 = v54 + 2;
  v246 = v52;
  v10 = v244;
  v59 = v245 + v52 * v58;
  while (1)
  {
    v61 = v235;
    if (v235 == v58)
    {
      break;
    }

    v62 = v237;
    sub_1D1D1D7E0(v59, v237, type metadata accessor for StaticService);
    v63 = v238;
    sub_1D1D1D7E0(v53, v238, type metadata accessor for StaticService);
    v64 = sub_1D18E4158(v62, v10);
    LOBYTE(v62) = v65;
    v66 = sub_1D18E4158(v63, v10);
    if (v62)
    {
      if ((v67 & 1) == 0)
      {
        v60 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      if (v67)
      {
        v60 = 1;
        goto LABEL_8;
      }

      if (v64 != v66)
      {
        v60 = v64 < v66;
        goto LABEL_8;
      }
    }

    v68 = *(v249 + 56);
    v69 = *(v242 + 48);
    v70 = v221;
    sub_1D1741C08(v237 + v68, v221, &qword_1EC642570, &qword_1D1E6C6A0);
    v245 = v69;
    sub_1D1741C08(v238 + v68, v70 + v69, &qword_1EC642570, &qword_1D1E6C6A0);
    v71 = v241;
    v72 = *v240;
    if ((*v240)(v70, 1, v241) == 1)
    {
      if (v72(v70 + v245, 1, v71) == 1)
      {
        goto LABEL_23;
      }

      sub_1D1741A30(v70 + v245, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v70, &qword_1EC642570, &qword_1D1E6C6A0);
      v60 = 0;
      v49 = v239;
    }

    else
    {
      v73 = v217;
      sub_1D1741C08(v70, v217, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v72(v70 + v245, 1, v71) == 1)
      {
        (*v236)(v73, v71);
        sub_1D1741A30(v70 + v245, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v70, &qword_1EC642570, &qword_1D1E6C6A0);
        v60 = 1;
        v49 = v239;
        v10 = v244;
      }

      else
      {
        sub_1D1741C08(v70 + v245, v218, &qword_1EC642570, &qword_1D1E6C6A0);
        v74 = *v230;
        v75 = v212;
        (*v230)(v212, v73, v71);
        v76 = v213;
        v74(v213, v218, v71);
        sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        if (sub_1D1E6775C())
        {
          v77 = *v236;
          (*v236)(v76, v71);
          v77(v75, v71);
LABEL_23:
          sub_1D1741A30(v70, &qword_1EC642AC0, &qword_1D1E6E810);
          v78 = *(v249 + 20);
          v79 = (v237 + v78);
          v81 = *(v237 + v78);
          v80 = *(v237 + v78 + 8);
          v82 = (v238 + v78);
          v84 = *v82;
          v83 = v82[1];
          if (*v79 == *v82 && v80 == v83 || (sub_1D1E6904C() & 1) != 0)
          {
            v85 = sub_1D1E66A1C();
            v87 = v86;
            v88 = sub_1D1E66A1C();
            v49 = v239;
            if (v85 == v88 && v87 == v89)
            {

              v60 = 0;
            }

            else
            {
              v60 = sub_1D1E6904C();
            }

            v10 = v244;
          }

          else
          {
            v253 = v81;
            v254 = v80;
            v251 = v84;
            v252 = v83;
            sub_1D17D8EF0();
            v60 = sub_1D1E685FC() == -1;
            v10 = v244;
            v49 = v239;
          }

          goto LABEL_8;
        }

        v60 = sub_1D1E6696C();
        v90 = v76;
        v91 = v75;
        v92 = *v236;
        (*v236)(v90, v71);
        v92(v91, v71);
        v10 = v244;
        sub_1D1741A30(v70 + v245, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v70, &qword_1EC642570, &qword_1D1E6C6A0);
        v49 = v239;
      }
    }

LABEL_8:
    sub_1D1D1D890(v238, type metadata accessor for StaticService);
    sub_1D1D1D890(v237, type metadata accessor for StaticService);
    ++v58;
    v59 += v246;
    v53 += v246;
    if ((v248 ^ v60))
    {
      v61 = v58 - 1;
      break;
    }
  }

  v6 = v220;
  a4 = v215;
  v50 = v214;
  if ((v248 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v61 < v214)
  {
    goto LABEL_180;
  }

  if (v214 < v61)
  {
    v93 = v61;
    v10 = v246;
    v94 = v246 * (v61 - 1);
    v95 = v61 * v246;
    v235 = v61;
    v96 = v214;
    v97 = v214 * v246;
    do
    {
      if (v96 != --v93)
      {
        v98 = *v232;
        if (!*v232)
        {
          goto LABEL_184;
        }

        sub_1D1D26328(v98 + v97, v223, type metadata accessor for StaticService);
        if (v97 < v94 || v98 + v97 >= (v98 + v95))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v97 != v94)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1D1D26328(v223, v98 + v94, type metadata accessor for StaticService);
        v6 = v220;
      }

      ++v96;
      v94 -= v10;
      v95 -= v10;
      v97 += v10;
    }

    while (v96 < v93);
    a4 = v215;
    v61 = v235;
    v50 = v214;
  }

LABEL_49:
  v99 = v232[1];
  if (v61 >= v99)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v61, v50))
  {
    goto LABEL_177;
  }

  if (v61 - v50 >= a4)
  {
LABEL_58:
    v101 = v61;
    goto LABEL_59;
  }

  if (__OFADD__(v50, a4))
  {
    goto LABEL_178;
  }

  if (v50 + a4 >= v99)
  {
    v100 = v232[1];
  }

  else
  {
    v100 = v50 + a4;
  }

  if (v100 < v50)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v61 == v100)
  {
    goto LABEL_58;
  }

  v220 = v6;
  v157 = *v232;
  v158 = *(v231 + 72);
  v159 = *v232 + v158 * (v61 - 1);
  v245 = -v158;
  v214 = v50;
  v160 = (v50 - v61);
  v246 = v157;
  v222 = v158;
  v161 = v157 + v61 * v158;
  v162 = v243;
  v10 = v244;
  v224 = v100;
  while (2)
  {
    v235 = v61;
    v225 = v161;
    v226 = v160;
    v163 = v160;
    v227 = v159;
    v164 = v159;
LABEL_113:
    v165 = v250;
    sub_1D1D1D7E0(v161, v250, type metadata accessor for StaticService);
    sub_1D1D1D7E0(v164, v162, type metadata accessor for StaticService);
    v166 = sub_1D18E4158(v165, v10);
    LOBYTE(v165) = v167;
    v168 = sub_1D18E4158(v162, v10);
    if ((v165 & 1) == 0)
    {
      if (v169)
      {
        goto LABEL_123;
      }

      if (v166 == v168)
      {
        goto LABEL_118;
      }

      v193 = v166 < v168;
      goto LABEL_138;
    }

    if ((v169 & 1) == 0)
    {
      goto LABEL_110;
    }

LABEL_118:
    v248 = v163;
    v170 = *(v249 + 56);
    v171 = *(v242 + 48);
    sub_1D1741C08(&v250[v170], v49, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741C08(v162 + v170, v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
    v172 = v241;
    v173 = *v240;
    if ((*v240)(v49, 1, v241) == 1)
    {
      if (v173(v49 + v171, 1, v172) == 1)
      {
        goto LABEL_126;
      }

      sub_1D1741A30(v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_110:
      sub_1D1D1D890(v162, type metadata accessor for StaticService);
      sub_1D1D1D890(v250, type metadata accessor for StaticService);
LABEL_111:
      v61 = v235 + 1;
      v159 = v227 + v222;
      v160 = v226 - 1;
      v161 = v225 + v222;
      v101 = v224;
      if (v235 + 1 != v224)
      {
        continue;
      }

      v6 = v220;
      v50 = v214;
LABEL_59:
      v102 = v219;
      if (v101 < v50)
      {
        goto LABEL_176;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v224 = v101;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = sub_1D177D070(0, *(v102 + 2) + 1, 1, v102);
      }

      v105 = *(v102 + 2);
      v104 = *(v102 + 3);
      v106 = v105 + 1;
      v10 = v244;
      if (v105 >= v104 >> 1)
      {
        v102 = sub_1D177D070((v104 > 1), v105 + 1, 1, v102);
      }

      *(v102 + 2) = v106;
      v107 = &v102[16 * v105];
      v108 = v224;
      *(v107 + 4) = v50;
      *(v107 + 5) = v108;
      v248 = *v216;
      if (!v248)
      {
        goto LABEL_186;
      }

      if (v105)
      {
        while (2)
        {
          v109 = v106 - 1;
          if (v106 >= 4)
          {
            v114 = &v102[16 * v106 + 32];
            v115 = *(v114 - 64);
            v116 = *(v114 - 56);
            v120 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            if (v120)
            {
              goto LABEL_163;
            }

            v119 = *(v114 - 48);
            v118 = *(v114 - 40);
            v120 = __OFSUB__(v118, v119);
            v112 = v118 - v119;
            v113 = v120;
            if (v120)
            {
              goto LABEL_164;
            }

            v121 = &v102[16 * v106];
            v123 = *v121;
            v122 = *(v121 + 1);
            v120 = __OFSUB__(v122, v123);
            v124 = v122 - v123;
            if (v120)
            {
              goto LABEL_166;
            }

            v120 = __OFADD__(v112, v124);
            v125 = v112 + v124;
            if (v120)
            {
              goto LABEL_169;
            }

            if (v125 >= v117)
            {
              v143 = &v102[16 * v109 + 32];
              v145 = *v143;
              v144 = *(v143 + 1);
              v120 = __OFSUB__(v144, v145);
              v146 = v144 - v145;
              if (v120)
              {
                goto LABEL_173;
              }

              if (v112 < v146)
              {
                v109 = v106 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v113)
              {
                goto LABEL_165;
              }

              v126 = &v102[16 * v106];
              v128 = *v126;
              v127 = *(v126 + 1);
              v129 = __OFSUB__(v127, v128);
              v130 = v127 - v128;
              v131 = v129;
              if (v129)
              {
                goto LABEL_168;
              }

              v132 = &v102[16 * v109 + 32];
              v134 = *v132;
              v133 = *(v132 + 1);
              v120 = __OFSUB__(v133, v134);
              v135 = v133 - v134;
              if (v120)
              {
                goto LABEL_171;
              }

              if (__OFADD__(v130, v135))
              {
                goto LABEL_172;
              }

              if (v130 + v135 < v112)
              {
                goto LABEL_93;
              }

              if (v112 < v135)
              {
                v109 = v106 - 2;
              }
            }
          }

          else
          {
            if (v106 == 3)
            {
              v110 = *(v102 + 4);
              v111 = *(v102 + 5);
              v120 = __OFSUB__(v111, v110);
              v112 = v111 - v110;
              v113 = v120;
              goto LABEL_79;
            }

            v136 = &v102[16 * v106];
            v138 = *v136;
            v137 = *(v136 + 1);
            v120 = __OFSUB__(v137, v138);
            v130 = v137 - v138;
            v131 = v120;
LABEL_93:
            if (v131)
            {
              goto LABEL_167;
            }

            v139 = &v102[16 * v109];
            v141 = *(v139 + 4);
            v140 = *(v139 + 5);
            v120 = __OFSUB__(v140, v141);
            v142 = v140 - v141;
            if (v120)
            {
              goto LABEL_170;
            }

            if (v142 < v130)
            {
              break;
            }
          }

          v147 = v109 - 1;
          if (v109 - 1 >= v106)
          {
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
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
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          v148 = *v232;
          if (!*v232)
          {
            goto LABEL_183;
          }

          v10 = v102;
          v149 = *&v102[16 * v147 + 32];
          v150 = *&v102[16 * v109 + 40];
          v151 = *(v231 + 72);
          v152 = (v148 + v151 * v149);
          v153 = (v148 + v151 * *&v102[16 * v109 + 32]);
          v154 = (v148 + v151 * v150);
          v155 = v244;

          sub_1D1D1CAEC(v152, v153, v154, v248, v155);
          if (v6)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v150 < v149)
          {
            goto LABEL_161;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v147 >= *(v10 + 16))
          {
            goto LABEL_162;
          }

          v156 = v10 + 16 * v147;
          *(v156 + 32) = v149;
          *(v156 + 40) = v150;
          v255 = v10;
          sub_1D1E0BDB8(v109);
          v102 = v255;
          v106 = *(v255 + 16);
          v49 = v239;
          if (v106 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v219 = v102;
      v48 = v232[1];
      v50 = v224;
      a4 = v215;
      if (v224 >= v48)
      {
        goto LABEL_148;
      }

      goto LABEL_4;
    }

    break;
  }

  v174 = v10;
  v175 = v234;
  sub_1D1741C08(v49, v234, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v173(v49 + v171, 1, v172) != 1)
  {
    sub_1D1741C08(v49 + v171, v233, &qword_1EC642570, &qword_1D1E6C6A0);
    v176 = *v230;
    v177 = v228;
    (*v230)(v228, v175, v172);
    v178 = v229;
    v176(v229, v233, v172);
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if (sub_1D1E6775C())
    {
      v179 = *v236;
      (*v236)(v178, v172);
      v179(v177, v172);
      v162 = v243;
LABEL_126:
      sub_1D1741A30(v49, &qword_1EC642AC0, &qword_1D1E6E810);
      v180 = *(v249 + 20);
      v181 = &v250[v180];
      v182 = *&v250[v180];
      v183 = *&v250[v180 + 8];
      v184 = (v162 + v180);
      v185 = *v184;
      v186 = v184[1];
      v187 = *v181 == *v184 && v183 == v186;
      if (v187 || (sub_1D1E6904C() & 1) != 0)
      {
        v188 = sub_1D1E66A1C();
        v190 = v189;
        v162 = v243;
        v191 = sub_1D1E66A1C();
        v163 = v248;
        if (v188 == v191 && v190 == v192)
        {

          v10 = v244;
          v49 = v239;
          goto LABEL_110;
        }

        v193 = sub_1D1E6904C();

        v10 = v244;
        v49 = v239;
        goto LABEL_138;
      }

      v253 = v182;
      v254 = v183;
      v251 = v185;
      v252 = v186;
      sub_1D17D8EF0();
      v193 = sub_1D1E685FC() == -1;
      v162 = v243;
      v10 = v244;
      v49 = v239;
    }

    else
    {
      v193 = sub_1D1E6696C();
      v194 = v178;
      v195 = v177;
      v196 = *v236;
      (*v236)(v194, v172);
      v196(v195, v172);
      v10 = v244;
      sub_1D1741A30(v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
      v162 = v243;
    }

    v163 = v248;
LABEL_138:
    sub_1D1D1D890(v162, type metadata accessor for StaticService);
    sub_1D1D1D890(v250, type metadata accessor for StaticService);
    if ((v193 & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_139;
  }

  (*v236)(v175, v172);
  sub_1D1741A30(v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
  v10 = v174;
  v162 = v243;
  v163 = v248;
LABEL_123:
  sub_1D1D1D890(v162, type metadata accessor for StaticService);
  sub_1D1D1D890(v250, type metadata accessor for StaticService);
LABEL_139:
  if (v246)
  {
    v197 = v247;
    sub_1D1D26328(v161, v247, type metadata accessor for StaticService);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1D26328(v197, v164, type metadata accessor for StaticService);
    v164 += v245;
    v161 += v245;
    if (__CFADD__(v163++, 1))
    {
      goto LABEL_111;
    }

    goto LABEL_113;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_183:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_184:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1D22BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v90 = a5;
  v87 = a1;
  v91 = sub_1D1E669FC();
  v8 = *(v91 - 8);
  v9 = MEMORY[0x1EEE9AC00](v91 - 8);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v74 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v70 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v85);
  v17 = &v70 - v16;
  v92 = type metadata accessor for StaticService(0);
  v18 = MEMORY[0x1EEE9AC00](v92);
  v88 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v97 = &v70 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v70 - v24;
  v72 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v23 + 72);
    v28 = (v8 + 48);
    v73 = (v8 + 32);
    v81 = (v8 + 8);
    v29 = v26 + v27 * (a3 - 1);
    v86 = -v27;
    v30 = v87 - a3;
    v87 = v26;
    v71 = v27;
    v31 = v26 + v27 * a3;
    v83 = v17;
    v84 = &v70 - v24;
    v89 = v28;
LABEL_6:
    v79 = v29;
    v80 = a3;
    v77 = v31;
    v78 = v30;
    while (1)
    {
      sub_1D1D1D7E0(v31, v25, type metadata accessor for StaticService);
      v32 = v97;
      sub_1D1D1D7E0(v29, v97, type metadata accessor for StaticService);
      v33 = v90;
      v34 = sub_1D18E4158(v25, v90);
      v36 = v35;
      v37 = sub_1D18E4158(v32, v33);
      if (v36)
      {
        v39 = v89;
        if ((v38 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v39 = v89;
        if (v38)
        {
          goto LABEL_17;
        }

        if (v34 != v37)
        {
          v65 = v34 < v37;
          goto LABEL_31;
        }
      }

      v40 = *(v92 + 56);
      v41 = *(v85 + 48);
      sub_1D1741C08(&v25[v40], v17, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741C08(v97 + v40, &v17[v41], &qword_1EC642570, &qword_1D1E6C6A0);
      v42 = *v39;
      v43 = v91;
      if ((*v39)(v17, 1, v91) == 1)
      {
        if (v42(&v17[v41], 1, v43) != 1)
        {
          sub_1D1741A30(&v17[v41], &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
          v25 = v84;
LABEL_4:
          sub_1D1D1D890(v97, type metadata accessor for StaticService);
          result = sub_1D1D1D890(v25, type metadata accessor for StaticService);
LABEL_5:
          a3 = v80 + 1;
          v29 = v79 + v71;
          v30 = v78 - 1;
          v31 = v77 + v71;
          if (v80 + 1 == v72)
          {
            return result;
          }

          goto LABEL_6;
        }

        goto LABEL_20;
      }

      v44 = v82;
      sub_1D1741C08(v17, v82, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v42(&v17[v41], 1, v43) == 1)
      {
        (*v81)(v44, v43);
        sub_1D1741A30(&v17[v41], &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
        v25 = v84;
LABEL_17:
        sub_1D1D1D890(v97, type metadata accessor for StaticService);
        result = sub_1D1D1D890(v25, type metadata accessor for StaticService);
        goto LABEL_32;
      }

      v45 = v74;
      sub_1D1741C08(&v17[v41], v74, &qword_1EC642570, &qword_1D1E6C6A0);
      v46 = *v73;
      v47 = v75;
      (*v73)(v75, v44, v91);
      v48 = v47;
      v49 = v91;
      v50 = v76;
      v51 = v45;
      v52 = v48;
      v46(v76, v51, v91);
      sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      if (sub_1D1E6775C())
      {
        v53 = *v81;
        (*v81)(v50, v49);
        v53(v52, v49);
        v17 = v83;
LABEL_20:
        sub_1D1741A30(v17, &qword_1EC642AC0, &qword_1D1E6E810);
        v54 = *(v92 + 20);
        v25 = v84;
        v55 = *&v84[v54];
        v56 = *&v84[v54 + 8];
        v57 = (v97 + v54);
        v59 = *v57;
        v58 = v57[1];
        v60 = v55 == *v57 && v56 == v58;
        if (v60 || (sub_1D1E6904C() & 1) != 0)
        {
          v61 = sub_1D1E66A1C();
          v63 = v62;
          if (v61 == sub_1D1E66A1C() && v63 == v64)
          {

            v17 = v83;
            goto LABEL_4;
          }

          v65 = sub_1D1E6904C();

          v17 = v83;
        }

        else
        {
          v95 = v55;
          v96 = v56;
          v93 = v59;
          v94 = v58;
          sub_1D17D8EF0();
          v65 = sub_1D1E685FC() == -1;
          v17 = v83;
        }

        goto LABEL_31;
      }

      v65 = sub_1D1E6696C();
      v66 = *v81;
      (*v81)(v50, v91);
      v66(v52, v91);
      v67 = v83;
      sub_1D1741A30(&v83[v41], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v67, &qword_1EC642570, &qword_1D1E6C6A0);
      v17 = v67;
      v25 = v84;
LABEL_31:
      sub_1D1D1D890(v97, type metadata accessor for StaticService);
      result = sub_1D1D1D890(v25, type metadata accessor for StaticService);
      if ((v65 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (!v87)
      {
        __break(1u);
        return result;
      }

      v68 = v88;
      sub_1D1D26328(v31, v88, type metadata accessor for StaticService);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1D26328(v68, v29, type metadata accessor for StaticService);
      v29 += v86;
      v31 += v86;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D1D23454(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1D1E68F9C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for StaticService(0);
        v8 = sub_1D1E67C8C();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for StaticService(0) - 8);
      v10[0] = (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
      v10[1] = v7;

      sub_1D1D21434(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1D1D22BB8(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1D235D8(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticService(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0BFE0(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1D23454(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1D236C0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a2;
  v33 = a4;
  v30 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v37 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v8 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticMediaProfile(0);
  v35 = *(v10 - 8);
  v36 = v10;
  result = MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v14 = 0;
  v38 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v34 = (v8 + 48);
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v23 = v22 | (v14 << 6);
LABEL_12:
    sub_1D1D1D7E0(v38[7] + *(v35 + 72) * v23, v13, type metadata accessor for StaticMediaProfile);
    sub_1D1741C08(&v13[*(v36 + 72)], v7, &qword_1EC643C58, &unk_1D1E995D0);
    if ((*v34)(v7, 1, v37) == 1)
    {
      sub_1D1741A30(v7, &qword_1EC643C58, &unk_1D1E995D0);
      result = sub_1D1D1D890(v13, type metadata accessor for StaticMediaProfile);
    }

    else
    {
      v26 = v32;
      sub_1D1D26328(v7, v32, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v27 = sub_1D17C567C(v26, v33);
      sub_1D1D1D890(v26, type metadata accessor for StaticAccessory.DeviceIdentifier);
      result = sub_1D1D1D890(v13, type metadata accessor for StaticMediaProfile);
      if ((v27 & 1) == 0)
      {
        *(v30 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
          return sub_1D188BA98(v30, v29, v31, v38);
        }
      }
    }
  }

  v24 = v14;
  while (1)
  {
    v14 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return sub_1D188BA98(v30, v29, v31, v38);
    }

    v25 = v16[v14];
    ++v24;
    if (v25)
    {
      v20 = (v25 - 1) & v25;
      v23 = __clz(__rbit64(v25)) | (v14 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D23A6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a1;
  v31 = type metadata accessor for MatterTilePath(0);
  v33 = *(v31 - 8);
  result = MEMORY[0x1EEE9AC00](v31);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v9 = 0;
  v34 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v17 = a4 + 56;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_13:
    v21 = v18 | (v9 << 6);
    sub_1D1D1D7E0(*(v34 + 48) + *(v33 + 72) * v21, v8, type metadata accessor for MatterTilePath);
    if (*(a4 + 16) && (v22 = *&v8[*(v31 + 20)], v23 = sub_1D1E691FC(), v24 = -1 << *(a4 + 32), v25 = v23 & ~v24, ((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
    {
      v26 = ~v24;
      while (*(*(a4 + 48) + 8 * v25) != v22)
      {
        v25 = (v25 + 1) & v26;
        if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = sub_1D1D1D890(v8, type metadata accessor for MatterTilePath);
      *(v30 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_22:
        v28 = v34;

        return sub_1D19E1D04(v30, v29, v32, v28);
      }
    }

    else
    {
LABEL_5:
      result = sub_1D1D1D890(v8, type metadata accessor for MatterTilePath);
    }
  }

  v19 = v9;
  while (1)
  {
    v9 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_22;
    }

    v20 = *(v11 + 8 * v9);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D23D00(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = *MEMORY[0x1E69E9840];
  v32 = type metadata accessor for MatterTilePath(0);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a1 + 32);
  v8 = v6 & 0x3F;
  v9 = ((1 << v6) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v29 = v9;
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x1EEE9AC00](v11);
    v31 = v28 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v10);
    v33 = 0;
    v9 = 0;
    v35 = a1;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(a1 + 56);
    a1 = (v12 + 63) >> 6;
    v15 = a2 + 56;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v10 = v16 | (v9 << 6);
      sub_1D1D1D7E0(*(v35 + 48) + *(v34 + 72) * v10, v7, type metadata accessor for MatterTilePath);
      if (*(a2 + 16) && (v19 = *&v7[*(v32 + 20)], v20 = sub_1D1E691FC(), v21 = -1 << *(a2 + 32), v22 = v20 & ~v21, ((*(v15 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
      {
        v23 = ~v21;
        while (*(*(a2 + 48) + 8 * v22) != v19)
        {
          v22 = (v22 + 1) & v23;
          if (((*(v15 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        sub_1D1D1D890(v7, type metadata accessor for MatterTilePath);
        *&v31[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_23:
          v25 = sub_1D19E1D04(v31, v29, v33, v35);

          return v25;
        }
      }

      else
      {
LABEL_6:
        sub_1D1D1D890(v7, type metadata accessor for MatterTilePath);
      }
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= a1)
      {
        goto LABEL_23;
      }

      v18 = *(v3 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v25 = sub_1D1D209A8(v27, v9, a1, a2, sub_1D1D23A6C);

  MEMORY[0x1D3893640](v27, -1, -1);

  return v25;
}

uint64_t sub_1D1D240D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for StaticService(0);
  result = MEMORY[0x1EEE9AC00](v12);
  v50 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v16 = 0;
  v45 = a3;
  v17 = *(a3 + 64);
  v39 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v43 = v14;
  v44 = a4;
  v41 = a4 + 32;
  v42 = v21;
  v22 = (v14 + 56);
  v53 = (v14 + 48);
  if (v20)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (2)
  {
    v25 = v16;
    do
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v21)
      {
        return sub_1D188B1C8(v40, v38, v47, v45);
      }

      v26 = *(v39 + 8 * v16);
      ++v25;
    }

    while (!v26);
    v24 = __clz(__rbit64(v26));
    v48 = (v26 - 1) & v26;
LABEL_13:
    v27 = v24 | (v16 << 6);
    v28 = v45[7];
    v29 = *(v43 + 72);
    v46 = v27;
    v49 = v29;
    sub_1D1D1D7E0(v28 + v29 * v27, v50, type metadata accessor for StaticService);
    v30 = *(v44 + 16);
    if (v30)
    {
      v31 = v41;
      do
      {
        sub_1D17419CC(v31, v52);
        sub_1D17419CC(v52, v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        v32 = type metadata accessor for StaticServiceGroup(0);
        if (swift_dynamicCast())
        {
          (*(*(v32 - 8) + 56))(v8, 0, 1, v32);
          v33 = *&v8[*(v32 + 56)];

          sub_1D1D1D890(v8, type metadata accessor for StaticServiceGroup);
          if (*(v33 + 16) && (v34 = sub_1D1742188(), (v35 & 1) != 0))
          {
            sub_1D1D1D7E0(*(v33 + 56) + v34 * v49, v11, type metadata accessor for StaticService);
            __swift_destroy_boxed_opaque_existential_1(v52);

            v36 = 0;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v52);
            v36 = 1;
          }

          (*v22)(v11, v36, 1, v12);
          if ((*v53)(v11, 1, v12) != 1)
          {
            sub_1D1741A30(v11, &qword_1EC6436F0, &qword_1D1E99BC0);
            result = sub_1D1D1D890(v50, type metadata accessor for StaticService);
            v21 = v42;
            v20 = v48;
            if (!v48)
            {
              goto LABEL_8;
            }

LABEL_7:
            v24 = __clz(__rbit64(v20));
            v48 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v52);
          (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
          sub_1D1741A30(v8, &qword_1EC64CC40, &unk_1D1EAADA0);
          (*v22)(v11, 1, 1, v12);
        }

        sub_1D1741A30(v11, &qword_1EC6436F0, &qword_1D1E99BC0);
        v31 += 40;
        --v30;
      }

      while (v30);
    }

    result = sub_1D1D1D890(v50, type metadata accessor for StaticService);
    *(v40 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    v20 = v48;
    v23 = __OFADD__(v47++, 1);
    v21 = v42;
    if (!v23)
    {
      if (!v48)
      {
        continue;
      }

      goto LABEL_7;
    }

    break;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D1D24618(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_1D1D209A8(v16, v11, a1, a2, a4);
      MEMORY[0x1D3893640](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      return v14;
    }
  }

  MEMORY[0x1EEE9AC00](v13);
  bzero(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = a3(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v14;
}

uint64_t sub_1D1D247E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for StaticService(0);
  result = MEMORY[0x1EEE9AC00](v12);
  v50 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v16 = 0;
  v45 = a3;
  v17 = *(a3 + 64);
  v39 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v43 = v14;
  v44 = a4;
  v41 = a4 + 32;
  v42 = v21;
  v22 = (v14 + 56);
  v53 = (v14 + 48);
  if (v20)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (2)
  {
    v25 = v16;
    do
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v21)
      {
        return sub_1D188B1C8(v40, v38, v47, v45);
      }

      v26 = *(v39 + 8 * v16);
      ++v25;
    }

    while (!v26);
    v24 = __clz(__rbit64(v26));
    v48 = (v26 - 1) & v26;
LABEL_13:
    v27 = v24 | (v16 << 6);
    v28 = v45[7];
    v29 = *(v43 + 72);
    v46 = v27;
    v49 = v29;
    sub_1D1D1D7E0(v28 + v29 * v27, v50, type metadata accessor for StaticService);
    v30 = *(v44 + 16);
    if (v30)
    {
      v31 = v41;
      do
      {
        sub_1D17419CC(v31, v52);
        sub_1D17419CC(v52, v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        v32 = type metadata accessor for StaticAccessory(0);
        if (swift_dynamicCast())
        {
          (*(*(v32 - 8) + 56))(v8, 0, 1, v32);
          v33 = *&v8[*(v32 + 80)];

          sub_1D1D1D890(v8, type metadata accessor for StaticAccessory);
          if (*(v33 + 16) && (v34 = sub_1D1742188(), (v35 & 1) != 0))
          {
            sub_1D1D1D7E0(*(v33 + 56) + v34 * v49, v11, type metadata accessor for StaticService);
            __swift_destroy_boxed_opaque_existential_1(v52);

            v36 = 0;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v52);
            v36 = 1;
          }

          (*v22)(v11, v36, 1, v12);
          if ((*v53)(v11, 1, v12) != 1)
          {
            sub_1D1741A30(v11, &qword_1EC6436F0, &qword_1D1E99BC0);
            result = sub_1D1D1D890(v50, type metadata accessor for StaticService);
            v21 = v42;
            v20 = v48;
            if (!v48)
            {
              goto LABEL_8;
            }

LABEL_7:
            v24 = __clz(__rbit64(v20));
            v48 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v52);
          (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
          sub_1D1741A30(v8, &qword_1EC6436C8, &unk_1D1E97C40);
          (*v22)(v11, 1, 1, v12);
        }

        sub_1D1741A30(v11, &qword_1EC6436F0, &qword_1D1E99BC0);
        v31 += 40;
        --v30;
      }

      while (v30);
    }

    result = sub_1D1D1D890(v50, type metadata accessor for StaticService);
    *(v40 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    v20 = v48;
    v23 = __OFADD__(v47++, 1);
    v21 = v42;
    if (!v23)
    {
      if (!v48)
      {
        continue;
      }

      goto LABEL_7;
    }

    break;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D1D24D28(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a2;
  v41 = a4;
  v32 = a1;
  v5 = type metadata accessor for StaticService(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v39);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  v10 = 0;
  v42 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v35 = v8 + 16;
  v33 = 0;
  v34 = v8 + 8;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v43 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v42;
    v24 = v36;
    v23 = v37;
    v25 = v39;
    (*(v37 + 16))(v36, v42[6] + *(v37 + 72) * v21, v39);
    v26 = v21;
    v27 = v22[7] + *(v40 + 72) * v21;
    v28 = v38;
    sub_1D1D1D7E0(v27, v38, type metadata accessor for StaticService);
    LOBYTE(v22) = sub_1D1D1850C(v24, v28, v41);
    sub_1D1D1D890(v28, type metadata accessor for StaticService);
    result = (*(v23 + 8))(v24, v25);
    v16 = v43;
    if (v22)
    {
      *(v32 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_1D188B1C8(v32, v31, v33, v42);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_1D188B1C8(v32, v31, v33, v42);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v43 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1D25034()
{
  result = qword_1EC64DAB8;
  if (!qword_1EC64DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DAB8);
  }

  return result;
}

uint64_t sub_1D1D25088(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1D1D848(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1D25124()
{
  result = qword_1EC64DAD8;
  if (!qword_1EC64DAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64DAD0, &qword_1D1EA7E60);
    sub_1D1BDC1D0();
    sub_1D1D25088(&qword_1EC644D58, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DAD8);
  }

  return result;
}

uint64_t sub_1D1D251E8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64DAC0, &qword_1D1EA7E58);
    sub_1D1D1D848(a2, type metadata accessor for StaticZone, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1D25284()
{
  result = qword_1EC64DAF0;
  if (!qword_1EC64DAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64DAD0, &qword_1D1EA7E60);
    sub_1D1BDC498();
    sub_1D1D25088(&qword_1EC644DA0, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DAF0);
  }

  return result;
}

uint64_t sub_1D1D25380(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C75616665447369 && a2 == 0xED00006D6F6F5274 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F5A636974617473 && a2 == 0xEB0000000073656ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC8090 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC80B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EC80D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D1EC80F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EC8110 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EC8150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6190 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC8430 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC8450 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001D1EC8730 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1D1D258AC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a2;
  v42 = a4;
  v33 = a1;
  v5 = type metadata accessor for StaticAccessory(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v40);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v8;
  v10 = 0;
  v43 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v36 = v8 + 16;
  v34 = 0;
  v35 = v8 + 8;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v44 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v43;
    v24 = v37;
    v23 = v38;
    v25 = v40;
    (*(v38 + 16))(v37, v43[6] + *(v38 + 72) * v21, v40);
    v26 = v21;
    v27 = v22[7] + *(v41 + 72) * v21;
    v28 = v39;
    sub_1D1D1D7E0(v27, v39, type metadata accessor for StaticAccessory);
    sub_1D1D17B58(v24, v28, v42);
    LOBYTE(v22) = v29;
    sub_1D1D1D890(v28, type metadata accessor for StaticAccessory);
    result = (*(v23 + 8))(v24, v25);
    v16 = v44;
    if (v22)
    {
      *(v33 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_1D188CC38(v33, v32, v34, v43);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_1D188CC38(v33, v32, v34, v43);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v44 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1D25CB0(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1D2606C(319, &qword_1EE07E020, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D1D25F5C(319);
      if (v3 <= 0x3F)
      {
        sub_1D1D25FC0(319, &qword_1EE07B7C8, type metadata accessor for StaticAccessory);
        if (v4 <= 0x3F)
        {
          sub_1D1D25FC0(319, &qword_1EE07B7C0, type metadata accessor for StaticActionSet);
          if (v5 <= 0x3F)
          {
            sub_1D1D25FC0(319, &qword_1EE07B798, type metadata accessor for StaticCameraProfile);
            if (v6 <= 0x3F)
            {
              sub_1D1D25FC0(319, &qword_1EE07B7B0, type metadata accessor for StaticMediaSystem);
              if (v7 <= 0x3F)
              {
                sub_1D1D25FC0(319, &qword_1EE07B7A8, type metadata accessor for StaticMediaProfile);
                if (v8 <= 0x3F)
                {
                  sub_1D1D25FC0(319, &qword_1EE07B7A0, type metadata accessor for StaticServiceGroup);
                  if (v9 <= 0x3F)
                  {
                    sub_1D1D25FC0(319, &qword_1EE07B7D8, type metadata accessor for StaticService);
                    if (v10 <= 0x3F)
                    {
                      sub_1D1D2606C(319, &qword_1EE07B750, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
                      if (v11 <= 0x3F)
                      {
                        sub_1D1D260D0(319);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1D25F5C(uint64_t a1)
{
  if (!qword_1EE07B6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64DAC0, &qword_1D1EA7E58);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B6E8);
    }
  }
}

void sub_1D1D25FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D1E66A7C();
    a3(255);
    sub_1D1D1D848(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v5 = sub_1D1E6769C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D1D2606C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1D260D0(uint64_t a1)
{
  if (!qword_1EE07B780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1B4DF78();
    v1 = sub_1D1E6769C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B780);
    }
  }
}

uint64_t sub_1D1D26170(uint64_t a1)
{
  v1 = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1D1D261DC()
{
  result = qword_1EC64DC38;
  if (!qword_1EC64DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DC38);
  }

  return result;
}

unint64_t sub_1D1D26234()
{
  result = qword_1EC64DC40;
  if (!qword_1EC64DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DC40);
  }

  return result;
}

unint64_t sub_1D1D2628C()
{
  result = qword_1EC64DC48;
  if (!qword_1EC64DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DC48);
  }

  return result;
}

uint64_t sub_1D1D26328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D263B0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  MEMORY[0x1EEE9AC00](updated);
  v7 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v53[-v12];
  v13 = type metadata accessor for StaticSoftwareUpdate(0);
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1;
  sub_1D1D2EE24(v15, [a2 softwareVersion], &v62);
  v54 = v62;
  v16 = [v15 documentation];
  v58 = v13;
  if (v16)
  {
    v17 = v16;
    v18 = [v17 releaseNotes];
    if (v18 || (v18 = [v17 releaseNotesSummary]) != 0)
    {
      v19 = v18;
      v20 = [v18 stringValue];
      v56 = sub_1D1E6781C();
      v22 = v21;

      goto LABEL_7;
    }
  }

  v56 = 0;
  v22 = 0;
LABEL_7:
  v23 = a2;
  v24 = sub_1D1E669FC();
  v25 = v60;
  (*(*(v24 - 8) + 56))(v60, 1, 1, v24);
  sub_1D1741C08(v25, v11, &qword_1EC642570, &qword_1D1E6C6A0);
  v26 = [v15 displayableVersion];
  v27 = sub_1D1E6781C();
  v29 = v28;

  if ([v15 downloadSize])
  {
    v61 = [v15 downloadSize];
    v62 = sub_1D1E68FAC();
    v63 = v30;
    MEMORY[0x1D3890F70](16973, 0xE200000000000000);
    v31 = v62;
    v32 = v63;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  *v7 = v56;
  v7[1] = v22;
  sub_1D1741A90(v11, v7 + updated[5], &qword_1EC642570, &qword_1D1E6C6A0);
  v33 = (v7 + updated[6]);
  *v33 = v27;
  v33[1] = v29;
  v34 = (v7 + updated[7]);
  *v34 = v31;
  v34[1] = v32;
  v35 = v23;
  v36 = [v23 category];
  v37 = [v36 categoryType];

  v38 = sub_1D1E6781C();
  v40 = v39;

  if (v38 == sub_1D1E6781C() && v40 == v41)
  {

    v42 = v58;
  }

  else
  {
    v43 = sub_1D1E6904C();

    v42 = v58;
    if ((v43 & 1) == 0)
    {
LABEL_17:
      v48 = v55;
      v49 = &v55[*(v42 + 20)];
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
      sub_1D1D30108(v7, v49, type metadata accessor for StaticSoftwareUpdateMetadata);
      *(v49 + v50) = v54;
      type metadata accessor for StaticSoftwareUpdate.Kind(0);
      swift_storeEnumTagMultiPayload();
      v51 = [v35 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1D301E4(v7, type metadata accessor for StaticSoftwareUpdateMetadata);
      sub_1D1741A30(v60, &qword_1EC642570, &qword_1D1E6C6A0);
      v47 = v59;
      sub_1D1D30558(v48, v59, type metadata accessor for StaticSoftwareUpdate);
      v46 = 0;
      return (*(v57 + 56))(v47, v46, 1, v42);
    }
  }

  v44 = [v15 documentation];
  v45 = [v44 licenseAgreement];

  if (v45)
  {

    goto LABEL_17;
  }

  sub_1D1D301E4(v7, type metadata accessor for StaticSoftwareUpdateMetadata);
  sub_1D1741A30(v60, &qword_1EC642570, &qword_1D1E6C6A0);
  v46 = 1;
  v47 = v59;
  return (*(v57 + 56))(v47, v46, 1, v42);
}

uint64_t sub_1D1D269CC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticHH2Update(0);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 uniqueIdentifier];
  sub_1D1E66A5C();

  v11 = a1;
  sub_1D1D2EF78(v11, [a2 softwareVersion], &v18);
  v9[v6[5]] = v18;
  v12 = [a2 category];
  v13 = [v12 categoryType];

  v14 = &v9[v6[6]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v9[v6[7]];
  *v15 = 0;
  v15[8] = 1;
  sub_1D1D30558(v9, a3, type metadata accessor for StaticHH2Update);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_1D1D26B94@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34[-v12];
  v14 = type metadata accessor for StaticHH2Update(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *a1;
  sub_1D1D30108(v3, v19, type metadata accessor for StaticSoftwareUpdate.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return swift_storeEnumTagMultiPayload();
    }

LABEL_7:
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
    sub_1D1D30558(v19, a2, type metadata accessor for StaticSoftwareUpdateMetadata);
    *(a2 + v24) = v20;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  v35 = v20;
  sub_1D1D30558(v19, v16, type metadata accessor for StaticHH2Update);
  v22 = v36;
  (*(v36 + 56))(v13, 1, 1, v6);
  sub_1D1741A90(v13, v11, &qword_1EC642590, qword_1D1E71260);
  v23 = *(v22 + 48);
  if (v23(v11, 1, v6) == 1)
  {
    (*(v22 + 16))(v37, v16, v6);
    if (v23(v11, 1, v6) != 1)
    {
      sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v22 + 32))(v37, v11, v6);
  }

  v25 = v14[7];
  v26 = &v16[v14[6]];
  v27 = *v26;
  v28 = v26[1];
  v29 = *&v16[v25];
  LODWORD(v36) = v16[v25 + 8];
  sub_1D18614CC(v27, v28);
  sub_1D1D301E4(v16, type metadata accessor for StaticHH2Update);
  (*(v22 + 32))(a2, v37, v6);
  v30 = v36;
  *(a2 + v14[5]) = v35;
  v31 = (a2 + v14[6]);
  *v31 = v27;
  v31[1] = v28;
  v32 = a2 + v14[7];
  *v32 = v29;
  *(v32 + 8) = v30;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D1D26F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v23 = a1;
  v26 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644768, &qword_1D1E75AE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_1D1E66A7C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741C08(v23, v12, &qword_1EC642590, qword_1D1E71260);
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    (*(v14 + 16))(v16, v25, v13);
    if (v17(v12, 1, v13) != 1)
    {
      sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  sub_1D1741C08(v24, v5, &qword_1EC644768, &qword_1D1E75AE0);
  v18 = *(v7 + 48);
  if (v18(v5, 1, v6) == 1)
  {
    v19 = type metadata accessor for StaticSoftwareUpdate(0);
    sub_1D1D30108(v25 + *(v19 + 20), v9, type metadata accessor for StaticSoftwareUpdate.Kind);
    if (v18(v5, 1, v6) != 1)
    {
      sub_1D1741A30(v5, &qword_1EC644768, &qword_1D1E75AE0);
    }
  }

  else
  {
    sub_1D1D30558(v5, v9, type metadata accessor for StaticSoftwareUpdate.Kind);
  }

  v20 = v26;
  (*(v14 + 32))(v26, v16, v13);
  v21 = type metadata accessor for StaticSoftwareUpdate(0);
  return sub_1D1D30558(v9, v20 + *(v21 + 20), type metadata accessor for StaticSoftwareUpdate.Kind);
}

BOOL static StaticSoftwareUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for StaticSoftwareUpdate(0) + 20);

  return _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(a1 + v4, a2 + v4);
}

uint64_t sub_1D1D273EC()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D1D27414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1D274E8(uint64_t a1)
{
  v2 = sub_1D1D3006C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D27524(uint64_t a1)
{
  v2 = sub_1D1D3006C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticSoftwareUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC50, &qword_1D1EA8330);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3006C();
  sub_1D1E6930C();
  v8[15] = 0;
  sub_1D1E66A7C();
  sub_1D1D300C0(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v1)
  {
    type metadata accessor for StaticSoftwareUpdate(0);
    v8[14] = 1;
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    sub_1D1D300C0(&qword_1EC64DC60, type metadata accessor for StaticSoftwareUpdate.Kind, &protocol conformance descriptor for StaticSoftwareUpdate.Kind);
    sub_1D1E68F1C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticSoftwareUpdate.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  type metadata accessor for StaticSoftwareUpdate(0);
  return StaticSoftwareUpdate.Kind.hash(into:)(a1);
}

uint64_t StaticSoftwareUpdate.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  type metadata accessor for StaticSoftwareUpdate(0);
  StaticSoftwareUpdate.Kind.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D1E66A7C();
  v21 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC68, &unk_1D1EA8338);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for StaticSoftwareUpdate(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3006C();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v9;
  v19 = v11;
  v12 = v21;
  v28 = 0;
  sub_1D1D300C0(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v13 = v23;
  v14 = v25;
  sub_1D1E68D7C();
  (*(v12 + 32))(v19, v13, v14);
  v27 = 1;
  sub_1D1D300C0(&qword_1EC64DC70, type metadata accessor for StaticSoftwareUpdate.Kind, &protocol conformance descriptor for StaticSoftwareUpdate.Kind);
  sub_1D1E68D7C();
  (*(v24 + 8))(v8, v26);
  v15 = v19;
  sub_1D1D30558(v5, &v19[*(v18 + 20)], type metadata accessor for StaticSoftwareUpdate.Kind);
  sub_1D1D30108(v15, v20, type metadata accessor for StaticSoftwareUpdate);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1D301E4(v15, type metadata accessor for StaticSoftwareUpdate);
}

uint64_t sub_1D1D27CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static StaticSoftwareUpdate.Kind.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_1D1D27D0C()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  StaticSoftwareUpdate.Kind.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D27DB0(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return StaticSoftwareUpdate.Kind.hash(into:)(a1);
}

uint64_t sub_1D1D27E3C(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  StaticSoftwareUpdate.Kind.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdateMetadata.init(releaseNote:releaseDate:versionString:downloadSizeString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  result = sub_1D1741A90(a3, a8 + updated[5], &qword_1EC642570, &qword_1D1E6C6A0);
  v16 = (a8 + updated[6]);
  *v16 = a4;
  v16[1] = a5;
  v17 = (a8 + updated[7]);
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t StaticSoftwareUpdateMetadata.releaseNote.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StaticSoftwareUpdateMetadata.versionString.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 24));

  return v1;
}

uint64_t StaticSoftwareUpdateMetadata.downloadSizeString.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 28));

  return v1;
}

unint64_t sub_1D1D2809C()
{
  v1 = 0x4E657361656C6572;
  v2 = 0x536E6F6973726576;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x44657361656C6572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D1D28130@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D32AF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D28158(uint64_t a1)
{
  v2 = sub_1D1D30190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D28194(uint64_t a1)
{
  v2 = sub_1D1D30190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}