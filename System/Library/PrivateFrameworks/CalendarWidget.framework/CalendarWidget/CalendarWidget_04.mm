uint64_t sub_1E47CDCB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  v5 = type metadata accessor for Event(0);
  sub_1E4773850(v1 + *(v5 + 44), v4, &unk_1ECF7B688, &qword_1E487C160);
  v6 = sub_1E487725C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_1E47738B8(v4, &unk_1ECF7B688, &qword_1E487C160);
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = sub_1E487723C();
    v9 = v11;
    (*(v7 + 8))(v4, v6);
    v8 = v10;
  }

  MEMORY[0x1E69192D0](v8, v9);

  MEMORY[0x1E69192D0](45, 0xE100000000000000);
  if (*(v1 + *(v5 + 52)))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v1 + *(v5 + 52)))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v12, v13);

  return v15[0];
}

uint64_t sub_1E47CDE80()
{
  v0 = sub_1E4877ADC();
  __swift_allocate_value_buffer(v0, qword_1ECF7EA80);
  v1 = __swift_project_value_buffer(v0, qword_1ECF7EA80);
  if (qword_1EE2B16E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2BAD00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E47CDF48()
{
  v1 = v0;
  sub_1E4878F9C();
  MEMORY[0x1E69192D0](0xD000000000000012, 0x80000001E48A7C00);
  v2 = type metadata accessor for Event(0);
  if (qword_1EE2B1868 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE2B1870;
  v4 = sub_1E48772BC();
  v5 = [v3 stringFromDate_];

  v6 = sub_1E4878BDC();
  v8 = v7;

  MEMORY[0x1E69192D0](v6, v8);

  MEMORY[0x1E69192D0](0x746144646E65205DLL, 0xEC0000005B203A65);
  v9 = sub_1E48772BC();
  v10 = [v3 stringFromDate_];

  v11 = sub_1E4878BDC();
  v13 = v12;

  MEMORY[0x1E69192D0](v11, v13);

  MEMORY[0x1E69192D0](0x6C6576617274205DLL, 0xEF5B203A656D6954);
  sub_1E4878D4C();
  MEMORY[0x1E69192D0](0xD000000000000016, 0x80000001E48A7C20);
  type metadata accessor for EKLocationRoutingMode(0);
  sub_1E487902C();
  MEMORY[0x1E69192D0](0xD000000000000012, 0x80000001E48A7C40);
  v14 = sub_1E487860C();
  MEMORY[0x1E69192D0](v14);

  MEMORY[0x1E69192D0](0x69746E656469205DLL, 0xEF5B203A72656966);
  v15 = sub_1E47CDCB4();
  MEMORY[0x1E69192D0](v15);

  MEMORY[0x1E69192D0](0x7961446C6C61205DLL, 0xEB000000005B203ALL);
  if (*(v1 + v2[12]))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v1 + v2[12]))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v16, v17);

  MEMORY[0x1E69192D0](0x736F706F7270205DLL, 0xED00005B203A6465);
  if (*(v1 + v2[13]))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v1 + v2[13]))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v18, v19);

  MEMORY[0x1E69192D0](0xD000000000000014, 0x80000001E48A7C60);
  sub_1E487902C();
  MEMORY[0x1E69192D0](0xD000000000000010, 0x80000001E48A7C80);
  if (*(v1 + v2[17]))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + v2[17]))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v20, v21);

  MEMORY[0x1E69192D0](0xD000000000000012, 0x80000001E48A7CA0);
  if (*(v1 + v2[18]))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + v2[18]))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v22, v23);

  MEMORY[0x1E69192D0](0x746964457369205DLL, 0xEF5B203A656C6261);
  if (*(v1 + v2[19]))
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (*(v1 + v2[19]))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v24, v25);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_1E47CE414@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E47CDCB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Location(0);
  v57 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C800, &qword_1E487E578);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = sub_1E487725C();
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C808, &qword_1E487E580);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  if (*a1 != *a2 && (sub_1E48790EC() & 1) == 0)
  {
    goto LABEL_47;
  }

  v54 = v10;
  v20 = type metadata accessor for Event(0);
  if ((sub_1E48772EC() & 1) == 0 || (sub_1E48772EC() & 1) == 0 || *(a1 + v20[7]) != *(a2 + v20[7]) || *(a1 + v20[8]) != *(a2 + v20[8]) || (sub_1E487862C() & 1) == 0)
  {
    goto LABEL_47;
  }

  v21 = v20[10];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_1E48790EC() & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (v25)
  {
    goto LABEL_47;
  }

  v53 = v20[11];
  v26 = *(v17 + 48);
  sub_1E4773850(a1 + v53, v19, &unk_1ECF7B688, &qword_1E487C160);
  v27 = a2 + v53;
  v53 = v26;
  sub_1E4773850(v27, &v19[v26], &unk_1ECF7B688, &qword_1E487C160);
  v52 = *(v58 + 48);
  if (v52(v19, 1, v11) == 1)
  {
    if (v52(&v19[v53], 1, v11) == 1)
    {
      sub_1E47738B8(v19, &unk_1ECF7B688, &qword_1E487C160);
      goto LABEL_23;
    }

LABEL_20:
    v28 = &qword_1ECF7C808;
    v29 = &qword_1E487E580;
    v30 = v19;
LABEL_21:
    sub_1E47738B8(v30, v28, v29);
    goto LABEL_47;
  }

  sub_1E4773850(v19, v16, &unk_1ECF7B688, &qword_1E487C160);
  if (v52(&v19[v53], 1, v11) == 1)
  {
    (*(v58 + 8))(v16, v11);
    goto LABEL_20;
  }

  v31 = v58;
  (*(v58 + 32))(v13, &v19[v53], v11);
  sub_1E47CED0C(&qword_1EE2B4668, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  LODWORD(v53) = sub_1E4878AFC();
  v32 = *(v31 + 8);
  v32(v13, v11);
  v32(v16, v11);
  sub_1E47738B8(v19, &unk_1ECF7B688, &qword_1E487C160);
  if ((v53 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_23:
  if (*(a1 + v20[12]) != *(a2 + v20[12]) || *(a1 + v20[13]) != *(a2 + v20[13]) || *(a1 + v20[14]) != *(a2 + v20[14]))
  {
    goto LABEL_47;
  }

  v33 = v20[15];
  v34 = *(v8 + 48);
  v35 = v54;
  sub_1E4773850(a1 + v33, v54, &qword_1ECF7C048, &qword_1E487C5F0);
  sub_1E4773850(a2 + v33, v35 + v34, &qword_1ECF7C048, &qword_1E487C5F0);
  v36 = *(v57 + 48);
  if (v36(v35, 1, v4) != 1)
  {
    v42 = v56;
    sub_1E4773850(v35, v56, &qword_1ECF7C048, &qword_1E487C5F0);
    if (v36(v35 + v34, 1, v4) == 1)
    {
      sub_1E47CED54(v42, type metadata accessor for Location);
      goto LABEL_36;
    }

    v43 = v55;
    sub_1E47CECA8(v35 + v34, v55);
    if (sub_1E487715C())
    {
      v44 = *(v4 + 20);
      v45 = (v42 + v44);
      v46 = *(v42 + v44 + 8);
      v47 = (v43 + v44);
      v48 = v47[1];
      if (v46)
      {
        if (v48 && (*v45 == *v47 && v46 == v48 || (sub_1E48790EC() & 1) != 0))
        {
          goto LABEL_43;
        }
      }

      else if (!v48)
      {
LABEL_43:
        sub_1E47CED54(v43, type metadata accessor for Location);
        sub_1E47CED54(v42, type metadata accessor for Location);
        v35 = v54;
        goto LABEL_28;
      }
    }

    sub_1E47CED54(v43, type metadata accessor for Location);
    sub_1E47CED54(v42, type metadata accessor for Location);
    v28 = &qword_1ECF7C048;
    v29 = &qword_1E487C5F0;
    v30 = v54;
    goto LABEL_21;
  }

  if (v36(v35 + v34, 1, v4) != 1)
  {
LABEL_36:
    v28 = &qword_1ECF7C800;
    v29 = &qword_1E487E578;
    v30 = v35;
    goto LABEL_21;
  }

LABEL_28:
  sub_1E47738B8(v35, &qword_1ECF7C048, &qword_1E487C5F0);
  v37 = v20[16];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_1E48790EC() & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (v41)
  {
    goto LABEL_47;
  }

  if (*(a1 + v20[17]) == *(a2 + v20[17]) && *(a1 + v20[18]) == *(a2 + v20[18]))
  {
    v49 = *(a1 + v20[19]) ^ *(a2 + v20[19]) ^ 1;
    return v49 & 1;
  }

LABEL_47:
  v49 = 0;
  return v49 & 1;
}

uint64_t sub_1E47CECA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47CED0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E47CED54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SpatialDayView(uint64_t a1)
{
  result = qword_1EE2B3C38;
  if (!qword_1EE2B3C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47CEE28(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DayEvents(319);
    if (v2 <= 0x3F)
    {
      sub_1E47CF060(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E4788A6C(319, &qword_1EE2B16B0, MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E47CF060(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            sub_1E47CF060(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
            if (v6 <= 0x3F)
            {
              sub_1E47CF060(319, &qword_1ECF7C828, type metadata accessor for CGRect, MEMORY[0x1E6981788]);
              if (v7 <= 0x3F)
              {
                sub_1E4788A6C(319, &unk_1ECF7C830, MEMORY[0x1E6981788]);
                if (v8 <= 0x3F)
                {
                  sub_1E48783DC();
                  if (v9 <= 0x3F)
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

void sub_1E47CF060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47CF0E0@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SpatialDayView(0);
  sub_1E4773850(v1 + *(v10 + 36), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1E47CF2E8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SpatialDayView(0) + 40));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  v8 = sub_1E4878DDC();
  v9 = sub_1E48780FC();
  sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v10[1];
}

uint64_t sub_1E47CF444@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SpatialDayView(0);
  sub_1E4773850(v1 + *(v10 + 44), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47CF64C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SpatialDayView(0) + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

id sub_1E47CF79C(double a1, double a2, double a3, double a4)
{
  v9 = sub_1E487751C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E487753C();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v44 - v17;
  v19 = sub_1E487732C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v52 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v51 = &v44 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v54 = &v44 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v44 - v27;
  v46 = type metadata accessor for SpatialDayView(0);
  v29 = v4 + v46[5];
  v47 = *(v20 + 16);
  v47(v28, v29, v19);
  v50 = v4;
  sub_1E47CF0E0(v15);
  (*(v10 + 104))(v12, *MEMORY[0x1E6969A48], v9);
  v53 = v28;
  sub_1E48774BC();
  (*(v10 + 8))(v12, v9);
  v48 = *(v55 + 8);
  v49 = v55 + 8;
  v48(v15, v56);
  result = (*(v20 + 48))(v18, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = v54;
    (*(v20 + 32))(v54, v18, v19);
    v32 = v51;
    v33 = v47;
    v47(v51, v53, v19);
    v34 = v52;
    v33(v52, v31, v19);
    v35 = *(v50 + v46[7]);
    v45 = *(v50 + v46[6]);
    v46 = v35;
    v36 = sub_1E47CF2E8();
    sub_1E47CF0E0(v15);
    v37 = type metadata accessor for SpatialLayoutDelegate(0);
    v38 = objc_allocWithZone(v37);
    *&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_topPadding] = 0;
    v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_originIsUpperLeft] = 1;
    *&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_hoursInDay] = 0x4038000000000000;
    *&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_secondsInDay] = 0x40F5180000000000;
    *&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_secondsInMinute] = 0x404E000000000000;
    *&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_secondsInHour] = 0x40AC200000000000;
    v39 = &v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect];
    *v39 = a1;
    v39[1] = a2;
    v39[2] = a3;
    v39[3] = a4;
    v33(&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startDate], v32, v19);
    v33(&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endDate], v34, v19);
    v40 = v46;
    *&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow] = v45;
    *&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow] = v40;
    *&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_scale] = v36;
    v41 = v56;
    (*(v55 + 16))(&v38[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_calendar], v15, v56);
    v57.receiver = v38;
    v57.super_class = v37;
    v42 = objc_msgSendSuper2(&v57, sel_init);
    v48(v15, v41);
    v43 = *(v20 + 8);
    v43(v34, v19);
    v43(v32, v19);
    v43(v54, v19);
    v43(v53, v19);
    return v42;
  }

  return result;
}

double sub_1E47CFD84()
{
  type metadata accessor for SpatialDayView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC0, &qword_1E487B8A0);
  sub_1E487880C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C890, &qword_1E487E6E0);
  sub_1E487880C();
  sub_1E487880C();
  CGRectGetWidth(*v1);
  sub_1E487880C();
  sub_1E487880C();
  CGRectGetHeight(*v1);
  return *v1;
}

double sub_1E47CFEF4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SpatialDayView(0) + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 48);

  return v10 + v10 + 2.0;
}

uint64_t sub_1E47D0060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v7 = sub_1E487751C();
  v103 = *(v7 - 8);
  v104 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v97 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v98 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v80 - v14;
  v108 = sub_1E487732C();
  v16 = *(v108 - 8);
  v17 = MEMORY[0x1EEE9AC00](v108);
  v99 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v100 = &v80 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v101 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v106 = &v80 - v23;
  v107 = sub_1E487753C();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v25 = (&v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_1E48770FC();
  v94 = *(v26 - 8);
  v95 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v102 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v28 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v109.origin.x = sub_1E47CFD84();
  x = v109.origin.x;
  y = v109.origin.y;
  width = v109.size.width;
  height = v109.size.height;
  if (CGRectGetWidth(v109) <= 0.0 || (v110.origin.x = x, v110.origin.y = y, v110.size.width = width, v110.size.height = height, CGRectGetHeight(v110) <= 0.0))
  {

    *a2 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v82 = v28;
  v83 = a2;
  v91 = v3;
  sub_1E47CF0E0(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v33 = v103;
  v34 = *(v103 + 72);
  v35 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1E487BC70;
  v37 = v36 + v35;
  v38 = *MEMORY[0x1E6969A50];
  v93 = v16;
  v88 = a1;
  v39 = v15;
  v41 = v33 + 104;
  v40 = *(v33 + 104);
  v42 = v104;
  v40(v37, v38, v104);
  v40(v37 + v34, *MEMORY[0x1E6969A68], v42);
  v40(v37 + 2 * v34, *MEMORY[0x1E6969A78], v42);
  v85 = *MEMORY[0x1E6969A48];
  v87 = v41;
  v86 = v40;
  (v40)(v37 + 3 * v34);
  v43 = v39;
  v44 = v88;
  sub_1E486B81C(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v84 = v44 + *(type metadata accessor for SpatialDayView(0) + 20);
  sub_1E487747C();

  v45 = v105 + 8;
  v46 = *(v105 + 8);
  v47 = v107;
  v46(v25, v107);
  sub_1E48770BC();
  sub_1E47CF0E0(v25);
  sub_1E48774AC();
  v92 = v46;
  v46(v25, v47);
  v48 = *(v93 + 48);
  v49 = v108;
  v105 = v93 + 48;
  v90 = v48;
  result = v48(v43, 1, v108);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v89 = *(v93 + 32);
  v89(v106, v43, v49);
  sub_1E48770BC();
  sub_1E47CF0E0(v25);
  v51 = v98;
  sub_1E48774AC();
  v52 = v108;
  v92(v25, v107);
  result = v90(v51, 1, v52);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v53 = v101;
  v89(v101, v51, v52);
  v54 = sub_1E47CFD84();
  v58 = sub_1E47CF79C(v54, v55, v56, v57);
  v59 = sub_1E47CFEF4() + a3;
  v60 = type metadata accessor for DayEvents(0);
  v61 = v84;
  MEMORY[0x1EEE9AC00](v60);
  v81 = v58;
  *(&v80 - 6) = v58;
  *(&v80 - 5) = v59;
  *(&v80 - 4) = v106;
  *(&v80 - 3) = v53;
  *(&v80 - 2) = v44;
  v62 = v91;
  v98 = sub_1E4856734(sub_1E47D3910, (&v80 - 8), v63);
  v91 = v62;
  (*(v93 + 16))(v100, v61, v108);
  sub_1E47CF0E0(v25);
  v64 = v96;
  v65 = v104;
  v86(v96, v85, v104);
  v66 = v97;
  sub_1E48774BC();
  v67 = v108;
  (*(v103 + 8))(v64, v65);
  v92(v25, v107);
  result = v90(v66, 1, v67);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v105 = v45;
  v89(v99, v66, v67);
  if (v98 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8A0, &qword_1E487E750);
    sub_1E487904C();
  }

  else
  {

    sub_1E48790FC();
  }

  v68 = v81;
  sub_1E47CF0E0(v25);
  v69 = objc_allocWithZone(MEMORY[0x1E6993480]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8A0, &qword_1E487E750);
  v70 = sub_1E4878C9C();

  v71 = v100;
  v72 = sub_1E48772BC();
  v73 = v99;
  v74 = sub_1E48772BC();
  v75 = sub_1E487748C();
  v76 = [v69 initWithOccurrences:v70 startOfDay:v72 endOfDay:v74 geometryDelegate:v68 screenUtilsDelegate:v68 calendar:v75];

  v92(v25, v107);
  [v76 applyLayoutToOccurrences];

  v77 = *(v93 + 8);
  v78 = v73;
  v79 = v108;
  v77(v78, v108);
  v77(v71, v79);
  (*(v94 + 8))(v102, v95);
  *v83 = v98;
  v77(v101, v79);
  v77(v106, v79);
}

uint64_t sub_1E47D0B28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, objc_class *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  v38 = a6;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v36 = a2;
  v9 = sub_1E487732C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v37 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47D393C(a1, v17, type metadata accessor for Event);
  v18 = *(v10 + 16);
  v32 = v14;
  v18(v14, v33, v9);
  v18(v39, v34, v9);
  v35 = sub_1E47CF64C();
  v34 = type metadata accessor for SpatialEventViewModel(0);
  v19 = objc_allocWithZone(v34);
  v20 = &v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame];
  *v20 = 0u;
  v20[1] = 0u;
  *&v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight] = 0x7FEFFFFFFFFFFFFFLL;
  *&v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight] = 0;
  v21 = &v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_unPinnedViewFrame];
  *v21 = 0u;
  v21[1] = 0u;
  v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_hideTravelTime] = 0;
  v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeightLocked] = 0;
  sub_1E47D393C(v17, &v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event], type metadata accessor for Event);
  v22 = v36;
  *&v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate] = v36;
  *&v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_lineHeight] = a7;
  v18(&v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate], v14, v9);
  v23 = v39;
  v18(&v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewEndDate], v39, v9);
  v41 = 0;
  v42 = 0xE000000000000000;
  v24 = v22;
  sub_1E4878F9C();

  v41 = 0xD000000000000012;
  v42 = 0x80000001E48A7D10;
  v25 = sub_1E47CDCB4();
  MEMORY[0x1E69192D0](v25);

  v26 = v42;
  v27 = &v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_id];
  *v27 = v41;
  v27[1] = v26;
  *&v19[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewMetrics] = v35;
  v40.receiver = v19;
  v40.super_class = v34;
  v28 = objc_msgSendSuper2(&v40, sel_init);
  v29 = *(v10 + 8);
  v29(v23, v9);
  v29(v32, v9);
  sub_1E47D39A4(v17, type metadata accessor for Event);

  *v38 = v28;
  return result;
}

