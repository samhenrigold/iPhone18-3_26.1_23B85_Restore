uint64_t sub_1D69387AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6938814(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B7A5F0(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6938880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B7A5F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D69388DC(char *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    swift_beginAccess();
    v7 = *(v3 + 16);
    v8 = *(v7 + 16);

    if (v8 && (v9 = sub_1D5B69D90(a2, a3), (v10 & 1) != 0))
    {
      v11 = *(v7 + 56) + 56 * v9;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 48);
      swift_endAccess();
      v15 = v14;
      v16 = v12;
      v17 = v13;

      [a1 setBackgroundColor_];
    }

    else
    {
      swift_endAccess();
      sub_1D6938D6C(a2, a3, v44);
      v18 = v44[0];
      if (v44[0] == 1)
      {
      }

      else
      {
        v19 = *&v44[2];
        v20 = v46;
        v21 = v48;
        v22 = v47;
        v23 = v45;
        v49 = v44[1];
        swift_beginAccess();
        v24 = v18;
        sub_1D69396F0(&v49, &v43);
        v25 = v21;
        sub_1D6D61638(v44, a2, a3);
        swift_endAccess();
        [a1 setBackgroundColor_];
        v26 = v49;
        if (v49)
        {
          v27 = v24;
          v28 = OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_engagementView;
          swift_beginAccess();
          if (*&a1[v28])
          {
            if (v23)
            {
              v19 = 0.0;
            }

            if (v22)
            {
              v20 = 0.0;
            }

            v29 = v25;
            if (!v21)
            {
              v29 = *MEMORY[0x1E69796E8];
            }

            v30 = OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_borderColor;
            v31 = *&a1[OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_borderColor];
            *&a1[OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_borderColor] = v26;
            sub_1D69396F0(&v49, &v43);
            sub_1D69396F0(&v49, &v43);
            sub_1D69396F0(&v49, &v43);
            v32 = v25;

            v33 = *&a1[v28];
            if (v33)
            {
              v34 = [v33 layer];
              v35 = *&a1[v30];
              if (v35)
              {
                v36 = [v35 CGColor];
              }

              else
              {
                v36 = 0;
              }

              [v34 setBorderColor_];

              v37 = *&a1[v28];
              if (v37)
              {
                v38 = [v37 layer];
                [v38 setBorderWidth_];

                v39 = *&a1[v28];
                if (v39)
                {
                  v40 = [v39 layer];
                  [v40 setCornerRadius_];

                  v41 = *&a1[v28];
                  if (v41)
                  {
                    v42 = [v41 layer];
                    [v42 setCornerCurve_];
                  }
                }
              }
            }

            sub_1D6939754(&v49);
            sub_1D6939754(&v49);

            sub_1D6939754(&v49);
          }

          else
          {

            sub_1D6939754(&v49);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {

    [a1 setBackgroundColor_];
  }
}

uint64_t sub_1D6938CA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D6938CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1D6938D6C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();

  v7 = sub_1D6011D6C(a1, a2);
  v9 = v8;
  v10 = sub_1D725865C();
  sub_1D5B952F8(v7, v9);
  aBlock = 0;
  v11 = [v6 JSONObjectWithData:v10 options:0 error:&aBlock];

  if (!v11)
  {
    v17 = aBlock;
    v18 = sub_1D725829C();

    swift_willThrow();
    goto LABEL_10;
  }

  v12 = aBlock;
  sub_1D7263AEC();
  swift_unknownObjectRelease();
  sub_1D5B7EB5C(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (qword_1EC87DC58 != -1)
    {
      swift_once();
    }

    v19 = sub_1D725C42C();
    __swift_project_value_buffer(v19, qword_1EC9BAD90);

    v20 = sub_1D725C3FC();
    v21 = sub_1D7262EBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1D5BC5100(a1, a2, &aBlock);
      _os_log_impl(&dword_1D5B42000, v20, v21, "EngagementBannerViewStyler: failed parsing style with %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1DA6FD500](v23, -1, -1);
      MEMORY[0x1DA6FD500](v22, -1, -1);
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    goto LABEL_57;
  }

  if (*(v65 + 16) && (v13 = sub_1D5B69D90(0x756F72676B636162, 0xEF726F6C6F43646ELL), (v14 & 1) != 0) && (sub_1D5B76B10(*(v65 + 56) + 32 * v13, &aBlock), sub_1D5B7EB5C(0, &qword_1EDF05810, MEMORY[0x1E69E6158]), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v65 + 16) && (sub_1D5B69D90(0x746867696CLL, 0xE500000000000000), (v15 & 1) != 0))
    {

      v16 = sub_1D726203C();
    }

    else
    {
      v16 = 0;
    }

    v35 = objc_opt_self();
    v36 = [v35 colorWithHexString_];

    v37 = [v36 ne_color];
    if (*(v65 + 16) && ((sub_1D5B69D90(1802658148, 0xE400000000000000), (v38 & 1) != 0) || *(v65 + 16) && (sub_1D5B69D90(0x746867696CLL, 0xE500000000000000), (v39 & 1) != 0)))
    {

      v40 = sub_1D726203C();
    }

    else
    {

      v40 = 0;
    }

    v47 = [v35 colorWithHexString_];

    v48 = [v47 ne_color];
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v37;
    v50 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v70 = sub_1D69397F8;
    v71 = v49;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = sub_1D6E0CD34;
    v69 = &block_descriptor_8;
    v51 = _Block_copy(&aBlock);
    v30 = [v50 initWithDynamicProvider_];
    _Block_release(v51);

    if (!*(v65 + 16))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v30 = 0;
    if (!*(v65 + 16))
    {
      goto LABEL_35;
    }
  }

  v31 = sub_1D5B69D90(0x6F43726564726F62, 0xEB00000000726F6CLL);
  if (v32)
  {
    sub_1D5B76B10(*(v65 + 56) + 32 * v31, &aBlock);
    sub_1D5B7EB5C(0, &qword_1EDF05810, MEMORY[0x1E69E6158]);
    if (swift_dynamicCast())
    {
      if (*(v65 + 16) && (sub_1D5B69D90(0x746867696CLL, 0xE500000000000000), (v33 & 1) != 0))
      {

        v34 = sub_1D726203C();
      }

      else
      {
        v34 = 0;
      }

      v41 = objc_opt_self();
      v42 = [v41 colorWithHexString_];

      v43 = [v42 ne_color];
      if (*(v65 + 16) && ((sub_1D5B69D90(1802658148, 0xE400000000000000), (v44 & 1) != 0) || *(v65 + 16) && (sub_1D5B69D90(0x746867696CLL, 0xE500000000000000), (v45 & 1) != 0)))
      {

        v46 = sub_1D726203C();
      }

      else
      {

        v46 = 0;
      }

      v55 = [v41 colorWithHexString_];

      v56 = [v55 ne_color];
      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      *(v57 + 24) = v43;
      v58 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v70 = sub_1D69397B0;
      v71 = v57;
      aBlock = MEMORY[0x1E69E9820];
      v67 = 1107296256;
      v68 = sub_1D6E0CD34;
      v69 = &block_descriptor_54;
      v59 = _Block_copy(&aBlock);
      v24 = [v58 initWithDynamicProvider_];
      _Block_release(v59);

      if (!*(v65 + 16))
      {
        goto LABEL_43;
      }

      goto LABEL_36;
    }
  }

LABEL_35:
  v24 = 0;
  if (!*(v65 + 16))
  {
LABEL_43:
    v25 = 0;
    v26 = 1;
    goto LABEL_44;
  }

LABEL_36:
  v52 = sub_1D5B69D90(0x6957726564726F62, 0xEB00000000687464);
  if ((v53 & 1) == 0)
  {
    goto LABEL_43;
  }

  sub_1D5B76B10(*(v65 + 56) + 32 * v52, &aBlock);
  v54 = swift_dynamicCast();
  if (v54)
  {
    v25 = v65;
  }

  else
  {
    v25 = 0;
  }

  v26 = v54 ^ 1u;
LABEL_44:
  if (*(v65 + 16) && (v60 = sub_1D5B69D90(0xD000000000000012, 0x80000001D73DC6A0), (v61 & 1) != 0))
  {
    sub_1D5B76B10(*(v65 + 56) + 32 * v60, &aBlock);
    v62 = swift_dynamicCast();
    if (v62)
    {
      v27 = v65;
    }

    else
    {
      v27 = 0;
    }

    v28 = v62 ^ 1u;
    if (!*(v65 + 16))
    {
      goto LABEL_55;
    }
  }

  else
  {
    v27 = 0;
    v28 = 1;
    if (!*(v65 + 16))
    {
LABEL_55:

      goto LABEL_56;
    }
  }

  v63 = sub_1D5B69D90(0xD000000000000011, 0x80000001D73DC6C0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_55;
  }

  sub_1D5B76B10(*(v65 + 56) + 32 * v63, &aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    v29 = 0;
    goto LABEL_57;
  }

  v29 = sub_1D726203C();

LABEL_57:
  *a3 = v30;
  a3[1] = v24;
  a3[2] = v25;
  a3[3] = v26;
  a3[4] = v27;
  a3[5] = v28;
  a3[6] = v29;
}

uint64_t sub_1D69396F0(uint64_t a1, uint64_t a2)
{
  sub_1D62DE494(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6939754(uint64_t a1)
{
  sub_1D62DE494(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D69397B0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

uint64_t sub_1D6939800(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D6939F98(0, &qword_1EC88E628, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6939F44();
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

uint64_t sub_1D6939980()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1D69399B8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_1D6939A9C(uint64_t a1)
{
  v2 = sub_1D6939F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6939AD8(uint64_t a1)
{
  v2 = sub_1D6939F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6939B14@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6939D50(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_1D6939B64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
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
  *(inited + 32) = 0x7453656C7A7A7550;
  *(inited + 40) = 0xEF63697473697461;
  *(inited + 48) = v11;

  sub_1D60F3E18(inited);
  a5[3] = &type metadata for DebugInspectionDataSource;
  a5[4] = &off_1F51328C8;
  *a5 = v14;
}

void sub_1D6939CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6939D50(void *a1)
{
  sub_1D6939F98(0, &qword_1EC88E618, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6939F44();
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

unint64_t sub_1D6939F44()
{
  result = qword_1EC88E620;
  if (!qword_1EC88E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E620);
  }

  return result;
}

void sub_1D6939F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6939F44();
    v7 = a3(a1, &type metadata for DebugInspectionPuzzleStatistic.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D693A010()
{
  result = qword_1EC88E630;
  if (!qword_1EC88E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E630);
  }

  return result;
}

unint64_t sub_1D693A068()
{
  result = qword_1EC88E638;
  if (!qword_1EC88E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E638);
  }

  return result;
}

unint64_t sub_1D693A0C0()
{
  result = qword_1EC88E640;
  if (!qword_1EC88E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E640);
  }

  return result;
}

uint64_t FormatContentBackground.__allocating_init(content:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1D5F906A0(a1, v2 + OBJC_IVAR____TtC8NewsFeed23FormatContentBackground_content);
  return v2;
}

uint64_t sub_1D693A1C4(uint64_t a1)
{
  v2 = type metadata accessor for FormatContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatContentBackground.__deallocating_deinit()
{
  sub_1D693A1C4(v0 + OBJC_IVAR____TtC8NewsFeed23FormatContentBackground_content);

  return swift_deallocClassInstance();
}

uint64_t sub_1D693A284(uint64_t a1)
{
  result = sub_1D693A3A0(&qword_1EC88E648, &protocol conformance descriptor for FormatContentBackground);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for FormatContentBackground(uint64_t a1)
{
  result = qword_1EDF0D5D8;
  if (!qword_1EDF0D5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D693A314(void *a1)
{
  a1[1] = sub_1D693A3A0(&qword_1EC88E650, &protocol conformance descriptor for FormatContentBackground);
  a1[2] = sub_1D693A3A0(&qword_1EC88E658, &protocol conformance descriptor for FormatContentBackground);
  result = sub_1D693A3A0(&qword_1EC88E660, &protocol conformance descriptor for FormatContentBackground);
  a1[3] = result;
  return result;
}

uint64_t sub_1D693A3A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatContentBackground(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D693A3E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66841B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D693A458(uint64_t a1)
{
  result = type metadata accessor for FormatContent(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D693A514(void *a1)
{
  v2 = *(v1 + 17);
  if (v2 <= 1)
  {
    if (*(v1 + 17))
    {
      sub_1D693A9E0(a1);
    }

    else
    {
      sub_1D693A5DC(a1);
    }
  }

  else if (v2 == 2)
  {
    sub_1D693AF74(a1);
  }

  else if (v2 == 3)
  {
    sub_1D693CA8C();
  }

  else
  {
    sub_1D693CBB8();
  }
}

void sub_1D693A5DC(void *a1)
{
  v4 = sub_1D725A19C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  v13 = *(v1 + 8);
  if (v13 != 5)
  {
    v31 = *v1;

    v21 = sub_1D5F4FDC4(a1);

    if (v2)
    {
      return;
    }

    sub_1D7259EDC();
    sub_1D725A18C();
    v23 = v22;
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    if (v31 == 1)
    {
      [v21 pointSize];
      v25 = v24;
      sub_1D7264C3C();
      v26 = round(v23 * (v25 * 4.0) * 0.25);
      if (!v31)
      {
        v26 = v25;
      }

      v27 = [v21 fontWithSize_];
      (*(v5 + 8))(v12, v4);

      if (v13 <= 1)
      {
        if (!v13)
        {
          v28 = -1;
LABEL_32:
          v29 = [objc_opt_self() configurationWithFont:v27 scale:v28];
LABEL_33:
          v29;

          return;
        }

        goto LABEL_31;
      }
    }

    else
    {
      (*(v5 + 8))(v12, v4);
      if (v13 <= 1)
      {
        if (!v13)
        {
          v28 = -1;
          v27 = v21;
          goto LABEL_32;
        }

        v27 = v21;
LABEL_31:
        v28 = 0;
        goto LABEL_32;
      }

      v27 = v21;
    }

    if (v13 == 2)
    {
      v28 = 1;
    }

    else if (v13 == 3)
    {
      v28 = 2;
    }

    else
    {
      v28 = 3;
    }

    goto LABEL_32;
  }

  v31 = *v1;

  v14 = sub_1D5F4FDC4(a1);

  if (!v2)
  {
    sub_1D7259EDC();
    sub_1D725A18C();
    v16 = v15;
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    if (v31 == 1)
    {
      [v14 pointSize];
      v18 = v17;
      sub_1D7264C3C();
      v19 = round(v16 * (v18 * 4.0) * 0.25);
      if (!v31)
      {
        v19 = v18;
      }

      v20 = [v14 fontWithSize_];
    }

    else
    {
      v20 = v14;
    }

    v27 = v20;
    (*(v5 + 8))(v8, v4);

    v29 = [objc_opt_self() configurationWithFont_];
    goto LABEL_33;
  }
}

id sub_1D693A9E0(uint64_t a1)
{
  v3 = sub_1D725A19C();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v12 = &v52 - v11;
  v13 = *v1;
  v14 = *(v1 + 1);
  v15 = v1[16];
  if (v14)
  {
    v53 = v10;
    v54 = v9;
    if (v15 == 5)
    {
      LOBYTE(v56) = v13;
      v16 = sub_1D6F8A788();
      v17 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];

      v56 = a1;
      v18 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v19 = v18();
      v20 = v55;
      v21 = sub_1D5E02AFC(v19, v14);

      v55 = v20;
      if (v20)
      {
      }

      else
      {
        v29 = sub_1D7259EBC();
        [v17 scaledValueForValue:v29 compatibleWithTraitCollection:v21];
        v31 = v30;

        LOBYTE(v56) = v13;
        v32 = sub_1D6F8A788();
        v33 = objc_opt_self();
        v34 = [v33 configurationWithTextStyle_];

        v35 = v34;
        sub_1D7259EDC();
        sub_1D725A18C();
        v37 = v36;
        if (qword_1EDF34BB8 != -1)
        {
          swift_once();
        }

        sub_1D7264C3C();
        v38 = round(v31 * 4.0 * v37 * 0.25);
        if (v56)
        {
          v31 = v38;
        }

        (*(v53 + 8))(v6, v54);
        v39 = [v33 configurationWithPointSize_];
        v19 = [v35 configurationByApplyingConfiguration_];
      }
    }

    else
    {
      LOBYTE(v56) = v13;
      v24 = sub_1D6F8A788();
      v25 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];

      v56 = a1;
      v52 = a1;
      v26 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v19 = v26();
      v27 = v55;
      v28 = sub_1D5E02AFC(v19, v14);

      v55 = v27;
      if (v27)
      {
      }

      else
      {
        v40 = sub_1D7259EBC();
        [v25 scaledValueForValue:v40 compatibleWithTraitCollection:v28];
        v42 = v41;

        LOBYTE(v56) = v13;
        v43 = sub_1D6F8A788();
        v44 = objc_opt_self();
        v45 = [v44 configurationWithTextStyle:v43 scale:v15 - 1];

        v46 = v45;
        sub_1D7259EDC();
        sub_1D725A18C();
        v48 = v47;
        if (qword_1EDF34BB8 != -1)
        {
          swift_once();
        }

        sub_1D7264C3C();
        v49 = round(v42 * 4.0 * v48 * 0.25);
        if (v56)
        {
          v42 = v49;
        }

        (*(v53 + 8))(v12, v54);
        v50 = [v44 configurationWithPointSize_];
        v19 = [v46 configurationByApplyingConfiguration_];
      }
    }
  }

  else
  {
    LOBYTE(v56) = *v1;
    v22 = sub_1D6F8A788();
    if (v15 == 5)
    {
      v23 = [objc_opt_self() configurationWithTextStyle_];
    }

    else
    {
      v23 = [objc_opt_self() configurationWithTextStyle:v22 scale:v15 - 1];
    }

    v19 = v23;
  }

  return v19;
}

void sub_1D693AF74(uint64_t a1)
{
  v4 = sub_1D725A19C();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53 - v18;
  v20 = *v1;
  v21 = *(v1 + 8);
  v22 = *(v1 + 9);
  if (v21 == 10)
  {
    if (v22 == 5)
    {
      v57 = a1;
      v23 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v24 = v23();
      v25 = sub_1D5E02AFC(v24, v20);

      if (!v2)
      {
        sub_1D7259EDC();
        sub_1D725A18C();
        v27 = v26;
        if (qword_1EDF34BB8 != -1)
        {
          swift_once();
        }

        sub_1D7264C3C();
        v28 = round(v25 * 4.0 * v27 * 0.25);
        if (v57)
        {
          v25 = v28;
        }

        (*(v55 + 8))(v7, v56);
        v29 = [objc_opt_self() configurationWithPointSize_];
LABEL_29:
        v52 = v29;
      }
    }

    else
    {
      v36 = *(v1 + 9);
      v57 = a1;
      v37 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v38 = v37();
      v39 = sub_1D5E02AFC(v38, v20);

      if (!v2)
      {
        sub_1D7259EDC();
        sub_1D725A18C();
        v41 = v40;
        if (qword_1EDF34BB8 != -1)
        {
          swift_once();
        }

        sub_1D7264C3C();
        v42 = round(v39 * 4.0 * v41 * 0.25);
        if (v57)
        {
          v39 = v42;
        }

        (*(v55 + 8))(v11, v56);
        v43 = objc_opt_self();
        v44 = [v43 configurationWithPointSize_];
        v45 = [v43 configurationWithScale_];
        [v44 configurationByApplyingConfiguration_];
      }
    }
  }

  else if (v22 == 5)
  {
    v57 = a1;
    v30 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v31 = v30();
    v32 = sub_1D5E02AFC(v31, v20);

    if (!v2)
    {
      sub_1D7259EDC();
      sub_1D725A18C();
      v34 = v33;
      if (qword_1EDF34BB8 != -1)
      {
        swift_once();
      }

      sub_1D7264C3C();
      v35 = round(v32 * 4.0 * v34 * 0.25);
      if (v57)
      {
        v32 = v35;
      }

      (*(v55 + 8))(v15, v56);
      v29 = [objc_opt_self() configurationWithPointSize:v21 weight:v32];
      goto LABEL_29;
    }
  }

  else
  {
    v54 = *(v1 + 9);
    v57 = a1;
    v46 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v47 = v46();
    v48 = sub_1D5E02AFC(v47, v20);

    if (!v2)
    {
      sub_1D7259EDC();
      sub_1D725A18C();
      v50 = v49;
      if (qword_1EDF34BB8 != -1)
      {
        swift_once();
      }

      sub_1D7264C3C();
      v51 = round(v48 * 4.0 * v50 * 0.25);
      if (v57)
      {
        v48 = v51;
      }

      (*(v55 + 8))(v19, v56);
      v29 = [objc_opt_self() configurationWithPointSize:v21 weight:v54 - 1 scale:v48];
      goto LABEL_29;
    }
  }
}

BOOL _s8NewsFeed18FormatSymbolConfigO4FontV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v6 = *a2;
  v7 = v2;

  LOBYTE(v2) = static FormatFont.== infix(_:_:)(&v7, &v6);

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (v3 != 5)
  {
    return v4 != 5 && (sub_1D6DE2F08(v3, v4) & 1) != 0;
  }

  return v4 == 5;
}

BOOL _s8NewsFeed18FormatSymbolConfigO9TextStyleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = FormatFontScalingStyle.rawValue.getter(a3);
  v9 = v8;
  if (v7 == FormatFontScalingStyle.rawValue.getter(v10) && v9 == v11)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1D633A310(v3, v5);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (v4 == 5)
    {
      return v6 == 5;
    }

    return v6 != 5 && (sub_1D6DE2F08(v4, v6) & 1) != 0;
  }

  if (!v5)
  {

    if (v4 == 5)
    {
      return v6 == 5;
    }

    return v6 != 5 && (sub_1D6DE2F08(v4, v6) & 1) != 0;
  }

  return 0;
}

uint64_t _s8NewsFeed18FormatSymbolConfigO4SizeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  sub_1D633A310(*a1, *a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (v2 != 10)
  {
    if (v4 == 10 || (sub_1D6DE3084(v2, v4) & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    if (v3 == 5)
    {
      if (v5 != 5)
      {
        return 0;
      }
    }

    else if (v5 == 5 || (sub_1D6DE2F08(v3, v5) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (v4 == 10)
  {
    goto LABEL_7;
  }

  return 0;
}

BOOL _s8NewsFeed18FormatSymbolConfigO6WeightV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D6DE3084(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 != 5)
  {
    return v3 != 5 && (sub_1D6DE2F08(v2, v3) & 1) != 0;
  }

  return v3 == 5;
}

BOOL _s8NewsFeed18FormatSymbolConfigO5ScaleV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0x746C7561666564;
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  if (v3 <= 1)
  {
    v7 = 0xE700000000000000;
    v8 = 0xEA00000000006465;
    v10 = v3 == 0;
    if (*a1)
    {
      v11 = 0x6669636570736E75;
    }

    else
    {
      v11 = 0x746C7561666564;
    }
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0xE600000000000000;
    v9 = 0x6D756964656DLL;
    if (v3 != 3)
    {
      v9 = 0x656772616CLL;
      v8 = 0xE500000000000000;
    }

    v10 = v3 == 2;
    if (v3 == 2)
    {
      v11 = 0x6C6C616D73;
    }

    else
    {
      v11 = v9;
    }
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  v13 = 0xE700000000000000;
  v14 = 0xE500000000000000;
  v15 = 0x6C6C616D73;
  v16 = 0xE600000000000000;
  v17 = 0x6D756964656DLL;
  if (v5 != 3)
  {
    v17 = 0x656772616CLL;
    v16 = 0xE500000000000000;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x6669636570736E75;
    v13 = 0xEA00000000006465;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
  }

  else
  {
    v20 = sub_1D72646CC();

    result = 0;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  if (v4 != 10)
  {
    return v6 != 10 && (sub_1D6DE3084(v4, v6) & 1) != 0;
  }

  return v6 == 10;
}

uint64_t _s8NewsFeed18FormatSymbolConfigO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  if (v5 <= 1)
  {
    if (!*(a1 + 17))
    {
      if (!*(a2 + 17))
      {
        v16 = *a1;
        LOBYTE(v17) = v2;
        v13 = v7;
        LOBYTE(v14) = v6;
        sub_1D5F586A4(v7, v6, v8, 0);
        sub_1D5F586A4(v3, v2, v4, 0);
        sub_1D5F586A4(v3, v2, v4, 0);
        sub_1D5F586A4(v7, v6, v8, 0);
        v10 = _s8NewsFeed18FormatSymbolConfigO4FontV2eeoiySbAE_AEtFZ_0(&v16, &v13);
        sub_1D5F5816C(v3, v2, v4, 0);
        sub_1D5F5816C(v7, v6, v8, 0);
        sub_1D5F5816C(v7, v6, v8, 0);
        sub_1D5F5816C(v3, v2, v4, 0);
        return v10 & 1;
      }

      goto LABEL_16;
    }

    if (v9 == 1)
    {
      LOBYTE(v16) = *a1;
      v17 = v2;
      v18 = v4;
      LOBYTE(v13) = v7;
      v14 = v6;
      v15 = v8;
      sub_1D5F586A4(v7, v6, v8, 1);
      sub_1D5F586A4(v3, v2, v4, 1);
      sub_1D5F586A4(v3, v2, v4, 1);
      sub_1D5F586A4(v7, v6, v8, 1);
      v10 = _s8NewsFeed18FormatSymbolConfigO9TextStyleV2eeoiySbAE_AEtFZ_0(&v16, &v13, v11);
      sub_1D5F5816C(v3, v2, v4, 1);
      sub_1D5F5816C(v7, v6, v8, 1);
      sub_1D5F5816C(v7, v6, v8, 1);
      sub_1D5F5816C(v3, v2, v4, 1);
      return v10 & 1;
    }

    goto LABEL_15;
  }

  if (v5 == 2)
  {
    if (v9 == 2)
    {
      v16 = *a1;
      LOWORD(v17) = v2;
      v13 = v7;
      LOWORD(v14) = v6;
      sub_1D5F586A4(v7, v6, v8, 2);
      sub_1D5F586A4(v3, v2, v4, 2);
      sub_1D5F586A4(v3, v2, v4, 2);
      sub_1D5F586A4(v7, v6, v8, 2);
      v10 = _s8NewsFeed18FormatSymbolConfigO4SizeV2eeoiySbAE_AEtFZ_0(&v16, &v13);
      sub_1D5F5816C(v3, v2, v4, 2);
      sub_1D5F5816C(v7, v6, v8, 2);
      sub_1D5F5816C(v7, v6, v8, 2);
      sub_1D5F5816C(v3, v2, v4, 2);
      return v10 & 1;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v5 != 3)
  {
    if (v9 == 4)
    {
      LOWORD(v16) = *a1;
      LOWORD(v13) = v7;
      v10 = _s8NewsFeed18FormatSymbolConfigO5ScaleV2eeoiySbAE_AEtFZ_0(&v16, &v13);
      sub_1D5F5816C(v3, v2, v4, 4);
      sub_1D5F5816C(v7, v6, v8, 4);
      return v10 & 1;
    }

LABEL_16:
    sub_1D5F586A4(v7, v6, v8, v9);
    sub_1D5F5816C(v3, v2, v4, v5);
    sub_1D5F5816C(v7, v6, v8, v9);
    v10 = 0;
    return v10 & 1;
  }

  if (v9 != 3)
  {
    goto LABEL_16;
  }

  LOWORD(v16) = *a1;
  LOWORD(v13) = v7;
  v10 = _s8NewsFeed18FormatSymbolConfigO6WeightV2eeoiySbAE_AEtFZ_0(&v16, &v13);
  sub_1D5F5816C(v3, v2, v4, 3);
  sub_1D5F5816C(v7, v6, v8, 3);
  return v10 & 1;
}

unint64_t sub_1D693BF90(uint64_t a1)
{
  result = sub_1D693BFB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D693BFB8()
{
  result = qword_1EC88E668;
  if (!qword_1EC88E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E668);
  }

  return result;
}

unint64_t sub_1D693C04C()
{
  result = qword_1EC88E670;
  if (!qword_1EC88E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E670);
  }

  return result;
}

unint64_t sub_1D693C0A0(uint64_t a1)
{
  result = sub_1D693C0C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D693C0C8()
{
  result = qword_1EC88E678;
  if (!qword_1EC88E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E678);
  }

  return result;
}

unint64_t sub_1D693C15C()
{
  result = qword_1EC88E680;
  if (!qword_1EC88E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E680);
  }

  return result;
}

unint64_t sub_1D693C1B0(uint64_t a1)
{
  result = sub_1D693C1D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D693C1D8()
{
  result = qword_1EC88E688;
  if (!qword_1EC88E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E688);
  }

  return result;
}

unint64_t sub_1D693C26C()
{
  result = qword_1EC88E690;
  if (!qword_1EC88E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E690);
  }

  return result;
}

unint64_t sub_1D693C2C0(uint64_t a1)
{
  result = sub_1D693C2E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D693C2E8()
{
  result = qword_1EC88E698;
  if (!qword_1EC88E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E698);
  }

  return result;
}

unint64_t sub_1D693C37C()
{
  result = qword_1EC88E6A0;
  if (!qword_1EC88E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E6A0);
  }

  return result;
}

unint64_t sub_1D693C3D0(uint64_t a1)
{
  result = sub_1D693C3F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D693C3F8()
{
  result = qword_1EC88E6A8;
  if (!qword_1EC88E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E6A8);
  }

  return result;
}

unint64_t sub_1D693C48C()
{
  result = qword_1EC88E6B0;
  if (!qword_1EC88E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E6B0);
  }

  return result;
}

unint64_t sub_1D693C4E0(uint64_t a1)
{
  result = sub_1D693C508();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D693C508()
{
  result = qword_1EC88E6B8;
  if (!qword_1EC88E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E6B8);
  }

  return result;
}

uint64_t sub_1D693C59C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D693C5F0()
{
  result = qword_1EC88E6C0;
  if (!qword_1EC88E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E6C0);
  }

  return result;
}

uint64_t sub_1D693C65C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 6;
  if (v3 < 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1D693C6B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1D693C704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D693C760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatSymbolConfig.Weight(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
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

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 6;
  if (v6 < 5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatSymbolConfig.Weight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatSymbolConfig.Scale(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
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

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for FormatSymbolConfig.Scale(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1D693CA8C()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 2)
  {
    if (v0[1])
    {
      v3 = v2 != 1;
    }

    else
    {
      v3 = -1;
    }

    goto LABEL_9;
  }

  if (v2 == 3)
  {
    v3 = 2;
    goto LABEL_9;
  }

  if (v2 == 4)
  {
    v3 = 3;
LABEL_9:
    v4 = objc_opt_self();
    v5 = [v4 configurationWithScale_];
    v6 = [v4 configurationWithWeight_];
    v7 = [v5 configurationByApplyingConfiguration_];

    return v7;
  }

  v9 = [objc_opt_self() configurationWithWeight_];

  return v9;
}

id sub_1D693CBB8()
{
  v1 = v0[1];
  v2 = *v0 - 1;
  v3 = objc_opt_self();
  result = [v3 configurationWithScale_];
  if (v1 <= 4)
  {
    v7 = 2;
    v8 = 3;
    if (v1 != 3)
    {
      v8 = 4;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    v9 = 1;
    if (!v1)
    {
      v9 = v1;
    }

    if (v1 <= 1)
    {
      v6 = v9;
    }

    else
    {
      v6 = v7;
    }

    goto LABEL_17;
  }

  if (v1 <= 7)
  {
    v5 = 6;
    if (v1 != 6)
    {
      v5 = 7;
    }

    if (v1 == 5)
    {
      v6 = 5;
    }

    else
    {
      v6 = v5;
    }

    goto LABEL_17;
  }

  if (v1 == 8)
  {
    v6 = 8;
    goto LABEL_17;
  }

  if (v1 == 9)
  {
    v6 = 9;
LABEL_17:
    v10 = result;
    v11 = [v3 configurationWithWeight_];
    v12 = [v10 configurationByApplyingConfiguration_];

    return v12;
  }

  return result;
}

uint64_t FeedRefreshBasicAnimation.__allocating_init(refreshStateMachine:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FeedRefreshBasicAnimation.animate(context:animation:applyUpdates:)(uint64_t a1, uint64_t a2, void (*a3)(double (*)(void (*a1)(void), uint64_t a2), uint64_t))
{
  v4 = swift_allocObject();
  swift_weakInit();

  a3(sub_1D693CE4C, v4);
}

double sub_1D693CDB0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1D725AB1C();
  }

  return result;
}

uint64_t FeedRefreshBasicAnimation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D693CEFC(uint64_t a1, uint64_t a2, void (*a3)(double (*)(void (*a1)(void), uint64_t a2), uint64_t))
{
  v4 = swift_allocObject();
  swift_weakInit();

  a3(sub_1D693D008, v4);
}

uint64_t sub_1D693D00C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t FeedGapOffline.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FeedGapOffline.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t FeedGapOffline.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FeedGapOffline.description.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FeedGapOffline.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

double FeedGapOffline.init(identifier:title:description:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 16) = xmmword_1D72BAB40;
  *(a7 + 32) = 1;
  result = 0.0;
  *(a7 + 72) = xmmword_1D7279980;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  return result;
}

uint64_t static FeedGapOffline.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

unint64_t sub_1D693D198(uint64_t a1)
{
  result = sub_1D693D1C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D693D1C0()
{
  result = qword_1EDF39C70;
  if (!qword_1EDF39C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF39C70);
  }

  return result;
}

uint64_t sub_1D693D214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1D693D25C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D693D2C4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x65726F6373;
      break;
    case 3:
      result = 0x656873696C627570;
      break;
    case 4:
      result = 0x446873696C627570;
      break;
    case 5:
      result = 0x6566694C666C6168;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x6269737365636361;
      break;
    case 8:
      result = 0x646961507369;
      break;
    case 9:
      result = 0x656C646E75426E69;
      break;
    case 10:
      result = 0x726143614C416E69;
      break;
    case 11:
      result = 0x6F725065726F6373;
      break;
    case 12:
      result = 0x736369706F74;
      break;
    case 13:
      result = 0x7365727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D693D454(void *a1)
{
  v3 = v1;
  sub_1D693EDF8(0, &qword_1EC88E718, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D693EBC0();
  sub_1D7264B5C();
  v15[0] = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v15[0] = 1;
    sub_1D726437C();
    v15[0] = 2;
    sub_1D726441C();
    v15[0] = 3;
    sub_1D726437C();
    v15[0] = 4;
    sub_1D726439C();
    v15[0] = 5;
    sub_1D726445C();
    v15[0] = 6;
    sub_1D726437C();
    v15[0] = 7;
    sub_1D726440C();
    v15[0] = 8;
    sub_1D726440C();
    v15[0] = 9;
    sub_1D726440C();
    v15[0] = 10;
    sub_1D726440C();
    memcpy(v16, v3 + 13, 0x198uLL);
    memcpy(v15, v3 + 13, sizeof(v15));
    v18 = 11;
    sub_1D693EE5C(v16, v14, &qword_1EC88E6D8, &type metadata for DebugInspectionScoreProfile);
    sub_1D693EEDC();
    sub_1D72643BC();
    memcpy(v14, v15, sizeof(v14));
    sub_1D693EC14(v14);
    v13 = v3[64];
    v17 = 12;
    sub_1D5D64D20(0, &qword_1EC88E6E8, &type metadata for DebugInspectionTag, MEMORY[0x1E69E62F8]);
    sub_1D693EF30(&qword_1EC88E728, sub_1D693EFC0, MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v13 = v3[65];
    v17 = 13;
    sub_1D5D64D20(0, &qword_1EC88E700, &type metadata for DebugInspectionAggregate, MEMORY[0x1E69E62F8]);
    sub_1D693F014(&qword_1EC88E738, sub_1D693F0A4, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D693D8D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D693F210(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D693D900(uint64_t a1)
{
  v2 = sub_1D693EBC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D693D93C(uint64_t a1)
{
  v2 = sub_1D693EBC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D693D978(void *a1@<X8>, void *a2@<X0>)
{
  sub_1D693E3D0(a2, v4);
  if (!v2)
  {
    memcpy(a1, v4, 0x210uLL);
  }
}

void sub_1D693D9DC(void *a1@<X8>)
{
  v2 = v1;
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7274590;
  sub_1D5D64D20(0, &qword_1EC893920, &type metadata for DebugInspectionDataItem, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7274590;
  v5 = *(v1 + 16);
  v84 = *v1;
  *(v4 + 48) = v84;
  v6 = MEMORY[0x1E69E6158];
  *(v4 + 32) = 0x696669746E656449;
  *(v4 + 40) = 0xEA00000000007265;
  v7 = MEMORY[0x1E69E61C8];
  *(v4 + 72) = v6;
  *(v4 + 80) = v7;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0x656C746954;
  *(v4 + 104) = 0xE500000000000000;
  v83 = v5;
  v8 = *(&v5 + 1);
  if (*(&v5 + 1))
  {
    *(v4 + 112) = __PAIR128__(*(&v5 + 1), v83);
    v8 = MEMORY[0x1E69E61C8];
    v9 = MEMORY[0x1E69E6158];
  }

  else
  {
    v9 = 0;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0;
    *(v4 + 128) = 0;
  }

  *(v4 + 136) = v9;
  *(v4 + 144) = v8;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0xD000000000000015;
  *(v4 + 168) = 0x80000001D73C2D20;
  v10 = MEMORY[0x1E69E6418];
  v11 = *(v1 + 32);
  *(v4 + 200) = MEMORY[0x1E69E63B0];
  *(v4 + 208) = v10;
  *(v4 + 176) = v11;
  *(v4 + 216) = 0;
  strcpy((v4 + 224), "Publisher Name");
  *(v4 + 239) = -18;
  v82 = *(v1 + 40);
  v12 = *(&v82 + 1);
  if (*(&v82 + 1))
  {
    *(v4 + 240) = v82;
    *(v4 + 248) = v12;
    v12 = MEMORY[0x1E69E61C8];
    v13 = MEMORY[0x1E69E6158];
  }

  else
  {
    v13 = 0;
    *(v4 + 240) = 0;
    *(v4 + 248) = 0;
    *(v4 + 256) = 0;
  }

  *(v4 + 264) = v13;
  *(v4 + 272) = v12;
  *(v4 + 280) = 0;
  *(v3 + 56) = &type metadata for DebugInspectionDataSection;
  *(v3 + 64) = &off_1F5132800;
  *(v3 + 32) = 0x6575737349;
  *(v3 + 40) = 0xE500000000000000;
  *(v3 + 48) = v4;
  memcpy(__dst, (v1 + 104), 0x198uLL);
  if (sub_1D693E2E0(__dst) == 1)
  {
    *(v3 + 104) = 0;
    *(v3 + 88) = 0u;
    *(v3 + 72) = 0u;
    sub_1D5E422A8(&v84, v85);
    v14 = MEMORY[0x1E69E6158];
    sub_1D693EE5C(&v83, v85, &qword_1EDF43BE0, MEMORY[0x1E69E6158]);
    sub_1D693EE5C(&v82, v85, &qword_1EDF43BE0, v14);
  }

  else
  {
    memcpy(v85, __dst, sizeof(v85));
    sub_1D5E422A8(&v84, &v76);
    v15 = MEMORY[0x1E69E6158];
    sub_1D693EE5C(&v83, &v76, &qword_1EDF43BE0, MEMORY[0x1E69E6158]);
    sub_1D693EE5C(&v82, &v76, &qword_1EDF43BE0, v15);
    sub_1D5F3B8BC(v3 + 72);
  }

  v16 = *(v1 + 512);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  v66 = v3;
  if (v17)
  {
    v70 = v2;
    *&v76 = MEMORY[0x1E69E7CC0];
    sub_1D6999668(0, v17, 0);
    v18 = v76;
    v19 = (v16 + 56);
    do
    {
      v21 = *(v19 - 3);
      v20 = *(v19 - 2);
      v23 = *(v19 - 1);
      v22 = *v19;
      LOBYTE(v72) = 0;
      *&v76 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_1D6999668((v24 > 1), v25 + 1, 1);
        v18 = v76;
      }

      *(v18 + 16) = v25 + 1;
      v26 = v18 + (v25 << 6);
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      *(v26 + 48) = v21;
      *(v26 + 56) = v20;
      v6 = MEMORY[0x1E69E6158];
      *(v26 + 72) = MEMORY[0x1E69E6158];
      *(v26 + 80) = MEMORY[0x1E69E61C8];
      *(v26 + 88) = v72;
      v19 += 4;
      --v17;
    }

    while (v17);
    v3 = v66;
    v2 = v70;
  }

  *(v3 + 136) = &type metadata for DebugInspectionDataSection;
  *(v3 + 144) = &off_1F5132800;
  *(v3 + 112) = 0x736369706F54;
  *(v3 + 120) = 0xE600000000000000;
  *(v3 + 128) = v18;
  v27 = *(v2 + 520);
  v28 = *(v27 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v81 = MEMORY[0x1E69E7CC0];
    v67 = v28;
    sub_1D6999668(0, v28, 0);
    v30 = v81;
    v68 = v27 + 32;
    sub_1D5BC66DC(0);
    v31 = 0;
    while (2)
    {
      v32 = (v68 + 96 * v31);
      v34 = v32[3];
      v33 = v32[4];
      v35 = *(v32 + 73);
      v78 = v32[2];
      v36 = v32[1];
      v76 = *v32;
      v77 = v36;
      *&v80[9] = v35;
      v79 = v34;
      *v80 = v33;
      v37 = *(&v76 + 1);
      v69 = v76;
      v38 = swift_allocObject();
      v74 = 0;
      v75 = 0xE000000000000000;
      v71 = v37;

      sub_1D693E2F8(&v76, &v72);
      MEMORY[0x1DA6F9910](0x203A525443, 0xE500000000000000);
      sub_1D7262ABC();
      v39 = 0;
      v40 = 0;
      v41 = v75;
      v38[4] = v74;
      v38[5] = v41;
      if ((BYTE8(v79) & 1) == 0)
      {
        v72 = 0;
        v73 = 0xE000000000000000;
        MEMORY[0x1DA6F9910](0x63696C4320776152, 0xEC000000203A736BLL);
        sub_1D7262ABC();
        v39 = v72;
        v40 = v73;
      }

      v38[6] = v39;
      v38[7] = v40;
      v72 = 0;
      v73 = 0xE000000000000000;
      MEMORY[0x1DA6F9910](0x203A736B63696C43, 0xE800000000000000);
      sub_1D7262ABC();
      v42 = v73;
      v38[8] = v72;
      v38[9] = v42;
      v72 = 0;
      v73 = 0xE000000000000000;
      MEMORY[0x1DA6F9910](0x6973736572706D49, 0xED0000203A736E6FLL);
      sub_1D7262ABC();
      v43 = v73;
      v38[10] = v72;
      v38[11] = v43;
      v44 = v77;
      if (v77)
      {
        v72 = 0x203A73676154;
        v73 = 0xE600000000000000;
        v74 = v77;
        sub_1D5D64D20(0, &qword_1EDF43BA0, v6, MEMORY[0x1E69E62F8]);
        sub_1D5BB0AB8();
        v45 = sub_1D7261F3C();
        MEMORY[0x1DA6F9910](v45);

        v44 = v72;
        v46 = v73;
      }

      else
      {
        v46 = 0;
      }

      v47 = 0;
      ++v31;
      v38[12] = v44;
      v38[13] = v46;
LABEL_24:
      v48 = 5;
      if (v47 > 5)
      {
        v48 = v47;
      }

      v49 = v48 + 1;
      v50 = 16 * v47 + 40;
      while (v47 != 5)
      {
        if (v49 == ++v47)
        {
          __break(1u);
          return;
        }

        v51 = v50 + 16;
        v52 = *(v38 + v50);
        v50 += 16;
        if (v52)
        {
          v53 = *(v38 + v51 - 24);

          v54 = v31;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1D5B858EC(0, *(v29 + 2) + 1, 1, v29);
          }

          v56 = *(v29 + 2);
          v55 = *(v29 + 3);
          if (v56 >= v55 >> 1)
          {
            v29 = sub_1D5B858EC((v55 > 1), v56 + 1, 1, v29);
          }

          *(v29 + 2) = v56 + 1;
          v57 = &v29[16 * v56];
          *(v57 + 4) = v53;
          *(v57 + 5) = v52;
          v6 = MEMORY[0x1E69E6158];
          v31 = v54;
          goto LABEL_24;
        }
      }

      swift_setDeallocating();
      sub_1D5D64D20(0, &qword_1EDF43BE0, v6, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v72 = v29;
      sub_1D5D64D20(0, &qword_1EDF43BA0, v6, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();
      v58 = sub_1D7261F3C();
      v60 = v59;

      sub_1D693E354(&v76);
      LOBYTE(v72) = 0;
      v81 = v30;
      v62 = *(v30 + 16);
      v61 = *(v30 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1D6999668((v61 > 1), v62 + 1, 1);
        v30 = v81;
      }

      *(v30 + 16) = v62 + 1;
      v63 = v30 + (v62 << 6);
      *(v63 + 32) = v69;
      *(v63 + 40) = v71;
      *(v63 + 48) = v58;
      *(v63 + 56) = v60;
      *(v63 + 72) = v6;
      *(v63 + 80) = MEMORY[0x1E69E61C8];
      *(v63 + 88) = v72;
      if (v31 != v67)
      {
        v29 = MEMORY[0x1E69E7CC0];
        continue;
      }

      break;
    }

    v3 = v66;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  *(v3 + 176) = &type metadata for DebugInspectionDataSection;
  *(v3 + 184) = &off_1F5132800;
  *(v3 + 152) = 0x7365727574616546;
  *(v3 + 160) = 0xE800000000000000;
  *(v3 + 168) = v30;
  sub_1D60F3E18(v3);
  a1[3] = &type metadata for DebugInspectionDataSource;
  a1[4] = &off_1F51328C8;
  *a1 = v64;
}

uint64_t sub_1D693E2E0(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed27DebugInspectionScoreProfileVSg(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D693E3D0(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D693EDF8(0, &qword_1EC88E6C8, MEMORY[0x1E69E6F48]);
  v50 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D693EBC0();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v10 = v6;
  v49 = a2;
  LOBYTE(v52[0]) = 0;
  v11 = sub_1D72642BC();
  v48 = v12;
  LOBYTE(v52[0]) = 1;
  v13 = sub_1D726422C();
  v47 = v14;
  v44 = v13;
  LOBYTE(v52[0]) = 2;
  sub_1D72642DC();
  v16 = v15;
  LOBYTE(v52[0]) = 3;
  v43 = sub_1D726422C();
  v45 = v17;
  LOBYTE(v52[0]) = 4;
  v42 = sub_1D726424C();
  v59 = v18 & 1;
  LOBYTE(v52[0]) = 5;
  v41 = sub_1D726432C();
  LOBYTE(v52[0]) = 6;
  v40 = sub_1D726422C();
  v46 = v19;
  LOBYTE(v52[0]) = 7;
  v38 = sub_1D72642CC();
  v39 = v11;
  LOBYTE(v52[0]) = 8;
  v37 = sub_1D72642CC();
  LOBYTE(v52[0]) = 9;
  v20 = sub_1D72642CC();
  LOBYTE(v52[0]) = 10;
  v21 = sub_1D72642CC();
  v36 = 0;
  v22 = v21;
  v55 = 11;
  sub_1D693EC94();
  v23 = v36;
  sub_1D726427C();
  v36 = v23;
  if (v23)
  {
    (*(v10 + 8))(v9, v50);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    memcpy(&v57[4], v56, 0x198uLL);
    sub_1D5D64D20(0, &qword_1EC88E6E8, &type metadata for DebugInspectionTag, MEMORY[0x1E69E62F8]);
    LOBYTE(v51[0]) = 12;
    sub_1D693EF30(&qword_1EC88E6F0, sub_1D693ECE8, MEMORY[0x1E69E6330]);
    v26 = v36;
    sub_1D726431C();
    v36 = v26;
    if (v26)
    {
      (*(v10 + 8))(v9, v50);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v25 = 0;
      v24 = 1;
    }

    else
    {
      v27 = v52[0];
      sub_1D5D64D20(0, &qword_1EC88E700, &type metadata for DebugInspectionAggregate, MEMORY[0x1E69E62F8]);
      v53 = 13;
      sub_1D693F014(&qword_1EC88E708, sub_1D693ED3C, MEMORY[0x1E69E6330]);
      v28 = v36;
      sub_1D726431C();
      v36 = v28;
      if (!v28)
      {
        v29 = v38 & 1;
        v38 = v37 & 1;
        v30 = v20 & 1;
        v31 = v22 & 1;
        (*(v10 + 8))(v9, v50);
        v32 = v54;
        v51[0] = v39;
        v51[1] = v48;
        v51[2] = v44;
        v51[3] = v47;
        v51[4] = v16;
        v33 = v46;
        v51[5] = v43;
        v51[6] = v45;
        v51[7] = v42;
        LODWORD(v50) = v59;
        LOBYTE(v51[8]) = v59;
        *(&v51[8] + 1) = *v58;
        HIDWORD(v51[8]) = *&v58[3];
        v51[9] = v41;
        v51[10] = v40;
        v51[11] = v46;
        LOBYTE(v51[12]) = v29;
        v34 = v38;
        BYTE1(v51[12]) = v38;
        BYTE2(v51[12]) = v30;
        BYTE3(v51[12]) = v31;
        memcpy(&v51[12] + 4, v57, 0x19CuLL);
        v51[64] = v27;
        v51[65] = v54;
        sub_1D693ED90(v51, v52);
        __swift_destroy_boxed_opaque_existential_1(a1);
        v52[0] = v39;
        v52[1] = v48;
        v52[2] = v44;
        v52[3] = v47;
        v52[4] = v16;
        v52[5] = v43;
        v52[6] = v45;
        v52[7] = v42;
        LOBYTE(v52[8]) = v50;
        *(&v52[8] + 1) = *v58;
        HIDWORD(v52[8]) = *&v58[3];
        v52[9] = v41;
        v52[10] = v40;
        v52[11] = v33;
        LOBYTE(v52[12]) = v29;
        BYTE1(v52[12]) = v34;
        BYTE2(v52[12]) = v30;
        BYTE3(v52[12]) = v31;
        memcpy(&v52[12] + 4, v57, 0x19CuLL);
        v52[64] = v27;
        v52[65] = v32;
        sub_1D693EDC8(v52);
        memcpy(v49, v51, 0x210uLL);
        return;
      }

      (*(v10 + 8))(v9, v50);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v24 = 1;
      v25 = 1;
    }
  }

  if (v24)
  {
    memcpy(v52, &v57[4], 0x198uLL);
    sub_1D693EC14(v52);
    if ((v25 & 1) == 0)
    {
      return;
    }
  }

  else if (!v25)
  {
    return;
  }
}

unint64_t sub_1D693EBC0()
{
  result = qword_1EC88E6D0;
  if (!qword_1EC88E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E6D0);
  }

  return result;
}

uint64_t sub_1D693EC14(uint64_t a1)
{
  sub_1D5D64D20(0, &qword_1EC88E6D8, &type metadata for DebugInspectionScoreProfile, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D693EC94()
{
  result = qword_1EC88E6E0;
  if (!qword_1EC88E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E6E0);
  }

  return result;
}

unint64_t sub_1D693ECE8()
{
  result = qword_1EC88E6F8;
  if (!qword_1EC88E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E6F8);
  }

  return result;
}

unint64_t sub_1D693ED3C()
{
  result = qword_1EC88E710;
  if (!qword_1EC88E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E710);
  }

  return result;
}

void sub_1D693EDF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D693EBC0();
    v7 = a3(a1, &type metadata for DebugInspectionIssue.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D693EE5C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5D64D20(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D693EEDC()
{
  result = qword_1EC88E720;
  if (!qword_1EC88E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E720);
  }

  return result;
}

uint64_t sub_1D693EF30(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D64D20(255, &qword_1EC88E6E8, &type metadata for DebugInspectionTag, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D693EFC0()
{
  result = qword_1EC88E730;
  if (!qword_1EC88E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E730);
  }

  return result;
}

uint64_t sub_1D693F014(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D64D20(255, &qword_1EC88E700, &type metadata for DebugInspectionAggregate, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D693F0A4()
{
  result = qword_1EC88E740;
  if (!qword_1EC88E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E740);
  }

  return result;
}

unint64_t sub_1D693F10C()
{
  result = qword_1EC88E748;
  if (!qword_1EC88E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E748);
  }

  return result;
}

unint64_t sub_1D693F164()
{
  result = qword_1EC88E750;
  if (!qword_1EC88E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E750);
  }

  return result;
}

unint64_t sub_1D693F1BC()
{
  result = qword_1EC88E758;
  if (!qword_1EC88E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E758);
  }

  return result;
}

uint64_t sub_1D693F210(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xED0000656D614E72 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6566694C666C6168 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73DC7C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEA0000000000656CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656C646E75426E69 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726143614C416E69 && a2 == 0xEA00000000006574 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F725065726F6373 && a2 == 0xEC000000656C6966 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736369706F74 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    return 13;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D693F680(uint64_t a1)
{
  sub_1D60747E4(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FormatDerivedDataBindingSwitchResult(0);
  v24 = *(v23 + 20);
  v35 = a1;
  sub_1D60748EC(a1 + v24, v17, sub_1D60747E4);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D6074954(v17, sub_1D60747E4);
    v25 = v36;
  }

  else
  {
    sub_1D607483C(v17, v22);
    v29 = v36;
    if (*(v36 + 9) != 1)
    {
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D5E40444();
      swift_allocError();
      *v31 = 5;
      *(v31 + 8) = 0xD00000000000007ALL;
      *(v31 + 16) = 0x80000001D73DC7E0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_1D6074954(v22, type metadata accessor for FormatSlotDefinitionItemSet);
    }

    v33 = *(type metadata accessor for FormatDerivedDataBindingSwitchCaseResult(0) + 20);
    sub_1D60748EC(v22, v9, type metadata accessor for FormatSlotDefinitionItemSet);
    (*(v19 + 56))(v9, 0, 1, v18);
    v30 = v33;
    sub_1D6C956D4(v29 + v33, v9, v13);
    sub_1D6074954(v9, sub_1D60747E4);
    result = sub_1D6074954(v22, type metadata accessor for FormatSlotDefinitionItemSet);
    if (v1)
    {
      return result;
    }

    v25 = v29;
    sub_1D60749B4(v13, v29 + v30);
  }

  v26 = *(type metadata accessor for FormatDerivedDataBindingSwitchCaseResult(0) + 24);
  v27 = v34;
  result = sub_1D6C956D4(v25 + v26, v35 + *(v23 + 24), v34);
  if (!v1)
  {
    return sub_1D60749B4(v27, v25 + v26);
  }

  return result;
}

uint64_t type metadata accessor for FormatDerivedDataBindingSwitchCaseResult(uint64_t a1)
{
  result = qword_1EC88E760;
  if (!qword_1EC88E760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D693FA48()
{
  sub_1D60747E4(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v24 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v24 - v12;
  v14 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D70A54E4(v13);
  if (!v1)
  {
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      v20 = sub_1D60747E4;
      v21 = v13;
      return sub_1D6074954(v21, v20);
    }

    sub_1D607483C(v13, v18);
    if (*(v0 + 9) != 1)
    {
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D5E40444();
      swift_allocError();
      *v23 = 5;
      *(v23 + 8) = 0xD00000000000007ALL;
      *(v23 + 16) = 0x80000001D73DC7E0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v20 = type metadata accessor for FormatSlotDefinitionItemSet;
      v21 = v18;
      return sub_1D6074954(v21, v20);
    }

    v22 = *(type metadata accessor for FormatDerivedDataBindingSwitchCaseResult(0) + 20);
    sub_1D60748EC(v18, v5, type metadata accessor for FormatSlotDefinitionItemSet);
    (*(v15 + 56))(v5, 0, 1, v14);
    sub_1D6C956D4(v0 + v22, v5, v9);
    sub_1D6074954(v5, sub_1D60747E4);
    sub_1D6074954(v18, type metadata accessor for FormatSlotDefinitionItemSet);
    return sub_1D60749B4(v9, v0 + v22);
  }

  return result;
}

void sub_1D693FD5C(uint64_t a1)
{
  sub_1D60747E4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D693FDD8()
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = sub_1D725891C();
  v54 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v53 - v7;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v9 = sub_1D725C42C();
  __swift_project_value_buffer(v9, qword_1EDFFCFA8);
  v10 = sub_1D725C3FC();
  v11 = sub_1D7262EDC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D5B42000, v10, v11, "Checking expired subscription for notifications disabling...", v12, 2u);
    MEMORY[0x1DA6FD500](v12, -1, -1);
  }

  v13 = [*(v0 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v13, v13 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (!*(&v57 + 1))
  {
    sub_1D5EBD03C(&v58);
    goto LABEL_13;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v14 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v14 = v55;
  v15 = [v55 integerValue];
  if (v15 == -1)
  {

    goto LABEL_30;
  }

  v16 = v15;
LABEL_14:
  if (objc_getAssociatedObject(v13, ~v16))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (!*(&v57 + 1))
  {
    sub_1D5EBD03C(&v58);
LABEL_22:

    if (v16)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v17 = v55;
  v18 = [v17 integerValue];

  if ((v18 ^ v16))
  {
LABEL_30:
    v32 = sub_1D725C3FC();
    v33 = sub_1D7262EDC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "User is a bundle subscriber. Skipping.";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

LABEL_23:
  v19 = *(v0 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_userInfo);
  if (([v19 puzzleNotificationsEnabled] & 1) == 0)
  {
    v32 = sub_1D725C3FC();
    v33 = sub_1D7262EDC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Puzzle notifications already disabled. Skipping.";
LABEL_32:
      _os_log_impl(&dword_1D5B42000, v32, v33, v35, v34, 2u);
      MEMORY[0x1DA6FD500](v34, -1, -1);
    }

LABEL_33:

    return;
  }

  v20 = [v19 puzzleNotificationsLastChangedDate];
  if (v20)
  {
    v21 = v20;
    sub_1D72588BC();

    v22 = v54;
    (*(v54 + 16))(v4, v8, v1);
    v23 = sub_1D725C3FC();
    v24 = sub_1D7262EDC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v58 = v53;
      *v25 = 136315138;
      sub_1D5C44ED8();
      v26 = sub_1D72644BC();
      v28 = v27;
      v29 = *(v22 + 8);
      v29(v4, v1);
      v30 = sub_1D5BC5100(v26, v28, &v58);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1D5B42000, v23, v24, "Puzzle notifications was set by user on [%s]. Skipping disabling notifications.", v25, 0xCu);
      v31 = v53;
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1DA6FD500](v31, -1, -1);
      MEMORY[0x1DA6FD500](v25, -1, -1);

      v29(v8, v1);
    }

    else
    {

      v43 = *(v22 + 8);
      v43(v4, v1);
      v43(v8, v1);
    }
  }

  else
  {
    v36 = sub_1D725C3FC();
    v37 = sub_1D7262EDC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D5B42000, v36, v37, "Disabling notifications state.", v38, 2u);
      MEMORY[0x1DA6FD500](v38, -1, -1);
    }

    v39 = *(v0 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_notificationController);
    *&v58 = 0;
    v40 = [v39 setPuzzleNotificationsEnabled:0 userTriggered:0 error:&v58];
    v41 = v58;
    if (v40)
    {

      v42 = v41;
    }

    else
    {
      v54 = v58;
      v44 = v58;
      v45 = sub_1D725829C();

      swift_willThrow();
      v46 = v45;
      v47 = sub_1D725C3FC();
      v48 = sub_1D7262EDC();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = v45;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_1D5B42000, v47, v48, "Failed to disable puzzle notifications. Error = %@.", v49, 0xCu);
        sub_1D5FE45C0(v50);
        MEMORY[0x1DA6FD500](v50, -1, -1);
        MEMORY[0x1DA6FD500](v49, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_1D6940594(void *a1)
{
  v2 = v1;
  v109[1] = *MEMORY[0x1E69E9840];
  v108 = sub_1D725891C();
  v4 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v5);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v104 = &v102 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v102 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v106 = &v102 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v102 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v102 - v24;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725C42C();
  v107 = __swift_project_value_buffer(v26, qword_1EDFFCFA8);
  v27 = sub_1D725C3FC();
  v28 = sub_1D7262EDC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v105 = v14;
    v30 = v21;
    v31 = v2;
    v32 = v29;
    *v29 = 0;
    _os_log_impl(&dword_1D5B42000, v27, v28, "Checking user puzzle engagement for notifications auto disabling...", v29, 2u);
    v33 = v32;
    v2 = v31;
    v21 = v30;
    v14 = v105;
    MEMORY[0x1DA6FD500](v33, -1, -1);
  }

  v34 = [a1 puzzlesConfig];
  v35 = [*(v2 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_userInfo) puzzleNotificationsLastChangedDate];
  if (v35)
  {
    v36 = v35;
    sub_1D72588BC();

    v37 = v108;
    (*(v4 + 16))(v21, v25, v108);
    v38 = sub_1D725C3FC();
    v39 = sub_1D7262EDC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v37;
      v105 = v34;
      v42 = v40;
      v107 = swift_slowAlloc();
      v109[0] = v107;
      *v42 = 136315138;
      sub_1D5C44ED8();
      v43 = sub_1D72644BC();
      v45 = v44;
      v46 = *(v4 + 8);
      v47 = v21;
      v48 = v41;
      v46(v47, v41);
      v49 = sub_1D5BC5100(v43, v45, v109);

      *(v42 + 4) = v49;
      _os_log_impl(&dword_1D5B42000, v38, v39, "Puzzle notifications were set by user on [%s]. Skipping auto disabling notifications.", v42, 0xCu);
      v50 = v107;
      __swift_destroy_boxed_opaque_existential_1(v107);
      MEMORY[0x1DA6FD500](v50, -1, -1);
      MEMORY[0x1DA6FD500](v42, -1, -1);

      v46(v25, v48);
    }

    else
    {

      v73 = *(v4 + 8);
      v73(v21, v37);
      v73(v25, v37);
    }
  }

  else
  {
    sub_1D72588CC();
    v105 = v34;
    [v34 autoDisableNotificationEngagementInterval];
    v51 = v2;
    v52 = v106;
    sub_1D725880C();
    v53 = v14;
    v54 = v52;
    v55 = v108;
    v103 = *(v4 + 8);
    v103(v53, v108);
    v56 = *(v51 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_puzzleHistoryService + 24);
    v57 = *(v51 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_puzzleHistoryService + 32);
    __swift_project_boxed_opaque_existential_1((v51 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_puzzleHistoryService), v56);
    v58 = (*(v57 + 64))(v54, v56, v57);
    if (*(v58 + 16))
    {
      v59 = v58;
      (*(v4 + 16))(v7, v54, v55);
      v60 = sub_1D725C3FC();
      v61 = v54;
      v62 = sub_1D7262EDC();
      if (os_log_type_enabled(v60, v62))
      {
        v63 = v55;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v109[0] = v65;
        *v64 = 134218242;
        *(v64 + 4) = *(v59 + 16);

        *(v64 + 12) = 2080;
        sub_1D5C44ED8();
        v66 = v61;
        v67 = sub_1D72644BC();
        v69 = v68;
        v70 = v7;
        v71 = v103;
        v103(v70, v63);
        v72 = sub_1D5BC5100(v67, v69, v109);

        *(v64 + 14) = v72;
        _os_log_impl(&dword_1D5B42000, v60, v62, "User did engage with %ld puzzles since %s. Skipping auto disabling notifications.", v64, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x1DA6FD500](v65, -1, -1);
        MEMORY[0x1DA6FD500](v64, -1, -1);

        v71(v66, v63);
      }

      else
      {

        v88 = v103;
        v103(v7, v55);
        v88(v61, v55);
      }
    }

    else
    {
      v102 = v51;

      v74 = v104;
      (*(v4 + 16))(v104, v54, v55);
      v75 = v55;
      v76 = sub_1D725C3FC();
      v77 = sub_1D7262EDC();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v109[0] = v79;
        *v78 = 136315138;
        sub_1D5C44ED8();
        v80 = sub_1D72644BC();
        v81 = v74;
        v83 = v82;
        v84 = v75;
        v85 = v103;
        v103(v81, v84);
        v86 = sub_1D5BC5100(v80, v83, v109);

        *(v78 + 4) = v86;
        _os_log_impl(&dword_1D5B42000, v76, v77, "No puzzle engagement since %s. Auto disabling puzzle notifications...", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v79);
        MEMORY[0x1DA6FD500](v79, -1, -1);
        v87 = v78;
        v54 = v106;
        MEMORY[0x1DA6FD500](v87, -1, -1);
      }

      else
      {

        v89 = v75;
        v85 = v103;
        v103(v74, v89);
      }

      v90 = *(v102 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_notificationController);
      v109[0] = 0;
      if ([v90 setPuzzleNotificationsEnabled:0 userTriggered:0 error:v109])
      {
        v91 = v109[0];
        v85(v54, v108);
      }

      else
      {
        v92 = v109[0];
        v93 = sub_1D725829C();

        swift_willThrow();
        v94 = v93;
        v95 = sub_1D725C3FC();
        v96 = sub_1D7262EBC();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *v97 = 138412290;
          v99 = v93;
          v100 = _swift_stdlib_bridgeErrorToNSError();
          *(v97 + 4) = v100;
          *v98 = v100;
          _os_log_impl(&dword_1D5B42000, v95, v96, "Failed to disable puzzle notifications. Error = %@.", v97, 0xCu);
          sub_1D5FE45C0(v98);
          v101 = v98;
          v54 = v106;
          MEMORY[0x1DA6FD500](v101, -1, -1);
          MEMORY[0x1DA6FD500](v97, -1, -1);
        }

        else
        {
        }

        v85(v54, v108);
      }
    }
  }
}

void sub_1D6940FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *&a5[OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_appConfigurationManager];
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = sub_1D5DF743C;
  v12[6] = v10;
  v15[4] = sub_1D6941264;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D5BE62C8;
  v15[3] = &block_descriptor_55;
  v13 = _Block_copy(v15);

  v14 = a5;

  [v11 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v13);
}

void sub_1D6941110(void *a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_1D693FDD8();
    sub_1D6940594(a1);
    a6();

    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      sub_1D6941274();
      v10 = swift_allocError();
      a2 = 0;
      v9 = v10;
    }

    v11 = a2;
    a3(v9);
  }
}

unint64_t sub_1D6941274()
{
  result = qword_1EC88E770;
  if (!qword_1EC88E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E770);
  }

  return result;
}

void sub_1D69412C8()
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v0 = sub_1D725C42C();
  __swift_project_value_buffer(v0, qword_1EDFFCFA8);
  v1 = sub_1D725C3FC();
  v2 = sub_1D7262EDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D5B42000, v1, v2, "PuzzleNotificationAutoEnableStartupTask received a subscription expired notification.", v3, 2u);
    MEMORY[0x1DA6FD500](v3, -1, -1);
  }

  sub_1D693FDD8();
}

unint64_t sub_1D69413C8()
{
  result = qword_1EC88E780;
  if (!qword_1EC88E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E780);
  }

  return result;
}

uint64_t FormatItemNodeLayoutContext.annotator.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

uint64_t FormatItemNodeLayoutContext.copy(itemFrame:sectionFrame:)@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v19 = *v9;
  v20 = v9[1];
  v22 = v9[2];
  v21 = v9[3];
  v24 = v9[4];
  v23 = v9[5];
  v25 = type metadata accessor for FormatItemNodeLayoutContext(0);
  sub_1D5BC8994(v9 + v25[7], a1 + v25[7], type metadata accessor for FeedItem);
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v22;
  a1[3] = v21;
  a1[4] = v24;
  a1[5] = v23;
  v26 = (a1 + v25[8]);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v27 = (a1 + v25[9]);
  *v27 = a6;
  v27[1] = a7;
  v27[2] = a8;
  v27[3] = a9;
}

uint64_t FormatItemNodeLayoutContext.modelIdentifier.getter()
{
  v1 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for WebEmbedDataVisualization(0);
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FormatItemNodeLayoutContext(0);
  sub_1D5BC8994(v0 + *(v25 + 28), v24, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    v28 = v56;
    switch(EnumCaseMultiPayload)
    {
      case 3:
        sub_1D6941F7C(v24, v20, type metadata accessor for FeedHeadline);
        v36 = [v20[5] identifier];
        v27 = sub_1D726207C();

        sub_1D5BCA80C(v20, type metadata accessor for FeedHeadline);
        return v27;
      case 4:
        sub_1D6941F7C(v24, v16, type metadata accessor for FeedWebEmbed);
        sub_1D5BC8994(&v16[*(v13 + 52)], v12, sub_1D5B4D72C);
        v51 = (*(v28 + 48))(v12, 1, v5);
        v52 = sub_1D5B4D72C;
        if (v51 != 1)
        {
          sub_1D5BC8994(v12, v8, type metadata accessor for WebEmbedDataVisualization);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v54 = *v8;
            sub_1D5BCA80C(v12, type metadata accessor for WebEmbedDataVisualization);
            *&v57 = v54;
            v27 = SportsDataVisualization.umcCanonicalId.getter();
            sub_1D5BCA80C(v16, type metadata accessor for FeedWebEmbed);

            return v27;
          }

          sub_1D5BCA80C(v8, type metadata accessor for WebEmbedDataVisualization);
          v52 = type metadata accessor for WebEmbedDataVisualization;
        }

        sub_1D5BCA80C(v12, v52);
        v37 = type metadata accessor for FeedWebEmbed;
        v38 = v16;
        goto LABEL_21;
      case 5:
        v29 = *(v24 + 7);
        v63 = *(v24 + 6);
        *v64 = v29;
        *&v64[9] = *(v24 + 121);
        v30 = *(v24 + 1);
        v57 = *v24;
        v58 = v30;
        v31 = *(v24 + 3);
        v59 = *(v24 + 2);
        v32 = *(v24 + 4);
        v62 = *(v24 + 5);
        v60 = v31;
        v61 = v32;
        v33 = [v57 identifier];
        v27 = sub_1D726207C();

        sub_1D5ECF320(&v57);
        return v27;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload > 13)
  {
    if (EnumCaseMultiPayload == 14)
    {
      v45 = *(v24 + 11);
      v66 = *(v24 + 10);
      v67 = v45;
      v68 = *(v24 + 12);
      v46 = *(v24 + 7);
      v63 = *(v24 + 6);
      *v64 = v46;
      v47 = *(v24 + 9);
      *&v64[16] = *(v24 + 8);
      v65 = v47;
      v48 = *(v24 + 3);
      v59 = *(v24 + 2);
      v49 = *(v24 + 4);
      v62 = *(v24 + 5);
      v60 = v48;
      v61 = v49;
      v50 = *v24;
      v58 = *(v24 + 1);
      v57 = v50;
      v27 = *(&v59 + 1);

      sub_1D5F2DF58(&v57);
      return v27;
    }

    if (EnumCaseMultiPayload == 15)
    {
      v34 = *(v24 + 3);
      v35 = *(v24 + 4);
      v27 = *(v24 + 5);

      sub_1D5BF6680(v34, v35);
      swift_unknownObjectRelease();

      return v27;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v39 = *(v24 + 7);
    v63 = *(v24 + 6);
    *v64 = v39;
    *&v64[16] = *(v24 + 8);
    LOBYTE(v65) = v24[144];
    v40 = *(v24 + 3);
    v59 = *(v24 + 2);
    v41 = *(v24 + 4);
    v42 = *(v24 + 5);
    v60 = v40;
    v61 = v41;
    v62 = v42;
    v43 = *(v24 + 1);
    v57 = *v24;
    v58 = v43;
    v44 = [v43 identifier];
    v27 = sub_1D726207C();

    sub_1D5EE5B54(&v57);
    return v27;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_14:
    v37 = type metadata accessor for FeedItem;
    v38 = v24;
LABEL_21:
    sub_1D5BCA80C(v38, v37);
    return 0;
  }

  sub_1D6941F7C(v24, v4, type metadata accessor for FeedCustomItem);
  v27 = *v4;

  sub_1D5BCA80C(v4, type metadata accessor for FeedCustomItem);
  return v27;
}

Swift::String __swiftcall FormatItemNodeLayoutContext.sourceIdentifier(layoutIdentifier:)(Swift::String layoutIdentifier)
{
  object = layoutIdentifier._object;
  countAndFlagsBits = layoutIdentifier._countAndFlagsBits;
  type metadata accessor for FormatItemNodeLayoutContext(0);
  v3 = FeedItem.identifier.getter();
  v5 = v4;
  v6 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1D5B858EC((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v9;
  v10 = &v6[16 * v8];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  v11 = *(v6 + 3);

  if ((v8 + 2) > (v11 >> 1))
  {
    v6 = sub_1D5B858EC((v11 > 1), v8 + 2, 1, v6);
  }

  *(v6 + 2) = v8 + 2;
  v12 = &v6[16 * v9];
  *(v12 + 4) = countAndFlagsBits;
  *(v12 + 5) = object;
  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v13 = sub_1D7261F3C();
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_1D6941E70@<X0>(int *a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v21 = *v10;
  v22 = v10[1];
  v24 = v10[2];
  v23 = v10[3];
  v26 = v10[4];
  v25 = v10[5];
  sub_1D5BC8994(v10 + a1[7], a2 + a1[7], type metadata accessor for FeedItem);
  *a2 = v21;
  a2[1] = v22;
  a2[2] = v24;
  a2[3] = v23;
  a2[4] = v26;
  a2[5] = v25;
  v27 = a1[9];
  v28 = (a2 + a1[8]);
  *v28 = a3;
  v28[1] = a4;
  v28[2] = a5;
  v28[3] = a6;
  v29 = (a2 + v27);
  *v29 = a7;
  v29[1] = a8;
  v29[2] = a9;
  v29[3] = a10;
}

uint64_t sub_1D6941F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D694200C(uint64_t a1)
{
  type metadata accessor for GroupLayoutKey(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FormatPackageInventory(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FeedItem(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGRect(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D69420D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D69421C0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6942294(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6942378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6944090(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D69423A8(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657275;
  v3 = 0x74617265706D6574;
  v4 = 0xEE00657275746172;
  v5 = 0x65706D6554776F6CLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001D73BAC60;
  }

  if (*v1)
  {
    v3 = 0x706D655468676968;
    v2 = 0xEF65727574617265;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D6942540@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v244 = a3;
  v248 = a2;
  v245 = a4;
  v247 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v247, v5);
  v242 = &v221 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v230 = &v221 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v241 = &v221 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v238 = &v221 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v224 = &v221 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v234 = &v221 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v232 = &v221 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v231 = &v221 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v228 = &v221 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v239 = &v221 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v225 = &v221 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v235 = &v221 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v221 = &v221 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v221 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v229 = &v221 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v240 = &v221 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v237 = &v221 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v236 = &v221 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v222 = &v221 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v221 - v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v221 - v68;
  MEMORY[0x1EEE9AC00](v70, v71);
  v227 = &v221 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v226 = &v221 - v75;
  MEMORY[0x1EEE9AC00](v76, v77);
  v223 = &v221 - v78;
  MEMORY[0x1EEE9AC00](v79, v80);
  v233 = &v221 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  v85 = &v221 - v84;
  MEMORY[0x1EEE9AC00](v86, v87);
  v89 = &v221 - v88;
  MEMORY[0x1EEE9AC00](v90, v91);
  v93 = &v221 - v92;
  v94 = *a1;
  sub_1D67ED888(0);
  v95 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v246 = *(v95 + 72);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1D727E3C0;
  v250 = (v97 + v96);
  v98 = v97;
  if (v94 > 1)
  {
    if (v94 == 2)
    {
      sub_1D60B1278(v248, v46);
      v106 = *(v247 + 36);
      v107 = type metadata accessor for FeedWeather.Temperature(0);
      v108 = v244;
      v109 = v243;
      v110 = sub_1D6895B0C(&v46[v106 + *(v107 + 24)], v244, 1, 0, 0);
      v112 = v246;
      if (v109)
      {

        v113 = 0;
        v114 = 0;
      }

      else
      {
        v113 = v110;
        v114 = v111;
      }

      v137 = v225;
      v138 = v221;
      sub_1D711F844(0xD000000000000018, 0x80000001D73D7420, v113, v114, v250);
      sub_1D60B12DC(v46);
      sub_1D60B1278(v248, v138);
      v144 = sub_1D6895B0C(v138 + *(v247 + 36) + *(v107 + 24), v108, 1, 0, 0x40u);
      v145 = v98;
      sub_1D711F844(0xD000000000000023, 0x80000001D73D7440, v144, v146, &v250[v112]);
      sub_1D60B12DC(v138);
      v147 = v248;
      v148 = v235;
      sub_1D60B1278(v248, v235);
      v162 = sub_1D6895B0C(v148 + *(v247 + 36) + *(v107 + 24), v108, 0, 0, 0x40u);
      sub_1D711F844(0xD000000000000023, 0x80000001D73D7470, v162, v163, &v250[2 * v112]);
      sub_1D60B12DC(v235);
      sub_1D60B1278(v147, v137);
      v213 = v145;
      v173 = sub_1D6895B0C(v137 + *(v247 + 36) + *(v107 + 24), v108, 1, 0, 0x80u);
      v174 = v228;
      sub_1D711F844(0xD000000000000026, 0x80000001D73D74A0, v173, v175, &v250[3 * v112]);
      sub_1D60B12DC(v137);
      v176 = v239;
      sub_1D60B1278(v147, v239);
      v186 = sub_1D6895B0C(v176 + *(v247 + 36) + *(v107 + 24), v108, 0, 0, 0x80u);
      sub_1D711F844(0xD000000000000026, 0x80000001D73D74D0, v186, v187, &v250[4 * v112]);
      sub_1D60B12DC(v239);
      sub_1D60B1278(v147, v174);
      v200 = sub_1D6895B0C(v174 + *(v247 + 36) + *(v107 + 24), v108, 1, 0, 0xC0u);
      v201 = v231;
      sub_1D711F844(0xD000000000000022, 0x80000001D73D7500, v200, v202, &v250[5 * v112]);
      sub_1D60B12DC(v174);
      sub_1D60B1278(v147, v201);
      v203 = sub_1D6895B0C(v201 + *(v247 + 36) + *(v107 + 24), v108, 0, 0, 0xC0u);
      sub_1D711F844(0xD000000000000022, 0x80000001D73D7530, v203, v215, &v250[6 * v112]);
      v199 = v201;
    }

    else
    {
      v124 = v248;
      v125 = v232;
      sub_1D60B1278(v248, v232);
      v126 = v247;
      v127 = *(v247 + 36);
      v128 = type metadata accessor for FeedWeather.Temperature(0);
      v129 = v244;
      v130 = v243;
      v131 = sub_1D6895B0C(v125 + v127 + *(v128 + 28), v244, 1, 0, 0);
      if (v130)
      {
        v133 = v98;

        v134 = 0;
        v135 = 0;
      }

      else
      {
        v134 = v131;
        v135 = v132;
        v133 = v98;
      }

      v140 = v224;
      sub_1D711F844(0xD00000000000001FLL, 0x80000001D73D72E0, v134, v135, v250);
      sub_1D60B12DC(v232);
      v141 = v234;
      sub_1D60B1278(v124, v234);
      v152 = sub_1D6895B0C(v141 + *(v126 + 36) + *(v128 + 28), v129, 1, 0, 0x40u);
      v153 = v133;
      v154 = v246;
      sub_1D711F844(0xD00000000000002ALL, 0x80000001D73D7300, v152, v155, &v250[v246]);
      sub_1D60B12DC(v234);
      sub_1D60B1278(v124, v140);
      v168 = sub_1D6895B0C(v140 + *(v126 + 36) + *(v128 + 28), v129, 0, 0, 0x40u);
      sub_1D711F844(0xD00000000000002ALL, 0x80000001D73D7330, v168, v169, &v250[2 * v154]);
      sub_1D60B12DC(v140);
      v170 = v238;
      sub_1D60B1278(v124, v238);
      v180 = sub_1D6895B0C(v170 + *(v126 + 36) + *(v128 + 28), v129, 1, 0, 0x80u);
      v181 = v153;
      sub_1D711F844(0xD00000000000002DLL, 0x80000001D73D7360, v180, v182, &v250[3 * v154]);
      sub_1D60B12DC(v238);
      v183 = v241;
      sub_1D60B1278(v124, v241);
      v192 = sub_1D6895B0C(v183 + *(v126 + 36) + *(v128 + 28), v129, 0, 0, 0x80u);
      v213 = v181;
      sub_1D711F844(0xD00000000000002DLL, 0x80000001D73D7390, v192, v193, &v250[4 * v154]);
      sub_1D60B12DC(v241);
      v194 = v124;
      v195 = v230;
      sub_1D60B1278(v194, v230);
      v208 = sub_1D6895B0C(v195 + *(v126 + 36) + *(v128 + 28), v129, 1, 0, 0xC0u);
      sub_1D711F844(0xD000000000000029, 0x80000001D73D73C0, v208, v209, &v250[5 * v154]);
      sub_1D60B12DC(v195);
      v210 = v242;
      sub_1D60B1278(v248, v242);
      v211 = *(v126 + 36) + *(v128 + 28);
      sub_1D5FBAE1C(v129, v249);
      v217 = sub_1D6895B0C(v210 + v211, v129, 0, 0, 0xC0u);
      v219 = v218;
      sub_1D6202060(v129);
      sub_1D711F844(0xD000000000000029, 0x80000001D73D73F0, v217, v219, &v250[6 * v154]);
      v199 = v242;
    }
  }

  else if (v94)
  {
    sub_1D60B1278(v248, v69);
    v115 = v247;
    v116 = *(v247 + 36);
    v117 = type metadata accessor for FeedWeather.Temperature(0);
    v118 = v244;
    v119 = v243;
    v120 = sub_1D6895B0C(&v69[v116 + *(v117 + 20)], v244, 1, 0, 0);
    if (v119)
    {

      v122 = 0;
      v123 = 0;
    }

    else
    {
      v122 = v120;
      v123 = v121;
    }

    v139 = v222;
    sub_1D711F844(0xD000000000000019, 0x80000001D73D7560, v122, v123, v250);
    sub_1D60B12DC(v69);
    sub_1D60B1278(v248, v65);
    v149 = sub_1D6895B0C(&v65[*(v115 + 36) + *(v117 + 20)], v118, 1, 0, 0x40u);
    sub_1D711F844(0xD000000000000024, 0x80000001D73D7580, v149, v150, &v250[v246]);
    sub_1D60B12DC(v65);
    v151 = v248;
    sub_1D60B1278(v248, v139);
    v164 = sub_1D6895B0C(v139 + *(v115 + 36) + *(v117 + 20), v118, 0, 0, 0x40u);
    v165 = v246;
    sub_1D711F844(0xD000000000000024, 0x80000001D73D75B0, v164, v166, &v250[2 * v246]);
    sub_1D60B12DC(v139);
    v167 = v236;
    sub_1D60B1278(v151, v236);
    v177 = sub_1D6895B0C(v167 + *(v115 + 36) + *(v117 + 20), v118, 1, 0, 0x80u);
    sub_1D711F844(0xD000000000000027, 0x80000001D73D75E0, v177, v178, &v250[3 * v165]);
    sub_1D60B12DC(v236);
    v179 = v237;
    sub_1D60B1278(v151, v237);
    v188 = sub_1D6895B0C(v179 + *(v115 + 36) + *(v117 + 20), v118, 0, 0, 0x80u);
    v189 = v98;
    sub_1D711F844(0xD000000000000027, 0x80000001D73D7610, v188, v190, &v250[4 * v165]);
    sub_1D60B12DC(v237);
    v191 = v240;
    sub_1D60B1278(v151, v240);
    v204 = sub_1D6895B0C(v191 + *(v115 + 36) + *(v117 + 20), v118, 1, 0, 0xC0u);
    v213 = v189;
    sub_1D711F844(0xD000000000000023, 0x80000001D73D7640, v204, v205, &v250[5 * v165]);
    sub_1D60B12DC(v240);
    v206 = v151;
    v199 = v229;
    sub_1D60B1278(v206, v229);
    v207 = sub_1D6895B0C(v199 + *(v115 + 36) + *(v117 + 20), v118, 0, 0, 0xC0u);
    sub_1D711F844(0xD000000000000023, 0x80000001D73D7670, v207, v216, &v250[6 * v165]);
  }

  else
  {
    v99 = v97;
    sub_1D60B1278(v248, v93);
    v100 = v244;
    v101 = v243;
    v102 = sub_1D6895B0C(&v93[*(v247 + 36)], v244, 1, 0, 0);
    if (v101)
    {

      v104 = 0;
      v105 = 0;
    }

    else
    {
      v104 = v102;
      v105 = v103;
    }

    sub_1D711F844(0xD000000000000014, 0x80000001D73D76A0, v104, v105, v250);
    sub_1D60B12DC(v93);
    sub_1D60B1278(v248, v89);
    v136 = v247;
    v142 = sub_1D6895B0C(&v89[*(v247 + 36)], v100, 1, 0, 0x40u);
    sub_1D711F844(0xD00000000000001FLL, 0x80000001D73D76C0, v142, v143, &v250[v246]);
    sub_1D60B12DC(v89);
    sub_1D60B1278(v248, v85);
    v156 = sub_1D6895B0C(&v85[*(v136 + 36)], v100, 0, 0, 0x40u);
    v157 = v226;
    sub_1D711F844(0xD00000000000001FLL, 0x80000001D73D76E0, v156, v158, &v250[2 * v246]);
    sub_1D60B12DC(v85);
    v159 = v248;
    v160 = v233;
    sub_1D60B1278(v248, v233);
    v161 = sub_1D6895B0C(v160 + *(v136 + 36), v100, 1, 0, 0x80u);
    sub_1D711F844(0xD000000000000022, 0x80000001D73D7700, v161, v171, &v250[3 * v246]);
    sub_1D60B12DC(v233);
    v172 = v223;
    sub_1D60B1278(v159, v223);
    v184 = sub_1D6895B0C(v172 + *(v136 + 36), v100, 0, 0, 0x80u);
    sub_1D711F844(0xD000000000000022, 0x80000001D73D7730, v184, v185, &v250[4 * v246]);
    sub_1D60B12DC(v172);
    sub_1D60B1278(v159, v157);
    v196 = sub_1D6895B0C(v157 + *(v136 + 36), v100, 1, 0, 0xC0u);
    sub_1D711F844(0xD00000000000001ELL, 0x80000001D73D7760, v196, v197, &v250[5 * v246]);
    sub_1D60B12DC(v157);
    v198 = v159;
    v199 = v227;
    sub_1D60B1278(v198, v227);
    v212 = sub_1D6895B0C(v199 + *(v136 + 36), v100, 0, 0, 0xC0u);
    v213 = v99;
    sub_1D711F844(0xD00000000000001ELL, 0x80000001D73D7780, v212, v214, &v250[6 * v246]);
  }

  result = sub_1D60B12DC(v199);
  *v245 = v213;
  return result;
}

uint64_t _s8NewsFeed20FormatWeatherBindingV11TemperatureO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  v8 = (v4 >> 4) & 3;
  v9 = v7 & 0x30;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (v9 != 32)
      {
        goto LABEL_12;
      }
    }

    else if (v9 != 48)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v8)
  {
    if (v9 != 16)
    {
      goto LABEL_12;
    }

LABEL_9:
    v15 = *a1;
    v16 = v2;
    v17 = v4 & 0xCF;
    v12 = v6;
    v13 = v5;
    v14 = v7 & 0xCF;
    goto LABEL_10;
  }

  if ((v7 & 0x30) != 0)
  {
LABEL_12:
    sub_1D69440DC(*a1, v2, v4, sub_1D5E1DCD0);
    sub_1D69440DC(v6, v5, v7, sub_1D5E1DCD0);
    sub_1D69440DC(v3, v2, v4, sub_1D5E1E15C);
    sub_1D69440DC(v6, v5, v7, sub_1D5E1E15C);
    v10 = 0;
    return v10 & 1;
  }

  v15 = *a1;
  v16 = v2;
  v17 = v4;
  v12 = v6;
  v13 = v5;
  v14 = v7;
LABEL_10:
  sub_1D69440DC(v6, v5, v7, sub_1D5E1DCD0);
  sub_1D69440DC(v3, v2, v4, sub_1D5E1DCD0);
  sub_1D69440DC(v3, v2, v4, sub_1D5E1DCD0);
  sub_1D69440DC(v6, v5, v7, sub_1D5E1DCD0);
  v10 = _s8NewsFeed17FormatTemperatureO2eeoiySbAC_ACtFZ_0(&v15, &v12);
  sub_1D69440DC(v3, v2, v4, sub_1D5E1E15C);
  sub_1D69440DC(v6, v5, v7, sub_1D5E1E15C);
  sub_1D69440DC(v6, v5, v7, sub_1D5E1E15C);
  sub_1D69440DC(v3, v2, v4, sub_1D5E1E15C);
  return v10 & 1;
}

unint64_t sub_1D6943DE8(uint64_t a1)
{
  result = sub_1D6943E10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6943E10()
{
  result = qword_1EC88E790;
  if (!qword_1EC88E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E790);
  }

  return result;
}

unint64_t sub_1D6943E64(void *a1)
{
  a1[1] = sub_1D668F9C4();
  a1[2] = sub_1D66FDC1C();
  result = sub_1D6943E9C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6943E9C()
{
  result = qword_1EC88E798;
  if (!qword_1EC88E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E798);
  }

  return result;
}

unint64_t sub_1D6943F3C()
{
  result = qword_1EC88E7A0;
  if (!qword_1EC88E7A0)
  {
    sub_1D6943F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E7A0);
  }

  return result;
}

void sub_1D6943F94()
{
  if (!qword_1EC88E7A8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88E7A8);
    }
  }
}

unint64_t sub_1D6943FE8()
{
  result = qword_1EC88E7B0;
  if (!qword_1EC88E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E7B0);
  }

  return result;
}

unint64_t sub_1D694403C()
{
  result = qword_1EC88E7B8;
  if (!qword_1EC88E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E7B8);
  }

  return result;
}

unint64_t sub_1D6944090(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D69440DC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = a3 & 0xFFFFFFCF;
  if (((a3 >> 4) & 3) == 0)
  {
    v4 = a3;
  }

  if (((a3 >> 4) & 3) <= 1)
  {
    v5 = v4;
  }

  else
  {
    v5 = a3 & 0xFFFFFFCF;
  }

  return a4(a1, a2, v5);
}

uint64_t FeedWebEmbed.init(identifier:url:actionURL:indexFileURLPromise:dataURLPromise:headline:dataVisualization:isLiveUpdating:dismissingIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v48 = a7;
  v49 = a5;
  v50 = a6;
  v52 = a11;
  v53 = a12;
  v51 = a10;
  v18 = type metadata accessor for WebEmbedDataVisualization(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = xmmword_1D727F470;
  *(a9 + 16) = 1;
  *(a9 + 24) = xmmword_1D727F480;
  *(a9 + 40) = a1;
  *(a9 + 48) = a2;
  v27 = type metadata accessor for FeedWebEmbed(0);
  v28 = v27[8];
  v29 = sub_1D72585BC();
  v54 = *(v29 - 8);
  v55 = v29;
  v30 = *(v54 + 16);
  v31 = a9 + v28;
  v32 = a3;
  v33 = a4;
  v34 = v48;
  v56 = v32;
  v30(v31);
  sub_1D5C00EB0(a4, a9 + v27[9], sub_1D5B4D3E0);
  v35 = v50;
  *(a9 + v27[10]) = v49;
  *(a9 + v27[11]) = v35;
  sub_1D5C00EB0(v34, a9 + v27[12], sub_1D5B69BE0);
  sub_1D5C00EB0(a8, a9 + v27[13], sub_1D5B4D72C);
  *(a9 + v27[14]) = v51 & 1;
  v36 = (a9 + v27[15]);
  v37 = v53;
  *v36 = v52;
  v36[1] = v37;
  sub_1D5C00EB0(a8, v26, sub_1D5B4D72C);
  v38 = (*(v19 + 48))(v26, 1, v18);
  v39 = sub_1D5B4D72C;
  if (v38 == 1)
  {
    goto LABEL_4;
  }

  sub_1D5C00EB0(v26, v22, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D69484B4(v22, type metadata accessor for WebEmbedDataVisualization);
    v39 = type metadata accessor for WebEmbedDataVisualization;
LABEL_4:
    sub_1D69484B4(v26, v39);
    goto LABEL_5;
  }

  v41 = *v22;
  sub_1D69484B4(v26, type metadata accessor for WebEmbedDataVisualization);
  v42 = v41 >> 61;
  if ((v41 >> 61) <= 2)
  {
    v43 = 0x2000400800;
    if (v42)
    {
      if (v42 == 1)
      {
        v44 = 8390656;
        v43 = 0x2000800800;
      }

      else
      {
        v43 = 0x2020000800;
        v44 = 536872960;
      }
    }

    else
    {
      *a9 = 4196352;

      v45 = SportsScoreDataVisualization.isFeatured.getter();

      if ((v45 & 1) == 0)
      {
        goto LABEL_22;
      }

      v44 = 4196384;
      v43 = 0x2000400820;
    }
  }

  else if (v42 > 4)
  {
    if (v42 == 5)
    {
      v43 = 0x2800000800;
      v44 = 0x800000800;
    }

    else
    {
      v43 = 0x3000000800;
      v44 = 0x1000000800;
    }
  }

  else if (v42 == 3)
  {
    v43 = 0x2200000800;
    v44 = 0x200000800;
  }

  else
  {
    v43 = 0x2400000800;
    v44 = 0x400000800;
  }

  *a9 = v44;
LABEL_22:
  v57 = v41;
  SportsDataVisualization.event.getter();
  v47 = v46;

  if (v47)
  {
    swift_unknownObjectRelease();
    sub_1D69484B4(a8, sub_1D5B4D72C);
    sub_1D69484B4(v34, sub_1D5B69BE0);
    sub_1D69484B4(v33, sub_1D5B4D3E0);
    result = (*(v54 + 8))(v56, v55);
    *a9 = v43;
    return result;
  }

LABEL_5:
  sub_1D69484B4(a8, sub_1D5B4D72C);
  sub_1D69484B4(v34, sub_1D5B69BE0);
  sub_1D69484B4(v33, sub_1D5B4D3E0);
  return (*(v54 + 8))(v56, v55);
}

uint64_t sub_1D6944620()
{
  v1 = type metadata accessor for WebEmbedDataVisualization(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v0 + *(v10 + 52), v9, sub_1D5B4D72C);
  if ((*(v2 + 48))(v9, 1, v1) != 1)
  {
    sub_1D5C00EB0(v9, v5, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D69484B4(v5, type metadata accessor for WebEmbedDataVisualization);
      sub_1D69484B4(v9, type metadata accessor for WebEmbedDataVisualization);
      return MEMORY[0x1E69E7CC0];
    }

    v11 = *v5;
    sub_1D69484B4(v9, type metadata accessor for WebEmbedDataVisualization);
    v12 = v11 >> 61;
    if ((v11 >> 61) > 2)
    {
      if (v12 > 4)
      {
        if (v12 == 5)
        {
          v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v14 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config;
        }

        else
        {
          v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v14 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config;
        }
      }

      else if (v12 == 3)
      {
        v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v14 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config;
      }

      else
      {
        v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v14 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config;
      }

LABEL_20:
      v24 = v13 + *v14;
      if (*(v24 + 8))
      {
        v25 = *(v24 + 32);

        return v25;
      }

      goto LABEL_24;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v14 = &OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config;
        goto LABEL_20;
      }

      sub_1D5E4CF90(0);

      sub_1D725BE8C();
      v18 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
      v19 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
      v20 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16);
      v21 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 24);
      v22 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 40);
      v23 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 32);
      sub_1D5F8B638(v18, v19, v20);

      if (v19)
      {

        sub_1D5F8BBC8(v18, v19, v20, v21, v23, v22);

        return v23;
      }
    }

    else
    {
      v15 = *(v11 + 16) + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config;
      if (*(v15 + 8))
      {
        v16 = *(v15 + 32);

        return v16;
      }
    }

LABEL_24:

    return MEMORY[0x1E69E7CC0];
  }

  sub_1D69484B4(v9, sub_1D5B4D72C);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D69449D8()
{
  v1 = type metadata accessor for WebEmbedDataVisualization(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v0 + *(v10 + 52), v9, sub_1D5B4D72C);
  if ((*(v2 + 48))(v9, 1, v1) != 1)
  {
    sub_1D5C00EB0(v9, v5, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D69484B4(v5, type metadata accessor for WebEmbedDataVisualization);
      sub_1D69484B4(v9, type metadata accessor for WebEmbedDataVisualization);
      return MEMORY[0x1E69E7CD0];
    }

    v11 = *v5;
    sub_1D69484B4(v9, type metadata accessor for WebEmbedDataVisualization);
    v12 = v11 >> 61;
    if ((v11 >> 61) > 2)
    {
      if (v12 > 4)
      {
        if (v12 == 5)
        {
          v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v14 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config;
        }

        else
        {
          v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v14 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config;
        }
      }

      else if (v12 == 3)
      {
        v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v14 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config;
      }

      else
      {
        v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v14 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config;
      }

LABEL_20:
      v24 = v13 + *v14;
      if (*(v24 + 8))
      {
        v25 = *(v24 + 24);

        return v25;
      }

      goto LABEL_24;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v14 = &OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config;
        goto LABEL_20;
      }

      sub_1D5E4CF90(0);

      sub_1D725BE8C();
      v18 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
      v19 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
      v20 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16);
      v21 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 32);
      v22 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 40);
      v23 = *(v27 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 24);
      sub_1D5F8B638(v18, v19, v20);

      if (v19)
      {

        sub_1D5F8BBC8(v18, v19, v20, v23, v21, v22);

        return v23;
      }
    }

    else
    {
      v15 = *(v11 + 16) + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config;
      if (*(v15 + 8))
      {
        v16 = *(v15 + 24);

        return v16;
      }
    }

LABEL_24:

    return MEMORY[0x1E69E7CD0];
  }

  sub_1D69484B4(v9, sub_1D5B4D72C);
  return MEMORY[0x1E69E7CD0];
}

uint64_t FeedWebEmbed.debugIdentifier.getter()
{
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v0 + *(v5 + 48), v4, sub_1D5B69BE0);
  v6 = type metadata accessor for FeedHeadline(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1D69484B4(v4, sub_1D5B69BE0);
    return sub_1D72583DC();
  }

  else
  {
    v8 = [v4[5] identifier];
    v9 = sub_1D726207C();

    sub_1D69484B4(v4, type metadata accessor for FeedHeadline);
    return v9;
  }
}

uint64_t FeedWebEmbed.debugSourceName.getter()
{
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v0 + *(v5 + 48), v4, sub_1D5B69BE0);
  v6 = type metadata accessor for FeedHeadline(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v8 = sub_1D5B69BE0;
  if (v7 == 1 || (v9 = [v4[5] sourceChannel], v8 = type metadata accessor for FeedHeadline, !v9))
  {
    v11 = 0;
  }

  else
  {
    v10 = [v9 name];
    swift_unknownObjectRelease();
    v11 = sub_1D726207C();

    v8 = type metadata accessor for FeedHeadline;
  }

  sub_1D69484B4(v4, v8);
  return v11;
}

uint64_t FeedWebEmbed.debugTitle.getter()
{
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v0 + *(v5 + 48), v4, sub_1D5B69BE0);
  v6 = type metadata accessor for FeedHeadline(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v8 = sub_1D5B69BE0;
  if (v7 == 1 || (v9 = [v4[5] title], v8 = type metadata accessor for FeedHeadline, !v9))
  {
    sub_1D69484B4(v4, v8);
    return sub_1D72583DC();
  }

  else
  {
    v10 = v9;
    v11 = sub_1D726207C();

    sub_1D69484B4(v4, type metadata accessor for FeedHeadline);
    return v11;
  }
}

id FeedWebEmbed.debugAssetHandle.getter()
{
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v0 + *(v5 + 48), v4, sub_1D5B69BE0);
  v6 = type metadata accessor for FeedHeadline(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v8 = sub_1D5B69BE0;
  if (v7 == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v4[5] thumbnail];
    v9 = [v10 thumbnailAssetHandle];

    v8 = type metadata accessor for FeedHeadline;
  }

  sub_1D69484B4(v4, v8);
  return v9;
}

id FeedWebEmbed.debugScoreProfile.getter()
{
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v0 + *(v5 + 48), v4, sub_1D5B69BE0);
  v6 = type metadata accessor for FeedHeadline(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v8 = sub_1D5B69BE0;
  if (v7 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v4[5] scoreProfile];
    v8 = type metadata accessor for FeedHeadline;
  }

  sub_1D69484B4(v4, v8);
  return v9;
}

void *FeedWebEmbed.additionalFormatFeedItems.getter()
{
  v108 = type metadata accessor for WebEmbedDataVisualization(0);
  v110 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v1);
  v3 = v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v106 = (v100 - v6);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v107 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v105 = v100 - v12;
  v13 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FeedHeadline(0);
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v103 = v100 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v100 - v35;
  v128 = MEMORY[0x1E69E7CC0];
  v104 = type metadata accessor for FeedWebEmbed(0);
  v37 = *(v104 + 48);
  v109 = v0;
  sub_1D5C00EB0(v0 + v37, v24, sub_1D5B69BE0);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1D69484B4(v24, sub_1D5B69BE0);
    v38 = v110;
    v39 = v3;
    v40 = v108;
    goto LABEL_21;
  }

  v102 = v3;
  sub_1D5BE2FEC(v24, v36, type metadata accessor for FeedHeadline);
  v41 = *(v36 + 5);
  v42 = sub_1D726045C();
  (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
  v43 = v25[10];
  v101 = v36;
  sub_1D5C00EB0(&v36[v43], v16, type metadata accessor for FeedHeadline.State);
  *&v29[v25[12]] = xmmword_1D727C330;
  v100[1] = swift_getObjectType();
  v44 = [v41 identifier];
  v45 = sub_1D726207C();
  v47 = v46;

  *v29 = v45;
  *(v29 + 1) = v47;
  *(v29 + 5) = v41;
  *(v29 + 6) = 0;
  sub_1D5C00EB0(v20, &v29[v25[11]], sub_1D5D504A0);
  sub_1D5C00EB0(v16, &v29[v25[10]], type metadata accessor for FeedHeadline.State);
  *&v29[v25[14]] = 0;
  v29[56] = 0;
  v48 = [swift_unknownObjectRetain() title];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 ne_isNaturallyRTL];

    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  *(v29 + 2) = v51;
  v29[24] = 0;
  sub_1D5BC7BD4(&v114);
  v40 = v108;
  v39 = v102;
  v52 = v101;
  if (v16[v13[8]] - 1 <= 1 && (v114 & 0x1000) == 0)
  {
    *&v114 = v114 | 0x1000;
  }

  v53 = v16[v13[10]];
  v54 = 0x80000000;
  if (!v16[v13[10]])
  {
    v54 = 0x100000000;
  }

  if ((v114 & v54) != 0)
  {
    v54 = 0;
  }

  *(v29 + 4) = v114 | v54;
  if (v16[v13[7]])
  {
    if ((v16[v13[9]] & 1) == 0)
    {
      v38 = v110;
      if (v53)
      {
        v99 = [v41 sourceChannel];
        sub_1D69484B4(v16, type metadata accessor for FeedHeadline.State);
        sub_1D69484B4(v20, sub_1D5D504A0);
        v55 = 2;
        if (v99)
        {
          v55 = v99;
        }
      }

      else
      {
        sub_1D69484B4(v16, type metadata accessor for FeedHeadline.State);
        sub_1D69484B4(v20, sub_1D5D504A0);
        v55 = 2;
      }

      goto LABEL_18;
    }

    sub_1D69484B4(v16, type metadata accessor for FeedHeadline.State);
    sub_1D69484B4(v20, sub_1D5D504A0);
    v55 = 1;
  }

  else
  {
    sub_1D69484B4(v16, type metadata accessor for FeedHeadline.State);
    sub_1D69484B4(v20, sub_1D5D504A0);
    v55 = 0;
  }

  v38 = v110;
LABEL_18:
  *&v29[v25[13]] = v55;
  v56 = v29;
  v57 = v103;
  sub_1D5BE2FEC(v56, v103, type metadata accessor for FeedHeadline);
  v58 = sub_1D5BDEE24(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v60 = v58[2];
  v59 = v58[3];
  if (v60 >= v59 >> 1)
  {
    v58 = sub_1D5BDEE24((v59 > 1), v60 + 1, 1, v58);
  }

  v116 = v25;
  v117 = sub_1D6948F08(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
  sub_1D5C00EB0(v57, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
  v58[2] = v60 + 1;
  sub_1D5B63F14(&v114, &v58[5 * v60 + 4]);
  sub_1D69484B4(v57, type metadata accessor for FeedHeadline);
  v128 = v58;
  v62 = FeedHeadline.additionalFormatFeedItems.getter();
  sub_1D6985C1C(v62);
  sub_1D69484B4(v52, type metadata accessor for FeedHeadline);
LABEL_21:
  v63 = *(v104 + 52);
  v64 = v109;
  v65 = v105;
  sub_1D5C00EB0(v109 + v63, v105, sub_1D5B4D72C);
  v68 = *(v38 + 48);
  v67 = v38 + 48;
  v66 = v68;
  v69 = v68(v65, 1, v40);
  v70 = v106;
  if (v69 == 1)
  {
    sub_1D69484B4(v65, sub_1D5B4D72C);
  }

  else
  {
    sub_1D5C00EB0(v65, v106, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D69484B4(v70, type metadata accessor for WebEmbedDataVisualization);
      sub_1D69484B4(v65, type metadata accessor for WebEmbedDataVisualization);
    }

    else
    {
      v71 = *v70;
      sub_1D69484B4(v65, type metadata accessor for WebEmbedDataVisualization);
      *&v114 = v71;
      SportsDataVisualization.event.getter();
      v73 = v72;

      if (v73)
      {
        v74 = [v73 identifier];
        v75 = sub_1D726207C();
        v77 = v76;

        v78 = v128;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v67;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v78 = sub_1D5BDEE24(0, v78[2] + 1, 1, v78);
        }

        v81 = v78[2];
        v80 = v78[3];
        if (v81 >= v80 >> 1)
        {
          v78 = sub_1D5BDEE24((v80 > 1), v81 + 1, 1, v78);
        }

        v116 = &type metadata for FeedSportsEvent;
        v117 = sub_1D62DC038();
        v82 = swift_allocObject();
        *&v114 = v82;
        *(v82 + 16) = v75;
        *(v82 + 24) = v77;
        *(v82 + 32) = v73;
        *(v82 + 40) = 0;
        *(v82 + 48) = 0;
        v78[2] = v81 + 1;
        sub_1D5B63F14(&v114, &v78[5 * v81 + 4]);
        v128 = v78;
        v64 = v109;
      }
    }
  }

  v83 = v107;
  sub_1D5C00EB0(v64 + v63, v107, sub_1D5B4D72C);
  if (v66(v83, 1, v40) == 1)
  {
    sub_1D69484B4(v83, sub_1D5B4D72C);
  }

  else
  {
    sub_1D5C00EB0(v83, v39, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D69484B4(v39, type metadata accessor for WebEmbedDataVisualization);
      sub_1D69484B4(v83, type metadata accessor for WebEmbedDataVisualization);
    }

    else
    {
      v84 = *v39;
      sub_1D69484B4(v83, type metadata accessor for WebEmbedDataVisualization);
      *&v111 = v84;
      SportsDataVisualization.config.getter(&v114);

      v85 = *(&v114 + 1);
      if (*(&v114 + 1))
      {
        v87 = v117;
        v86 = v118;
        v88 = v115;
        v89 = v116;
        v90 = v114;
        swift_unknownObjectRetain();
        sub_1D5F8BBC8(v90, v85, v88, v89, v87, v86);
        if (v88)
        {
          v91 = [swift_unknownObjectRetain() identifier];
          v92 = sub_1D726207C();
          v94 = v93;

          v123 = xmmword_1D7279980;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v127 = 0;
          *&v114 = v92;
          *(&v114 + 1) = v94;
          v115 = v88;
          LOBYTE(v116) = 0;
          v119 = 0;
          v120 = 0xE000000000000000;
          v117 = 0;
          LOBYTE(v118) = 0;
          v121 = 0;
          v122 = MEMORY[0x1E69E7CD0];
          v95 = v128;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_1D5BDEE24(0, v95[2] + 1, 1, v95);
          }

          v97 = v95[2];
          v96 = v95[3];
          if (v97 >= v96 >> 1)
          {
            v95 = sub_1D5BDEE24((v96 > 1), v97 + 1, 1, v95);
          }

          swift_unknownObjectRelease();
          v112 = &type metadata for FeedTag;
          v113 = sub_1D5EE5BA8();
          *&v111 = swift_allocObject();
          sub_1D5EE5AF8(&v114, v111 + 16);
          v95[2] = v97 + 1;
          sub_1D5B63F14(&v111, &v95[5 * v97 + 4]);
          sub_1D5EE5B54(&v114);
          return v95;
        }
      }
    }
  }

  return v128;
}

uint64_t FeedWebEmbed.sportsDataVisualization.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = type metadata accessor for WebEmbedDataVisualization(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v1 + *(v12 + 52), v11, sub_1D5B4D72C);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    result = sub_1D69484B4(v11, sub_1D5B4D72C);
    *a1 = 0xF000000000000007;
  }

  else
  {
    sub_1D5C00EB0(v11, v7, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D69484B4(v7, type metadata accessor for WebEmbedDataVisualization);
      v14 = 0xF000000000000007;
    }

    else
    {
      v14 = *v7;
    }

    *a1 = v14;
    return sub_1D69484B4(v11, type metadata accessor for WebEmbedDataVisualization);
  }

  return result;
}

void FeedWebEmbed.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t FeedWebEmbed.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t FeedWebEmbed.identifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void FeedWebEmbed.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t FeedWebEmbed.URL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedWebEmbed(0) + 32);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double FeedWebEmbed.indexFileURLPromise.getter()
{
  type metadata accessor for FeedWebEmbed(0);

  return result;
}

