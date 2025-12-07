uint64_t sub_266CEBBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_266DA947C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &__src[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_266CEDBEC(v3, __src);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  memcpy((v10 + 24), __src, 0x58uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC438, &qword_266DB60A0);
  swift_allocObject();

  sub_266DA97AC();
  if (qword_2800C9130 != -1)
  {
    swift_once();
  }

  v11 = qword_2800C9818;
  sub_266DA946C();
  sub_266C79AF4(&dword_266C08000, v11, "Geocode Labelled Locations", 26, 2, a2);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_266CEBDB8@<X0>(void *a1@<X8>)
{

  return sub_266CEBDF4(v2, a1);
}

uint64_t sub_266CEBDF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  v12 = *(a1 + 16);
  if (v12 == 1)
  {
    sub_266CB7B0C();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {

      sub_266C67C44(v6, v11, type metadata accessor for Location);
      sub_266C67C44(v11, a2, type metadata accessor for Location);
      type metadata accessor for LabeledLocationResult(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_266C1825C(v6, &qword_2800C9B20, &unk_266DB1EC0);
    goto LABEL_8;
  }

  if (v12)
  {
LABEL_8:
    *a2 = a1;
    type metadata accessor for LabeledLocationResult(0);
    return swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for LabeledLocationResult(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_266CEBFC4(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = 0;
  v8 = *result;
  v9 = *(*result + 16);
  v10 = *result + 32;
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v10 + (v7 << 6)); ; i += 4)
  {
    if (v9 == v7)
    {
      *a4 = v11;
      return;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    v13 = *i;
    v14 = i[1];
    v15 = i[3];
    v27 = i[2];
    v28 = v15;
    v25 = v13;
    v26 = v14;
    if (*(&v15 + 1))
    {
      v16 = v28 == a2 && *(&v15 + 1) == a3;
      if (v16 || (sub_266DAB17C() & 1) != 0)
      {
        sub_266CEDD78(&v25, &v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_266C38B98(0, *(v11 + 16) + 1, 1);
          v11 = v29;
        }

        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_266C38B98(v18 > 1, v19 + 1, 1);
          v11 = v29;
        }

        ++v7;
        *(v11 + 16) = v19 + 1;
        v20 = (v11 + (v19 << 6));
        v21 = v25;
        v22 = v26;
        v23 = v28;
        v20[4] = v27;
        v20[5] = v23;
        v20[2] = v21;
        v20[3] = v22;
        goto LABEL_2;
      }
    }

    ++v7;
  }

  __break(1u);
}

void sub_266CEC11C(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_266DAE3B0;
  v6 = *MEMORY[0x277CBD0C8];
  *(v5 + 32) = *MEMORY[0x277CBD0C8];
  v7 = v6;
  v8 = sub_266DAA6FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7C8, &unk_266DB1DB8);
  v9 = sub_266DAA91C();

  *&v45 = 0;
  v10 = [v4 unifiedContactWithIdentifier:v8 keysToFetch:v9 error:&v45];

  if (v10)
  {
    v36 = v4;
    v37 = a1;
    v11 = v45;
    v12 = [v10 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC468, &unk_266DB60B8);
    v13 = sub_266DAA93C();

    v14 = sub_266C3A14C();
    v15 = 0;
    a1 = (v13 & 0xC000000000000001);
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v14 == v15)
      {

        *&v45 = v16;
        BYTE8(v45) = 0;
        v37(&v45);

        return;
      }

      if (a1)
      {
        v17 = MEMORY[0x26D5F1780](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      v4 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_266D9156C(v17, &v45);
      if (*(&v48 + 1) == 1)
      {
        v41 = v45;
        v42 = v46;
        v43 = v47;
        v44 = v48;
        sub_266C1825C(&v41, &qword_2800CC470, &qword_266DB5C80);
        ++v15;
      }

      else
      {
        v41 = v45;
        v42 = v46;
        v43 = v47;
        v44 = v48;
        v35 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266CFA75C(0, v16[2] + 1, 1, v16);
          v16 = v22;
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          sub_266CFA75C(v18 > 1, v19 + 1, 1, v16);
          v16 = v23;
        }

        v39 = v43;
        v40 = v44;
        v20 = v41;
        v38 = v42;
        v16[2] = v19 + 1;
        v21 = &v16[8 * v19];
        v21[4] = v39;
        v21[5] = v40;
        v21[2] = v20;
        v21[3] = v38;
        ++v15;
        v10 = v35;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v45;
  v16 = sub_266DA72FC();

  swift_willThrow();
  if (qword_2800C9320 != -1)
  {
LABEL_23:
    swift_once();
  }

  v25 = sub_266DA94AC();
  __swift_project_value_buffer(v25, qword_2800CC200);
  v26 = v16;
  v27 = sub_266DA948C();
  v28 = sub_266DAAAEC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v45 = v30;
    *v29 = 136315138;
    *&v41 = v16;
    v31 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
    v32 = sub_266DAA72C();
    v34 = sub_266C22A3C(v32, v33, &v45);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_266C08000, v27, v28, "Unexpected error of %s when attempting to fetch contact addresses.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x26D5F2480](v30, -1, -1);
    MEMORY[0x26D5F2480](v29, -1, -1);
  }

  *&v45 = MEMORY[0x277D84F90];
  BYTE8(v45) = 0;
  a1(&v45);
}

uint64_t sub_266CEC5DC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = sub_266DA9FAC();
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_266DAAB7C();
  isa = v61[-1].isa;
  MEMORY[0x28223BE20](v61);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266DAAB6C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_266DA9FDC();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = qword_2800C9320;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_266DA94AC();
    __swift_project_value_buffer(v16, qword_2800CC200);

    v17 = sub_266DA948C();
    v18 = sub_266DAAB0C();
    v19 = os_log_type_enabled(v17, v18);
    v55 = v6;
    v54 = v8;
    v53 = v11;
    v52 = v13;
    v51 = a3;
    if (v19)
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v14;

      _os_log_impl(&dword_266C08000, v17, v18, "Starting to geo code %ld locations.", v20, 0xCu);
      MEMORY[0x26D5F2480](v20, -1, -1);
    }

    else
    {
    }

    sub_266C29814(0, &qword_28156EFC0, 0x277D85C78);
    sub_266DA9FBC();
    *&v69 = MEMORY[0x277D84F90];
    sub_266CEDDE0(&qword_28156EFC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
    sub_266C230E8(&qword_28156EFE8, &qword_2800CC440, &qword_266DAF890, MEMORY[0x277D83970]);
    sub_266DAAD0C();
    isa[13](v56, *MEMORY[0x277D85260], v61);
    v56 = sub_266DAABBC();
    v22 = dispatch_group_create();
    v23 = swift_allocObject();
    *(v23 + 16) = MEMORY[0x277D84F90];
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v25 = (v51 + 32);
    isa = &v64;
    do
    {
      v26 = v25[1];
      v69 = *v25;
      v70 = v26;
      v27 = v25[3];
      v71 = v25[2];
      v72 = v27;
      v28 = *(&v26 + 1);
      v29 = *&v71;
      v30 = BYTE8(v71);
      sub_266CEDD78(&v69, v68);
      dispatch_group_enter(v22);
      v31 = swift_allocObject();
      v31[2] = v23;
      v31[3] = v24;
      v31[4] = v22;
      v32 = objc_allocWithZone(MEMORY[0x277CBFBE8]);

      v61 = v22;
      v33 = [v32 init];
      if (v30)
      {
        v34 = sub_266DAA6FC();
        v35 = swift_allocObject();
        *(v35 + 16) = sub_266CEDE28;
        *(v35 + 24) = v31;
        v36 = v70;
        *(v35 + 32) = v69;
        *(v35 + 48) = v36;
        v37 = v72;
        *(v35 + 64) = v71;
        *(v35 + 80) = v37;
        v66 = sub_266CEDE44;
        v67 = v35;
        aBlock = MEMORY[0x277D85DD0];
        v63 = 1107296256;
        v64 = sub_266CED778;
        v65 = &block_descriptor_2;
        v38 = _Block_copy(&aBlock);
        sub_266CEDD78(&v69, v68);

        [v33 geocodeAddressString:v34 completionHandler:v38];
      }

      else
      {
        v34 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v28 longitude:v29];
        v39 = swift_allocObject();
        *(v39 + 16) = sub_266CEDE28;
        *(v39 + 24) = v31;
        v40 = v70;
        *(v39 + 32) = v69;
        *(v39 + 48) = v40;
        v41 = v72;
        *(v39 + 64) = v71;
        *(v39 + 80) = v41;
        v66 = sub_266CEDFEC;
        v67 = v39;
        aBlock = MEMORY[0x277D85DD0];
        v63 = 1107296256;
        v64 = sub_266CED778;
        v65 = &block_descriptor_47;
        v38 = _Block_copy(&aBlock);
        sub_266CEDD78(&v69, v68);

        [v33 reverseGeocodeLocation:v34 completionHandler:v38];
      }

      sub_266CEDE68(&v69);
      _Block_release(v38);

      v25 += 4;
      --v14;
    }

    while (v14);
    v42 = swift_allocObject();
    v43 = v52;
    v42[2] = sub_266C33CEC;
    v42[3] = v43;
    v42[4] = v24;
    v42[5] = v23;
    v68[4] = sub_266CEDEBC;
    v68[5] = v42;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 1107296256;
    v68[2] = sub_266C73FC4;
    v68[3] = &block_descriptor_40;
    v44 = _Block_copy(v68);

    v45 = v59;
    sub_266DA9FBC();
    aBlock = MEMORY[0x277D84F90];
    sub_266CEDDE0(&qword_28156F010, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
    sub_266C230E8(&qword_28156EFF0, &qword_2800CAA90, &qword_266DB2250, MEMORY[0x277D83970]);
    v46 = v54;
    v47 = v55;
    sub_266DAAD0C();
    v48 = v56;
    v49 = v61;
    sub_266DAAB5C();
    _Block_release(v44);

    (*(v58 + 8))(v46, v47);
    (*(v57 + 8))(v45, v53);
  }

  else
  {

    *&v69 = MEMORY[0x277D84F90];
    BYTE8(v69) = 0;
    return a1(&v69);
  }
}

void sub_266CED000(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for Location(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC450, &qword_266DB60A8);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  sub_266C67BE8(a1, &v17 - v13, &qword_2800CC450, &qword_266DB60A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    sub_266C1825C(v14, &qword_2800CC450, &qword_266DB60A8);
  }

  else
  {
    sub_266C67C44(v14, v11, type metadata accessor for Location);
    swift_beginAccess();
    sub_266C38698();
    v15 = *(*(a2 + 16) + 16);
    sub_266C38724(v15);
    v16 = *(a2 + 16);
    *(v16 + 16) = v15 + 1;
    sub_266CEDF20(v11, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, type metadata accessor for Location);
    *(a2 + 16) = v16;
    swift_endAccess();
    sub_266CEDF7C(v11, type metadata accessor for Location);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_266CED234(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    swift_beginAccess();
    v8 = *(a4 + 16);
  }

  a1(v8, v7);
  return sub_266CD5EB4(v8, v7);
}

id sub_266CED2D0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t (*a5)(uint64_t a1))
{
  v51 = a5;
  v54 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC450, &qword_266DB60A8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  MEMORY[0x28223BE20](v11 - 8);
  v52 = &v45 - v12;
  v13 = type metadata accessor for Location(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_266DA750C();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for Address(0);
  MEMORY[0x28223BE20](v17);
  v53 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 && a1 && sub_266C3A14C())
  {
    sub_266CB9F54();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26D5F1780](0, a1);
    }

    else
    {
      v19 = *(a1 + 32);
    }

    v20 = v19;
    v48 = v8;
    v49 = a4;
    result = [v19 _geoMapItem];
    if (result)
    {
      sub_266DA81BC();
      __swift_project_boxed_opaque_existential_1(&v55, v57);
      sub_266DA7AFC();
      sub_266D80070();
      __swift_destroy_boxed_opaque_existential_0(&v55);
      v50 = v20;
      v22 = [v20 location];
      v23 = 0;
      v24 = 0;
      if (v22)
      {
        v25 = v22;
        [v22 coordinate];
        v24 = v26;
      }

      v27 = [v50 location];
      if (v27)
      {
        v28 = v27;
        [v27 coordinate];
        v23 = v29;
      }

      sub_266DA745C();
      v55 = *v51;
      v56 = *(v51 + 16);
      v30 = LocationLabel.rawValue.getter();
      v46 = v31;
      v47 = v30;
      v51 = type metadata accessor for Address;
      v32 = v52;
      sub_266CEDF20(v53, v52, type metadata accessor for Address);
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v17);
      v33 = v13[8];
      v34 = v13[9];
      v15[v34] = 6;
      v35 = &v15[v33];
      v36 = v13[10];
      v15[v36] = 4;
      v37 = v13[11];
      __swift_storeEnumTagSinglePayload(&v15[v37], 1, 1, v17);
      *v15 = v24;
      *(v15 + 1) = v23;
      __asm { FMOV            V0.2D, #1.0 }

      *(v15 + 1) = _Q0;
      v15[32] = 0;
      v43 = v46;
      *v35 = v47;
      *(v35 + 1) = v43;
      v15[v34] = 6;
      v15[v36] = 4;
      sub_266C60554(v32, &v15[v37]);
      v44 = &v15[v13[12]];
      *v44 = 1701736302;
      *(v44 + 1) = 0xE400000000000000;
      sub_266CEDF20(v15, v10, type metadata accessor for Location);
      swift_storeEnumTagMultiPayload();
      v54(v10);

      sub_266C1825C(v10, &qword_2800CC450, &qword_266DB60A8);
      sub_266CEDF7C(v53, v51);
      return sub_266CEDF7C(v15, type metadata accessor for Location);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *v10 = 1;
    swift_storeEnumTagMultiPayload();
    v54(v10);
    return sub_266C1825C(v10, &qword_2800CC450, &qword_266DB60A8);
  }

  return result;
}

uint64_t sub_266CED778(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_266C29814(0, &qword_2800CC448, 0x277CBFC40);
    v4 = sub_266DAA93C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_266CED868@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC430, qword_266DAF9B0);
  v6 = swift_allocObject();
  v7 = *a1;
  v8 = a1[1];
  v6[1] = xmmword_266DAE4A0;
  v6[2] = v7;
  v9 = a1[2];
  v10 = a1[3];
  v6[3] = v8;
  v6[4] = v9;
  v6[5] = v10;
  sub_266CEDD78(v13, &v12);
  sub_266CEBBE8(v6, a2);
}

