uint64_t sub_1D1CF7A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
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
  v92 = type metadata accessor for StaticHome(0);
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
      sub_1D1CF5030(v31, v25, type metadata accessor for StaticHome);
      v32 = v97;
      sub_1D1CF5030(v29, v97, type metadata accessor for StaticHome);
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

      v40 = *(v92 + 24);
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
          sub_1D1CF5098(v97, type metadata accessor for StaticHome);
          result = sub_1D1CF5098(v25, type metadata accessor for StaticHome);
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
        sub_1D1CF5098(v97, type metadata accessor for StaticHome);
        result = sub_1D1CF5098(v25, type metadata accessor for StaticHome);
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
      sub_1D1CF8D7C(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
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
      sub_1D1CF5098(v97, type metadata accessor for StaticHome);
      result = sub_1D1CF5098(v25, type metadata accessor for StaticHome);
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
      sub_1D1CF8DC4(v31, v88, type metadata accessor for StaticHome);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1CF8DC4(v68, v29, type metadata accessor for StaticHome);
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

uint64_t sub_1D1CF82A0(uint64_t *a1, uint64_t a2)
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
        type metadata accessor for StaticHome(0);
        v8 = sub_1D1E67C8C();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for StaticHome(0) - 8);
      v10[0] = (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
      v10[1] = v7;

      sub_1D1CF6280(v10, v11, a1, v6, a2);

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

    sub_1D1CF7A04(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1CF8424(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticHome(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0C01C(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1CF82A0(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1CF850C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x52746C7561666564 && a2 == 0xEB000000006D6F6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC8390 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7441726573557369 && a2 == 0xEC000000656D6F48 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC83B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC83D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC83F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC8410 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC8430 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC8450 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC8470 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC8490 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBBB10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EC84B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC84D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D1EC84F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC8510 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_1D1CF8AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746553746F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6261706143746F6ELL && a2 == 0xEA0000000000656CLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6261706163 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D1CF8C54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F707365726F6ELL && a2 == 0xEA00000000006573 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6261706163 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6261706163746F6ELL && a2 == 0xEA0000000000656CLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D1CF8D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1CF8DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CF8E54()
{
  v1 = 0xD000000000000027;
  v2 = *v0;
  v3 = "StateDescriptionPaused";
  v4 = "StateDescriptionInterrupted";
  v5 = "StateDescriptionLoading";
  v6 = 0xD00000000000002BLL;
  if (v2 != 4)
  {
    v5 = "ionSpeaker_NotPlaying";
    v6 = 0xD000000000000027;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000027;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  if (v2 != 1)
  {
    v3 = "StateDescriptionStopped";
    v1 = 0xD000000000000026;
  }

  if (*v0)
  {
    v8 = v1;
  }

  else
  {
    v3 = "CapitalizedPlural";
    v8 = 0xD000000000000025;
  }

  if (*v0 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (*v0 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  return static String.hfLocalized(_:)(v10, v9 | 0x8000000000000000);
}

void StaticMediaSystemComponent.PlaybackState.init(from:specialMediaCategory:)(uint64_t *__return_ptr a1@<X8>, id a2@<X0>, uint64_t a3@<X1>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 255)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v5 == 1)
    {
      goto LABEL_11;
    }

    if (v5 != 3)
    {
LABEL_15:

      sub_1D18EB2D8(v5, v6);
      LOBYTE(v10) = 6;
      goto LABEL_17;
    }
  }

  else
  {
    if (v6 == 1)
    {
      goto LABEL_11;
    }

    if (v6 != 2)
    {
      goto LABEL_15;
    }
  }

  if (([a2 capability] & 1) == 0)
  {
LABEL_14:

    LOBYTE(v10) = 6;
    goto LABEL_17;
  }

LABEL_11:
  v7 = [a2 mediaSession];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v7 playbackState];

  if (v9 >= 7)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = 0x5000403020100uLL >> (8 * v9);
  }

LABEL_17:
  *a1 = v10;
}

void StaticMediaSystemComponent.PlaybackState.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [a1 mediaSession];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 playbackState];

    if (v6 >= 7)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = 0x5000403020100uLL >> (8 * v6);
    }
  }

  else
  {

    LOBYTE(v7) = 6;
  }

  *a2 = v7;
}

uint64_t StaticMediaSystemComponent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double StaticMediaSystemComponent.roomIds.getter()
{
  type metadata accessor for StaticMediaSystemComponent(0);

  return result;
}

uint64_t StaticMediaSystemComponent.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticMediaSystemComponent(0) + 32);

  return sub_1D17783E0(v3, a1);
}

unint64_t sub_1D1CF91F4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701605234;
  v4 = 0x7364496D6F6F72;
  if (v1 != 3)
  {
    v4 = 0x726F737365636361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1D1CF9288@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CFCDE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1CF92B0(uint64_t a1)
{
  v2 = sub_1D1CFC178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CF92EC(uint64_t a1)
{
  v2 = sub_1D1CFC178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMediaSystemComponent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D748, &unk_1D1EA6898);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CFC178();
  sub_1D1E6930C();
  LOBYTE(v13) = 0;
  sub_1D1E66A7C();
  sub_1D1CFD190(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticMediaSystemComponent(0);
    LOBYTE(v13) = 1;
    type metadata accessor for StaticMediaProfile(0);
    sub_1D1CFD190(&qword_1EC64C050, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
    sub_1D1E68F1C();
    v9 = v11;
    v13 = *(v3 + *(v11 + 24));
    v12 = 2;
    type metadata accessor for HMMediaSystemRoleType(0);
    sub_1D1CFD190(&qword_1EC64D758, type metadata accessor for HMMediaSystemRoleType, &protocol conformance descriptor for HMMediaSystemRoleType);
    sub_1D1E68F1C();
    v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1CFC1CC(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    LOBYTE(v13) = 4;
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticMediaSystemComponent.hash(into:)(__int128 *a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1D1CFD190(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for StaticMediaSystemComponent(0);
  StaticMediaProfile.hash(into:)(a1);
  MEMORY[0x1D3892850](*(v1 + v10[6]));
  sub_1D176D4E8(a1, *(v1 + v10[7]));
  sub_1D17783E0(v1 + v10[8], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_1D1E6922C();
  sub_1D1E676EC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticMediaSystemComponent.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D1E6920C();
  sub_1D1CFD190(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v8 = type metadata accessor for StaticMediaSystemComponent(0);
  StaticMediaProfile.hash(into:)(v11);
  MEMORY[0x1D3892850](*(v0 + v8[6]));
  sub_1D176D4E8(v11, *(v0 + v8[7]));
  sub_1D17783E0(v0 + v8[8], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t StaticMediaSystemComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = v23 - v4;
  v26 = type metadata accessor for StaticMediaProfile(0);
  MEMORY[0x1EEE9AC00](v26);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v29 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D760, &qword_1D1EA68A8);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = v23 - v9;
  v11 = type metadata accessor for StaticMediaSystemComponent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CFC178();
  v30 = v10;
  v14 = v32;
  sub_1D1E692FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v13;
  v16 = v27;
  LOBYTE(v34) = 0;
  v17 = sub_1D1CFD190(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  v23[1] = v17;
  v18 = *(v16 + 32);
  v32 = v7;
  v18(v15, v29);
  LOBYTE(v34) = 1;
  sub_1D1CFD190(&qword_1EC64BFC0, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
  sub_1D1E68D7C();
  sub_1D1CFD2A0(v6, &v15[v11[5]], type metadata accessor for StaticMediaProfile);
  type metadata accessor for HMMediaSystemRoleType(0);
  v33 = 2;
  sub_1D1CFD190(&qword_1EC64D768, type metadata accessor for HMMediaSystemRoleType, &protocol conformance descriptor for HMMediaSystemRoleType);
  sub_1D1E68D7C();
  v19 = v15;
  *&v15[v11[6]] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v33 = 3;
  sub_1D1CFC1CC(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  v20 = v28;
  v29 = 0;
  *(v19 + v11[7]) = v34;
  LOBYTE(v34) = 4;
  v21 = v25;
  sub_1D1E68CBC();
  (*(v20 + 8))(v30, v31);
  sub_1D1778308(v21, v19 + v11[8]);
  sub_1D1CFD1D8(v19, v24, type metadata accessor for StaticMediaSystemComponent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1CFD240(v19, type metadata accessor for StaticMediaSystemComponent);
}

uint64_t sub_1D1CFA130(uint64_t a1, int *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1E6920C();
  sub_1D1CFD190(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  StaticMediaProfile.hash(into:)(v13);
  MEMORY[0x1D3892850](*(v2 + a2[6]));
  sub_1D176D4E8(v13, *(v2 + a2[7]));
  sub_1D17783E0(v2 + a2[8], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1CFA394@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a7;
  v62 = a5;
  v57 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643758, &qword_1D1E71EB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for StaticMediaProfile(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for StaticMediaSystemComponent(0);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v19 = MEMORY[0x1EEE9AC00](updated - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  v24 = *a1;
  sub_1D1CFD1D8(a2, &v55 - v22, type metadata accessor for StateSnapshot.UpdateType);
  v25 = [v24 mediaProfile];
  if (!v25)
  {
    sub_1D1CFD240(v23, type metadata accessor for StateSnapshot.UpdateType);
    goto LABEL_5;
  }

  v26 = v25;
  sub_1D1CFD1D8(v23, v21, type metadata accessor for StateSnapshot.UpdateType);
  v63 = v62;
  v27 = v26;
  v28 = v57;

  sub_1D1BFF3D4(v27, v21, a3, v28, &v63, a6, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v32 = v56;
    sub_1D1CFD2A0(v13, v56, type metadata accessor for StaticMediaProfile);
    v33 = [v24 uniqueIdentifier];
    v34 = v27;
    v35 = v58;
    sub_1D1E66A5C();

    v31 = v61;
    sub_1D1CFD1D8(v32, v35 + *(v61 + 20), type metadata accessor for StaticMediaProfile);
    v36 = [v24 role];
    v37 = [v36 type];

    *(v35 + v31[6]) = v37;
    v38 = [v34 accessory];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 room];
      if (v40)
      {
        v41 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
        v42 = sub_1D1E66A7C();
        v43 = *(v42 - 8);
        v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1D1E739C0;
        v46 = [v41 uniqueIdentifier];
        sub_1D1E66A5C();

        v47 = sub_1D179BE14(v45);
        swift_setDeallocating();
        v48 = v45 + v44;
        v31 = v61;
        (*(v43 + 8))(v48, v42);
        swift_deallocClassInstance();
        *&v58[v31[7]] = v47;
        v49 = v31[8];
        v50 = [v39 uniqueIdentifier];
        sub_1D1E66A5C();

        v35 = v58;
        sub_1D1CFD240(v56, type metadata accessor for StaticMediaProfile);
        sub_1D1CFD240(v23, type metadata accessor for StateSnapshot.UpdateType);
        (*(v43 + 56))(v35 + v49, 0, 1, v42);
LABEL_12:
        v53 = v60;
        sub_1D1CFD2A0(v35, v60, type metadata accessor for StaticMediaSystemComponent);
        v30 = v53;
        v29 = 0;
        return (*(v59 + 56))(v30, v29, 1, v31);
      }
    }

    else
    {
      v39 = v34;
    }

    sub_1D1CFD240(v32, type metadata accessor for StaticMediaProfile);
    sub_1D1CFD240(v23, type metadata accessor for StateSnapshot.UpdateType);
    *(v35 + v31[7]) = MEMORY[0x1E69E7CD0];
    v51 = v31[8];
    v52 = sub_1D1E66A7C();
    (*(*(v52 - 8) + 56))(v35 + v51, 1, 1, v52);
    goto LABEL_12;
  }

  sub_1D1CFD240(v23, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1741A30(v13, &qword_1EC643758, &qword_1D1E71EB0);
LABEL_5:
  v29 = 1;
  v30 = v60;
  v31 = v61;
  return (*(v59 + 56))(v30, v29, 1, v31);
}

uint64_t sub_1D1CFAB6C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x646570706F7473;
  v4 = 0x7075727265746E69;
  if (v1 != 4)
  {
    v4 = 0x676E6964616F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E6979616C70;
  if (v1 != 1)
  {
    v5 = 0x646573756170;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1CFAC2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CFCF94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1CFAC54(uint64_t a1)
{
  v2 = sub_1D1CFC268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAC90(uint64_t a1)
{
  v2 = sub_1D1CFC268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFACCC(uint64_t a1)
{
  v2 = sub_1D1CFC310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAD08(uint64_t a1)
{
  v2 = sub_1D1CFC310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFAD44(uint64_t a1)
{
  v2 = sub_1D1CFC2BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAD80(uint64_t a1)
{
  v2 = sub_1D1CFC2BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFADBC(uint64_t a1)
{
  v2 = sub_1D1CFC3B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFADF8(uint64_t a1)
{
  v2 = sub_1D1CFC3B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFAE34(uint64_t a1)
{
  v2 = sub_1D1CFC40C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAE70(uint64_t a1)
{
  v2 = sub_1D1CFC40C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFAEAC(uint64_t a1)
{
  v2 = sub_1D1CFC364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAEE8(uint64_t a1)
{
  v2 = sub_1D1CFC364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFAF24(uint64_t a1)
{
  v2 = sub_1D1CFC460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAF60(uint64_t a1)
{
  v2 = sub_1D1CFC460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMediaSystemComponent.PlaybackState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D770, &qword_1D1EA68B0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D778, &qword_1D1EA68B8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D780, &qword_1D1EA68C0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D788, &qword_1D1EA68C8);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D790, &qword_1D1EA68D0);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D798, &qword_1D1EA68D8);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D7A0, &qword_1D1EA68E0);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CFC268();
  sub_1D1E6930C();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1D1CFC364();
      v21 = v33;
      v22 = v42;
      sub_1D1E68DFC();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1D1CFC310();
      v21 = v36;
      v22 = v42;
      sub_1D1E68DFC();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1D1CFC2BC();
      v21 = v39;
      v22 = v42;
      sub_1D1E68DFC();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1D1CFC40C();
      v21 = v27;
      v22 = v42;
      sub_1D1E68DFC();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1D1CFC3B8();
      v21 = v30;
      v22 = v42;
      sub_1D1E68DFC();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1D1CFC460();
  v22 = v42;
  sub_1D1E68DFC();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

uint64_t StaticMediaSystemComponent.PlaybackState.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticMediaSystemComponent.PlaybackState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D7E0, &qword_1D1EA68E8);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D7E8, &qword_1D1EA68F0);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D7F0, &qword_1D1EA68F8);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D7F8, &qword_1D1EA6900);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D800, &qword_1D1EA6908);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D808, &qword_1D1EA6910);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D810, &unk_1D1EA6918);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D1CFC268();
  v22 = v56;
  sub_1D1E692FC();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1D1E68DDC();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1D18085D8();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1D1E688EC();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v36 = &type metadata for StaticMediaSystemComponent.PlaybackState;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1D1CFC364();
          sub_1D1E68C4C();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1D1CFC310();
          sub_1D1E68C4C();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1D1CFC2BC();
          sub_1D1E68C4C();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1D1CFC40C();
            v31 = v56;
            sub_1D1E68C4C();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1D1CFC3B8();
            v31 = v51;
            sub_1D1E68C4C();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1D1CFC460();
          sub_1D1E68C4C();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t type metadata accessor for StaticMediaSystemComponent(uint64_t a1)
{
  result = qword_1EE07BD70;
  if (!qword_1EE07BD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s13HomeDataModel26StaticMediaSystemComponentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for StaticMediaSystemComponent(0);
  if ((static StaticMediaProfile.== infix(_:_:)(a1 + v14[5], a2 + v14[5]) & 1) == 0 || *(a1 + v14[6]) != *(a2 + v14[6]) || (sub_1D17A6E98(*(a1 + v14[7]), *(a2 + v14[7])) & 1) == 0)
  {
    return 0;
  }

  v15 = v14[8];
  v16 = *(v11 + 48);
  sub_1D17783E0(a1 + v15, v13);
  sub_1D17783E0(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1D17783E0(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_1D1741A30(v13, &qword_1EC642980, &unk_1D1E6E6E0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v16], v4);
  sub_1D1CFD190(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v19 = sub_1D1E6775C();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
  return (v19 & 1) != 0;
}

unint64_t sub_1D1CFC178()
{
  result = qword_1EC64D750;
  if (!qword_1EC64D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D750);
  }

  return result;
}

uint64_t sub_1D1CFC1CC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1CFD190(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1CFC268()
{
  result = qword_1EC64D7A8;
  if (!qword_1EC64D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7A8);
  }

  return result;
}

unint64_t sub_1D1CFC2BC()
{
  result = qword_1EC64D7B0;
  if (!qword_1EC64D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7B0);
  }

  return result;
}

unint64_t sub_1D1CFC310()
{
  result = qword_1EC64D7B8;
  if (!qword_1EC64D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7B8);
  }

  return result;
}

unint64_t sub_1D1CFC364()
{
  result = qword_1EC64D7C0;
  if (!qword_1EC64D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7C0);
  }

  return result;
}

unint64_t sub_1D1CFC3B8()
{
  result = qword_1EC64D7C8;
  if (!qword_1EC64D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7C8);
  }

  return result;
}

unint64_t sub_1D1CFC40C()
{
  result = qword_1EC64D7D0;
  if (!qword_1EC64D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7D0);
  }

  return result;
}

unint64_t sub_1D1CFC460()
{
  result = qword_1EC64D7D8;
  if (!qword_1EC64D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7D8);
  }

  return result;
}

unint64_t sub_1D1CFC5D8()
{
  result = qword_1EC64D830;
  if (!qword_1EC64D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D830);
  }

  return result;
}

void sub_1D1CFC654(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for StaticMediaProfile(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HMMediaSystemRoleType(319);
      if (v3 <= 0x3F)
      {
        sub_1D1791340(319);
        if (v4 <= 0x3F)
        {
          sub_1D177868C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D1CFC7B4()
{
  result = qword_1EC64D838;
  if (!qword_1EC64D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D838);
  }

  return result;
}

unint64_t sub_1D1CFC80C()
{
  result = qword_1EC64D840;
  if (!qword_1EC64D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D840);
  }

  return result;
}

unint64_t sub_1D1CFC864()
{
  result = qword_1EC64D848;
  if (!qword_1EC64D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D848);
  }

  return result;
}

unint64_t sub_1D1CFC8BC()
{
  result = qword_1EC64D850;
  if (!qword_1EC64D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D850);
  }

  return result;
}

unint64_t sub_1D1CFC914()
{
  result = qword_1EC64D858;
  if (!qword_1EC64D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D858);
  }

  return result;
}

unint64_t sub_1D1CFC96C()
{
  result = qword_1EC64D860;
  if (!qword_1EC64D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D860);
  }

  return result;
}

unint64_t sub_1D1CFC9C4()
{
  result = qword_1EC64D868;
  if (!qword_1EC64D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D868);
  }

  return result;
}

unint64_t sub_1D1CFCA1C()
{
  result = qword_1EC64D870;
  if (!qword_1EC64D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D870);
  }

  return result;
}

unint64_t sub_1D1CFCA74()
{
  result = qword_1EC64D878;
  if (!qword_1EC64D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D878);
  }

  return result;
}

unint64_t sub_1D1CFCACC()
{
  result = qword_1EC64D880;
  if (!qword_1EC64D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D880);
  }

  return result;
}

unint64_t sub_1D1CFCB24()
{
  result = qword_1EC64D888;
  if (!qword_1EC64D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D888);
  }

  return result;
}

unint64_t sub_1D1CFCB7C()
{
  result = qword_1EC64D890;
  if (!qword_1EC64D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D890);
  }

  return result;
}

unint64_t sub_1D1CFCBD4()
{
  result = qword_1EC64D898;
  if (!qword_1EC64D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D898);
  }

  return result;
}

unint64_t sub_1D1CFCC2C()
{
  result = qword_1EC64D8A0;
  if (!qword_1EC64D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8A0);
  }

  return result;
}

unint64_t sub_1D1CFCC84()
{
  result = qword_1EC64D8A8;
  if (!qword_1EC64D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8A8);
  }

  return result;
}

unint64_t sub_1D1CFCCDC()
{
  result = qword_1EC64D8B0;
  if (!qword_1EC64D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8B0);
  }

  return result;
}

unint64_t sub_1D1CFCD34()
{
  result = qword_1EC64D8B8;
  if (!qword_1EC64D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8B8);
  }

  return result;
}

unint64_t sub_1D1CFCD8C()
{
  result = qword_1EC64D8C0;
  if (!qword_1EC64D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8C0);
  }

  return result;
}

uint64_t sub_1D1CFCDE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC86B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000644979)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1CFCF94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6979616C70 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646570706F7473 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7075727265746E69 && a2 == 0xEB00000000646574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1CFD190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1CFD1D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CFD240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1CFD2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t StaticResident.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticResident(0) + 20));

  return v1;
}