uint64_t sub_1E47D0F40()
{
  v0 = sub_1E48770FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E487753C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E47CF0E0(v7);
  v8 = type metadata accessor for SpatialDayView(0);
  v9 = sub_1E48774CC();
  v10 = *(v5 + 8);
  result = (v10)(v7, v4);
  if (v9)
  {
    v32[1] = v8;
    v33 = v1;
    v34 = v0;
    v12 = sub_1E47CFD84();
    v35 = sub_1E47CF79C(v12, v13, v14, v15);
    sub_1E47CF0E0(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
    v37 = v4;
    v16 = sub_1E487751C();
    v17 = *(v16 - 8);
    v18 = v17;
    v38 = v3;
    v19 = *(v17 + 72);
    v20 = *(v17 + 80);
    v36 = v10;
    v21 = (v20 + 32) & ~v20;
    v22 = 2 * v19;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E487AC40;
    v24 = v23 + v21;
    v25 = *(v18 + 104);
    v25(v24, *MEMORY[0x1E6969A58], v16);
    v26 = v24 + v19;
    v27 = v38;
    v25(v26, *MEMORY[0x1E6969A88], v16);
    v25(v24 + v22, *MEMORY[0x1E6969A98], v16);
    sub_1E486B81C(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1E487747C();

    v36(v7, v37);
    result = sub_1E48770AC();
    if ((v28 & 1) == 0)
    {
      result = sub_1E48770CC();
      if (v29)
      {
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      result = sub_1E48770DC();
      v30 = v35;
      if (v31)
      {
LABEL_11:
        __break(1u);
        return result;
      }

      if (!__OFSUB__(*&v35[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow], *&v35[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow]))
      {
        sub_1E47CF2E8();

        return (*(v33 + 8))(v27, v34);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

double sub_1E47D1384()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7D8, &unk_1E487F4E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8B0, &unk_1E487E2C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1E48783BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SpatialDayView(0);
  if (qword_1EE2B3748 != -1)
  {
    swift_once();
  }

  v10 = sub_1E487842C();
  v12 = v11;
  v14 = v13;
  v15 = sub_1E487838C();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = sub_1E487843C();
  (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
  sub_1E48783AC();
  sub_1E487839C();
  v18 = v17;
  sub_1E477A3C8(v10, v12, v14 & 1);

  (*(v7 + 8))(v9, v6);
  v19 = sub_1E47CF2E8();
  return round(v18 * v19) / v19;
}

uint64_t sub_1E47D1664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v63 = a1;
  v75 = a3;
  v67 = sub_1E4877CCC();
  v66 = *(v67 - 8);
  v6 = MEMORY[0x1EEE9AC00](v67);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C848, &qword_1E487E600);
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v72 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v61 - v12;
  v13 = type metadata accessor for SpatialDayView(0);
  v68 = *(v13 - 1);
  v14 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C850, &qword_1E487E608);
  v16 = MEMORY[0x1EEE9AC00](v69);
  v71 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  sub_1E4878D2C();
  v70 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = v13[5];
  v21 = *(a2 + v13[6]);
  v22 = *(a2 + v13[7]);
  v23 = type metadata accessor for SpatialGridView(0);
  v24 = v23[6];
  v25 = sub_1E487732C();
  (*(*(v25 - 8) + 16))(&v19[v24], a2 + v20, v25);
  v26 = *(a2 + v13[8]);
  *&v19[v23[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  *&v19[v23[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v19[v23[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *v19 = v21;
  *(v19 + 1) = v22;
  v19[v23[7]] = v26;
  sub_1E47D393C(a2, &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SpatialDayView);
  v27 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v28 = swift_allocObject();
  sub_1E47D2BE4(v15, v28 + v27);
  v29 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C860, &qword_1E487E6A0) + 36)];
  *v29 = sub_1E47D30B4;
  v29[1] = v28;
  sub_1E47D393C(a2, v15, type metadata accessor for SpatialDayView);
  v30 = swift_allocObject();
  v31 = sub_1E47D2BE4(v15, v30 + v27);
  v32 = &v19[*(v69 + 36)];
  *v32 = sub_1E47D33B4;
  v32[1] = v30;
  v33 = MEMORY[0x1E6919990](v31);
  sub_1E47D0060(a2, &v79, a4);
  objc_autoreleasePoolPop(v33);
  v80 = v79;
  swift_getKeyPath();
  sub_1E47D393C(a2, v15, type metadata accessor for SpatialDayView);
  v34 = swift_allocObject();
  sub_1E47D2BE4(v15, v34 + v27);
  *(v34 + ((v27 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C868, &qword_1E487E6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C870, &qword_1E487E6D0);
  sub_1E4773680(&qword_1EE2B0DF8, &qword_1ECF7C868, &qword_1E487E6C8, MEMORY[0x1E69E6338]);
  sub_1E47D376C();
  sub_1E487885C();
  sub_1E47D0F40();
  if (v35 < 0.0 || (v36 = v64, sub_1E47CF444(v64), v37 = v65, sub_1E4877CAC(), sub_1E47D3858(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]), v38 = v67, v39 = sub_1E4878EAC(), v40 = *(v66 + 8), v40(v37, v38), v40(v36, v38), (v39 & 1) != 0))
  {
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
    v41 = 0.0;
    v42 = 0;
    LODWORD(v63) = 1;
  }

  else
  {
    sub_1E4877BEC();
    sub_1E487889C();
    sub_1E4877BCC();
    v69 = v80;
    v43 = v81;
    v68 = v82;
    v44 = v83;
    v67 = v84;
    v66 = v85;
    sub_1E4877BEC();
    v41 = v45 * 0.5 + 0.0;
    sub_1E47D0F40();
    v42 = v46;
    LODWORD(v63) = 0;
    v77 = v44;
    v64 = v43;
    v65 = v44;
    v78 = 0;
  }

  v47 = v71;
  v62 = v19;
  sub_1E4773850(v19, v71, &unk_1ECF7C850, &qword_1E487E608);
  v48 = v72;
  v49 = v73;
  v50 = *(v73 + 16);
  v51 = v76;
  v52 = v74;
  v50(v72, v76, v74);
  v53 = v75;
  sub_1E4773850(v47, v75, &unk_1ECF7C850, &qword_1E487E608);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C878, &qword_1E487E6D8);
  v50((v53 + *(v54 + 48)), v48, v52);
  v55 = v53 + *(v54 + 64);
  v56 = v64;
  *v55 = v69;
  *(v55 + 8) = v56;
  v57 = v65;
  *(v55 + 16) = v68;
  *(v55 + 24) = v57;
  v58 = v66;
  *(v55 + 32) = v67;
  *(v55 + 40) = v58;
  *(v55 + 48) = v41;
  *(v55 + 56) = v42;
  *(v55 + 64) = v63;
  v59 = *(v49 + 8);
  v59(v51, v52);
  sub_1E47738B8(v62, &unk_1ECF7C850, &qword_1E487E608);
  v59(v48, v52);
  sub_1E47738B8(v47, &unk_1ECF7C850, &qword_1E487E608);
}

uint64_t sub_1E47D1FA0(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  v9 = a1[1];
  v10 = v3;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v6[2] = a2;
  v8 = v9;
  v7 = v10;
  sub_1E4822780(sub_1E47D3A24, v6, "CalendarWidget/SpatialDayView.swift", 35, 2u, 141);
}

uint64_t sub_1E47D20A8(uint64_t a1, float64_t a2, float64_t a3, float64_t a4, float64_t a5)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47CF2E8();
  type metadata accessor for SpatialDayView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C890, &qword_1E487E6E0);
  sub_1E487881C();
}

uint64_t sub_1E47D21DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v6[2] = a2;
  v6[3] = v3;
  sub_1E4822780(sub_1E47D3A04, v6, "CalendarWidget/SpatialDayView.swift", 35, 2u, 146);
}

uint64_t sub_1E47D22E0(uint64_t a1, double a2)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47CF2E8();
  type metadata accessor for SpatialDayView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC0, &qword_1E487B8A0);
  sub_1E487881C();
}

uint64_t sub_1E47D23E8@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v49 = a3;
  v7 = sub_1E48782AC();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SpatialEventView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C898, &qword_1E487E6E8);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v42 - v13;
  v15 = type metadata accessor for SpatialReminderView(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C870, &qword_1E487E6D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v48 = &v42 - v19;
  v20 = *a1;
  sub_1E4878D2C();
  v47 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = &v20[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event];
  LODWORD(v21) = v21[*(type metadata accessor for Event(0) + 56)] & 0xFE;
  v22 = type metadata accessor for SpatialDayView(0);
  v23 = *(a2 + *(v22 + 24));
  v24 = *(a2 + *(v22 + 28));
  KeyPath = swift_getKeyPath();
  if (v21 == 6)
  {
    *&v17[v15[8]] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v26 = swift_getKeyPath();
    *&v17[v15[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v17[v15[11]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v27 = swift_getKeyPath();
    *v17 = v20;
    *(v17 + 1) = v23;
    *(v17 + 2) = v24;
    *(v17 + 3) = a4;
    v28 = &v17[v15[9]];
    *v28 = v26;
    v28[8] = 0;
    v29 = &v17[v15[12]];
    *v29 = v27;
    v29[8] = 0;
    sub_1E47D393C(v17, v14, type metadata accessor for SpatialReminderView);
    swift_storeEnumTagMultiPayload();
    sub_1E47D3858(qword_1EE2B2C08, type metadata accessor for SpatialReminderView, &unk_1E48828B4);
    sub_1E47D3858(&qword_1EE2B3740, type metadata accessor for SpatialEventView, &unk_1E48801F4);
    v30 = v20;
    v31 = v48;
    sub_1E487803C();
    v32 = type metadata accessor for SpatialReminderView;
    v33 = v17;
  }

  else
  {
    *&v12[v10[9]] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v43 = swift_getKeyPath();
    *&v12[v10[11]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v12[v10[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v34 = swift_getKeyPath();
    *v12 = v20;
    *(v12 + 1) = v23;
    *(v12 + 2) = v24;
    *(v12 + 3) = a4;
    v35 = v20;
    sub_1E48782DC();
    v36 = v44;
    v37 = v45;
    (*(v44 + 104))(v9, *MEMORY[0x1E6980EA0], v45);
    v38 = sub_1E48782CC();

    (*(v36 + 8))(v9, v37);
    *(v12 + 4) = v38;
    v39 = &v12[v10[10]];
    *v39 = v43;
    v39[8] = 0;
    v40 = &v12[v10[13]];
    *v40 = v34;
    v40[8] = 0;
    sub_1E47D393C(v12, v14, type metadata accessor for SpatialEventView);
    swift_storeEnumTagMultiPayload();
    sub_1E47D3858(qword_1EE2B2C08, type metadata accessor for SpatialReminderView, &unk_1E48828B4);
    sub_1E47D3858(&qword_1EE2B3740, type metadata accessor for SpatialEventView, &unk_1E48801F4);
    v31 = v48;
    sub_1E487803C();
    v32 = type metadata accessor for SpatialEventView;
    v33 = v12;
  }

  sub_1E47D39A4(v33, v32);
  sub_1E47D38A0(v31, v49);
}

uint64_t sub_1E47D2AA8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v6 = sub_1E47D1384();
  sub_1E47D393C(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SpatialDayView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  result = sub_1E47D2BE4(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  *a2 = sub_1E47D2C48;
  a2[1] = v8;
  a2[2] = 0xD00000000000001DLL;
  a2[3] = 0x80000001E48A7CC0;
  return result;
}

uint64_t sub_1E47D2BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialDayView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47D2C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SpatialDayView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E47D1664(a1, v2 + v6, a2, v7);
}

uint64_t sub_1E47D2CF4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1E4877F6C();
  v21 = 0;
  sub_1E47D2E40(&v12);
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v30[0] = v12;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[5] = v17;
  v30[6] = v18;
  v30[7] = v19;
  sub_1E4773850(&v22, &v11, &qword_1ECF7C8E8, &qword_1E487E7D0);
  result = sub_1E47738B8(v30, &qword_1ECF7C8E8, &qword_1E487E7D0);
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[103] = v28;
  *&v20[119] = v29;
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  v5 = *&v20[64];
  *(a2 + 97) = *&v20[80];
  v6 = *&v20[112];
  *(a2 + 113) = *&v20[96];
  *(a2 + 129) = v6;
  v7 = *v20;
  *(a2 + 33) = *&v20[16];
  v8 = *&v20[48];
  *(a2 + 49) = *&v20[32];
  *(a2 + 65) = v8;
  *(a2 + 81) = v5;
  v9 = v21;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  v10 = *&v20[127];
  *(a2 + 17) = v7;
  *(a2 + 144) = v10;
  strcpy((a2 + 152), "Now Indicator");
  *(a2 + 166) = -4864;
  return result;
}

uint64_t sub_1E47D2E40@<X0>(_OWORD *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1E487863C();
  sub_1E487889C();
  sub_1E4877BCC();
  *&v13[6] = v26;
  *&v13[22] = v27;
  *&v13[38] = v28;
  v3 = sub_1E487863C();
  sub_1E487889C();
  sub_1E4877BCC();
  *&v12[6] = v29;
  *&v12[22] = v30;
  *&v12[38] = v31;
  *v14 = v2;
  *&v14[8] = 256;
  *&v14[10] = *v13;
  *&v14[26] = *&v13[16];
  *&v14[42] = *&v13[32];
  *&v14[56] = *(&v28 + 1);
  *v15 = v3;
  v6 = *v14;
  v7 = *&v14[16];
  *&v15[8] = 256;
  *&v15[10] = *v12;
  *&v15[56] = *(&v31 + 1);
  *&v15[42] = *&v12[32];
  *&v15[26] = *&v12[16];
  v10 = *&v15[32];
  v11 = *&v15[48];
  v8 = *v15;
  v9 = *&v15[16];
  v4 = *&v14[48];
  a1[2] = *&v14[32];
  a1[3] = v4;
  *a1 = v6;
  a1[1] = v7;
  a1[6] = v10;
  a1[7] = v11;
  a1[4] = v8;
  a1[5] = v9;
  v16 = v3;
  v17 = 256;
  *&v20[14] = *&v12[46];
  *v20 = *&v12[32];
  v19 = *&v12[16];
  v18 = *v12;
  sub_1E4773850(v14, &v21, &qword_1ECF7C8F0, &qword_1E487E7D8);
  sub_1E4773850(v15, &v21, &qword_1ECF7C8F8, &qword_1E487E7E0);
  sub_1E47738B8(&v16, &qword_1ECF7C8F8, &qword_1E487E7E0);
  v21 = v2;
  v22 = 256;
  v23 = *v13;
  v24 = *&v13[16];
  *v25 = *&v13[32];
  *&v25[14] = *&v13[46];
  sub_1E47738B8(&v21, &qword_1ECF7C8F0, &qword_1E487E7D8);
}

uint64_t sub_1E47D30B4(__int128 *a1)
{
  v3 = *(type metadata accessor for SpatialDayView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E47D1FA0(a1, v4);
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for SpatialDayView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);
  type metadata accessor for DayEvents(0);

  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E487753C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_1E477A484(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v10 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[15];
  v13 = sub_1E48783DC();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E47D33B4(uint64_t *a1)
{
  v3 = *(type metadata accessor for SpatialDayView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E47D21DC(a1, v4);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for SpatialDayView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);
  type metadata accessor for DayEvents(0);

  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E487753C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_1E477A484(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v10 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[15];
  v13 = sub_1E48783DC();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1E47D36C0@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SpatialDayView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E47D23E8(a1, v2 + v6, a2, v7);
}

unint64_t sub_1E47D376C()
{
  result = qword_1EE2B1220;
  if (!qword_1EE2B1220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C870, &qword_1E487E6D0);
    sub_1E47D3858(qword_1EE2B2C08, type metadata accessor for SpatialReminderView, &unk_1E48828B4);
    sub_1E47D3858(&qword_1EE2B3740, type metadata accessor for SpatialEventView, &unk_1E48801F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1220);
  }

  return result;
}

uint64_t sub_1E47D3858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E47D38A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C870, &qword_1E487E6D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47D393C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47D39A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E47D3A58()
{
  result = qword_1EE2B1578;
  if (!qword_1EE2B1578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF7C8C0, &qword_1E487E768);
    sub_1E4773680(&qword_1EE2B1608, &unk_1ECF7C8D0, &qword_1E487E770, MEMORY[0x1E697E370]);
    sub_1E4773680(&qword_1EE2B10F8, &qword_1ECF7C8E0, qword_1E487E778, MEMORY[0x1E697C960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1578);
  }

  return result;
}

uint64_t type metadata accessor for NarrowXMoreView(uint64_t a1)
{
  result = qword_1EE2B3AB8;
  if (!qword_1EE2B3AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47D3BCC(uint64_t a1)
{
  sub_1E47BBFDC(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E478305C();
    if (v2 <= 0x3F)
    {
      sub_1E47BBFDC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E47BBFDC(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E47D3D34()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E487A7E0;
  if (sub_1E47D3FE8())
  {
    sub_1E48782DC();
  }

  else
  {
    sub_1E48781BC();
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA0], v0);
  v5 = sub_1E48782CC();

  (*(v1 + 8))(v3, v0);
  *(v4 + 32) = v5;
  return v4;
}

double sub_1E47D3E84(uint64_t a1)
{
  v3 = sub_1E48782AC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1.0;
  if (*(v1 + 8) == 1)
  {
    v8 = *(sub_1E47D4130() + 112);

    v7 = fmax(v8, 1.0);
  }

  if (sub_1E47D3FE8())
  {
    sub_1E48782DC();
  }

  else
  {
    sub_1E48781BC();
  }

  (*(v4 + 104))(v6, *MEMORY[0x1E6980EA0], v3);
  v9 = sub_1E48782CC();

  (*(v4 + 8))(v6, v3);
  sub_1E487201C(v9, a1);
  v11 = v10;

  return v7 * v11;
}

uint64_t sub_1E47D3FE8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    v6 = sub_1E4878DDC();
    v7 = sub_1E48780FC();
    sub_1E4877AAC(v6, &dword_1E475C000, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t sub_1E47D4130()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  if ((v6 & 1) == 0)
  {
    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v5;
}

uint64_t sub_1E47D4270@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowXMoreView(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47D4478()
{
  v18 = type metadata accessor for Event(0);
  v1 = *(v18 - 8);
  v2 = MEMORY[0x1EEE9AC00](v18);
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = *v0;
  v16 = *(*v0 + 16);
  if (v16)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v7 + 16))
    {
      v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v11 = *(v1 + 72);
      sub_1E47D6B84(v7 + v10 + v11 * v8, v6, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = v6[*(v18 + 56)];

      if ((v12 & 0xFE) == 6)
      {
        sub_1E47D6C4C(v6, v17, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v9 + 16) + 1, 1);
          v9 = v19;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1E4858038((v14 > 1), v15 + 1, 1);
          v9 = v19;
        }

        *(v9 + 16) = v15 + 1;
        result = sub_1E47D6C4C(v17, v9 + v10 + v15 * v11, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E47D6BEC(v6, type metadata accessor for Event);
      }

      if (v16 == ++v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E47D4714()
{
  v1 = *(*v0 + 16);
  v2 = *(sub_1E47D4478() + 16);

  v3 = *(sub_1E47D4478() + 16);

  v4 = v1 - v2;
  if (v1 == v2 && v3 != 0)
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v6 = __OFADD__(v4, v3);
  v3 += v4;
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v0[8])
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (qword_1EE2B4848 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_13:
  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1E487A7E0;
  v9 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v3;
  v10 = sub_1E4878BAC();

  return v10;
}

uint64_t sub_1E47D496C()
{
  v1 = *(*v0 + 16);
  v2 = *(sub_1E47D4478() + 16);

  v3 = *(sub_1E47D4478() + 16);

  v4 = v1 - v2;
  if (v1 != v2 || v3 == 0)
  {
    v6 = __OFADD__(v4, v3);
    v3 += v4;
    if (v6)
    {
      __break(1u);
    }

    else if (v0[8])
    {
      if (qword_1EE2B4848 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_1EE2B4848 == -1)
    {
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_11;
  }

  if (qword_1EE2B4848 != -1)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1E487A7E0;
  v9 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v3;
  v10 = sub_1E4878BAC();

  return v10;
}

uint64_t sub_1E47D4B60@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C910, &qword_1E487E868);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  *v5 = sub_1E487810C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C918, &qword_1E487E870);
  sub_1E47D4C94(v1, &v5[*(v6 + 44)]);
  v7 = sub_1E487813C();
  if (sub_1E47D3FE8())
  {
    sub_1E47D4130();
  }

  sub_1E4877B0C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1E477372C(v5, a1, &qword_1ECF7C910, &qword_1E487E868);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C920, &qword_1E487E878);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_1E47D4C94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C928, &qword_1E487E880);
  v59 = *(v60 - 8);
  v3 = MEMORY[0x1EEE9AC00](v60);
  v57 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v62 = &KeyPath - v5;
  v6 = type metadata accessor for NarrowXMoreView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C930, &unk_1E487E888);
  v55 = *(v56 - 8);
  v9 = MEMORY[0x1EEE9AC00](v56);
  v54 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &KeyPath - v11;
  sub_1E4878D2C();
  v53 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
  inited = swift_initStackObject();
  v51 = xmmword_1E487A7F0;
  *(inited + 16) = xmmword_1E487A7F0;
  *(inited + 32) = sub_1E47D4714();
  *(inited + 40) = v13;
  *(inited + 48) = sub_1E47D496C();
  *(inited + 56) = v14;
  v63 = MEMORY[0x1E69E7CD0];
  v44 = a1;
  v15 = sub_1E477A548(inited);
  v50 = 0;
  swift_setDeallocating();
  swift_arrayDestroy();

  v63 = v15;
  KeyPath = swift_getKeyPath();
  v49 = type metadata accessor for NarrowXMoreView;
  sub_1E47D6B84(a1, &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NarrowXMoreView);
  v16 = *(v7 + 80);
  v46 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  v48 = v8;
  v47 = type metadata accessor for NarrowXMoreView;
  sub_1E47D6C4C(&KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for NarrowXMoreView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B978, &qword_1E487ABA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C938, &qword_1E487E8B0);
  v45 = sub_1E4773680(&qword_1EE2B0DC0, &qword_1ECF7B978, &qword_1E487ABA8, MEMORY[0x1E69E6338]);
  v19 = MEMORY[0x1E6981808];
  sub_1E4773680(&qword_1EE2B0F40, &qword_1ECF7C938, &qword_1E487E8B0, MEMORY[0x1E6981808]);
  v20 = v61;
  sub_1E487885C();
  v21 = swift_initStackObject();
  *(v21 + 16) = v51;
  v22 = v44;
  *(v21 + 32) = sub_1E47D4714();
  *(v21 + 40) = v23;
  v24 = v22;
  *(v21 + 48) = sub_1E47D496C();
  *(v21 + 56) = v25;
  v63 = MEMORY[0x1E69E7CD0];
  v26 = sub_1E477A548(v21);
  swift_setDeallocating();
  swift_arrayDestroy();

  v63 = v26;
  swift_getKeyPath();
  v27 = v46;
  sub_1E47D6B84(v24, v46, v49);
  v28 = swift_allocObject();
  sub_1E47D6C4C(v27, v28 + v17, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C940, &qword_1E487E8B8);
  sub_1E4773680(&qword_1EE2B0F38, &qword_1ECF7C940, &qword_1E487E8B8, v19);
  v29 = v62;
  sub_1E487885C();
  v30 = v55;
  v31 = *(v55 + 16);
  v32 = v54;
  v33 = v56;
  v31(v54, v20, v56);
  v34 = v59;
  v52 = *(v59 + 16);
  v35 = v57;
  v36 = v29;
  v37 = v60;
  v52(v57, v36, v60);
  v38 = v58;
  v31(v58, v32, v33);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C948, &qword_1E487E8C0);
  v52(&v38[*(v39 + 48)], v35, v37);
  v40 = *(v34 + 8);
  v40(v62, v37);
  v41 = *(v30 + 8);
  v41(v61, v33);
  v40(v35, v37);
  v41(v32, v33);
}

uint64_t sub_1E47D53FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(sub_1E47D4130() + 72);

  *a3 = sub_1E4877F6C();
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C960, &qword_1E487E960);
  sub_1E47D5564(a2, v5, v6, a3 + *(v8 + 44));
  sub_1E4878F9C();

  strcpy(v12, "xmore circles ");
  HIBYTE(v12[1]) = -18;
  MEMORY[0x1E69192D0](v5, v6);

  v9 = v12[1];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C938, &qword_1E487E8B0);
  v11 = (a3 + *(result + 52));
  *v11 = v12[0];
  v11[1] = v9;
  return result;
}

uint64_t sub_1E47D5564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a2;
  v75 = a3;
  v80 = a1;
  v78 = a4;
  v4 = sub_1E4877B3C();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  MEMORY[0x1EEE9AC00](v72);
  v8 = &v65 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C968, &qword_1E487E968);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v65 - v9;
  v79 = sub_1E48782AC();
  v10 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for AllDayCirclesView(0);
  v13 = MEMORY[0x1EEE9AC00](v70);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v65 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C970, &qword_1E487E970);
  v18 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C978, &qword_1E487E978);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v77 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v65 - v23;
  sub_1E4878D2C();
  v76 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = v80;
  if (sub_1E47D3FE8())
  {
    if (*(v24 + 8) == 1)
    {
      v25 = *v24;

      if (sub_1E47D3FE8())
      {
        sub_1E48782DC();
      }

      else
      {
        sub_1E48781BC();
      }

      v33 = v79;
      (*(v10 + 104))(v12, *MEMORY[0x1E6980EA0], v79);
      v34 = sub_1E48782CC();

      (*(v10 + 8))(v12, v33);
      KeyPath = swift_getKeyPath();
      v36 = swift_getKeyPath();
      v37 = v70;
      *&v15[*(v70 + 20)] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      *v15 = KeyPath;
      v15[8] = 0;
      *&v15[*(v37 + 24)] = v25;
      *&v15[*(v37 + 28)] = v34;
      sub_1E48783CC();
      sub_1E47D6C4C(v15, v17, type metadata accessor for AllDayCirclesView);
      sub_1E47D6B84(v17, v71, type metadata accessor for AllDayCirclesView);
      swift_storeEnumTagMultiPayload();
      sub_1E47D6B3C(qword_1EE2B35D0, type metadata accessor for AllDayCirclesView, &unk_1E487F474);
      sub_1E4773680(&qword_1EE2B1028, &qword_1ECF7B9A8, &unk_1E4881BA0, MEMORY[0x1E6981800]);
      v32 = v69;
      sub_1E487803C();
      sub_1E47D6BEC(v17, type metadata accessor for AllDayCirclesView);
    }

    else
    {
      v29 = *(sub_1E47D4130() + 104);

      *v8 = sub_1E4877F6C();
      *(v8 + 1) = v29;
      v8[16] = 0;
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B0, &qword_1E487ABE0) + 44);
      v30 = *v24;
      sub_1E47D4270(v6);
      v31 = sub_1E486B590(v30, 3, v6);
      (*(v66 + 8))(v6, v67);
      v82 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
      sub_1E487736C();
      type metadata accessor for ColorBarView(0);
      sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8, MEMORY[0x1E69E6338]);
      sub_1E47D6B3C(qword_1EE2B58D8, type metadata accessor for ColorBarView, &unk_1E487B2D8);
      sub_1E47D6B3C(&qword_1EE2B4080, type metadata accessor for ColorBarView.Styling, &unk_1E487B328);
      sub_1E487886C();

      sub_1E4773850(v8, v71, &qword_1ECF7B9A8, &unk_1E4881BA0);
      swift_storeEnumTagMultiPayload();
      sub_1E47D6B3C(qword_1EE2B35D0, type metadata accessor for AllDayCirclesView, &unk_1E487F474);
      sub_1E4773680(&qword_1EE2B1028, &qword_1ECF7B9A8, &unk_1E4881BA0, MEMORY[0x1E6981800]);
      v32 = v69;
      sub_1E487803C();
      sub_1E47738B8(v8, &qword_1ECF7B9A8, &unk_1E4881BA0);
    }

    v38 = v81;
    sub_1E477372C(v32, v81, &qword_1ECF7C970, &qword_1E487E970);
    v26 = (*(v18 + 56))(v38, 0, 1, v73);
  }

  else
  {
    v26 = (*(v18 + 56))(v81, 1, 1, v73);
  }

  v82 = v74;
  v83 = v75;
  sub_1E477A374(v26, v27, v28);

  v39 = sub_1E487848C();
  v41 = v40;
  v43 = v42;
  if (sub_1E47D3FE8())
  {
    sub_1E48782DC();
  }

  else
  {
    sub_1E48781BC();
  }

  v44 = v79;
  (*(v10 + 104))(v12, *MEMORY[0x1E6980EA0], v79);
  sub_1E48782CC();

  (*(v10 + 8))(v12, v44);
  v45 = sub_1E487842C();
  v47 = v46;
  v49 = v48;

  sub_1E477A3C8(v39, v41, v43 & 1);

  sub_1E48786FC();
  v50 = sub_1E48783FC();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  sub_1E477A3C8(v45, v47, v49 & 1);

  v57 = swift_getKeyPath();
  v58 = v81;
  v59 = v77;
  sub_1E4773850(v81, v77, &qword_1ECF7C978, &qword_1E487E978);
  v60 = v78;
  sub_1E4773850(v59, v78, &qword_1ECF7C978, &qword_1E487E978);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C980, &qword_1E487E980);
  v62 = v60 + *(v61 + 48);
  *v62 = v50;
  *(v62 + 8) = v52;
  *(v62 + 16) = v54 & 1;
  *(v62 + 24) = v56;
  *(v62 + 32) = v57;
  *(v62 + 40) = 1;
  *(v62 + 48) = 0;
  v63 = v60 + *(v61 + 64);
  *v63 = 0;
  *(v63 + 8) = 0;
  sub_1E478B8E0(v50, v52, v54 & 1);

  sub_1E47738B8(v58, &qword_1ECF7C978, &qword_1E487E978);
  sub_1E477A3C8(v50, v52, v54 & 1);

  sub_1E47738B8(v59, &qword_1ECF7C978, &qword_1E487E978);
}

uint64_t sub_1E47D608C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(sub_1E47D4130() + 72);

  *a3 = sub_1E4877F6C();
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C950, &qword_1E487E8C8);
  sub_1E47D61D4(a2, v5, v6, a3 + *(v8 + 44));
  MEMORY[0x1E69192D0](v5, v6);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C940, &qword_1E487E8B8);
  v10 = (a3 + *(result + 52));
  *v10 = 0x61622065726F6D78;
  v10[1] = 0xEB00000000207372;
  return result;
}

uint64_t sub_1E47D61D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v56 = a4;
  v5 = sub_1E48782AC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4877B3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = (&v50 - v15);
  sub_1E4878D2C();
  v54 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(sub_1E47D4130() + 104);

  v17 = sub_1E4877F6C();
  v18 = v57;
  *v57 = v17;
  v18[1] = v16;
  *(v18 + 16) = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B0, &qword_1E487ABE0);
  v19 = *a1;
  sub_1E47D4270(v11);
  v20 = sub_1E486B590(v19, 3, v11);
  (*(v9 + 8))(v11, v8);
  v58 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E487736C();
  type metadata accessor for ColorBarView(0);
  sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8, MEMORY[0x1E69E6338]);
  sub_1E47D6B3C(qword_1EE2B58D8, type metadata accessor for ColorBarView, &unk_1E487B2D8);
  sub_1E47D6B3C(&qword_1EE2B4080, type metadata accessor for ColorBarView.Styling, &unk_1E487B328);
  sub_1E487886C();

  v58 = v50;
  v59 = v51;
  sub_1E477A374(v21, v22, v23);

  v24 = sub_1E487848C();
  v26 = v25;
  v28 = v27;
  if (sub_1E47D3FE8())
  {
    sub_1E48782DC();
  }

  else
  {
    sub_1E48781BC();
  }

  v30 = v52;
  v29 = v53;
  (*(v52 + 104))(v7, *MEMORY[0x1E6980EA0], v53);
  sub_1E48782CC();

  (*(v30 + 8))(v7, v29);
  v31 = sub_1E487842C();
  v33 = v32;
  LOBYTE(v29) = v34;

  sub_1E477A3C8(v24, v26, v28 & 1);

  sub_1E48786FC();
  v35 = sub_1E48783FC();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_1E477A3C8(v31, v33, v29 & 1);

  KeyPath = swift_getKeyPath();
  v43 = v57;
  v44 = v55;
  sub_1E4773850(v57, v55, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v45 = v56;
  sub_1E4773850(v44, v56, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C958, &qword_1E487E900);
  v47 = v45 + *(v46 + 48);
  *v47 = v35;
  *(v47 + 8) = v37;
  *(v47 + 16) = v39 & 1;
  *(v47 + 24) = v41;
  *(v47 + 32) = KeyPath;
  *(v47 + 40) = 1;
  *(v47 + 48) = 0;
  v48 = v45 + *(v46 + 64);
  *v48 = 0;
  *(v48 + 8) = 0;
  sub_1E478B8E0(v35, v37, v39 & 1);

  sub_1E47738B8(v43, &qword_1ECF7B9A8, &unk_1E4881BA0);
  sub_1E477A3C8(v35, v37, v39 & 1);

  sub_1E47738B8(v44, &qword_1ECF7B9A8, &unk_1E4881BA0);
}

uint64_t sub_1E47D6824@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47D6B84(a1, a3, type metadata accessor for ColorBarView.Styling);
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for ColorBarView(0);
  *(a3 + *(v6 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v7 = swift_getKeyPath();

  v9 = a3 + *(v6 + 24);
  *v9 = v7;
  *(v9 + 8) = 0;
  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for NarrowXMoreView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  sub_1E477A484(*(v5 + 16), *(v5 + 24));

  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E4877B3C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E47D6AA8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NarrowXMoreView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E47D6B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E47D6B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47D6BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47D6C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E47D6CB4()
{
  result = qword_1EE2B1410;
  if (!qword_1EE2B1410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C920, &qword_1E487E878);
    sub_1E47D6D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1410);
  }

  return result;
}

unint64_t sub_1E47D6D40()
{
  result = qword_1EE2B1590;
  if (!qword_1EE2B1590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C910, &qword_1E487E868);
    v3 = sub_1E4773680(&qword_1EE2B1648, &qword_1ECF7C988, &qword_1E487E9B8, MEMORY[0x1E697BF78]);
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1590);
  }

  return result;
}