uint64_t sub_266CED910(uint64_t *a1)
{
  swift_getKeyPath();

  swift_getAtKeyPath();
}

uint64_t sub_266CED984@<X0>(char *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v32 = *(a1 + 3);
  v33 = v12;
  v31 = a1[32];
  v13 = type metadata accessor for Location(0);
  v14 = v13[7];
  v15 = sub_266DA746C();
  (*(*(v15 - 8) + 16))(a3 + v14, &a1[v14], v15);
  if (v6 == 2)
  {
    v30 = 0x8000000266DC1CA0;
    v16 = 0xD000000000000010;
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    if (a2)
    {
      v17 = 0x7269656874;
    }

    else
    {
      v17 = 31085;
    }

    if (a2)
    {
      v18 = 0xE500000000000000;
    }

    else
    {
      v18 = 0xE200000000000000;
    }

    MEMORY[0x26D5F1170](v17, v18);

    MEMORY[0x26D5F1170](32, 0xE100000000000000);
    MEMORY[0x26D5F1170](0xD000000000000010, 0x8000000266DC1CA0);
    v16 = v34;
    v30 = v35;
  }

  sub_266C67BE8(&a1[v13[11]], v9, &qword_2800CC420, &unk_266DB0480);
  v19 = v13[8];
  v20 = v13[9];
  *(a3 + v20) = 6;
  v21 = (a3 + v19);
  v22 = v9;
  v23 = v13[10];
  *(a3 + v23) = 4;
  v24 = v13[11];
  v25 = type metadata accessor for Address(0);
  __swift_storeEnumTagSinglePayload(a3 + v24, 1, 1, v25);
  *a3 = v10;
  *(a3 + 8) = v11;
  v26 = v32;
  *(a3 + 16) = v33;
  *(a3 + 24) = v26;
  *(a3 + 32) = v31;
  v27 = v30;
  *v21 = v16;
  v21[1] = v27;
  *(a3 + v20) = 6;
  *(a3 + v23) = 4;
  sub_266C60554(v22, a3 + v24);
  v28 = (a3 + v13[12]);
  *v28 = 1701736302;
  v28[1] = 0xE400000000000000;
  type metadata accessor for LabeledLocationResult(0);
  return swift_storeEnumTagMultiPayload();
}

__n128 sub_266CEDC84@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(v2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  result = *a1;
  *(a2 + 24) = *a1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_266CEDD08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC418, &unk_266DB6050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CEDDE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266CEDE34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_33Tm()
{

  sub_266C17E24(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_266CEDE34(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266CEDF20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  v4 = OUTLINED_FUNCTION_4_4();
  v5(v4);
  return a2;
}

uint64_t sub_266CEDF7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_23(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_11_17(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 11;
  *(a1 + 16) = 2;
}

void *OUTLINED_FUNCTION_14_20(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 176), 0x58uLL);
}

unint64_t sub_266CEE04C(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266CEE098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266CEE04C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266CEE0C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C5787C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FindMyConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266CEE1D4()
{
  result = qword_2800CC490;
  if (!qword_2800CC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC490);
  }

  return result;
}

uint64_t sub_266CEE238(uint64_t a1, uint64_t a2)
{
  v4 = sub_266CEE3C4();
  v5 = sub_266CEE418();
  v6 = sub_266CEE46C();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266CEE2B0()
{
  result = qword_2800CC498;
  if (!qword_2800CC498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC4A0, &qword_266DB6128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC498);
  }

  return result;
}

unint64_t sub_266CEE318()
{
  result = qword_2800CC4A8;
  if (!qword_2800CC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC4A8);
  }

  return result;
}

unint64_t sub_266CEE370()
{
  result = qword_2800CC4B0;
  if (!qword_2800CC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC4B0);
  }

  return result;
}

unint64_t sub_266CEE3C4()
{
  result = qword_2800CC4B8;
  if (!qword_2800CC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC4B8);
  }

  return result;
}

unint64_t sub_266CEE418()
{
  result = qword_2800CC4C0;
  if (!qword_2800CC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC4C0);
  }

  return result;
}

unint64_t sub_266CEE46C()
{
  result = qword_2800CC4C8;
  if (!qword_2800CC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC4C8);
  }

  return result;
}

uint64_t type metadata accessor for DeviceOwnerCATsSimple(uint64_t a1)
{
  result = qword_2800CC4D0;
  if (!qword_2800CC4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266CEE54C()
{
  v1 = OUTLINED_FUNCTION_1_37();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266CEE600;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000017, 0x8000000266DC2F50, v2);
}

uint64_t sub_266CEE600(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_266CEE700()
{
  v1 = OUTLINED_FUNCTION_1_37();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266CEEADC;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000025, 0x8000000266DC2F20, v2);
}

uint64_t sub_266CEE808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_266DA926C();
  OUTLINED_FUNCTION_37_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_266CEEA6C(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_266DA91AC();
  (*(v7 + 8))(a2, v3);
  sub_266C2A858(a1);
  return v13;
}

uint64_t sub_266CEE964(uint64_t a1, uint64_t a2)
{
  sub_266DA926C();
  OUTLINED_FUNCTION_37_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_266DA91BC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_266CEEA6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_37()
{

  return swift_task_alloc();
}

uint64_t sub_266CEEB00(uint64_t a1)
{
  sub_266DA905C();
  swift_allocObject();
  sub_266DA904C();
  sub_266DA742C();
  sub_266DA903C();

  v2 = sub_266DA906C();
  v3 = sub_266DA746C();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t sub_266CEEBBC(uint64_t a1)
{
  sub_266DA742C();
  sub_266DA902C();
  sub_266DA90BC();
  swift_allocObject();
  sub_266DA90AC();
  sub_266DA909C();

  v1 = sub_266DA908C();

  return v1;
}

uint64_t sub_266CEEC60(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x26D5F1170](v2, v3);

  MEMORY[0x26D5F1170](0x7473696C702ELL, 0xE600000000000000);

  sub_266DA733C();
}

uint64_t sub_266CEED58(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_266DA7A0C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CEEE18);
}

uint64_t sub_266CEEE18()
{
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, &unk_2800E61A8);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "Falling back to server flow.", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 104))(v5, *MEMORY[0x277D5B8A0], v7);
  sub_266DA7D8C();
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_266CEEFD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C29DCC;

  return sub_266CEED58(a1);
}

uint64_t sub_266CEF070@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }

  sub_266DAB32C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_266CEF284@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v5, v9);
    a1(v12);
    (*(v10 + 8))(v12, v9);
    sub_266DAB32C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a5, v5, *(a2 + 16));
    sub_266DAB32C();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t Result<>.forCompletion(_:)(void (*a1)(_BYTE *), uint64_t a2, void *a3, uint64_t a4)
{
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC4E0, &qword_266DB62F8);
  v6 = a3[3];
  v7 = a3[4];
  v8 = sub_266DAB32C();
  MEMORY[0x28223BE20](v8);
  v18 = a3[2];
  v9 = v18;
  v19 = v6;
  v20 = a4;
  v21 = v7;
  sub_266CEF070(sub_266CEF628, a3, &v12 - v10);
  v14 = v9;
  v15 = v6;
  v16 = a4;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  sub_266CEF284(sub_266CEF764, v8, v22);
  v13(v22);
  return sub_266CEF770(v22);
}

uint64_t sub_266CEF5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 16);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t sub_266CEF634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = sub_266DAB15C();
  if (v9)
  {
    v10 = v9;
    result = (*(v6 + 8))(v8, a2);
  }

  else
  {
    v10 = swift_allocError();
    result = (*(v6 + 32))(v12, v8, a2);
  }

  *a4 = v10;
  return result;
}

uint64_t sub_266CEF770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC4E8, &unk_266DB6300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266CEF7D8()
{
  OUTLINED_FUNCTION_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC648, &qword_266DB6440);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_20_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC650, &qword_266DB6448);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_23_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC658, &unk_266DB6450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B00, &qword_266DAE468);
  OUTLINED_FUNCTION_2_34();
  v4 = sub_266C230E8(v2, &qword_2800CC658, &unk_266DB6450, v3);
  OUTLINED_FUNCTION_17_18(v4, v5, v6, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC668, &unk_266DB6460);
  OUTLINED_FUNCTION_2_37();
  sub_266C230E8(v8, v9, &qword_266DB6440, v10);
  v11 = OUTLINED_FUNCTION_5_30(&qword_2800CC678);
  OUTLINED_FUNCTION_14_21(v11, v12, v13, v14, v15, v11);
  v16 = OUTLINED_FUNCTION_38_6();
  v17(v16);
  OUTLINED_FUNCTION_3_7();
  v20 = sub_266C230E8(v18, &qword_2800CC650, &qword_266DB6448, v19);
  OUTLINED_FUNCTION_28_5(v20);
  v21 = OUTLINED_FUNCTION_24_8();
  v22(v21);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CEF9F0()
{
  OUTLINED_FUNCTION_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC570, &qword_266DB63C8);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_20_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC578, &qword_266DB63D0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_23_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC580, &qword_266DB63D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC588, &qword_266DB63E0);
  OUTLINED_FUNCTION_2_34();
  v4 = sub_266C230E8(v2, &qword_2800CC580, &qword_266DB63D8, v3);
  OUTLINED_FUNCTION_17_18(v4, v5, v6, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC598, &qword_266DB63E8);
  OUTLINED_FUNCTION_2_37();
  sub_266C230E8(v8, v9, &qword_266DB63C8, v10);
  v11 = OUTLINED_FUNCTION_5_30(&qword_2800CC5A8);
  OUTLINED_FUNCTION_14_21(v11, v12, v13, v14, v15, v11);
  v16 = OUTLINED_FUNCTION_38_6();
  v17(v16);
  OUTLINED_FUNCTION_3_7();
  v20 = sub_266C230E8(v18, &qword_2800CC578, &qword_266DB63D0, v19);
  OUTLINED_FUNCTION_28_5(v20);
  v21 = OUTLINED_FUNCTION_24_8();
  v22(v21);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CEFC08()
{
  OUTLINED_FUNCTION_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC688, &qword_266DB6470);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_20_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC690, &qword_266DB6478);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_23_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC698, &unk_266DB6480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCE8, &qword_266DB5388);
  OUTLINED_FUNCTION_2_34();
  v4 = sub_266C230E8(v2, &qword_2800CC698, &unk_266DB6480, v3);
  OUTLINED_FUNCTION_17_18(v4, v5, v6, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6A8, &qword_266DB6490);
  OUTLINED_FUNCTION_2_37();
  sub_266C230E8(v8, v9, &qword_266DB6470, v10);
  v11 = OUTLINED_FUNCTION_5_30(&qword_2800CC6B8);
  OUTLINED_FUNCTION_14_21(v11, v12, v13, v14, v15, v11);
  v16 = OUTLINED_FUNCTION_38_6();
  v17(v16);
  OUTLINED_FUNCTION_3_7();
  v20 = sub_266C230E8(v18, &qword_2800CC690, &qword_266DB6478, v19);
  OUTLINED_FUNCTION_28_5(v20);
  v21 = OUTLINED_FUNCTION_24_8();
  v22(v21);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CEFE20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5E8, &qword_266DB6410);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - v4;
  v12[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5F0, &qword_266DB6418);
  v6 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v8 = v12 - v7;
  v12[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5F8, &qword_266DB6420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC600, &qword_266DB6428);
  sub_266C230E8(&qword_2800CC608, &qword_2800CC5F8, &qword_266DB6420, MEMORY[0x277CBCD90]);
  sub_266DA984C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC610, &qword_266DB6430);
  sub_266C230E8(&qword_2800CC618, &qword_2800CC5E8, &qword_266DB6410, MEMORY[0x277CBCC08]);
  sub_266C230E8(&qword_2800CC620, &qword_2800CC610, &qword_266DB6430, MEMORY[0x277CBCE80]);
  sub_266DA987C();
  (*(v3 + 8))(v5, v2);
  sub_266C230E8(&qword_2800CC628, &qword_2800CC5F0, &qword_266DB6418, MEMORY[0x277CBCC40]);
  v9 = v12[0];
  v10 = sub_266DA97EC();
  (*(v6 + 8))(v8, v9);
  return v10;
}

uint64_t sub_266CF012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = a5;
  v21 = a3;
  v22 = a4;
  v19 = a1;
  v20 = a2;
  v18 = sub_266DAAB7C();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266DAAB6C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_266DA9FDC();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_266C73E6C();
  v17[1] = "FindDeviceSession";
  v17[2] = v11;
  sub_266DA9FBC();
  v24 = MEMORY[0x277D84F90];
  sub_266CEDDE0(&qword_28156EFC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C230E8(&qword_28156EFE8, &qword_2800CC440, &qword_266DAF890, MEMORY[0x277D83970]);
  sub_266DAAD0C();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v18);
  v12 = sub_266DAABBC();
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  v13 = v20;
  *(v5 + 16) = v19;
  *(v5 + 24) = v13;
  v15 = v21;
  v14 = v22;
  *(v5 + 32) = v12;
  *(v5 + 40) = v15;
  *(v5 + 48) = v14;
  *(v5 + 56) = v23;
  return v5;
}

void sub_266CF03CC()
{
  OUTLINED_FUNCTION_6();
  v22 = v1;
  v20 = v2;
  v21 = v3;
  v18 = v4;
  v19 = v5;
  v17 = sub_266DAAB7C();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  v12 = sub_266DAAB6C();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_6();
  v13 = sub_266DA9FDC();
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_0_6();
  sub_266C73E6C();
  sub_266DA9FBC();
  sub_266CEDDE0(&qword_28156EFC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  OUTLINED_FUNCTION_6_8();
  sub_266C230E8(v14, &qword_2800CC440, &qword_266DAF890, v15);
  sub_266DAAD0C();
  (*(v7 + 104))(v11, *MEMORY[0x277D85260], v17);
  v16 = sub_266DAABBC();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 16) = v18;
  *(v0 + 24) = v19;
  *(v0 + 32) = v16;
  *(v0 + 40) = v20;
  *(v0 + 48) = v21;
  *(v0 + 56) = v22;
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CF0640(uint64_t (*a1)(void), uint64_t a2, double a3)
{
  a1(0);
  sub_266DAAB9C();
  return v4;
}

void *sub_266CF06AC(uint64_t a1, double a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  if (v4)
  {
    if (sub_266D40164())
    {
      v5 = qword_2800C9220;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = sub_266DA94AC();
      __swift_project_value_buffer(v6, qword_2800CA9F8);

      v7 = sub_266DA948C();
      v8 = sub_266DAAB0C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v26 = v10;
        *v9 = 136315138;
        v11 = sub_266DAAE0C();
        v13 = v12;

        v14 = sub_266C22A3C(v11, v13, &v26);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_266C08000, v7, v8, "SessionLifetimeManager<%s>: re-using existing instance", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x26D5F2480](v10, -1, -1);
        MEMORY[0x26D5F2480](v9, -1, -1);
      }

      else
      {
      }

      goto LABEL_19;
    }

    v15 = (sub_266D40164() & 1) == 0;
  }

  else
  {
    v15 = 0;
  }

  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v16 = sub_266DA94AC();
  __swift_project_value_buffer(v16, qword_2800CA9F8);

  v17 = sub_266DA948C();
  v18 = sub_266DAAB0C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315394;
    v21 = sub_266DAAE0C();
    v23 = v22;

    v24 = sub_266C22A3C(v21, v23, &v26);

    *(v19 + 4) = v24;
    *(v19 + 12) = 1024;
    *(v19 + 14) = v15;
    _os_log_impl(&dword_266C08000, v17, v18, "SessionLifetimeManager<%s>: creating new instance (existing inactive? %{BOOL}d)", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D5F2480](v20, -1, -1);
    MEMORY[0x26D5F2480](v19, -1, -1);
  }

  else
  {
  }

  (*(a1 + 16))(&v26);
  if (*(a1 + 64))
  {

    sub_266D401B0();
  }

  v4 = v26;
  *(a1 + 64) = v26;