double FeedWebEmbed.dataURLPromise.getter()
{
  type metadata accessor for FeedWebEmbed(0);

  return result;
}

uint64_t FeedWebEmbed.dismissingIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedWebEmbed(0) + 60));

  return v1;
}

void FeedWebEmbed.copy(headline:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v64 = type metadata accessor for WebEmbedDataVisualization(0);
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v4);
  v56 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v65 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v56 - v11;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v20;
  v21 = sub_1D72585BC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + 48);
  v63 = *(v2 + 40);
  v70 = v26;
  v27 = type metadata accessor for FeedWebEmbed(0);
  v28 = v27[8];
  v68 = v22;
  v61 = *(v22 + 16);
  v61(v25, v2 + v28, v21);
  sub_1D5C00EB0(v2 + v27[9], v20, sub_1D5B4D3E0);
  v29 = *(v2 + v27[10]);
  v59 = *(v2 + v27[11]);
  v60 = v29;
  sub_1D5C00EB0(v67, v16, type metadata accessor for FeedHeadline);
  v30 = type metadata accessor for FeedHeadline(0);
  (*(*(v30 - 8) + 56))(v16, 0, 1, v30);
  sub_1D5C00EB0(v2 + v27[13], v12, sub_1D5B4D72C);
  v31 = v27[15];
  v57 = *(v2 + v27[14]);
  v32 = v2 + v31;
  v33 = *(v2 + v31);
  v34 = *(v32 + 8);
  v58 = v33;
  *a2 = xmmword_1D727F470;
  *(a2 + 16) = 1;
  *(a2 + 24) = xmmword_1D727F480;
  v35 = v70;
  *(a2 + 40) = v63;
  *(a2 + 48) = v35;
  v36 = (a2 + v27[8]);
  v67 = v25;
  v37 = v25;
  v38 = v59;
  v62 = v21;
  v61(v36, v37, v21);
  v39 = v64;
  v40 = v60;
  sub_1D5C00EB0(v69, a2 + v27[9], sub_1D5B4D3E0);
  *(a2 + v27[10]) = v40;
  *(a2 + v27[11]) = v38;
  v41 = a2 + v27[12];
  v63 = v16;
  sub_1D5C00EB0(v16, v41, sub_1D5B69BE0);
  sub_1D5C00EB0(v12, a2 + v27[13], sub_1D5B4D72C);
  *(a2 + v27[14]) = v57;
  v42 = (a2 + v27[15]);
  *v42 = v58;
  v42[1] = v34;
  v43 = v65;
  sub_1D5C00EB0(v12, v65, sub_1D5B4D72C);
  if ((*(v66 + 48))(v43, 1, v39) == 1)
  {

    v44 = sub_1D5B4D72C;
LABEL_5:
    v46 = v62;
    sub_1D69484B4(v43, v44);
    sub_1D69484B4(v12, sub_1D5B4D72C);
    sub_1D69484B4(v63, sub_1D5B69BE0);
    sub_1D69484B4(v69, sub_1D5B4D3E0);
    (*(v68 + 8))(v67, v46);
    return;
  }

  v45 = v56;
  sub_1D5C00EB0(v43, v56, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D69484B4(v45, type metadata accessor for WebEmbedDataVisualization);
    v44 = type metadata accessor for WebEmbedDataVisualization;
    goto LABEL_5;
  }

  v47 = *v45;

  sub_1D69484B4(v43, type metadata accessor for WebEmbedDataVisualization);
  v48 = v47 >> 61;
  v49 = v62;
  if ((v47 >> 61) > 2)
  {
    v50 = v69;
    if (v48 > 4)
    {
      if (v48 == 5)
      {
        v51 = 0x2800000800;
        v52 = 0x800000800;
      }

      else
      {
        v51 = 0x3000000800;
        v52 = 0x1000000800;
      }
    }

    else if (v48 == 3)
    {
      v51 = 0x2200000800;
      v52 = 0x200000800;
    }

    else
    {
      v51 = 0x2400000800;
      v52 = 0x400000800;
    }

LABEL_21:
    sub_1D69484B4(v12, sub_1D5B4D72C);
    sub_1D69484B4(v63, sub_1D5B69BE0);
    sub_1D69484B4(v50, sub_1D5B4D3E0);
    (*(v68 + 8))(v67, v49);
    goto LABEL_22;
  }

  v50 = v69;
  v51 = 0x2000400800;
  if (v48)
  {
    if (v48 == 1)
    {
      v52 = 8390656;
      v51 = 0x2000800800;
    }

    else
    {
      v51 = 0x2020000800;
      v52 = 536872960;
    }

    goto LABEL_21;
  }

  *a2 = 4196352;

  v53 = SportsScoreDataVisualization.isFeatured.getter();

  sub_1D69484B4(v12, sub_1D5B4D72C);
  sub_1D69484B4(v63, sub_1D5B69BE0);
  sub_1D69484B4(v50, sub_1D5B4D3E0);
  (*(v68 + 8))(v67, v49);
  if ((v53 & 1) == 0)
  {
    goto LABEL_23;
  }

  v52 = 4196384;
  v51 = 0x2000400820;