uint64_t type metadata accessor for WideModernEventDetailsView(uint64_t a1)
{
  result = qword_1ECF7C990;
  if (!qword_1ECF7C990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E47D6E88@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideModernEventDetailsView(0);
  sub_1E4773850(v1 + *(v10 + 24), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47D7090@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideModernEventDetailsView(0);
  sub_1E4773850(v1 + *(v10 + 28), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47D7298@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideModernEventDetailsView(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47D74A0()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideModernEventDetailsView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E47D75F0()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideModernEventDetailsView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 136);

  return v10;
}

uint64_t sub_1E47D7754()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideModernEventDetailsView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 128);

  return v10;
}

uint64_t sub_1E47D78B8()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  sub_1E47D7298((&v13 - v6));
  v8 = sub_1E476F0D0(v0, v7);
  (*(v2 + 16))(v5, v7, v1);
  v9 = (*(v2 + 88))(v5, v1);
  if (v9 != *MEMORY[0x1E697DBC0] && v9 != *MEMORY[0x1E697DBB0])
  {
    (*(v2 + 8))(v5, v1);
  }

  CUIKOccurrenceLeadingIconAlphaScale();
  v10 = [v8 cuik_colorWithAlphaScaled_];

  v11 = sub_1E48785FC();
  (*(v2 + 8))(v7, v1);
  return v11;
}

void sub_1E47D7A78(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v3 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v72 = v70 - v8;
  v9 = sub_1E487757C();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E487753C();
  v13 = *(v12 - 8);
  v77 = v12;
  v78 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v71 = (v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (v70 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (v70 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v70 - v22;
  v24 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E487732C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for WideModernEventDetailsView(0);
  sub_1E47DDBEC(v2 + *(v31 + 20), v26, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v77;
    v33 = type metadata accessor for Event(0);
    v34 = *(v33 + 24);
    v70[1] = *(v33 + 20);
    v35 = sub_1E48772EC();
    v36 = (v78 + 8);
    v37 = (v74 + 8);
    if (v35)
    {
      v38 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      sub_1E47D6E88(v20);
      v39 = sub_1E487748C();
      v40 = *v36;
      (*v36)(v20, v32);
      [v38 setCalendar_];

      sub_1E47D6E88(v20);
      sub_1E487750C();
      v40(v20, v32);
      v41 = sub_1E487756C();
      (*v37)(v11, v75);
      [v38 setTimeZone_];

      sub_1E47D6E88(v18);
      v42 = v72;
      sub_1E48774EC();
      v40(v18, v32);
      v43 = sub_1E487744C();
      v44 = *(v43 - 8);
      v45 = 0;
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        v45 = sub_1E48773DC();
        (*(v44 + 8))(v42, v43);
      }

      [v38 setLocale_];

      v46 = sub_1E4878B9C();
      [v38 setLocalizedDateFormatFromTemplate_];

      v47 = sub_1E48772BC();
      v48 = [v38 stringFromDate_];

      sub_1E4878BDC();
      sub_1E48771FC();
      sub_1E48771AC();
      v80 = sub_1E47D75F0();
      sub_1E47C4180(v80, v49, v50);
      sub_1E48771BC();
    }

    else
    {
      v78 = v34;
      v54 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
      sub_1E47D6E88(v20);
      v55 = sub_1E487748C();
      v56 = *v36;
      v57 = v32;
      (*v36)(v20, v32);
      [v54 setCalendar_];

      sub_1E47D6E88(v20);
      sub_1E487750C();
      v56(v20, v32);
      v58 = sub_1E487756C();
      (*v37)(v11, v75);
      [v54 setTimeZone_];

      v59 = v71;
      sub_1E47D6E88(v71);
      v60 = v73;
      sub_1E48774EC();
      v56(v59, v57);
      v61 = sub_1E487744C();
      v62 = *(v61 - 8);
      v63 = 0;
      if ((*(v62 + 48))(v60, 1, v61) != 1)
      {
        v63 = sub_1E48773DC();
        (*(v62 + 8))(v60, v61);
      }

      [v54 setLocale_];

      v64 = sub_1E4878B9C();
      [v54 setDateTemplate_];

      v65 = sub_1E48772BC();
      v66 = sub_1E48772BC();
      v67 = [v54 stringFromDate:v65 toDate:v66];

      sub_1E4878BDC();
      sub_1E48771FC();
      sub_1E48771AC();
      v80 = sub_1E47D75F0();
      sub_1E47C4180(v80, v68, v69);
      sub_1E48771BC();
    }
  }

  else
  {
    (*(v28 + 32))(v30, v26, v27);
    type metadata accessor for Utils();
    v51 = type metadata accessor for Event(0);
    v52 = *(v51 + 20);
    (*(v28 + 16))(v23, v2 + *(v51 + 24), v27);
    (*(v28 + 56))(v23, 0, 1, v27);
    sub_1E47D6E88(v20);
    v53 = sub_1E47D75F0();
    sub_1E485CFF8(v2 + v52, v23, v30, v53, v79);

    (*(v78 + 8))(v20, v77);
    sub_1E47738B8(v23, &unk_1ECF7C880, &qword_1E4882710);
    (*(v28 + 8))(v30, v27);
  }
}

uint64_t sub_1E47D843C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v51 - v5;
  v6 = sub_1E487757C();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E487753C();
  v9 = *(v58 - 8);
  v10 = MEMORY[0x1EEE9AC00](v58);
  v54 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v55 = (&v51 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v51 - v14);
  v16 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E487732C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for WideModernEventDetailsView(0);
  sub_1E47DDBEC(v1 + *(v23 + 20), v18, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
    sub_1E47D6E88(v15);
    v25 = sub_1E487748C();
    v26 = *(v9 + 8);
    v27 = v58;
    v26(v15, v58);
    [v24 setCalendar_];

    sub_1E47D6E88(v15);
    sub_1E487750C();
    v26(v15, v27);
    v28 = sub_1E487756C();
    (*(v59 + 8))(v8, v60);
    [v24 setTimeZone_];

    v29 = v54;
    sub_1E47D6E88(v54);
    v30 = v56;
    sub_1E48774EC();
    v26(v29, v27);
    v31 = sub_1E487744C();
    v32 = *(v31 - 8);
    v33 = 0;
    if ((*(v32 + 48))(v30, 1, v31) != 1)
    {
      v33 = sub_1E48773DC();
      (*(v32 + 8))(v30, v31);
    }

    [v24 setLocale_];

    [v24 setTimeStyle_];
    [v24 setDateStyle_];
    type metadata accessor for Event(0);
    v34 = sub_1E48772BC();
    v35 = sub_1E48772BC();
    v36 = [v24 stringFromDate:v34 toDate:v35];
  }

  else
  {
    v52 = v22;
    v53 = v20;
    (*(v20 + 32))(v22, v18, v19);
    v24 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1E47D6E88(v15);
    v37 = sub_1E487748C();
    v38 = *(v9 + 8);
    v39 = v58;
    v38(v15, v58);
    [v24 setCalendar_];

    sub_1E47D6E88(v15);
    sub_1E487750C();
    v38(v15, v39);
    v40 = sub_1E487756C();
    (*(v59 + 8))(v8, v60);
    [v24 setTimeZone_];

    v41 = v55;
    sub_1E47D6E88(v55);
    v42 = v57;
    sub_1E48774EC();
    v38(v41, v39);
    v43 = sub_1E487744C();
    v44 = *(v43 - 8);
    v45 = (*(v44 + 48))(v42, 1, v43);
    v46 = 0;
    v48 = v52;
    v47 = v53;
    if (v45 != 1)
    {
      v46 = sub_1E48773DC();
      (*(v44 + 8))(v42, v43);
    }

    [v24 setLocale_];

    [v24 setTimeStyle_];
    [v24 setDateStyle_];
    v35 = sub_1E48772BC();
    (*(v47 + 8))(v48, v19);
    v36 = [v24 stringFromDate_];
  }

  v49 = sub_1E4878BDC();
  return v49;
}

uint64_t sub_1E47D8BB4()
{
  v1 = sub_1E487753C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v29 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487732C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = *(type metadata accessor for WideModernEventDetailsView(0) + 20);
  v30 = v0;
  sub_1E47DDBEC(v0 + v17, v6, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = 1;
  }

  else
  {
    v19 = v2;
    v20 = v1;
    v21 = *(v8 + 32);
    v21(v10, v6, v7);
    v21(v16, v10, v7);
    v1 = v20;
    v2 = v19;
    v18 = 0;
  }

  v22 = *(v8 + 56);
  v22(v16, v18, 1, v7);
  v23 = type metadata accessor for Event(0);
  v24 = *(v23 + 20);
  v25 = v30;
  (*(v8 + 16))(v14, v30 + *(v23 + 24), v7);
  v22(v14, 0, 1, v7);
  v26 = v29;
  sub_1E47D6E88(v29);
  v27 = sub_1E486D148(v25 + v24, v14, v16, v26);
  (*(v2 + 8))(v26, v1);
  sub_1E47738B8(v14, &unk_1ECF7C880, &qword_1E4882710);
  sub_1E47738B8(v16, &unk_1ECF7C880, &qword_1E4882710);
  return v27;
}

uint64_t sub_1E47D8F20@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v35 - v3;
  v4 = sub_1E487725C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4877CCC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = v1;
  sub_1E47D7090((&v35 - v14));
  sub_1E4877CAC();
  sub_1E47DDFF0(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v17 = sub_1E4878EAC();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v18(v15, v9);
  if (v17)
  {
    return (*(v5 + 56))(v38, 1, 1, v4);
  }

  v20 = v5;
  v21 = v38;
  v22 = type metadata accessor for WideModernEventDetailsView(0);
  sub_1E47DDBEC(v16 + *(v22 + 20), v8, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = v16;
  if (EnumCaseMultiPayload)
  {
    v25 = v37;
    if (EnumCaseMultiPayload != 1)
    {
      v33 = type metadata accessor for Event(0);
      sub_1E4773850(v24 + *(v33 + 44), v21, &unk_1ECF7B688, &qword_1E487C160);
      v34 = sub_1E487732C();
      return (*(*(v34 - 8) + 8))(v8, v34);
    }

    v26 = *v8;
  }

  else
  {
    v26 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C408, &qword_1E487DDD0) + 48)];
    v27 = sub_1E487732C();
    (*(*(v27 - 8) + 8))(v8, v27);
    v25 = v37;
  }

  v28 = type metadata accessor for Event(0);
  sub_1E4773850(v24 + *(v28 + 44), v25, &unk_1ECF7B688, &qword_1E487C160);
  v29 = v20;
  v30 = v4;
  if ((*(v20 + 48))(v25, 1, v4) == 1)
  {
    sub_1E47738B8(v25, &unk_1ECF7B688, &qword_1E487C160);
  }

  else
  {
    v31 = *(v20 + 32);
    v32 = v35;
    v31(v35, v25, v30);
    if (v26)
    {
      v31(v21, v32, v30);
      return (*(v29 + 56))(v21, 0, 1, v30);
    }

    (*(v29 + 8))(v32, v30);
  }

  return (*(v29 + 56))(v21, 1, 1, v30);
}

uint64_t sub_1E47D93E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA78, &qword_1E487EBF0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  v9 = sub_1E4877B3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA80, &qword_1E487EBF8);
  v13 = MEMORY[0x1EEE9AC00](v34);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  sub_1E4878D2C();
  v35 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v37 = sub_1E487874C();
  sub_1E487823C();
  sub_1E48784EC();

  sub_1E48788CC();
  v19 = v18;
  v21 = v20;
  v22 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA88, &qword_1E487EC00) + 36)];
  *v22 = 0x3FF921FB54442D18;
  *(v22 + 1) = v19;
  *(v22 + 2) = v21;
  sub_1E47D7298(v12);
  v23 = sub_1E4770A7C(a1, v12);
  (*(v10 + 8))(v12, v9);
  KeyPath = swift_getKeyPath();
  v25 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA90, &qword_1E487EC38) + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_1E47D74A0();

  sub_1E487889C();
  sub_1E4877BCC();
  v26 = &v17[*(v34 + 36)];
  v27 = v38;
  *v26 = v37;
  *(v26 + 1) = v27;
  *(v26 + 2) = v39;
  *v8 = sub_1E4877F6C();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA98, &qword_1E487EC40);
  sub_1E47D9858(a1, &v8[*(v28 + 44)]);
  sub_1E4773850(v17, v15, &qword_1ECF7CA80, &qword_1E487EBF8);
  sub_1E4773850(v8, v6, &qword_1ECF7CA78, &qword_1E487EBF0);
  v29 = v36;
  sub_1E4773850(v15, v36, &qword_1ECF7CA80, &qword_1E487EBF8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAA0, &qword_1E487EC48);
  sub_1E4773850(v6, v29 + *(v30 + 48), &qword_1ECF7CA78, &qword_1E487EBF0);
  v31 = v29 + *(v30 + 64);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_1E47738B8(v8, &qword_1ECF7CA78, &qword_1E487EBF0);
  sub_1E47738B8(v17, &qword_1ECF7CA80, &qword_1E487EBF8);
  sub_1E47738B8(v6, &qword_1ECF7CA78, &qword_1E487EBF0);
  sub_1E47738B8(v15, &qword_1ECF7CA80, &qword_1E487EBF8);
}

uint64_t sub_1E47D9858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1E4877B3C();
  v45 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAA8, &qword_1E487EC50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v41 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAB0, &qword_1E487EC58);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  sub_1E4878D2C();
  v46 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = type metadata accessor for Event(0);
  if (*(a1 + *(v16 + 28)) <= 0.0)
  {
    (*(v7 + 56))(v15, 1, 1, v6);
  }

  else
  {
    v42 = v3;
    v43 = v6;
    v17 = sub_1E487874C();
    v18 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v20 = *MEMORY[0x1E69816D0];
    v21 = sub_1E487877C();
    (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
    *v18 = swift_getKeyPath();
    *v9 = v17;
    sub_1E47D7298(v5);
    sub_1E476F0D0(a1, v5);
    v22 = sub_1E48785FC();
    (*(v45 + 1))(v5, v42);
    KeyPath = swift_getKeyPath();
    v24 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAC0, &qword_1E487EC98) + 36));
    *v24 = KeyPath;
    v24[1] = v22;
    v25 = sub_1E47D75F0();
    v26 = swift_getKeyPath();
    v27 = v43;
    v28 = (v9 + *(v43 + 36));
    *v28 = v26;
    v28[1] = v25;
    sub_1E477372C(v9, v15, &qword_1ECF7CAA8, &qword_1E487EC50);
    (*(v7 + 56))(v15, 0, 1, v27);
  }

  v29 = v15;
  v44 = v15;
  sub_1E47D9D8C(v48);
  v30 = v48[0];
  v31 = v48[1];
  v32 = v49;
  v33 = v50;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  sub_1E4773850(v29, v13, &qword_1ECF7CAB0, &qword_1E487EC58);
  v37 = v13;
  v45 = v13;
  v38 = v47;
  sub_1E4773850(v37, v47, &qword_1ECF7CAB0, &qword_1E487EC58);
  v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAB8, &qword_1E487EC60) + 48);
  *v39 = v30;
  *(v39 + 8) = v31;
  *(v39 + 16) = v32;
  *(v39 + 24) = v33;
  *(v39 + 32) = v34;
  *(v39 + 40) = v35;
  *(v39 + 48) = v36;
  sub_1E478B8E0(v30, v31, v32);

  sub_1E47738B8(v44, &qword_1ECF7CAB0, &qword_1E487EC58);
  sub_1E477A3C8(v30, v31, v32);

  sub_1E47738B8(v45, &qword_1ECF7CAB0, &qword_1E487EC58);
}

uint64_t sub_1E47D9D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877B3C();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = (v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Event(0);
  v35 = sub_1E486DF20(*(v1 + *(v5 + 28)));
  v36 = v6;
  sub_1E477A374(v35, v6, v7);
  v8 = sub_1E487848C();
  v10 = v9;
  v12 = v11;
  v13 = sub_1E48783EC();
  v15 = v14;
  LOBYTE(v5) = v16;
  sub_1E477A3C8(v8, v10, v12 & 1);

  sub_1E47D75F0();
  v17 = sub_1E487842C();
  v19 = v18;
  v21 = v20;
  v31[1] = v22;

  sub_1E477A3C8(v13, v15, v5 & 1);

  v23 = v32;
  sub_1E47D7298(v32);
  sub_1E476F0D0(v1, v23);
  sub_1E48785FC();
  (*(v33 + 8))(v23, v34);
  v24 = sub_1E48783FC();
  v26 = v25;
  LOBYTE(v5) = v27;
  v29 = v28;

  sub_1E477A3C8(v17, v19, v21 & 1);

  result = swift_getKeyPath();
  *a1 = v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v29;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1E47D9FD8@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for EventBackgroundView(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9F0, &qword_1E487EA70);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9E0, &qword_1E487EA68);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v47 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9D0, &qword_1E487EA60);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v47 - v17;
  *v14 = sub_1E4877FAC();
  *(v14 + 1) = 0x4024000000000000;
  v14[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA08, &qword_1E487EA80);
  sub_1E47DA5A0(v1, &v14[*(v18 + 44)]);
  sub_1E47D74A0();

  v19 = sub_1E487814C();
  sub_1E4877B0C();
  v20 = &v14[*(v12 + 44)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_1E47DDBEC(v1, v7, type metadata accessor for Event);
  v25 = type metadata accessor for Event(0);
  (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
  v26 = type metadata accessor for WideModernEventDetailsView(0);
  sub_1E47DDBEC(v1 + *(v26 + 20), v4, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v28 = sub_1E487732C();
    (*(*(v28 - 8) + 8))(v4, v28);
  }

  else
  {
    sub_1E47C4264(v4, type metadata accessor for CellDisplayContext);
  }

  v29 = EnumCaseMultiPayload != 2;
  KeyPath = swift_getKeyPath();
  *&v10[v8[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v10[v8[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v10[v8[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v31 = swift_getKeyPath();
  sub_1E477372C(v7, v10, &qword_1ECF7B950, &unk_1E487AE90);
  *&v10[v8[5]] = 3;
  v10[v8[6]] = v29;
  v32 = &v10[v8[7]];
  *v32 = KeyPath;
  v32[8] = 0;
  v33 = &v10[v8[11]];
  *v33 = v31;
  v33[8] = 0;
  v34 = sub_1E487889C();
  v36 = v35;
  v37 = &v16[*(v48 + 36)];
  sub_1E47C411C(v10, v37);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v38 = v34;
  v38[1] = v36;
  sub_1E477372C(v14, v16, &qword_1ECF7C9F0, &qword_1E487EA70);
  v39 = v50;
  sub_1E477372C(v16, v50, &qword_1ECF7C9E0, &qword_1E487EA68);
  v52 = sub_1E47CC9E8(*(v1 + *(v25 + 56)));
  v53 = v40;
  sub_1E477A374(v52, v40, v41);
  v42 = sub_1E487848C();
  v44 = v43;
  LOBYTE(v37) = v45;
  sub_1E47DD9E8();
  sub_1E487857C();
  sub_1E477A3C8(v42, v44, v37 & 1);

  return sub_1E47738B8(v39, &qword_1ECF7C9D0, &qword_1E487EA60);
}

uint64_t sub_1E47DA5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA10, &qword_1E487EB88);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v90 = (&v75 - v6);
  v7 = sub_1E4877B3C();
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v83 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ColorBarView(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v88 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA18, &qword_1E487EB90);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v91 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA20, &qword_1E487EB98);
  v81 = *(v19 - 8);
  v82 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v75 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA28, &qword_1E487EBA0);
  v21 = MEMORY[0x1EEE9AC00](v77);
  v78 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v75 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA30, &qword_1E487EBA8);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v75 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA38, &qword_1E487EBB0);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v87 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v93 = &v75 - v34;
  v35 = sub_1E4878D2C();
  v86 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = *(a1 + *(type metadata accessor for Event(0) + 28));
  v92 = a1;
  if (v36 <= 0.0)
  {
    (*(v81 + 56))(v93, 1, 1, v82);
  }

  else
  {
    v37 = *(sub_1E47D74A0() + 72);

    *v30 = sub_1E4877F6C();
    *(v30 + 1) = v37;
    v30[16] = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA60, &qword_1E487EBD8);
    sub_1E47D93E4(a1, &v30[*(v38 + 44)]);
    sub_1E487883C();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA68, &qword_1E487EBE0);
    v76 = v18;
    v40 = *(v39 + 36);
    v41 = *MEMORY[0x1E6981DC8];
    v42 = sub_1E48788BC();
    (*(*(v42 - 8) + 104))(&v24[v40], v41, v42);
    v43 = sub_1E487813C();
    sub_1E47D74A0();

    sub_1E4877B0C();
    v44 = &v24[*(v77 + 36)];
    *v44 = v43;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    v49 = v28;
    v75 = v35;
    sub_1E4773850(v30, v28, &qword_1ECF7CA30, &qword_1E487EBA8);
    v77 = v9;
    v50 = v78;
    sub_1E4773850(v24, v78, &qword_1ECF7CA28, &qword_1E487EBA0);
    v51 = v28;
    v52 = v79;
    sub_1E4773850(v51, v79, &qword_1ECF7CA30, &qword_1E487EBA8);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA70, &qword_1E487EBE8);
    sub_1E4773850(v50, v52 + *(v53 + 48), &qword_1ECF7CA28, &qword_1E487EBA0);
    sub_1E47738B8(v24, &qword_1ECF7CA28, &qword_1E487EBA0);
    sub_1E47738B8(v30, &qword_1ECF7CA30, &qword_1E487EBA8);
    v18 = v76;
    v9 = v77;
    sub_1E47738B8(v50, &qword_1ECF7CA28, &qword_1E487EBA0);
    sub_1E47738B8(v49, &qword_1ECF7CA30, &qword_1E487EBA8);
    v54 = v93;
    sub_1E477372C(v52, v93, &qword_1ECF7CA20, &qword_1E487EB98);
    (*(v81 + 56))(v54, 0, 1, v82);
  }

  v55 = *(sub_1E47D74A0() + 72);

  *v18 = sub_1E4877F6C();
  *(v18 + 1) = v55;
  v18[16] = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v56 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA40, &qword_1E487EBB8) + 44)];
  v57 = v83;
  v58 = v92;
  sub_1E47D7298(v83);
  v59 = sub_1E4770A7C(v58, v57);
  (*(v84 + 8))(v57, v85);
  type metadata accessor for ColorBarView.Styling(0);
  sub_1E487735C();
  v13[48] = 1;
  *v13 = v59;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  *(v13 + 3) = 3;
  *&v13[*(v9 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v61 = &v13[*(v9 + 24)];
  *v61 = KeyPath;
  v61[8] = 0;
  v62 = sub_1E4877FBC();
  v63 = v90;
  *v90 = v62;
  *(v63 + 8) = 0;
  *(v63 + 16) = 0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA48, &qword_1E487EBC0);
  sub_1E47DAF90(v58, v63 + *(v64 + 44));
  v65 = v88;
  sub_1E47DDBEC(v13, v88, type metadata accessor for ColorBarView);
  v66 = v18;
  v67 = v80;
  sub_1E4773850(v63, v80, &qword_1ECF7CA10, &qword_1E487EB88);
  sub_1E47DDBEC(v65, v56, type metadata accessor for ColorBarView);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA50, &qword_1E487EBC8);
  sub_1E4773850(v67, v56 + *(v68 + 48), &qword_1ECF7CA10, &qword_1E487EB88);
  sub_1E47738B8(v63, &qword_1ECF7CA10, &qword_1E487EB88);
  sub_1E47C4264(v13, type metadata accessor for ColorBarView);
  sub_1E47738B8(v67, &qword_1ECF7CA10, &qword_1E487EB88);
  sub_1E47C4264(v65, type metadata accessor for ColorBarView);

  v69 = v93;
  v70 = v87;
  sub_1E4773850(v93, v87, &qword_1ECF7CA38, &qword_1E487EBB0);
  v71 = v91;
  sub_1E4773850(v66, v91, &qword_1ECF7CA18, &qword_1E487EB90);
  v72 = v89;
  sub_1E4773850(v70, v89, &qword_1ECF7CA38, &qword_1E487EBB0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA58, &qword_1E487EBD0);
  sub_1E4773850(v71, v72 + *(v73 + 48), &qword_1ECF7CA18, &qword_1E487EB90);
  sub_1E47738B8(v66, &qword_1ECF7CA18, &qword_1E487EB90);
  sub_1E47738B8(v69, &qword_1ECF7CA38, &qword_1E487EBB0);
  sub_1E47738B8(v71, &qword_1ECF7CA18, &qword_1E487EB90);
  sub_1E47738B8(v70, &qword_1ECF7CA38, &qword_1E487EBB0);
}