LABEL_19:
  sub_266CF1F1C(&unk_2878634A0, sub_266CF533C, &block_descriptor_47_0, a2);
  return v4;
}

uint64_t sub_266CF0A54@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  swift_beginAccess();
  sub_266CF501C(a1 + 64, __src);
  if (__src[3])
  {
    memcpy(__dst, __src, 0x78uLL);
    if (qword_2800C9220 != -1)
    {
      swift_once();
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_2800CA9F8);

    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      __src[0] = v10;
      *v9 = 136315138;
      v11 = sub_266DAAE0C();
      v13 = v12;

      v14 = sub_266C22A3C(v11, v13, __src);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_266C08000, v7, v8, "SessionLifetimeManager<%s>: re-using existing instance", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D5F2480](v10, -1, -1);
      MEMORY[0x26D5F2480](v9, -1, -1);
    }

    else
    {
    }

    memcpy(a2, __dst, 0x78uLL);
  }

  else
  {
    sub_266CF508C(__src);
    if (qword_2800C9220 != -1)
    {
      swift_once();
    }

    v15 = sub_266DA94AC();
    __swift_project_value_buffer(v15, qword_2800CA9F8);

    v16 = sub_266DA948C();
    v17 = sub_266DAAB0C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      __dst[0] = v19;
      *v18 = 136315394;
      v20 = sub_266DAAE0C();
      v22 = v21;

      v23 = sub_266C22A3C(v20, v22, __dst);

      *(v18 + 4) = v23;
      *(v18 + 12) = 1024;
      *(v18 + 14) = 0;
      _os_log_impl(&dword_266C08000, v16, v17, "SessionLifetimeManager<%s>: creating new instance (existing inactive? %{BOOL}d)", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D5F2480](v19, -1, -1);
      MEMORY[0x26D5F2480](v18, -1, -1);
    }

    else
    {
    }

    (*(a1 + 16))();
    sub_266CF50F4(a2, __dst);
    swift_beginAccess();
    sub_266CF5150(__dst, a1 + 64);
    swift_endAccess();
  }

  return sub_266CF1F1C(&unk_287863338, sub_266CF51C0, &block_descriptor_3, a3);
}

void *sub_266CF0DF8(uint64_t a1, double a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  if (!v4)
  {
    goto LABEL_9;
  }

  if (sub_266D00F38())
  {
    if (qword_2800C9220 != -1)
    {
      swift_once();
    }

    v5 = sub_266DA94AC();
    __swift_project_value_buffer(v5, qword_2800CA9F8);

    v6 = sub_266DA948C();
    v7 = sub_266DAAB0C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 136315138;
      v10 = sub_266DAAE0C();
      v12 = v11;

      v13 = sub_266C22A3C(v10, v12, &v26);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_266C08000, v6, v7, "SessionLifetimeManager<%s>: re-using existing instance", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x26D5F2480](v9, -1, -1);
      MEMORY[0x26D5F2480](v8, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  if (*(a1 + 64))
  {

    v14 = sub_266D00F38();

    v15 = (v14 & 1) == 0;
  }

  else
  {
LABEL_9:
    v15 = 0;
  }

  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v16 = sub_266DA94AC();
  __swift_project_value_buffer(v16, qword_2800CA9F8);

  v17 = sub_266DA948C();
  v18 = sub_266DAAB0C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315394;
    v21 = sub_266DAAE0C();
    v23 = v22;

    v24 = sub_266C22A3C(v21, v23, &v26);

    *(v19 + 4) = v24;
    *(v19 + 12) = 1024;
    *(v19 + 14) = v15;
    _os_log_impl(&dword_266C08000, v17, v18, "SessionLifetimeManager<%s>: creating new instance (existing inactive? %{BOOL}d)", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D5F2480](v20, -1, -1);
    MEMORY[0x26D5F2480](v19, -1, -1);
  }

  else
  {
  }

  (*(a1 + 16))(&v26);
  if (*(a1 + 64))
  {

    sub_266D00FE4();
  }

  v4 = v26;
  *(a1 + 64) = v26;

LABEL_20:
  sub_266CF1F1C(&unk_287863400, sub_266CF527C, &block_descriptor_32, a2);
  return v4;
}

uint64_t sub_266CF11C0()
{
  v1 = v0;
  v2 = sub_266DA9FAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_266DA9FDC();
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x28223BE20](v6);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v9 = sub_266DA94AC();
  __swift_project_value_buffer(v9, qword_2800CA9F8);

  v10 = sub_266DA948C();
  v11 = sub_266DAAB0C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = sub_266DAAE0C();
    v25 = v5;
    v15 = v2;
    v16 = v3;
    v17 = v14;
    v19 = v18;

    v20 = sub_266C22A3C(v17, v19, aBlock);

    *(v12 + 4) = v20;
    v3 = v16;
    v2 = v15;
    v5 = v25;
    _os_log_impl(&dword_266C08000, v10, v11, "SessionLifetimeManager<%s>: Session invalidate requested", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D5F2480](v13, -1, -1);
    MEMORY[0x26D5F2480](v12, -1, -1);
  }

  else
  {
  }

  aBlock[4] = sub_266CF5378;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266C73FC4;
  aBlock[3] = &block_descriptor_53;
  v21 = _Block_copy(aBlock);

  v22 = v26;
  sub_266DA9FBC();
  v29 = MEMORY[0x277D84F90];
  sub_266CEDDE0(&qword_28156F010, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
  sub_266C230E8(&qword_28156EFF0, &qword_2800CAA90, &qword_266DB2250, MEMORY[0x277D83970]);
  sub_266DAAD0C();
  MEMORY[0x26D5F1510](0, v22, v5, v21);
  _Block_release(v21);
  (*(v3 + 8))(v5, v2);
  (*(v28 + 8))(v22, v27);
}

void sub_266CF15C8()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = sub_266DA9FAC();
  OUTLINED_FUNCTION_0_2();
  v39 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  sub_266DA9FDC();
  OUTLINED_FUNCTION_0_2();
  v37 = v13;
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_6();
  v16 = v15 - v14;
  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v17 = sub_266DA94AC();
  __swift_project_value_buffer(v17, qword_2800CA9F8);

  v18 = sub_266DA948C();
  v19 = sub_266DAAB0C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v4;
    v21 = swift_slowAlloc();
    v40[0] = v21;
    *v20 = 136315138;
    v22 = sub_266DAAE0C();
    v36 = v16;
    v23 = v11;
    v24 = v6;
    v25 = v2;
    v27 = v26;

    v28 = sub_266C22A3C(v22, v27, v40);
    v2 = v25;
    v6 = v24;
    v11 = v23;
    v16 = v36;

    *(v20 + 4) = v28;
    _os_log_impl(&dword_266C08000, v18, v19, "SessionLifetimeManager<%s>: Session invalidate requested", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v29 = v21;
    v4 = v35;
    MEMORY[0x26D5F2480](v29, -1, -1);
    MEMORY[0x26D5F2480](v20, -1, -1);
  }

  else
  {
  }

  v40[4] = v4;
  v40[5] = v5;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 1107296256;
  v40[2] = sub_266C73FC4;
  v40[3] = v2;
  v30 = _Block_copy(v40);

  sub_266DA9FBC();
  OUTLINED_FUNCTION_19_13();
  sub_266CEDDE0(v31, v32, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
  OUTLINED_FUNCTION_6_8();
  sub_266C230E8(v33, &qword_2800CAA90, &qword_266DB2250, v34);
  sub_266DAAD0C();
  MEMORY[0x26D5F1510](0, v16, v11, v30);
  _Block_release(v30);
  (*(v39 + 8))(v11, v6);
  (*(v37 + 8))(v16, v38);

  OUTLINED_FUNCTION_5();
}

void sub_266CF1974(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 72);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 72) = 0;

  swift_beginAccess();
  if (*(a1 + 64))
  {

    sub_266D401B0();
  }

  *(a1 + 64) = 0;

  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800CA9F8);

  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_266DAAE0C();
    v11 = v10;

    v12 = sub_266C22A3C(v9, v11, &v13);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_266C08000, v5, v6, "SessionLifetimeManager<%s>: Session invalidated", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  else
  {
  }
}

void sub_266CF1B58(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 184);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 184) = 0;

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  swift_beginAccess();
  sub_266CF5150(v13, a1 + 64);
  swift_endAccess();
  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800CA9F8);

  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v13[0] = v8;
    *v7 = 136315138;
    v9 = sub_266DAAE0C();
    v11 = v10;

    v12 = sub_266C22A3C(v9, v11, v13);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_266C08000, v5, v6, "SessionLifetimeManager<%s>: Session invalidated", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  else
  {
  }
}

void sub_266CF1D38(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 72);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 72) = 0;

  swift_beginAccess();
  if (*(a1 + 64))
  {

    sub_266D00FE4();
  }

  *(a1 + 64) = 0;

  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800CA9F8);

  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_266DAAE0C();
    v11 = v10;

    v12 = sub_266C22A3C(v9, v11, &v13);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_266C08000, v5, v6, "SessionLifetimeManager<%s>: Session invalidated", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_266CF1F1C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_266DA9FAC();
  OUTLINED_FUNCTION_0_2();
  v29 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v13 = v12 - v11;
  v28 = sub_266DA9FDC();
  OUTLINED_FUNCTION_0_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  v19 = v18 - v17;
  sub_266C73E6C();
  v20 = sub_266DAAB8C();
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = a4;
  aBlock[4] = a2;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266C73FC4;
  aBlock[3] = a3;
  v22 = _Block_copy(aBlock);

  sub_266DA9FBC();
  aBlock[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_19_13();
  sub_266CEDDE0(v23, v24, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
  OUTLINED_FUNCTION_6_8();
  sub_266C230E8(v25, &qword_2800CAA90, &qword_266DB2250, v26);
  sub_266DAAD0C();
  MEMORY[0x26D5F1510](0, v19, v13, v22);
  _Block_release(v22);

  (*(v29 + 8))(v13, v8);
  return (*(v15 + 8))(v19, v28);
}

void sub_266CF21BC(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  v9[4] = sub_266CF51F0;
  v9[5] = a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_266C5D6BC;
  v9[3] = &block_descriptor_20;
  v5 = _Block_copy(v9);

  v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v5 block:a2];
  _Block_release(v5);
  v7 = *(a1 + 184);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(a1 + 184);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 184) = v6;
}

void sub_266CF22D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_opt_self();
  v13[4] = a2;
  v13[5] = a1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_266C5D6BC;
  v13[3] = a3;
  v9 = _Block_copy(v13);

  v10 = [v8 scheduledTimerWithTimeInterval:0 repeats:v9 block:a4];
  _Block_release(v9);
  v11 = *(a1 + 72);
  if (v11)
  {
    [v11 invalidate];
    v12 = *(a1 + 72);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 72) = v10;
}

uint64_t sub_266CF23E4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC520, &unk_266DB6318);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC630, &qword_266DB6438);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CF2518);
}

uint64_t sub_266CF2518()
{
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_13_15();
  v2(v1);
  v3 = OUTLINED_FUNCTION_22_10(&qword_2800CC638, &qword_2800CC520, &unk_266DB6318);
  OUTLINED_FUNCTION_15_18(v3);
  OUTLINED_FUNCTION_21_13(&qword_2800CC640, &qword_2800CC630, &qword_266DB6438);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 80) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31_5(v4);

  return MEMORY[0x282200308](v6);
}

uint64_t sub_266CF25F8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    (*(v3[8] + 8))(v3[9], v3[7]);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266CF2708()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_35_5();
  v1 = OUTLINED_FUNCTION_39_4();
  v2(v1);

  OUTLINED_FUNCTION_43_4();

  return v3(v0);
}

uint64_t sub_266CF278C()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CF27F4()
{
  OUTLINED_FUNCTION_22_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = type metadata accessor for Location(0);
  v1[5] = OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v1[6] = OUTLINED_FUNCTION_62();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6C8, &unk_266DBE1C0);
  v1[7] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_62();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6D0, &qword_266DB64A0);
  v1[10] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_62();
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266CF2954()
{
  OUTLINED_FUNCTION_34();
  (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
  v1 = OUTLINED_FUNCTION_22_10(&qword_2800CC6D8, &qword_2800CC6C8, &unk_266DBE1C0);
  OUTLINED_FUNCTION_15_18(v1);
  OUTLINED_FUNCTION_21_13(&qword_2800CC6E0, &qword_2800CC6D0, &qword_266DB64A0);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[13] = v2;
  *v2 = v3;
  v2[1] = sub_266CF2A60;
  v4 = v0[6];

  return MEMORY[0x282200308](v4);
}

uint64_t sub_266CF2A60()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266CF2B70()
{
  v1 = v0[6];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v0[4]);
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  if (EnumTagSinglePayload == 1)
  {
    (*(v4 + 8))(v0[12], v0[10]);
    v6 = 1;
  }

  else
  {
    sub_266C234EC(v1, v0[5]);
    (*(v4 + 8))(v3, v5);
    v7 = OUTLINED_FUNCTION_40_3();
    sub_266C234EC(v7, v8);
    v6 = 0;
  }

  __swift_storeEnumTagSinglePayload(v0[2], v6, 1, v0[4]);

  OUTLINED_FUNCTION_28();

  return v9();
}