uint64_t type metadata accessor for StaticResident(uint64_t a1)
{
  result = qword_1EE07D8A8;
  if (!qword_1EE07D8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1CFD39C(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643730, &unk_1D1EA7CA0);
  v60 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - v12;
  v59 = type metadata accessor for StaticResident(0);
  v57 = *(v59 - 8);
  v14 = MEMORY[0x1EEE9AC00](v59);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v53 - v16;
  v17 = [a1 supportsResidentSelection];
  v56 = v2;
  v58 = a1;
  if (!v17)
  {
    v26 = [a1 residentDevices];
    sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
    v13 = sub_1D1E67C1C();

    if (v13 >> 62)
    {
      goto LABEL_59;
    }

    v27 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_22;
  }

  v18 = [a1 autoSelectedPreferredResidents];
  if (v18)
  {
    v19 = v18;
    sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
    v11 = sub_1D1E67C1C();

    if (!(v11 >> 62))
    {
LABEL_4:
      a1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_4;
    }
  }

  a1 = sub_1D1E6873C();
LABEL_5:
  v5 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
LABEL_37:

    v35 = *(v5 + 2);
    if (v35)
    {
      v61 = MEMORY[0x1E69E7CC0];
      sub_1D178D398(0, v35, 0);
      v36 = v61;
      v37 = v56;
      v38 = &v5[(*(v57 + 80) + 32) & ~*(v57 + 80)];
      v39 = *(v57 + 72);
      do
      {
        v40 = *(v37 + 48);
        sub_1D1D0381C(v38, &v7[v40]);
        v41 = sub_1D1E66A7C();
        (*(*(v41 - 8) + 16))(v7, &v7[v40], v41);
        v61 = v36;
        v43 = *(v36 + 16);
        v42 = *(v36 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1D178D398((v42 > 1), v43 + 1, 1);
          v36 = v61;
        }

        *(v36 + 16) = v43 + 1;
        sub_1D1D0494C(v7, v36 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v43);
        v38 += v39;
        --v35;
      }

      while (v35);
      goto LABEL_48;
    }

LABEL_52:

    v36 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_49;
    }

LABEL_53:
    v51 = MEMORY[0x1E69E7CC8];
    goto LABEL_54;
  }

  v20 = 0;
  v53 = v11;
  v54 = v11 & 0xC000000000000001;
  v2 = v11 & 0xFFFFFFFFFFFFFF8;
  v21 = (v57 + 48);
  while (1)
  {
    if (v54)
    {
      v22 = MEMORY[0x1D3891EF0](v20, v11);
    }

    else
    {
      if (v20 >= *(v2 + 16))
      {
        goto LABEL_57;
      }

      v22 = *(v11 + 8 * v20 + 32);
    }

    v23 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      break;
    }

    StaticResident.init(with:home:)(v22, v58, v13);
    if ((*v21)(v13, 1, v59) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC64D530, &qword_1D1EA5BD8);
    }

    else
    {
      sub_1D1D0332C(v13, v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D177D894(0, *(v5 + 2) + 1, 1, v5);
      }

      v25 = *(v5 + 2);
      v24 = *(v5 + 3);
      if (v25 >= v24 >> 1)
      {
        v5 = sub_1D177D894((v24 > 1), v25 + 1, 1, v5);
      }

      *(v5 + 2) = v25 + 1;
      sub_1D1D0332C(v55, &v5[((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v25]);
      v11 = v53;
    }

    ++v20;
    if (v23 == a1)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v27 = sub_1D1E6873C();
LABEL_22:
    v28 = MEMORY[0x1E69E7CC0];
    if (!v27)
    {
      break;
    }

    v29 = 0;
    v55 = v13 & 0xC000000000000001;
    v53 = v13 & 0xFFFFFFFFFFFFFF8;
    v30 = (v57 + 48);
    while (1)
    {
      if (v55)
      {
        v32 = MEMORY[0x1D3891EF0](v29, v13);
      }

      else
      {
        if (v29 >= *(v53 + 16))
        {
          goto LABEL_58;
        }

        v32 = *(v13 + 8 * v29 + 32);
      }

      v2 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      StaticResident.init(with:home:)(v32, a1, v11);
      if ((*v30)(v11, 1, v59) == 1)
      {
        sub_1D1741A30(v11, &qword_1EC64D530, &qword_1D1EA5BD8);
      }

      else
      {
        sub_1D1D0332C(v11, v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1D177D894(0, v28[2] + 1, 1, v28);
        }

        v34 = v28[2];
        v33 = v28[3];
        if (v34 >= v33 >> 1)
        {
          v28 = sub_1D177D894((v33 > 1), v34 + 1, 1, v28);
        }

        v28[2] = v34 + 1;
        sub_1D1D0332C(v54, v28 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v34);
        a1 = v58;
      }

      ++v29;
      v31 = v2 == v27;
      v2 = v56;
      if (v31)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_43:

  v44 = v28[2];
  if (!v44)
  {
    goto LABEL_52;
  }

  v61 = MEMORY[0x1E69E7CC0];
  sub_1D178D398(0, v44, 0);
  v36 = v61;
  v45 = v28 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  v46 = *(v57 + 72);
  do
  {
    v47 = *(v2 + 48);
    sub_1D1D0381C(v45, &v5[v47]);
    v48 = sub_1D1E66A7C();
    (*(*(v48 - 8) + 16))(v5, &v5[v47], v48);
    v61 = v36;
    v50 = *(v36 + 16);
    v49 = *(v36 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_1D178D398((v49 > 1), v50 + 1, 1);
      v36 = v61;
    }

    *(v36 + 16) = v50 + 1;
    sub_1D1D0494C(v5, v36 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v50);
    v45 += v46;
    --v44;
  }

  while (v44);
LABEL_48:

  if (!*(v36 + 16))
  {
    goto LABEL_53;
  }

LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B10, &unk_1D1E7E7C0);
  v51 = sub_1D1E68BCC();
LABEL_54:
  v61 = v51;
  sub_1D1D038DC(v36, 1, &v61);

  return v61;
}

uint64_t StaticResident.init(with:home:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticResident(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v11 = sub_1D1E67C1C();

  v40 = v6;
  v41 = a3;
  v38 = a2;
  v39 = v7;
  if (v11 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1D3891EF0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v43 = v14;
      if (sub_1D1D006F8(&v43, a1))
      {

        goto LABEL_17;
      }

      ++v13;
      if (v16 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v15 = 0;
LABEL_17:
  sub_1D1D00C00(v15, &v43);
  v17 = v43;
  v18 = v44;
  v19 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v21 = v39;
  v20 = v40;
  if (v15 && (v22 = [v15 room]) != 0)
  {
    v23 = v22;
    v24 = [v22 name];

    v25 = sub_1D1E6781C();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = &v9[v20[6]];
  *v28 = v25;
  v28[1] = v27;
  v29 = sub_1D1D00DD8(v15, a1);
  v30 = &v9[v20[5]];
  *v30 = v29;
  v30[1] = v31;
  v32 = &v9[v20[9]];
  *v32 = v17;
  v32[8] = v18;
  v33 = [a1 status];
  v43 = MEMORY[0x1E69E7CD0];
  if (v33)
  {
    sub_1D176457C(&v42, 1);
  }

  v34 = v41;
  v35 = v38;
  if ((v33 & 2) != 0)
  {
    sub_1D176457C(&v42, 0);
  }

  *&v9[v20[7]] = v43;
  *&v9[v20[8]] = sub_1D1D032B0(a1);
  v36 = [v35 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1D0332C(v9, v34);
  return (*(v21 + 56))(v34, 0, 1, v20);
}

uint64_t sub_1D1CFDFA0()
{
  if (*v0)
  {
    return 0x6C62616863616572;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_1D1CFDFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C62616863616572 && a2 == 0xE900000000000065)
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

uint64_t sub_1D1CFE0C4(uint64_t a1)
{
  v2 = sub_1D1D03390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFE100(uint64_t a1)
{
  v2 = sub_1D1D03390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFE13C(uint64_t a1)
{
  v2 = sub_1D1D03438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFE178(uint64_t a1)
{
  v2 = sub_1D1D03438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFE1B4(uint64_t a1)
{
  v2 = sub_1D1D033E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFE1F0(uint64_t a1)
{
  v2 = sub_1D1D033E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticResident.Status.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D8D0, &qword_1D1EA72E0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D8D8, &qword_1D1EA72E8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D8E0, &qword_1D1EA72F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D03390();
  sub_1D1E6930C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D1D033E4();
    v14 = v18;
    sub_1D1E68DFC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D1D03438();
    sub_1D1E68DFC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t StaticResident.Status.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D900, &qword_1D1EA72F8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D908, &qword_1D1EA7300);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D910, &unk_1D1EA7308);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D03390();
  v12 = v31;
  sub_1D1E692FC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D1E68DDC();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D18085D0();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D1E688EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v22 = &type metadata for StaticResident.Status;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D1D033E4();
        sub_1D1E68C4C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D1D03438();
        sub_1D1E68C4C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_1D1CFE9E0()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1D1CFEA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001D1EC86D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC86F0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();

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
  return result;
}

uint64_t sub_1D1CFEB00(uint64_t a1)
{
  v2 = sub_1D1D0348C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFEB3C(uint64_t a1)
{
  v2 = sub_1D1D0348C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFEB78(uint64_t a1)
{
  v2 = sub_1D1D03534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFEBB4(uint64_t a1)
{
  v2 = sub_1D1D03534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFEBF0(uint64_t a1)
{
  v2 = sub_1D1D034E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFEC2C(uint64_t a1)
{
  v2 = sub_1D1D034E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticResident.Capability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D918, &qword_1D1EA7318);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D920, &qword_1D1EA7320);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D928, &qword_1D1EA7328);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D0348C();
  sub_1D1E6930C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D1D034E0();
    v14 = v18;
    sub_1D1E68DFC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D1D03534();
    sub_1D1E68DFC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t StaticResident.Capability.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D948, &qword_1D1EA7330);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D950, &qword_1D1EA7338);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D958, &qword_1D1EA7340);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D0348C();
  v12 = v31;
  sub_1D1E692FC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D1E68DDC();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D18085D0();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D1E688EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v22 = &type metadata for StaticResident.Capability;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D1D034E0();
        sub_1D1E68C4C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D1D03534();
        sub_1D1E68C4C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t StaticResident.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticResident.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticResident(0) + 24));

  return v1;
}

double StaticResident.status.getter()
{
  type metadata accessor for StaticResident(0);

  return result;
}

double StaticResident.capabilities.getter()
{
  type metadata accessor for StaticResident(0);

  return result;
}

uint64_t StaticResident.specialMediaCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticResident(0) + 36);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1D1771B4C(v4, v5);
}

uint64_t StaticResident.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticResident(0) + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticResident.init(id:name:roomName:status:capabilities:specialMediaCategory:homeId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a8;
  v18 = *(a8 + 8);
  v19 = sub_1D1E66A7C();
  v27 = *(*(v19 - 8) + 32);
  (v27)((v19 - 8), a9, a1, v19);
  v20 = type metadata accessor for StaticResident(0);
  v21 = (a9 + v20[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + v20[6]);
  *v22 = a4;
  v22[1] = a5;
  *(a9 + v20[7]) = a6;
  *(a9 + v20[8]) = a7;
  v23 = a9 + v20[9];
  *v23 = v17;
  *(v23 + 8) = v18;
  v24 = a9 + v20[10];

  return v27(v24, a10, v19);
}

unint64_t sub_1D1CFF73C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0x6449656D6F68;
  }

  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0x696C696261706163;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x656D614E6D6F6F72;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1CFF804@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D04708(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1CFF82C(uint64_t a1)
{
  v2 = sub_1D1D03588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFF868(uint64_t a1)
{
  v2 = sub_1D1D03588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticResident.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D960, &qword_1D1EA7348);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D03588();
  sub_1D1E6930C();
  LOBYTE(v13) = 0;
  sub_1D1E66A7C();
  sub_1D1D03DC8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticResident(0);
    LOBYTE(v13) = 1;
    sub_1D1E68ECC();
    LOBYTE(v13) = 2;
    sub_1D1E68E0C();
    v13 = *(v3 + v9[7]);
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D970, &qword_1D1EA7350);
    sub_1D1D036FC(&qword_1EC64D978, sub_1D1D035DC, MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    v13 = *(v3 + v9[8]);
    v15 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D988, &qword_1D1EA7358);
    sub_1D1D03630(&qword_1EC64D990, sub_1D1D036A8, MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    v10 = v3 + v9[9];
    v11 = *(v10 + 8);
    v13 = *v10;
    v14 = v11;
    v15 = 5;
    sub_1D1771B4C(v13, v11);
    sub_1D18F1630();
    sub_1D1E68F1C();
    sub_1D1771B5C(v13, v14);
    LOBYTE(v13) = 6;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticResident.hash(into:)(__int128 *a1)
{
  sub_1D1E66A7C();
  sub_1D1D03DC8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for StaticResident(0);
  sub_1D1E678EC();
  if (*(v1 + *(v3 + 24) + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1771CBC();
  sub_1D1771CBC();
  v4 = v1 + *(v3 + 36);
  v5 = *v4;
  v6 = *(v4 + 8);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x1D3892850](5);
      sub_1D1E6922C();
      sub_1D1E6922C();
      return sub_1D1E676EC();
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 6;
      }
    }

    else
    {
      v7 = v5 != 0;
    }

LABEL_17:
    MEMORY[0x1D3892850](v7);
    return sub_1D1E676EC();
  }

  if (v6)
  {
    MEMORY[0x1D3892850](4);
    v7 = v5;
    goto LABEL_17;
  }

  MEMORY[0x1D3892850](3);
  sub_1D1E6922C();
  if (v5)
  {
    sub_1D176D4E8(a1, v5);
  }

  return sub_1D1E676EC();
}

uint64_t StaticResident.hashValue.getter()
{
  sub_1D1E6920C();
  StaticResident.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticResident.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1D1E66A7C();
  v40 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v34 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D9A0, &unk_1D1EA7360);
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v34 - v8;
  v10 = type metadata accessor for StaticResident(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D03588();
  v43 = v9;
  v13 = v45;
  sub_1D1E692FC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v6;
  v14 = v41;
  v45 = v12;
  LOBYTE(v46) = 0;
  v15 = sub_1D1D03DC8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  v16 = v3;
  v36 = v15;
  v17 = *(v40 + 32);
  v18 = v45;
  v17(v45, v42, v16);
  LOBYTE(v46) = 1;
  v19 = sub_1D1E68D2C();
  v37 = v16;
  v35 = v17;
  v20 = v10;
  v21 = *(v10 + 20);
  v22 = v18;
  v23 = (v18 + v21);
  *v23 = v19;
  v23[1] = v24;
  LOBYTE(v46) = 2;
  v42 = 0;
  v25 = sub_1D1E68C6C();
  v26 = v14;
  v27 = (v22 + v20[6]);
  *v27 = v25;
  v27[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D970, &qword_1D1EA7350);
  v48 = 3;
  sub_1D1D036FC(&qword_1EC64D9A8, sub_1D1D03774, MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  v29 = a1;
  *(v22 + v20[7]) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D988, &qword_1D1EA7358);
  v48 = 4;
  sub_1D1D03630(&qword_1EC64D9B8, sub_1D1D037C8, MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  *(v22 + v20[8]) = v46;
  v48 = 5;
  sub_1D18F18D0();
  sub_1D1E68D7C();
  v30 = v47;
  v31 = v22 + v20[9];
  *v31 = v46;
  *(v31 + 8) = v30;
  LOBYTE(v46) = 6;
  v32 = v38;
  sub_1D1E68D7C();
  (*(v26 + 8))(v43, v44);
  v35(v22 + v20[10], v32, v16);
  sub_1D1D0381C(v22, v39);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1D1D03880(v22);
}

uint64_t sub_1D1D00554()
{
  sub_1D1E6920C();
  StaticResident.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D00598(uint64_t a1)
{
  sub_1D1E6920C();
  StaticResident.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticResident.iconSymbol.getter()
{
  v1 = 0x6E6F697473657571;
  v2 = v0 + *(type metadata accessor for StaticResident(0) + 36);
  v3 = *(v2 + 8);
  if (v3 == 3)
  {
    if (*v2 == 1)
    {
      v4 = 1;
      goto LABEL_6;
    }
  }

  else if (v3 == 1)
  {
    v4 = *v2;
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643200, &qword_1D1E71658);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v4;
    v6 = inited + 32;
    *(inited + 40) = v3;
    v1 = _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(inited);
    swift_setDeallocating();
    sub_1D1771B4C(v4, v3);
    sub_1D18EB158(v6);
  }

  return v1;
}

uint64_t sub_1D1D006F8(id *a1, void *a2)
{
  v35 = sub_1D1E66A7C();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = [*a1 device];
  if (v16)
  {
    v17 = v16;
    v18 = a2;
    v19 = [v16 uniqueIdentifier];

    sub_1D1E66A5C();
    a2 = v18;
    v20 = *(v4 + 56);
    v20(v15, 0, 1, v35);
  }

  else
  {
    v20 = *(v4 + 56);
    v20(v15, 1, 1, v35);
  }

  v21 = [a2 device];
  v22 = [v21 uniqueIdentifier];

  sub_1D1E66A5C();
  v23 = v35;
  v20(v13, 0, 1, v35);
  v24 = *(v33 + 48);
  sub_1D1741C08(v15, v7, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v13, &v7[v24], &qword_1EC642590, qword_1D1E71260);
  v25 = *(v4 + 48);
  if (v25(v7, 1, v23) != 1)
  {
    sub_1D1741C08(v7, v34, &qword_1EC642590, qword_1D1E71260);
    if (v25(&v7[v24], 1, v23) != 1)
    {
      v27 = v4;
      v28 = v32;
      (*(v4 + 32))(v32, &v7[v24], v23);
      sub_1D1D03DC8(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v29 = v34;
      v26 = sub_1D1E6775C();
      v30 = *(v27 + 8);
      v30(v28, v23);
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
      v30(v29, v23);
      sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
      return v26 & 1;
    }

    sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
    (*(v4 + 8))(v34, v23);
    goto LABEL_9;
  }

  sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
  if (v25(&v7[v24], 1, v23) != 1)
  {
LABEL_9:
    sub_1D1741A30(v7, &qword_1EC642980, &unk_1D1E6E6E0);
    v26 = 0;
    return v26 & 1;
  }

  sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
  v26 = 1;
  return v26 & 1;
}

void sub_1D1D00C00(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v3 = a1;
  v4 = [v3 category];
  v5 = [v4 categoryType];

  v6 = sub_1D1E6781C();
  v8 = v7;

  if (sub_1D1E6781C() == v6 && v9 == v8)
  {

    v12 = 1;
    goto LABEL_16;
  }

  v11 = sub_1D1E6904C();

  if (v11)
  {

    v12 = 1;
LABEL_16:
    *a2 = v12;
    v16 = 3;
LABEL_17:
    *(a2 + 8) = v16;
    return;
  }

  if (sub_1D1E6781C() == v6 && v13 == v8)
  {
  }

  else
  {
    v15 = sub_1D1E6904C();

    if ((v15 & 1) == 0)
    {

LABEL_15:
      v12 = 2;
      goto LABEL_16;
    }
  }

  v17 = [v3 homePodVariant];

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = 2;
    }

    else
    {
      if (v17 != 3)
      {
        goto LABEL_25;
      }

      v18 = 3;
    }

    *a2 = v18;
    v16 = 1;
    goto LABEL_17;
  }

  if (!v17)
  {
    *a2 = 0;
    v16 = 1;
    goto LABEL_17;
  }

LABEL_25:
  *a2 = 1;
  *(a2 + 8) = 1;
}

uint64_t sub_1D1D00DD8(void *a1, id a2)
{
  if (!a1)
  {
    v3 = [a2 name];
    goto LABEL_7;
  }

  v3 = [a1 configuredName];
  if (v3)
  {
LABEL_7:
    v4 = v3;
    v7 = sub_1D1E6781C();
    goto LABEL_8;
  }

  v4 = a1;
  HMAccessory.specialMediaCategory.getter(&v12);
  v5 = v13;
  if (v13 == 255 || (v6 = v12, v7 = sub_1D1C06E10(&v12), v9 = v8, sub_1D18EB2D8(v6, v5), !v9))
  {
    v11 = [v4 name];
    v7 = sub_1D1E6781C();

    return v7;
  }

LABEL_8:

  return v7;
}

uint64_t sub_1D1D00EF8()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D00FC4, 0, 0);
}

uint64_t sub_1D1D00FC4()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1D010B4;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1D01520;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1D010B4()
{
  v43 = v0;
  v2 = v0;
  v3 = v0[10];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v6);
    sub_1D1747DDC(&v42);

    v7 = v42;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[8];
  v9 = v0[6];
  v10 = v0[5];
  v11 = *(v0[7] + 16);
  v11(v0[9], v10, v9);
  v11(v8, v10, v9);
  v40 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = v7 & 0xC000000000000001;
  v39 = v7 + 32;
  while (v12 != v13)
  {
    if (v14)
    {
      v1 = v7;
      v15 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v41 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v15 = *(v7 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v2;
    v18 = v2[8];
    v19 = [v15 residentDevices];
    sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
    v20 = sub_1D1E67C1C();

    v21 = swift_task_alloc();
    *(v21 + 16) = v18;
    v22 = sub_1D174A6C4(sub_1D1749C64, v21, v20);

    if (v22)
    {
      v12 = v13;
      v7 = v1;
      v2 = v17;
      break;
    }

    v23 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v17;
    if (v23)
    {
      goto LABEL_30;
    }
  }

  if (!v40)
  {
    if (v12 != *(v41 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v1 = *(v2[7] + 8);
    v1(v2[9], v2[6]);
    v32 = 0;
    goto LABEL_26;
  }

  if (v12 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v14)
  {
    v24 = MEMORY[0x1D3891EF0](v12, v7);
  }

  else
  {
    if (v12 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v24 = *(v39 + 8 * v12);
  }

  v25 = v24;
  v26 = v2[9];
  v28 = v2[6];
  v27 = v2[7];
  v29 = [v24 residentDevices];
  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v30 = sub_1D1E67C1C();

  v31 = swift_task_alloc();
  *(v31 + 16) = v26;
  v32 = sub_1D174A6C4(sub_1D1778988, v31, v30);

  v1 = *(v27 + 8);
  v1(v26, v28);

  if (!v32)
  {
LABEL_34:
    v35 = (v1)(v2[8], v2[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

LABEL_26:
  v2[11] = v32;
  v33 = v2[8];
  v34 = v2[6];

  v1(v33, v34);
  v35 = sub_1D1B9A998;
  v36 = 0;
  v37 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1D1D01520()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1D015B8, 0, 0);
}

uint64_t sub_1D1D015B8(uint64_t a1)
{
  *(v1 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D01644, v3, v2);
}

uint64_t sub_1D1D01644()
{

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1D016B8, 0, 0);
}

uint64_t sub_1D1D016B8(uint64_t a1)
{
  *(v1 + 128) = sub_1D1E66A2C();
  *(v1 + 136) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D01750, v3, v2);
}

uint64_t sub_1D1D01750()
{
  v1 = v0[16];
  v2 = v0[15];

  v3 = [v2 residentFor_];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1D1D0180C()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  *(v0 + 48) = v1;
  if (v1)
  {
    *(v0 + 112) = *(type metadata accessor for StaticResident(0) + 40);
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1D0190C;
    v4 = 0;
  }

  else
  {
    *(v0 + 64) = sub_1D1E67E1C();
    *(v0 + 72) = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1D01AF8;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1D0190C()
{
  v10 = v0;
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v9 = sub_1D1749970(v4);
    sub_1D1747DDC(&v9);

    v5 = v9;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + 40) + *(v0 + 112);
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v0 + 56) = sub_1D174A6C4(sub_1D1749C64, v7, v5);

  return MEMORY[0x1EEE6DFA0](sub_1D1D01A94, 0, 0);
}

uint64_t sub_1D1D01A94()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1D01AF8()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1D01B90, 0, 0);
}

uint64_t sub_1D1D01B90(uint64_t a1)
{
  *(v1 + 80) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D01C1C, v3, v2);
}

uint64_t sub_1D1D01C1C()
{

  *(v0 + 88) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1D01C90, 0, 0);
}

uint64_t sub_1D1D01C90()
{
  type metadata accessor for StaticResident(0);
  *(v0 + 96) = sub_1D1E66A2C();
  *(v0 + 104) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D01D38, v2, v1);
}

uint64_t sub_1D1D01D38()
{
  v1 = v0[12];
  v2 = v0[11];

  v3 = [v2 homeFor_];

  v4 = v0[1];

  return v4(v3);
}

uint64_t StaticResident.setAsPreferredResident(requireAutoUpdate:)(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 264) = a1;
  v3 = sub_1D1E66A7C();
  *(v2 + 152) = v3;
  *(v2 + 160) = *(v3 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  *(v2 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  v4 = swift_task_alloc();
  *(v2 + 216) = v4;
  *v4 = v2;
  v4[1] = sub_1D1D01F40;

  return sub_1D1D00EF8();
}

uint64_t sub_1D1D01F40(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D02040, 0, 0);
}

uint64_t sub_1D1D02040()
{
  if (v0[28])
  {
    v1 = swift_task_alloc();
    v0[29] = v1;
    *v1 = v0;
    v1[1] = sub_1D1D021FC;

    return sub_1D1D017EC();
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE07B5D8);
    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6833C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D16EC000, v4, v5, "calling setAsPreferredResident failed due to missing resident", v6, 2u);
      MEMORY[0x1D3893640](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D1D021FC(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D022FC, 0, 0);
}

uint64_t sub_1D1D022FC()
{
  v1 = *(v0 + 240);
  if (!v1)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EE07B5D8);
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 224);
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D16EC000, v7, v8, "calling setAsPreferredResident failed due to missing home", v11, 2u);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    else
    {

      v7 = v10;
    }

    goto LABEL_29;
  }

  v64 = *(v0 + 240);
  v2 = [v1 userSelectedPreferredResident];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 uniqueIdentifier];

    sub_1D1E66A5C();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v12 = *(v0 + 224);
  v14 = *(v0 + 200);
  v13 = *(v0 + 208);
  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v17 + 56);
  v19(v13, v5, 1, v18);
  v20 = [v12 uniqueIdentifier];
  sub_1D1E66A5C();

  v19(v14, 0, 1, v18);
  v21 = *(v16 + 48);
  sub_1D1741C08(v13, v15, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v14, v15 + v21, &qword_1EC642590, qword_1D1E71260);
  v22 = *(v17 + 48);
  if (v22(v15, 1, v18) == 1)
  {
    v23 = *(v0 + 208);
    v24 = *(v0 + 152);
    sub_1D1741A30(*(v0 + 200), &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
    if (v22(v15 + v21, 1, v24) == 1)
    {
      sub_1D1741A30(*(v0 + 184), &qword_1EC642590, qword_1D1E71260);
LABEL_24:
      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 224);
      v53 = sub_1D1E6709C();
      __swift_project_value_buffer(v53, qword_1EE07B5D8);
      v54 = v52;
      v7 = sub_1D1E6707C();
      v55 = sub_1D1E6835C();

      v56 = os_log_type_enabled(v7, v55);
      v57 = *(v0 + 224);
      if (v56)
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        *(v58 + 4) = v57;
        *v59 = v57;
        v60 = v57;
        _os_log_impl(&dword_1D16EC000, v7, v55, "selectPreferredResident already set to %@", v58, 0xCu);
        sub_1D1741A30(v59, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v59, -1, -1);
        MEMORY[0x1D3893640](v58, -1, -1);
      }

      else
      {

        v7 = v57;
      }

LABEL_29:

      v61 = *(v0 + 8);

      return v61();
    }

    goto LABEL_14;
  }

  v25 = *(v0 + 152);
  sub_1D1741C08(*(v0 + 184), *(v0 + 192), &qword_1EC642590, qword_1D1E71260);
  v26 = v22(v15 + v21, 1, v25);
  v28 = *(v0 + 200);
  v27 = *(v0 + 208);
  v29 = *(v0 + 192);
  if (v26 == 1)
  {
    v31 = *(v0 + 152);
    v30 = *(v0 + 160);
    sub_1D1741A30(*(v0 + 200), &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
    (*(v30 + 8))(v29, v31);
LABEL_14:
    sub_1D1741A30(*(v0 + 184), &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_15;
  }

  v63 = *(v0 + 184);
  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 152);
  (*(v47 + 32))(v48, v15 + v21, v49);
  sub_1D1D03DC8(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v50 = sub_1D1E6775C();
  v51 = *(v47 + 8);
  v51(v48, v49);
  sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
  v51(v29, v49);
  sub_1D1741A30(v63, &qword_1EC642590, qword_1D1E71260);
  if (v50)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 224);
  v33 = sub_1D1E6709C();
  *(v0 + 248) = __swift_project_value_buffer(v33, qword_1EE07B5D8);
  v34 = v32;
  v35 = v64;
  v36 = sub_1D1E6707C();
  v37 = sub_1D1E6835C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = *(v0 + 240);
    v39 = *(v0 + 224);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412546;
    *(v40 + 4) = v39;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v35;
    *v41 = v39;
    v41[1] = v38;
    v42 = v39;
    v43 = v35;
    _os_log_impl(&dword_1D16EC000, v36, v37, "calling selectPreferredResident for %@ on %@", v40, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v41, -1, -1);
    MEMORY[0x1D3893640](v40, -1, -1);
  }

  v44 = *(v0 + 224);
  v45 = *(v0 + 264);

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1D02B30;
  v46 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_54;
  *(v0 + 112) = v46;
  [v35 selectPreferredResident:v44 requireAutoUpdate:v45 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1D02B30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1D1D02CE8;
  }

  else
  {
    v2 = sub_1D1D02C40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1D02C40()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D02CE8(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[28];
  swift_willThrow();

  v4 = v3;
  v5 = v2;
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6833C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[30];
    v9 = v1[28];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v8;
    *v11 = v9;
    v11[1] = v8;
    v12 = v9;
    v13 = v8;
    _os_log_impl(&dword_1D16EC000, v6, v7, "selectPreferredResident failed for %@ on %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  v14 = v1[30];
  v15 = v1[28];

  swift_willThrow();

  v16 = v1[1];

  return v16();
}

uint64_t _s13HomeDataModel14StaticResidentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticResident(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((sub_1D17B30EC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D17B30EC() & 1) == 0)
  {
    return 0;
  }

  v16 = v4[9];
  v17 = *(a1 + v16 + 8);
  v24 = *(a1 + v16);
  v25 = v17;
  v18 = a2 + v16;
  v19 = *(v18 + 8);
  v22 = *v18;
  v23 = v19;
  sub_1D1771B4C(v24, v17);
  sub_1D1771B4C(v22, v19);
  v20 = static StaticAccessory.SpecialMediaCategory.== infix(_:_:)(&v24, &v22);
  sub_1D1771B5C(v22, v23);
  sub_1D1771B5C(v24, v25);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

void *sub_1D1D03040(void *a1)
{
  v15 = sub_1D1E66A7C();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 supportsResidentSelection])
  {
    return 0;
  }

  v5 = [a1 autoSelectedPreferredResidents];
  if (!v5)
  {
    return v5;
  }

  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v6 = sub_1D1E67C1C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v7 = sub_1D1E6873C();
  if (!v7)
  {
LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v5 = v16;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3891EF0](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 uniqueIdentifier];
      sub_1D1E66A5C();

      v16 = v5;
      v14 = v5[2];
      v13 = v5[3];
      if (v14 >= v13 >> 1)
      {
        sub_1D178CEFC((v13 > 1), v14 + 1, 1);
        v5 = v16;
      }

      ++v9;
      v5[2] = v14 + 1;
      (*(v2 + 32))(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v4, v15);
    }

    while (v7 != v9);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D032B0(void *a1)
{
  v5 = MEMORY[0x1E69E7CD0];
  if ([a1 supportsResidentSelection])
  {
    sub_1D1764594(&v3, 0);
  }

  if (([a1 capabilities] & 0x10000) != 0)
  {
    sub_1D1764594(&v4, 1);
  }

  return v5;
}

uint64_t sub_1D1D0332C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResident(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1D03390()
{
  result = qword_1EC64D8E8;
  if (!qword_1EC64D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8E8);
  }

  return result;
}

unint64_t sub_1D1D033E4()
{
  result = qword_1EC64D8F0;
  if (!qword_1EC64D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8F0);
  }

  return result;
}