LABEL_22:
  *a2 = v52;
LABEL_23:
  v71 = v47;
  SportsDataVisualization.event.getter();
  v55 = v54;

  if (v55)
  {
    swift_unknownObjectRelease();
    *a2 = v51;
  }
}

void sub_1D6946DB0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t sub_1D6946DC8(uint64_t a1)
{
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5C00EB0(v1 + *(a1 + 48), v6, sub_1D5B69BE0);
  v7 = type metadata accessor for FeedHeadline(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1D69484B4(v6, sub_1D5B69BE0);
    return sub_1D72583DC();
  }

  else
  {
    v9 = [v6[5] identifier];
    v10 = sub_1D726207C();

    sub_1D69484B4(v6, type metadata accessor for FeedHeadline);
    return v10;
  }
}

id sub_1D6946F24(uint64_t a1)
{
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5C00EB0(v1 + *(a1 + 48), v6, sub_1D5B69BE0);
  v7 = type metadata accessor for FeedHeadline(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  v9 = sub_1D5B69BE0;
  if (v8 == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v6[5] thumbnail];
    v10 = [v11 thumbnailAssetHandle];

    v9 = type metadata accessor for FeedHeadline;
  }

  sub_1D69484B4(v6, v9);
  return v10;
}

id sub_1D694706C(uint64_t a1)
{
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5C00EB0(v1 + *(a1 + 48), v6, sub_1D5B69BE0);
  v7 = type metadata accessor for FeedHeadline(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  v9 = sub_1D5B69BE0;
  if (v8 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v6[5] scoreProfile];
    v9 = type metadata accessor for FeedHeadline;
  }

  sub_1D69484B4(v6, v9);
  return v10;
}