uint64_t sub_266CF2C90()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CF2D14()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC540, &qword_266DB63A8);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC558, &qword_266DB63C0);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CF2E48);
}

uint64_t sub_266CF2E48()
{
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_13_15();
  v2(v1);
  v3 = OUTLINED_FUNCTION_7_24(&qword_2800CC560, &qword_2800CC540, &qword_266DB63A8);
  OUTLINED_FUNCTION_15_18(v3);
  OUTLINED_FUNCTION_6_25(&qword_2800CC568, &qword_2800CC558, &qword_266DB63C0);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 80) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31_5(v4);

  return MEMORY[0x282200308](v6);
}

uint64_t sub_266CF2F28()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_32_6();
    v8(v7);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266CF3044()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_35_5();
  v1 = OUTLINED_FUNCTION_39_4();
  v2(v1);

  OUTLINED_FUNCTION_43_4();

  return v3(v0);
}

uint64_t sub_266CF30C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC538, &qword_266DB6340);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5D0, &qword_266DB6408);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CF31F8);
}

uint64_t sub_266CF31F8()
{
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_13_15();
  v2(v1);
  v3 = OUTLINED_FUNCTION_7_24(&qword_2800CC5D8, &qword_2800CC538, &qword_266DB6340);
  OUTLINED_FUNCTION_15_18(v3);
  OUTLINED_FUNCTION_6_25(&qword_2800CC5E0, &qword_2800CC5D0, &qword_266DB6408);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 80) = v4;
  *v4 = v5;
  v4[1] = sub_266CF32EC;

  return MEMORY[0x282200308](v0 + 88);
}

uint64_t sub_266CF32EC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_32_6();
    v8(v7);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266CF3408()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_35_5();
  v2 = *(v1 + 88);
  v3 = OUTLINED_FUNCTION_39_4();
  v4(v3);
  *v0 = v2;

  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266CF348C()
{
  OUTLINED_FUNCTION_22_0();
  v1[6] = v2;
  v1[7] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6E8, &qword_266DB64B0);
  v1[8] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[9] = v4;
  v1[10] = OUTLINED_FUNCTION_62();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6F0, &qword_266DB64B8);
  v1[11] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_62();
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266CF3594()
{
  OUTLINED_FUNCTION_34();
  (*(v0[9] + 16))(v0[10], v0[7], v0[8]);
  v1 = OUTLINED_FUNCTION_7_24(&qword_2800CC6F8, &qword_2800CC6E8, &qword_266DB64B0);
  OUTLINED_FUNCTION_15_18(v1);
  OUTLINED_FUNCTION_6_25(&qword_2800CC700, &qword_2800CC6F0, &qword_266DB64B8);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[14] = v2;
  *v2 = v3;
  v2[1] = sub_266CF369C;

  return MEMORY[0x282200308](v0 + 2);
}

uint64_t sub_266CF369C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_32_6();
    v8(v7);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266CF37B8()
{
  OUTLINED_FUNCTION_84();
  v1 = *(v0 + 48);
  v8 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = OUTLINED_FUNCTION_39_4();
  v5(v4);
  *v1 = v8;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;

  OUTLINED_FUNCTION_28();

  return v6();
}

uint64_t sub_266CF3864()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC4F0);
  v1 = __swift_project_value_buffer(v0, qword_2800CC4F0);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t FindDeviceSessionManager.canPingItems.getter()
{
  (*(v0 + 8))(v4, *v0);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 40))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v1 & 1;
}

uint64_t sub_266CF3A5C@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  a2[3] = &type metadata for AceFindDeviceSession;
  a2[4] = &off_287864768;
  *a2 = swift_allocObject();
  return a1(a3);
}

uint64_t sub_266CF3AD4@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 24) = type metadata accessor for FMIPCoreFindDeviceSession();
  *(a2 + 32) = &off_287863D88;
  return a1(a3);
}

uint64_t sub_266CF3B34@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5C8, &qword_266DB6400);
  swift_allocObject();
  sub_266CF03CC();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = sub_266CF522C;
  *(result + 24) = v5;
  *a1 = a2;
  *(a1 + 8) = sub_266CF5258;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_266CF3BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5B8, &qword_266DB63F0);
  swift_allocObject();
  v8 = sub_266CF012C(a1, a2, "FindDeviceSession", 17, 2);
  result = swift_allocObject();
  *(result + 16) = sub_266CF4FF0;
  *(result + 24) = v8;
  *a3 = a4;
  *(a3 + 8) = sub_266CF4FF8;
  *(a3 + 16) = result;
  return result;
}

uint64_t FindDeviceSessionManager.search(query:)()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 104) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC520, &unk_266DB6318);
  *(v1 + 112) = v3;
  OUTLINED_FUNCTION_11_3(v3);
  *(v1 + 120) = v4;
  *(v1 + 128) = OUTLINED_FUNCTION_62();
  *(v1 + 136) = *v0;
  *(v1 + 144) = *(v0 + 8);
  v5 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266CF3D7C()
{
  OUTLINED_FUNCTION_84();
  (*(v0 + 144))(*(v0 + 136));
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_40_3();
  v2(v1);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_47_4();
  *(v0 + 96) = v3();
  v4 = OUTLINED_FUNCTION_40_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_47_4();
  sub_266C230E8(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_37_5();
  MEMORY[0x26D5F0220](v10);

  v11 = OUTLINED_FUNCTION_1_37();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_266CF3EE8;

  return v13();
}

uint64_t sub_266CF3EE8()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[21] = v0;

  if (v0)
  {
    (*(v5[15] + 8))(v5[16], v5[14]);
    v9 = OUTLINED_FUNCTION_14_3();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_39_4();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_0(v5 + 7);
    __swift_destroy_boxed_opaque_existential_0(v5 + 2);
    if (v3)
    {
      v12 = v3;
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_43_4();

    return v13(v12);
  }
}

uint64_t sub_266CF4068()
{
  OUTLINED_FUNCTION_22_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266CF40D8()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC540, &qword_266DB63A8);
  *(v1 + 120) = v4;
  OUTLINED_FUNCTION_11_3(v4);
  *(v1 + 128) = v5;
  *(v1 + 136) = OUTLINED_FUNCTION_62();
  *(v1 + 144) = *v0;
  *(v1 + 152) = *(v0 + 8);
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CF4198()
{
  OUTLINED_FUNCTION_84();
  (*(v0 + 152))(*(v0 + 144));
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_36_8();
  v2(v1);
  OUTLINED_FUNCTION_49_5((v0 + 56));
  v3 = OUTLINED_FUNCTION_45_3();
  *(v0 + 96) = v4(v3);
  v5 = OUTLINED_FUNCTION_40_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_47_4();
  sub_266C230E8(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_37_5();
  MEMORY[0x26D5F02C0](v11);

  v12 = OUTLINED_FUNCTION_1_37();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_266CF42F0;

  return v14();
}

uint64_t sub_266CF42F0(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v4 = v3;
  OUTLINED_FUNCTION_10_3();
  *v5 = v4;
  v7 = v6[17];
  v8 = v6[16];
  v9 = v6[15];
  v10 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_0((v4 + 56));
  __swift_destroy_boxed_opaque_existential_0((v4 + 16));
  if (a1 == 1)
  {
    a1 = 0;
  }

  OUTLINED_FUNCTION_43_4();

  return v12(a1);
}

uint64_t FindDeviceSessionManager.playSound(deviceId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(v4 + 8))(v23, *v4);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v9 = OUTLINED_FUNCTION_36_8();
  v10(v9);
  v11 = v22[3];
  v12 = v22[4];
  OUTLINED_FUNCTION_49_5(v22);
  v14 = (*(v13 + 8))(a1, a2, v11, v12);
  v15 = sub_266CEFE20(v14);

  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v22[0] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a3;
  v17[4] = a4;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC528, &qword_266DB6330);
  OUTLINED_FUNCTION_2_34();
  sub_266C230E8(v18, &qword_2800CC528, &qword_266DB6330, v19);
  v20 = sub_266DA986C();

  swift_beginAccess();
  *(v16 + 16) = v20;
}

uint64_t FindDeviceSessionManager.aceProxiedPlaySound(deviceId:)()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  *(v1 + 104) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC538, &qword_266DB6340);
  *(v1 + 128) = v5;
  OUTLINED_FUNCTION_11_3(v5);
  *(v1 + 136) = v6;
  *(v1 + 144) = OUTLINED_FUNCTION_62();
  *(v1 + 152) = *v0;
  *(v1 + 160) = *(v0 + 8);
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266CF4710()
{
  OUTLINED_FUNCTION_84();
  (*(v0 + 160))(*(v0 + 152));
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_36_8();
  v2(v1);
  OUTLINED_FUNCTION_49_5((v0 + 56));
  v3 = OUTLINED_FUNCTION_45_3();
  v5 = v4(v3);
  v6 = sub_266CEFE20(v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 96) = v6;
  v7 = OUTLINED_FUNCTION_40_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_47_4();
  sub_266C230E8(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_37_5();
  MEMORY[0x26D5F02C0](v13);

  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 176) = v14;
  *v14 = v15;
  v14[1] = sub_266CF488C;

  return v17(v0 + 184);
}

uint64_t sub_266CF488C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[16];
  v5 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266CF49CC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 104);
  v2 = *(v0 + 184);
  v3 = (v2 >> 8) & 1;
  if (v2 >> 8 > 0xFE)
  {
    LOBYTE(v2) = 4;
    LOBYTE(v3) = 1;
  }

  *v1 = v2;
  v1[1] = v3;

  OUTLINED_FUNCTION_28();

  return v4();
}

uint64_t sub_266CF4A58@<X0>(uint64_t a1@<X8>)
{
  if (qword_28156F8C8 != -1)
  {
    swift_once();
  }

  v2 = qword_28156FCC0;
  v3 = sub_266DAA6FC();
  LOBYTE(v2) = [v2 BOOLForKey_];

  if (v2)
  {
    if (qword_2800C9328 != -1)
    {
      swift_once();
    }

    v4 = sub_266DA94AC();
    __swift_project_value_buffer(v4, qword_2800CC4F0);
    v5 = sub_266DA948C();
    v6 = sub_266DAAB0C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_266C08000, v5, v6, "ForceFindDeviceOnAce is enabled, creating Ace-based session manager.", v7, 2u);
      MEMORY[0x26D5F2480](v7, -1, -1);
    }

    return sub_266CF3BF8(sub_266CF4C50, 0, a1, 15.0);
  }

  else
  {

    return sub_266CF3B34(a1, 15.0);
  }
}

uint64_t sub_266CF4C1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FMIPCoreFindDeviceSession();
  result = sub_266D00468();
  *a1 = result;
  return result;
}

uint64_t static FindDeviceSessionManager.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_2800C9330 != -1)
  {
    swift_once();
  }

  v3 = qword_2800CC510;
  v2 = unk_2800CC518;
  *a1 = qword_2800CC508;
  a1[1] = v3;
  a1[2] = v2;
}

uint64_t sub_266CF4D3C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D68, &qword_266DAF2F0);
  return sub_266DA977C();
}

uint64_t sub_266CF4DB0(char a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  *(&v7 - v5) = a1;
  swift_storeEnumTagMultiPayload();
  return sub_266DA977C();
}

void *sub_266CF4EF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = sub_266CF06AC(a1, a3);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266CF4F20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C23634();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

void *sub_266CF4F90@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = sub_266CF0DF8(a1, a3);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266CF501C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5C0, &qword_266DB63F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CF508C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5C0, &qword_266DB63F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266CF5150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5C0, &qword_266DB63F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266CF522C@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = sub_266CF3A0C(a2);
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_30(unint64_t *a1)
{
  v4 = MEMORY[0x277CBCE80];

  return sub_266C230E8(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_6_25(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CBCDD0];

  return sub_266C230E8(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_7_24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CBCDE0];

  return sub_266C230E8(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_14_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_266DA987C();
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t a1)
{

  return MEMORY[0x282200510](v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_266DA984C();
}

uint64_t OUTLINED_FUNCTION_21_13(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CBCE50];

  return sub_266C230E8(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_22_10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CBCE58];

  return sub_266C230E8(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_28_5(uint64_t a1)
{

  return sub_266DA97EC();
}

uint64_t sub_266CF5674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266CF5964;

  return MEMORY[0x2821B9FC0](a1, a2, a3);
}

uint64_t sub_266CF5728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266CF5964;

  return MEMORY[0x2821B9FB0](a1, a2, a3);
}

uint64_t sub_266CF57DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266C29DCC;

  return MEMORY[0x2821B9FA8](a1, a2, a3, a4);
}

uint64_t sub_266CF58A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266CF5964;

  return MEMORY[0x2821B9FB8](a1, a2, a3, a4);
}