unint64_t sub_1D1D03438()
{
  result = qword_1EC64D8F8;
  if (!qword_1EC64D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8F8);
  }

  return result;
}

unint64_t sub_1D1D0348C()
{
  result = qword_1EC64D930;
  if (!qword_1EC64D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D930);
  }

  return result;
}

unint64_t sub_1D1D034E0()
{
  result = qword_1EC64D938;
  if (!qword_1EC64D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D938);
  }

  return result;
}

unint64_t sub_1D1D03534()
{
  result = qword_1EC64D940;
  if (!qword_1EC64D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D940);
  }

  return result;
}

unint64_t sub_1D1D03588()
{
  result = qword_1EC64D968;
  if (!qword_1EC64D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D968);
  }

  return result;
}

unint64_t sub_1D1D035DC()
{
  result = qword_1EC64D980;
  if (!qword_1EC64D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D980);
  }

  return result;
}

uint64_t sub_1D1D03630(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64D988, &qword_1D1EA7358);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1D036A8()
{
  result = qword_1EC64D998;
  if (!qword_1EC64D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D998);
  }

  return result;
}

uint64_t sub_1D1D036FC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64D970, &qword_1D1EA7350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1D03774()
{
  result = qword_1EC64D9B0;
  if (!qword_1EC64D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9B0);
  }

  return result;
}

unint64_t sub_1D1D037C8()
{
  result = qword_1EC64D9C0;
  if (!qword_1EC64D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9C0);
  }

  return result;
}

uint64_t sub_1D1D0381C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResident(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D03880(uint64_t a1)
{
  v2 = type metadata accessor for StaticResident(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1D038DC(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = type metadata accessor for StaticResident(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643730, &unk_1D1EA7CA0);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v39 = *(result + 48);
    v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = *(v12 + 72);
    v42 = (v37 + 32);
    v36 = (v37 + 8);
    while (1)
    {
      v43 = v14;
      v17 = v41;
      sub_1D1741C08(v15, v41, &qword_1EC643730, &unk_1D1EA7CA0);
      v18 = *v42;
      v19 = v8;
      (*v42)(v44, v17, v8);
      v20 = v7;
      sub_1D1D0332C(v17 + v39, v7);
      v21 = *v45;
      v23 = sub_1D1742188();
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D17372A8();
        }
      }

      else
      {
        sub_1D17256A8(v26, a2 & 1);
        v28 = sub_1D1742188();
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }

        v23 = v28;
      }

      v30 = *v45;
      if (v27)
      {
        v8 = v19;
        (*v36)(v44, v19);
        v16 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1D049BC(v20, v16);
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v8 = v19;
        v18((v30[6] + *(v37 + 72) * v23), v44, v19);
        v31 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1D0332C(v20, v31);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_16;
        }

        v30[2] = v34;
      }

      v15 += v38;
      a2 = 1;
      v14 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D1D03CD4()
{
  result = qword_1EE07CB00;
  if (!qword_1EE07CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CB00);
  }

  return result;
}

unint64_t sub_1D1D03D2C()
{
  result = qword_1EE07CB10;
  if (!qword_1EE07CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CB10);
  }

  return result;
}

uint64_t sub_1D1D03DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1D03E80(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17786E4();
    if (v2 <= 0x3F)
    {
      sub_1D1D03FEC(319, &qword_1EE07B6C8, sub_1D1D03F98, &type metadata for StaticResident.Status);
      if (v3 <= 0x3F)
      {
        sub_1D1D03FEC(319, &qword_1EE07B6D0, sub_1D1D0404C, &type metadata for StaticResident.Capability);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D1D03F98()
{
  result = qword_1EE07CB08;
  if (!qword_1EE07CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CB08);
  }

  return result;
}

void sub_1D1D03FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D1E681FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D1D0404C()
{
  result = qword_1EE07CB18[0];
  if (!qword_1EE07CB18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07CB18);
  }

  return result;
}

unint64_t sub_1D1D04134()
{
  result = qword_1EC64D9D0;
  if (!qword_1EC64D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9D0);
  }

  return result;
}

unint64_t sub_1D1D0418C()
{
  result = qword_1EC64D9D8;
  if (!qword_1EC64D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9D8);
  }

  return result;
}

unint64_t sub_1D1D041E4()
{
  result = qword_1EC64D9E0;
  if (!qword_1EC64D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9E0);
  }

  return result;
}

unint64_t sub_1D1D0423C()
{
  result = qword_1EC64D9E8;
  if (!qword_1EC64D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9E8);
  }

  return result;
}

unint64_t sub_1D1D04294()
{
  result = qword_1EC64D9F0;
  if (!qword_1EC64D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9F0);
  }

  return result;
}

unint64_t sub_1D1D042EC()
{
  result = qword_1EC64D9F8;
  if (!qword_1EC64D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9F8);
  }

  return result;
}

unint64_t sub_1D1D04344()
{
  result = qword_1EC64DA00;
  if (!qword_1EC64DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA00);
  }

  return result;
}

unint64_t sub_1D1D0439C()
{
  result = qword_1EC64DA08;
  if (!qword_1EC64DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA08);
  }

  return result;
}

unint64_t sub_1D1D043F4()
{
  result = qword_1EC64DA10;
  if (!qword_1EC64DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA10);
  }

  return result;
}

unint64_t sub_1D1D0444C()
{
  result = qword_1EC64DA18;
  if (!qword_1EC64DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA18);
  }

  return result;
}

unint64_t sub_1D1D044A4()
{
  result = qword_1EC64DA20;
  if (!qword_1EC64DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA20);
  }

  return result;
}

unint64_t sub_1D1D044FC()
{
  result = qword_1EC64DA28;
  if (!qword_1EC64DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA28);
  }

  return result;
}

unint64_t sub_1D1D04554()
{
  result = qword_1EC64DA30;
  if (!qword_1EC64DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA30);
  }

  return result;
}

unint64_t sub_1D1D045AC()
{
  result = qword_1EC64DA38;
  if (!qword_1EC64DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA38);
  }

  return result;
}

unint64_t sub_1D1D04604()
{
  result = qword_1EC64DA40;
  if (!qword_1EC64DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA40);
  }

  return result;
}

unint64_t sub_1D1D0465C()
{
  result = qword_1EC64DA48;
  if (!qword_1EC64DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA48);
  }

  return result;
}

unint64_t sub_1D1D046B4()
{
  result = qword_1EC64DA50;
  if (!qword_1EC64DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA50);
  }

  return result;
}

uint64_t sub_1D1D04708(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBDFE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D1D0494C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643730, &unk_1D1EA7CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D049BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResident(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D04A50(uint64_t a1)
{
  v2 = sub_1D1D04BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D04A8C(uint64_t a1)
{
  v2 = sub_1D1D04BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticResidentConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DA58, &qword_1D1EA7CB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D04BDC();
  sub_1D1E6930C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D1D04BDC()
{
  result = qword_1EC64DA60;
  if (!qword_1EC64DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA60);
  }

  return result;
}

uint64_t sub_1D1D04CBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DA58, &qword_1D1EA7CB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D04BDC();
  sub_1D1E6930C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D1D04DD8()
{
  result = qword_1EC64DA68;
  if (!qword_1EC64DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA68);
  }

  return result;
}

unint64_t sub_1D1D04E50()
{
  result = qword_1EC64DA70;
  if (!qword_1EC64DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA70);
  }

  return result;
}

unint64_t sub_1D1D04EA8()
{
  result = qword_1EC64DA78;
  if (!qword_1EC64DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA78);
  }

  return result;
}