uint64_t sub_1E47DAF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAC8, &qword_1E487ED00);
  MEMORY[0x1EEE9AC00](v74);
  v73 = (&v72 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAD0, &qword_1E487ED08);
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAD8, &unk_1E487ED10);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v72 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C650, &qword_1E487DCA8);
  MEMORY[0x1EEE9AC00](v75);
  v11 = &v72 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAE0, &qword_1E487ED20);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAE8, &qword_1E487ED28);
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v88 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v72 - v16;
  v17 = sub_1E4877B3C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for LocationView(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAF0, &qword_1E487ED30);
  v79 = *(v24 - 8);
  v80 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v87 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v92 = &v72 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAF8, &qword_1E487ED38);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v86 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v91 = (&v72 - v31);
  sub_1E4878D2C();
  v78 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = sub_1E4877F4C();
  v33 = v91;
  *v91 = v32;
  v33[1] = 0;
  *(v33 + 16) = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB00, &unk_1E487ED40);
  sub_1E47DBA88(a1, v33 + *(v34 + 44));
  sub_1E47DDBEC(a1, &v23[v21[5]], type metadata accessor for Event);
  v35 = sub_1E47D75F0();
  sub_1E47D7298(v20);
  sub_1E476F0D0(a1, v20);
  v36 = sub_1E48785FC();
  (*(v18 + 8))(v20, v17);
  LOBYTE(v33) = *(sub_1E47D74A0() + 146);

  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v37 = v21[11];
  *&v23[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v23[v21[6]] = v35;
  v23[v21[7]] = 0;
  *&v23[v21[8]] = v36;
  v23[v21[9]] = 1;
  v23[v21[10]] = v33;
  sub_1E47DDFF0(qword_1EE2B3E90, type metadata accessor for LocationView, &unk_1E487F2D0);
  sub_1E48784AC();
  sub_1E47C4264(v23, type metadata accessor for LocationView);
  v38 = *(sub_1E47D74A0() + 96);

  v39 = v11;
  *v11 = sub_1E4877F6C();
  *(v11 + 1) = v38;
  v11[16] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C658, &qword_1E487DCB0);
  sub_1E47DC8C0(a1, &v11[*(v40 + 44)]);
  v94 = sub_1E47D8BB4();
  v95 = v41;
  sub_1E477A374(v94, v41, v42);
  v43 = sub_1E487848C();
  v45 = v44;
  LOBYTE(v35) = v46;
  sub_1E4773680(&qword_1EE2B0FB8, &qword_1ECF7C650, &qword_1E487DCA8, MEMORY[0x1E6981800]);
  v47 = v76;
  sub_1E487856C();
  sub_1E477A3C8(v43, v45, v35 & 1);

  sub_1E47738B8(v39, &qword_1ECF7C650, &qword_1E487DCA8);
  sub_1E47DDC54();
  sub_1E48784AC();
  sub_1E47738B8(v47, &qword_1ECF7CAE0, &qword_1E487ED20);
  LODWORD(v43) = *(sub_1E47D74A0() + 145);

  v48 = 1;
  v50 = v81;
  v49 = v82;
  if (v43 == 1)
  {
    v51 = *(sub_1E47D74A0() + 96);

    v52 = sub_1E4877F6C();
    v53 = v73;
    *v73 = v52;
    *(v53 + 8) = v51;
    *(v53 + 16) = 0;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB18, &qword_1E487ED58);
    sub_1E47DCEE0(a1, v53 + *(v54 + 44));
    sub_1E4773680(&qword_1ECF7CB20, &qword_1ECF7CAC8, &qword_1E487ED00, MEMORY[0x1E6981800]);
    v55 = v72;
    sub_1E48784AC();
    sub_1E47738B8(v53, &qword_1ECF7CAC8, &qword_1E487ED00);
    (*(v50 + 32))(v90, v55, v49);
    v48 = 0;
  }

  v56 = v90;
  (*(v50 + 56))(v90, v48, 1, v49);
  v57 = v86;
  sub_1E4773850(v91, v86, &qword_1ECF7CAF8, &qword_1E487ED38);
  v58 = v79;
  v59 = v80;
  v82 = *(v79 + 16);
  v60 = v87;
  v82(v87, v92, v80);
  v62 = v83;
  v61 = v84;
  v63 = *(v83 + 16);
  v63(v88, v93, v84);
  sub_1E4773850(v56, v89, &qword_1ECF7CAD8, &unk_1E487ED10);
  v64 = v85;
  sub_1E4773850(v57, v85, &qword_1ECF7CAF8, &qword_1E487ED38);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB10, &qword_1E487ED50);
  v82(v64 + v65[12], v60, v59);
  v66 = v88;
  v63((v64 + v65[16]), v88, v61);
  v67 = v64 + v65[20];
  v68 = v89;
  sub_1E4773850(v89, v67, &qword_1ECF7CAD8, &unk_1E487ED10);
  sub_1E47738B8(v90, &qword_1ECF7CAD8, &unk_1E487ED10);
  v69 = *(v62 + 8);
  v69(v93, v61);
  v70 = *(v58 + 8);
  v70(v92, v59);
  sub_1E47738B8(v91, &qword_1ECF7CAF8, &qword_1E487ED38);
  sub_1E47738B8(v68, &qword_1ECF7CAD8, &unk_1E487ED10);
  v69(v66, v61);
  v70(v87, v59);
  sub_1E47738B8(v86, &qword_1ECF7CAF8, &qword_1E487ED38);
}

uint64_t sub_1E47DBA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB30, &qword_1E487ED70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v144 = &v139 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB38, &unk_1E487ED78);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v148 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v158 = &v139 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v159 = &v139 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v139 - v13;
  v153 = sub_1E4877B3C();
  v160 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v152 = (&v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v146 = *(v147 - 8);
  v16 = MEMORY[0x1EEE9AC00](v147);
  v156 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v161 = &v139 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F0, &qword_1E487D078);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v150 = (&v139 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F8, &qword_1E487DDC0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v155 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v139 - v25;
  sub_1E4878D2C();
  v143 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v141 = type metadata accessor for Event(0);
  v27 = *(a1 + *(v141 + 56));
  v28 = MEMORY[0x1E69816D0];
  v142 = v19;
  v157 = v14;
  v151 = v3;
  v145 = v4;
  v154 = v26;
  if (v27 == 1)
  {
    v29 = sub_1E487874C();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
    v31 = v150;
    v32 = (v150 + *(v30 + 36));
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v34 = *v28;
    v35 = sub_1E487877C();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = swift_getKeyPath();
    *v31 = v29;
    v36 = sub_1E47D7754();
    KeyPath = swift_getKeyPath();
    v38 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v38 = KeyPath;
    v38[1] = v36;
    v39 = sub_1E487864C();
    v40 = swift_getKeyPath();
    v41 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0) + 36));
    *v41 = v40;
    v41[1] = v39;
    LOBYTE(v39) = sub_1E487818C();
    sub_1E4877B0C();
    v42 = v31 + *(v19 + 36);
    *v42 = v39;
    *(v42 + 1) = v43;
    *(v42 + 2) = v44;
    *(v42 + 3) = v45;
    *(v42 + 4) = v46;
    v42[40] = 0;
    sub_1E477372C(v31, v26, &qword_1ECF7C3F0, &qword_1E487D078);
    (*(v20 + 56))(v26, 0, 1, v19);
  }

  else
  {
    (*(v20 + 56))(v26, 1, 1, v19);
  }

  v162 = sub_1E47CC708();
  v163 = v47;
  sub_1E477A374(v162, v47, v48);
  v49 = sub_1E487848C();
  v51 = v50;
  v53 = v52;
  v54 = sub_1E48783EC();
  v56 = v55;
  v58 = v57;
  sub_1E477A3C8(v49, v51, v53 & 1);

  sub_1E47D7754();
  v59 = sub_1E487842C();
  v61 = v60;
  v63 = v62;

  sub_1E477A3C8(v54, v56, v58 & 1);

  v64 = v152;
  sub_1E47D7298(v152);
  sub_1E476EA20(a1, v64);
  v65 = *(v160 + 8);
  v160 += 8;
  v140 = v65;
  v65(v64, v153);
  v66 = sub_1E48783FC();
  v68 = v67;
  LOBYTE(v64) = v69;
  v71 = v70;

  sub_1E477A3C8(v59, v61, v63 & 1);

  v72 = swift_getKeyPath();
  v162 = v66;
  v163 = v68;
  LOBYTE(v64) = v64 & 1;
  v164 = v64;
  v165 = v71;
  v166 = v72;
  v73 = 1;
  v167 = 1;
  v168 = 0;
  sub_1E47D74A0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487855C();
  sub_1E477A3C8(v66, v68, v64);

  v74 = v141;
  v75 = v157;
  v76 = v151;
  v77 = v145;
  v78 = a1;
  if (*(a1 + *(v141 + 68)) == 1)
  {
    v79 = sub_1E487874C();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
    v81 = v150;
    v82 = (v150 + *(v80 + 36));
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v84 = v77;
    v85 = *MEMORY[0x1E69816D0];
    v86 = sub_1E487877C();
    (*(*(v86 - 8) + 104))(v82 + v83, v85, v86);
    *v82 = swift_getKeyPath();
    *v81 = v79;
    v87 = sub_1E47D75F0();
    v88 = swift_getKeyPath();
    v89 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v89 = v88;
    v89[1] = v87;
    v90 = v152;
    sub_1E47D7298(v152);
    sub_1E476F0D0(v78, v90);
    v91 = sub_1E48785FC();
    v140(v90, v153);
    v92 = swift_getKeyPath();
    v93 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0) + 36));
    *v93 = v92;
    v93[1] = v91;
    LOBYTE(v91) = sub_1E487818C();
    sub_1E4877B0C();
    v94 = v81 + *(v142 + 36);
    *v94 = v91;
    *(v94 + 1) = v95;
    *(v94 + 2) = v96;
    *(v94 + 3) = v97;
    *(v94 + 4) = v98;
    v94[40] = 0;
    sub_1E47DDD3C();
    v99 = v144;
    sub_1E48784AC();
    v77 = v84;
    sub_1E47738B8(v81, &qword_1ECF7C3F0, &qword_1E487D078);
    (*(v84 + 32))(v75, v99, v76);
    v73 = 0;
  }

  v100 = *(v77 + 56);
  v100(v75, v73, 1, v76);
  v101 = 1;
  if (*(v78 + *(v74 + 72)) == 1)
  {
    v102 = sub_1E487874C();
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
    v104 = v77;
    v105 = v78;
    v106 = v150;
    v107 = (v150 + *(v103 + 36));
    v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v109 = *MEMORY[0x1E69816D0];
    v110 = sub_1E487877C();
    (*(*(v110 - 8) + 104))(v107 + v108, v109, v110);
    *v107 = swift_getKeyPath();
    *v106 = v102;
    v111 = sub_1E47D75F0();
    v112 = swift_getKeyPath();
    v113 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v113 = v112;
    v113[1] = v111;
    v114 = v152;
    sub_1E47D7298(v152);
    sub_1E476F0D0(v105, v114);
    v115 = sub_1E48785FC();
    v140(v114, v153);
    v116 = swift_getKeyPath();
    v117 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0) + 36));
    *v117 = v116;
    v117[1] = v115;
    LOBYTE(v115) = sub_1E487818C();
    sub_1E4877B0C();
    v118 = v106 + *(v142 + 36);
    *v118 = v115;
    *(v118 + 1) = v119;
    *(v118 + 2) = v120;
    *(v118 + 3) = v121;
    *(v118 + 4) = v122;
    v118[40] = 0;
    sub_1E47DDD3C();
    v123 = v144;
    sub_1E48784AC();
    v124 = v106;
    v76 = v151;
    sub_1E47738B8(v124, &qword_1ECF7C3F0, &qword_1E487D078);
    (*(v104 + 32))(v159, v123, v76);
    v101 = 0;
  }

  v125 = v159;
  v100(v159, v101, 1, v76);
  v126 = v155;
  sub_1E4773850(v154, v155, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v127 = v146;
  v128 = *(v146 + 16);
  v129 = v156;
  v130 = v147;
  v128(v156, v161, v147);
  sub_1E4773850(v75, v158, &qword_1ECF7CB38, &unk_1E487ED78);
  v131 = v125;
  v132 = v148;
  sub_1E4773850(v131, v148, &qword_1ECF7CB38, &unk_1E487ED78);
  v133 = v149;
  sub_1E4773850(v126, v149, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB40, &unk_1E487ED88);
  v128((v133 + v134[12]), v129, v130);
  v135 = v133 + v134[16];
  *v135 = 0;
  *(v135 + 8) = 1;
  v136 = v158;
  sub_1E4773850(v158, v133 + v134[20], &qword_1ECF7CB38, &unk_1E487ED78);
  sub_1E4773850(v132, v133 + v134[24], &qword_1ECF7CB38, &unk_1E487ED78);
  sub_1E47738B8(v159, &qword_1ECF7CB38, &unk_1E487ED78);
  sub_1E47738B8(v157, &qword_1ECF7CB38, &unk_1E487ED78);
  v137 = *(v127 + 8);
  v137(v161, v130);
  sub_1E47738B8(v154, &qword_1ECF7C3F8, &qword_1E487DDC0);
  sub_1E47738B8(v132, &qword_1ECF7CB38, &unk_1E487ED78);
  sub_1E47738B8(v136, &qword_1ECF7CB38, &unk_1E487ED78);
  v137(v156, v130);
  sub_1E47738B8(v155, &qword_1ECF7C3F8, &qword_1E487DDC0);
}

uint64_t sub_1E47DC8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_1E4877B3C();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = (v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v59 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v59 - v15;
  sub_1E4878D2C();
  v64 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(sub_1E47D74A0() + 146);

  v60 = v16;
  if (v17 == 1)
  {
    v18 = sub_1E487876C();
    v19 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v21 = *MEMORY[0x1E69816D0];
    v22 = sub_1E487877C();
    (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
    *v19 = swift_getKeyPath();
    *v11 = v18;
    v23 = sub_1E47D75F0();
    KeyPath = swift_getKeyPath();
    v25 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v25 = KeyPath;
    v25[1] = v23;
    v26 = sub_1E47D78B8();
    v27 = swift_getKeyPath();
    v28 = (v11 + *(v8 + 36));
    *v28 = v27;
    v28[1] = v26;
    sub_1E477372C(v11, v16, &qword_1ECF7B920, &unk_1E487DCF0);
    (*(v9 + 56))(v16, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v16, 1, 1, v8);
  }

  sub_1E47D7A78(v7);
  v29 = sub_1E487847C();
  v31 = v30;
  v33 = v32;
  type metadata accessor for Event(0);
  v34 = sub_1E48783EC();
  v36 = v35;
  v38 = v37;
  sub_1E477A3C8(v29, v31, v33 & 1);

  sub_1E47D75F0();
  v39 = sub_1E487842C();
  v41 = v40;
  v43 = v42;
  v59[1] = v44;

  sub_1E477A3C8(v34, v36, v38 & 1);

  v45 = v61;
  sub_1E47D7298(v61);
  sub_1E476F0D0(a1, v45);
  sub_1E48785FC();
  (*(v62 + 8))(v45, v63);
  v46 = sub_1E48783FC();
  v48 = v47;
  v50 = v49;
  v52 = v51;

  sub_1E477A3C8(v39, v41, v43 & 1);

  v53 = swift_getKeyPath();
  v54 = v60;
  v55 = v65;
  sub_1E4773850(v60, v65, &qword_1ECF7B9D0, &qword_1E487AC00);
  v56 = v66;
  sub_1E4773850(v55, v66, &qword_1ECF7B9D0, &qword_1E487AC00);
  v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C668, &qword_1E487DD00) + 48);
  *v57 = v46;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50 & 1;
  *(v57 + 24) = v52;
  *(v57 + 32) = v53;
  *(v57 + 40) = 1;
  *(v57 + 48) = 0;
  sub_1E478B8E0(v46, v48, v50 & 1);

  sub_1E47738B8(v54, &qword_1ECF7B9D0, &qword_1E487AC00);
  sub_1E477A3C8(v46, v48, v50 & 1);

  sub_1E47738B8(v55, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E47DCEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1E4877B3C();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v53 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - v8;
  sub_1E4878D2C();
  v56 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_1E487876C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  v12 = v9;
  v13 = &v9[*(v11 + 36)];
  v14 = v12;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
  v16 = *MEMORY[0x1E69816D0];
  v17 = sub_1E487877C();
  (*(*(v17 - 8) + 104))(v13 + v15, v16, v17);
  *v13 = swift_getKeyPath();
  *v14 = v10;
  v18 = sub_1E47D75F0();
  KeyPath = swift_getKeyPath();
  v20 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
  v52 = v14;
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = sub_1E47D78B8();
  v22 = swift_getKeyPath();
  v23 = (v14 + *(v5 + 36));
  *v23 = v22;
  v23[1] = v21;
  v59 = sub_1E47D843C();
  v60 = v24;
  sub_1E477A374(v59, v24, v25);
  v26 = sub_1E487848C();
  v28 = v27;
  LOBYTE(v15) = v29;
  type metadata accessor for Event(0);
  v30 = sub_1E48783EC();
  v32 = v31;
  v34 = v33;
  sub_1E477A3C8(v26, v28, v15 & 1);

  sub_1E47D75F0();
  v35 = sub_1E487842C();
  v37 = v36;
  LOBYTE(v15) = v38;

  sub_1E477A3C8(v30, v32, v34 & 1);

  v39 = v53;
  sub_1E47D7298(v53);
  sub_1E476F0D0(a1, v39);
  sub_1E48785FC();
  (*(v54 + 8))(v39, v55);
  v40 = sub_1E48783FC();
  v42 = v41;
  LOBYTE(v39) = v43;
  v45 = v44;

  sub_1E477A3C8(v35, v37, v15 & 1);

  v46 = swift_getKeyPath();
  v47 = v52;
  v48 = v57;
  sub_1E4773850(v52, v57, &qword_1ECF7B920, &unk_1E487DCF0);
  v49 = v58;
  sub_1E4773850(v48, v58, &qword_1ECF7B920, &unk_1E487DCF0);
  v50 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB28, &unk_1E487ED60) + 48);
  *v50 = v40;
  *(v50 + 8) = v42;
  *(v50 + 16) = v39 & 1;
  *(v50 + 24) = v45;
  *(v50 + 32) = v46;
  *(v50 + 40) = 1;
  *(v50 + 48) = 0;
  sub_1E478B8E0(v40, v42, v39 & 1);

  sub_1E47738B8(v47, &qword_1ECF7B920, &unk_1E487DCF0);
  sub_1E477A3C8(v40, v42, v39 & 1);

  sub_1E47738B8(v48, &qword_1ECF7B920, &unk_1E487DCF0);
}

uint64_t sub_1E47DD3E8@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9A0, &qword_1E487EA40);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v22 - v2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9A8, &qword_1E487EA48);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9B0, &unk_1E487EA50);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_1E487725C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  sub_1E47D8F20(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E47738B8(v11, &unk_1ECF7B688, &qword_1E487C160);
    sub_1E47D9FD8(v3);
    sub_1E4773850(v3, v5, &qword_1ECF7C9A0, &qword_1E487EA40);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7C9B8, &qword_1ECF7C9B0, &unk_1E487EA50, MEMORY[0x1E697CD08]);
    sub_1E47DD92C();
    sub_1E487803C();
    return sub_1E47738B8(v3, &qword_1ECF7C9A0, &qword_1E487EA40);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v20 = (*(v13 + 16))(v16, v18, v12);
    MEMORY[0x1EEE9AC00](v20);
    *(&v22 - 2) = v1;
    sub_1E47DD92C();
    sub_1E487831C();
    v21 = v22;
    (*(v22 + 16))(v5, v8, v6);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7C9B8, &qword_1ECF7C9B0, &unk_1E487EA50, MEMORY[0x1E697CD08]);
    sub_1E487803C();
    (*(v21 + 8))(v8, v6);
    return (*(v13 + 8))(v18, v12);
  }
}

uint64_t sub_1E47DD878@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47D9FD8(a1);
}

unint64_t sub_1E47DD92C()
{
  result = qword_1ECF7C9C0;
  if (!qword_1ECF7C9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C9A0, &qword_1E487EA40);
    sub_1E47DD9E8();
    sub_1E47DDFF0(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C9C0);
  }

  return result;
}

unint64_t sub_1E47DD9E8()
{
  result = qword_1ECF7C9C8;
  if (!qword_1ECF7C9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C9D0, &qword_1E487EA60);
    v3 = sub_1E47DDA74();
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C9C8);
  }

  return result;
}

unint64_t sub_1E47DDA74()
{
  result = qword_1ECF7C9D8;
  if (!qword_1ECF7C9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C9E0, &qword_1E487EA68);
    sub_1E47DDB2C();
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0, MEMORY[0x1E697F938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C9D8);
  }

  return result;
}

unint64_t sub_1E47DDB2C()
{
  result = qword_1ECF7C9E8;
  if (!qword_1ECF7C9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C9F0, &qword_1E487EA70);
    sub_1E4773680(&qword_1ECF7C9F8, &qword_1ECF7CA00, &qword_1E487EA78, MEMORY[0x1E6981868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C9E8);
  }

  return result;
}

uint64_t sub_1E47DDBEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E47DDC54()
{
  result = qword_1ECF7CB08;
  if (!qword_1ECF7CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CAE0, &qword_1E487ED20);
    sub_1E4773680(&qword_1EE2B0FB8, &qword_1ECF7C650, &qword_1E487DCA8, MEMORY[0x1E6981800]);
    sub_1E47DDFF0(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB08);
  }

  return result;
}

unint64_t sub_1E47DDD3C()
{
  result = qword_1ECF7CB48;
  if (!qword_1ECF7CB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C3F0, &qword_1E487D078);
    sub_1E47DDDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB48);
  }

  return result;
}

unint64_t sub_1E47DDDC8()
{
  result = qword_1ECF7CB50;
  if (!qword_1ECF7CB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B920, &unk_1E487DCF0);
    sub_1E47DDE80();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB50);
  }

  return result;
}

unint64_t sub_1E47DDE80()
{
  result = qword_1ECF7CB58;
  if (!qword_1ECF7CB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B918, &unk_1E487AA60);
    sub_1E47DDF38();
    sub_1E4773680(&qword_1EE2B5A50, &qword_1ECF7BB68, &qword_1E487C5A0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB58);
  }

  return result;
}

unint64_t sub_1E47DDF38()
{
  result = qword_1ECF7CB60;
  if (!qword_1ECF7CB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B910, &unk_1E487E050);
    sub_1E4773680(&qword_1ECF7CB68, &qword_1ECF7B928, &qword_1E487AA70, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB60);
  }

  return result;
}

uint64_t sub_1E47DDFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E47DE038()
{
  result = qword_1ECF7CB70;
  if (!qword_1ECF7CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CB78, &qword_1E487ED98);
    sub_1E4773680(&qword_1ECF7C9B8, &qword_1ECF7C9B0, &unk_1E487EA50, MEMORY[0x1E697CD08]);
    sub_1E47DD92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB70);
  }

  return result;
}

unint64_t sub_1E47DE0F0()
{
  result = qword_1EE2B0D28;
  if (!qword_1EE2B0D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2B0D28);
  }

  return result;
}