uint64_t sub_266CF5968()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC708);
  v1 = __swift_project_value_buffer(v0, qword_2800CC708);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CF5A44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636167656CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x76697463616F7270 && a2 == 0xE900000000000065;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702259052 && a2 == 0xE400000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656977657473 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_266DAB17C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266CF5BA4(char a1)
{
  result = 0x79636167656CLL;
  switch(a1)
  {
    case 1:
      result = 0x76697463616F7270;
      break;
    case 2:
      result = 1702259052;
      break;
    case 3:
      result = 0x656977657473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266CF5C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CF5A44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CF5C48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266CF5B9C();
  *a1 = result;
  return result;
}

uint64_t sub_266CF5C70(uint64_t a1)
{
  v2 = sub_266CF6284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF5CAC(uint64_t a1)
{
  v2 = sub_266CF6284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266CF5CE8(uint64_t a1)
{
  v2 = sub_266CF63D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF5D24(uint64_t a1)
{
  v2 = sub_266CF63D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266CF5D60(uint64_t a1)
{
  v2 = sub_266CF632C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF5D9C(uint64_t a1)
{
  v2 = sub_266CF632C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266CF5DD8(uint64_t a1)
{
  v2 = sub_266CF6380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF5E14(uint64_t a1)
{
  v2 = sub_266CF6380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266CF5E50(uint64_t a1)
{
  v2 = sub_266CF62D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF5E8C(uint64_t a1)
{
  v2 = sub_266CF62D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationSource.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC720, &qword_266DB6550);
  OUTLINED_FUNCTION_0_2();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10();
  v39 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC728, &qword_266DB6558);
  OUTLINED_FUNCTION_0_2();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  v36 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC730, &qword_266DB6560);
  OUTLINED_FUNCTION_0_2();
  v34 = v12;
  v35 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC738, &qword_266DB6568);
  OUTLINED_FUNCTION_0_2();
  v31 = v16;
  v32 = v15;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC740, &qword_266DB6570);
  OUTLINED_FUNCTION_0_2();
  v22 = v21;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CF6284();
  sub_266DAB36C();
  switch(v26)
  {
    case 1:
      v43 = 1;
      sub_266CF6380();
      v27 = v33;
      OUTLINED_FUNCTION_4_32(&type metadata for LocationSource.ProactiveCodingKeys, &v43);
      v29 = v34;
      v28 = v35;
      goto LABEL_6;
    case 2:
      v44 = 2;
      sub_266CF632C();
      v27 = v36;
      OUTLINED_FUNCTION_4_32(&type metadata for LocationSource.LiveCodingKeys, &v44);
      v29 = v37;
      v28 = v38;
      goto LABEL_6;
    case 3:
      v45 = 3;
      sub_266CF62D8();
      v27 = v39;
      OUTLINED_FUNCTION_4_32(&type metadata for LocationSource.StewieCodingKeys, &v45);
      v29 = v40;
      v28 = v41;
LABEL_6:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_266CF63D4();
      sub_266DAB08C();
      (*(v31 + 8))(v19, v32);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

unint64_t sub_266CF6284()
{
  result = qword_2800CC748;
  if (!qword_2800CC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC748);
  }

  return result;
}

unint64_t sub_266CF62D8()
{
  result = qword_2800CC750;
  if (!qword_2800CC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC750);
  }

  return result;
}

unint64_t sub_266CF632C()
{
  result = qword_2800CC758;
  if (!qword_2800CC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC758);
  }

  return result;
}

unint64_t sub_266CF6380()
{
  result = qword_2800CC760;
  if (!qword_2800CC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC760);
  }

  return result;
}

unint64_t sub_266CF63D4()
{
  result = qword_2800CC768;
  if (!qword_2800CC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC768);
  }

  return result;
}

uint64_t LocationSource.hashValue.getter()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

uint64_t LocationSource.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v64 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC770, &qword_266DB6578);
  OUTLINED_FUNCTION_0_2();
  v63 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  v66 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC778, &qword_266DB6580);
  OUTLINED_FUNCTION_0_2();
  v60 = v7;
  v61 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10();
  v62 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC780, &qword_266DB6588);
  OUTLINED_FUNCTION_0_2();
  v58 = v11;
  v59 = v10;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC788, &qword_266DB6590);
  OUTLINED_FUNCTION_0_2();
  v57 = v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC790, &unk_266DB6598);
  OUTLINED_FUNCTION_0_2();
  v65 = v21;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CF6284();
  v25 = v68;
  sub_266DAB34C();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v54 = v15;
  v55 = v19;
  v56 = v14;
  v26 = v66;
  v27 = v67;
  v68 = a1;
  v28 = v24;
  sub_266DAB06C();
  result = sub_266C1E2FC();
  if (v31 == v32 >> 1)
  {
    goto LABEL_8;
  }

  v53 = 0;
  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return result;
  }

  v33 = *(v30 + v31);
  sub_266C1E2EC();
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  if (v35 != v37 >> 1)
  {
LABEL_8:
    v43 = v65;
    v44 = sub_266DAAE4C();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9908, &qword_266DAD8C0);
    *v46 = &type metadata for LocationSource;
    sub_266DAAFBC();
    sub_266DAAE3C();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v28, v20);
    a1 = v68;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v38 = v64;
  v39 = v65;
  v52 = v33;
  v40 = v33;
  v41 = v63;
  switch(v40)
  {
    case 1:
      v70 = 1;
      sub_266CF6380();
      v47 = v56;
      OUTLINED_FUNCTION_3_32(&type metadata for LocationSource.ProactiveCodingKeys, &v70);
      swift_unknownObjectRelease();
      v49 = v58;
      v48 = v59;
      goto LABEL_18;
    case 2:
      v71[0] = 2;
      sub_266CF632C();
      v47 = v62;
      OUTLINED_FUNCTION_3_32(&type metadata for LocationSource.LiveCodingKeys, v71);
      swift_unknownObjectRelease();
      v49 = v60;
      v48 = v61;
LABEL_18:
      (*(v49 + 8))(v47, v48);
      goto LABEL_19;
    case 3:
      v71[1] = 3;
      sub_266CF62D8();
      v50 = v53;
      sub_266DAAFAC();
      if (v50)
      {
        (*(v39 + 8))(v28, v20);
        swift_unknownObjectRelease();
        a1 = v68;
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      swift_unknownObjectRelease();
      (*(v41 + 8))(v26, v27);
LABEL_19:
      (*(v39 + 8))(v28, v20);
      *v38 = v52;
      result = __swift_destroy_boxed_opaque_existential_0(v68);
      break;
    default:
      v69 = 0;
      sub_266CF63D4();
      v42 = v55;
      OUTLINED_FUNCTION_3_32(&type metadata for LocationSource.LegacyCodingKeys, &v69);
      swift_unknownObjectRelease();
      (*(v57 + 8))(v42, v54);
      goto LABEL_19;
  }

  return result;
}

uint64_t sub_266CF6AD8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_266DA9C4C();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = *(v6 + 16);
  v16(&v41 - v14, a1, v4);
  v17 = (*(v6 + 88))(v15, v4);
  if (v17 == *MEMORY[0x277D07BF8])
  {
    v18 = OUTLINED_FUNCTION_2_38();
    result = v19(v18);
    v21 = 0;
  }

  else if (v17 == *MEMORY[0x277D07BF0])
  {
    v22 = OUTLINED_FUNCTION_2_38();
    result = v23(v22);
    v21 = 1;
  }

  else if (v17 == *MEMORY[0x277D07BE8])
  {
    v24 = OUTLINED_FUNCTION_2_38();
    result = v25(v24);
    v21 = 2;
  }

  else if (v17 == *MEMORY[0x277D07C00])
  {
    v26 = OUTLINED_FUNCTION_2_38();
    result = v27(v26);
    v21 = 3;
  }

  else
  {
    if (qword_2800C9338 != -1)
    {
      swift_once();
    }

    v28 = sub_266DA94AC();
    __swift_project_value_buffer(v28, qword_2800CC708);
    v16(v13, a1, v4);
    v29 = sub_266DA948C();
    v45 = sub_266DAAAEC();
    if (os_log_type_enabled(v29, v45))
    {
      v30 = swift_slowAlloc();
      v43 = v29;
      v31 = v30;
      v44 = swift_slowAlloc();
      v46 = v44;
      *v31 = 136315138;
      v16(v10, v13, v4);
      v42 = sub_266DAA72C();
      v33 = v32;
      v34 = *(v6 + 8);
      v34(v13, v4);
      v35 = sub_266C22A3C(v42, v33, &v46);

      v36 = v31;
      *(v31 + 4) = v35;
      v37 = v43;
      v38 = v36;
      _os_log_impl(&dword_266C08000, v43, v45, "Got unknown FMFLocationSource of %s", v36, 0xCu);
      v39 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x26D5F2480](v39, -1, -1);
      MEMORY[0x26D5F2480](v38, -1, -1);

      v40 = a1;
    }

    else
    {

      v34 = *(v6 + 8);
      v34(a1, v4);
      v40 = v13;
    }

    v34(v40, v4);
    result = (v34)(v15, v4);
    v21 = 4;
  }

  *a2 = v21;
  return result;
}

unint64_t sub_266CF6E94()
{
  result = qword_2800CC798;
  if (!qword_2800CC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC798);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MinimumOSVersions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_266CF6F80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266CF70A0()
{
  result = qword_2800CC7A0;
  if (!qword_2800CC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7A0);
  }

  return result;
}

unint64_t sub_266CF70F8()
{
  result = qword_2800CC7A8;
  if (!qword_2800CC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7A8);
  }

  return result;
}

unint64_t sub_266CF7150()
{
  result = qword_2800CC7B0;
  if (!qword_2800CC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7B0);
  }

  return result;
}

unint64_t sub_266CF71A8()
{
  result = qword_2800CC7B8;
  if (!qword_2800CC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7B8);
  }

  return result;
}

unint64_t sub_266CF7200()
{
  result = qword_2800CC7C0;
  if (!qword_2800CC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7C0);
  }

  return result;
}

unint64_t sub_266CF7258()
{
  result = qword_2800CC7C8;
  if (!qword_2800CC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7C8);
  }

  return result;
}

unint64_t sub_266CF72B0()
{
  result = qword_2800CC7D0;
  if (!qword_2800CC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7D0);
  }

  return result;
}

unint64_t sub_266CF7308()
{
  result = qword_2800CC7D8;
  if (!qword_2800CC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7D8);
  }

  return result;
}

unint64_t sub_266CF7360()
{
  result = qword_2800CC7E0;
  if (!qword_2800CC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7E0);
  }

  return result;
}

unint64_t sub_266CF73B8()
{
  result = qword_2800CC7E8;
  if (!qword_2800CC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7E8);
  }

  return result;
}

unint64_t sub_266CF7410()
{
  result = qword_2800CC7F0;
  if (!qword_2800CC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_32(uint64_t a1, uint64_t a2)
{

  return sub_266DAAFAC();
}

uint64_t OUTLINED_FUNCTION_4_32(uint64_t a1, uint64_t a2)
{

  return sub_266DAB08C();
}

uint64_t sub_266CF74BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (*(a2 + 24))
    {
      return v2;
    }

    v3 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
    if (!v3 || *(a1 + 16) != *(a2 + 16))
    {
      return v2;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (*(a2 + 56))
    {
      return v2;
    }

    v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (!v5 || *(a1 + 48) != *(a2 + 48))
    {
      return v2;
    }
  }

  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (*(a2 + 88))
    {
      return v2;
    }

    v7 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
    if (!v7 || *(a1 + 80) != *(a2 + 80))
    {
      return v2;
    }
  }

  if (*(a1 + 120))
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 120))
    {
      return 0;
    }

    v9 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
    if (!v9 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_266CF75BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 5459817 && a2 == 0xE300000000000000;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x534F63616DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1397716596 && a2 == 0xE400000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x534F6863746177 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_266DAB17C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266CF7710(char a1)
{
  result = 5459817;
  switch(a1)
  {
    case 1:
      result = 0x534F63616DLL;
      break;
    case 2:
      result = 1397716596;
      break;
    case 3:
      result = 0x534F6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266CF7780()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC8C0, &unk_266DB6EE0);
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  OUTLINED_FUNCTION_42_2();
  sub_266CFC258();
  OUTLINED_FUNCTION_25_10();
  sub_266DAB36C();
  v11[0] = *v0;
  *(v11 + 9) = *(v0 + 9);
  v10 = 0;
  type metadata accessor for OperatingSystemVersion(0);
  sub_266CFC2AC(&qword_2800CC8C8, &protocol conformance descriptor for NSOperatingSystemVersion);
  OUTLINED_FUNCTION_11_18();
  if (!v1)
  {
    v11[0] = v0[2];
    *(v11 + 9) = *(v0 + 41);
    v10 = 1;
    OUTLINED_FUNCTION_11_18();
    v11[0] = v0[4];
    *(v11 + 9) = *(v0 + 73);
    v10 = 2;
    OUTLINED_FUNCTION_11_18();
    v11[0] = v0[6];
    *(v11 + 9) = *(v0 + 105);
    v10 = 3;
    OUTLINED_FUNCTION_11_18();
  }

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_266CF7934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC8A8, &qword_266DB6ED8);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CFC258();
  sub_266DAB34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  type metadata accessor for OperatingSystemVersion(0);
  v39 = 0;
  sub_266CFC2AC(&qword_2800CC8B8, &protocol conformance descriptor for NSOperatingSystemVersion);
  OUTLINED_FUNCTION_9_16();
  v30 = *(&v32 + 1);
  v31 = v32;
  v29 = v33;
  v38 = v34;
  v39 = 1;
  OUTLINED_FUNCTION_9_16();
  v27 = *(&v32 + 1);
  v28 = v32;
  v26 = v33;
  v37 = v34;
  v39 = 2;
  OUTLINED_FUNCTION_9_16();
  v24 = *(&v32 + 1);
  v25 = v32;
  v23 = v33;
  v36 = v34;
  v39 = 3;
  OUTLINED_FUNCTION_9_16();
  (*(v7 + 8))(v10, v5);
  v22 = v32;
  v11 = v33;
  v12 = v34;
  v35 = v34;
  v13 = v38;
  v14 = v37;
  v15 = v36;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v17 = v30;
  *a2 = v31;
  *(a2 + 8) = v17;
  v18 = v28;
  *(a2 + 16) = v29;
  *(a2 + 24) = v13;
  v19 = v26;
  v20 = v27;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v19;
  *(a2 + 56) = v14;
  v21 = v24;
  *(a2 + 64) = v25;
  *(a2 + 72) = v21;
  *(a2 + 80) = v23;
  *(a2 + 88) = v15;
  *(a2 + 96) = v22;
  *(a2 + 112) = v11;
  *(a2 + 120) = v12;
  return result;
}

uint64_t sub_266CF7BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CF75BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CF7BDC(uint64_t a1)
{
  v2 = sub_266CFC258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF7C18(uint64_t a1)
{
  v2 = sub_266CFC258();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_266CF7C54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_266CF7934(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x79uLL);
  }

  return result;
}

uint64_t sub_266CF7CBC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a1 >> 62))
  {
    if (a3 >> 62)
    {
      v5 = 0;
LABEL_13:
      v4 = v5 < a3 >> 62;
      return v4 & 1;
    }

LABEL_10:
    v4 = a1 & ~a3;
    return v4 & 1;
  }

  if (a1 >> 62 != 1)
  {
    if (a3 >> 62 != 2)
    {
      v5 = 2;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a3 >> 62 != 1)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if ((a3 ^ a1))
  {
    v4 = a1;
  }

  else
  {
    v4 = a2 < a4;
  }

  return v4 & 1;
}

uint64_t sub_266CF7D30(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1 >> 62;
  v5 = a3 >> 62;
  v6 = a3 ^ a1 ^ 1;
  if (a3 >> 62)
  {
    v6 = 0;
  }

  v7 = (v5 == 1) & ~(a3 ^ a1);
  if (a2 != a4)
  {
    v7 = 0;
  }

  v8 = v5 == 2;
  v9 = a3 ^ a1 ^ 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v4 == 1)
  {
    v9 = v7;
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  return v10 & 1;
}

BOOL sub_266CF7DD0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a3 >> 62))
  {
    if (a1 >> 62)
    {
      v5 = 0;
LABEL_13:
      v4 = v5 < a1 >> 62;
      return (v4 & 1) == 0;
    }

LABEL_10:
    v4 = a3 & ~a1;
    return (v4 & 1) == 0;
  }

  if (a3 >> 62 != 1)
  {
    if (a1 >> 62 != 2)
    {
      v5 = 2;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a1 >> 62 != 1)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if ((a3 ^ a1))
  {
    v4 = a3;
  }

  else
  {
    v4 = a4 < a2;
  }

  return (v4 & 1) == 0;
}