void sub_1D1D04EFC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v20 = v5 + 16;
  v21 = v5;
  v19 = (v5 + 8);
  v24 = a3;

  v13 = 0;
  while (v11)
  {
    v14 = v23;
LABEL_11:
    (*(v21 + 16))(v7, *(v24 + 48) + *(v21 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v14);
    v16 = v22(v7);
    if (v3)
    {
      (*v19)(v7, v14);

      return;
    }

    v17 = v16;
    v11 &= v11 - 1;
    (*v19)(v7, v14);
    if ((v17 & 1) == 0)
    {
LABEL_13:

      return;
    }
  }

  v14 = v23;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_13;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(unsigned __int8 *a1, uint64_t a2, int a3, int a4)
{
  v324 = a4;
  v338 = a3;
  v322 = a2;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v326);
  v325 = &v319 - v6;
  v7 = type metadata accessor for MatterTilePath(0);
  v328 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v327 = &v319 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = type metadata accessor for MatterStateSnapshot(0);
  MEMORY[0x1EEE9AC00](v320);
  v333 = &v319 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v10 = MEMORY[0x1EEE9AC00](v336 - 8);
  v323 = &v319 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v321 = &v319 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v335 = &v319 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v329 = &v319 - v16;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
  v17 = MEMORY[0x1EEE9AC00](v345);
  v344 = &v319 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v343 = &v319 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v342 = &v319 - v21;
  v341 = type metadata accessor for StaticMediaProfile(0);
  v340 = *(v341 - 8);
  MEMORY[0x1EEE9AC00](v341);
  v339 = &v319 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
  v23 = MEMORY[0x1EEE9AC00](v361);
  v330 = &v319 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v348 = &v319 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v347 = &v319 - v27;
  v360 = type metadata accessor for StaticMediaSystem(0);
  v359 = *(v360 - 1);
  MEMORY[0x1EEE9AC00](v360);
  v346 = &v319 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
  v29 = MEMORY[0x1EEE9AC00](v358);
  v357 = (&v319 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v356 = &v319 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v355 = &v319 - v33;
  v354 = type metadata accessor for StaticServiceGroup(0);
  v353 = *(v354 - 8);
  MEMORY[0x1EEE9AC00](v354);
  v35 = &v319 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = *a1;
  v36 = type metadata accessor for StaticRoom(0);
  v331 = v36;
  v37 = *(v36 + 60);
  v332 = v4;
  v38 = *(v4 + v37);
  v39 = *(v38 + 16);
  v40 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1D178CF40(0, v39, 0);
    v41 = v370;
    v42 = v38 + 64;
    v43 = sub_1D1E6869C();
    v44 = 0;
    v334 = v38 + 72;
    v352 = v35;
    v349 = v39;
    v350 = v38 + 64;
    v351 = v38;
    do
    {
      if (v43 < 0 || v43 >= 1 << *(v38 + 32))
      {
        goto LABEL_182;
      }

      if ((*(v42 + 8 * (v43 >> 6)) & (1 << v43)) == 0)
      {
        goto LABEL_183;
      }

      v364 = 1 << v43;
      i = v43 >> 6;
      v46 = *(v38 + 36);
      v362 = v44;
      v363 = v46;
      v366 = v41;
      v47 = v358;
      v48 = *(v358 + 12);
      v49 = *(v38 + 48);
      v50 = sub_1D1E66A7C();
      v51 = *(v50 - 8);
      v52 = v355;
      (*(v51 + 16))(v355, v49 + *(v51 + 72) * v43, v50);
      sub_1D1D1D7E0(*(v38 + 56) + *(v353 + 9) * v43, &v52[v48], type metadata accessor for StaticServiceGroup);
      v53 = v356;
      (*(v51 + 32))(v356, v52, v50);
      v41 = v366;
      sub_1D1D26328(&v52[v48], v53 + *(v47 + 48), type metadata accessor for StaticServiceGroup);
      v54 = v357;
      sub_1D1741C08(v53, v357, &qword_1EC645458, &qword_1D1E799E8);
      v55 = *(v47 + 48);
      v56 = v352;
      sub_1D1D26328(v54 + v55, v352, type metadata accessor for StaticServiceGroup);
      sub_1D1741A30(v53, &qword_1EC645458, &qword_1D1E799E8);
      (*(v51 + 8))(v54, v50);
      *&v370 = v41;
      v58 = v41[2];
      v57 = v41[3];
      if (v58 >= v57 >> 1)
      {
        sub_1D178CF40((v57 > 1), v58 + 1, 1);
        v41 = v370;
      }

      v374 = v354;
      v375 = sub_1D1D1D848(&qword_1EC64BA10, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v373);
      sub_1D1D1D7E0(v56, boxed_opaque_existential_1, type metadata accessor for StaticServiceGroup);
      v41[2] = v58 + 1;
      sub_1D16EEE20(&v373, &v41[5 * v58 + 4]);
      v36 = sub_1D1D1D890(v56, type metadata accessor for StaticServiceGroup);
      v38 = v351;
      v45 = 1 << *(v351 + 32);
      if (v43 >= v45)
      {
        goto LABEL_184;
      }

      v42 = v350;
      v60 = *(v350 + 8 * i);
      if ((v60 & v364) == 0)
      {
        goto LABEL_185;
      }

      if (v363 != *(v351 + 36))
      {
        goto LABEL_186;
      }

      v61 = v60 & (-2 << (v43 & 0x3F));
      if (v61)
      {
        v45 = __clz(__rbit64(v61)) | v43 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v62 = i << 6;
        v63 = (i + 1);
        v64 = (v334 + 8 * i);
        while (v63 < (v45 + 63) >> 6)
        {
          v66 = *v64++;
          v65 = v66;
          v62 += 64;
          ++v63;
          if (v66)
          {
            v36 = sub_1D1716920(v43, v363, 0);
            v45 = __clz(__rbit64(v65)) + v62;
            goto LABEL_4;
          }
        }

        v36 = sub_1D1716920(v43, v363, 0);
      }

LABEL_4:
      v44 = v362 + 1;
      v43 = v45;
    }

    while (v362 + 1 != v349);
    v40 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v366 = v41;
  MEMORY[0x1EEE9AC00](v36);
  LODWORD(v354) = v324 & 1;
  *(&v319 - 16) = v324 & 1;
  *(&v319 - 1) = v67;
  v355 = v68;
  v38 = 0;
  v69 = sub_1D1D1DB10(sub_1D1D1D150, (&v319 - 4), v68, type metadata accessor for StaticMediaSystem, sub_1D188BF00, type metadata accessor for StaticMediaSystem, type metadata accessor for StaticMediaSystem);
  v353 = 0;
  v70 = *(v69 + 2);
  if (v70)
  {
    *&v370 = v40;
    sub_1D178CF40(0, v70, 0);
    v71 = v370;
    v72 = v69 + 64;
    v73 = sub_1D1E6869C();
    v74 = 0;
    v75 = *(v69 + 9);
    v356 = v69 + 72;
    v357 = v70;
    v362 = v69 + 64;
    v358 = v75;
    v363 = v69;
    do
    {
      if (v73 < 0 || v73 >= 1 << v69[32])
      {
        goto LABEL_187;
      }

      v38 = v73 >> 6;
      if ((*&v72[8 * (v73 >> 6)] & (1 << v73)) == 0)
      {
        goto LABEL_188;
      }

      if (v75 != *(v69 + 9))
      {
        goto LABEL_189;
      }

      v364 = v74;
      i = 1 << v73;
      v77 = v361;
      v78 = *(v361 + 48);
      v79 = *(v69 + 6);
      v80 = sub_1D1E66A7C();
      v81 = v71;
      v82 = *(v80 - 8);
      v83 = v347;
      (*(v82 + 16))(v347, v79 + *(v82 + 72) * v73, v80);
      sub_1D1D1D7E0(*(v69 + 7) + *(v359 + 9) * v73, &v83[v78], type metadata accessor for StaticMediaSystem);
      v84 = v348;
      (*(v82 + 32))(v348, v83, v80);
      v71 = v81;
      v85 = v346;
      v86 = *(v77 + 48);
      sub_1D1D26328(&v83[v78], v84 + v86, type metadata accessor for StaticMediaSystem);
      sub_1D1D1D7E0(v84 + v86, v85, type metadata accessor for StaticMediaSystem);
      sub_1D1741A30(v84, &qword_1EC645478, &qword_1D1E79A08);
      *&v370 = v71;
      v88 = v71[2];
      v87 = v71[3];
      if (v88 >= v87 >> 1)
      {
        sub_1D178CF40((v87 > 1), v88 + 1, 1);
        v71 = v370;
      }

      v374 = v360;
      v375 = sub_1D1D1D848(&qword_1EC64BFE8, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
      v89 = __swift_allocate_boxed_opaque_existential_1(&v373);
      sub_1D1D1D7E0(v85, v89, type metadata accessor for StaticMediaSystem);
      v71[2] = v88 + 1;
      sub_1D16EEE20(&v373, &v71[5 * v88 + 4]);
      sub_1D1D1D890(v85, type metadata accessor for StaticMediaSystem);
      v69 = v363;
      v76 = 1 << v363[32];
      if (v73 >= v76)
      {
        goto LABEL_190;
      }

      v72 = v362;
      v90 = *&v362[8 * v38];
      if ((v90 & i) == 0)
      {
        goto LABEL_191;
      }

      LODWORD(v75) = v358;
      if (v358 != *(v363 + 9))
      {
        goto LABEL_192;
      }

      v91 = v90 & (-2 << (v73 & 0x3F));
      if (v91)
      {
        v76 = __clz(__rbit64(v91)) | v73 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v92 = v38 << 6;
        v93 = v38 + 1;
        v94 = &v356[8 * v38];
        while (v93 < (v76 + 63) >> 6)
        {
          v95 = *v94++;
          v38 = v95;
          v92 += 64;
          ++v93;
          if (v95)
          {
            sub_1D1716920(v73, v358, 0);
            v76 = __clz(__rbit64(v38)) + v92;
            goto LABEL_24;
          }
        }

        sub_1D1716920(v73, v358, 0);
      }

LABEL_24:
      v74 = (v364 + 1);
      v73 = v76;
    }

    while ((v364 + 1) != v357);

    v40 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v71 = MEMORY[0x1E69E7CC0];
  }

  *&v373 = v40;
  v96 = v355 + 64;
  v97 = 1 << v355[32];
  v98 = -1;
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  v99 = v98 & *(v355 + 8);
  v100 = (v97 + 63) >> 6;

  v101 = 0;
  v38 = &qword_1D1E79A08;
  v102 = v330;
  if (v99)
  {
    while (1)
    {
      v103 = v101;
LABEL_50:
      v104 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
      v105 = v104 | (v103 << 6);
      v106 = v355;
      v107 = *(v355 + 6);
      v108 = sub_1D1E66A7C();
      (*(*(v108 - 8) + 16))(v102, v107 + *(*(v108 - 8) + 72) * v105, v108);
      v109 = *(v106 + 7) + *(v359 + 9) * v105;
      v110 = v102 + *(v361 + 48);
      sub_1D1D1D7E0(v109, v110, type metadata accessor for StaticMediaSystem);
      v111 = *(v110 + *(v360 + 24));

      sub_1D1741A30(v102, &qword_1EC645478, &qword_1D1E79A08);
      sub_1D17A317C(v111);
      if (!v99)
      {
        goto LABEL_46;
      }
    }
  }

  while (1)
  {
LABEL_46:
    v103 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
      goto LABEL_198;
    }

    if (v103 >= v100)
    {
      break;
    }

    v99 = *&v96[8 * v103];
    ++v101;
    if (v99)
    {
      v101 = v103;
      goto LABEL_50;
    }
  }

  v357 = v71;

  v112 = v373;
  v113 = v332;
  v114 = v353;
  v115 = sub_1D1D1D2C8(*(v332 + *(v331 + 56)), sub_1D1D1F000, sub_1D1D1F000);

  v116 = sub_1D1D24618(v115, v112, sub_1D1D236C0, sub_1D1D236C0);

  v117 = swift_bridgeObjectRelease_n();
  MEMORY[0x1EEE9AC00](v117);
  *(&v319 - 16) = v354;
  *(&v319 - 1) = v113;
  v118 = sub_1D1D1DB10(sub_1D1D23A58, (&v319 - 4), v116, type metadata accessor for StaticMediaProfile, sub_1D188BA98, type metadata accessor for StaticMediaProfile, type metadata accessor for StaticMediaProfile);

  v119 = sub_1D1D1D2C8(v118, sub_1D1D1ED70, sub_1D1D1ED70);

  v120 = v119[2];
  if (v120)
  {
    v356 = v114;
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1D178CF40(0, v120, 0);
    v121 = v370;
    v38 = (v119 + 8);
    v122 = sub_1D1E6869C();
    v123 = 0;
    v358 = v119 + 9;
    v359 = v120;
    v361 = (v119 + 8);
    v360 = v119;
    do
    {
      if (v122 < 0 || v122 >= 1 << *(v119 + 32))
      {
        goto LABEL_193;
      }

      if ((*(v38 + 8 * (v122 >> 6)) & (1 << v122)) == 0)
      {
        goto LABEL_194;
      }

      v364 = 1 << v122;
      i = v122 >> 6;
      v127 = *(v119 + 9);
      v362 = v123;
      v363 = v127;
      v128 = v345;
      v129 = *(v345 + 48);
      v130 = v119[6];
      v131 = sub_1D1E66A7C();
      v132 = *(v131 - 8);
      v133 = v342;
      (*(v132 + 16))(v342, v130 + *(v132 + 72) * v122, v131);
      sub_1D1D1D7E0(v119[7] + *(v340 + 72) * v122, &v133[v129], type metadata accessor for StaticMediaProfile);
      v134 = v343;
      (*(v132 + 32))(v343, v133, v131);
      sub_1D1D26328(&v133[v129], v134 + *(v128 + 48), type metadata accessor for StaticMediaProfile);
      v135 = v344;
      sub_1D1741C08(v134, v344, &qword_1EC645468, &unk_1D1E995E0);
      v136 = *(v128 + 48);
      v137 = v339;
      sub_1D1D26328(v135 + v136, v339, type metadata accessor for StaticMediaProfile);
      sub_1D1741A30(v134, &qword_1EC645468, &unk_1D1E995E0);
      (*(v132 + 8))(v135, v131);
      *&v370 = v121;
      v139 = *(v121 + 2);
      v138 = *(v121 + 3);
      if (v139 >= v138 >> 1)
      {
        sub_1D178CF40((v138 > 1), v139 + 1, 1);
        v121 = v370;
      }

      v374 = v341;
      v375 = sub_1D1D1D848(&qword_1EC64BFD0, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
      v140 = __swift_allocate_boxed_opaque_existential_1(&v373);
      sub_1D1D1D7E0(v137, v140, type metadata accessor for StaticMediaProfile);
      *(v121 + 2) = v139 + 1;
      sub_1D16EEE20(&v373, &v121[40 * v139 + 32]);
      sub_1D1D1D890(v137, type metadata accessor for StaticMediaProfile);
      v119 = v360;
      v124 = 1 << *(v360 + 32);
      v38 = v361;
      if (v122 >= v124)
      {
        goto LABEL_195;
      }

      v141 = *(v361 + 8 * i);
      if ((v141 & v364) == 0)
      {
        goto LABEL_196;
      }

      if (v363 != *(v360 + 9))
      {
        goto LABEL_197;
      }

      v142 = v141 & (-2 << (v122 & 0x3F));
      if (v142)
      {
        v124 = __clz(__rbit64(v142)) | v122 & 0x7FFFFFFFFFFFFFC0;
        v125 = v359;
        v126 = v362;
      }

      else
      {
        v143 = i << 6;
        v144 = (i + 1);
        v145 = &v358[i];
        v125 = v359;
        v126 = v362;
        while (v144 < (v124 + 63) >> 6)
        {
          v147 = *v145++;
          v146 = v147;
          v143 += 64;
          ++v144;
          if (v147)
          {
            sub_1D1716920(v122, v363, 0);
            v124 = __clz(__rbit64(v146)) + v143;
            goto LABEL_55;
          }
        }

        sub_1D1716920(v122, v363, 0);
      }

LABEL_55:
      v123 = v126 + 1;
      v122 = v124;
    }

    while (v123 != v125);
    v362 = v121;

    v114 = v356;
  }

  else
  {

    v362 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v148);
  *(&v319 - 2) = v322;
  i = v149;
  v150 = sub_1D1D1DB10(sub_1D1D23A64, (&v319 - 4), v149, type metadata accessor for StaticAccessory, sub_1D188CC38, type metadata accessor for StaticAccessory, type metadata accessor for StaticAccessory);
  v151 = sub_1D1D1D2C8(v150, sub_1D1D1FE20, sub_1D1D1FE20);

  v152 = sub_1D1D1D2C8(v151, sub_1D1D1FBDC, sub_1D1D1FBDC);

  v153 = sub_1D1D1D8F0(v152, v324 & 1, sub_1D1D1F9C4, sub_1D1D1F9C4);
  v359 = v114;

  v154 = v153 + 64;
  v155 = 1 << v153[32];
  v156 = -1;
  if (v155 < 64)
  {
    v156 = ~(-1 << v155);
  }

  v157 = v156 & *(v153 + 8);
  v38 = (v155 + 63) >> 6;
  v363 = v153;

  v158 = 0;
  v364 = MEMORY[0x1E69E7CC0];
  v361 = (v153 + 64);
  v360 = v38;
  while (v157)
  {
LABEL_82:
    v160 = __clz(__rbit64(v157));
    v157 &= v157 - 1;
    v161 = v160 | (v158 << 6);
    v162 = v363;
    v163 = *(v363 + 6);
    v164 = sub_1D1E66A7C();
    v165 = *(v164 - 8);
    v166 = v329;
    (*(v165 + 16))(v329, v163 + *(v165 + 72) * v161, v164);
    v167 = *(v162 + 56);
    v168 = type metadata accessor for StaticAccessory(0);
    v169 = v167 + *(*(v168 - 8) + 72) * v161;
    v170 = v336;
    sub_1D1D1D7E0(v169, v166 + *(v336 + 48), type metadata accessor for StaticAccessory);
    v171 = v335;
    sub_1D1741C08(v166, v335, &qword_1EC644B30, &qword_1D1E77280);
    v172 = *(v170 + 48);
    v371 = v168;
    v372 = sub_1D1D1D848(&qword_1EC64BA18, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    v173 = __swift_allocate_boxed_opaque_existential_1(&v370);
    sub_1D1D26328(v171 + v172, v173, type metadata accessor for StaticAccessory);
    sub_1D1741A30(v166, &qword_1EC644B30, &qword_1D1E77280);
    (*(v165 + 8))(v171, v164);
    if (v371)
    {
      sub_1D16EEE20(&v370, &v373);
      v174 = v364;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v367 = v174;
      v154 = v361;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v364 = sub_1D177F2B8(0, *(v364 + 16) + 1, 1, v364);
        *&v367 = v364;
      }

      v177 = *(v364 + 16);
      v176 = *(v364 + 24);
      if (v177 >= v176 >> 1)
      {
        v364 = sub_1D177F2B8((v176 > 1), v177 + 1, 1, v364);
        *&v367 = v364;
      }

      v178 = v374;
      v179 = v375;
      v180 = __swift_mutable_project_boxed_opaque_existential_1(&v373, v374);
      MEMORY[0x1EEE9AC00](v180);
      v182 = &v319 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v183 + 16))(v182);
      sub_1D1D20B74(v177, v182, &v367, v178, v179);
      __swift_destroy_boxed_opaque_existential_1(&v373);
    }

    else
    {
      sub_1D1741A30(&v370, &qword_1EC643668, &qword_1D1E71D60);
      v154 = v361;
    }

    v38 = v360;
  }

  while (1)
  {
    v159 = v158 + 1;
    if (__OFADD__(v158, 1))
    {
      goto LABEL_178;
    }

    if (v159 >= v38)
    {
      break;
    }

    v157 = *&v154[8 * v159];
    ++v158;
    if (v157)
    {
      v158 = v159;
      goto LABEL_82;
    }
  }

  *&v373 = MEMORY[0x1E69E7CD0];
  v184 = (i + 64);
  v185 = 1 << *(i + 32);
  v186 = -1;
  if (v185 < 64)
  {
    v186 = ~(-1 << v185);
  }

  v187 = v186 & *(i + 64);
  v188 = (v185 + 63) >> 6;

  v189 = 0;
  v190 = v321;
  v361 = v184;
  v360 = v188;
  while (2)
  {
    if (v187)
    {
      v191 = v189;
LABEL_99:
      v192 = __clz(__rbit64(v187));
      v187 &= v187 - 1;
      v193 = v192 | (v191 << 6);
      v194 = i;
      v195 = *(i + 48);
      v196 = sub_1D1E66A7C();
      v197 = *(v196 - 8);
      (*(v197 + 16))(v190, v195 + *(v197 + 72) * v193, v196);
      v198 = *(v194 + 56);
      v199 = type metadata accessor for StaticAccessory(0);
      v200 = v336;
      sub_1D1D1D7E0(v198 + *(*(v199 - 8) + 72) * v193, v190 + *(v336 + 48), type metadata accessor for StaticAccessory);
      v38 = v335;
      sub_1D1741C08(v190, v335, &qword_1EC644B30, &qword_1D1E77280);
      v201 = v38 + *(v200 + 48);
      LODWORD(v198) = *(v201 + *(v199 + 148));
      sub_1D1D1D890(v201, type metadata accessor for StaticAccessory);
      v363 = *(v197 + 8);
      (v363)(v38, v196);
      if (v198 == 1)
      {
        v202 = v323;
        sub_1D1741C08(v190, v323, &qword_1EC644B30, &qword_1D1E77280);
        v203 = *(v200 + 48);
        v204 = v202;
        v205 = v202 + v203;
        v206 = v202 + v203 + *(v199 + 144);
        v207 = *v206;
        v208 = *(v206 + 8);
        sub_1D1D1D890(v205, type metadata accessor for StaticAccessory);
        if (v208)
        {
          sub_1D1741A30(v190, &qword_1EC644B30, &qword_1D1E77280);
          (v363)(v204, v196);
          goto LABEL_93;
        }

        (v363)(v204, v196);
        sub_1D1766118(&v370, v207);
      }

      sub_1D1741A30(v190, &qword_1EC644B30, &qword_1D1E77280);
LABEL_93:
      v189 = v191;
      v184 = v361;
      v188 = v360;
      continue;
    }

    break;
  }

  while (1)
  {
    v191 = v189 + 1;
    if (__OFADD__(v189, 1))
    {
      goto LABEL_179;
    }

    if (v191 >= v188)
    {
      break;
    }

    v187 = v184[v191];
    ++v189;
    if (v187)
    {
      goto LABEL_99;
    }
  }

  v210 = v373;
  v211 = v322;
  v212 = *(v322 + *(v320 + 24));
  MEMORY[0x1EEE9AC00](v209);
  *(&v319 - 2) = v211;

  v213 = v359;
  v214 = sub_1D1892A20(sub_1D1A30408, (&v319 - 4), v212);

  v215 = sub_1D178547C(v214);

  v216 = sub_1D1D23D00(v215, v210);
  v363 = v213;

  sub_1D1D1D7E0(v211, v333, type metadata accessor for MatterStateSnapshot);
  v217 = v216 + 56;
  v218 = 1 << *(v216 + 32);
  v219 = -1;
  if (v218 < 64)
  {
    v219 = ~(-1 << v218);
  }

  v220 = v219 & *(v216 + 56);
  v221 = (v218 + 63) >> 6;

  v222 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  v223 = v366;
  for (i = v216; v220; v223 = v366)
  {
LABEL_111:
    while (1)
    {
      v225 = __clz(__rbit64(v220));
      v220 &= v220 - 1;
      v226 = v327;
      sub_1D1D1D7E0(*(v216 + 48) + *(v328 + 72) * (v225 | (v222 << 6)), v327, type metadata accessor for MatterTilePath);
      MatterStateSnapshot.tileInfo(for:)(v226, &v370);
      sub_1D1D1D890(v226, type metadata accessor for MatterTilePath);
      if (v371)
      {
        break;
      }

      sub_1D1741A30(&v370, &qword_1EC643668, &qword_1D1E71D60);
      if (!v220)
      {
        goto LABEL_107;
      }
    }

    sub_1D16EEE20(&v370, &v373);
    sub_1D16EEE20(&v373, &v370);
    v227 = swift_isUniquelyReferenced_nonNull_native();
    *&v367 = v38;
    if ((v227 & 1) == 0)
    {
      v38 = sub_1D177F2B8(0, *(v38 + 16) + 1, 1, v38);
      *&v367 = v38;
    }

    v229 = *(v38 + 16);
    v228 = *(v38 + 24);
    if (v229 >= v228 >> 1)
    {
      v38 = sub_1D177F2B8((v228 > 1), v229 + 1, 1, v38);
      *&v367 = v38;
    }

    v230 = v371;
    v231 = v372;
    v232 = __swift_mutable_project_boxed_opaque_existential_1(&v370, v371);
    MEMORY[0x1EEE9AC00](v232);
    v234 = &v319 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v235 + 16))(v234);
    sub_1D1D20B74(v229, v234, &v367, v230, v231);
    __swift_destroy_boxed_opaque_existential_1(&v370);
    v216 = i;
  }

  while (1)
  {
LABEL_107:
    v224 = v222 + 1;
    if (__OFADD__(v222, 1))
    {
      goto LABEL_180;
    }

    if (v224 >= v221)
    {
      break;
    }

    v220 = *(v217 + 8 * v224);
    ++v222;
    if (v220)
    {
      v222 = v224;
      goto LABEL_111;
    }
  }

  v359 = v38;
  sub_1D1D1D890(v333, type metadata accessor for MatterStateSnapshot);

  v237 = v332;
  MEMORY[0x1EEE9AC00](v236);
  *(&v319 - 2) = v237;
  v38 = v363;
  v239 = sub_1D1D1D438(sub_1D1D240D0, (&v319 - 4), v238);

  v240 = sub_1D1D24618(v239, v223, sub_1D1D240D8, sub_1D1D240D8);

  v241 = v364;

  v242 = sub_1D1D24618(v240, v241, sub_1D1D247E8, sub_1D1D247E8);

  v243 = v362;

  v244 = sub_1D1D24618(v242, v243, sub_1D1D24D28, sub_1D1D24D28);

  v245 = sub_1D1D1D2C8(v244, sub_1D1D1E440, sub_1D1D1E440);

  MEMORY[0x1EEE9AC00](v246);
  *(&v319 - 2) = v237;
  v247 = sub_1D1D1D438(sub_1D1D2500C, (&v319 - 4), v245);

  v248 = sub_1D1D1D8F0(v247, v324 & 1, sub_1D1D1E228, sub_1D1D1E228);

  v249 = v248 + 64;
  v250 = 1 << v248[32];
  v251 = -1;
  if (v250 < 64)
  {
    v251 = ~(-1 << v250);
  }

  v252 = v251 & *(v248 + 8);
  v253 = (v250 + 63) >> 6;
  v363 = v248;

  v254 = 0;
  for (i = MEMORY[0x1E69E7CC0]; v252; v243 = v362)
  {
LABEL_127:
    while (1)
    {
      v256 = __clz(__rbit64(v252));
      v252 &= v252 - 1;
      v257 = v256 | (v254 << 6);
      v258 = v363;
      v259 = *(v363 + 6);
      v260 = sub_1D1E66A7C();
      v261 = v325;
      (*(*(v260 - 8) + 16))(v325, v259 + *(*(v260 - 8) + 72) * v257, v260);
      v262 = *(v258 + 56);
      v263 = type metadata accessor for StaticService(0);
      v264 = v262 + *(*(v263 - 8) + 72) * v257;
      v265 = *(v326 + 48);
      sub_1D1D1D7E0(v264, v261 + v265, type metadata accessor for StaticService);
      v371 = v263;
      v266 = sub_1D1D1D848(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v372 = v266;
      v267 = __swift_allocate_boxed_opaque_existential_1(&v370);
      sub_1D1D1D7E0(v261 + v265, v267, type metadata accessor for StaticService);
      sub_1D1741A30(v261, &qword_1EC642DB0, &unk_1D1E6F360);
      if (v371)
      {
        break;
      }

      sub_1D1741A30(&v370, &qword_1EC643668, &qword_1D1E71D60);
      v243 = v362;
      if (!v252)
      {
        goto LABEL_123;
      }
    }

    sub_1D16EEE20(&v370, &v373);
    sub_1D16EEE20(&v373, &v370);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1D177F2B8(0, *(i + 16) + 1, 1, i);
    }

    v269 = *(i + 16);
    v268 = *(i + 24);
    v361 = v269 + 1;
    if (v269 >= v268 >> 1)
    {
      i = sub_1D177F2B8((v268 > 1), v269 + 1, 1, i);
    }

    v270 = __swift_mutable_project_boxed_opaque_existential_1(&v370, v371);
    v360 = &v319;
    MEMORY[0x1EEE9AC00](v270);
    v272 = &v319 - ((v271 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v273 + 16))(v272);
    v368 = v263;
    v369 = v266;
    v274 = __swift_allocate_boxed_opaque_existential_1(&v367);
    sub_1D1D26328(v272, v274, type metadata accessor for StaticService);
    v275 = i;
    *(i + 16) = v361;
    sub_1D16EEE20(&v367, v275 + 40 * v269 + 32);
    __swift_destroy_boxed_opaque_existential_1(&v370);
  }

  while (1)
  {
LABEL_123:
    v255 = v254 + 1;
    if (__OFADD__(v254, 1))
    {
      goto LABEL_181;
    }

    if (v255 >= v253)
    {
      break;
    }

    v252 = *&v249[8 * v255];
    ++v254;
    if (v252)
    {
      v254 = v255;
      goto LABEL_127;
    }
  }

  *&v373 = v364;
  sub_1D17A53D0(i);
  sub_1D17A53D0(v366);
  v276 = v373;
  *&v373 = v243;
  sub_1D17A53D0(v357);
  v277 = v373;
  *&v373 = v276;
  sub_1D17A53D0(v277);
  sub_1D17A53D0(v359);
  v278 = v373;
  v279 = *(v373 + 16);
  if (v279)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1D178CF40(0, v279, 0);
    v280 = v370;
    v281 = v278 + 32;
    do
    {
      sub_1D17419CC(v281, &v373);
      *&v370 = v280;
      v283 = v280[2];
      v282 = v280[3];
      if (v283 >= v282 >> 1)
      {
        sub_1D178CF40((v282 > 1), v283 + 1, 1);
      }

      v284 = v374;
      v285 = v375;
      v286 = __swift_mutable_project_boxed_opaque_existential_1(&v373, v374);
      MEMORY[0x1EEE9AC00](v286);
      v288 = &v319 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v289 + 16))(v288);
      sub_1D1D20ADC(v283, v288, &v370, v284, v285);
      __swift_destroy_boxed_opaque_existential_1(&v373);
      v280 = v370;
      v281 += 40;
      --v279;
    }

    while (v279);
  }

  else
  {

    v280 = MEMORY[0x1E69E7CC0];
  }

  if (v337 != 8)
  {
    v290 = v280[2];
    if (v290)
    {
      v291 = 0;
      v292 = MEMORY[0x1E69E7CC0];
      v293 = (v280 + 4);
      while (1)
      {
        if (v291 >= v280[2])
        {
          goto LABEL_199;
        }

        sub_1D17419CC(v293, &v373);
        sub_1D1D18D58(&v373, v337, &v370);
        if (v38)
        {
          goto LABEL_204;
        }

        __swift_destroy_boxed_opaque_existential_1(&v373);
        v294 = v370;
        v295 = *(v370 + 16);
        v296 = v292[2];
        v297 = v296 + v295;
        if (__OFADD__(v296, v295))
        {
          goto LABEL_200;
        }

        v298 = swift_isUniquelyReferenced_nonNull_native();
        if (v298 && v297 <= v292[3] >> 1)
        {
          if (!*(v294 + 16))
          {
            goto LABEL_144;
          }
        }

        else
        {
          if (v296 <= v297)
          {
            v299 = v296 + v295;
          }

          else
          {
            v299 = v296;
          }

          v292 = sub_1D177F2B8(v298, v299, 1, v292);
          if (!*(v294 + 16))
          {
LABEL_144:

            if (v295)
            {
              goto LABEL_201;
            }

            goto LABEL_145;
          }
        }

        if ((v292[3] >> 1) - v292[2] < v295)
        {
          goto LABEL_202;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        swift_arrayInitWithCopy();

        if (v295)
        {
          v300 = v292[2];
          v301 = __OFADD__(v300, v295);
          v302 = v300 + v295;
          if (v301)
          {
            goto LABEL_203;
          }

          v292[2] = v302;
        }

LABEL_145:
        ++v291;
        v293 += 40;
        if (v290 == v291)
        {
          goto LABEL_162;
        }
      }
    }

    v292 = MEMORY[0x1E69E7CC0];
LABEL_162:

    v280 = v292;
  }

  v303 = v280[2];
  if (!v303)
  {
    v305 = MEMORY[0x1E69E7CC0];
LABEL_176:

    v317 = sub_1D1D07DC4(*(v332 + *(v331 + 72)), v305);

    return v317;
  }

  v304 = 0;
  v38 = (v280 + 4);
  v305 = MEMORY[0x1E69E7CC0];
  while (v304 < v280[2])
  {
    sub_1D17419CC(v38, &v373);
    if ((v338 & 1) != 0 && (v306 = v374, v307 = v375, __swift_project_boxed_opaque_existential_1(&v373, v374), ((*(v307 + 128))(v306, v307) & 1) == 0))
    {
      __swift_destroy_boxed_opaque_existential_1(&v373);
    }

    else
    {
      sub_1D16EEE20(&v373, &v370);
      v308 = swift_isUniquelyReferenced_nonNull_native();
      *&v367 = v305;
      if ((v308 & 1) == 0)
      {
        sub_1D178CF40(0, *(v305 + 16) + 1, 1);
        v305 = v367;
      }

      v310 = *(v305 + 16);
      v309 = *(v305 + 24);
      if (v310 >= v309 >> 1)
      {
        sub_1D178CF40((v309 > 1), v310 + 1, 1);
      }

      v311 = v371;
      v312 = v372;
      v313 = __swift_mutable_project_boxed_opaque_existential_1(&v370, v371);
      MEMORY[0x1EEE9AC00](v313);
      v315 = &v319 - ((v314 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v316 + 16))(v315);
      sub_1D1D20ADC(v310, v315, &v367, v311, v312);
      __swift_destroy_boxed_opaque_existential_1(&v370);
      v305 = v367;
    }

    ++v304;
    v38 += 40;
    if (v303 == v304)
    {
      goto LABEL_176;
    }
  }

LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:

  __swift_destroy_boxed_opaque_existential_1(&v373);

  __break(1u);
  return result;
}