void sub_1E47DE188(uint64_t a1)
{
  type metadata accessor for Event(319);
  if (v1 <= 0x3F)
  {
    sub_1E487732C();
    if (v2 <= 0x3F)
    {
      sub_1E47E3674(319, &qword_1EE2B1690, MEMORY[0x1E6985840]);
      if (v3 <= 0x3F)
      {
        sub_1E47E3674(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v4 <= 0x3F)
        {
          sub_1E47E3674(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v5 <= 0x3F)
          {
            sub_1E4799C20(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
            if (v6 <= 0x3F)
            {
              sub_1E47E3674(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
              if (v7 <= 0x3F)
              {
                sub_1E47E3674(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
                if (v8 <= 0x3F)
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

uint64_t sub_1E47DE378()
{
  v1 = sub_1E48782AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487893C();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v32 - v9);
  v11 = sub_1E4877B3C();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v33 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E47E33A4(v0, v33, type metadata accessor for Event);
  v34 = v13;
  sub_1E47DF124(v13);
  v16 = sub_1E47DF32C();
  v37 = v10;
  sub_1E47DF484(v10);
  v17 = (v2 + 104);
  v18 = (v2 + 8);
  if (v16)
  {
    sub_1E48782EC();
    v19 = *MEMORY[0x1E6980EA0];
    v20 = *v17;
    (*v17)(v4, v19, v1);
    sub_1E48782CC();

    v21 = *v18;
    (*v18)(v4, v1);
    v32 = sub_1E48781FC();

    sub_1E48782BC();
  }

  else
  {
    sub_1E48781BC();
    v19 = *MEMORY[0x1E6980EA0];
    v20 = *v17;
    (*v17)(v4, v19, v1);
    sub_1E48782CC();

    v21 = *v18;
    (*v18)(v4, v1);
    sub_1E487827C();
    v32 = sub_1E487829C();

    sub_1E48781BC();
  }

  v20(v4, v19, v1);
  v22 = sub_1E48782CC();

  v21(v4, v1);
  sub_1E487892C();
  v23 = v37;
  v24 = sub_1E48788FC();
  v25 = v39;
  v26 = *(v38 + 8);
  v26(v8, v39);
  v27 = v33;
  if (v24)
  {
    v28 = v34;
    sub_1E4770A7C(v33, v34);
    sub_1E476EA20(v27, v28);
    sub_1E476F0D0(v27, v28);
    sub_1E48785FC();
  }

  else
  {
    sub_1E487891C();
    v29 = sub_1E48788FC();
    v26(v8, v25);
    sub_1E48786EC();
    sub_1E48786EC();
    if (v29)
    {
      sub_1E48786EC();
    }

    else
    {
      sub_1E48786FC();
    }

    v28 = v34;
  }

  v26(v23, v25);
  (*(v35 + 8))(v28, v36);
  sub_1E47E340C(v27, type metadata accessor for Event);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E487A7F0;
  *(v30 + 32) = v32;
  *(v30 + 40) = v22;

  return v30;
}

double sub_1E47DE878(uint64_t a1)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v49 - v3;
  v4 = sub_1E48782AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E487893C();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v49 - v12);
  v14 = sub_1E4877B3C();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E47E33A4(v1, v51, type metadata accessor for Event);
  v58 = v16;
  sub_1E47DF124(v16);
  v18 = sub_1E47DF32C();
  v59 = v13;
  sub_1E47DF484(v13);
  v19 = (v5 + 104);
  v20 = (v5 + 8);
  if (v18)
  {
    sub_1E48782EC();
    v21 = *MEMORY[0x1E6980EA0];
    v22 = *v19;
    (*v19)(v7, v21, v4);
    sub_1E48782CC();

    v23 = *v20;
    (*v20)(v7, v4);
    v60 = sub_1E48781FC();

    sub_1E48782BC();
    v22(v7, v21, v4);
  }

  else
  {
    sub_1E48781BC();
    v25 = *MEMORY[0x1E6980EA0];
    v26 = *v19;
    (*v19)(v7, v25, v4);
    sub_1E48782CC();

    v23 = *v20;
    (*v20)(v7, v4);
    sub_1E487827C();
    v60 = sub_1E487829C();

    sub_1E48781BC();
    v26(v7, v25, v4);
  }

  v24 = sub_1E48782CC();

  v23(v7, v4);
  sub_1E487892C();
  v27 = v59;
  v28 = sub_1E48788FC();
  v29 = v55;
  v30 = *(v54 + 8);
  v30(v11, v55);
  v31 = v57;
  v32 = v58;
  if (v28)
  {
    v33 = v51;
    v54 = sub_1E4770A7C(v51, v58);
    v50 = sub_1E476EA20(v33, v32);
    sub_1E476F0D0(v33, v32);
    sub_1E48785FC();
  }

  else
  {
    sub_1E487891C();
    v34 = sub_1E48788FC();
    v30(v11, v29);
    v54 = sub_1E48786EC();
    v50 = sub_1E48786EC();
    if (v34)
    {
      sub_1E48786EC();
    }

    else
    {
      sub_1E48786FC();
    }

    v32 = v58;
    v27 = v59;
    v33 = v51;
  }

  v30(v27, v29);
  (*(v52 + 8))(v32, v53);
  sub_1E47E340C(v33, type metadata accessor for Event);
  v35 = type metadata accessor for NarrowEventDetailsView(0);
  v36 = 0.0;
  if ((*(v1 + *(v35 + 24)) & 1) == 0 && *(v1 + *(v56 + 28)) > 0.0)
  {
    sub_1E487201C(v24, v31);
    v36 = v37 + 0.0 + -1.0;
  }

  sub_1E487201C(v60, v31);
  v39 = v36 + v38;
  sub_1E487201C(v24, v31);
  v41 = v39 + v40 + -1.0;
  if ((*(v1 + *(v35 + 28)) & 1) == 0)
  {
    v42 = v49;
    sub_1E4773850(v1 + *(v56 + 60), v49, &qword_1ECF7C048, &qword_1E487C5F0);
    v43 = type metadata accessor for Location(0);
    v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
    sub_1E47738B8(v42, &qword_1ECF7C048, &qword_1E487C5F0);
    if (v44 != 1)
    {
      sub_1E487201C(v24, v31);
      v41 = v41 + v45 + -1.0;
    }
  }

  v46 = sub_1E47DF68C();

  v47 = *(v46 + 48);

  return v41 + v47;
}

uint64_t sub_1E47DEF1C@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowEventDetailsView(0);
  sub_1E4773850(v1 + *(v10 + 36), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47DF124@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowEventDetailsView(0);
  sub_1E4773850(v1 + *(v10 + 40), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47DF32C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NarrowEventDetailsView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E47DF484@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowEventDetailsView(0);
  sub_1E4773850(v1 + *(v10 + 48), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47DF68C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NarrowEventDetailsView(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E47DF7DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBC8, &qword_1E487EED0);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v57 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB98, &qword_1E487EE98);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBB8, &qword_1E487EEB8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBB0, &qword_1E487EEB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBA8, &qword_1E487EEA8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBA0, &qword_1E487EEA0);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v57 - v14;
  *v7 = sub_1E4877F6C();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBD0, &qword_1E487EED8);
  sub_1E47DFE84(v2, &v7[*(v15 + 44)]);
  v58 = type metadata accessor for Event(0);
  v66 = sub_1E47CC9E8(*(v2 + *(v58 + 56)));
  v67 = v16;
  sub_1E477A374(v66, v16, v17);
  v18 = sub_1E487848C();
  v20 = v19;
  v22 = v21;
  sub_1E47E23A0();
  sub_1E487857C();
  sub_1E477A3C8(v18, v20, v22 & 1);

  sub_1E47738B8(v7, &qword_1ECF7CBB8, &qword_1E487EEB8);
  v23 = sub_1E487813C();
  if (sub_1E47DF32C())
  {
    sub_1E47DF68C();
  }

  sub_1E4877B0C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1E477372C(v10, v13, &qword_1ECF7CBB0, &qword_1E487EEB0);
  v32 = &v13[*(v11 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_1E487819C();
  sub_1E47DF68C();

  sub_1E4877B0C();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v61;
  sub_1E477372C(v13, v61, &qword_1ECF7CBA8, &qword_1E487EEA8);
  v43 = v42 + *(v60 + 36);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  if (sub_1E47DF32C())
  {
    v44 = v59;
    v45 = &v59[*(v63 + 36)];
    sub_1E47E33A4(v2, v45, type metadata accessor for Event);
    (*(*(v58 - 8) + 56))(v45, 0, 1);
    KeyPath = swift_getKeyPath();
    v47 = swift_getKeyPath();
    v48 = type metadata accessor for EventBackgroundView(0);
    *(v45 + v48[8]) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *(v45 + v48[9]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *(v45 + v48[10]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v49 = swift_getKeyPath();
    *(v45 + v48[5]) = 3;
    *(v45 + v48[6]) = 0;
    v50 = v45 + v48[7];
    *v50 = KeyPath;
    *(v50 + 8) = 0;
    v51 = v45 + v48[11];
    *v51 = v49;
    *(v51 + 8) = 0;
    v52 = sub_1E487889C();
    v54 = v53;
    v55 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
    *v55 = v52;
    v55[1] = v54;
    sub_1E4773850(v42, v44, &qword_1ECF7CBA0, &qword_1E487EEA0);
    sub_1E4773850(v44, v64, &qword_1ECF7CB98, &qword_1E487EE98);
    swift_storeEnumTagMultiPayload();
    sub_1E47E21A4();
    sub_1E47E225C();
    sub_1E487803C();
    sub_1E47738B8(v44, &qword_1ECF7CB98, &qword_1E487EE98);
  }

  else
  {
    sub_1E4773850(v42, v64, &qword_1ECF7CBA0, &qword_1E487EEA0);
    swift_storeEnumTagMultiPayload();
    sub_1E47E21A4();
    sub_1E47E225C();
    sub_1E487803C();
  }

  return sub_1E47738B8(v42, &qword_1ECF7CBA0, &qword_1E487EEA0);
}

uint64_t sub_1E47DFE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBD8, &qword_1E487EFE0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v53[-v6];
  v7 = sub_1E48782AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1E487893C();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v53[-v15];
  v61 = sub_1E4877B3C();
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E4878D2C();
  v64 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59 = v21;
  sub_1E47E33A4(a1, v21, type metadata accessor for Event);
  v58 = v18;
  sub_1E47DF124(v18);
  v22 = sub_1E47DF32C();
  v60 = v16;
  v65 = a1;
  sub_1E47DF484(v16);
  v23 = (v8 + 104);
  v24 = (v8 + 8);
  v54 = v22;
  if (v22)
  {
    sub_1E48782EC();
    v25 = *MEMORY[0x1E6980EA0];
    v26 = *v23;
    (*v23)(v10, v25, v7);
    sub_1E48782CC();

    v27 = *v24;
    (*v24)(v10, v7);
    v57 = sub_1E48781FC();

    sub_1E48782BC();
    v26(v10, v25, v7);
    v55 = sub_1E48782CC();

    v27(v10, v7);
  }

  else
  {
    sub_1E48781BC();
    v28 = *MEMORY[0x1E6980EA0];
    v29 = *v23;
    (*v23)(v10, v28, v7);
    sub_1E48782CC();

    v30 = *v24;
    (*v24)(v10, v7);
    sub_1E487827C();
    v57 = sub_1E487829C();

    sub_1E48781BC();
    v29(v10, v28, v7);
    v55 = sub_1E48782CC();

    v30(v10, v7);
  }

  sub_1E487892C();
  v31 = v60;
  v32 = sub_1E48788FC();
  v33 = v63;
  v34 = *(v62 + 8);
  v34(v14, v63);
  v35 = (v56 + 8);
  if (v32)
  {
    v37 = v58;
    v36 = v59;
    v38 = sub_1E4770A7C(v59, v58);
    v39 = sub_1E476EA20(v36, v37);
    sub_1E476F0D0(v36, v37);
    v62 = sub_1E48785FC();
    v34(v31, v33);
    (*v35)(v37, v61);
    sub_1E47E340C(v36, type metadata accessor for Event);
    v40 = 0.6;
    if (v54)
    {
      v40 = 1.0;
    }
  }

  else
  {
    sub_1E487891C();
    v41 = sub_1E48788FC();
    v34(v14, v33);
    v38 = sub_1E48786EC();
    v39 = sub_1E48786EC();
    if (v41)
    {
      v42 = sub_1E48786EC();
    }

    else
    {
      v42 = sub_1E48786FC();
    }

    v62 = v42;
    v34(v31, v33);
    (*v35)(v58, v61);
    sub_1E47E340C(v59, type metadata accessor for Event);
    v40 = 1.0;
  }

  v63 = v38;
  v69[0] = v38;
  v69[1] = v57;
  v69[2] = v39;
  v69[3] = v55;
  v69[4] = v62;
  *&v69[5] = v40;
  v43 = v65;
  v44 = *(sub_1E47DF68C() + 72);

  v45 = sub_1E4877F6C();
  v46 = v66;
  *v66 = v45;
  *(v46 + 8) = v44;
  *(v46 + 16) = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBE0, &qword_1E487EFE8);
  sub_1E47E05EC(v69, v43, v46 + *(v47 + 44));
  v48 = v67;
  sub_1E4773850(v46, v67, &qword_1ECF7CBD8, &qword_1E487EFE0);
  v49 = v68;
  sub_1E4773850(v48, v68, &qword_1ECF7CBD8, &qword_1E487EFE0);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBE8, &qword_1E487EFF0) + 48);

  v51 = v49 + v50;
  *v51 = 0;
  *(v51 + 8) = 0;
  sub_1E47738B8(v46, &qword_1ECF7CBD8, &qword_1E487EFE0);
  sub_1E47738B8(v48, &qword_1ECF7CBD8, &qword_1E487EFE0);
}

uint64_t sub_1E47E05EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBF0, &qword_1E487EFF8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBF8, &qword_1E487F000);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = *a1;
  type metadata accessor for ColorBarView.Styling(0);
  sub_1E47E30EC(&v34, v33);
  sub_1E487735C();
  v16 = v34;
  v15[48] = 1;
  *v15 = v16;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *(v15 + 4) = 0;
  *(v15 + 5) = 0;
  *(v15 + 3) = 3;
  KeyPath = swift_getKeyPath();
  v18 = type metadata accessor for ColorBarView(0);
  *&v15[*(v18 + 20)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v19 = swift_getKeyPath();
  v20 = &v15[*(v18 + 24)];
  *v20 = v19;
  v20[8] = 0;
  LOBYTE(v18) = sub_1E487819C();
  v21 = v31;
  sub_1E47DF68C();

  sub_1E4877B0C();
  v22 = &v15[*(v10 + 36)];
  *v22 = v18;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  *v9 = sub_1E4877FBC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC00, &qword_1E487F008);
  sub_1E47E0974(v21, a1, &v9[*(v27 + 44)]);
  sub_1E4773850(v15, v13, &qword_1ECF7CBF8, &qword_1E487F000);
  sub_1E4773850(v9, v7, &qword_1ECF7CBF0, &qword_1E487EFF8);
  v28 = v32;
  sub_1E4773850(v13, v32, &qword_1ECF7CBF8, &qword_1E487F000);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC08, &qword_1E487F010);
  sub_1E4773850(v7, v28 + *(v29 + 48), &qword_1ECF7CBF0, &qword_1E487EFF8);
  sub_1E47738B8(v9, &qword_1ECF7CBF0, &qword_1E487EFF8);
  sub_1E47738B8(v15, &qword_1ECF7CBF8, &qword_1E487F000);
  sub_1E47738B8(v7, &qword_1ECF7CBF0, &qword_1E487EFF8);
  sub_1E47738B8(v13, &qword_1ECF7CBF8, &qword_1E487F000);
}

uint64_t sub_1E47E0974@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v151 = a1;
  v143 = a3;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC10, &qword_1E487F018);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v122 - v4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC18, &qword_1E487F020);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v126 = &v122 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC20, &qword_1E487F028);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v142 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v149 = &v122 - v9;
  v130 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v130);
  v132 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for NarrowEventTitleText(0);
  v11 = MEMORY[0x1EEE9AC00](v133);
  v141 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v122 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v152 = &v122 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C750, &qword_1E487DFE0);
  MEMORY[0x1EEE9AC00](v137);
  v18 = &v122 - v17;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C758, &qword_1E487DFE8);
  v19 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v136 = &v122 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C760, &qword_1E487DFF0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v140 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v148 = &v122 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v139 = &v122 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v122 - v28;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC28, &unk_1E4880470);
  MEMORY[0x1EEE9AC00](v124);
  v31 = &v122 - v30;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC30, &qword_1E487F030);
  v32 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v123 = &v122 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC38, &qword_1E487F038);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v146 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v122 - v37;
  sub_1E4878D2C();
  v138 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v147 = type metadata accessor for NarrowEventDetailsView(0);
  v39 = v151;
  v40 = *(v151 + *(v147 + 6));
  v144 = a2;
  v150 = v38;
  v129 = v19;
  if ((v40 & 1) != 0 || *(v151 + *(v130 + 28)) <= 0.0)
  {
    (*(v32 + 56))(v38, 1, 1, v131);
  }

  else
  {
    sub_1E47E33A4(v151, v31, type metadata accessor for Event);
    v41 = a2[3];
    v159 = v144[4];
    v42 = v159;
    v160 = v41;
    KeyPath = swift_getKeyPath();
    v44 = type metadata accessor for NarrowEventTravelTimeText(0);
    *&v31[v44[8]] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *&v31[v44[5]] = v41;
    *&v31[v44[6]] = v42;
    a2 = v144;
    v45 = v44[7];
    v39 = v151;
    v46 = &v31[v45];
    *v46 = 1;
    v46[8] = 0;
    sub_1E47E3168(&v160, &v158);
    sub_1E47E30EC(&v159, &v158);
    LOBYTE(KeyPath) = sub_1E487816C();
    sub_1E4877B0C();
    v47 = &v31[*(v124 + 36)];
    *v47 = KeyPath;
    *(v47 + 1) = v48;
    *(v47 + 2) = v49;
    *(v47 + 3) = v50;
    *(v47 + 4) = v51;
    v47[40] = 0;
    sub_1E47E348C();
    v52 = v123;
    sub_1E48784AC();
    sub_1E47738B8(v31, &qword_1ECF7CC28, &unk_1E4880470);
    v53 = v150;
    v54 = v52;
    v19 = v129;
    v55 = v131;
    (*(v32 + 32))(v150, v54, v131);
    (*(v32 + 56))(v53, 0, 1, v55);
  }

  v56 = sub_1E47DF32C();
  v125 = v18;
  if (v56)
  {
    v57 = 1;
    v58 = v145;
    v59 = v147;
  }

  else
  {
    sub_1E47E33A4(v39, v18, type metadata accessor for Event);
    v59 = v147;
    v60 = *(v147 + 5);
    v61 = type metadata accessor for NarrowEventTimeText(0);
    v62 = v61[5];
    v63 = sub_1E487732C();
    (*(*(v63 - 8) + 16))(&v18[v62], v39 + v60, v63);
    v64 = a2[1];
    v157 = a2[2];
    v65 = v157;
    v158 = v64;
    *&v18[v61[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v18[v61[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    a2 = v144;
    swift_storeEnumTagMultiPayload();
    *&v18[v61[6]] = v64;
    *&v18[v61[7]] = v65;
    sub_1E47E3168(&v158, &v156);
    sub_1E47E30EC(&v157, &v156);
    LOBYTE(v61) = sub_1E487816C();
    sub_1E4877B0C();
    v66 = &v18[*(v137 + 36)];
    *v66 = v61;
    *(v66 + 1) = v67;
    *(v66 + 2) = v68;
    *(v66 + 3) = v69;
    *(v66 + 4) = v70;
    v66[40] = 0;
    sub_1E47E31C4();
    v71 = v136;
    sub_1E48784AC();
    sub_1E47738B8(v18, &qword_1ECF7C750, &qword_1E487DFE0);
    v58 = v145;
    (*(v19 + 32))(v29, v71, v145);
    v57 = 0;
  }

  v72 = *(v19 + 56);
  v147 = v29;
  v131 = v19 + 56;
  v130 = v72;
  v72(v29, v57, 1, v58);
  v73 = v132;
  sub_1E47E33A4(v39, v132, type metadata accessor for Event);
  v74 = sub_1E47DF32C();
  v75 = 3;
  if (v74)
  {
    v75 = 1;
  }

  v76 = a2[v75];

  v77 = a2[2];
  v78 = swift_getKeyPath();
  v79 = v133;
  *&v15[*(v133 + 32)] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  sub_1E47E3280(v73, v15, type metadata accessor for Event);
  *&v15[v79[5]] = v76;
  v81 = v151;
  v80 = v152;
  v82 = &v15[v79[6]];
  *v82 = 1;
  v82[8] = 0;
  *&v15[v79[7]] = v77;
  sub_1E47E3280(v15, v80, type metadata accessor for NarrowEventTitleText);
  if (*(v81 + *(v59 + 28)))
  {
    (*(v134 + 56))(v149, 1, 1, v135);
  }

  else
  {
    v83 = type metadata accessor for LocationView(0);
    v84 = v127;
    sub_1E47E33A4(v81, &v127[v83[5]], type metadata accessor for Event);
    v156 = a2[3];

    sub_1E47E3168(&v156, &v155);
    v81 = v151;
    v85 = sub_1E48786DC();
    *v84 = swift_getKeyPath();
    *(v84 + 8) = 0;
    v86 = v83[11];
    *(v84 + v86) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v84 + v83[6]) = v156;
    *(v84 + v83[7]) = 0;
    *(v84 + v83[8]) = v85;
    *(v84 + v83[9]) = 1;
    *(v84 + v83[10]) = 0;
    LOBYTE(v85) = sub_1E487815C();
    sub_1E4877B0C();
    v87 = v84 + *(v128 + 36);
    *v87 = v85;
    *(v87 + 8) = v88;
    *(v87 + 16) = v89;
    *(v87 + 24) = v90;
    *(v87 + 32) = v91;
    *(v87 + 40) = 0;
    sub_1E47E32E8();
    v92 = v126;
    sub_1E48784AC();
    sub_1E47738B8(v84, &qword_1ECF7CC10, &qword_1E487F018);
    v93 = v134;
    v94 = v149;
    v95 = v135;
    (*(v134 + 32))(v149, v92, v135);
    (*(v93 + 56))(v94, 0, 1, v95);
  }

  if (sub_1E47DF32C())
  {
    v96 = v125;
    sub_1E47E33A4(v81, v125, type metadata accessor for Event);
    v97 = *(v59 + 20);
    v98 = type metadata accessor for NarrowEventTimeText(0);
    v99 = v98[5];
    v100 = sub_1E487732C();
    (*(*(v100 - 8) + 16))(v96 + v99, v81 + v97, v100);
    v101 = v144[3];
    v154 = v144[4];
    v102 = v154;
    v155 = v101;
    *(v96 + v98[8]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *(v96 + v98[9]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v96 + v98[6]) = v101;
    *(v96 + v98[7]) = v102;
    sub_1E47E3168(&v155, v153);
    sub_1E47E30EC(&v154, v153);
    LOBYTE(v98) = sub_1E487815C();
    sub_1E4877B0C();
    v103 = v96 + *(v137 + 36);
    *v103 = v98;
    *(v103 + 8) = v104;
    *(v103 + 16) = v105;
    *(v103 + 24) = v106;
    *(v103 + 32) = v107;
    *(v103 + 40) = 0;
    sub_1E47E31C4();
    v108 = v136;
    sub_1E48784AC();
    sub_1E47738B8(v96, &qword_1ECF7C750, &qword_1E487DFE0);
    v109 = v139;
    v110 = v108;
    v111 = v145;
    (*(v129 + 32))(v139, v110, v145);
    v112 = 0;
  }

  else
  {
    v112 = 1;
    v109 = v139;
    v111 = v145;
  }

  (v130)(v109, v112, 1, v111);
  v113 = v146;
  sub_1E4773850(v150, v146, &qword_1ECF7CC38, &qword_1E487F038);
  v114 = v148;
  sub_1E4773850(v147, v148, &qword_1ECF7C760, &qword_1E487DFF0);
  v115 = v141;
  sub_1E47E33A4(v152, v141, type metadata accessor for NarrowEventTitleText);
  v116 = v149;
  v117 = v142;
  sub_1E4773850(v149, v142, &qword_1ECF7CC20, &qword_1E487F028);
  v118 = v140;
  sub_1E4773850(v109, v140, &qword_1ECF7C760, &qword_1E487DFF0);
  v119 = v143;
  sub_1E4773850(v113, v143, &qword_1ECF7CC38, &qword_1E487F038);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC40, &qword_1E487F078);
  sub_1E4773850(v114, v119 + v120[12], &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47E33A4(v115, v119 + v120[16], type metadata accessor for NarrowEventTitleText);
  sub_1E4773850(v117, v119 + v120[20], &qword_1ECF7CC20, &qword_1E487F028);
  sub_1E4773850(v118, v119 + v120[24], &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v109, &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v116, &qword_1ECF7CC20, &qword_1E487F028);
  sub_1E47E340C(v152, type metadata accessor for NarrowEventTitleText);
  sub_1E47738B8(v147, &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v150, &qword_1ECF7CC38, &qword_1E487F038);
  sub_1E47738B8(v118, &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v117, &qword_1ECF7CC20, &qword_1E487F028);
  sub_1E47E340C(v115, type metadata accessor for NarrowEventTitleText);
  sub_1E47738B8(v148, &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v146, &qword_1ECF7CC38, &qword_1E487F038);
}

uint64_t sub_1E47E1A3C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB80, &qword_1E487EE78);
  MEMORY[0x1EEE9AC00](v40);
  v35 = &v32 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB88, &qword_1E487EE80);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v32 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB90, &unk_1E487EE88);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v32 - v4;
  v5 = sub_1E4877CCC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  v36 = sub_1E487725C();
  v15 = *(v36 - 8);
  v16 = MEMORY[0x1EEE9AC00](v36);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v32 = &v32 - v19;
  v20 = v1;
  sub_1E47DEF1C(v11);
  sub_1E4877CAC();
  sub_1E47E2458(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v21 = sub_1E4878EAC();
  v22 = *(v6 + 8);
  v22(v9, v5);
  v22(v11, v5);
  if (v21)
  {
    (*(v15 + 56))(v14, 1, 1, v36);
LABEL_4:
    sub_1E47738B8(v14, &unk_1ECF7B688, &qword_1E487C160);
    v25 = v35;
    sub_1E47DF7DC(v35);
    sub_1E4773850(v25, v38, &qword_1ECF7CB80, &qword_1E487EE78);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1070, &qword_1ECF7CB90, &unk_1E487EE88, MEMORY[0x1E697CD08]);
    sub_1E47E2118();
    sub_1E487803C();
    return sub_1E47738B8(v25, &qword_1ECF7CB80, &qword_1E487EE78);
  }

  v23 = type metadata accessor for Event(0);
  sub_1E4773850(&v20[*(v23 + 44)], v14, &unk_1ECF7B688, &qword_1E487C160);
  v24 = v36;
  if ((*(v15 + 48))(v14, 1, v36) == 1)
  {
    goto LABEL_4;
  }

  v27 = v32;
  (*(v15 + 32))(v32, v14, v24);
  v28 = (*(v15 + 16))(v18, v27, v24);
  MEMORY[0x1EEE9AC00](v28);
  *(&v32 - 2) = v20;
  sub_1E47E2118();
  v29 = v33;
  sub_1E487831C();
  v30 = v34;
  v31 = v39;
  (*(v34 + 16))(v38, v29, v39);
  swift_storeEnumTagMultiPayload();
  sub_1E4773680(&qword_1EE2B1070, &qword_1ECF7CB90, &unk_1E487EE88, MEMORY[0x1E697CD08]);
  sub_1E487803C();
  (*(v30 + 8))(v29, v31);
  return (*(v15 + 8))(v27, v24);
}

uint64_t sub_1E47E2064@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47DF7DC(a1);
}

unint64_t sub_1E47E2118()
{
  result = qword_1EE2B11C0;
  if (!qword_1EE2B11C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CB80, &qword_1E487EE78);
    sub_1E47E21A4();
    sub_1E47E225C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11C0);
  }

  return result;
}

unint64_t sub_1E47E21A4()
{
  result = qword_1EE2B1298;
  if (!qword_1EE2B1298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CB98, &qword_1E487EE98);
    sub_1E47E225C();
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0, MEMORY[0x1E697F938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1298);
  }

  return result;
}

unint64_t sub_1E47E225C()
{
  result = qword_1EE2B12A8;
  if (!qword_1EE2B12A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CBA0, &qword_1E487EEA0);
    sub_1E47E22E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B12A8);
  }

  return result;
}

unint64_t sub_1E47E22E8()
{
  result = qword_1EE2B12D0;
  if (!qword_1EE2B12D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CBA8, &qword_1E487EEA8);
    sub_1E47E38D4(&qword_1EE2B1358, &qword_1ECF7CBB0, &qword_1E487EEB0, sub_1E47E23A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B12D0);
  }

  return result;
}

unint64_t sub_1E47E23A0()
{
  result = qword_1EE2B1470;
  if (!qword_1EE2B1470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CBB8, &qword_1E487EEB8);
    v3 = sub_1E4773680(&qword_1EE2B0F68, &qword_1ECF7CBC0, &unk_1E487EEC0, MEMORY[0x1E6981800]);
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1470);
  }

  return result;
}

uint64_t sub_1E47E2458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E47E24A8@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowEventTimeText(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47E26B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v3 = sub_1E487753C();
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v64 - v10);
  v12 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Utils();
  v15 = type metadata accessor for Event(0);
  v17 = *(v15 + 20);
  v16 = *(v15 + 24);
  v76 = v16;
  v77 = v17;
  v18 = sub_1E487732C();
  v19 = *(v18 - 8);
  v74 = *(v19 + 16);
  v75 = v19 + 16;
  v20 = v2 + v16;
  v21 = v18;
  v70 = v18;
  v74(v11, v20);
  v22 = *(v19 + 56);
  v71 = v19 + 56;
  v72 = v22;
  v22(v11, 0, 1, v21);
  v23 = type metadata accessor for NarrowEventTimeText(0);
  v24 = *(v23 + 20);
  v68 = v24;
  v69 = v6;
  sub_1E47E24A8(v6);
  v67 = *(v2 + *(v23 + 24));
  v64 = v11;
  sub_1E485CFF8(v2 + v17, v11, v2 + v24, v67, v14);
  v25 = *(v81 + 8);
  v81 += 8;
  v73 = v25;
  v25(v6, v80);
  sub_1E47738B8(v11, &unk_1ECF7C880, &qword_1E4882710);
  v26 = sub_1E487847C();
  v28 = v27;
  v30 = v29;
  v31 = sub_1E48783EC();
  v33 = v32;
  LOBYTE(v6) = v34;
  sub_1E477A3C8(v26, v28, v30 & 1);

  v35 = sub_1E48783FC();
  v37 = v36;
  LOBYTE(v28) = v38;
  sub_1E477A3C8(v31, v33, v6 & 1);

  v39 = sub_1E487842C();
  v66 = v39;
  v41 = v40;
  v65 = v40;
  LOBYTE(v33) = v42;
  v44 = v43;
  v67 = v43;
  sub_1E477A3C8(v35, v37, v28 & 1);

  KeyPath = swift_getKeyPath();
  v84 = v39;
  v85 = v41;
  LOBYTE(v35) = v33 & 1;
  v86 = v33 & 1;
  v87 = v44;
  v88 = KeyPath;
  v89 = 1;
  v90 = 0;
  v46 = v64;
  v47 = v70;
  v48 = v74;
  (v74)(v64, v2 + v76, v70);
  v49 = v72;
  v72(v46, 0, 1, v47);
  v50 = v78;
  v48(v78, v2 + v68, v47);
  v51 = v50;
  v49(v50, 0, 1, v47);
  v52 = v69;
  sub_1E47E24A8(v69);
  v53 = sub_1E486D148(v2 + v77, v46, v50, v52);
  v55 = v54;
  v73(v52, v80);
  sub_1E47738B8(v51, &unk_1ECF7C880, &qword_1E4882710);
  v56 = sub_1E47738B8(v46, &unk_1ECF7C880, &qword_1E4882710);
  v82 = v53;
  v83 = v55;
  sub_1E477A374(v56, v57, v58);
  v59 = sub_1E487848C();
  v61 = v60;
  LOBYTE(v51) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487856C();
  sub_1E477A3C8(v59, v61, v51 & 1);

  sub_1E477A3C8(v66, v65, v35);
}