BOOL sub_266CF7E5C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a1 >> 62))
  {
    if (a3 >> 62)
    {
      v5 = 0;
LABEL_13:
      v4 = v5 < a3 >> 62;
      return (v4 & 1) == 0;
    }

LABEL_10:
    v4 = a1 & ~a3;
    return (v4 & 1) == 0;
  }

  if (a1 >> 62 != 1)
  {
    if (a3 >> 62 != 2)
    {
      v5 = 2;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a3 >> 62 != 1)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if ((a3 ^ a1))
  {
    v4 = a1;
  }

  else
  {
    v4 = a2 < a4;
  }

  return (v4 & 1) == 0;
}

uint64_t sub_266CF7EF4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a3 >> 62))
  {
    if (a1 >> 62)
    {
      v5 = 0;
LABEL_13:
      v4 = v5 < a1 >> 62;
      return v4 & 1;
    }

LABEL_10:
    v4 = a3 & ~a1;
    return v4 & 1;
  }

  if (a3 >> 62 != 1)
  {
    if (a1 >> 62 != 2)
    {
      v5 = 2;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a1 >> 62 != 1)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if ((a3 ^ a1))
  {
    v4 = a3;
  }

  else
  {
    v4 = a4 < a2;
  }

  return v4 & 1;
}