void *sub_1D1D07DC4(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v3 = type metadata accessor for DashboardSortableData(0);
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436D8, &unk_1D1E71E30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - v7;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1D178DB30(0, v9, 0);
    v10 = v55;
    v11 = a2 + 32;
    do
    {
      v12 = *(v5 + 48);
      sub_1D17419CC(v11, &v8[v12]);
      sub_1D17419CC(&v8[v12], &v52);
      v14 = v53;
      v13 = v54;
      __swift_project_boxed_opaque_existential_1(&v52, v53);
      (*(v13 + 64))(v14, v13);
      v15 = v53;
      v16 = v54;
      __swift_project_boxed_opaque_existential_1(&v52, v53);
      v17 = (*(v16 + 56))(v15, v16);
      v18 = &v8[*(v3 + 20)];
      *v18 = v17;
      v18[1] = v19;
      v20 = v53;
      v21 = v54;
      __swift_project_boxed_opaque_existential_1(&v52, v53);
      TileInfoBearer.sortID.getter(v20, v21, &v8[*(v3 + 24)]);
      __swift_destroy_boxed_opaque_existential_1(&v52);
      v55 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D178DB30((v22 > 1), v23 + 1, 1);
        v10 = v55;
      }

      *(v10 + 16) = v23 + 1;
      sub_1D1741A90(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, &qword_1EC6436D8, &unk_1D1E71E30);
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD0, &qword_1D1E6E818);
    v24 = sub_1D1E68BCC();
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC8];
  }

  v52 = v24;
  sub_1D1C84198(v10, 1, &v52);

  v25 = v52;
  v26 = v52[2];
  if (v26)
  {
    v27 = sub_1D1804444(v52[2], 0);
    v28 = sub_1D18085B4();
    v29 = v52;
    swift_retain_n();

    sub_1D1716918(v29);
    if (v28 != v26)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v30 = v50;
  }

  else
  {
    v30 = v50;

    v27 = MEMORY[0x1E69E7CC0];
  }

  v52 = v27;

  sub_1D1C84628(&v52, v30, v31);

  swift_bridgeObjectRelease_n();
  v50 = v52;
  v32 = v52[2];
  if (v32)
  {
    v33 = v51;
    v34 = v50 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v35 = *(v49 + 72);
    v36 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D1D1D7E0(v34, v33, type metadata accessor for DashboardSortableData);
      if (*(v25 + 16) && (v37 = sub_1D171DC84(v33), (v38 & 1) != 0))
      {
        sub_1D17419CC(*(v25 + 56) + 40 * v37, &v52);
        sub_1D1D1D890(v33, type metadata accessor for DashboardSortableData);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = sub_1D177F2B8(0, v36[2] + 1, 1, v36);
          v55 = v36;
        }

        v41 = v36[2];
        v40 = v36[3];
        if (v41 >= v40 >> 1)
        {
          v36 = sub_1D177F2B8((v40 > 1), v41 + 1, 1, v36);
          v55 = v36;
        }

        v42 = v53;
        v43 = v54;
        v44 = __swift_mutable_project_boxed_opaque_existential_1(&v52, v53);
        MEMORY[0x1EEE9AC00](v44);
        v46 = &v49 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v46);
        sub_1D1D20B74(v41, v46, &v55, v42, v43);
        __swift_destroy_boxed_opaque_existential_1(&v52);
        v33 = v51;
      }

      else
      {
        sub_1D1D1D890(v33, type metadata accessor for DashboardSortableData);
      }

      v34 += v35;
      --v32;
    }

    while (v32);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v36;
}