uint64_t sub_1E47E2C84@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v48 = sub_1E487846C();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB30, &qword_1E487B130);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v5 = &v39 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB38, &qword_1E487B138) - 8;
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v39 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB40, &qword_1E487B140) - 8;
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v39 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB48, &qword_1E487B148) - 8;
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v39 - v8;
  v9 = *(type metadata accessor for Event(0) + 28);
  v39 = v1;
  v51 = sub_1E486DF20(*(v1 + v9));
  v52 = v10;
  sub_1E477A374(v51, v10, v11);
  v12 = sub_1E487848C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v51 = v12;
  v52 = v14;
  v16 &= 1u;
  v53 = v16;
  v54 = v18;
  v55 = KeyPath;
  v56 = 0;
  sub_1E487845C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB58, &unk_1E487F1D0);
  sub_1E4780E40();
  sub_1E487853C();
  (*(v46 + 8))(v3, v48);
  sub_1E477A3C8(v12, v14, v16);

  v20 = type metadata accessor for NarrowEventTravelTimeText(0);
  v21 = v39;
  v22 = *(v39 + v20[5]);
  v23 = swift_getKeyPath();
  v24 = v42;
  (*(v47 + 32))(v42, v5, v49);
  v25 = &v24[*(v45 + 44)];
  *v25 = v23;
  v25[1] = v22;
  v26 = *(v21 + v20[6]);
  v27 = v21;
  v28 = swift_getKeyPath();
  v29 = v24;
  v30 = v41;
  sub_1E477372C(v29, v41, &qword_1ECF7BB38, &qword_1E487B138);
  v31 = (v30 + *(v44 + 44));
  *v31 = v28;
  v31[1] = v26;
  v32 = (v27 + v20[7]);
  v33 = *v32;
  LOBYTE(v27) = *(v32 + 8);
  v34 = swift_getKeyPath();
  v35 = v30;
  v36 = v40;
  sub_1E477372C(v35, v40, &qword_1ECF7BB40, &qword_1E487B140);
  v37 = v36 + *(v43 + 44);
  *v37 = v34;
  *(v37 + 8) = v33;
  *(v37 + 16) = v27;
  sub_1E477372C(v36, v50, &qword_1ECF7BB48, &qword_1E487B148);
}

unint64_t sub_1E47E31C4()
{
  result = qword_1EE2B15C0;
  if (!qword_1EE2B15C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C750, &qword_1E487DFE0);
    sub_1E47E2458(qword_1EE2B2C48, type metadata accessor for NarrowEventTimeText, &unk_1E487F118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15C0);
  }

  return result;
}

uint64_t sub_1E47E3280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E47E32E8()
{
  result = qword_1EE2B15D8;
  if (!qword_1EE2B15D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CC10, &qword_1E487F018);
    sub_1E47E2458(qword_1EE2B3E90, type metadata accessor for LocationView, &unk_1E487F2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15D8);
  }

  return result;
}

uint64_t sub_1E47E33A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47E340C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E47E348C()
{
  result = qword_1ECF7CC48;
  if (!qword_1ECF7CC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CC28, &unk_1E4880470);
    sub_1E47E2458(&qword_1ECF7CC50, type metadata accessor for NarrowEventTravelTimeText, &unk_1E487F0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CC48);
  }

  return result;
}

void sub_1E47E3570(uint64_t a1)
{
  type metadata accessor for Event(319);
  if (v1 <= 0x3F)
  {
    sub_1E487732C();
    if (v2 <= 0x3F)
    {
      sub_1E47E3674(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
      if (v3 <= 0x3F)
      {
        sub_1E47E3674(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E47E3674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E47E36F0(uint64_t a1)
{
  type metadata accessor for Event(319);
  if (v1 <= 0x3F)
  {
    sub_1E4799C20(319, &qword_1EE2B0DA0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E47E3674(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E47E37E4()
{
  result = qword_1EE2B11A0;
  if (!qword_1EE2B11A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CC58, &qword_1E487F0C0);
    sub_1E4773680(&qword_1EE2B1070, &qword_1ECF7CB90, &unk_1E487EE88, MEMORY[0x1E697CD08]);
    sub_1E47E2118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11A0);
  }

  return result;
}

uint64_t sub_1E47E38D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E47E2458(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for LocationView(uint64_t a1)
{
  result = qword_1EE2B3E80;
  if (!qword_1EE2B3E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47E39FC(uint64_t a1)
{
  sub_1E47E3AFC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Event(319);
    if (v2 <= 0x3F)
    {
      sub_1E47E3AFC(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E47E3AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E47E3B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7CC60;
  if (!qword_1ECF7CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CC60);
  }

  return result;
}

uint64_t sub_1E47E3BB8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v5;
}

uint64_t sub_1E47E3D14@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for LocationView(0);
  sub_1E4773850(v1 + *(v10 + 44), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47E3F1C(uint64_t a1)
{
  v3 = sub_1E487711C();
  MEMORY[0x1EEE9AC00](v3);
  if (*(a1 + *(type metadata accessor for Location(0) + 20) + 8) && (*(v1 + *(type metadata accessor for LocationView(0) + 40)) & 1) == 0)
  {

    sub_1E487874C();
    v7 = sub_1E487849C();
    v9 = v8;
    v11 = v10;
    v12 = sub_1E487841C();
    v14 = v13;
    v16 = v15;
    sub_1E477A3C8(v7, v9, v11 & 1);

    sub_1E478B8E0(v12, v14, v16 & 1);

    v4 = sub_1E487841C();
    v18 = v17;
    v5 = v19;
    sub_1E477A3C8(v12, v14, v16 & 1);

    v20 = v12;
    v6 = v18;
    sub_1E477A3C8(v20, v14, v16 & 1);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  sub_1E487710C();
  sub_1E47E5658();
  v30 = sub_1E4878C5C();
  sub_1E477A374(v30, v21, v22);
  v23 = sub_1E487848C();
  v25 = v24;
  v27 = v26;
  v29 = sub_1E487841C();
  sub_1E477A3C8(v23, v25, v27 & 1);

  sub_1E477A3C8(v4, v6, v5 & 1);

  return v29;
}

uint64_t sub_1E47E41BC@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC68, &qword_1E487F320);
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Location(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + *(type metadata accessor for LocationView(0) + 20);
  v13 = type metadata accessor for Event(0);
  sub_1E4773850(v12 + *(v13 + 60), v7, &qword_1ECF7C048, &qword_1E487C5F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E47738B8(v7, &qword_1ECF7C048, &qword_1E487C5F0);
    return (*(v2 + 56))(v19, 1, 1, v18);
  }

  else
  {
    sub_1E47CECA8(v7, v11);
    v15 = *(sub_1E47E3BB8() + 96);

    *v4 = sub_1E4877F6C();
    *(v4 + 1) = v15;
    v4[16] = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC70, &qword_1E487F328);
    sub_1E47E4470(v1, v11, &v4[*(v16 + 44)]);
    v17 = v19;
    sub_1E477372C(v4, v19, &qword_1ECF7CC68, &qword_1E487F320);
    (*(v2 + 56))(v17, 0, 1, v18);
    return sub_1E47E55A8(v11);
  }
}

uint64_t sub_1E47E4470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v156 = a3;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC78, &qword_1E487F330);
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v121 - v5;
  v143 = sub_1E487846C();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB30, &qword_1E487B130);
  v146 = *(v7 - 8);
  v147 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v135 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v134 = &v121 - v10;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB38, &qword_1E487B138);
  v11 = MEMORY[0x1EEE9AC00](v144);
  v133 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v121 - v13;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB40, &qword_1E487B140);
  v14 = MEMORY[0x1EEE9AC00](v145);
  v132 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v130 = &v121 - v16;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB48, &qword_1E487B148);
  v17 = MEMORY[0x1EEE9AC00](v152);
  v128 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v138 = &v121 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v121 - v21;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB50, &qword_1E487B150);
  v137 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v136 = &v121 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC80, &qword_1E487F338);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v153 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v151 = &v121 - v26;
  v127 = sub_1E4877B3C();
  v126 = *(v127 - 8);
  v27 = MEMORY[0x1EEE9AC00](v127);
  v124 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v121 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v121 - v32);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  MEMORY[0x1EEE9AC00](v123);
  v139 = &v121 - v34;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v35 = *(v140 - 8);
  v36 = MEMORY[0x1EEE9AC00](v140);
  v38 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v125 = &v121 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v149 = &v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v157 = &v121 - v43;
  sub_1E4878D2C();
  v148 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v44 = type metadata accessor for LocationView(0);
  if (*(a1 + v44[10]) == 1)
  {
    type metadata accessor for Location(0);
    v122 = a2;
    v45 = a1;

    v46 = sub_1E487876C();
    v47 = (v33 + *(v31 + 36));
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v49 = *MEMORY[0x1E69816D0];
    v50 = sub_1E487877C();
    (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
    *v47 = swift_getKeyPath();
    *v33 = v46;
    a1 = v45;
    v51 = *(v45 + v44[6]);
    KeyPath = swift_getKeyPath();
    v53 = v33;
    v54 = v139;
    sub_1E477372C(v53, v139, &qword_1ECF7B910, &unk_1E487E050);
    v55 = (v54 + *(v123 + 36));
    *v55 = KeyPath;
    v55[1] = v51;
    v56 = v44[5];

    sub_1E47E3D14(v30);
    v57 = sub_1E476F0D0(v45 + v56, v30);
    v58 = v126;
    v59 = v124;
    v60 = v127;
    (*(v126 + 16))(v124, v30, v127);
    v61 = (*(v58 + 88))(v59, v60);
    if (v61 == *MEMORY[0x1E697DBC0])
    {
      a2 = v122;
    }

    else
    {
      a2 = v122;
      if (v61 != *MEMORY[0x1E697DBB0])
      {
        (*(v58 + 8))(v59, v60);
      }
    }

    CUIKOccurrenceLeadingIconAlphaScale();
    v62 = [v57 cuik_colorWithAlphaScaled_];

    v63 = sub_1E48785FC();
    (*(v58 + 8))(v30, v60);
    v64 = swift_getKeyPath();
    sub_1E477372C(v139, v38, &qword_1ECF7B918, &unk_1E487AA60);
    v65 = v140;
    v66 = &v38[*(v140 + 36)];
    *v66 = v64;
    v66[1] = v63;
    v67 = v125;
    sub_1E477372C(v38, v125, &qword_1ECF7B920, &unk_1E487DCF0);
    v68 = v67;
    v69 = v157;
    sub_1E477372C(v68, v157, &qword_1ECF7B920, &unk_1E487DCF0);
    (*(v35 + 56))(v69, 0, 1, v65);
  }

  else
  {
    (*(v35 + 56))(v157, 1, 1, v140);
  }

  v70 = a1;
  v71 = *(a1 + v44[9]);
  v72 = sub_1E47E3F1C(a2);
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v140 = swift_getKeyPath();
  v158 = v72;
  v159 = v74;
  LODWORD(v139) = v76 & 1;
  v160 = v76 & 1;
  v161 = v78;
  v162 = v140;
  v163 = 0;
  type metadata accessor for Event(0);
  v79 = v141;
  sub_1E487845C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB58, &unk_1E487F1D0);
  sub_1E4780E40();
  v80 = v44;
  if (v71 == 1)
  {
    v81 = v134;
    sub_1E487853C();
    (*(v142 + 8))(v79, v143);
    sub_1E477A3C8(v72, v74, v139);

    v82 = *(v70 + v80[6]);
    v83 = swift_getKeyPath();
    v84 = v131;
    (*(v146 + 32))(v131, v81, v147);
    v85 = (v84 + *(v144 + 36));
    *v85 = v83;
    v85[1] = v82;
    v86 = *(v70 + v80[8]);
    v87 = swift_getKeyPath();
    v88 = v130;
    sub_1E477372C(v84, v130, &qword_1ECF7BB38, &qword_1E487B138);
    v89 = (v88 + *(v145 + 36));
    *v89 = v87;
    v89[1] = v86;
    LOBYTE(v87) = *(v70 + v80[7]);
    v90 = swift_getKeyPath();
    v91 = v129;
    sub_1E477372C(v88, v129, &qword_1ECF7BB40, &qword_1E487B140);
    v92 = v152;
    v93 = v91 + *(v152 + 36);
    *v93 = v90;
    *(v93 + 8) = (v87 & 1) == 0;
    *(v93 + 16) = v87;
    v94 = sub_1E4780EF8();

    v95 = v136;
    sub_1E487855C();
    sub_1E47738B8(v91, &qword_1ECF7BB48, &qword_1E487B148);
    v96 = v137;
    v97 = v150;
    (*(v137 + 16))(v155, v95, v150);
    swift_storeEnumTagMultiPayload();
    v158 = v92;
    v159 = v94;
    swift_getOpaqueTypeConformance2();
    v98 = v151;
    sub_1E487803C();
    (*(v96 + 8))(v95, v97);
  }

  else
  {
    v99 = v135;
    sub_1E487853C();
    (*(v142 + 8))(v79, v143);
    sub_1E477A3C8(v72, v74, v139);

    v100 = *(v70 + v80[6]);
    v101 = swift_getKeyPath();
    v102 = v133;
    (*(v146 + 32))(v133, v99, v147);
    v103 = (v102 + *(v144 + 36));
    *v103 = v101;
    v103[1] = v100;
    v104 = *(v70 + v80[8]);
    v105 = swift_getKeyPath();
    v106 = v132;
    sub_1E477372C(v102, v132, &qword_1ECF7BB38, &qword_1E487B138);
    v107 = (v106 + *(v145 + 36));
    *v107 = v105;
    v107[1] = v104;
    LOBYTE(v105) = *(v70 + v80[7]);
    v108 = swift_getKeyPath();
    v109 = v106;
    v110 = v128;
    sub_1E477372C(v109, v128, &qword_1ECF7BB40, &qword_1E487B140);
    v111 = v152;
    v112 = v110 + *(v152 + 36);
    *v112 = v108;
    *(v112 + 8) = (v105 & 1) == 0;
    *(v112 + 16) = v105;
    v113 = v138;
    sub_1E477372C(v110, v138, &qword_1ECF7BB48, &qword_1E487B148);
    sub_1E4773850(v113, v155, &qword_1ECF7BB48, &qword_1E487B148);
    swift_storeEnumTagMultiPayload();
    v114 = sub_1E4780EF8();

    v158 = v111;
    v159 = v114;
    swift_getOpaqueTypeConformance2();
    v98 = v151;
    sub_1E487803C();
    sub_1E47738B8(v113, &qword_1ECF7BB48, &qword_1E487B148);
  }

  v115 = v157;
  v116 = v149;
  sub_1E4773850(v157, v149, &qword_1ECF7B9D0, &qword_1E487AC00);
  v117 = v153;
  sub_1E4773850(v98, v153, &qword_1ECF7CC80, &qword_1E487F338);
  v118 = v156;
  sub_1E4773850(v116, v156, &qword_1ECF7B9D0, &qword_1E487AC00);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC88, &qword_1E487F400);
  sub_1E4773850(v117, v118 + *(v119 + 48), &qword_1ECF7CC80, &qword_1E487F338);
  sub_1E47738B8(v98, &qword_1ECF7CC80, &qword_1E487F338);
  sub_1E47738B8(v115, &qword_1ECF7B9D0, &qword_1E487AC00);
  sub_1E47738B8(v117, &qword_1ECF7CC80, &qword_1E487F338);
  sub_1E47738B8(v116, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E47E55A8(uint64_t a1)
{
  v2 = type metadata accessor for Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E47E5604@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4877E2C();
  *a1 = result;
  return result;
}

unint64_t sub_1E47E5658()
{
  result = qword_1EE2B4690;
  if (!qword_1EE2B4690)
  {
    sub_1E487711C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4690);
  }

  return result;
}

unint64_t sub_1E47E56B0()
{
  result = qword_1EE2B0FC8;
  if (!qword_1EE2B0FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CC90, &qword_1E487F438);
    sub_1E4773680(&qword_1EE2B0FD0, &qword_1ECF7CC68, &qword_1E487F320, MEMORY[0x1E6981800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0FC8);
  }

  return result;
}

void *sub_1E47E5784(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v77 = a3;
  v75 = a2;
  v71 = sub_1E487751C();
  v4 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v53 - v7;
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v73 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v53 - v12;
  v13 = type metadata accessor for CalendarDateTimelineEntry(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v72 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v54 = v9;
  v19 = *(v9 + 16);
  v19(&v53 - v17, a1, v8);
  v20 = &v18[*(v13 + 20)];
  v62 = v19;
  v63 = v9 + 16;
  v19(v20, a1, v8);
  v64 = v13;
  v21 = *(v13 + 24);
  v22 = sub_1E487753C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v60 = v23 + 56;
  v61 = v24;
  v24(&v18[v21], 1, 1, v22);
  v25 = sub_1E4860CCC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1E4860CCC((v26 > 1), v27 + 1, 1, v25);
  }

  v25[2] = v27 + 1;
  v59 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v58 = *(v14 + 72);
  sub_1E47E5E8C(v18, v25 + v59 + v58 * v27);
  v28 = v76;
  sub_1E487745C();
  if (v25[2] < v75)
  {
    v29 = *MEMORY[0x1E6969A48];
    v69 = *(v4 + 104);
    v70 = v4 + 104;
    v68 = (v4 + 8);
    v66 = (v54 + 8);
    v67 = (v54 + 48);
    v56 = (v54 + 32);
    v55 = xmmword_1E487A7F0;
    v30 = v65;
    v57 = v29;
    do
    {
      v42 = v74;
      v43 = v71;
      v69(v74, v29, v71);
      sub_1E48774BC();
      (*v68)(v42, v43);
      if ((*v67)(v30, 1, v8) == 1)
      {
        sub_1E47E5EF0(v30);
        v31 = sub_1E4878DCC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
        v32 = swift_allocObject();
        *(v32 + 16) = v55;
        sub_1E47E5F58(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v33 = sub_1E48790CC();
        v35 = v34;
        v36 = MEMORY[0x1E69E6158];
        *(v32 + 56) = MEMORY[0x1E69E6158];
        v38 = sub_1E478B950(v33, v34, v37);
        *(v32 + 64) = v38;
        *(v32 + 32) = v33;
        *(v32 + 40) = v35;
        sub_1E47E5F58(&qword_1ECF7CC98, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B10]);
        v39 = sub_1E48790CC();
        *(v32 + 96) = v36;
        *(v32 + 104) = v38;
        *(v32 + 72) = v39;
        *(v32 + 80) = v40;
        sub_1E478E80C();
        v41 = sub_1E4878E4C();
        sub_1E4877AAC(v31, &dword_1E475C000, v41, "Date generated by adding one day to %@ is nil, calendar: %@", 59, 2, v32);
        v30 = v65;
      }

      else
      {
        v44 = *v66;
        (*v66)(v28, v8);
        v45 = v73;
        (*v56)(v73, v30, v8);
        v46 = v22;
        v47 = v62;
        v62(v28, v45, v8);
        v48 = v72;
        v47(v72, v28, v8);
        v49 = v64;
        v47(v48 + *(v64 + 20), v28, v8);
        v22 = v46;
        v61(v48 + *(v49 + 24), 1, 1, v46);
        v51 = v25[2];
        v50 = v25[3];
        if (v51 >= v50 >> 1)
        {
          v25 = sub_1E4860CCC((v50 > 1), v51 + 1, 1, v25);
        }

        v44(v73, v8);
        v25[2] = v51 + 1;
        sub_1E47E5E8C(v72, v25 + v59 + v51 * v58);
        v29 = v57;
      }

      v28 = v76;
    }

    while (v25[2] < v75);
  }

  (*(v54 + 8))(v28, v8);
  return v25;
}

uint64_t sub_1E47E5E8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarDateTimelineEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47E5EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E47E5F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E47E5FE8(uint64_t a1)
{
  sub_1E47E8F54(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
  if (v1 <= 0x3F)
  {
    sub_1E47E8F54(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
    if (v2 <= 0x3F)
    {
      sub_1E47E8F54(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1E48783DC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E47E6150()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v5;
}

uint64_t sub_1E47E6290@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for AllDayCirclesView(0);
  sub_1E4773850(v1 + *(v10 + 20), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47E6498@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  LODWORD(v66) = a2;
  v75 = a3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD00, &qword_1E487F538);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v58 - v6;
  v73 = type metadata accessor for MultiColoredCircleImage(0);
  MEMORY[0x1EEE9AC00](v73);
  v8 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD08, &qword_1E487F540);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v58 - v9;
  v10 = sub_1E4877B3C();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v63 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1E487875C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD10, &qword_1E487F548);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCF0, &unk_1E487F528);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - v19;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCE8, &qword_1E487F520);
  MEMORY[0x1EEE9AC00](v59);
  v22 = &v58 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCE0, &qword_1E487F518);
  v23 = MEMORY[0x1EEE9AC00](v67);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v62 = &v58 - v26;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD8, &qword_1E487F510);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v58 - v27;
  v28 = type metadata accessor for Event(0);
  if ((*(a1 + *(v28 + 56)) & 0xFE) == 6)
  {
    if (v66)
    {
      v66 = a1;
      sub_1E4878BDC();
      sub_1E487874C();
      (*(v13 + 104))(v15, *MEMORY[0x1E6981638], v12);
      v29 = sub_1E487878C();

      (*(v13 + 8))(v15, v12);
      *&v76 = v29;
      sub_1E48785CC();

      (*(v60 + 32))(v20, v17, v61);
      v30 = &v20[*(v18 + 36)];
      *v30 = 0;
      *(v30 + 4) = 1;
      v31 = v63;
      sub_1E47E6290(v63);
      v32 = sub_1E4770A7C(v66, v31);
      (*(v64 + 8))(v31, v65);
      KeyPath = swift_getKeyPath();
      sub_1E477372C(v20, v22, &qword_1ECF7CCF0, &unk_1E487F528);
      v34 = &v22[*(v59 + 36)];
      *v34 = KeyPath;
      v34[1] = v32;
      sub_1E487889C();
      sub_1E4877BCC();
      sub_1E477372C(v22, v25, &qword_1ECF7CCE8, &qword_1E487F520);
      v35 = &v25[*(v67 + 36)];
      v36 = v77;
      *v35 = v76;
      *(v35 + 1) = v36;
      *(v35 + 2) = v78;
      v37 = v25;
      v38 = v62;
      sub_1E477372C(v37, v62, &qword_1ECF7CCE0, &qword_1E487F518);
      sub_1E4773850(v38, v70, &qword_1ECF7CCE0, &qword_1E487F518);
      swift_storeEnumTagMultiPayload();
      sub_1E47E91B4(&qword_1EE2B1308, &qword_1ECF7CCE0, &qword_1E487F518, sub_1E47E8B74);
      sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage, &unk_1E487F610);
      v39 = v68;
      sub_1E487803C();
      sub_1E47738B8(v38, &qword_1ECF7CCE0, &qword_1E487F518);
    }

    else
    {
      v49 = v73;
      sub_1E47E8D50(a1, v8 + *(v73 + 20), type metadata accessor for Event);
      *v8 = 0xD000000000000017;
      v8[1] = 0x80000001E48A8100;
      *(v8 + v49[6]) = a4;
      v50 = v49[7];
      *(v8 + v50) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      v51 = v49[8];
      *(v8 + v51) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      sub_1E47E8D50(v8, v70, type metadata accessor for MultiColoredCircleImage);
      swift_storeEnumTagMultiPayload();
      sub_1E47E91B4(&qword_1EE2B1308, &qword_1ECF7CCE0, &qword_1E487F518, sub_1E47E8B74);
      sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage, &unk_1E487F610);
      v39 = v68;
      sub_1E487803C();
      sub_1E47E8DB8(v8, type metadata accessor for MultiColoredCircleImage);
    }

    sub_1E4773850(v39, v74, &qword_1ECF7CCD8, &qword_1E487F510);
    swift_storeEnumTagMultiPayload();
    sub_1E47E8A8C();
    sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage, &unk_1E487F610);
    v52 = v75;
    sub_1E487803C();
    sub_1E47738B8(v39, &qword_1ECF7CCD8, &qword_1E487F510);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD0, &qword_1E487F508);
    return (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  }

  else
  {
    v40 = (a1 + *(v28 + 64));
    v41 = v40[1];
    if (v41)
    {
      v42 = *v40;
      v43 = v73;
      sub_1E47E8D50(a1, v8 + *(v73 + 20), type metadata accessor for Event);
      *v8 = v42;
      v8[1] = v41;
      *(v8 + v43[6]) = a4;
      v44 = v43[7];
      *(v8 + v44) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      v45 = v43[8];
      *(v8 + v45) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      sub_1E47E8D50(v8, v74, type metadata accessor for MultiColoredCircleImage);
      swift_storeEnumTagMultiPayload();
      sub_1E47E8A8C();
      sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage, &unk_1E487F610);

      v46 = v75;
      sub_1E487803C();
      sub_1E47E8DB8(v8, type metadata accessor for MultiColoredCircleImage);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD0, &qword_1E487F508);
      return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
    }

    else
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD0, &qword_1E487F508);
      v55 = *(*(v54 - 8) + 56);
      v56 = v54;
      v57 = v75;

      return v55(v57, 1, 1, v56);
    }
  }
}

uint64_t sub_1E47E7088@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for AllDayCirclesView(0);
  v3 = v2 - 8;
  v56 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v57 = v4;
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCA0, &qword_1E487F4C8);
  MEMORY[0x1EEE9AC00](v65);
  v55 = (&v48 - v5);
  v6 = sub_1E4877B3C();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCA8, &qword_1E487F4D0);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v48 - v8;
  v9 = type metadata accessor for Event(0);
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCB0, &qword_1E487F4D8);
  MEMORY[0x1EEE9AC00](v61);
  v51 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7D8, &unk_1E487F4E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8B0, &unk_1E487E2C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - v16;
  v60 = sub_1E48783BC();
  v18 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(v3 + 40);
  v21 = sub_1E487842C();
  v23 = v22;
  v25 = v24;
  v26 = sub_1E487838C();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = sub_1E487843C();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  sub_1E48783AC();
  sub_1E487839C();
  v29 = v28;
  sub_1E477A3C8(v21, v23, v25 & 1);

  (*(v18 + 8))(v20, v60);
  v30 = *(v1 + *(v3 + 32));
  if (*(v30 + 16) == 1)
  {
    v31 = v30 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v32 = v50;
    sub_1E47E8D50(v31, v50, type metadata accessor for Event);
    v33 = *(sub_1E47E6150() + 112);

    v34 = v51;
    sub_1E47E6498(v32, 1, v51, v29 * v33);
    sub_1E47E8DB8(v32, type metadata accessor for Event);
    v35 = &qword_1ECF7CCB0;
    v36 = &qword_1E487F4D8;
    sub_1E4773850(v34, v62, &qword_1ECF7CCB0, &qword_1E487F4D8);
    swift_storeEnumTagMultiPayload();
    sub_1E47E894C();
    sub_1E4773680(&qword_1EE2B1020, &qword_1ECF7CCA0, &qword_1E487F4C8, MEMORY[0x1E6981800]);
    sub_1E487803C();
    v37 = v34;
  }

  else
  {
    v38 = v52;
    sub_1E47E6290(v52);
    v39 = sub_1E486AE54(v30, 3, v38);
    (*(v53 + 8))(v38, v54);
    v40 = sub_1E4877F6C();
    v41 = v55;
    *v55 = v40;
    *(v41 + 1) = v29 * -0.5;
    v42 = v41;
    *(v41 + 16) = 0;
    sub_1E4878D2C();
    sub_1E4878D1C();
    sub_1E4878D0C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCB8, &unk_1E487F4F0);
    v66[0] = v39;
    v43 = v58;
    sub_1E47E8D50(v1, v58, type metadata accessor for AllDayCirclesView);
    v44 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_1E47E883C(v43, v46 + v44);
    *(v46 + v45) = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCC0, &qword_1E487F500);
    sub_1E487736C();
    sub_1E4773680(&qword_1ECF7CCC8, &qword_1ECF7CCC0, &qword_1E487F500, MEMORY[0x1E69E6338]);
    sub_1E47E894C();
    sub_1E47E8D08(&qword_1ECF7CCF8, type metadata accessor for Utils.EventWithColor, "\t\\a\n\b3");
    sub_1E487886C();

    v35 = &qword_1ECF7CCA0;
    v36 = &qword_1E487F4C8;
    sub_1E4773850(v42, v62, &qword_1ECF7CCA0, &qword_1E487F4C8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1020, &qword_1ECF7CCA0, &qword_1E487F4C8, MEMORY[0x1E6981800]);
    sub_1E487803C();
    v37 = v42;
  }

  return sub_1E47738B8(v37, v35, v36);
}