double FeedWebEmbed.groupItem.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D5C00EB0(v1, a1, type metadata accessor for FeedWebEmbed);
  type metadata accessor for FeedGroupItem(0);

  swift_storeEnumTagMultiPayload();
  return result;
}

double sub_1D69471FC@<D0>(uint64_t a1@<X8>)
{
  sub_1D5C00EB0(v1, a1, type metadata accessor for FeedWebEmbed);
  type metadata accessor for FeedGroupItem(0);

  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t FeedWebEmbed.hashValue.getter()
{
  sub_1D7264A0C();
  type metadata accessor for FeedWebEmbed(0);
  sub_1D6948F08(&qword_1EC88E7C0, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D69472EC(uint64_t a1, uint64_t a2)
{
  sub_1D7264A0C();
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D6947344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6948F08(&qword_1EC88E7C8, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D69473C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7264A0C();
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

void FeedWebEmbed.dragItem.getter(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for WebEmbedDataVisualization(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedHeadline(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v1 + *(v20 + 48), v14, sub_1D5B69BE0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D69484B4(v14, sub_1D5B69BE0);
    sub_1D5C00EB0(v1 + *(v20 + 52), v10, sub_1D5B4D72C);
    v21 = (*(v3 + 48))(v10, 1, v2);
    v22 = sub_1D5B4D72C;
    v23 = v33;
    if (v21 == 1)
    {
LABEL_5:
      sub_1D69484B4(v10, v22);
LABEL_6:
      v24 = sub_1D725F84C();
      (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
      return;
    }

    sub_1D5C00EB0(v10, v6, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D69484B4(v6, type metadata accessor for WebEmbedDataVisualization);
      v22 = type metadata accessor for WebEmbedDataVisualization;
      goto LABEL_5;
    }

    v25 = *v6;
    sub_1D69484B4(v10, type metadata accessor for WebEmbedDataVisualization);
    if (v25 >> 61)
    {

      goto LABEL_6;
    }

    v26 = *(*(v25 + 16) + 56);
    if (!v26)
    {
      v31 = sub_1D725F84C();
      (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
      goto LABEL_17;
    }

    v27 = [swift_unknownObjectRetain() identifier];
    if (!v27)
    {
      sub_1D726207C();
      v27 = sub_1D726203C();
    }

    v28 = [objc_opt_self() nss:v27 NewsURLForTagID:8 feedConfiguration:?];

    if (v28)
    {
      v29 = [v26 name];
      sub_1D726207C();

      sub_1D725F83C();
      swift_unknownObjectRelease();

      v30 = sub_1D725F84C();
      (*(*(v30 - 8) + 56))(v23, 0, 1, v30);
LABEL_17:

      return;
    }

    __break(1u);
  }

  else
  {
    sub_1D5BE2FEC(v14, v19, type metadata accessor for FeedHeadline);
    FeedHeadline.dragItem.getter(v33);
    sub_1D69484B4(v19, type metadata accessor for FeedHeadline);
  }
}

char *sub_1D6947924()
{
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeedHeadline(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebEmbedDataVisualization(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x1E69E7CC0];
  v19 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v0 + *(v19 + 52), v18, sub_1D5B4D72C);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_1D69484B4(v18, sub_1D5B4D72C);
  }

  else
  {
    sub_1D5C00EB0(v18, v14, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D69484B4(v14, type metadata accessor for WebEmbedDataVisualization);
      sub_1D69484B4(v18, type metadata accessor for WebEmbedDataVisualization);
    }

    else
    {
      v68 = v0;
      v20 = *v14;
      sub_1D69484B4(v18, type metadata accessor for WebEmbedDataVisualization);
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_1D7263D4C();

      v71 = 0xD000000000000015;
      v72 = 0x80000001D73DC950;
      v21 = v20 >> 61;
      v69 = v20;
      if ((v20 >> 61) <= 2)
      {
        if (v21)
        {
          if (v21 == 1)
          {
            v22 = 0xE800000000000000;
            v23 = 0x676E69646E617473;
          }

          else
          {
            v22 = 0xE700000000000000;
            v23 = 0x74656B63617262;
          }
        }

        else
        {
          v22 = 0xE500000000000000;
          v23 = 0x65726F6373;
        }
      }

      else if (v21 > 4)
      {
        if (v21 == 5)
        {
          v22 = 0xED000074726F7065;
          v23 = 0x722D7972756A6E69;
        }

        else
        {
          v22 = 0xEA00000000007265;
          v23 = 0x79616C702D79656BLL;
        }
      }

      else if (v21 == 3)
      {
        v22 = 0xE900000000000065;
        v23 = 0x726F63732D786F62;
      }

      else
      {
        v23 = 0x6F63732D656E696CLL;
        v22 = 0xEA00000000006572;
      }

      MEMORY[0x1DA6F9910](v23, v22);

      v24 = v71;
      v25 = v72;
      v26 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1D5B858EC((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v29;
      v30 = &v26[16 * v28];
      *(v30 + 4) = v24;
      *(v30 + 5) = v25;
      v78 = v26;
      v71 = v69;
      SportsDataVisualization.event.getter();
      if (v31)
      {
        v32 = *(v26 + 3);
        if ((v28 + 2) > (v32 >> 1))
        {
          v66 = v31;
          v26 = sub_1D5B858EC((v32 > 1), v28 + 2, 1, v26);
          v31 = v66;
        }

        *(v26 + 2) = v28 + 2;
        v33 = &v26[16 * v29];
        *(v33 + 4) = 0xD00000000000001ALL;
        *(v33 + 5) = 0x80000001D73DC990;
        v78 = v26;
        v34 = v31;
        v35 = [swift_unknownObjectRetain() identifier];
        v36 = sub_1D726207C();
        v38 = v37;

        v71 = v36;
        v72 = v38;
        v73 = v34;
        v74 = 0;
        LOBYTE(v75) = 0;
        v39 = sub_1D670FDF0();
        swift_unknownObjectRelease();

        sub_1D6985160(v39);
        swift_unknownObjectRelease();
      }

      v77 = v69;
      SportsDataVisualization.config.getter(&v71);
      v40 = v72;
      if (v72)
      {
        v70 = v9;
        v42 = v75;
        v41 = v76;
        v43 = v73;
        v44 = v74;
        v45 = v71;
        swift_unknownObjectRetain();
        sub_1D5F8BBC8(v45, v40, v43, v44, v42, v41);
        if (v43)
        {
          ObjectType = swift_getObjectType();
          v47 = sub_1D5EEDC00(0xD00000000000001DLL, 0x80000001D73DC970, ObjectType);
          sub_1D6985160(v47);
          swift_unknownObjectRelease();
        }

        v0 = v68;
        v9 = v70;
      }

      else
      {

        v0 = v68;
      }
    }
  }

  sub_1D5C00EB0(v0 + *(v19 + 48), v4, sub_1D5B69BE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v48 = sub_1D5B69BE0;
    v49 = v4;
  }

  else
  {
    sub_1D5BE2FEC(v4, v9, type metadata accessor for FeedHeadline);
    v50 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_1D5B858EC(0, *(v50 + 2) + 1, 1, v50);
    }

    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = sub_1D5B858EC((v51 > 1), v52 + 1, 1, v50);
    }

    *(v50 + 2) = v52 + 1;
    v53 = &v50[16 * v52];
    *(v53 + 4) = 0xD000000000000016;
    *(v53 + 5) = 0x80000001D73DC910;
    v78 = v50;
    v54 = sub_1D5EE52D8();
    v55 = *(v54 + 2);
    if (v55)
    {
      v70 = v9;
      v77 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v55, 0);
      v56 = v77;
      v69 = v54;
      v57 = (v54 + 40);
      do
      {
        v58 = *(v57 - 1);
        v59 = *v57;
        v71 = 0;
        v72 = 0xE000000000000000;

        sub_1D7263D4C();

        v71 = 0xD000000000000013;
        v72 = 0x80000001D73DC930;
        MEMORY[0x1DA6F9910](v58, v59);

        v61 = v71;
        v60 = v72;
        v77 = v56;
        v63 = *(v56 + 16);
        v62 = *(v56 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1D5BFC364((v62 > 1), v63 + 1, 1);
          v56 = v77;
        }

        *(v56 + 16) = v63 + 1;
        v64 = v56 + 16 * v63;
        *(v64 + 32) = v61;
        *(v64 + 40) = v60;
        v57 += 2;
        --v55;
      }

      while (v55);

      v9 = v70;
    }

    else
    {

      v56 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6985160(v56);
    v48 = type metadata accessor for FeedHeadline;
    v49 = v9;
  }

  sub_1D69484B4(v49, v48);
  return v78;
}

uint64_t sub_1D6948170()
{
  v0 = sub_1D6947924();
  v1 = *(v0 + 2);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x1DA6F9910](v4, v5);

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D5BFC364((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = 0x2D70756F7267;
      *(v8 + 40) = 0xE600000000000000;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t FeedWebEmbed.score.getter()
{
  v1 = type metadata accessor for WebEmbedDataVisualization(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedWebEmbed(0);
  sub_1D5C00EB0(v0 + *(v10 + 52), v9, sub_1D5B4D72C);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D69484B4(v9, sub_1D5B4D72C);
  }

  else
  {
    sub_1D5C00EB0(v9, v5, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D69484B4(v5, type metadata accessor for WebEmbedDataVisualization);
      sub_1D69484B4(v9, type metadata accessor for WebEmbedDataVisualization);
    }

    else
    {
      v11 = *v5;
      sub_1D69484B4(v9, type metadata accessor for WebEmbedDataVisualization);
      if (!(v11 >> 61))
      {
        v12 = *(v11 + 16);

        return v12;
      }
    }
  }

  return 0;
}

uint64_t sub_1D69484B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8NewsFeed0B8WebEmbedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for WebEmbedDataVisualization(0);
  v92 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v4);
  v82 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v83 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61358AC(0);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedHeadline(0);
  v89 = *(v13 - 8);
  v90 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v86 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v87 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69490A8(0);
  v88 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v91 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D72585BC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB60D4(0);
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FeedWebEmbed(0);
  if ((sub_1D72584CC() & 1) == 0)
  {
    goto LABEL_19;
  }

  v78 = v36;
  v79 = v12;
  v37 = a1;
  v38 = *(v36 + 36);
  v39 = *(v32 + 48);
  v80 = v37;
  sub_1D5C00EB0(v37 + v38, v35, sub_1D5B4D3E0);
  v81 = a2;
  sub_1D5C00EB0(a2 + v38, &v35[v39], sub_1D5B4D3E0);
  v40 = *(v23 + 48);
  if (v40(v35, 1, v22) == 1)
  {
    if (v40(&v35[v39], 1, v22) == 1)
    {
      sub_1D69484B4(v35, sub_1D5B4D3E0);
      goto LABEL_9;
    }

LABEL_7:
    v41 = sub_1D5BB60D4;
    v42 = v35;
LABEL_18:
    sub_1D69484B4(v42, v41);
    goto LABEL_19;
  }

  sub_1D5C00EB0(v35, v30, sub_1D5B4D3E0);
  if (v40(&v35[v39], 1, v22) == 1)
  {
    (*(v23 + 8))(v30, v22);
    goto LABEL_7;
  }

  (*(v23 + 32))(v26, &v35[v39], v22);
  sub_1D6948F08(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v43 = sub_1D7261FBC();
  v44 = *(v23 + 8);
  v44(v26, v22);
  v44(v30, v22);
  sub_1D69484B4(v35, sub_1D5B4D3E0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v46 = v80;
  v45 = v81;
  if ((*(v80 + 40) != *(v81 + 40) || *(v80 + 48) != *(v81 + 48)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_19;
  }

  v47 = v78;
  v48 = v78[12];
  v49 = *(v88 + 48);
  v50 = v91;
  sub_1D5C00EB0(v46 + v48, v91, sub_1D5B69BE0);
  sub_1D5C00EB0(v45 + v48, v50 + v49, sub_1D5B69BE0);
  v51 = v90;
  v52 = *(v89 + 48);
  if (v52(v50, 1, v90) == 1)
  {
    v53 = v52(v50 + v49, 1, v51);
    v54 = v79;
    v55 = v92;
    if (v53 == 1)
    {
      sub_1D69484B4(v50, sub_1D5B69BE0);
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v56 = v87;
  sub_1D5C00EB0(v50, v87, sub_1D5B69BE0);
  v57 = v52(v50 + v49, 1, v51);
  v54 = v79;
  v55 = v92;
  if (v57 == 1)
  {
    sub_1D69484B4(v56, type metadata accessor for FeedHeadline);
LABEL_17:
    v41 = sub_1D69490A8;
    v42 = v50;
    goto LABEL_18;
  }

  v60 = v86;
  sub_1D5BE2FEC(v50 + v49, v86, type metadata accessor for FeedHeadline);
  v61 = static FeedHeadline.== infix(_:_:)();
  sub_1D69484B4(v60, type metadata accessor for FeedHeadline);
  sub_1D69484B4(v56, type metadata accessor for FeedHeadline);
  sub_1D69484B4(v50, sub_1D5B69BE0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  if (*(v46 + v47[14]) != *(v45 + v47[14]))
  {
    goto LABEL_19;
  }

  v62 = v47[13];
  v63 = *(v84 + 48);
  sub_1D5C00EB0(v46 + v62, v54, sub_1D5B4D72C);
  sub_1D5C00EB0(v45 + v62, v54 + v63, sub_1D5B4D72C);
  v64 = *(v55 + 48);
  v65 = v85;
  if (v64(v54, 1, v85) == 1)
  {
    if (v64(v54 + v63, 1, v65) == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v66 = v83;
  sub_1D5C00EB0(v54, v83, sub_1D5B4D72C);
  if (v64(v54 + v63, 1, v65) == 1)
  {
    sub_1D69484B4(v66, type metadata accessor for WebEmbedDataVisualization);
LABEL_28:
    v41 = sub_1D61358AC;
    v42 = v54;
    goto LABEL_18;
  }

  sub_1D5BE2FEC(v54 + v63, v82, type metadata accessor for WebEmbedDataVisualization);
  v67 = WebEmbedDataVisualization.identifier.getter();
  v69 = v68;
  if (v67 != WebEmbedDataVisualization.identifier.getter() || v69 != v70)
  {
    v76 = sub_1D72646CC();

    sub_1D69484B4(v82, type metadata accessor for WebEmbedDataVisualization);
    sub_1D69484B4(v83, type metadata accessor for WebEmbedDataVisualization);
    sub_1D69484B4(v54, sub_1D5B4D72C);
    if (v76)
    {
      goto LABEL_33;
    }

LABEL_19:
    v58 = 0;
    return v58 & 1;
  }

  sub_1D69484B4(v82, type metadata accessor for WebEmbedDataVisualization);
  sub_1D69484B4(v83, type metadata accessor for WebEmbedDataVisualization);
LABEL_32:
  sub_1D69484B4(v54, sub_1D5B4D72C);
LABEL_33:
  v71 = v47[15];
  v72 = (v46 + v71);
  v73 = *(v46 + v71 + 8);
  v74 = (v45 + v71);
  v75 = v74[1];
  v58 = (v73 | v75) == 0;
  if (v73 && v75)
  {
    if (*v72 == *v74 && v73 == v75)
    {
      v58 = 1;
    }

    else
    {
      v58 = sub_1D72646CC();
    }
  }

  return v58 & 1;
}

uint64_t sub_1D6948F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6948F50(uint64_t a1)
{
  result = sub_1D6948F08(&qword_1EDF12B98, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
  *(a1 + 16) = result;
  return result;
}

void sub_1D69490C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t _s8NewsFeed25FormatSplitBackgroundSideO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v3;
  v4 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v27 = *(a2 + 32);
  v28 = v6;
  v7 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v7;
  v8 = *(a1 + 48);
  v30[2] = v23;
  v30[3] = v8;
  v30[0] = v22[0];
  v30[1] = v2;
  v33 = v5;
  v34 = v27;
  v35 = *(a2 + 48);
  v25 = *(a1 + 64);
  v29 = *(a2 + 64);
  v31 = *(a1 + 64);
  v36 = *(a2 + 64);
  v32 = v26[0];
  if (v25)
  {
    if (v29)
    {
      v16 = *&v22[0];
      v9 = *(a1 + 24);
      v17 = *(a1 + 8);
      v18 = v9;
      v19 = *(a1 + 40);
      v20 = *(a1 + 56);
      v10 = *(a2 + 16);
      v15[0] = *a2;
      v15[1] = v10;
      v11 = *(a2 + 48);
      v15[2] = *(a2 + 32);
      v15[3] = v11;
      sub_1D60FB55C(v26, v21);
      sub_1D60FB55C(v22, v21);
      sub_1D60FB55C(v22, v21);
      sub_1D60FB55C(v26, v21);
      v12 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v16, v15);
LABEL_7:
      v13 = v12;
      sub_1D69494D4(v30);
      sub_1D60FBD38(v26);
      sub_1D60FBD38(v22);
      return v13 & 1;
    }
  }

  else if ((v29 & 1) == 0)
  {
    v16 = *&v22[0];
    *&v15[0] = *&v26[0];
    sub_1D60FB55C(v26, v21);
    sub_1D60FB55C(v22, v21);
    sub_1D60FB55C(v22, v21);
    sub_1D60FB55C(v26, v21);
    v12 = static FormatColor.== infix(_:_:)(&v16, v15);
    goto LABEL_7;
  }

  sub_1D60FB55C(v22, v21);
  sub_1D60FB55C(v26, v21);
  sub_1D69494D4(v30);
  v13 = 0;
  return v13 & 1;
}

unint64_t sub_1D6949310(uint64_t a1)
{
  result = sub_1D6949338();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6949338()
{
  result = qword_1EC88E7D0;
  if (!qword_1EC88E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E7D0);
  }

  return result;
}

unint64_t sub_1D694938C(void *a1)
{
  a1[1] = sub_1D6666B68();
  a1[2] = sub_1D6666CE4();
  result = sub_1D69493C4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69493C4()
{
  result = qword_1EC88E7D8;
  if (!qword_1EC88E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E7D8);
  }

  return result;
}

uint64_t sub_1D6949418(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_1D6949460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D69494D4(uint64_t a1)
{
  sub_1D6949530();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6949530()
{
  if (!qword_1EC88E7E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88E7E0);
    }
  }
}

void sub_1D694958C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v12 = *v6;
  v13 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v14 = v13();
  v15 = sub_1D5E02AFC(v14, v12);

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v15 < 9.22337204e18)
  {
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    Width = CGRectGetWidth(v17);
    sub_1D694979C(v15, a6, Width);
    v18.origin.x = a1;
    v18.origin.y = a2;
    v18.size.width = a3;
    v18.size.height = a4;
    CGRectGetHeight(v18);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D694979C(int64_t a1, void *a2, double a3)
{
  if (a1 >= 1)
  {
    v34 = *(v3 + 16);
    v32 = *(v3 + 24);
    v35[0] = MEMORY[0x1E69E7CC0];
    v7 = v35;
    sub_1D5BFC364(0, a1, 0);
    v8 = 0;
    v9 = 1;
    v10 = v35[0];
    v11 = a1;
    while (1)
    {
      if (v8)
      {
        goto LABEL_21;
      }

      v35[0] = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        v7 = v35;
        sub_1D5BFC364((v12 > 1), v13 + 1, 1);
        v10 = v35[0];
      }

      *(v10 + 16) = v13 + 1;
      v14 = v10 + 16 * v13;
      *(v14 + 32) = 87;
      *(v14 + 40) = 0xE100000000000000;
      v8 = v9 == a1;
      if (v9 == a1)
      {
        v9 = 0;
      }

      else if (__OFADD__(v9++, 1))
      {
        __break(1u);
LABEL_17:
        sub_1D61FFF74(v36);
        [v7 boundingRectWithSize:33 options:0 context:{a3, 100000.0}];
        if (v32)
        {
          CGRectIntegral(*&v28);
        }

        return;
      }

      if (!--v11)
      {
        v35[0] = v10;
        sub_1D5BBE0A8();
        sub_1D5BB0AB8();
        v16 = sub_1D7261F3C();
        v18 = v17;

        v19 = (*(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
        swift_beginAccess();
        v20 = *v19;
        v21 = v19[1];

        v22 = v34;

        sub_1D6FBAAA4(v23, a2, v20, v21);
        if (v4)
        {

          return;
        }

        v25 = v24;

        if (v25)
        {

          v22 = v25;
        }

        v26 = sub_1D62DD564(v22, a2);

        sub_1D62DF2F4(v26, v22, a2, 18, v36);
        type metadata accessor for FormatAttributedString(0);
        swift_allocObject();
        sub_1D61FFF18(v36, v35);
        sub_1D6BB8DF0(v16, v18, v36);
        sub_1D6BB92D8(a2);
        v7 = v27;

        goto LABEL_17;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t _s8NewsFeed35FormatFrameExpressionLogicTextLinesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1D633A310(*a1, *a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = FormatOperator.rawValue.getter();
  v9 = v8;
  if (v7 == FormatOperator.rawValue.getter() && v9 == v10)
  {

    goto LABEL_6;
  }

  v11 = sub_1D72646CC();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  if (_s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v2, v4))
  {
    return v3 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D6949C2C(uint64_t a1)
{
  result = sub_1D6949C54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6949C54()
{
  result = qword_1EC88E7E8;
  if (!qword_1EC88E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E7E8);
  }

  return result;
}

unint64_t sub_1D6949CA8(void *a1)
{
  a1[1] = sub_1D6662CD8();
  a1[2] = sub_1D670523C();
  result = sub_1D6949CE0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6949CE0()
{
  result = qword_1EC88E7F0;
  if (!qword_1EC88E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E7F0);
  }

  return result;
}

uint64_t sub_1D6949D34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D6949D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SportsTaxonomyGraphHeader.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      v1 = sub_1D725811C();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for Localized();
    v5 = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_1D725811C();

    sub_1D5D25B88(v1, 0);
    return v7;
  }

  return v1;
}

uint64_t SportsTaxonomyGraphHeader.identifier.getter()
{
  v1 = v0[1];
  if (v1)
  {
    if (v1 == 1)
    {
      return 0x726F705365726F6DLL;
    }

    else
    {
      v3 = *v0;

      return v3;
    }
  }

  else
  {
    sub_1D5D25B88(*v0, 0);
    return 0x74726F70536C6C61;
  }
}

uint64_t sub_1D6949FE0()
{
  v1 = v0[1];
  if (v1)
  {
    if (v1 == 1)
    {
      return 0x726F705365726F6DLL;
    }

    else
    {
      v3 = *v0;

      return v3;
    }
  }

  else
  {
    sub_1D5D25B88(*v0, 0);
    return 0x74726F70536C6C61;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed25SportsTaxonomyGraphHeaderO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D694A088(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_1D694A0E4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

Swift::Void __swiftcall FormatProgressCircleView.setUpCircleView(options:)(NewsFeed::FormatProgressCircleOptionsResolved *options)
{
  clockwise = options->clockwise;
  stepPercentage = options->stepPercentage;
  minPercentage = options->minPercentage;
  maxPercentage = options->maxPercentage;
  *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_radius) = options->radius;
  *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_clockwise) = clockwise;
  lineCap = options->lineCap;
  v7 = v1 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_stepPercentage;
  *v7 = stepPercentage;
  *(v7 + 8) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_minPercentage) = minPercentage;
  *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_maxPercentage) = maxPercentage;
  objc_storeStrong((v1 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_lineCap), **(&unk_1E84CEAA0 + lineCap));
}

Swift::Void __swiftcall FormatProgressCircleView.setProgressColors(backgroundColor:strokeColor:)(UIColor backgroundColor, UIColor strokeColor)
{
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_backgroundLayer);
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  v8 = [v7 CGColor];

  [v5 setFillColor_];
  v9 = *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_progressLayer);
  v10 = [v6 clearColor];
  v11 = [v10 CGColor];

  [v9 setFillColor_];
  v12 = [(objc_class *)backgroundColor.super.isa CGColor];
  [v5 setStrokeColor_];

  v13 = [(objc_class *)strokeColor.super.isa CGColor];
  [v9 setStrokeColor_];
}

Swift::Void __swiftcall FormatProgressCircleView.updateCircleProgress(progress:)(Swift::Double progress)
{
  v2 = *&v1[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_minPercentage];
  if (v2 < progress)
  {
    v2 = *&v1[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_maxPercentage];
    if (v2 > progress)
    {
      v3 = &v1[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_stepPercentage];
      if (v1[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_stepPercentage + 8])
      {
        v2 = progress;
      }

      else
      {
        v4 = round(progress / *v3);
        if (*v3 > 0.0)
        {
          v2 = *v3 * v4;
        }

        else
        {
          v2 = progress;
        }
      }
    }
  }

  [v1 bounds];
  v5 = CGRectGetWidth(v22) * 0.5;
  [v1 bounds];
  v6 = CGRectGetHeight(v23) * 0.5;
  [v1 bounds];
  Height = CGRectGetHeight(v24);
  v8 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_radius;
  v9 = Height * 0.5 - *&v1[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_radius] * 0.5;
  v10 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_clockwise;
  v11 = v1[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_clockwise];
  v12 = objc_opt_self();
  v13 = [v12 bezierPathWithArcCenter:v11 radius:v5 startAngle:v6 endAngle:v9 clockwise:{0.0, 6.28318531}];
  [v1 bounds];
  v14 = CGRectGetWidth(v25) * 0.5;
  [v1 bounds];
  v15 = CGRectGetHeight(v26) * 0.5;
  [v1 bounds];
  v20 = [v12 bezierPathWithArcCenter:v1[v10] radius:v14 startAngle:v15 endAngle:CGRectGetHeight(v27) * 0.5 - *&v1[v8] * 0.5 clockwise:{-1.57079633, v2 * 360.0 * 3.14159265 / 180.0 + -1.57079633}];
  v16 = *&v1[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_backgroundLayer];
  v17 = [v13 CGPath];
  [v16 setPath_];

  [v16 setLineWidth_];
  v18 = *&v1[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_progressLayer];
  v19 = [v20 CGPath];
  [v18 setPath_];

  [v18 setLineWidth_];
  [v18 setLineCap_];
}

uint64_t FormatProgressCircleView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double FormatProgressCircleView.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

char *sub_1D694A6EC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_identifier];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_backgroundLayer;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v12 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_progressLayer;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *&v4[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_radius] = 0;
  v4[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_clockwise] = 0;
  v13 = &v4[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_stepPercentage];
  *v13 = 0;
  v13[8] = 1;
  *&v4[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_minPercentage] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_maxPercentage] = 0x3FF0000000000000;
  v14 = *MEMORY[0x1E6979E70];
  *&v4[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_lineCap] = *MEMORY[0x1E6979E70];
  v15 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_layerDelegate;
  v16 = objc_allocWithZone(type metadata accessor for FormatProgressCircleView.NonAnimatingLayerDelegate());
  v17 = v14;
  *&v4[v15] = [v16 init];
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = [v18 layer];
  v20 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_backgroundLayer;
  [v19 addSublayer_];

  v21 = [v18 layer];
  v22 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_progressLayer;
  [v21 addSublayer_];

  v23 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_layerDelegate;
  [*&v18[v20] setDelegate_];
  [*&v18[v22] setDelegate_];

  return v18;
}

Swift::Void __swiftcall FormatProgressCircleView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = [v0 layer];
  v2 = [objc_opt_self() clearColor];
  v3 = [v2 CGColor];

  [v1 setBackgroundColor_];
}

id sub_1D694AB64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FormatProgressCircleView.NonAnimatingLayerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FormatProgressCircleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D694AC54()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1D694ACF8()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_identifier);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_backgroundLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v3 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_progressLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_radius) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_clockwise) = 0;
  v4 = v0 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_stepPercentage;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_minPercentage) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_maxPercentage) = 0x3FF0000000000000;
  v5 = *MEMORY[0x1E6979E70];
  *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_lineCap) = *MEMORY[0x1E6979E70];
  v6 = OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_layerDelegate;
  v7 = objc_allocWithZone(type metadata accessor for FormatProgressCircleView.NonAnimatingLayerDelegate());
  v8 = v5;
  *(v0 + v6) = [v7 init];
  sub_1D726402C();
  __break(1u);
}

void sub_1D694AE44(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 28);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v9 = sub_1D725BD1C();
  v10 = __swift_project_value_buffer(v9, qword_1EDFFCD50);
  (*(*(v9 - 8) + 16))(&v6[v8], v10, v9);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for FormatVersionRequirement(0);
  (*(*(v11 - 8) + 56))(&v6[v8], 0, 1, v11);
  *v6 = 0xD000000000000010;
  *(v6 + 1) = 0x80000001D73CEF10;
  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  *(v6 + 2) = 3;
  v6[40] = 0;
  *(v6 + 6) = MEMORY[0x1E69E7CC0];
  v12 = swift_allocBox();
  sub_1D694CD6C(v6, v13, type metadata accessor for FormatDerivedDataOption);
  sub_1D6C4D24C(v12 | 0x1000000000000000);

  sub_1D694C46C(v6, type metadata accessor for FormatDerivedDataOption);
  sub_1D62873B8(a1, v14);
}

uint64_t FormatAnimationNodeSpringAnimation.keyPath.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 64);
  *(a1 + 48) = v8;
  return sub_1D62B753C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t FormatAnimationNodeSpringAnimation.cumulative.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatAnimationNodeSpringAnimation.additive.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 112);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

double FormatAnimationNodeSpringAnimation.mediaTiming.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v4 = *(v1 + 168);
  v5 = *(v1 + 200);
  v13[2] = *(v1 + 184);
  v13[3] = v5;
  v13[4] = *(v1 + 216);
  v13[5] = v2;
  v13[0] = *(v1 + 152);
  v13[1] = v4;
  v6 = *(v1 + 264);
  v13[6] = v3;
  v14[0] = v6;
  *(v14 + 9) = *(v1 + 273);
  v7 = *(v1 + 232);
  v8 = *(v1 + 264);
  a1[6] = *(v1 + 248);
  a1[7] = v8;
  *(a1 + 121) = *(v1 + 273);
  v9 = *(v1 + 168);
  v10 = *(v1 + 200);
  a1[2] = *(v1 + 184);
  a1[3] = v10;
  a1[4] = *(v1 + 216);
  a1[5] = v7;
  *a1 = *(v1 + 152);
  a1[1] = v9;
  sub_1D694CD6C(v13, &v12, sub_1D6047E8C);
  return result;
}