uint64_t sub_1D1D083F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v103 = type metadata accessor for TilesFilter(0);
  v3 = MEMORY[0x1EEE9AC00](v103);
  v104 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v102 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v97 - v9;
  v100 = type metadata accessor for IconTextValueStringDataHolder(0);
  v10 = MEMORY[0x1EEE9AC00](v100);
  v99 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v97 - v12;
  v124 = type metadata accessor for StaticService(0);
  v110 = *(v124 - 1);
  v13 = MEMORY[0x1EEE9AC00](v124);
  v117 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v97 - v15;
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v105 = &v97 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v97 - v29;
  v107 = 0;
  v31 = 0;
  v114 = a1;
  v34 = *(a1 + 64);
  v33 = a1 + 64;
  v32 = v34;
  v35 = 1 << *(v33 - 32);
  v127 = MEMORY[0x1E69E7CD0];
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v32;
  v38 = (v35 + 63) >> 6;
  v111 = (v17 + 16);
  v113 = (v17 + 32);
  v122 = &v97 - v29;
  v123 = 0x80000001D1EB3670;
  v115 = v38;
  v116 = (v17 + 8);
  v119 = v17;
  v120 = v27;
  v108 = v33;
  v118 = v16;
  for (i = v20; v37; v38 = v115)
  {
    v39 = v31;
LABEL_14:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v42 | (v39 << 6);
    v44 = v114;
    (*(v17 + 16))(v112, *(v114 + 48) + *(v17 + 72) * v43, v16);
    v45 = v109;
    sub_1D1D1D7E0(*(v44 + 56) + *(v110 + 72) * v43, v109, type metadata accessor for StaticService);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v47 = *(v46 + 48);
    v48 = *(v17 + 32);
    v27 = v120;
    v49 = v16;
    v48();
    sub_1D1D26328(v45, &v27[v47], type metadata accessor for StaticService);
    (*(*(v46 - 8) + 56))(v27, 0, 1, v46);
    v20 = i;
    v30 = v122;
    v33 = v108;
LABEL_15:
    sub_1D1741A90(v27, v30, &qword_1EC643C68, &unk_1D1E764C0);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v50 - 8) + 48))(v30, 1, v50) == 1)
    {

      if (v107)
      {
        v68 = v49;
        v69 = v20;
        v70 = v97;
        (*(v119 + 56))(v97, 1, 1, v49);
        v123 = 0x80000001D1EB63B0;
        v122 = static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5990);
        v72 = v71;
        static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC8850);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1D1E739C0;
        v74 = *(v127 + 16);
        v75 = MEMORY[0x1E69E65A8];
        *(v73 + 56) = MEMORY[0x1E69E6530];
        *(v73 + 64) = v75;
        *(v73 + 32) = v74;
        v76 = sub_1D1E6783C();
        v78 = v77;

        v79 = v119;

        v80 = v98;
        sub_1D1741C08(v70, v98, &qword_1EC642590, qword_1D1E71260);
        v81 = *(v79 + 48);
        if (v81(v80, 1, v68) == 1)
        {
          sub_1D1E66A6C();
          sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
          v82 = v81(v80, 1, v68);
          v83 = v104;
          v84 = v102;
          v85 = v101;
          if (v82 != 1)
          {
            sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
          (*v113)(v69, v80, v68);
          v83 = v104;
          v84 = v102;
          v85 = v101;
        }

        v87 = v99;
        (*v113)(v99, v69, v68);
        v88 = v100;
        v89 = (v87 + *(v100 + 20));
        v90 = v123;
        *v89 = 0xD000000000000018;
        v89[1] = v90;
        v91 = (v87 + v88[6]);
        *v91 = v122;
        v91[1] = v72;
        v92 = (v87 + v88[7]);
        *v92 = v76;
        v92[1] = v78;
        v93 = v87 + v88[8];
        *v93 = 0;
        *(v93 + 8) = 0;
        *(v93 + 16) = 0;
        *(v93 + 24) = -1;
        v94 = sub_1D1D26328(v87, v85, type metadata accessor for IconTextValueStringDataHolder);
        MEMORY[0x1EEE9AC00](v94);
        *(&v97 - 2) = &v127;
        v126 = v124;
        sub_1D1E66C8C();
        swift_storeEnumTagMultiPayload();
        sub_1D1D26328(v84, v83, type metadata accessor for TilesFilter);
        v95 = type metadata accessor for ClosedBlindsStatusItem(0);
        v96 = v106;
        *(v106 + v95[6]) = 3;
        *(v96 + v95[7]) = 0;
        *(v96 + v95[8]) = 3;
        sub_1D1D26328(v85, v96, type metadata accessor for IconTextValueStringDataHolder);
        sub_1D1D26328(v83, v96 + v95[5], type metadata accessor for TilesFilter);

        return (*(*(v95 - 1) + 56))(v96, 0, 1, v95);
      }

      else
      {

        v86 = type metadata accessor for ClosedBlindsStatusItem(0);
        return (*(*(v86 - 8) + 56))(v106, 1, 1, v86);
      }
    }

    v51 = v117;
    sub_1D1D26328(&v30[*(v50 + 48)], v117, type metadata accessor for StaticService);
    v52 = v124[26];
    v53 = *(v51 + v52);
    if (v53 == 11 && *(v51 + v124[28]) != 53)
    {
      LOBYTE(v126) = *(v51 + v124[28]);
      v125 = 52;
      v54 = ServiceKind.rawValue.getter();
      v56 = v55;
      if (v54 == ServiceKind.rawValue.getter() && v56 == v57)
      {
      }

      else
      {
        v59 = sub_1D1E6904C();

        if ((v59 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v126 = *(v51 + v124[32]);
      v125 = 28;
      v128 = StaticCharacteristicsBag.int(for:)(&v125);
      if (!v128.is_nil && !v128.value)
      {
        v107 = 1;
        v17 = v119;
        v27 = v120;
LABEL_39:
        v64 = v105;
        v16 = v118;
        (*v111)(v105, v51, v118);
        v65 = v112;
        sub_1D1762CB8(v112, v64);
        v66 = *v116;
        (*v116)(v65, v16);
        v67 = v66;
        sub_1D1D1D890(v51, type metadata accessor for StaticService);
        v30 = v122;
        result = (v67)(v122, v16);
        goto LABEL_36;
      }
    }

LABEL_25:
    LOBYTE(v126) = v53;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v123 == v60)
    {

      v17 = v119;
      v27 = v120;
      v30 = v122;
    }

    else
    {
      v61 = sub_1D1E6904C();

      v17 = v119;
      v27 = v120;
      v30 = v122;
      if ((v61 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v126) = *(v51 + v52);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v123 == v62)
    {
    }

    else
    {
      v63 = sub_1D1E6904C();

      if ((v63 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v126 = *(v51 + v124[32]);
    v125 = 40;
    v129 = StaticCharacteristicsBag.int(for:)(&v125);
    if (!v129.is_nil && v129.value < 1)
    {
      goto LABEL_39;
    }

LABEL_35:
    sub_1D1D1D890(v51, type metadata accessor for StaticService);
    v16 = v118;
    result = (*v116)(v30, v118);
LABEL_36:
    v20 = i;
  }

  if (v38 <= v31 + 1)
  {
    v40 = v31 + 1;
  }

  else
  {
    v40 = v38;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v39 >= v38)
    {
      v49 = v16;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      (*(*(v58 - 8) + 56))(v27, 1, 1, v58);
      v37 = 0;
      v31 = v41;
      goto LABEL_15;
    }

    v37 = *(v33 + 8 * v39);
    ++v31;
    if (v37)
    {
      v31 = v39;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D0917C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v103 = type metadata accessor for TilesFilter(0);
  v3 = MEMORY[0x1EEE9AC00](v103);
  v104 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v102 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v97 - v9;
  v100 = type metadata accessor for IconTextValueStringDataHolder(0);
  v10 = MEMORY[0x1EEE9AC00](v100);
  v99 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v97 - v12;
  v124 = type metadata accessor for StaticService(0);
  v110 = *(v124 - 1);
  v13 = MEMORY[0x1EEE9AC00](v124);
  v117 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v97 - v15;
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v105 = &v97 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v97 - v29;
  v107 = 0;
  v31 = 0;
  v114 = a1;
  v34 = *(a1 + 64);
  v33 = a1 + 64;
  v32 = v34;
  v35 = 1 << *(v33 - 32);
  v127 = MEMORY[0x1E69E7CD0];
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v32;
  v38 = (v35 + 63) >> 6;
  v111 = (v17 + 16);
  v113 = (v17 + 32);
  v122 = &v97 - v29;
  v123 = 0x80000001D1EB3040;
  v115 = v38;
  v116 = (v17 + 8);
  v119 = v17;
  v120 = v27;
  v108 = v33;
  v118 = v16;
  for (i = v20; v37; v38 = v115)
  {
    v39 = v31;
LABEL_14:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v42 | (v39 << 6);
    v44 = v114;
    (*(v17 + 16))(v112, *(v114 + 48) + *(v17 + 72) * v43, v16);
    v45 = v109;
    sub_1D1D1D7E0(*(v44 + 56) + *(v110 + 72) * v43, v109, type metadata accessor for StaticService);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v47 = *(v46 + 48);
    v48 = *(v17 + 32);
    v27 = v120;
    v49 = v16;
    v48();
    sub_1D1D26328(v45, &v27[v47], type metadata accessor for StaticService);
    (*(*(v46 - 8) + 56))(v27, 0, 1, v46);
    v20 = i;
    v30 = v122;
    v33 = v108;
LABEL_15:
    sub_1D1741A90(v27, v30, &qword_1EC643C68, &unk_1D1E764C0);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v50 - 8) + 48))(v30, 1, v50) == 1)
    {

      if (v107)
      {
        v68 = v49;
        v69 = v20;
        v70 = v97;
        (*(v119 + 56))(v97, 1, 1, v49);
        v123 = 0x80000001D1EB5D20;
        v122 = static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC57B0);
        v72 = v71;
        static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EC8820);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1D1E739C0;
        v74 = *(v127 + 16);
        v75 = MEMORY[0x1E69E65A8];
        *(v73 + 56) = MEMORY[0x1E69E6530];
        *(v73 + 64) = v75;
        *(v73 + 32) = v74;
        v76 = sub_1D1E6783C();
        v78 = v77;

        v79 = v119;

        v80 = v98;
        sub_1D1741C08(v70, v98, &qword_1EC642590, qword_1D1E71260);
        v81 = *(v79 + 48);
        if (v81(v80, 1, v68) == 1)
        {
          sub_1D1E66A6C();
          sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
          v82 = v81(v80, 1, v68);
          v83 = v104;
          v84 = v102;
          v85 = v101;
          if (v82 != 1)
          {
            sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
          (*v113)(v69, v80, v68);
          v83 = v104;
          v84 = v102;
          v85 = v101;
        }

        v87 = v99;
        (*v113)(v99, v69, v68);
        v88 = v100;
        v89 = (v87 + *(v100 + 20));
        v90 = v123;
        *v89 = 0xD000000000000012;
        v89[1] = v90;
        v91 = (v87 + v88[6]);
        *v91 = v122;
        v91[1] = v72;
        v92 = (v87 + v88[7]);
        *v92 = v76;
        v92[1] = v78;
        v93 = v87 + v88[8];
        *v93 = 0;
        *(v93 + 8) = 0;
        *(v93 + 16) = 0;
        *(v93 + 24) = -1;
        v94 = sub_1D1D26328(v87, v85, type metadata accessor for IconTextValueStringDataHolder);
        MEMORY[0x1EEE9AC00](v94);
        *(&v97 - 2) = &v127;
        v126 = v124;
        sub_1D1E66C8C();
        swift_storeEnumTagMultiPayload();
        sub_1D1D26328(v84, v83, type metadata accessor for TilesFilter);
        v95 = type metadata accessor for ClosedGarageDoorStatusItem(0);
        v96 = v106;
        *(v106 + v95[6]) = 4;
        *(v96 + v95[7]) = 3;
        sub_1D1D26328(v85, v96, type metadata accessor for IconTextValueStringDataHolder);
        sub_1D1D26328(v83, v96 + v95[5], type metadata accessor for TilesFilter);

        return (*(*(v95 - 1) + 56))(v96, 0, 1, v95);
      }

      else
      {

        v86 = type metadata accessor for ClosedGarageDoorStatusItem(0);
        return (*(*(v86 - 8) + 56))(v106, 1, 1, v86);
      }
    }

    v51 = v117;
    sub_1D1D26328(&v30[*(v50 + 48)], v117, type metadata accessor for StaticService);
    v52 = v124[26];
    v53 = *(v51 + v52);
    if (v53 == 11 && *(v51 + v124[28]) != 53)
    {
      LOBYTE(v126) = *(v51 + v124[28]);
      v125 = 19;
      v54 = ServiceKind.rawValue.getter();
      v56 = v55;
      if (v54 == ServiceKind.rawValue.getter() && v56 == v57)
      {
      }

      else
      {
        v59 = sub_1D1E6904C();

        if ((v59 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v126 = *(v51 + v124[32]);
      v125 = 28;
      v128 = StaticCharacteristicsBag.int(for:)(&v125);
      if (!v128.is_nil && !v128.value)
      {
        v107 = 1;
        v17 = v119;
        v27 = v120;
LABEL_39:
        v64 = v105;
        v16 = v118;
        (*v111)(v105, v51, v118);
        v65 = v112;
        sub_1D1762CB8(v112, v64);
        v66 = *v116;
        (*v116)(v65, v16);
        v67 = v66;
        sub_1D1D1D890(v51, type metadata accessor for StaticService);
        v30 = v122;
        result = (v67)(v122, v16);
        goto LABEL_36;
      }
    }

LABEL_25:
    LOBYTE(v126) = v53;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v123 == v60)
    {

      v17 = v119;
      v27 = v120;
      v30 = v122;
    }

    else
    {
      v61 = sub_1D1E6904C();

      v17 = v119;
      v27 = v120;
      v30 = v122;
      if ((v61 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v126) = *(v51 + v52);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v123 == v62)
    {
    }

    else
    {
      v63 = sub_1D1E6904C();

      if ((v63 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v126 = *(v51 + v124[32]);
    v125 = 31;
    v129 = StaticCharacteristicsBag.int(for:)(&v125);
    if (!v129.is_nil && v129.value == 1)
    {
      goto LABEL_39;
    }

LABEL_35:
    sub_1D1D1D890(v51, type metadata accessor for StaticService);
    v16 = v118;
    result = (*v116)(v30, v118);
LABEL_36:
    v20 = i;
  }

  if (v38 <= v31 + 1)
  {
    v40 = v31 + 1;
  }

  else
  {
    v40 = v38;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v39 >= v38)
    {
      v49 = v16;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      (*(*(v58 - 8) + 56))(v27, 1, 1, v58);
      v37 = 0;
      v31 = v41;
      goto LABEL_15;
    }

    v37 = *(v33 + 8 * v39);
    ++v31;
    if (v37)
    {
      v31 = v39;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D09F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v103 = type metadata accessor for TilesFilter(0);
  v3 = MEMORY[0x1EEE9AC00](v103);
  v104 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v102 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v97 - v9;
  v100 = type metadata accessor for IconTextValueStringDataHolder(0);
  v10 = MEMORY[0x1EEE9AC00](v100);
  v99 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v97 - v12;
  v124 = type metadata accessor for StaticService(0);
  v110 = *(v124 - 1);
  v13 = MEMORY[0x1EEE9AC00](v124);
  v117 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v97 - v15;
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v105 = &v97 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v97 - v29;
  v107 = 0;
  v31 = 0;
  v114 = a1;
  v34 = *(a1 + 64);
  v33 = a1 + 64;
  v32 = v34;
  v35 = 1 << *(v33 - 32);
  v127 = MEMORY[0x1E69E7CD0];
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v32;
  v38 = (v35 + 63) >> 6;
  v111 = (v17 + 16);
  v113 = (v17 + 32);
  v122 = &v97 - v29;
  v123 = 0x80000001D1EB2F50;
  v115 = v38;
  v116 = (v17 + 8);
  v119 = v17;
  v120 = v27;
  v108 = v33;
  v118 = v16;
  for (i = v20; v37; v38 = v115)
  {
    v39 = v31;
LABEL_14:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v42 | (v39 << 6);
    v44 = v114;
    (*(v17 + 16))(v112, *(v114 + 48) + *(v17 + 72) * v43, v16);
    v45 = v109;
    sub_1D1D1D7E0(*(v44 + 56) + *(v110 + 72) * v43, v109, type metadata accessor for StaticService);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v47 = *(v46 + 48);
    v48 = *(v17 + 32);
    v27 = v120;
    v49 = v16;
    v48();
    sub_1D1D26328(v45, &v27[v47], type metadata accessor for StaticService);
    (*(*(v46 - 8) + 56))(v27, 0, 1, v46);
    v20 = i;
    v30 = v122;
    v33 = v108;
LABEL_15:
    sub_1D1741A90(v27, v30, &qword_1EC643C68, &unk_1D1E764C0);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v50 - 8) + 48))(v30, 1, v50) == 1)
    {

      if (v107)
      {
        v68 = v49;
        v69 = v20;
        v70 = v97;
        (*(v119 + 56))(v97, 1, 1, v49);
        v123 = 0x80000001D1EB5C70;
        v122 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC56D0);
        v72 = v71;
        static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC87F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1D1E739C0;
        v74 = *(v127 + 16);
        v75 = MEMORY[0x1E69E65A8];
        *(v73 + 56) = MEMORY[0x1E69E6530];
        *(v73 + 64) = v75;
        *(v73 + 32) = v74;
        v76 = sub_1D1E6783C();
        v78 = v77;

        v79 = v119;

        v80 = v98;
        sub_1D1741C08(v70, v98, &qword_1EC642590, qword_1D1E71260);
        v81 = *(v79 + 48);
        if (v81(v80, 1, v68) == 1)
        {
          sub_1D1E66A6C();
          sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
          v82 = v81(v80, 1, v68);
          v83 = v104;
          v84 = v102;
          v85 = v101;
          if (v82 != 1)
          {
            sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
          (*v113)(v69, v80, v68);
          v83 = v104;
          v84 = v102;
          v85 = v101;
        }

        v87 = v99;
        (*v113)(v99, v69, v68);
        v88 = v100;
        v89 = (v87 + *(v100 + 20));
        v90 = v123;
        *v89 = 0xD000000000000016;
        v89[1] = v90;
        v91 = (v87 + v88[6]);
        *v91 = v122;
        v91[1] = v72;
        v92 = (v87 + v88[7]);
        *v92 = v76;
        v92[1] = v78;
        v93 = v87 + v88[8];
        *v93 = 0;
        *(v93 + 8) = 0;
        *(v93 + 16) = 0;
        *(v93 + 24) = -1;
        v94 = sub_1D1D26328(v87, v85, type metadata accessor for IconTextValueStringDataHolder);
        MEMORY[0x1EEE9AC00](v94);
        *(&v97 - 2) = &v127;
        v126 = v124;
        sub_1D1E66C8C();
        swift_storeEnumTagMultiPayload();
        sub_1D1D26328(v84, v83, type metadata accessor for TilesFilter);
        v95 = type metadata accessor for ClosedDoorStatusItem(0);
        v96 = v106;
        *(v106 + v95[6]) = 4;
        *(v96 + v95[7]) = 3;
        sub_1D1D26328(v85, v96, type metadata accessor for IconTextValueStringDataHolder);
        sub_1D1D26328(v83, v96 + v95[5], type metadata accessor for TilesFilter);

        return (*(*(v95 - 1) + 56))(v96, 0, 1, v95);
      }

      else
      {

        v86 = type metadata accessor for ClosedDoorStatusItem(0);
        return (*(*(v86 - 8) + 56))(v106, 1, 1, v86);
      }
    }

    v51 = v117;
    sub_1D1D26328(&v30[*(v50 + 48)], v117, type metadata accessor for StaticService);
    v52 = v124[26];
    v53 = *(v51 + v52);
    if (v53 == 11 && *(v51 + v124[28]) != 53)
    {
      LOBYTE(v126) = *(v51 + v124[28]);
      v125 = 14;
      v54 = ServiceKind.rawValue.getter();
      v56 = v55;
      if (v54 == ServiceKind.rawValue.getter() && v56 == v57)
      {
      }

      else
      {
        v59 = sub_1D1E6904C();

        if ((v59 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v126 = *(v51 + v124[32]);
      v125 = 28;
      v128 = StaticCharacteristicsBag.int(for:)(&v125);
      if (!v128.is_nil && !v128.value)
      {
        v107 = 1;
        v17 = v119;
        v27 = v120;
LABEL_39:
        v64 = v105;
        v16 = v118;
        (*v111)(v105, v51, v118);
        v65 = v112;
        sub_1D1762CB8(v112, v64);
        v66 = *v116;
        (*v116)(v65, v16);
        v67 = v66;
        sub_1D1D1D890(v51, type metadata accessor for StaticService);
        v30 = v122;
        result = (v67)(v122, v16);
        goto LABEL_36;
      }
    }

LABEL_25:
    LOBYTE(v126) = v53;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v123 == v60)
    {

      v17 = v119;
      v27 = v120;
      v30 = v122;
    }

    else
    {
      v61 = sub_1D1E6904C();

      v17 = v119;
      v27 = v120;
      v30 = v122;
      if ((v61 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v126) = *(v51 + v52);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v123 == v62)
    {
    }

    else
    {
      v63 = sub_1D1E6904C();

      if ((v63 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v126 = *(v51 + v124[32]);
    v125 = 40;
    v129 = StaticCharacteristicsBag.int(for:)(&v125);
    if (!v129.is_nil && v129.value < 1)
    {
      goto LABEL_39;
    }

LABEL_35:
    sub_1D1D1D890(v51, type metadata accessor for StaticService);
    v16 = v118;
    result = (*v116)(v30, v118);
LABEL_36:
    v20 = i;
  }

  if (v38 <= v31 + 1)
  {
    v40 = v31 + 1;
  }

  else
  {
    v40 = v38;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v39 >= v38)
    {
      v49 = v16;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      (*(*(v58 - 8) + 56))(v27, 1, 1, v58);
      v37 = 0;
      v31 = v41;
      goto LABEL_15;
    }

    v37 = *(v33 + 8 * v39);
    ++v31;
    if (v37)
    {
      v31 = v39;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D0AC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v103 = type metadata accessor for TilesFilter(0);
  v3 = MEMORY[0x1EEE9AC00](v103);
  v104 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v102 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v97 - v9;
  v100 = type metadata accessor for IconTextValueStringDataHolder(0);
  v10 = MEMORY[0x1EEE9AC00](v100);
  v99 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v97 - v12;
  v124 = type metadata accessor for StaticService(0);
  v110 = *(v124 - 1);
  v13 = MEMORY[0x1EEE9AC00](v124);
  v117 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v97 - v15;
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v105 = &v97 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v97 - v29;
  v107 = 0;
  v31 = 0;
  v114 = a1;
  v34 = *(a1 + 64);
  v33 = a1 + 64;
  v32 = v34;
  v35 = 1 << *(v33 - 32);
  v127 = MEMORY[0x1E69E7CD0];
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v32;
  v38 = (v35 + 63) >> 6;
  v111 = (v17 + 16);
  v113 = (v17 + 32);
  v122 = &v97 - v29;
  v123 = 0x80000001D1EB3640;
  v115 = v38;
  v116 = (v17 + 8);
  v119 = v17;
  v120 = v27;
  v108 = v33;
  v118 = v16;
  for (i = v20; v37; v38 = v115)
  {
    v39 = v31;
LABEL_14:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v42 | (v39 << 6);
    v44 = v114;
    (*(v17 + 16))(v112, *(v114 + 48) + *(v17 + 72) * v43, v16);
    v45 = v109;
    sub_1D1D1D7E0(*(v44 + 56) + *(v110 + 72) * v43, v109, type metadata accessor for StaticService);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v47 = *(v46 + 48);
    v48 = *(v17 + 32);
    v27 = v120;
    v49 = v16;
    v48();
    sub_1D1D26328(v45, &v27[v47], type metadata accessor for StaticService);
    (*(*(v46 - 8) + 56))(v27, 0, 1, v46);
    v20 = i;
    v30 = v122;
    v33 = v108;
LABEL_15:
    sub_1D1741A90(v27, v30, &qword_1EC643C68, &unk_1D1E764C0);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v50 - 8) + 48))(v30, 1, v50) == 1)
    {

      if (v107)
      {
        v68 = v49;
        v69 = v20;
        v70 = v97;
        (*(v119 + 56))(v97, 1, 1, v49);
        v123 = 0x80000001D1EB6480;
        v122 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EC55E0);
        v72 = v71;
        static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC87C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1D1E739C0;
        v74 = *(v127 + 16);
        v75 = MEMORY[0x1E69E65A8];
        *(v73 + 56) = MEMORY[0x1E69E6530];
        *(v73 + 64) = v75;
        *(v73 + 32) = v74;
        v76 = sub_1D1E6783C();
        v78 = v77;

        v79 = v119;

        v80 = v98;
        sub_1D1741C08(v70, v98, &qword_1EC642590, qword_1D1E71260);
        v81 = *(v79 + 48);
        if (v81(v80, 1, v68) == 1)
        {
          sub_1D1E66A6C();
          sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
          v82 = v81(v80, 1, v68);
          v83 = v104;
          v84 = v102;
          v85 = v101;
          if (v82 != 1)
          {
            sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
          (*v113)(v69, v80, v68);
          v83 = v104;
          v84 = v102;
          v85 = v101;
        }

        v87 = v99;
        (*v113)(v99, v69, v68);
        v88 = v100;
        v89 = (v87 + *(v100 + 20));
        v90 = v123;
        *v89 = 0xD000000000000016;
        v89[1] = v90;
        v91 = (v87 + v88[6]);
        *v91 = v122;
        v91[1] = v72;
        v92 = (v87 + v88[7]);
        *v92 = v76;
        v92[1] = v78;
        v93 = v87 + v88[8];
        *v93 = 0;
        *(v93 + 8) = 0;
        *(v93 + 16) = 0;
        *(v93 + 24) = -1;
        v94 = sub_1D1D26328(v87, v85, type metadata accessor for IconTextValueStringDataHolder);
        MEMORY[0x1EEE9AC00](v94);
        *(&v97 - 2) = &v127;
        v126 = v124;
        sub_1D1E66C8C();
        swift_storeEnumTagMultiPayload();
        sub_1D1D26328(v84, v83, type metadata accessor for TilesFilter);
        v95 = type metadata accessor for ClosedWindowStatusItem(0);
        v96 = v106;
        *(v106 + v95[6]) = 4;
        *(v96 + v95[7]) = 3;
        sub_1D1D26328(v85, v96, type metadata accessor for IconTextValueStringDataHolder);
        sub_1D1D26328(v83, v96 + v95[5], type metadata accessor for TilesFilter);

        return (*(*(v95 - 1) + 56))(v96, 0, 1, v95);
      }

      else
      {

        v86 = type metadata accessor for ClosedWindowStatusItem(0);
        return (*(*(v86 - 8) + 56))(v106, 1, 1, v86);
      }
    }

    v51 = v117;
    sub_1D1D26328(&v30[*(v50 + 48)], v117, type metadata accessor for StaticService);
    v52 = v124[26];
    v53 = *(v51 + v52);
    if (v53 == 11 && *(v51 + v124[28]) != 53)
    {
      LOBYTE(v126) = *(v51 + v124[28]);
      v125 = 51;
      v54 = ServiceKind.rawValue.getter();
      v56 = v55;
      if (v54 == ServiceKind.rawValue.getter() && v56 == v57)
      {
      }

      else
      {
        v59 = sub_1D1E6904C();

        if ((v59 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v126 = *(v51 + v124[32]);
      v125 = 28;
      v128 = StaticCharacteristicsBag.int(for:)(&v125);
      if (!v128.is_nil && !v128.value)
      {
        v107 = 1;
        v17 = v119;
        v27 = v120;
LABEL_39:
        v64 = v105;
        v16 = v118;
        (*v111)(v105, v51, v118);
        v65 = v112;
        sub_1D1762CB8(v112, v64);
        v66 = *v116;
        (*v116)(v65, v16);
        v67 = v66;
        sub_1D1D1D890(v51, type metadata accessor for StaticService);
        v30 = v122;
        result = (v67)(v122, v16);
        goto LABEL_36;
      }
    }

LABEL_25:
    LOBYTE(v126) = v53;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v123 == v60)
    {

      v17 = v119;
      v27 = v120;
      v30 = v122;
    }

    else
    {
      v61 = sub_1D1E6904C();

      v17 = v119;
      v27 = v120;
      v30 = v122;
      if ((v61 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v126) = *(v51 + v52);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v123 == v62)
    {
    }

    else
    {
      v63 = sub_1D1E6904C();

      if ((v63 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v126 = *(v51 + v124[32]);
    v125 = 40;
    v129 = StaticCharacteristicsBag.int(for:)(&v125);
    if (!v129.is_nil && v129.value < 1)
    {
      goto LABEL_39;
    }

LABEL_35:
    sub_1D1D1D890(v51, type metadata accessor for StaticService);
    v16 = v118;
    result = (*v116)(v30, v118);
LABEL_36:
    v20 = i;
  }

  if (v38 <= v31 + 1)
  {
    v40 = v31 + 1;
  }

  else
  {
    v40 = v38;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v39 >= v38)
    {
      v49 = v16;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      (*(*(v58 - 8) + 56))(v27, 1, 1, v58);
      v37 = 0;
      v31 = v41;
      goto LABEL_15;
    }

    v37 = *(v33 + 8 * v39);
    ++v31;
    if (v37)
    {
      v31 = v39;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticRoom.room.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D0BAE0, 0, 0);
}

uint64_t sub_1D1D0BAE0()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[11] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1D0BBD0;
    v4 = 0;
  }

  else
  {
    v0[13] = sub_1D1E67E1C();
    v0[14] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1D0C2BC;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1D0BBD0()
{
  v50 = v0;
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v49 = sub_1D1749970(v4);
    sub_1D1747DDC(&v49);

    v5 = v49;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v0[9];
  v7 = v0[6];
  v45 = v0;
  v8 = v0[5];
  v9 = *(v0[7] + 16);
  v9(v0[10], v8, v7);
  v9(v6, v8, v7);
  v41 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_37:
    v47 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = sub_1D1E6873C();
  }

  else
  {
    v47 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v11 = v45;
  v40 = v5 + 32;
  v43 = v5 & 0xC000000000000001;
  v44 = (v45[7] + 8);
  v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v42 = v5;
  while (1)
  {
    if (v46 == v10)
    {
      v10 = v46;
LABEL_19:
      if (!v41)
      {
        goto LABEL_20;
      }

LABEL_27:
      if (v10 == sub_1D1E6873C())
      {
        goto LABEL_28;
      }

LABEL_21:
      if (v43)
      {
        v25 = MEMORY[0x1D3891EF0](v10, v5);
      }

      else
      {
        if (v10 >= *(v47 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v25 = *(v40 + 8 * v10);
      }

      v10 = v25;
      v26 = v11[10];
      v27 = [v25 rooms];
      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v0 = v11;
      v28 = sub_1D1E67C1C();

      v29 = swift_task_alloc();
      *(v29 + 16) = v26;
      v30 = sub_1D174A6C4(sub_1D1778988, v29, v28);

      if (v30)
      {
        v12 = *v44;
        (*v44)(v11[10], v11[6]);

        goto LABEL_32;
      }

      v31 = v11[8];
      v48 = v11[6];
      v32 = [v10 roomForEntireHome];
      v33 = [v32 uniqueIdentifier];

      sub_1D1E66A5C();
      LOBYTE(v32) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v12 = *v44;
      (*v44)(v31, v48);
      v8 = v0[10];
      if (v32)
      {
        v34 = v0[6];
        v30 = [v10 &selRef_description + 7];
        (v12)(v8, v34);

        if (v30)
        {

          v11 = v45;
          goto LABEL_32;
        }

LABEL_41:
        v35 = (v12)(v45[9], v45[6]);
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v35, v36, v37);
      }

LABEL_40:
      v38 = v0[6];
      (v12)(v0[9], v38);
      (v12)(v8, v38);

      __break(1u);
      goto LABEL_41;
    }

    if (v43)
    {
      v14 = MEMORY[0x1D3891EF0](v10, v5);
    }

    else
    {
      if (v10 >= *(v47 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v14 = *(v5 + 8 * v10 + 32);
    }

    v0 = v14;
    v15 = v11[9];
    v16 = [v14 rooms];
    sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
    v17 = sub_1D1E67C1C();

    v18 = swift_task_alloc();
    *(v18 + 16) = v15;
    v19 = sub_1D174A6C4(sub_1D1749C64, v18, v17);

    if (v19)
    {
      break;
    }

    v20 = v11[8];
    v21 = v11[6];
    v22 = [v0 roomForEntireHome];
    v23 = [v22 uniqueIdentifier];

    v8 = v44;
    sub_1D1E66A5C();

    LOBYTE(v23) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    (*v44)(v20, v21);
    if (v23)
    {
      v24 = [v0 roomForEntireHome];

      v5 = v42;
      v11 = v45;
      if (v24)
      {
        goto LABEL_19;
      }
    }

    else
    {

      v5 = v42;
      v11 = v45;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_36;
    }
  }

  v5 = v42;
  if (v41)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (v10 != *(v47 + 16))
  {
    goto LABEL_21;
  }

LABEL_28:
  v12 = *v44;
  (*v44)(v11[10], v11[6]);

  v30 = 0;
LABEL_32:
  v11[12] = v30;
  (v12)(v11[9], v11[6]);
  v35 = sub_1D1D0C230;
  v36 = 0;
  v37 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1D1D0C230()
{

  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1D0C2BC()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1D0C354, 0, 0);
}

uint64_t sub_1D1D0C354(uint64_t a1)
{
  *(v1 + 120) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D0C3E0, v3, v2);
}

uint64_t sub_1D1D0C3E0()
{

  *(v0 + 128) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1D0C454, 0, 0);
}

uint64_t sub_1D1D0C454(uint64_t a1)
{
  *(v1 + 136) = sub_1D1E66A2C();
  *(v1 + 144) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D0C4EC, v3, v2);
}

uint64_t sub_1D1D0C4EC()
{
  v1 = v0[17];
  v2 = v0[16];

  v3 = [v2 roomFor_];

  v4 = v0[1];

  return v4(v3);
}

uint64_t StaticRoom.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 20));

  return v1;
}

uint64_t sub_1D1D0C624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v57 = a1;
  v24 = sub_1D18E4158(a1, a3);
  v26 = v25;
  v58 = a2;
  v27 = sub_1D18E4158(a2, a3);
  if (v26)
  {
    if ((v28 & 1) == 0)
    {
      v29 = 0;
      return v29 & 1;
    }
  }

  else
  {
    if (v28)
    {
      v29 = 1;
      return v29 & 1;
    }

    if (v24 != v27)
    {
      v29 = v24 < v27;
      return v29 & 1;
    }
  }

  v31 = v59;
  v30 = v60;
  v32 = *(v59 + 56);
  v32(v23, 1, 1, v60);
  v32(v21, 1, 1, v30);
  v33 = *(v10 + 48);
  sub_1D1741A90(v23, v12, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v21, &v12[v33], &qword_1EC642570, &qword_1D1E6C6A0);
  v34 = *(v31 + 48);
  if (v34(v12, 1, v30) == 1)
  {
    if (v34(&v12[v33], 1, v30) != 1)
    {
      sub_1D1741A30(&v12[v33], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v12, &qword_1EC642570, &qword_1D1E6C6A0);
      v29 = 0;
      return v29 & 1;
    }
  }

  else
  {
    sub_1D1741C08(v12, v18, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v34(&v12[v33], 1, v30) == 1)
    {
      (*(v31 + 8))(v18, v30);
      sub_1D1741A30(&v12[v33], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v12, &qword_1EC642570, &qword_1D1E6C6A0);
      v29 = 1;
      return v29 & 1;
    }

    v35 = v54;
    sub_1D1741C08(&v12[v33], v54, &qword_1EC642570, &qword_1D1E6C6A0);
    v36 = *(v31 + 32);
    v37 = v56;
    v36(v56, v18, v30);
    v38 = v55;
    v36(v55, v35, v30);
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v29 = sub_1D1E6696C();
      v51 = *(v31 + 8);
      v51(v38, v30);
      v51(v37, v30);
      sub_1D1741A30(&v12[v33], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v12, &qword_1EC642570, &qword_1D1E6C6A0);
      return v29 & 1;
    }

    v39 = *(v31 + 8);
    v39(v38, v30);
    v39(v37, v30);
  }

  sub_1D1741A30(v12, &qword_1EC642AC0, &qword_1D1E6E810);
  v40 = *(type metadata accessor for StaticCameraProfile(0) + 20);
  v41 = (v57 + v40);
  v42 = *(v57 + v40);
  v43 = *(v57 + v40 + 8);
  v44 = (v58 + v40);
  v45 = *v44;
  v46 = v44[1];
  if (*v41 == *v44 && v43 == v46 || (sub_1D1E6904C() & 1) != 0)
  {
    v47 = sub_1D1E66A1C();
    v49 = v48;
    if (v47 == sub_1D1E66A1C() && v49 == v50)
    {

      v29 = 0;
    }

    else
    {
      v29 = sub_1D1E6904C();
    }
  }

  else
  {
    v63 = v42;
    v64 = v43;
    v61 = v45;
    v62 = v46;
    sub_1D17D8EF0();
    v29 = sub_1D1E685FC() == -1;
  }

  return v29 & 1;
}

uint64_t sub_1D1D0CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v69 = &v65 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v65 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v65 - v20;
  v22 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v25 = sub_1D18E4158(a1, a3);
  v27 = v26;
  v28 = sub_1D18E4158(a2, a3);
  if (v27)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v29)
    {
      goto LABEL_16;
    }

    v30 = v25 < v28;
    if (v25 != v28)
    {
      goto LABEL_21;
    }
  }

  v66 = a2;
  sub_1D1D1D7E0(a2, v24, type metadata accessor for StaticActionSet);
  if (*(v74 + *(v22 + 24)) == 7)
  {
    v31 = 4;
  }

  else
  {
    v31 = *(v74 + *(v22 + 24));
  }

  v32 = sub_1D18E4248(v31, &unk_1F4D5EDD8);
  v34 = v33;
  if (v24[*(v22 + 24)] == 7)
  {
    v35 = 4;
  }

  else
  {
    v35 = v24[*(v22 + 24)];
  }

  v36 = sub_1D18E4248(v35, &unk_1F4D5EDD8);
  v38 = v37;
  sub_1D1D1D890(v24, type metadata accessor for StaticActionSet);
  if (v34)
  {
    if ((v38 & 1) == 0)
    {
LABEL_14:
      v39 = 0;
      return v39 & 1;
    }

    goto LABEL_18;
  }

  if (v38)
  {
LABEL_16:
    v39 = 1;
    return v39 & 1;
  }

  v30 = v32 < v36;
  if (v32 != v36)
  {
LABEL_21:
    v39 = v30;
    return v39 & 1;
  }

LABEL_18:
  v41 = v71;
  v40 = v72;
  v42 = *(v71 + 56);
  v42(v21, 1, 1, v72);
  v42(v19, 1, 1, v40);
  v43 = *(v10 + 48);
  v44 = v21;
  v45 = v73;
  sub_1D1741A90(v44, v73, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v19, v45 + v43, &qword_1EC642570, &qword_1D1E6C6A0);
  v46 = *(v41 + 48);
  if (v46(v45, 1, v40) == 1)
  {
    if (v46(v45 + v43, 1, v40) != 1)
    {
      sub_1D1741A30(v45 + v43, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v45, &qword_1EC642570, &qword_1D1E6C6A0);
      v39 = 0;
      return v39 & 1;
    }
  }

  else
  {
    v48 = v69;
    sub_1D1741C08(v45, v69, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v46(v45 + v43, 1, v40) == 1)
    {
      (*(v41 + 8))(v48, v40);
      sub_1D1741A30(v45 + v43, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v45, &qword_1EC642570, &qword_1D1E6C6A0);
      v39 = 1;
      return v39 & 1;
    }

    sub_1D1741C08(v45 + v43, v70, &qword_1EC642570, &qword_1D1E6C6A0);
    v49 = *(v41 + 32);
    v50 = v68;
    v49(v68, v48, v40);
    v51 = v67;
    v49(v67, v70, v40);
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v39 = sub_1D1E6696C();
      v64 = *(v41 + 8);
      v64(v51, v40);
      v64(v50, v40);
      sub_1D1741A30(v45 + v43, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v45, &qword_1EC642570, &qword_1D1E6C6A0);
      return v39 & 1;
    }

    v52 = *(v41 + 8);
    v52(v51, v40);
    v52(v50, v40);
  }

  sub_1D1741A30(v45, &qword_1EC642AC0, &qword_1D1E6E810);
  v53 = *(v22 + 20);
  v54 = (v74 + v53);
  v55 = *(v74 + v53);
  v56 = *(v74 + v53 + 8);
  v57 = (v66 + v53);
  v58 = *v57;
  v59 = v57[1];
  if (*v54 == *v57 && v56 == v59 || (sub_1D1E6904C() & 1) != 0)
  {
    v60 = sub_1D1E66A1C();
    v62 = v61;
    if (v60 == sub_1D1E66A1C() && v62 == v63)
    {

      v39 = 0;
    }

    else
    {
      v39 = sub_1D1E6904C();
    }
  }

  else
  {
    v77 = v55;
    v78 = v56;
    v75 = v58;
    v76 = v59;
    sub_1D17D8EF0();
    v39 = sub_1D1E685FC() == -1;
  }

  return v39 & 1;
}

uint64_t sub_1D1D0D3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v18 = a1;
  v19 = sub_1D18E4158(a1, a3);
  v21 = v20;
  v22 = a2;
  v23 = sub_1D18E4158(a2, a3);
  if (v21)
  {
    if ((v24 & 1) == 0)
    {
      v25 = 0;
      return v25 & 1;
    }
  }

  else
  {
    if (v24)
    {
      v25 = 1;
      return v25 & 1;
    }

    if (v19 != v23)
    {
      v25 = v19 < v23;
      return v25 & 1;
    }
  }

  v54 = type metadata accessor for StaticService(0);
  v26 = *(v54 + 56);
  v27 = *(v15 + 48);
  v28 = v18;
  sub_1D1741C08(v18 + v26, v17, &qword_1EC642570, &qword_1D1E6C6A0);
  v29 = v22 + v26;
  v30 = v22;
  sub_1D1741C08(v29, &v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
  v32 = v58;
  v31 = v59;
  v33 = *(v58 + 48);
  if (v33(v17, 1, v59) == 1)
  {
    if (v33(&v17[v27], 1, v31) != 1)
    {
      sub_1D1741A30(&v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      v25 = 0;
      return v25 & 1;
    }
  }

  else
  {
    sub_1D1741C08(v17, v14, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v33(&v17[v27], 1, v31) == 1)
    {
      (*(v32 + 8))(v14, v31);
      sub_1D1741A30(&v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      v25 = 1;
      return v25 & 1;
    }

    v52 = v28;
    v53 = v30;
    v34 = v55;
    sub_1D1741C08(&v17[v27], v55, &qword_1EC642570, &qword_1D1E6C6A0);
    v35 = *(v32 + 32);
    v36 = v57;
    v35(v57, v14, v31);
    v37 = v56;
    v35(v56, v34, v31);
    v38 = v37;
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v25 = sub_1D1E6696C();
      v50 = *(v32 + 8);
      v50(v38, v31);
      v50(v36, v31);
      sub_1D1741A30(&v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      return v25 & 1;
    }

    v39 = *(v32 + 8);
    v39(v37, v31);
    v39(v36, v31);
    v28 = v52;
    v30 = v53;
  }

  sub_1D1741A30(v17, &qword_1EC642AC0, &qword_1D1E6E810);
  v40 = *(v54 + 20);
  v41 = *(v28 + v40);
  v42 = *(v28 + v40 + 8);
  v43 = (v30 + v40);
  v44 = *v43;
  v45 = v43[1];
  if (v41 == *v43 && v42 == v45 || (sub_1D1E6904C() & 1) != 0)
  {
    v46 = sub_1D1E66A1C();
    v48 = v47;
    if (v46 == sub_1D1E66A1C() && v48 == v49)
    {

      v25 = 0;
    }

    else
    {
      v25 = sub_1D1E6904C();
    }
  }

  else
  {
    v62 = v41;
    v63 = v42;
    v60 = v44;
    v61 = v45;
    sub_1D17D8EF0();
    v25 = sub_1D1E685FC() == -1;
  }

  return v25 & 1;
}

uint64_t sub_1D1D0D970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v18 = a1;
  v19 = sub_1D18E4158(a1, a3);
  v21 = v20;
  v22 = a2;
  v23 = sub_1D18E4158(a2, a3);
  if (v21)
  {
    if ((v24 & 1) == 0)
    {
      v25 = 0;
      return v25 & 1;
    }
  }

  else
  {
    if (v24)
    {
      v25 = 1;
      return v25 & 1;
    }

    if (v19 != v23)
    {
      v25 = v19 < v23;
      return v25 & 1;
    }
  }

  v54 = type metadata accessor for StaticHome(0);
  v26 = *(v54 + 24);
  v27 = *(v15 + 48);
  v28 = v18;
  sub_1D1741C08(v18 + v26, v17, &qword_1EC642570, &qword_1D1E6C6A0);
  v29 = v22 + v26;
  v30 = v22;
  sub_1D1741C08(v29, &v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
  v32 = v58;
  v31 = v59;
  v33 = *(v58 + 48);
  if (v33(v17, 1, v59) == 1)
  {
    if (v33(&v17[v27], 1, v31) != 1)
    {
      sub_1D1741A30(&v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      v25 = 0;
      return v25 & 1;
    }
  }

  else
  {
    sub_1D1741C08(v17, v14, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v33(&v17[v27], 1, v31) == 1)
    {
      (*(v32 + 8))(v14, v31);
      sub_1D1741A30(&v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      v25 = 1;
      return v25 & 1;
    }

    v52 = v28;
    v53 = v30;
    v34 = v55;
    sub_1D1741C08(&v17[v27], v55, &qword_1EC642570, &qword_1D1E6C6A0);
    v35 = *(v32 + 32);
    v36 = v57;
    v35(v57, v14, v31);
    v37 = v56;
    v35(v56, v34, v31);
    v38 = v37;
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v25 = sub_1D1E6696C();
      v50 = *(v32 + 8);
      v50(v38, v31);
      v50(v36, v31);
      sub_1D1741A30(&v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      return v25 & 1;
    }

    v39 = *(v32 + 8);
    v39(v37, v31);
    v39(v36, v31);
    v28 = v52;
    v30 = v53;
  }

  sub_1D1741A30(v17, &qword_1EC642AC0, &qword_1D1E6E810);
  v40 = *(v54 + 20);
  v41 = *(v28 + v40);
  v42 = *(v28 + v40 + 8);
  v43 = (v30 + v40);
  v44 = *v43;
  v45 = v43[1];
  if (v41 == *v43 && v42 == v45 || (sub_1D1E6904C() & 1) != 0)
  {
    v46 = sub_1D1E66A1C();
    v48 = v47;
    if (v46 == sub_1D1E66A1C() && v48 == v49)
    {

      v25 = 0;
    }

    else
    {
      v25 = sub_1D1E6904C();
    }
  }

  else
  {
    v62 = v41;
    v63 = v42;
    v60 = v44;
    v61 = v45;
    sub_1D17D8EF0();
    v25 = sub_1D1E685FC() == -1;
  }

  return v25 & 1;
}

uint64_t sub_1D1D0DF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v69 = &v65 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v65 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v65 - v20;
  v22 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v25 = sub_1D18E4158(a1, a3);
  v27 = v26;
  v28 = sub_1D18E4158(a2, a3);
  if (v27)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v29)
    {
      goto LABEL_16;
    }

    v30 = v25 < v28;
    if (v25 != v28)
    {
      goto LABEL_21;
    }
  }

  v66 = a2;
  sub_1D1D1D7E0(a2, v24, type metadata accessor for StaticActionSet);
  if (*(v74 + *(v22 + 24)) == 7)
  {
    v31 = 4;
  }

  else
  {
    v31 = *(v74 + *(v22 + 24));
  }

  v32 = sub_1D18E4248(v31, &unk_1F4D660C0);
  v34 = v33;
  if (v24[*(v22 + 24)] == 7)
  {
    v35 = 4;
  }

  else
  {
    v35 = v24[*(v22 + 24)];
  }

  v36 = sub_1D18E4248(v35, &unk_1F4D660C0);
  v38 = v37;
  sub_1D1D1D890(v24, type metadata accessor for StaticActionSet);
  if (v34)
  {
    if ((v38 & 1) == 0)
    {
LABEL_14:
      v39 = 0;
      return v39 & 1;
    }

    goto LABEL_18;
  }

  if (v38)
  {
LABEL_16:
    v39 = 1;
    return v39 & 1;
  }

  v30 = v32 < v36;
  if (v32 != v36)
  {
LABEL_21:
    v39 = v30;
    return v39 & 1;
  }

LABEL_18:
  v41 = v71;
  v40 = v72;
  v42 = *(v71 + 56);
  v42(v21, 1, 1, v72);
  v42(v19, 1, 1, v40);
  v43 = *(v10 + 48);
  v44 = v21;
  v45 = v73;
  sub_1D1741A90(v44, v73, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v19, v45 + v43, &qword_1EC642570, &qword_1D1E6C6A0);
  v46 = *(v41 + 48);
  if (v46(v45, 1, v40) == 1)
  {
    if (v46(v45 + v43, 1, v40) != 1)
    {
      sub_1D1741A30(v45 + v43, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v45, &qword_1EC642570, &qword_1D1E6C6A0);
      v39 = 0;
      return v39 & 1;
    }
  }

  else
  {
    v48 = v69;
    sub_1D1741C08(v45, v69, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v46(v45 + v43, 1, v40) == 1)
    {
      (*(v41 + 8))(v48, v40);
      sub_1D1741A30(v45 + v43, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v45, &qword_1EC642570, &qword_1D1E6C6A0);
      v39 = 1;
      return v39 & 1;
    }

    sub_1D1741C08(v45 + v43, v70, &qword_1EC642570, &qword_1D1E6C6A0);
    v49 = *(v41 + 32);
    v50 = v68;
    v49(v68, v48, v40);
    v51 = v67;
    v49(v67, v70, v40);
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v39 = sub_1D1E6696C();
      v64 = *(v41 + 8);
      v64(v51, v40);
      v64(v50, v40);
      sub_1D1741A30(v45 + v43, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v45, &qword_1EC642570, &qword_1D1E6C6A0);
      return v39 & 1;
    }

    v52 = *(v41 + 8);
    v52(v51, v40);
    v52(v50, v40);
  }

  sub_1D1741A30(v45, &qword_1EC642AC0, &qword_1D1E6E810);
  v53 = *(v22 + 20);
  v54 = (v74 + v53);
  v55 = *(v74 + v53);
  v56 = *(v74 + v53 + 8);
  v57 = (v66 + v53);
  v58 = *v57;
  v59 = v57[1];
  if (*v54 == *v57 && v56 == v59 || (sub_1D1E6904C() & 1) != 0)
  {
    v60 = sub_1D1E66A1C();
    v62 = v61;
    if (v60 == sub_1D1E66A1C() && v62 == v63)
    {

      v39 = 0;
    }

    else
    {
      v39 = sub_1D1E6904C();
    }
  }

  else
  {
    v77 = v55;
    v78 = v56;
    v75 = v58;
    v76 = v59;
    sub_1D17D8EF0();
    v39 = sub_1D1E685FC() == -1;
  }

  return v39 & 1;
}

uint64_t sub_1D1D0E670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v18 = a1;
  v19 = sub_1D18E4158(a1, a3);
  v21 = v20;
  v22 = a2;
  v23 = sub_1D18E4158(a2, a3);
  if (v21)
  {
    if ((v24 & 1) == 0)
    {
      v25 = 0;
      return v25 & 1;
    }
  }

  else
  {
    if (v24)
    {
      v25 = 1;
      return v25 & 1;
    }

    if (v19 != v23)
    {
      v25 = v19 < v23;
      return v25 & 1;
    }
  }

  v54 = type metadata accessor for StaticRoom(0);
  v26 = *(v54 + 24);
  v27 = *(v15 + 48);
  v28 = v18;
  sub_1D1741C08(v18 + v26, v17, &qword_1EC642570, &qword_1D1E6C6A0);
  v29 = v22 + v26;
  v30 = v22;
  sub_1D1741C08(v29, &v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
  v32 = v58;
  v31 = v59;
  v33 = *(v58 + 48);
  if (v33(v17, 1, v59) == 1)
  {
    if (v33(&v17[v27], 1, v31) != 1)
    {
      sub_1D1741A30(&v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      v25 = 0;
      return v25 & 1;
    }
  }

  else
  {
    sub_1D1741C08(v17, v14, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v33(&v17[v27], 1, v31) == 1)
    {
      (*(v32 + 8))(v14, v31);
      sub_1D1741A30(&v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      v25 = 1;
      return v25 & 1;
    }

    v52 = v28;
    v53 = v30;
    v34 = v55;
    sub_1D1741C08(&v17[v27], v55, &qword_1EC642570, &qword_1D1E6C6A0);
    v35 = *(v32 + 32);
    v36 = v57;
    v35(v57, v14, v31);
    v37 = v56;
    v35(v56, v34, v31);
    v38 = v37;
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v25 = sub_1D1E6696C();
      v50 = *(v32 + 8);
      v50(v38, v31);
      v50(v36, v31);
      sub_1D1741A30(&v17[v27], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      return v25 & 1;
    }

    v39 = *(v32 + 8);
    v39(v37, v31);
    v39(v36, v31);
    v28 = v52;
    v30 = v53;
  }

  sub_1D1741A30(v17, &qword_1EC642AC0, &qword_1D1E6E810);
  v40 = *(v54 + 20);
  v41 = *(v28 + v40);
  v42 = *(v28 + v40 + 8);
  v43 = (v30 + v40);
  v44 = *v43;
  v45 = v43[1];
  if (v41 == *v43 && v42 == v45 || (sub_1D1E6904C() & 1) != 0)
  {
    v46 = sub_1D1E66A1C();
    v48 = v47;
    if (v46 == sub_1D1E66A1C() && v48 == v49)
    {

      v25 = 0;
    }

    else
    {
      v25 = sub_1D1E6904C();
    }
  }

  else
  {
    v62 = v41;
    v63 = v42;
    v60 = v44;
    v61 = v45;
    sub_1D17D8EF0();
    v25 = sub_1D1E685FC() == -1;
  }

  return v25 & 1;
}

uint64_t sub_1D1D0EC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v57 = a1;
  v24 = sub_1D18E4158(a1, a3);
  v26 = v25;
  v58 = a2;
  v27 = sub_1D18E4158(a2, a3);
  if (v26)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v28)
    {
      v29 = 1;
      return v29 & 1;
    }

    if (v24 != v27)
    {
      v29 = v24 < v27;
      return v29 & 1;
    }
  }

  v31 = v59;
  v30 = v60;
  v32 = v59[7];
  v32(v23, 1, 1, v60);
  v32(v21, 1, 1, v30);
  v33 = *(v10 + 48);
  sub_1D1741A90(v23, v12, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v21, &v12[v33], &qword_1EC642570, &qword_1D1E6C6A0);
  v34 = v31[6];
  if (v34(v12, 1, v30) == 1)
  {
    if (v34(&v12[v33], 1, v30) != 1)
    {
      sub_1D1741A30(&v12[v33], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v12, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_21:
      v29 = 0;
      return v29 & 1;
    }

LABEL_15:
    sub_1D1741A30(v12, &qword_1EC642AC0, &qword_1D1E6E810);
    v40 = *(type metadata accessor for StaticResident(0) + 20);
    v41 = (v57 + v40);
    v42 = *(v57 + v40);
    v43 = *(v57 + v40 + 8);
    v44 = (v58 + v40);
    v45 = *v44;
    v46 = v44[1];
    if ((*v41 != *v44 || v43 != v46) && (sub_1D1E6904C() & 1) == 0)
    {
      v63 = v42;
      v64 = v43;
      v61 = v45;
      v62 = v46;
      sub_1D17D8EF0();
      v29 = sub_1D1E685FC() == -1;
      return v29 & 1;
    }

    v47 = sub_1D1E66A1C();
    v49 = v48;
    if (v47 != sub_1D1E66A1C() || v49 != v50)
    {
      v29 = sub_1D1E6904C();

      return v29 & 1;
    }

    goto LABEL_21;
  }

  sub_1D1741C08(v12, v18, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v34(&v12[v33], 1, v30) != 1)
  {
    v35 = v54;
    sub_1D1741C08(&v12[v33], v54, &qword_1EC642570, &qword_1D1E6C6A0);
    v36 = v31[4];
    v37 = v56;
    v36(v56, v18, v30);
    v38 = v55;
    v36(v55, v35, v30);
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v29 = sub_1D1E6696C();
      v52 = v31[1];
      v52(v38, v30);
      v52(v37, v30);
      sub_1D1741A30(&v12[v33], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v12, &qword_1EC642570, &qword_1D1E6C6A0);
      return v29 & 1;
    }

    v39 = v31[1];
    v39(v38, v30);
    v39(v37, v30);
    goto LABEL_15;
  }

  (v31[1])(v18, v30);
  sub_1D1741A30(&v12[v33], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v12, &qword_1EC642570, &qword_1D1E6C6A0);
  v29 = 1;
  return v29 & 1;
}

uint64_t static RoomType.orderedStaticRoomTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431F0, &unk_1D1EA26E0);
  v0 = *(type metadata accessor for RoomType(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D1E6F900;
  v4 = v3 + v2;
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 2, 4, v5);
  v6(v4 + v1, 1, 4, v5);
  v6(v4 + 2 * v1, 3, 4, v5);
  return v3;
}

uint64_t RoomType.description.getter()
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
      return 0x655373656E656373;
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
    return 0x53736172656D6163;
  }

  else if (v9 == 3)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x526E776F6E6B6E75;
  }
}