uint64_t sub_1E47E796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD00, &qword_1E487F538);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD08, &qword_1E487F540);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for MultiColoredCircleImage(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD8, &qword_1E487F510);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCB0, &qword_1E487F4D8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  sub_1E4878D2C();
  v31 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = type metadata accessor for Event(0);
  if ((*(a1 + *(v18 + 56)) & 0xFE) == 6)
  {
    sub_1E47E8D50(a1, v12 + v10[5], type metadata accessor for Event);
    *v12 = 0xD000000000000017;
    v12[1] = 0x80000001E48A8100;
    *(v12 + v10[6]) = a3;
    v19 = v10[7];
    *(v12 + v19) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v20 = v10[8];
    *(v12 + v20) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    sub_1E47E8D50(v12, v9, type metadata accessor for MultiColoredCircleImage);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCE0, &qword_1E487F518);
    sub_1E47E91B4(&qword_1EE2B1308, &qword_1ECF7CCE0, &qword_1E487F518, sub_1E47E8B74);
    sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage, &unk_1E487F610);
    sub_1E487803C();
    sub_1E47E8DB8(v12, type metadata accessor for MultiColoredCircleImage);
    sub_1E4773850(v14, v6, &qword_1ECF7CCD8, &qword_1E487F510);
    swift_storeEnumTagMultiPayload();
    sub_1E47E8A8C();
    sub_1E487803C();
    sub_1E47738B8(v14, &qword_1ECF7CCD8, &qword_1E487F510);
  }

  else
  {
    v21 = (a1 + *(v18 + 64));
    v22 = v21[1];
    if (!v22)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD0, &qword_1E487F508);
      (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
      goto LABEL_8;
    }

    v23 = *v21;
    sub_1E47E8D50(a1, v12 + v10[5], type metadata accessor for Event);
    *v12 = v23;
    v12[1] = v22;
    *(v12 + v10[6]) = a3;
    v24 = v10[7];
    *(v12 + v24) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v25 = v10[8];
    *(v12 + v25) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    sub_1E47E8D50(v12, v6, type metadata accessor for MultiColoredCircleImage);
    swift_storeEnumTagMultiPayload();
    sub_1E47E8A8C();
    sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage, &unk_1E487F610);

    sub_1E487803C();
    sub_1E47E8DB8(v12, type metadata accessor for MultiColoredCircleImage);
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD0, &qword_1E487F508);
  (*(*(v26 - 8) + 56))(v17, 0, 1, v26);
LABEL_8:
  sub_1E477372C(v17, v32, &qword_1ECF7CCB0, &qword_1E487F4D8);
}

uint64_t sub_1E47E7FF4@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = sub_1E4877B3C();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD20, &qword_1E487F660);
  MEMORY[0x1EEE9AC00](v56);
  v58 = (&v49 - v4);
  v55 = sub_1E487875C();
  v5 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD28, &qword_1E487F668);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v49 - v8;
  v9 = sub_1E487893C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v54 = type metadata accessor for MultiColoredCircleImage(0);
  v16 = v1;
  sub_1E479B4DC(v15);
  sub_1E487891C();
  v17 = sub_1E48788FC();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v18(v15, v9);
  if (v17)
  {

    sub_1E487874C();
    v19 = v55;
    (*(v5 + 104))(v7, *MEMORY[0x1E6981638], v55);
    v20 = sub_1E487878C();

    (*(v5 + 8))(v7, v19);
    sub_1E487889C();
    sub_1E4877BCC();
    *&v61[22] = v74;
    *&v61[38] = v75;
    *&v61[6] = v73;
    *&v71[2] = *v61;
    LOBYTE(v65) = 1;
    v70 = v20;
    *v71 = 1;
    *&v71[18] = *&v61[16];
    *&v71[34] = *&v61[32];
    *&v71[48] = *(&v75 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD38, &qword_1E487F678);
    sub_1E47E91B4(&qword_1EE2B13A8, &qword_1ECF7CD38, &qword_1E487F678, sub_1E47E9238);
    v21 = v53;
    sub_1E48784AC();
    v62[1] = *v71;
    v62[2] = *&v71[16];
    v62[3] = *&v71[32];
    v63 = *&v71[48];
    v62[0] = v70;
    sub_1E47738B8(v62, &qword_1ECF7CD38, &qword_1E487F678);
    v22 = sub_1E487869C();
    KeyPath = swift_getKeyPath();
    v24 = sub_1E487814C();
    sub_1E4877B0C();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v60[80] = 0;
    v33 = sub_1E487889C();
    *&v65 = KeyPath;
    *(&v65 + 1) = v22;
    LOBYTE(v66) = v24;
    *(&v66 + 1) = *v64;
    DWORD1(v66) = *&v64[3];
    *(&v66 + 1) = v26;
    *&v67 = v28;
    *(&v67 + 1) = v30;
    *&v68 = v32;
    BYTE8(v68) = 0;
    *&v69 = v33;
    *(&v69 + 1) = v34;
    v35 = (v21 + *(v57 + 36));
    v36 = v68;
    v35[2] = v67;
    v35[3] = v36;
    v35[4] = v69;
    v37 = v66;
    *v35 = v65;
    v35[1] = v37;
    *&v70 = KeyPath;
    *(&v70 + 1) = v22;
    v71[0] = v24;
    *&v71[4] = *&v64[3];
    *&v71[1] = *v64;
    *&v71[8] = v26;
    *&v71[16] = v28;
    *&v71[24] = v30;
    *&v71[32] = v32;
    v71[40] = 0;
    *&v71[48] = v33;
    v72 = v34;
    sub_1E4773850(&v65, v60, &qword_1ECF7CD48, &qword_1E487F688);
    sub_1E47738B8(&v70, &qword_1ECF7CD48, &qword_1E487F688);
    sub_1E4773850(v21, v58, &qword_1ECF7CD28, &qword_1E487F668);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD30, &qword_1E487F670);
    sub_1E47E908C();
    sub_1E47E91B4(&qword_1EE2B1300, &qword_1ECF7CD30, &qword_1E487F670, sub_1E47E92BC);
    sub_1E487803C();
    return sub_1E47738B8(v21, &qword_1ECF7CD28, &qword_1E487F668);
  }

  else
  {
    v39 = v16;

    sub_1E487874C();
    v40 = v55;
    (*(v5 + 104))(v7, *MEMORY[0x1E6981638], v55);
    v41 = sub_1E487878C();

    (*(v5 + 8))(v7, v40);
    v42 = [objc_opt_self() cuik_systemBackgroundColor];
    v43 = sub_1E48785FC();
    v44 = *(v54 + 20);
    v45 = v50;
    sub_1E479B504(v50);
    v46 = sub_1E4770A7C(v39 + v44, v45);
    (*(v51 + 8))(v45, v52);
    sub_1E487889C();
    sub_1E4877BCC();
    v47 = v58;
    *v58 = v41;
    v47[1] = 0;
    *(v47 + 8) = 1;
    v47[3] = v43;
    v47[4] = v46;
    v48 = *v71;
    *(v47 + 5) = v70;
    *(v47 + 7) = v48;
    *(v47 + 9) = *&v71[16];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD30, &qword_1E487F670);
    sub_1E47E908C();
    sub_1E47E91B4(&qword_1EE2B1300, &qword_1ECF7CD30, &qword_1E487F670, sub_1E47E92BC);
    return sub_1E487803C();
  }
}

uint64_t sub_1E47E883C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllDayCirclesView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47E88A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AllDayCirclesView(0) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E47E796C(a1, a2, v6);
}

unint64_t sub_1E47E894C()
{
  result = qword_1EE2B1150;
  if (!qword_1EE2B1150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CCB0, &qword_1E487F4D8);
    sub_1E47E89D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1150);
  }

  return result;
}

unint64_t sub_1E47E89D0()
{
  result = qword_1EE2B1158;
  if (!qword_1EE2B1158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CCD0, &qword_1E487F508);
    sub_1E47E8A8C();
    sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage, &unk_1E487F610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1158);
  }

  return result;
}

unint64_t sub_1E47E8A8C()
{
  result = qword_1EE2B11D8;
  if (!qword_1EE2B11D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CCD8, &qword_1E487F510);
    sub_1E47E91B4(&qword_1EE2B1308, &qword_1ECF7CCE0, &qword_1E487F518, sub_1E47E8B74);
    sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage, &unk_1E487F610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11D8);
  }

  return result;
}

unint64_t sub_1E47E8B74()
{
  result = qword_1EE2B13D0;
  if (!qword_1EE2B13D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CCE8, &qword_1E487F520);
    sub_1E47E8C2C();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13D0);
  }

  return result;
}

unint64_t sub_1E47E8C2C()
{
  result = qword_1EE2B1508;
  if (!qword_1EE2B1508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CCF0, &unk_1E487F528);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1508);
  }

  return result;
}

uint64_t sub_1E47E8D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E47E8D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47E8DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E47E8E40(uint64_t a1)
{
  type metadata accessor for Event(319);
  if (v1 <= 0x3F)
  {
    sub_1E47E8F54(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
    if (v2 <= 0x3F)
    {
      sub_1E47E8F54(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E47E8F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E47E8FB8()
{
  result = qword_1EE2B1118;
  if (!qword_1EE2B1118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD18, &qword_1E487F608);
    sub_1E47E894C();
    sub_1E4773680(&qword_1EE2B1020, &qword_1ECF7CCA0, &qword_1E487F4C8, MEMORY[0x1E6981800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1118);
  }

  return result;
}

unint64_t sub_1E47E908C()
{
  result = qword_1EE2B1560;
  if (!qword_1EE2B1560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD28, &qword_1E487F668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD38, &qword_1E487F678);
    sub_1E47E91B4(&qword_1EE2B13A8, &qword_1ECF7CD38, &qword_1E487F678, sub_1E47E9238);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B1268, &qword_1ECF7CD48, &qword_1E487F688, MEMORY[0x1E697F938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1560);
  }

  return result;
}

uint64_t sub_1E47E91B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1E47E9238()
{
  result = qword_1EE2B14E0;
  if (!qword_1EE2B14E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD40, &qword_1E487F680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14E0);
  }

  return result;
}

unint64_t sub_1E47E92BC()
{
  result = qword_1EE2B13A0;
  if (!qword_1EE2B13A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD50, &qword_1E487F690);
    sub_1E47E9238();
    sub_1E4773680(&qword_1EE2B10E0, &qword_1ECF7CD58, &qword_1E487F698, MEMORY[0x1E69805F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13A0);
  }

  return result;
}

unint64_t sub_1E47E9374()
{
  result = qword_1EE2B1200;
  if (!qword_1EE2B1200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD60, &unk_1E487F6A0);
    sub_1E47E908C();
    sub_1E47E91B4(&qword_1EE2B1300, &qword_1ECF7CD30, &qword_1E487F670, sub_1E47E92BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1200);
  }

  return result;
}

uint64_t type metadata accessor for WideMultidayEventsView(uint64_t a1)
{
  result = qword_1EE2B2518;
  if (!qword_1EE2B2518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47E94A0(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47E95BC(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E47E95BC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E48783DC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E47E95BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47E963C@<X0>(double *a1@<X8>)
{
  v224 = a1;
  v2 = type metadata accessor for WideReminderView(0);
  v3 = *(v2 - 8);
  v242 = v2;
  v243 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v223 = &v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WideAllDayView(0);
  v244 = *(v5 - 8);
  v245 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v207 = &v207 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7D8, &unk_1E487F4E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v256 = &v207 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8B0, &unk_1E487E2C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v255 = &v207 - v10;
  v254 = sub_1E48783BC();
  v225 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v253 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4877F1C();
  v232 = *(v12 - 8);
  v233 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v231 = &v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD98, &qword_1E487F768);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v216 = &v207 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v215 = &v207 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v247 = &v207 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDA0, &qword_1E487F770);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v220 = &v207 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v218 = (&v207 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v248 = &v207 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDA8, &qword_1E487F778);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v219 = &v207 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v212 = &v207 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v246 = &v207 - v31;
  v32 = type metadata accessor for WideEventDetailsView(0);
  v240 = *(v32 - 8);
  v241 = v32;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v208 = &v207 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v239 = &v207 - v35;
  v252 = sub_1E48782AC();
  v250 = *(v252 - 1);
  MEMORY[0x1EEE9AC00](v252);
  v236 = &v207 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for WideXMoreView(0);
  v38 = (v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v207 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for WideTextHeaderView(0);
  v42 = (v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v207 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for WideMultidayEventsView(0);

  v238 = sub_1E479A9C8(v46);

  v47 = sub_1E487732C();
  v251 = v47;
  v48 = *(v47 - 8);
  v49 = *(v48 + 16);
  v260 = v48 + 16;
  v261 = v49;
  v262 = v1;
  v49(v44, v1, v47);
  v49(&v44[v42[7]], v1, v47);
  *&v44[v42[8]] = swift_getKeyPath();
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v51 = &v44[v42[9]];
  *v51 = KeyPath;
  v51[8] = 0;
  v264 = 0x402A000000000000;
  sub_1E4773794(KeyPath, v52, v53);
  sub_1E4877B6C();
  v54 = &v44[v42[11]];
  *v54 = 0x4D4D202C45454545;
  *(v54 + 1) = 0xEB0000000064204DLL;
  v55 = &v44[v42[12]];
  strcpy(v55, "EEEE, MMMM d");
  v55[13] = 0;
  *(v55 + 7) = -5120;
  v56 = v42[13];
  sub_1E48782EC();
  v57 = sub_1E48781FC();

  v235 = v57;
  *&v44[v56] = v57;
  v58 = v42[14];

  sub_1E48782EC();
  sub_1E487827C();
  v59 = sub_1E487829C();

  *&v44[v58] = v59;
  v234 = v59;
  v60 = v42[15];
  v221 = v44;
  *&v44[v60] = 0x4018000000000000;
  v249 = type metadata accessor for FakeEvents();

  v61 = sub_1E480D21C();
  v258 = v45;
  v62 = v262;
  v63 = v262 + *(v45 + 28);
  v64 = *v63;
  LOBYTE(v59) = *(v63 + 8);
  LODWORD(v257) = v59;
  *&v40[v38[8]] = swift_getKeyPath();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *v40 = v61;
  *(v40 + 1) = v64;
  v40[16] = v59;
  v66 = v38[9];
  swift_retain_n();
  v67 = sub_1E48782BC();
  *&v40[v66] = v67;
  v68 = v38[10];
  v222 = v40;
  *&v40[v68] = 0x4018000000000000;
  v69 = v239;
  v237 = v67;

  sub_1E48781BC();
  v70 = v250;
  v71 = v236;
  v72 = v252;
  (*(v250 + 104))(v236, *MEMORY[0x1E6980EA0], v252);
  v73 = sub_1E48782CC();

  (*(v70 + 8))(v71, v72);
  v236 = v73;

  sub_1E48063E0(v69);
  v74 = v241;
  v75 = v242;
  v261(&v69[v241[5]], v62, v251);
  v230 = type metadata accessor for CellDisplayContext(0);
  swift_storeEnumTagMultiPayload();
  *&v69[v74[6]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v69[v74[7]] = swift_getKeyPath();
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v69[v74[8]] = swift_getKeyPath();
  v228 = v65;
  swift_storeEnumTagMultiPayload();
  v76 = &v69[v74[9]];
  *v76 = v64;
  LOBYTE(v65) = v257;
  v76[8] = v257;
  v210 = *(v240 + 56);
  v211 = v240 + 56;
  v210(v246, 1, 1, v74);
  v217 = *(v244 + 56);
  v217(v248, 1, 1, v245);
  v213 = *(v243 + 56);
  v214 = v243 + 56;
  v213(v247, 1, 1, v75);
  v264 = MEMORY[0x1E69E7CD0];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  inited = swift_initStackObject();
  v226 = xmmword_1E487A7F0;
  *(inited + 16) = xmmword_1E487A7F0;
  v79 = v234;
  *(inited + 32) = v235;
  *(inited + 40) = v79;
  sub_1E47CC0AC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v252 = v77;
  v80 = swift_initStackObject();
  v209 = xmmword_1E487AC40;
  *(v80 + 16) = xmmword_1E487AC40;
  *(v80 + 32) = sub_1E47BDB78();

  v250 = v64;
  if ((v65 & 1) == 0)
  {
    v81 = sub_1E4878DDC();
    v82 = sub_1E48780FC();
    sub_1E4877AAC(v81, &dword_1E475C000, v82, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v83 = v231;
    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v232 + 8))(v83, v233);
  }

  v84 = sub_1E48781CC();

  *(v80 + 40) = v84;
  *(v80 + 48) = sub_1E47BDCDC();
  sub_1E47CC0AC(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  v85 = swift_initStackObject();
  v227 = xmmword_1E487A7E0;
  *(v85 + 16) = xmmword_1E487A7E0;
  *(v85 + 32) = v236;

  sub_1E47CC0AC(v85);
  swift_setDeallocating();
  sub_1E47CC118(v85 + 32);
  v86 = swift_initStackObject();
  *(v86 + 16) = v227;
  *(v86 + 32) = v237;
  v87 = v86 + 32;
  sub_1E47CC0AC(v86);
  swift_setDeallocating();
  sub_1E47CC118(v87);
  v88 = v251;
  v89 = v261;
  v90 = v238;
  if (v238)
  {
    v91 = sub_1E480D21C();
    v92 = v245;
    v93 = v218;
    v89(v218 + v245[5], v262, v88);
    swift_storeEnumTagMultiPayload();
    *(v93 + v92[6]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v93 + v92[7]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v93 + v92[8]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *v93 = v91;
    v94 = v93 + v92[9];
    *v94 = v250;
    v94[8] = v257;
    v217(v93, 0, 1, v92);

    v95 = v248;
    sub_1E47CC250(v93, v248, &qword_1ECF7CDA0, &qword_1E487F770);
    v96 = v95;
    v97 = v92;
    v98 = v220;
    sub_1E4773850(v96, v220, &qword_1ECF7CDA0, &qword_1E487F770);
    if ((*(v244 + 48))(v98, 1, v92) == 1)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v99 = swift_initStackObject();
    *(v99 + 16) = v226;
    *(v99 + 32) = sub_1E47A9F70();
    v100 = *(v98 + v97[9] + 8);

    if ((v100 & 1) == 0)
    {
      v101 = sub_1E4878DDC();
      v102 = sub_1E48780FC();
      sub_1E4877AAC(v101, &dword_1E475C000, v102, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v98 = v220;
      v103 = v231;
      sub_1E4877F0C();
      swift_getAtKeyPath();

      (*(v232 + 8))(v103, v233);
    }

    v104 = sub_1E48781CC();

    *(v99 + 40) = v104;
    sub_1E47EBB40(v98, type metadata accessor for WideAllDayView);
    sub_1E47CC0AC(v99);
    swift_setDeallocating();
    swift_arrayDestroy();
    v75 = v242;
    v90 = v238;
    v89 = v261;
  }

  if ((v90 & 0x100000000) == 0)
  {
    goto LABEL_13;
  }

  v105 = v215;
  sub_1E48060FC(v215);
  v89(&v105[v75[5]], v262, v88);
  swift_storeEnumTagMultiPayload();
  *&v105[v75[6]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v105[v75[7]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v105[v75[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v105[v75[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v106 = &v105[v75[9]];
  *v106 = v250;
  v106[8] = v257;
  v213(v105, 0, 1, v75);

  v107 = v105;
  v108 = v247;
  sub_1E47CC250(v107, v247, &qword_1ECF7CD98, &qword_1E487F768);
  v109 = v216;
  sub_1E4773850(v108, v216, &qword_1ECF7CD98, &qword_1E487F768);
  if ((*(v243 + 48))(v109, 1, v75) == 1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v110 = swift_initStackObject();
  *(v110 + 16) = v226;
  v111 = *(v109 + v75[9] + 8);

  if ((v111 & 1) == 0)
  {
    v112 = sub_1E4878DDC();
    v113 = sub_1E48780FC();
    sub_1E4877AAC(v112, &dword_1E475C000, v113, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v114 = v231;
    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v232 + 8))(v114, v233);
  }

  v115 = sub_1E48781CC();

  *(v110 + 32) = v115;
  *(v110 + 40) = sub_1E4833A10();
  sub_1E47EBB40(v109, type metadata accessor for WideReminderView);
  sub_1E47CC0AC(v110);
  swift_setDeallocating();
  swift_arrayDestroy();
  LOWORD(v90) = v238;
LABEL_13:
  if ((v90 & 0x100) == 0)
  {
    goto LABEL_18;
  }

  v116 = v212;
  sub_1E48060F4(v212);
  v117 = v241;
  v89(&v116[v241[5]], v262, v88);
  swift_storeEnumTagMultiPayload();
  *&v116[v117[6]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v116[v117[7]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v116[v117[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v118 = &v116[v117[9]];
  *v118 = v250;
  v118[8] = v257;
  v210(v116, 0, 1, v117);

  v119 = v116;
  v120 = v246;
  sub_1E47CC250(v119, v246, &qword_1ECF7CDA8, &qword_1E487F778);
  v121 = v219;
  sub_1E4773850(v120, v219, &qword_1ECF7CDA8, &qword_1E487F778);
  if ((*(v240 + 48))(v121, 1, v117) == 1)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    result = sub_1E487912C();
    __break(1u);
    return result;
  }

  v122 = swift_initStackObject();
  *(v122 + 16) = v209;
  *(v122 + 32) = sub_1E47BDB78();
  v123 = *(v121 + v117[9] + 8);

  if ((v123 & 1) == 0)
  {
    v124 = sub_1E4878DDC();
    v125 = sub_1E48780FC();
    sub_1E4877AAC(v124, &dword_1E475C000, v125, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v121 = v219;
    v126 = v231;
    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v232 + 8))(v126, v233);
  }

  v127 = sub_1E48781CC();

  *(v122 + 40) = v127;
  *(v122 + 48) = sub_1E47BDCDC();
  sub_1E47EBB40(v121, type metadata accessor for WideEventDetailsView);
  sub_1E47CC0AC(v122);
  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_18:
  v128 = 0;
  v252 = "w from model: %@";
  v130 = v264 + 56;
  v129 = *(v264 + 56);
  v257 = v264;
  v131 = 1 << *(v264 + 32);
  v132 = -1;
  if (v131 < 64)
  {
    v132 = ~(-1 << v131);
  }

  v133 = v132 & v129;
  v134 = (v131 + 63) >> 6;
  v251 = (v225 + 8);
  v135 = MEMORY[0x1E69E7CC8];
  v249 = v134;
  v250 = v264 + 56;
  while (v133)
  {
    v261 = v135;
    v136 = v128;
LABEL_29:
    v137 = *(*(v257 + 48) + ((v136 << 9) | (8 * __clz(__rbit64(v133)))));
    v260 = *(v258 + 32);
    swift_retain_n();
    v138 = sub_1E487842C();
    v140 = v139;
    v142 = v141;
    v259 = v143;

    v144 = sub_1E487838C();
    (*(*(v144 - 8) + 56))(v255, 1, 1, v144);
    v145 = sub_1E487843C();
    (*(*(v145 - 8) + 56))(v256, 1, 1, v145);
    v146 = v253;
    sub_1E48783AC();
    sub_1E487839C();
    v148 = v147;
    sub_1E477A3C8(v138, v140, v142 & 1);

    (*v251)(v146, v254);
    v149 = v261;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v263 = v149;
    v151 = sub_1E481DCC4(v137);
    v153 = v149[2];
    v154 = (v152 & 1) == 0;
    v155 = __OFADD__(v153, v154);
    v156 = v153 + v154;
    if (v155)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v157 = v152;
    if (v149[3] >= v156)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v161 = v151;
        sub_1E4861D9C();
        v151 = v161;
      }
    }

    else
    {
      sub_1E4861524(v156, isUniquelyReferenced_nonNull_native);
      v151 = sub_1E481DCC4(v137);
      if ((v157 & 1) != (v158 & 1))
      {
        goto LABEL_61;
      }
    }

    v133 &= v133 - 1;
    v135 = v263;
    if (v157)
    {
      *(v263[7] + 8 * v151) = v148;
    }

    else
    {
      v263[(v151 >> 6) + 8] |= 1 << v151;
      *(v135[6] + 8 * v151) = v137;
      *(v135[7] + 8 * v151) = v148;
      v159 = v135[2];
      v155 = __OFADD__(v159, 1);
      v160 = v159 + 1;
      if (v155)
      {
        goto LABEL_57;
      }

      v135[2] = v160;
    }

    v128 = v136;
    v134 = v249;
    v130 = v250;
  }

  while (1)
  {
    v136 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v136 >= v134)
    {
      break;
    }

    v133 = *(v130 + 8 * v136);
    ++v128;
    if (v133)
    {
      v261 = v135;
      goto LABEL_29;
    }
  }

  sub_1E487201C(v235, v135);
  v163 = v162;
  sub_1E487201C(v234, v135);
  v165 = v164;
  v166 = 0.0;
  v167 = 0.0;
  if (!(*(v244 + 48))(v248, 1, v245))
  {
    v168 = v207;
    sub_1E47EBAD8(v248, v207, type metadata accessor for WideAllDayView);
    v167 = sub_1E47ABBAC(v135);
    sub_1E47EBB40(v168, type metadata accessor for WideAllDayView);
  }

  v169 = v242;
  v170 = v247;
  v171 = (*(v243 + 48))(v247, 1, v242);
  v172 = v223;
  v173 = v239;
  if (!v171)
  {
    sub_1E47EBAD8(v170, v223, type metadata accessor for WideReminderView);
    v174 = v172 + v169[9];
    v175 = *v174;
    v176 = *(v174 + 8);

    if ((v176 & 1) == 0)
    {
      v177 = sub_1E4878DDC();
      v178 = sub_1E48780FC();
      sub_1E4877AAC(v177, &dword_1E475C000, v178, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v179 = v231;
      sub_1E4877F0C();
      swift_getAtKeyPath();

      (*(v232 + 8))(v179, v233);
    }

    v180 = sub_1E48781CC();

    sub_1E487201C(v180, v135);
    v182 = v181;

    v183 = sub_1E4833A10();
    sub_1E487201C(v183, v135);
    v185 = v184;

    if (v182 > v185)
    {
      v186 = v182;
    }

    else
    {
      v186 = v185;
    }

    v187 = v186 + 0.0;

    if ((v176 & 1) == 0)
    {
      v188 = sub_1E4878DDC();
      v189 = sub_1E48780FC();
      sub_1E4877AAC(v188, &dword_1E475C000, v189, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v190 = v231;
      sub_1E4877F0C();
      swift_getAtKeyPath();

      (*(v232 + 8))(v190, v233);
      v175 = v263;
    }

    sub_1E47EBB40(v172, type metadata accessor for WideReminderView);
    v191 = v175[6];

    v166 = v187 + v191 + v191;
    v170 = v247;
    v173 = v239;
  }

  v192 = sub_1E47C3E30(v135);
  v193 = v246;
  v194 = 0.0;
  if (!(*(v240 + 48))(v246, 1, v241))
  {
    v195 = v208;
    sub_1E47EBAD8(v193, v208, type metadata accessor for WideEventDetailsView);
    v196 = sub_1E47C3E30(v135);
    v193 = v246;
    v194 = v196;
    sub_1E47EBB40(v195, type metadata accessor for WideEventDetailsView);
  }

  if (v163 > v165)
  {
    v197 = v163;
  }

  else
  {
    v197 = v165;
  }

  v198 = v197 + 6.0;

  sub_1E487201C(v237, v135);
  v200 = v199;

  v201 = v200 + 6.0;
  sub_1E487201C(v236, v135);
  v203 = v202;

  sub_1E47EBB40(v173, type metadata accessor for WideEventDetailsView);
  sub_1E47EBB40(v222, type metadata accessor for WideXMoreView);
  sub_1E47EBB40(v221, type metadata accessor for WideTextHeaderView);
  v204 = *(v262 + *(v258 + 24));
  sub_1E47738B8(v170, &qword_1ECF7CD98, &qword_1E487F768);
  sub_1E47738B8(v248, &qword_1ECF7CDA0, &qword_1E487F770);
  result = sub_1E47738B8(v193, &qword_1ECF7CDA8, &qword_1E487F778);
  v206 = v224;
  *v224 = v198;
  v206[1] = v167;
  v206[2] = v166;
  v206[3] = v192;
  v206[4] = v194;
  v206[5] = v201;
  v206[6] = v203 + 8.0 + 4.0;
  *(v206 + 7) = v204;
  v206[8] = 4.0;
  return result;
}

uint64_t sub_1E47EB2C8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47E963C(v7);
  *a3 = sub_1E4877FAC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD68, &qword_1E487F718);
  sub_1E47EB3BC(a2, v7, a3 + *(v5 + 44));
}

uint64_t sub_1E47EB3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v35 = a1;
  v4 = sub_1E487732C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD70, &qword_1E487F720);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - v11;
  sub_1E4878D2C();
  v32 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4877BEC();
  v14 = v13;
  v30 = type metadata accessor for WideMultidayLayout();
  v15 = type metadata accessor for WideMultidayEventsView(0);
  v16 = sub_1E484C7BC(*(v35 + *(v15 + 20)), a2, v14);
  v17 = sub_1E4877FBC();
  v18 = *(a2 + 56);
  *v12 = v17;
  *(v12 + 1) = v18;
  v12[16] = 0;
  v31 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD78, &qword_1E487F728) + 44);
  v36 = v16;
  v29[1] = swift_getKeyPath();
  (*(v5 + 16))(v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v5 + 32))(v21 + v19, v7, v4);
  *(v21 + v20) = v30;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v22 + 64) = *(a2 + 64);
  v23 = *(a2 + 48);
  *(v22 + 32) = *(a2 + 32);
  *(v22 + 48) = v23;
  v24 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD80, &qword_1E487F750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD88, &qword_1E487F758);
  sub_1E4773680(&qword_1EE2B0E00, &qword_1ECF7CD80, &qword_1E487F750, MEMORY[0x1E69E6338]);
  sub_1E4773680(&qword_1EE2B0F00, &qword_1ECF7CD88, &qword_1E487F758, MEMORY[0x1E6981868]);
  sub_1E487885C();

  v25 = v33;
  sub_1E4773850(v12, v33, &qword_1ECF7CD70, &qword_1E487F720);
  v26 = v34;
  sub_1E4773850(v25, v34, &qword_1ECF7CD70, &qword_1E487F720);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD90, &qword_1E487F760) + 48);
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_1E47738B8(v12, &qword_1ECF7CD70, &qword_1E487F720);
  sub_1E47738B8(v25, &qword_1ECF7CD70, &qword_1E487F720);
}

uint64_t sub_1E47EB83C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1E47EBAD8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WideMultidayEventsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1E47EB93C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1E47EB9A0;
  a2[1] = v7;
  return result;
}

uint64_t sub_1E47EB93C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WideMultidayEventsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47EB9A0@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for WideMultidayEventsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1E47EB2C8(v5, a2);
}

uint64_t sub_1E47EBA20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E487732C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E484952C(a1, v2 + v6, v7, a2);
}

uint64_t sub_1E47EBAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47EBB40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for IconicDateHeader(uint64_t a1)
{
  result = qword_1EE2B3838;
  if (!qword_1EE2B3838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47EBC14(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47EBD2C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
    if (v2 <= 0x3F)
    {
      sub_1E47EBD2C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
      if (v3 <= 0x3F)
      {
        sub_1E478305C();
        if (v4 <= 0x3F)
        {
          sub_1E47EBD80(319, v4, v5);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E47EBD2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E47EBD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1EE2B1658)
  {
    sub_1E4773794(0, a2, a3);
    v3 = sub_1E4877B8C();
    if (!v4)
    {
      atomic_store(v3, &qword_1EE2B1658);
    }
  }
}

uint64_t sub_1E47EBDF8@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for IconicDateHeader(0);
  sub_1E4773850(v1 + *(v10 + 20), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47EC000@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for IconicDateHeader(0);
  sub_1E4773850(v1 + *(v10 + 24), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47EC208()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for IconicDateHeader(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E47EC360(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v34 - v3;
  v34 = sub_1E487757C();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487753C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v34 - v12);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E47EC000(v13);
  v15 = sub_1E487748C();
  v16 = *(v8 + 8);
  v16(v13, v7);
  [v14 setCalendar_];

  sub_1E47EC000(v13);
  sub_1E487750C();
  v16(v13, v7);
  v17 = sub_1E487756C();
  (*(v4 + 8))(v6, v34);
  [v14 setTimeZone_];

  sub_1E47EC000(v11);
  v18 = v35;
  sub_1E48774EC();
  v16(v11, v7);
  v19 = v18;
  v20 = sub_1E487744C();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v22 = sub_1E48773DC();
    (*(v21 + 8))(v19, v20);
  }

  [v14 setLocale_];

  v23 = sub_1E4878B9C();
  [v14 setLocalizedDateFormatFromTemplate_];

  v24 = sub_1E48772BC();
  v25 = [v14 stringFromDate_];

  v26 = sub_1E4878BDC();
  v28 = v27;

  v38 = v26;
  v39 = v28;
  sub_1E477A374(v29, v30, v31);
  v32 = sub_1E4878E8C();

  return v32;
}

id sub_1E47EC744()
{
  v28 = sub_1E487751C();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1E487753C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v25 - v12);
  v26 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v27 = v0;
  sub_1E47EC000(v13);
  sub_1E48774EC();
  v14 = *(v8 + 8);
  v14(v13, v7);
  v15 = sub_1E487744C();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v6, 1, v15) != 1)
  {
    v17 = sub_1E48773DC();
    (*(v16 + 8))(v6, v15);
  }

  v18 = v26;
  [v26 setLocale_];

  sub_1E47EC000(v11);
  v19 = v28;
  (*(v1 + 104))(v3, *MEMORY[0x1E6969A48], v28);
  v20 = sub_1E487752C();
  (*(v1 + 8))(v3, v19);
  v14(v11, v7);
  v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  result = [v18 stringFromNumber_];
  if (result)
  {
    v23 = result;
    v24 = sub_1E4878BDC();

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E47ECAAC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE70, &qword_1E487F9F0);
  MEMORY[0x1EEE9AC00](v91);
  v73 = &v66 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF50, &qword_1E487FB48);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v66 - v4;
  v71 = sub_1E4877C5C();
  v70 = *(v71 - 8);
  v5 = MEMORY[0x1EEE9AC00](v71);
  v68 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v66 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE48, &qword_1E487F9C8);
  MEMORY[0x1EEE9AC00](v88);
  v72 = &v66 - v8;
  v84 = sub_1E487838C();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v66 - v11;
  v13 = sub_1E487753C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE88, &qword_1E487FA08);
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v66 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE80, &qword_1E487FA00);
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v66 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF58, &qword_1E487FB50);
  v87 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v86 = &v66 - v19;
  v74 = a1;
  v20 = sub_1E47EC360(*(a1 + 3), *(a1 + 4));
  v22 = v21;
  v67 = v20;
  v94 = v20;
  v95 = v21;
  sub_1E477A374(v20, v21, v23);
  v85 = v22;

  v24 = sub_1E487848C();
  v26 = v25;
  LOBYTE(v22) = v27;
  sub_1E47EC000(v16);
  sub_1E48774EC();
  (*(v14 + 8))(v16, v13);
  MEMORY[0x1E6918080](v12);
  sub_1E47738B8(v12, &qword_1ECF7BE58, &unk_1E487DDB0);
  v28 = sub_1E48783FC();
  v30 = v29;
  LOBYTE(v13) = v31;

  sub_1E477A3C8(v24, v26, v22 & 1);

  v32 = v74;
  v33 = sub_1E487842C();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_1E477A3C8(v28, v30, v13 & 1);

  KeyPath = swift_getKeyPath();
  v94 = v33;
  v95 = v35;
  v96 = v37 & 1;
  v75 = v39;
  v97 = v39;
  v98 = KeyPath;
  v99 = 1;
  v100 = 0;
  v101 = *v32;
  v41 = v82;
  if (v101)
  {
    sub_1E487836C();
  }

  else
  {
    sub_1E487837C();
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  v43 = sub_1E477A490();
  v44 = v77;
  sub_1E487851C();
  (*(v83 + 8))(v41, v84);
  sub_1E477A3C8(v33, v35, v37 & 1);

  v94 = v42;
  v95 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v76;
  v47 = v81;
  sub_1E48785DC();
  (*(v79 + 8))(v44, v47);
  v94 = v47;
  v95 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v86;
  v49 = v80;
  sub_1E48784AC();
  (*(v78 + 8))(v46, v49);
  if (v101)
  {

    v50 = v87;
    v51 = v73;
    v52 = v93;
    (*(v87 + 16))(v73, v48, v93);
    *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE78, &qword_1E487F9F8) + 36)) = 257;
    v53 = (v51 + *(v91 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE90, &qword_1E487FA10);
    sub_1E4877CFC();
    *v53 = swift_getKeyPath();
    v54 = &qword_1ECF7CE70;
    v55 = &qword_1E487F9F0;
    sub_1E4773850(v51, v90, &qword_1ECF7CE70, &qword_1E487F9F0);
  }

  else
  {
    v50 = v87;
    v51 = v72;
    (*(v87 + 16))(v72, v48, v93);
    v56 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE58, &qword_1E487F9D8) + 52));
    v57 = v67;
    v58 = v85;
    *v56 = v67;
    v56[1] = v58;

    v59 = v69;
    sub_1E4877C4C();
    v60 = v70;
    v61 = v71;
    (*(v70 + 16))(v68, v59, v71);
    sub_1E47F2C98(&qword_1EE2B1600, MEMORY[0x1E697E468], MEMORY[0x1E697E458]);
    v62 = sub_1E4877BDC();
    (*(v60 + 8))(v59, v61);
    *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE50, &qword_1E487F9D0) + 36)) = v62;
    v63 = sub_1E48788AC();
    v64 = (v51 + *(v88 + 36));
    *v64 = v63;
    v64[1] = v57;
    v52 = v93;
    v64[2] = v58;
    v54 = &qword_1ECF7CE48;
    v55 = &qword_1E487F9C8;
    sub_1E4773850(v51, v90, &qword_1ECF7CE48, &qword_1E487F9C8);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E47F23D0();
  sub_1E47F256C();
  sub_1E487803C();
  sub_1E47738B8(v51, v54, v55);
  return (*(v50 + 8))(v48, v52);
}