__n128 FormatAnimationNodeSpringAnimation.__allocating_init(keyPath:cumulative:additive:mass:stiffness:damping:initialVelocity:mediaTiming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, __int128 *a8)
{
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 72) = *a2;
  *(v16 + 96) = *a3;
  v18 = a8[4];
  *(v16 + 232) = a8[5];
  v19 = a8[7];
  *(v16 + 248) = a8[6];
  *(v16 + 264) = v19;
  *(v16 + 273) = *(a8 + 121);
  v20 = *a8;
  *(v16 + 168) = a8[1];
  result = a8[2];
  v22 = a8[3];
  *(v16 + 184) = result;
  *(v16 + 200) = v22;
  *(v16 + 216) = v18;
  v23 = *(a2 + 16);
  v24 = *(a3 + 16);
  v25 = *a4;
  v26 = *a5;
  v27 = *a6;
  v28 = *a7;
  *(v16 + 64) = *(a1 + 48);
  *(v16 + 88) = v23;
  *(v16 + 112) = v24;
  *(v16 + 120) = v25;
  *(v16 + 128) = v26;
  *(v16 + 136) = v27;
  *(v16 + 144) = v28;
  *(v16 + 152) = v20;
  return result;
}

uint64_t FormatAnimationNodeSpringAnimation.init(keyPath:cumulative:additive:mass:stiffness:damping:initialVelocity:mediaTiming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, __int128 *a8)
{
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 72) = *a2;
  *(v8 + 96) = *a3;
  v10 = a8[4];
  *(v8 + 232) = a8[5];
  v11 = a8[7];
  *(v8 + 248) = a8[6];
  *(v8 + 264) = v11;
  *(v8 + 273) = *(a8 + 121);
  v12 = *a8;
  *(v8 + 168) = a8[1];
  v13 = a8[3];
  *(v8 + 184) = a8[2];
  *(v8 + 200) = v13;
  *(v8 + 216) = v10;
  v14 = *(a2 + 16);
  v15 = *(a3 + 16);
  v16 = *a4;
  v17 = *a5;
  v18 = *a6;
  v19 = *a7;
  *(v8 + 64) = *(a1 + 48);
  *(v8 + 88) = v14;
  *(v8 + 112) = v15;
  *(v8 + 120) = v16;
  *(v8 + 128) = v17;
  *(v8 + 136) = v18;
  *(v8 + 144) = v19;
  *(v8 + 152) = v12;
  return v8;
}