uint64_t sub_266CF7FA8(uint64_t result, uint64_t a2)
{
  if (*result == 2)
  {
    if (*a2 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_38_7();
    if (v11 || ((v5 ^ v6) & 1) != 0)
    {
      return v4;
    }
  }

  if (*(result + 1) == 2)
  {
    if (*(a2 + 1) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_38_7();
    if (v11 || ((v7 ^ v8) & 1) != 0)
    {
      return v4;
    }
  }

  v9 = *(result + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *(result + 8) == *(a2 + 8) && v9 == v10;
    if (!v11 && (sub_266DAB17C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(result + 32);
  v13 = *(a2 + 32);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = *(result + 24) == *(a2 + 24) && v12 == v13;
    if (!v14 && (sub_266DAB17C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = *(result + 48);
  v16 = *(a2 + 48);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *(result + 40) == *(a2 + 40) && v15 == v16;
    if (!v17 && (sub_266DAB17C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = *(result + 56);
  v19 = *(a2 + 56);
  if (v18)
  {
    if (!v19 || (sub_266D71FE0(v18, v19) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = *(a2 + 72);
  if (*(result + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 64) != *(a2 + 64))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (*(result + 73) == 2)
  {
    if (*(a2 + 73) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_38_7();
    if (v11 || ((v21 ^ v22) & 1) != 0)
    {
      return v4;
    }
  }

  if (*(result + 74) == 2)
  {
    if (*(a2 + 74) != 2)
    {
      return 0;
    }

    goto LABEL_59;
  }

  v4 = OUTLINED_FUNCTION_38_7();
  if (!v11 && ((v23 ^ v24) & 1) == 0)
  {
LABEL_59:
    v25 = *(result + 88);
    v26 = *(a2 + 88);
    if (v25)
    {
      if (!v26)
      {
        return 0;
      }

      v27 = *(result + 80) == *(a2 + 80) && v25 == v26;
      if (!v27 && (sub_266DAB17C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    v28 = *(result + 96);
    v29 = *(a2 + 96);
    if (v28)
    {
      if (!v29 || (sub_266D71FE0(v28, v29) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    v30 = *(result + 112);
    v31 = *(a2 + 112);
    if (v30)
    {
      if (!v31)
      {
        return 0;
      }

      v32 = *(result + 104) == *(a2 + 104) && v30 == v31;
      if (!v32 && (sub_266DAB17C() & 1) == 0)
      {
        return 0;
      }

LABEL_82:
      memcpy(__dst, (result + 120), 0x7AuLL);
      if (sub_266CFBE34(__dst) == 1)
      {
        memcpy(v33, (a2 + 120), 0x7AuLL);
        if (sub_266CFBE34(v33) != 1)
        {
          return 0;
        }
      }

      else
      {
        memcpy(v33, (a2 + 120), 0x7AuLL);
        if (sub_266CFBE34(v33) == 1 || (sub_266CF74BC(result + 120, a2 + 120) & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    if (!v31)
    {
      goto LABEL_82;
    }

    return 0;
  }

  return v4;
}

uint64_t sub_266CF828C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000266DC2FC0 == a2;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6946746F4E7369 && a2 == 0xED0000656C626164;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000266DC2FE0 == a2;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6169636966666FLL && a2 == 0xEC000000656D614ELL;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x54746375646F7270 && a2 == 0xEC00000073657079;
            if (v10 || (sub_266DAB17C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x79726F6765746163 && a2 == 0xEA00000000006449;
              if (v11 || (sub_266DAB17C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6475627261457369 && a2 == 0xE900000000000073;
                if (v12 || (sub_266DAB17C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6870646165487369 && a2 == 0xEC00000073656E6FLL;
                  if (v13 || (sub_266DAB17C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x8000000266DC3000 == a2;
                    if (v14 || (sub_266DAB17C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6369746E616D6573 && a2 == 0xEF73657361696C41;
                      if (v15 || (sub_266DAB17C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x8000000266DC1020 == a2;
                        if (v16 || (sub_266DAB17C() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000011 && 0x8000000266DC3020 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_266DAB17C();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t sub_266CF86A8(char a1)
{
  result = 0x6E6946746F4E7369;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43656369766564;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6C6169636966666FLL;
      break;
    case 5:
      result = 0x54746375646F7270;
      break;
    case 6:
      result = 0x79726F6765746163;
      break;
    case 7:
      result = 0x6475627261457369;
      break;
    case 8:
      result = 0x6870646165487369;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6369746E616D6573;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_266CF8854()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC820, &qword_266DB6C00);
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = __dst - v6;
  OUTLINED_FUNCTION_42_2();
  sub_266CFBC94();
  OUTLINED_FUNCTION_25_10();
  sub_266DAB36C();
  LOBYTE(__dst[0]) = 0;
  OUTLINED_FUNCTION_20_12();
  sub_266DAB0AC();
  if (!v1)
  {
    LOBYTE(__dst[0]) = 1;
    OUTLINED_FUNCTION_20_12();
    sub_266DAB0AC();
    OUTLINED_FUNCTION_1_38(2);
    sub_266DAB09C();
    OUTLINED_FUNCTION_1_38(3);
    sub_266DAB09C();
    OUTLINED_FUNCTION_1_38(4);
    sub_266DAB09C();
    __dst[0] = v0[7];
    v10 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC808, &qword_266DB6BF8);
    sub_266CFBD74(&qword_2800CC828, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_25_10();
    sub_266DAB0DC();
    OUTLINED_FUNCTION_1_38(6);
    sub_266DAB0CC();
    LOBYTE(__dst[0]) = 7;
    OUTLINED_FUNCTION_20_12();
    sub_266DAB0AC();
    LOBYTE(__dst[0]) = 8;
    OUTLINED_FUNCTION_20_12();
    sub_266DAB0AC();
    OUTLINED_FUNCTION_1_38(9);
    sub_266DAB09C();
    __dst[0] = v0[12];
    v10 = 10;
    OUTLINED_FUNCTION_25_10();
    sub_266DAB0DC();
    OUTLINED_FUNCTION_1_38(11);
    sub_266DAB09C();
    memcpy(__dst, v0 + 15, 0x7AuLL);
    v10 = 12;
    sub_266CFBDE0();
    OUTLINED_FUNCTION_20_12();
    sub_266DAB0DC();
  }

  return (*(v4 + 8))(v7, v2);
}

void *sub_266CF8B48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC7F8, &qword_266DB6BF0);
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v89 = 1;
  sub_266CFBC70(__src);
  memcpy(v86, __src, sizeof(v86));
  v12 = a1[4];
  v58 = a1;
  OUTLINED_FUNCTION_42_2();
  sub_266CFBC94();
  OUTLINED_FUNCTION_25_10();
  sub_266DAB34C();
  if (v2)
  {
    v93 = v2;
    OUTLINED_FUNCTION_3_33();
    v11 = 0;
    v6 = 0;
    OUTLINED_FUNCTION_18_14();
    v13 = 2;
    v14 = 2;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v58);
    LOBYTE(v70) = v14;
    BYTE1(v70) = v13;
    *(&v70 + 2) = v90;
    HIWORD(v70) = v91;
    v71 = v6;
    v72 = v11;
    v73 = v12;
    v74 = v8;
    v75 = a2;
    v76 = v61;
    v77 = v60;
    v78 = v59;
    v79 = v89;
    v80 = v3;
    v81 = v57;
    v83 = v88;
    v82 = v87;
    OUTLINED_FUNCTION_33_7();
    v84 = v64;
    memcpy(v85, v86, sizeof(v85));
    return sub_266C9D124(&v70);
  }

  LOBYTE(v70) = 0;
  v56 = sub_266DAAFDC();
  OUTLINED_FUNCTION_0_56(1);
  v55 = sub_266DAAFDC();
  OUTLINED_FUNCTION_0_56(2);
  v53 = sub_266DAAFCC();
  v54 = v16;
  OUTLINED_FUNCTION_0_56(3);
  v51 = sub_266DAAFCC();
  v52 = v17;
  OUTLINED_FUNCTION_0_56(4);
  v50 = sub_266DAAFCC();
  v61 = v18;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC808, &qword_266DB6BF8);
  v67[0] = 5;
  v12 = sub_266CFBD74(&qword_2800CC810, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_25_10();
  v14 = v11;
  sub_266DAB00C();
  v19 = a2;
  v20 = v70;
  OUTLINED_FUNCTION_0_56(6);
  v21 = sub_266DAAFFC();
  v60 = v20;
  v59 = v21;
  v89 = v22 & 1;
  OUTLINED_FUNCTION_0_56(7);
  v49 = sub_266DAAFDC();
  OUTLINED_FUNCTION_0_56(8);
  v23 = sub_266DAAFDC();
  v93 = 0;
  v57 = v23;
  OUTLINED_FUNCTION_0_56(9);
  v24 = v93;
  v65 = sub_266DAAFCC();
  v66 = v25;
  v93 = v24;
  if (v24)
  {
    v26 = OUTLINED_FUNCTION_2_39();
    v27(v26);
    OUTLINED_FUNCTION_23_13();
LABEL_13:
    OUTLINED_FUNCTION_34_4();
    a2 = v50;
    v3 = v49;
    goto LABEL_4;
  }

  v67[0] = 10;
  OUTLINED_FUNCTION_25_10();
  v14 = v11;
  v28 = v93;
  sub_266DAB00C();
  v93 = v28;
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_2_39();
    v30(v29);
    v63 = 0;
    v64 = 0;
    v62 = 0;
    goto LABEL_13;
  }

  v62 = v70;
  OUTLINED_FUNCTION_0_56(11);
  v31 = v93;
  v63 = sub_266DAAFCC();
  v64 = v32;
  v93 = v31;
  if (v31)
  {
    v33 = OUTLINED_FUNCTION_2_39();
    v34(v33);
    v63 = 0;
    v64 = 0;
    goto LABEL_13;
  }

  v68 = 12;
  sub_266CFBCE8();
  v14 = v11;
  v35 = v93;
  sub_266DAB00C();
  v93 = v35;
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_2_39();
    v37(v36);
    goto LABEL_13;
  }

  v38 = OUTLINED_FUNCTION_2_39();
  v39(v38);
  memcpy(v86, v69, sizeof(v86));
  v40 = v55;
  v41 = v56;
  v67[0] = v56;
  v67[1] = v55;
  v42 = v53;
  v43 = v54;
  *&v67[8] = v53;
  *&v67[16] = v54;
  v44 = v51;
  *&v67[24] = v51;
  *&v67[32] = v52;
  *&v67[40] = v50;
  *&v67[48] = v61;
  *&v67[56] = v60;
  *&v67[64] = v59;
  v48 = v89;
  v67[72] = v89;
  v45 = v49;
  v67[73] = v49;
  v46 = v57;
  v67[74] = v57;
  *&v67[80] = v65;
  *&v67[88] = v66;
  *&v67[96] = v62;
  *&v67[104] = v63;
  *&v67[112] = v64;
  memcpy(&v67[120], v69, 0x7AuLL);
  sub_266CFBD3C(v67, &v70);
  __swift_destroy_boxed_opaque_existential_0(v58);
  LOBYTE(v70) = v41;
  BYTE1(v70) = v40;
  v71 = v42;
  v72 = v43;
  v73 = v44;
  v74 = v52;
  v75 = v50;
  v76 = v61;
  v77 = v60;
  v78 = v59;
  v79 = v48;
  v80 = v45;
  v81 = v46;
  v82 = v87;
  v83 = v88;
  OUTLINED_FUNCTION_33_7();
  v84 = v64;
  memcpy(v85, v86, sizeof(v85));
  sub_266C9D124(&v70);
  return memcpy(v19, v67, 0xF2uLL);
}

uint64_t sub_266CF920C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_266DAB17C() & 1) == 0)
  {
    goto LABEL_25;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v6)
  {
    goto LABEL_25;
  }

  v8 = a1[5];
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = a1[4] == *(a2 + 32) && v8 == v9;
    if (!v10 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v9)
  {
    goto LABEL_25;
  }

  if (((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0)
  {
    v11 = *(a1 + 49) ^ *(a2 + 49) ^ 1;
    return v11 & 1;
  }

LABEL_25:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_266CF92F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CF828C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CF9320@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266CF86A0();
  *a1 = result;
  return result;
}

uint64_t sub_266CF9348(uint64_t a1)
{
  v2 = sub_266CFBC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF9384(uint64_t a1)
{
  v2 = sub_266CFBC94();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_266CF93C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_266CF8B48(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xF2uLL);
  }

  return result;
}

void NSOperatingSystemVersion.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_40_3();
  sub_266DAB33C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
LABEL_4:
    OUTLINED_FUNCTION_40_3();
    return;
  }

  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  OUTLINED_FUNCTION_40_3();
  v3 = sub_266DAB18C();
  v5 = v3;
  v6 = v4;
  v29 = v3;
  v30 = v4;
  v7 = sub_266C680F8();
  if (!sub_266DAAC9C())
  {

LABEL_28:
    __swift_destroy_boxed_opaque_existential_0(v31);
    __swift_destroy_boxed_opaque_existential_0(a1);
    goto LABEL_4;
  }

  v29 = v5;
  v30 = v6;
  v8 = MEMORY[0x26D5F1630](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v7);

  v9 = 0;
  v32 = *(v8 + 16);
  v10 = v8 + 56;
  v27 = MEMORY[0x277D84F90];
LABEL_7:
  for (i = (v10 + 32 * v9); ; i += 4)
  {
    if (v32 == v9)
    {

      goto LABEL_28;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v13 = *(i - 3);
    v12 = *(i - 2);
    if ((v12 ^ v13) >> 14)
    {
      v15 = *(i - 1);
      v14 = *i;
      if ((*i & 0x1000000000000000) != 0)
      {

        v18 = sub_266CFAD18(v13, v12, v15, v14, 10);
        v20 = v21;
      }

      else
      {
        if ((v14 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v14) & 0xF;
          v29 = *(i - 1);
          v30 = v14 & 0xFFFFFFFFFFFFFFLL;
          v16 = &v29;
        }

        else if ((v15 & 0x1000000000000000) != 0)
        {
          v16 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v17 = v15 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = sub_266DAAE5C();
        }

        v18 = sub_266CFB738(v16, v17, v13, v12, v15, v14, 10);
        v28 = v19 & 1;

        v20 = v28;
      }

      if ((v20 & 1) == 0)
      {
        v22 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266CFA204();
          v22 = v25;
        }

        v23 = v22;
        v24 = *(v22 + 16);
        v27 = v23;
        if (v24 >= *(v23 + 24) >> 1)
        {
          sub_266CFA204();
          v27 = v26;
        }

        ++v9;
        v10 = v8 + 56;
        *(v27 + 16) = v24 + 1;
        *(v27 + 8 * v24 + 32) = v18;
        goto LABEL_7;
      }
    }

    ++v9;
  }

  __break(1u);
  swift_bridgeObjectRetain_n();

  __break(1u);
}

uint64_t NSOperatingSystemVersion.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266DAB35C();
  if (a2 == -1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    sub_266DAB19C();
  }

  else
  {
    OUTLINED_FUNCTION_36_9();
    MEMORY[0x26D5F1170](46, 0xE100000000000000);
    v6 = OUTLINED_FUNCTION_36_9();
    MEMORY[0x26D5F1170](v6);

    MEMORY[0x26D5F1170](46, 0xE100000000000000);
    v11 = a4;
    v7 = OUTLINED_FUNCTION_36_9();
    MEMORY[0x26D5F1170](v7);

    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    sub_266DAB19C();
  }

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_266CF9904(void *a1@<X0>, void *a2@<X8>)
{
  NSOperatingSystemVersion.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
  }
}

void sub_266CF99B4()
{
  OUTLINED_FUNCTION_26_9();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B10, &unk_266DB6F00);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_17_19(v6);
      OUTLINED_FUNCTION_22_11(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_25();
        sub_266D47124(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
    OUTLINED_FUNCTION_16_15(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_266CF9ADC()
{
  OUTLINED_FUNCTION_39_5();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 48);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_16_2();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v8)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CF9BBC()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800C9FA8, &qword_266DAF990);
  OUTLINED_FUNCTION_32_7();
  sub_266DA7C9C();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_10_16(v8);
    sub_266D47194(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CF9C84()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800C9FB0, &unk_266DB6C80);
  OUTLINED_FUNCTION_32_7();
  sub_266DA7C2C();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_10_16(v8);
    sub_266D471AC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CF9D4C()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800CC870, &qword_266DB6C50);
  OUTLINED_FUNCTION_32_7();
  sub_266DA957C();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_10_16(v8);
    sub_266D471DC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CF9E14()
{
  OUTLINED_FUNCTION_26_9();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC868, &unk_266DB6C40);
      v7 = OUTLINED_FUNCTION_27_9(v6);
      OUTLINED_FUNCTION_6_26(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_25();
        sub_266D47940(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA860, &qword_266DB1EA8);
    OUTLINED_FUNCTION_16_15(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_266CF9ED4()
{
  OUTLINED_FUNCTION_26_9();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC858, &qword_266DB6C30);
      v7 = OUTLINED_FUNCTION_27_9(v6);
      OUTLINED_FUNCTION_6_26(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_25();
        sub_266D47208(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC860, &qword_266DB6C38);
    OUTLINED_FUNCTION_16_15(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_266CF9F94()
{
  OUTLINED_FUNCTION_14_22();
  if (v3)
  {
    OUTLINED_FUNCTION_13_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_8();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_266CFAAAC(*(v0 + 16), v4, &qword_2800CC8D8, &qword_266DB6F38, &qword_2800CC8D0, &qword_266DB6F30);
  v7 = OUTLINED_FUNCTION_40_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_10_16(v9);
    sub_266D47254(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CFA074()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800CC8E0, &qword_266DB6F40);
  v8 = OUTLINED_FUNCTION_32_7();
  type metadata accessor for Address(v8);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_10_16(v9);
    sub_266D47268(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CFA13C()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800CC8E8, &qword_266DB6F48);
  v8 = OUTLINED_FUNCTION_32_7();
  type metadata accessor for Location(v8);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_10_16(v9);
    sub_266D47280(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CFA204()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC880, &unk_266DB6C60);
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_17_19(v7);
      OUTLINED_FUNCTION_22_11(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_25();
        sub_266D472E0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v5)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_266CFA2C4()
{
  OUTLINED_FUNCTION_26_9();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD8, &unk_266DB24B0);
      v10 = OUTLINED_FUNCTION_27_9(v9);
      v6 = OUTLINED_FUNCTION_6_26(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_7_25();
        sub_266D472BC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_21_14(v6, v7, v8, &_s5QueryVN);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_266CFA378()
{
  OUTLINED_FUNCTION_26_9();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC878, &qword_266DB6C58);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_17_19(v6);
      OUTLINED_FUNCTION_22_11(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_25();
        sub_266D470E4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB758, &qword_266DB4750);
    OUTLINED_FUNCTION_16_15(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_266CFA440()
{
  OUTLINED_FUNCTION_14_22();
  if (v3)
  {
    OUTLINED_FUNCTION_13_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_8();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_266CFAAAC(*(v0 + 16), v4, &qword_2800CB7F0, &unk_266DB6F20, &qword_2800CA8B8, &qword_266DB30F0);
  v7 = OUTLINED_FUNCTION_40_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_10_16(v9);
    sub_266D47318(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CFA520()
{
  OUTLINED_FUNCTION_26_9();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F10, &unk_266DB6C70);
      v7 = OUTLINED_FUNCTION_27_9(v6);
      OUTLINED_FUNCTION_6_26(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_25();
        sub_266D473FC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F18, &qword_266DB24C0);
    OUTLINED_FUNCTION_16_15(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_266CFA5E0()
{
  OUTLINED_FUNCTION_26_9();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_17_19(v9);
      OUTLINED_FUNCTION_22_11(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_7_25();
        sub_266D47104(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_21_14(v6, v7, v8, MEMORY[0x277D837D0]);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_266CFA69C()
{
  OUTLINED_FUNCTION_26_9();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC848, &qword_266DB6C18);
      v7 = OUTLINED_FUNCTION_27_9(v6);
      OUTLINED_FUNCTION_6_26(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_25();
        sub_266D47424(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC850, &unk_266DB6C20);
    OUTLINED_FUNCTION_16_15(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_266CFA78C()
{
  OUTLINED_FUNCTION_39_5();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 64);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_16_2();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v8)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CFA864()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800C9F60, &qword_266DAF960);
  OUTLINED_FUNCTION_32_7();
  sub_266DA82EC();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_10_16(v8);
    sub_266D471C4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CFA92C()
{
  OUTLINED_FUNCTION_26_9();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC838, &qword_266DB6C08);
      v7 = OUTLINED_FUNCTION_27_9(v6);
      OUTLINED_FUNCTION_6_26(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_25();
        sub_266C143B0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC840, &qword_266DB6C10);
    OUTLINED_FUNCTION_16_15(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_266CFA9EC()
{
  OUTLINED_FUNCTION_26_9();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_12_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_14();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_17_19(v9);
      OUTLINED_FUNCTION_22_11(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_7_25();
        sub_266D47298(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_21_14(v6, v7, v8, &type metadata for CriteriaTree);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_266CFAAAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_266CFABAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_266CFACA8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B08, &unk_266DAE470);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_266CFAD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_266CE00BC();

  result = sub_266DAA89C();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_266CFB2AC(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_266DAAE5C();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_266CFB2AC(uint64_t a1, unint64_t a2)
{
  v2 = sub_266CFB318(sub_266CFB314, 0, a1, a2);
  v6 = sub_266CFB34C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_266CFB34C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_266DAAC2C();
    if (!v9 || (v10 = v9, v11 = sub_266CFACA8(v9, 0), v12 = sub_266CFB4AC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_266DAA79C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_266DAA79C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_266DAAE5C();
LABEL_4:

  return sub_266DAA79C();
}

unint64_t sub_266CFB4AC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_266CFB6BC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_266DAA85C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_266DAAE5C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_266CFB6BC(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_266DAA82C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_266CFB6BC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_266DAA86C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D5F11A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_266CFB738(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_266CFB6BC(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_266DAA84C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_266CFB6BC(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_266CFB6BC(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_266DAA84C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_266CFBB7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 242))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266CFBBD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 242) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 242) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

double sub_266CFBC70(uint64_t a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 121) = 1;
  return result;
}

unint64_t sub_266CFBC94()
{
  result = qword_2800CC800;
  if (!qword_2800CC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC800);
  }

  return result;
}

unint64_t sub_266CFBCE8()
{
  result = qword_2800CC818;
  if (!qword_2800CC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC818);
  }

  return result;
}

uint64_t sub_266CFBD74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC808, &qword_266DB6BF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266CFBDE0()
{
  result = qword_2800CC830;
  if (!qword_2800CC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC830);
  }

  return result;
}

uint64_t sub_266CFBE34(uint64_t a1)
{
  if (*(a1 + 121))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266CFBE50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1 >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_266CFBE98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = 2 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceMappingInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceMappingInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266CFC080(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 121))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266CFC0A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
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

  *(result + 121) = v3;
  return result;
}

unint64_t sub_266CFC0FC()
{
  result = qword_2800CC888;
  if (!qword_2800CC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC888);
  }

  return result;
}

unint64_t sub_266CFC154()
{
  result = qword_2800CC890;
  if (!qword_2800CC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC890);
  }

  return result;
}

unint64_t sub_266CFC1AC()
{
  result = qword_2800CC898;
  if (!qword_2800CC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC898);
  }

  return result;
}

unint64_t sub_266CFC204()
{
  result = qword_2800CC8A0;
  if (!qword_2800CC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC8A0);
  }

  return result;
}

unint64_t sub_266CFC258()
{
  result = qword_2800CC8B0;
  if (!qword_2800CC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC8B0);
  }

  return result;
}

uint64_t sub_266CFC2AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OperatingSystemVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_266CFC30C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_266CFC34C(uint64_t result, int a2, int a3)
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
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MinimumOSVersions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_266CFC484(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266CFC560()
{
  result = qword_2800CC8F0;
  if (!qword_2800CC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC8F0);
  }

  return result;
}

unint64_t sub_266CFC5B8()
{
  result = qword_2800CC8F8;
  if (!qword_2800CC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC8F8);
  }

  return result;
}

unint64_t sub_266CFC610()
{
  result = qword_2800CC900;
  if (!qword_2800CC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC900);
  }

  return result;
}

unint64_t sub_266CFC668()
{
  result = qword_2800CC908;
  if (!qword_2800CC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC908);
  }

  return result;
}

void OUTLINED_FUNCTION_3_33()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[10] = 0;
  v0[11] = 0;
}

size_t OUTLINED_FUNCTION_6_26(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void *OUTLINED_FUNCTION_9_16()
{

  return sub_266DAB00C();
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return sub_266DAB0DC();
}

uint64_t OUTLINED_FUNCTION_15_19()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_15(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_21_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_23_13()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[13] = 0;
  v0[16] = 0;
  v0[17] = 0;
}

uint64_t OUTLINED_FUNCTION_27_9(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_33_7()
{
  v1 = v0[17];
  v0[75] = v0[16];
  v0[76] = v1;
  v2 = v0[14];
  v0[77] = v0[13];
  v0[78] = v2;
}

uint64_t OUTLINED_FUNCTION_36_9()
{

  return sub_266DAB13C();
}

void *OUTLINED_FUNCTION_37_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_266CFABAC(v5, a2, a3, a4, v4);
}

uint64_t sub_266CFC9B8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F218);
  v1 = __swift_project_value_buffer(v0, qword_28156F218);
  if (qword_2800C9100 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FC68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t DevicesLoadError.hashValue.getter()
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](0);
  return sub_266DAB2DC();
}

unint64_t sub_266CFCB28()
{
  result = qword_2800CC910;
  if (!qword_2800CC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DevicesLoadError(_BYTE *result, int a2, int a3)
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

double sub_266CFCC28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = (*(a4 + 32))(a3, a4);
  v9 = *(v8 + 16);
  v10 = 32;
  if (v9)
  {
    while (1)
    {
      v11 = *(v8 + v10);
      v12 = *(v8 + v10 + 16);
      v13 = *(v8 + v10 + 48);
      v21 = *(v8 + v10 + 32);
      v22 = v13;
      v19 = v11;
      v20 = v12;
      v14 = v13 == a1 && *(&v13 + 1) == a2;
      if (v14 || (sub_266DAB17C() & 1) != 0)
      {
        break;
      }

      v10 += 64;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    sub_266C24964(&v19, &v18);

    v16 = v20;
    *a5 = v19;
    a5[1] = v16;
    result = *&v21;
    v17 = v22;
    a5[2] = v21;
    a5[3] = v17;
  }

  else
  {
LABEL_8:

    result = 0.0;
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

void sub_266CFCD14()
{
  OUTLINED_FUNCTION_6();
  v59 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC938, &qword_266DB7430);
  OUTLINED_FUNCTION_0_2();
  v57 = v1;
  v58 = v2;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10();
  v56 = v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC940, &qword_266DB7438);
  OUTLINED_FUNCTION_0_2();
  v52 = v5;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v47 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC948, &qword_266DB7440);
  OUTLINED_FUNCTION_0_2();
  v54 = v8;
  v55 = v9;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  v48 = v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB1B8, &qword_266DB3480);
  OUTLINED_FUNCTION_0_2();
  v51 = v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v49 = v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB228, &qword_266DB34C0);
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC950, &qword_266DB7448);
  OUTLINED_FUNCTION_7_7(v20);
  v21 = sub_266DA96FC();
  *&v63 = v21;
  swift_allocObject();

  v22 = sub_266DA96FC();
  *(&v63 + 1) = v22;
  LOBYTE(v61) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC958, &unk_266DB7450);
  OUTLINED_FUNCTION_7_7(v23);

  v24 = sub_266DA973C();
  *&v64 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB180, &qword_266DB3450);
  OUTLINED_FUNCTION_7_7(v25);

  *(&v64 + 1) = sub_266DA96FC();
  v65 = MEMORY[0x277D84FA0];
  v61 = v21;
  sub_266C230E8(&qword_28156F088, &qword_2800CC950, &qword_266DB7448, MEMORY[0x277CBCE20]);

  sub_266DA98AC();

  sub_266C9E2B8();
  v45 = v26;
  (*(v16 + 8))(v19, v46);
  v60 = v22;
  v61 = v24;
  sub_266C230E8(&qword_2800CC960, &qword_2800CC958, &unk_266DB7450, MEMORY[0x277CBCE48]);
  v27 = v47;
  sub_266DA981C();

  sub_266C230E8(&qword_2800CC968, &qword_2800CC940, &qword_266DB7438, MEMORY[0x277CBCAF0]);
  v28 = v48;
  v29 = v50;
  sub_266DA98AC();
  (*(v52 + 8))(v27, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  sub_266C230E8(&qword_2800CC970, &qword_2800CC948, &qword_266DB7440, MEMORY[0x277CBCC90]);
  v30 = v49;
  v31 = v54;
  sub_266DA984C();
  (*(v55 + 8))(v28, v31);
  sub_266C9E568();
  v33 = v32;
  (*(v51 + 8))(v30, v53);
  v60 = v45;
  v61 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC30, &unk_266DB7460);
  v34 = MEMORY[0x277CBCD90];
  sub_266C230E8(&unk_28156F0A8, &qword_2800CBC30, &unk_266DB7460, MEMORY[0x277CBCD90]);
  v35 = v56;
  sub_266DA982C();
  sub_266C230E8(&qword_2800CC978, &qword_2800CC938, &qword_266DB7430, MEMORY[0x277CBCC08]);
  v36 = v57;
  v37 = sub_266DA97EC();
  (*(v58 + 8))(v35, v36);
  *&v62 = v37;

  sub_266C9E854();
  v39 = v38;

  *(&v62 + 1) = v39;
  v61 = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE40, &qword_266DB5458);
  sub_266C230E8(&unk_28156F090, &qword_2800CBE40, &qword_266DB5458, v34);
  OUTLINED_FUNCTION_8_15();
  sub_266DA986C();

  sub_266DA968C();

  v61 = v37;
  OUTLINED_FUNCTION_8_15();
  sub_266DA986C();

  sub_266DA968C();

  v61 = v33;
  OUTLINED_FUNCTION_8_15();
  sub_266DA986C();
  sub_266DA968C();

  v40 = v65;
  v41 = v63;
  v42 = v64;
  v43 = v59;
  *v59 = v62;
  v43[1] = v41;
  v43[2] = v42;
  *(v43 + 6) = v40;
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CFD540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266CFD538();
  *a1 = result;
  return result;
}

void sub_266CFD574(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  sub_266C3843C(v3);
  *a2 = v4;
}

void *sub_266CFD5CC()
{
  OUTLINED_FUNCTION_14_23();
  sub_266DA96CC();
  OUTLINED_FUNCTION_14_23();
  sub_266DA96CC();
  OUTLINED_FUNCTION_14_23();
  sub_266DA970C();
  OUTLINED_FUNCTION_14_23();
  sub_266DA96CC();
  v1 = *(v0 + 48);
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_266DAAD4C();
    sub_266DA96AC();
    sub_266CFED0C(&qword_2800CC130, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_266DAAA4C();
    v1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v5 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      return sub_266C33DE8(v1);
    }

    while (1)
    {
      sub_266DA969C();

      v5 = v12;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_266DAAD6C())
      {
        sub_266DA96AC();
        swift_dynamicCast();
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      return sub_266C33DE8(v1);
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      return sub_266C33DE8(v1);
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_266CFD7F8()
{
  OUTLINED_FUNCTION_6();
  v0 = sub_266DAA0EC();
  OUTLINED_FUNCTION_0_2();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v35 - v7;
  v9 = sub_266DAA12C();
  v10 = *(v9 + 16);
  if (v10)
  {
    v45 = MEMORY[0x277D84F90];
    sub_266C3881C(0, v10, 0);
    v11 = v45;
    v13 = *(v2 + 16);
    v12 = v2 + 16;
    v14 = *(v12 + 64);
    v35[1] = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v37 = *(v12 + 56);
    v38 = v13;
    v36 = (v12 - 8);
    v39 = v12;
    do
    {
      v16 = v38;
      v38(v8, v15, v0);
      v16(v6, v8, v0);
      sub_266DAA0DC();

      OUTLINED_FUNCTION_15_20();
      if (v17)
      {
        v18 = sub_266DAA0DC();
        v43 = v19;
        v44 = v18;
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      sub_266DAA0CC();

      OUTLINED_FUNCTION_15_20();
      if (v20)
      {
        v21 = sub_266DAA0CC();
        v41 = v22;
        v42 = v21;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      v23 = sub_266DAA0BC();
      v40 = v24;
      v25 = *v36;
      (*v36)(v6, v0);
      v26 = v8;
      v27 = v8;
      v28 = v0;
      v25(v27, v0);
      v45 = v11;
      v30 = *(v11 + 16);
      v29 = *(v11 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_266C3881C(v29 > 1, v30 + 1, 1);
        v11 = v45;
      }

      *(v11 + 16) = v30 + 1;
      v31 = (v11 + (v30 << 6));
      v32 = v43;
      v31[4] = v44;
      v31[5] = v32;
      v31[6] = 0;
      v31[7] = 0;
      v33 = v41;
      v31[8] = v42;
      v31[9] = v33;
      v15 += v37;
      v34 = v40;
      v31[10] = v23;
      v31[11] = v34;
      --v10;
      v0 = v28;
      v8 = v26;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CFDA98()
{
  v1 = v0;
  sub_266CFCD14();
  *(v0 + 16) = v16;
  *(v0 + 32) = v17;
  *(v0 + 48) = v18;
  *(v0 + 64) = v19;
  *(v0 + 72) = 0;
  sub_266DAA55C();
  sub_266DAA54C();
  [objc_allocWithZone(MEMORY[0x277D49698]) init];
  v2 = sub_266DAA1AC();
  OUTLINED_FUNCTION_7_7(v2);
  *(v0 + 80) = sub_266DAA11C();
  sub_266CFED0C(&qword_2800CC928, v3, type metadata accessor for FMIPManagerWrapperImpl, &unk_266DB7308);

  sub_266DAA10C();

  sub_266CFED0C(&qword_2800CC930, v4, type metadata accessor for FMIPManagerWrapperImpl, &unk_266DB7340);

  sub_266DAA19C();

  sub_266DAA0FC();

  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_2800C9340);
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_28156F218);
  OUTLINED_FUNCTION_17_1();
  swift_retain_n();
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218752;
    v9 = *(sub_266DAA16C() + 16);

    *(v8 + 4) = v9;

    *(v8 + 12) = 2048;
    sub_266DAA16C();
    OUTLINED_FUNCTION_3_34();
    sub_266CFDDAC();
    v11 = v10;

    *(v8 + 14) = v11;

    *(v8 + 22) = 2048;
    v12 = *(sub_266DAA15C() + 16);

    *(v8 + 24) = v12;

    *(v8 + 32) = 2048;
    sub_266DAA15C();
    OUTLINED_FUNCTION_2_40();
    sub_266CFDDAC();
    v14 = v13;

    *(v8 + 34) = v14;

    _os_log_impl(&dword_266C08000, v6, v7, "FMIPManagerWrapper init: devices: %ld (%ld), items: %ld (%ld)", v8, 0x2Au);
    OUTLINED_FUNCTION_33_6();
  }

  else
  {
  }

  return v1;
}

void sub_266CFDDAC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF20, &qword_266DB5750);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = *(v5 + 16);
  v26 = v5;

  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {
LABEL_15:

      OUTLINED_FUNCTION_5();
      return;
    }

    v3(0);
    v1();
    v14 = sub_266DAA23C();
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) != 1)
    {
      break;
    }

    sub_266C3A088(v11, &qword_2800CBF20, &qword_266DB5750);
  }

  v25 = v1;
  v15 = 0;
  v16 = &qword_2800CBF20;
LABEL_7:
  v17 = sub_266C3A088(v11, v16, &qword_266DB5750);
  v18 = __OFADD__(v15, 1);
  v19 = v15 + 1;
  if (!v18)
  {
    v20 = v16;
    v24 = v19;
    while (1)
    {
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v21 == v12)
      {
        goto LABEL_15;
      }

      if (v21 >= v12)
      {
        goto LABEL_17;
      }

      (v25)(v17);
      if (__swift_getEnumTagSinglePayload(v9, 1, v14) != 1)
      {
        v22 = v20;
        v11 = v9;
        ++i;
        v16 = v22;
        v15 = v24;
        goto LABEL_7;
      }

      v17 = sub_266C3A088(v9, v20, &qword_266DB5750);
      ++i;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

void sub_266CFDFF8()
{
  sub_266CFD5CC();
  sub_266DAA13C();
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_2800C9340);
  }

  v0 = sub_266DA94AC();
  __swift_project_value_buffer(v0, qword_28156F218);
  oslog = sub_266DA948C();
  v1 = sub_266DAAB0C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = OUTLINED_FUNCTION_11();
    *v2 = 0;
    _os_log_impl(&dword_266C08000, oslog, v1, "FMIPManagerWrapper deactivate: stopping refreshing.", v2, 2u);
    OUTLINED_FUNCTION_6_1();
  }
}

void sub_266CFE0EC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_266DAA48C();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266C233D0(v7, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F18, &qword_266DB24C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC918, &qword_266DB7420);
  if (swift_dynamicCast())
  {
    sub_266C0B0D8(v30, v33);
    v14 = v7[3];
    v15 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v14);
    if ((*(v15 + 128))(v14, v15))
    {
      if (qword_2800C9340 != -1)
      {
        OUTLINED_FUNCTION_0_57(&qword_2800C9340);
      }

      v16 = sub_266DA94AC();
      __swift_project_value_buffer(v16, qword_28156F218);
      v17 = sub_266DA948C();
      v18 = sub_266DAAB0C();
      if (OUTLINED_FUNCTION_16_0(v18))
      {
        v19 = OUTLINED_FUNCTION_11();
        *v19 = 0;
        _os_log_impl(&dword_266C08000, v17, v18, "About to play sound on an item; forcing a refresh of items to get locations in case play sound fails.", v19, 2u);
        OUTLINED_FUNCTION_6_1();
      }

      sub_266DAA47C();
      sub_266DAA14C();
      (*(v10 + 8))(v13, v8);
    }

    v20 = v34;
    v21 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v21 + 8))(*(v1 + 80), v5, v3, v20, v21);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_266C3A088(v30, &qword_2800CC920, &qword_266DB7428);
    if (qword_2800C9340 != -1)
    {
      OUTLINED_FUNCTION_0_57(&qword_2800C9340);
    }

    v22 = sub_266DA94AC();
    __swift_project_value_buffer(v22, qword_28156F218);
    v23 = sub_266DA948C();
    v24 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_16_0(v24))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_13_14();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_33_6();
    }

    LOWORD(v33[0]) = 256;
    v5(v33);
  }

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CFE3EC(uint64_t a1, uint64_t a2)
{
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_2800C9340);
  }

  v3 = sub_266DA94AC();
  __swift_project_value_buffer(v3, qword_28156F218);
  OUTLINED_FUNCTION_17_1();

  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v5))
  {
    v6 = OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_4_33(v6, 3.8521e-34);
    OUTLINED_FUNCTION_2_40();
    sub_266CFDDAC();
    *(v6 + 14) = v7;

    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    OUTLINED_FUNCTION_33_6();
  }

  else
  {
  }

  v13 = sub_266C6A6CC(a2);
  OUTLINED_FUNCTION_11_19(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
}

uint64_t sub_266CFE508(uint64_t a1, uint64_t a2)
{
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_2800C9340);
  }

  v3 = sub_266DA94AC();
  __swift_project_value_buffer(v3, qword_28156F218);
  OUTLINED_FUNCTION_17_1();

  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v5))
  {
    v6 = OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_4_33(v6, 3.8521e-34);
    OUTLINED_FUNCTION_2_40();
    sub_266CFDDAC();
    *(v6 + 14) = v7;

    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    OUTLINED_FUNCTION_33_6();
  }

  else
  {
  }

  v13 = sub_266C6A6CC(a2);
  OUTLINED_FUNCTION_11_19(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);

  return sub_266DA971C();
}

uint64_t sub_266CFE638(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_2800C9340);
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_28156F218);
  v6 = a2;
  v7 = sub_266DA948C();
  v8 = sub_266DAAAEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFC0, &qword_266DB5C90);
    v12 = sub_266DAA72C();
    v14 = sub_266C22A3C(v12, v13, &v21);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_33_6();
  }

  *(v3 + 72) = 1;
  LOBYTE(v21) = 0;
  return sub_266DA96CC();
}

uint64_t sub_266CFE7A4(uint64_t a1)
{
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_2800C9340);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_28156F218);
  OUTLINED_FUNCTION_17_1();
  swift_retain_n();
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_19_14();
    *v4 = 134218240;
    v5 = *(sub_266DAA16C() + 16);

    *(v4 + 4) = v5;

    *(v4 + 12) = 2048;
    sub_266DAA16C();
    OUTLINED_FUNCTION_3_34();
    sub_266CFDDAC();
    v7 = v6;

    *(v4 + 14) = v7;

    _os_log_impl(&dword_266C08000, v2, v3, "Refreshed devices (count: %ld with location: %ld)", v4, 0x16u);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
  }

  v8 = sub_266DAA16C();
  sub_266C6A6EC(v8);

  sub_266DA96DC();
}

uint64_t sub_266CFE954(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_2800C9340);
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_28156F218);
  OUTLINED_FUNCTION_17_1();

  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v7))
  {
    v8 = OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_4_33(v8, 3.8521e-34);
    OUTLINED_FUNCTION_3_34();
    sub_266CFDDAC();
    *(v8 + 14) = v9;

    _os_log_impl(&dword_266C08000, v6, v7, a3, v8, 0x16u);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
  }

  v10 = sub_266C6A6EC(a2);
  OUTLINED_FUNCTION_11_19(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
}