double StaticRoom.copyReplacing(id:name:dateAdded:isDefaultRoom:staticZones:homeId:staticAccessoriesDictionary:staticActionSetsDictionary:staticCameraProfilesDictionary:staticMediaSystemsDictionary:staticMediaProfilesDictionary:staticServiceGroupsDictionary:staticServicesDictionary:actionSetsSortOrder:servicesSortOrder:roomServicesSortOrderGroupedByCategory:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(void, void, void), char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v99 = a8;
  v90 = a7;
  v93 = a6;
  v94 = a2;
  v100 = a5;
  v87 = a4;
  v95 = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v98 = &v78 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v88 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v78 - v30;
  v32 = sub_1D1E66A7C();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v96 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v78 - v36;
  v38 = a1;
  v40 = v39;
  sub_1D1741C08(v38, v31, &qword_1EC642590, qword_1D1E71260);
  v41 = *(v33 + 48);
  v42 = v41(v31, 1, v40);
  v92 = v33;
  v89 = v41;
  if (v42 == 1)
  {
    v43 = v19;
    (*(v33 + 16))(v37, v19, v40);
    v44 = v37;
    if (v41(v31, 1, v40) != 1)
    {
      sub_1D1741A30(v31, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v43 = v19;
    (*(v33 + 32))(v37, v31, v40);
    v44 = v37;
  }

  v97 = v40;
  v45 = v88;
  if (v95)
  {
    v91 = v95;
  }

  else
  {
    v46 = (v43 + *(type metadata accessor for StaticRoom(0) + 20));
    v47 = v46[1];
    v94 = *v46;
    v91 = v47;
  }

  sub_1D1741C08(v87, v25, &qword_1EC642570, &qword_1D1E6C6A0);
  v48 = sub_1D1E669FC();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if (v50(v25, 1, v48) == 1)
  {
    v51 = type metadata accessor for StaticRoom(0);
    sub_1D1741C08(v43 + *(v51 + 24), v98, &qword_1EC642570, &qword_1D1E6C6A0);
    v52 = v50(v25, 1, v48);

    v54 = v92;
    v53 = v93;
    if (v52 != 1)
    {
      sub_1D1741A30(v25, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v55 = v98;
    (*(v49 + 32))(v98, v25, v48);
    (*(v49 + 56))(v55, 0, 1, v48);

    v54 = v92;
    v53 = v93;
  }

  v56 = v97;
  v57 = v89;
  if (v100 == 2)
  {
    v100 = *(v43 + *(type metadata accessor for StaticRoom(0) + 28));
  }

  v58 = v53;
  if (!v53)
  {
    v58 = *(v43 + *(type metadata accessor for StaticRoom(0) + 32));
  }

  sub_1D1741C08(v90, v45, &qword_1EC642590, qword_1D1E71260);
  if (v57(v45, 1, v56) == 1)
  {
    v59 = type metadata accessor for StaticRoom(0);
    (*(v54 + 16))(v96, v43 + *(v59 + 36), v56);
    v60 = v57(v45, 1, v56);

    if (v60 != 1)
    {
      sub_1D1741A30(v45, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v54 + 32))(v96, v45, v56);
  }

  if (v99)
  {
    v87 = v99;
    v61 = a11;
    if (a10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v87 = *(v43 + *(type metadata accessor for StaticRoom(0) + 40));

    v61 = a11;
    if (a10)
    {
LABEL_22:
      v85 = a10;
      v62 = a12;
      if (v61)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }
  }

  v85 = *(v43 + *(type metadata accessor for StaticRoom(0) + 44));

  v62 = a12;
  if (v61)
  {
LABEL_23:
    v83 = v61;
    v63 = a13;
    if (v62)
    {
      goto LABEL_24;
    }

LABEL_29:
    v82 = *(v43 + *(type metadata accessor for StaticRoom(0) + 52));

    v64 = a14;
    if (v63)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

LABEL_28:
  v83 = *(v43 + *(type metadata accessor for StaticRoom(0) + 48));

  v63 = a13;
  if (!v62)
  {
    goto LABEL_29;
  }

LABEL_24:
  v82 = v62;
  v64 = a14;
  if (v63)
  {
LABEL_25:
    v81 = v63;
    goto LABEL_31;
  }

LABEL_30:
  v81 = *(v43 + *(type metadata accessor for StaticRoom(0) + 56));

LABEL_31:
  v65 = a15;
  v95 = a15;
  if (v64)
  {
    v80 = v64;
  }

  else
  {
    v80 = *(v43 + *(type metadata accessor for StaticRoom(0) + 60));

    v65 = v95;
  }

  v66 = a16;
  v93 = a16;
  v90 = a10;
  if (v65)
  {
    v79 = v65;
  }

  else
  {
    v79 = *(v43 + *(type metadata accessor for StaticRoom(0) + 64));

    v66 = v93;
  }

  v88 = v62;
  v84 = v64;
  if (v66)
  {
    v78 = v66;
  }

  else
  {
    v78 = *(v43 + *(type metadata accessor for StaticRoom(0) + 68));
  }

  v67 = v58;
  if (a17)
  {
    v68 = a17;
  }

  else
  {
    v68 = *(v43 + *(type metadata accessor for StaticRoom(0) + 72));
  }

  v86 = v63;
  v89 = v61;
  if (a18)
  {
    v69 = a18;
  }

  else
  {
    v69 = *(v43 + *(type metadata accessor for StaticRoom(0) + 76));
  }

  v70 = *(v54 + 32);
  v71 = v97;
  v70(a9, v44, v97);
  v72 = type metadata accessor for StaticRoom(0);
  v73 = (a9 + v72[5]);
  v74 = v91;
  *v73 = v94;
  v73[1] = v74;
  sub_1D1741A90(v98, a9 + v72[6], &qword_1EC642570, &qword_1D1E6C6A0);
  *(a9 + v72[7]) = v100 & 1;
  *(a9 + v72[8]) = v67;
  v70(a9 + v72[9], v96, v71);
  *(a9 + v72[10]) = v87;
  *(a9 + v72[11]) = v85;
  v75 = v82;
  *(a9 + v72[12]) = v83;
  *(a9 + v72[13]) = v75;
  v76 = v80;
  *(a9 + v72[14]) = v81;
  *(a9 + v72[15]) = v76;
  *(a9 + v72[16]) = v79;
  *(a9 + v72[17]) = v78;
  *(a9 + v72[18]) = v68;
  *(a9 + v72[19]) = v69;

  return result;
}