uint64_t sub_1E47ED570@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEC8, &qword_1E487FA48);
  MEMORY[0x1EEE9AC00](v82);
  v59 = &v58 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CED0, &qword_1E487FA50);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v58 - v8;
  v9 = sub_1E4877C5C();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v74 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v58 - v12;
  v67 = sub_1E487838C();
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE88, &qword_1E487FA08);
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v15 = &v58 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CED8, &qword_1E487FA58);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v58 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEE0, &qword_1E487FA60);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v58 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEE8, &qword_1E487FA68);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v58 - v18;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEF0, &qword_1E487FA70);
  v19 = MEMORY[0x1EEE9AC00](v72);
  v73 = &v58 - v20;
  v78 = a2;
  v84 = a2;
  v85 = a3;
  sub_1E477A374(v19, v21, v22);
  v81 = a3;

  v23 = sub_1E487848C();
  v25 = v24;
  v27 = v26;
  LODWORD(v84) = sub_1E487807C();
  v28 = sub_1E487840C();
  v30 = v29;
  v32 = v31;
  sub_1E477A3C8(v23, v25, v27 & 1);

  v33 = a1;
  v34 = sub_1E487842C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1E477A3C8(v28, v30, v32 & 1);

  KeyPath = swift_getKeyPath();
  v84 = v34;
  v85 = v36;
  v86 = v38 & 1;
  v87 = v40;
  v88 = KeyPath;
  v89 = 1;
  v90 = 0;
  v91 = *v33;
  v42 = v61;
  if (v91)
  {
    sub_1E487836C();
  }

  else
  {
    sub_1E487837C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487851C();
  (*(v63 + 8))(v42, v67);
  sub_1E477A3C8(v34, v36, v38 & 1);

  v43 = v60;
  (*(v62 + 32))(v60, v15, v65);
  v44 = (v43 + *(v64 + 52));
  v45 = v78;
  v46 = v81;
  *v44 = v78;
  v44[1] = v46;
  sub_1E4773680(&qword_1ECF7CEF8, &qword_1ECF7CED8, &qword_1E487FA58, MEMORY[0x1E6981808]);

  v47 = v69;
  sub_1E48785DC();
  sub_1E47738B8(v43, &qword_1ECF7CED8, &qword_1E487FA58);
  v48 = v75;
  sub_1E4877C4C();
  v50 = v76;
  v49 = v77;
  (*(v76 + 16))(v74, v48, v77);
  sub_1E47F2C98(&qword_1EE2B1600, MEMORY[0x1E697E468], MEMORY[0x1E697E458]);
  v51 = sub_1E4877BDC();
  (*(v50 + 8))(v48, v49);
  v52 = v66;
  (*(v70 + 32))(v66, v47, v71);
  *(v52 + *(v68 + 36)) = v51;
  v53 = sub_1E48788AC();
  v54 = v73;
  sub_1E477372C(v52, v73, &qword_1ECF7CEE8, &qword_1E487FA68);
  v55 = (v54 + *(v72 + 36));
  *v55 = v53;
  v55[1] = v45;
  v55[2] = v46;
  if (v91)
  {
    v56 = v59;
    sub_1E4773850(v54, v59, &qword_1ECF7CEF0, &qword_1E487FA70);
    *(v56 + *(v82 + 36)) = 257;
    sub_1E4773850(v56, v80, &qword_1ECF7CEC8, &qword_1E487FA48);
    swift_storeEnumTagMultiPayload();
    sub_1E47F276C();
    sub_1E47F294C();

    sub_1E487803C();
    sub_1E47738B8(v56, &qword_1ECF7CEC8, &qword_1E487FA48);
  }

  else
  {
    sub_1E4773850(v54, v80, &qword_1ECF7CEF0, &qword_1E487FA70);
    swift_storeEnumTagMultiPayload();
    sub_1E47F276C();
    sub_1E47F294C();

    sub_1E487803C();
  }

  return sub_1E47738B8(v54, &qword_1ECF7CEF0, &qword_1E487FA70);
}

uint64_t sub_1E47EDEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v2 = sub_1E4877CCC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF30, &qword_1E487FAC0);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v47 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF38, &qword_1E487FAC8);
  MEMORY[0x1EEE9AC00](v49);
  v12 = &v47 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF40, &qword_1E487FAD0);
  MEMORY[0x1EEE9AC00](v48);
  v14 = &v47 - v13;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF48, &qword_1E487FAD8);
  MEMORY[0x1EEE9AC00](v50);
  v16 = &v47 - v15;
  sub_1E47EBDF8(v8);
  sub_1E4877CAC();
  sub_1E47F2C98(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v17 = sub_1E4878EAC();
  v18 = *(v3 + 8);
  v18(v6, v2);
  v18(v8, v2);
  if (v17)
  {
    v20 = 0xA300000000000000;
    v21 = 9666786;
  }

  else
  {
    v21 = sub_1E47EC744();
  }

  v55 = v21;
  v56 = v20;
  sub_1E477A374(v21, v20, v19);
  v22 = sub_1E487848C();
  v24 = v23;
  v55 = v22;
  v56 = v23;
  v26 = v25 & 1;
  v57 = v25 & 1;
  v58 = v27;
  v28 = v47;
  sub_1E48784FC();
  sub_1E477A3C8(v22, v24, v26);

  v29 = *(v53 + 8);
  KeyPath = swift_getKeyPath();
  (*(v51 + 32))(v12, v28, v52);
  v31 = &v12[*(v49 + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  v32 = swift_getKeyPath();
  sub_1E477372C(v12, v14, &qword_1ECF7CF38, &qword_1E487FAC8);
  v33 = &v14[*(v48 + 36)];
  *v33 = v32;
  *(v33 + 1) = 1;
  v33[16] = 0;

  LOBYTE(v29) = sub_1E487815C();
  sub_1E4877B0C();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1E477372C(v14, v16, &qword_1ECF7CF40, &qword_1E487FAD0);
  v42 = &v16[*(v50 + 36)];
  *v42 = v29;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE20, &qword_1E487F9A0);
  v44 = v54;
  v45 = (v54 + *(v43 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE90, &qword_1E487FA10);
  sub_1E4877CFC();
  *v45 = swift_getKeyPath();
  return sub_1E477372C(v16, v44, &qword_1ECF7CF48, &qword_1E487FAD8);
}

uint64_t sub_1E47EE384@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v70 = sub_1E48780BC();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDC0, &qword_1E487F908);
  MEMORY[0x1EEE9AC00](v71);
  v67 = (&v55 - v4);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDC8, &qword_1E487F910);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v55 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD0, &qword_1E487F918);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v55 - v6;
  v66 = sub_1E487757C();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E487732C();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E487753C();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD8, &qword_1E487F920);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v55 - v12;
  v57 = sub_1E487740C();
  v13 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E487744C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for IconicDateHeader(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
  sub_1E4877B7C();
  v21 = *v80;
  sub_1E4877B7C();
  v22 = *v80;
  sub_1E4877B7C();
  v64 = v20;
  sub_1E4877B7C();
  v23 = *v80;
  sub_1E48773EC();
  sub_1E487741C();
  (*(v17 + 8))(v19, v16);
  v24 = v56;
  sub_1E48773FC();
  (*(v13 + 8))(v15, v57);
  sub_1E47EC000(v10);
  v25 = v58;
  (*(v59 + 16))(v58, v1, v60);
  sub_1E47F07C0(v24, v10, v25, v80, v21, v22, v23);
  v26 = v80[11];
  v27 = v80[12];
  v28 = v81;
  sub_1E47EC000(v10);
  v29 = v63;
  sub_1E487750C();
  (*(v61 + 8))(v10, v62);
  v30 = sub_1E486E22C(v26, v27, v28);
  v32 = v31;
  v33 = (*(v65 + 8))(v29, v66);
  if (v32)
  {
    v78 = v30;
    v79 = v32;
    sub_1E477A374(v33, v34, v35);
    v30 = sub_1E4878E8C();
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = sub_1E4877F5C();
  v39 = v67;
  *v67 = v38;
  *(v39 + 8) = 0;
  *(v39 + 16) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDE0, &unk_1E487F928);
  sub_1E47EECDC(v80, v30, v37, v2, v39 + *(v40 + 44));

  v41 = v68;
  sub_1E487809C();
  v42 = sub_1E4773680(&qword_1EE2B0FA0, &qword_1ECF7CDC0, &qword_1E487F908, MEMORY[0x1E6981800]);
  v43 = v73;
  v44 = v71;
  sub_1E48785AC();
  (*(v69 + 8))(v41, v70);
  sub_1E47738B8(v39, &qword_1ECF7CDC0, &qword_1E487F908);
  v78 = sub_1E47EC360(*(v2 + *(v64 + 48)), *(v2 + *(v64 + 48) + 8));
  v79 = v45;
  sub_1E477A374(v78, v45, v46);
  v47 = sub_1E487848C();
  v49 = v48;
  v51 = v50;
  v78 = v44;
  v79 = v42;
  swift_getOpaqueTypeConformance2();
  v52 = v72;
  v53 = v76;
  sub_1E487856C();
  sub_1E477A3C8(v47, v49, v51 & 1);

  (*(v75 + 8))(v43, v53);
  sub_1E4877C7C();
  sub_1E47F2274(v80);
  return sub_1E47738B8(v52, &qword_1ECF7CDD0, &qword_1E487F918);
}

uint64_t sub_1E47EECDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v33 = a2;
  v34 = a3;
  v38 = a5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDE8, &qword_1E487F938);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDF0, &qword_1E487F940);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDF8, &qword_1E487F948);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE00, &qword_1E487F950);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  sub_1E4878D2C();
  v37 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    v20 = *(a1 + 80);
    *v7 = sub_1E4877F6C();
    *(v7 + 1) = v20;
    v7[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE08, &qword_1E487F958);
    sub_1E47EFCB8(a1, v36, v33, v34, &v7[*(v21 + 44)]);
    sub_1E4773850(v7, v10, &qword_1ECF7CDE8, &qword_1E487F938);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0ED8, &qword_1ECF7CDF8, &qword_1E487F948, MEMORY[0x1E6981868]);
    sub_1E4773680(&qword_1EE2B0F60, &qword_1ECF7CDE8, &qword_1E487F938, MEMORY[0x1E6981800]);
    sub_1E487803C();
    v22 = v7;
    v23 = &qword_1ECF7CDE8;
    v24 = &qword_1E487F938;
  }

  else
  {
    *v13 = sub_1E4877FBC();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE18, &qword_1E487F998);
    sub_1E47EF238(v33, v34, a1, v36, &v13[*(v25 + 44)]);
    sub_1E4773850(v13, v10, &qword_1ECF7CDF8, &qword_1E487F948);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0ED8, &qword_1ECF7CDF8, &qword_1E487F948, MEMORY[0x1E6981868]);
    sub_1E4773680(&qword_1EE2B0F60, &qword_1ECF7CDE8, &qword_1E487F938, MEMORY[0x1E6981800]);
    sub_1E487803C();
    v22 = v13;
    v23 = &qword_1ECF7CDF8;
    v24 = &qword_1E487F948;
  }

  sub_1E47738B8(v22, v23, v24);
  if (sub_1E47EC208())
  {
    v26 = sub_1E487874C();
    v27 = sub_1E48786BC();
    KeyPath = swift_getKeyPath();

    v29 = 1;
  }

  else
  {
    v29 = 0;
    v26 = 0;
    KeyPath = 0;
    v27 = 0;
  }

  sub_1E4773850(v19, v17, &qword_1ECF7CE00, &qword_1E487F950);
  v30 = v38;
  sub_1E4773850(v17, v38, &qword_1ECF7CE00, &qword_1E487F950);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE10, &qword_1E487F960) + 48));
  sub_1E47F22A4(0, v29, v26, KeyPath, v27);
  sub_1E47F22F4(0, v29, v26, KeyPath, v27);
  *v31 = 0;
  v31[1] = v29;
  v31[2] = v26;
  v31[3] = KeyPath;
  v31[4] = v27;
  sub_1E47738B8(v19, &qword_1ECF7CE00, &qword_1E487F950);
  sub_1E47F22F4(0, v29, v26, KeyPath, v27);
  sub_1E47738B8(v17, &qword_1ECF7CE00, &qword_1E487F950);
}

uint64_t sub_1E47EF238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a4;
  v42 = a5;
  v35 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE20, &qword_1E487F9A0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v35 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE28, &qword_1E487F9A8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE30, &qword_1E487F9B0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE38, &qword_1E487F9B8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE40, &qword_1E487F9C0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v35 - v22;
  sub_1E4878D2C();
  v38 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    v24 = *(a3 + 80);
    *v12 = sub_1E4877F6C();
    *(v12 + 1) = v24;
    v12[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEA0, &qword_1E487FA20);
    sub_1E47EF72C(a3, v35, a2, &v12[*(v25 + 44)]);
    v26 = a3;
    v27 = &qword_1ECF7CE28;
    v28 = &qword_1E487F9A8;
    sub_1E4773850(v12, v15, &qword_1ECF7CE28, &qword_1E487F9A8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0F58, &qword_1ECF7CE28, &qword_1E487F9A8, MEMORY[0x1E6981800]);
    sub_1E47F2344();
    sub_1E487803C();
    v29 = v12;
  }

  else
  {
    sub_1E47ECAAC(a3, v17);
    v26 = a3;
    v27 = &qword_1ECF7CE38;
    v28 = &qword_1E487F9B8;
    sub_1E4773850(v17, v15, &qword_1ECF7CE38, &qword_1E487F9B8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0F58, &qword_1ECF7CE28, &qword_1E487F9A8, MEMORY[0x1E6981800]);
    sub_1E47F2344();
    sub_1E487803C();
    v29 = v17;
  }

  sub_1E47738B8(v29, v27, v28);
  v30 = v39;
  sub_1E47EDEA8(v26, v39);
  sub_1E4773850(v23, v21, &qword_1ECF7CE40, &qword_1E487F9C0);
  v31 = v40;
  sub_1E4773850(v30, v40, &qword_1ECF7CE20, &qword_1E487F9A0);
  v32 = v42;
  sub_1E4773850(v21, v42, &qword_1ECF7CE40, &qword_1E487F9C0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE98, &qword_1E487FA18);
  sub_1E4773850(v31, v32 + *(v33 + 48), &qword_1ECF7CE20, &qword_1E487F9A0);
  sub_1E47738B8(v30, &qword_1ECF7CE20, &qword_1E487F9A0);
  sub_1E47738B8(v23, &qword_1ECF7CE40, &qword_1E487F9C0);
  sub_1E47738B8(v31, &qword_1ECF7CE20, &qword_1E487F9A0);
  sub_1E47738B8(v21, &qword_1ECF7CE40, &qword_1E487F9C0);
}