uint64_t sub_1D694B308(uint64_t a1)
{
  v130 = a1;
  v2 = v1;
  v3 = type metadata accessor for FormatVersionRequirement(0);
  v127 = *(v3 - 8);
  v128 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v126 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(v1 + 64);
  v6 = *(v1 + 32);
  v150 = *(v1 + 16);
  v151 = v6;
  v152 = *(v1 + 48);
  LOBYTE(v153) = v5;
  sub_1D67EA1C8();
  v7 = sub_1D726203C();

  v131 = [objc_opt_self() animationWithKeyPath_];

  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v13 = *(v1 + 48);
  v12 = *(v1 + 56);
  v14 = *(v2 + 64);
  *&v150 = *(v2 + 2);
  *(&v150 + 1) = v8;
  *&v151 = v11;
  *(&v151 + 1) = v10;
  *&v152 = v13;
  *(&v152 + 1) = v12;
  LOBYTE(v153) = v14;
  v131 = v131;
  v15 = v14;
  v16 = v130;
  sub_1D62B753C(v9, v8, v11, v10, v13, v12, v15);
  v17 = v129;
  sub_1D67EA354(&v141);
  if (v17)
  {
    v18 = v131;

    sub_1D62B4A44(v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), v153);
  }

  else
  {
    v129 = v2;
    sub_1D62B4A44(v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), v153);
    v19 = *(&v142 + 1);
    if (*(&v142 + 1))
    {
      v20 = __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
      v21 = v16;
      v22 = *(v19 - 8);
      v23 = MEMORY[0x1EEE9AC00](v20, v20);
      v25 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25, v23);
      v26 = sub_1D72646AC();
      (*(v22 + 8))(v25, v19);
      v16 = v21;
      __swift_destroy_boxed_opaque_existential_1(&v141);
    }

    else
    {
      v26 = 0;
    }

    v27 = v131;
    v28 = v129;
    [v131 setFromValue_];
    swift_unknownObjectRelease();
    v29 = *(v28 + 3);
    v30 = *(v28 + 4);
    v31 = *(v28 + 5);
    v32 = *(v28 + 6);
    v33 = *(v28 + 7);
    v34 = *(v28 + 64);
    *&v150 = *(v28 + 2);
    *(&v150 + 1) = v29;
    *&v151 = v30;
    *(&v151 + 1) = v31;
    *&v152 = v32;
    *(&v152 + 1) = v33;
    LOBYTE(v153) = v34;
    sub_1D62B753C(v150, v29, v30, v31, v32, v33, v34);
    sub_1D67EA620(&v141);
    sub_1D62B4A44(v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), v153);
    v36 = *(&v142 + 1);
    if (*(&v142 + 1))
    {
      v37 = __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
      v38 = v16;
      v39 = *(v36 - 8);
      v40 = MEMORY[0x1EEE9AC00](v37, v37);
      v42 = &v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v42, v40);
      v43 = sub_1D72646AC();
      (*(v39 + 8))(v42, v36);
      v16 = v38;
      v28 = v129;
      __swift_destroy_boxed_opaque_existential_1(&v141);
    }

    else
    {
      v43 = 0;
    }

    [v27 setToValue_];
    swift_unknownObjectRelease();
    v44 = *(v28 + 3);
    v45 = *(v28 + 4);
    v46 = *(v28 + 5);
    v47 = *(v28 + 6);
    v48 = *(v28 + 7);
    v49 = *(v28 + 64);
    *&v150 = *(v28 + 2);
    *(&v150 + 1) = v44;
    *&v151 = v45;
    *(&v151 + 1) = v46;
    *&v152 = v47;
    *(&v152 + 1) = v48;
    LOBYTE(v153) = v49;
    sub_1D62B753C(v150, v44, v45, v46, v47, v48, v49);
    sub_1D67EA8F0(&v141);
    sub_1D62B4A44(v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), v153);
    v50 = *(&v142 + 1);
    if (*(&v142 + 1))
    {
      v51 = __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
      v52 = v16;
      v53 = *(v50 - 8);
      v54 = MEMORY[0x1EEE9AC00](v51, v51);
      v56 = &v125 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v53 + 16))(v56, v54);
      v57 = sub_1D72646AC();
      (*(v53 + 8))(v56, v50);
      v16 = v52;
      v28 = v129;
      __swift_destroy_boxed_opaque_existential_1(&v141);
    }

    else
    {
      v57 = 0;
    }

    [v27 setByValue_];

    swift_unknownObjectRelease();
    v58 = *(v28 + 88);
    if (v58 != 255)
    {
      v150 = *(v28 + 72);
      LOBYTE(v151) = v58 & 1;
      v59 = v27;
      sub_1D725A7EC();
      v60 = FormatBoolean.value(contextLayoutOptions:)(v141);

      [v59 setCumulative_];
    }

    v61 = *(v28 + 112);
    if (v61 != 255)
    {
      v150 = *(v28 + 6);
      LOBYTE(v151) = v61 & 1;
      v62 = v27;
      sub_1D725A7EC();
      v63 = FormatBoolean.value(contextLayoutOptions:)(v141);

      [v62 setAdditive_];
    }

    v64 = *(v28 + 15);
    if (v64)
    {
      *&v150 = v16;
      v65 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v66 = v65();
      v67 = sub_1D5E02AFC(v66, v64);

      [v27 setMass_];
    }

    v68 = *(v28 + 16);
    if (v68)
    {
      *&v150 = v16;
      v129 = off_1F51AF338[0];
      v69 = type metadata accessor for FormatNodeContext(0);
      v70 = (v129)(v69, &off_1F51AF328);
      v71 = sub_1D5E02AFC(v70, v68);

      [v27 setStiffness_];
    }

    v72 = *(v28 + 17);
    if (v72)
    {
      *&v150 = v16;
      v129 = off_1F51AF338[0];
      v73 = type metadata accessor for FormatNodeContext(0);
      v74 = (v129)(v73, &off_1F51AF328);
      v75 = sub_1D5E02AFC(v74, v72);

      [v27 setDamping_];
    }

    v76 = *(v28 + 18);
    if (v76)
    {
      *&v150 = v16;
      v77 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v78 = v77();
      v79 = sub_1D5E02AFC(v78, v76);

      [v27 setInitialVelocity_];
    }

    sub_1D694CD08(0, &unk_1EDF199B0, sub_1D5D24660, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v81 = type metadata accessor for FormatOption(0);
    v129 = swift_allocBox();
    v83 = v82;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v84 = sub_1D725BD1C();
    v85 = __swift_project_value_buffer(v84, qword_1EDFFCD50);
    v86 = v126;
    (*(*(v84 - 8) + 16))(v126, v85, v84);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    [v27 settlingDuration];
    v88 = v87;
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    *(v89 + 24) = MEMORY[0x1E69E7CC0];
    *v83 = 0xD000000000000010;
    *(v83 + 1) = 0x80000001D73CEF10;
    *(v83 + 2) = v89 | 0x3000000000000000;
    *(v83 + 3) = 1;
    v90 = *(v81 + 28);
    sub_1D694C408(v86, &v83[v90]);
    (*(v127 + 56))(&v83[v90], 0, 1, v128);
    *(inited + 32) = v129;
    v91 = sub_1D6B0C068(inited);
    swift_setDeallocating();
    sub_1D694C46C(inited + 32, sub_1D5D24660);
    v92 = *(v28 + 64);
    v93 = *(v28 + 2);
    v148[2] = *(v28 + 1);
    v148[3] = v93;
    v148[4] = *(v28 + 3);
    v149 = v92;
    v94 = sub_1D67EA1C8();
    v96 = v95;
    v97 = *(v28 + 248);
    v155 = *(v28 + 232);
    v156 = v97;
    v157[0] = *(v28 + 264);
    *(v157 + 9) = *(v28 + 273);
    v98 = *(v28 + 168);
    v99 = *(v28 + 200);
    v152 = *(v28 + 184);
    v153 = v99;
    v154 = *(v28 + 216);
    v150 = *(v28 + 152);
    v151 = v98;
    v100 = *(v28 + 3);
    v101 = *(v28 + 4);
    v102 = *(v28 + 5);
    v103 = *(v28 + 6);
    v104 = *(v28 + 7);
    v105 = *(v28 + 64);
    *&v141 = *(v28 + 2);
    *(&v141 + 1) = v100;
    *&v142 = v101;
    *(&v142 + 1) = v102;
    *&v143 = v103;
    *(&v143 + 1) = v104;
    LOBYTE(v144) = v105;
    sub_1D62B753C(v141, v100, v101, v102, v103, v104, v105);
    sub_1D67EABC0();
    v128 = v106;
    v129 = v91;
    v127 = v107;
    sub_1D62B4A44(v141, *(&v141 + 1), v142, *(&v142 + 1), v143, *(&v143 + 1), v144);
    v108 = *(v28 + 3);
    v109 = *(v28 + 4);
    v110 = *(v28 + 5);
    v111 = *(v28 + 6);
    v112 = *(v28 + 7);
    v113 = *(v28 + 64);
    *&v141 = *(v28 + 2);
    *(&v141 + 1) = v108;
    *&v142 = v109;
    *(&v142 + 1) = v110;
    *&v143 = v111;
    *(&v143 + 1) = v112;
    LOBYTE(v144) = v113;
    sub_1D62B753C(v141, v108, v109, v110, v111, v112, v113);
    sub_1D67EB394();
    v130 = v114;
    v126 = v115;
    sub_1D62B4A44(v141, *(&v141 + 1), v142, *(&v142 + 1), v143, *(&v143 + 1), v144);
    v116 = type metadata accessor for FormatAnimation();
    v10 = swift_allocObject();
    v146 = v155;
    v147 = v156;
    v148[0] = v157[0];
    *(v148 + 9) = *(v157 + 9);
    v143 = v152;
    v144 = v153;
    v145 = v154;
    v141 = v150;
    v142 = v151;
    v117 = v131;
    sub_1D68137D4(v129, &v141);
    v125 = v116;
    *(v10 + 16) = v117;
    *(v10 + 24) = v94;
    *(v10 + 32) = v96;
    v118 = v128;
    *(v10 + 56) = v127;
    *(v10 + 64) = v118;
    v119 = v126;
    *(v10 + 72) = v130;
    *(v10 + 80) = v119;
    v139 = v156;
    v140[0] = v157[0];
    *(v140 + 9) = *(v157 + 9);
    v135 = v152;
    v136 = v153;
    v137 = v154;
    v138 = v155;
    v133 = v150;
    v134 = v151;
    if (sub_1D60486AC(&v133) == 1 || (v120 = v134) == 0)
    {

      *(v10 + 40) = 0;
      *(v10 + 48) = 1;
    }

    else
    {
      v132 = v129;
      v121 = off_1F51AF338[0];
      v122 = v131;
      sub_1D5DEA510(v127, v128);
      sub_1D5DEA510(v130, v119);
      type metadata accessor for FormatNodeContext(0);

      v123 = v121();
      v124 = sub_1D5E02AFC(v123, v120);

      sub_1D5B74328(v130, v126);
      sub_1D5B74328(v127, v128);

      *(v10 + 40) = v124;
      *(v10 + 48) = 0;
    }
  }

  return v10;
}

uint64_t FormatAnimationNodeSpringAnimation.deinit()
{
  sub_1D62B4A44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1D60107F0(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1D60107F0(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  v1 = *(v0 + 232);
  v2 = *(v0 + 264);
  v6[6] = *(v0 + 248);
  v7[0] = v2;
  *(v7 + 9) = *(v0 + 273);
  v3 = *(v0 + 168);
  v4 = *(v0 + 200);
  v6[2] = *(v0 + 184);
  v6[3] = v4;
  v6[4] = *(v0 + 216);
  v6[5] = v1;
  v6[0] = *(v0 + 152);
  v6[1] = v3;
  sub_1D694C46C(v6, sub_1D6047E8C);
  return v0;
}

uint64_t FormatAnimationNodeSpringAnimation.__deallocating_deinit()
{
  FormatAnimationNodeSpringAnimation.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D694C234(uint64_t a1, uint64_t a2)
{
  result = sub_1D5D24734(&qword_1EC88E8B0, a2, type metadata accessor for FormatAnimationNodeSpringAnimation, &protocol conformance descriptor for FormatAnimationNodeSpringAnimation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D694C2B0(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5D24734(&qword_1EDF163E0, a2, type metadata accessor for FormatAnimationNodeSpringAnimation, &protocol conformance descriptor for FormatAnimationNodeSpringAnimation);
  a1[2] = sub_1D5D24734(&qword_1EDF163E8, v3, type metadata accessor for FormatAnimationNodeSpringAnimation, &protocol conformance descriptor for FormatAnimationNodeSpringAnimation);
  result = sub_1D5D24734(&qword_1EC88E8B8, v4, type metadata accessor for FormatAnimationNodeSpringAnimation, &protocol conformance descriptor for FormatAnimationNodeSpringAnimation);
  a1[3] = result;
  return result;
}

uint64_t sub_1D694C35C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66725F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D694C408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D694C46C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D694C4CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v77[6] = *(a1 + 96);
  v77[7] = v3;
  v77[8] = *(a1 + 128);
  v78 = *(a1 + 144);
  v4 = *(a1 + 48);
  v77[2] = *(a1 + 32);
  v77[3] = v4;
  v5 = *(a1 + 80);
  v77[4] = *(a1 + 64);
  v77[5] = v5;
  v6 = *(a1 + 16);
  v77[0] = *a1;
  v77[1] = v6;
  v7 = MEMORY[0x1E69E6F90];
  sub_1D694CD08(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1D7273AE0;
  sub_1D694CD08(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, v7);
  v8 = type metadata accessor for FormatInspectionItem(0);
  v9 = *(v8 - 8);
  v52 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1D7273AE0;
  sub_1D694CD08(0, &qword_1EC8803C0, sub_1D5E4F38C, v7);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7270C10;
  sub_1D694CD08(0, &qword_1EC880490, sub_1D5EA74B8, v7);
  sub_1D5EA74B8(0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7284F00;
  v51 = v14;
  v15 = (v14 + v13);
  if (a2)
  {
    v17 = *(a2 + 72);
    v16 = *(a2 + 80);
    v18 = *(a2 + 88);
    sub_1D6189668(v17, v16, v18);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v18 = -1;
  }

  sub_1D71237B4(0x6974616C756D7543, 0xEA00000000006576, v17, v16, v18, v15);
  v19 = *(v9 + 56);
  v19(v15, 0, 1, v8);
  if (a2)
  {
    v20 = *(a2 + 96);
    v21 = *(a2 + 104);
    v22 = *(a2 + 112);
    sub_1D6189668(v20, v21, v22);
    sub_1D71237B4(0x6576697469646441, 0xE800000000000000, v20, v21, v22, &v15[v12]);
    v19(&v15[v12], 0, 1, v8);
    v23 = *(a2 + 120);
  }

  else
  {
    sub_1D71237B4(0x6576697469646441, 0xE800000000000000, 0, 0, 0xFFu, &v15[v12]);
    v19(&v15[v12], 0, 1, v8);
    v23 = 0;
  }

  v24 = sub_1D711B070(1936941389, 0xE400000000000000, v23, &v15[2 * v12]);
  (v19)(&v15[2 * v12], 0, 1, v8, v24);
  if (a2)
  {
    v25 = *(a2 + 128);

    v26 = sub_1D711B070(0x73656E6666697453, 0xE900000000000073, v25, &v15[3 * v12]);
    (v19)(&v15[3 * v12], 0, 1, v8, v26);
    v27 = *(a2 + 136);
  }

  else
  {
    v28 = sub_1D711B070(0x73656E6666697453, 0xE900000000000073, 0, &v15[3 * v12]);
    (v19)(&v15[3 * v12], 0, 1, v8, v28);
    v27 = 0;
  }

  v29 = sub_1D711B070(0x676E69706D6144, 0xE700000000000000, v27, &v15[4 * v12]);
  (v19)(&v15[4 * v12], 0, 1, v8, v29);
  if (a2)
  {
    v30 = *(a2 + 144);
  }

  else
  {
    v30 = 0;
  }

  v31 = 5 * v12;
  v32 = sub_1D711B070(0xD000000000000010, 0x80000001D73DCC60, v30, &v15[v31]);
  (v19)(&v15[v31], 0, 1, v8, v32);
  sub_1D6795150(0xD000000000000010, 0x80000001D73DCC40, 0, 0, v51, v75);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v10 + 56) = &type metadata for FormatInspectionGroup;
  *(v10 + 64) = &off_1F518B2C0;
  v33 = swift_allocObject();
  *(v10 + 32) = v33;
  v34 = v75[1];
  *(v33 + 16) = v75[0];
  *(v33 + 32) = v34;
  *(v33 + 48) = v76;
  if (a2)
  {
    v35 = *(a2 + 232);
    v36 = *(a2 + 248);
    v37 = *(a2 + 168);
    v38 = *(a2 + 200);
    v61 = *(a2 + 184);
    v62 = v38;
    v63 = *(a2 + 216);
    v64 = v35;
    v59 = *(a2 + 152);
    v60 = v37;
    v39 = *(a2 + 264);
    v65 = v36;
    v66[0] = v39;
    *(v66 + 9) = *(a2 + 273);
    sub_1D694CD6C(&v59, &v55, sub_1D6047E8C);
    v73 = v65;
    v74[0] = v66[0];
    *(v74 + 9) = *(v66 + 9);
    v69 = v61;
    v70 = v62;
    v71 = v63;
    v72 = v64;
    v67 = v59;
    v68 = v60;
  }

  else
  {
    sub_1D6048FB0(&v67);
  }

  v40 = sub_1D6814648(v77, &v67);
  v65 = v73;
  v66[0] = v74[0];
  *(v66 + 9) = *(v74 + 9);
  v61 = v69;
  v62 = v70;
  v63 = v71;
  v64 = v72;
  v59 = v67;
  v60 = v68;
  sub_1D694C46C(&v59, sub_1D6047E8C);
  *(v10 + 96) = &type metadata for FormatInspection;
  *(v10 + 104) = &off_1F51E3FD0;
  *(v10 + 72) = v40;
  v41 = sub_1D5F62BFC(v10);
  swift_setDeallocating();
  sub_1D5E4F38C();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v42 = sub_1D7073500(v41);

  sub_1D711AD20(1701869908, 0xE400000000000000, v42, 0x676E69727053, 0xE600000000000000, (v53 + v52));
  if (a2)
  {
    v43 = *(a2 + 64);
    v44 = *(a2 + 32);
    v55 = *(a2 + 16);
    v56 = v44;
    v57 = *(a2 + 48);
    v58 = v43;
    v45 = sub_1D67EC070();
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  *&v55 = v53;
  sub_1D698529C(v45);
  v46 = sub_1D5F62998(v55);

  sub_1D6795150(0x6F6974616D696E41, 0xE90000000000006ELL, 0, 0, v46, &v55);

  *(v54 + 56) = &type metadata for FormatInspectionGroup;
  *(v54 + 64) = &off_1F518B2C0;
  v47 = swift_allocObject();
  *(v54 + 32) = v47;
  v48 = v56;
  *(v47 + 16) = v55;
  *(v47 + 32) = v48;
  *(v47 + 48) = v57;
  v49 = sub_1D7073500(v54);
  swift_setDeallocating();
  sub_1D694C46C(v54 + 32, sub_1D5E4F358);
  swift_deallocClassInstance();
  return v49;
}

void sub_1D694CD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D694CD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D694CDE4(void *a1)
{
  a1[1] = sub_1D668E354();
  a1[2] = sub_1D5E1BA98();
  result = sub_1D694CE1C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D694CE1C()
{
  result = qword_1EDF27460;
  if (!qword_1EDF27460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27460);
  }

  return result;
}

unint64_t sub_1D694CE70(uint64_t a1)
{
  result = sub_1D694CE98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D694CE98()
{
  result = qword_1EC88E8C0;
  if (!qword_1EC88E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E8C0);
  }

  return result;
}

double sub_1D694CEEC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694D024(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694D164(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694D2BC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694D400(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694D544(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694D678(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694D7F4(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694D938(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694DA60(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694DBAC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694DCFC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694DEC0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694E014(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694E174(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694E2A0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694E3F0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694E538(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694E674(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694E7A0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694E93C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694EA54(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694EBB4(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694ECE0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694EE18(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694EF50(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694F11C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694F28C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694F3B0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694F4F8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694F650(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694F778(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694F89C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694F9DC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694FB28(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694FC5C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694FD84(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D694FF24(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D6950080(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D69501E8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D6950344(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D69504B8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D695060C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

double sub_1D695071C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D695087C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6950988(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6950A98(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6950BE4(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6950D50(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6950E90(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6950FE8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6951140(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D695124C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6951394(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69514EC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69515EC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6951708(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6951868(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6951970(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6951A9C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6951BD8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6951D20(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6951E5C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6951F68(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6952084(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69521F8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69522DC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6952418(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D695254C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6952670(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6952794(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69528F8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6952A38(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6952B38(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6952C64(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6952DB8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6952EF8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953044(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953190(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953298(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69533D0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69534DC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69535FC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953734(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953828(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953964(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953A88(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953BC0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953CD8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953DD0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6953ED8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6954014(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6954120(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6954290(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69543B4(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69544BC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69545B4(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D695471C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D695482C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6954950(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6954A58(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6954BC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6954F3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6954C64@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6690208(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6954CAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF776F6461685367;
  v3 = 0x6E6964756C637865;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000001D73BB880;
    v12 = 0xD000000000000017;
    if (a1 != 6)
    {
      v12 = 0xD00000000000001CLL;
      v11 = 0x80000001D73BB8A0;
    }

    v13 = 0x6275536563726F66;
    v14 = 0xEC00000064657564;
    if (a1 != 4)
    {
      v13 = 0xD000000000000016;
      v14 = 0x80000001D73BB860;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x7263536563726F66;
    v6 = 0xEA00000000006D69;
    if (a1 == 2)
    {
      v5 = 0x6E6964756C637865;
      v6 = 0xEF776F6461685367;
    }

    v7 = 0x80000001D73BB800;
    v8 = 0xD000000000000013;
    if (a1)
    {
      v7 = 0x80000001D73BB820;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001D73BB880;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000001D73BB8A0;
        if (v9 != 0xD00000000000001CLL)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 4)
    {
      v2 = 0xEC00000064657564;
      if (v9 != 0x6275536563726F66)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v2 = 0x80000001D73BB860;
    v3 = 0xD000000000000016;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001D73BB820;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000001D73BB800;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 != 2)
    {
      v2 = 0xEA00000000006D69;
      if (v9 != 0x7263536563726F66)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  if (v9 != v3)
  {
LABEL_45:
    v15 = sub_1D72646CC();
    goto LABEL_46;
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 0;
LABEL_46:

  return v15 & 1;
}