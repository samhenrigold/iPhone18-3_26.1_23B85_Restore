uint64_t sub_2740C77E8()
{
  BYTE8(v2) = 0;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741DA0A0);
  *&v2 = *v0;
  sub_2741C862C();
  sub_2740CB660(*(&v2 + 1), 0xE000000000000000, 0xD000000000000064, 0x80000002741DA030, 0xD000000000000014, 0x80000002741DA0C0);
}

uint64_t sub_2740C78C4()
{
  BYTE8(v2) = 0;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000001DLL, 0x80000002741DA010);
  *&v2 = *(v0 + 1);
  sub_2741C862C();
  sub_2740CB660(*(&v2 + 1), 0xE000000000000000, 0xD000000000000064, 0x80000002741DA030, 0x73746F486F747561, 0xEF65646F4D746F70);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2740C79D0(uint64_t a1, int a2)
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

uint64_t sub_2740C7A18(uint64_t result, int a2, int a3)
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

uint64_t sub_2740C7A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B68, &qword_2741CD0E0);
  sub_2740A6D24(&qword_280938B70, &qword_280938B68, &qword_2741CD0E0, MEMORY[0x277CE14C0]);
  return sub_2741C762C();
}

uint64_t sub_2740C7B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v59 = a4;
  v7 = sub_2741C739C();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B78, &qword_2741CD0E8);
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v48 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B80, &qword_2741CD0F0);
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v14);
  v16 = &v48 - v15;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B88, &qword_2741CD0F8);
  v52 = *(v54 - 8);
  v18 = MEMORY[0x28223BE20](v54, v17);
  v50 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v61 = &v48 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B90, &qword_2741CD100);
  v23 = *(v22 - 8);
  v62 = v22;
  v63 = v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v60 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v48 - v28;
  v67 = a1;
  v68 = a2;
  v69 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B98, &qword_2741CD108);
  sub_2740A6D24(&qword_280938BA0, &qword_280938B98, &qword_2741CD108, MEMORY[0x277CDD938]);
  v30 = v29;
  v49 = v29;
  sub_2741C7B9C();
  v64 = a1;
  v65 = a2;
  v66 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938BA8, &qword_2741CD110);
  sub_2740C8FC8();
  sub_2741C7B9C();
  sub_2741C714C();
  v31 = sub_2740C9078();
  sub_2741C776C();

  (*(v51 + 8))(v13, v10);
  v32 = v56;
  sub_2741C738C();
  v70 = v10;
  v71 = v31;
  swift_getOpaqueTypeConformance2();
  v33 = v61;
  v34 = v53;
  sub_2741C781C();
  (*(v57 + 8))(v32, v58);
  (*(v55 + 8))(v16, v34);
  v35 = v62;
  v36 = *(v63 + 16);
  v37 = v60;
  v36(v60, v30, v62);
  v38 = v52;
  v39 = *(v52 + 16);
  v40 = v50;
  v41 = v54;
  v39(v50, v33, v54);
  v42 = v59;
  v36(v59, v37, v35);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938BD0, &unk_2741CD120);
  v39(&v42[*(v43 + 48)], v40, v41);
  v44 = *(v38 + 8);
  v44(v61, v41);
  v45 = v62;
  v46 = *(v63 + 8);
  v46(v49, v62);
  v44(v40, v41);
  return (v46)(v60, v45);
}

uint64_t sub_2740C8148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800, MEMORY[0x277CE1138]);
  sub_2740C9344();
  return sub_2741C6DDC();
}

double sub_2740C8240@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2741C70EC();
  v20 = 1;
  sub_2740C8340(a1, a2, a3, &v14);
  v23 = v16;
  v24 = v17;
  v21 = v14;
  v22 = v15;
  v26[2] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v26[1] = v15;
  v25 = v18;
  v26[0] = v14;
  sub_2740C9398(&v21, &v13);
  sub_2740C9408(v26);
  *&v19[7] = v21;
  *&v19[71] = v25;
  *&v19[55] = v24;
  *&v19[39] = v23;
  *&v19[23] = v22;
  v9 = *&v19[48];
  *(a4 + 49) = *&v19[32];
  *(a4 + 65) = v9;
  *(a4 + 81) = *&v19[64];
  result = *v19;
  v11 = *&v19[16];
  *(a4 + 17) = *v19;
  v12 = v20;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v12;
  *(a4 + 96) = *&v19[79];
  *(a4 + 33) = v11;
  return result;
}

uint64_t sub_2740C8340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_280937A00 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v8 = sub_2741C76AC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  MEMORY[0x2743E5B70](&v29, v15);
  v16 = v29;
  swift_getKeyPath();
  v30 = v16;
  sub_2740C91EC();
  sub_2741C6A0C();

  v17 = *(v16 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode);

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (qword_2809379C8 != -1)
      {
        swift_once();
      }

      v18 = &qword_280946AE8;
    }

    else
    {
      if (qword_2809379C0 != -1)
      {
        swift_once();
      }

      v18 = &qword_280946AD8;
    }
  }

  else if (v17)
  {
    if (qword_2809379B8 != -1)
    {
      swift_once();
    }

    v18 = &qword_280946AC8;
  }

  else
  {
    if (qword_280937408 != -1)
    {
      swift_once();
    }

    v18 = &qword_280945F48;
  }

  v19 = *v18;

  v30 = v19;
  v31 = v20;
  v21 = sub_2741C76AC();
  v23 = v22;
  v24 = v12 & 1;
  LOBYTE(v30) = v12 & 1;
  LOBYTE(v29) = v12 & 1;
  v26 = v25 & 1;
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v24;
  *(a4 + 24) = v14;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v21;
  *(a4 + 56) = v22;
  *(a4 + 64) = v25 & 1;
  *(a4 + 72) = v27;
  sub_27409861C(v8, v10, v24);

  sub_27409861C(v21, v23, v26);

  sub_2740A6AC8(v21, v23, v26);

  sub_2740A6AC8(v8, v10, v30);
}

uint64_t sub_2740C8650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938BD8, &qword_2741CD148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938BC0, &qword_2741CD118);
  sub_2740A6D24(&qword_280938BE0, &qword_280938BD8, &qword_2741CD148, MEMORY[0x277D83980]);
  sub_2740C911C();
  sub_2740A6D24(&qword_280938BB8, &qword_280938BC0, &qword_2741CD118, MEMORY[0x277CDF028]);
  return sub_2741C7B5C();
}

uint64_t sub_2740C87D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938BF0, &qword_2741CD150);
  sub_2740A6D24(&qword_280938BF8, &qword_280938BF0, &qword_2741CD150, MEMORY[0x277CE1138]);
  return sub_2741C7A7C();
}

uint64_t sub_2740C88E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  MEMORY[0x2743E5B70](&v10, v5);
  v6 = v10;
  if (*(v10 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) == a4)
  {
    sub_274108F9C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    v11 = v6;
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

uint64_t sub_2740C8A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_2741C70EC();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C00, &qword_2741CD158);
  return sub_2740C8A84(a1, a2, a3, a4, a5 + *(v10 + 44));
}

uint64_t sub_2740C8A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a3;
  v61 = a4;
  v59 = a2;
  v52 = a1;
  v63 = a5;
  v6 = sub_2741C743C();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C08, &qword_2741CD160);
  v11 = *(v10 - 8);
  v57 = v10;
  v58 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v53 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C10, &unk_2741CE760);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v62 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v51 = &v50 - v19;
  v65 = sub_27418FE90(a1);
  v66 = v20;
  v54 = sub_2740A6A74();

  v21 = sub_2741C76AC();
  v23 = v22;
  v25 = v24;
  sub_2741C799C();
  v26 = sub_2741C763C();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_2740A6AC8(v21, v23, v25 & 1);

  v65 = v26;
  v66 = v28;
  LOBYTE(v23) = v30 & 1;
  LOBYTE(v67) = v30 & 1;
  v68 = v32;
  sub_2741C741C();
  v33 = MEMORY[0x277CE0BD8];
  v34 = MEMORY[0x277CE0BC8];
  v35 = v53;
  sub_2741C77DC();
  (*(v55 + 8))(v9, v56);
  v36 = v26;
  v37 = v51;
  sub_2740A6AC8(v36, v28, v23);

  v38 = v52;
  v65 = sub_27418FE90(v52);
  v66 = v39;
  v64[0] = v33;
  v64[1] = v34;
  swift_getOpaqueTypeConformance2();
  v40 = v57;
  sub_2741C77BC();
  (*(v58 + 8))(v35, v40);
  v65 = v59;
  v66 = v60;
  v67 = v61;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  MEMORY[0x2743E5B70](v64, v41);
  v42 = v64[0];
  swift_getKeyPath();
  v65 = v42;
  sub_2740C91EC();
  sub_2741C6A0C();

  v43 = *(v42 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType);

  v44 = 0;
  if (v43 == v38)
  {
    v44 = sub_2741C79CC();
  }

  v45 = v62;
  sub_2740C9244(v37, v62);
  v46 = v63;
  sub_2740C9244(v45, v63);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C18, &unk_2741CD190);
  v48 = v46 + *(v47 + 48);
  *v48 = 0;
  *(v48 + 8) = 1;
  *(v46 + *(v47 + 64)) = v44;
  sub_2740C92B4(v37);

  return sub_2740C92B4(v45);
}

uint64_t sub_2740C8EE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B58, &qword_2741CD0D8);
  sub_2740A6D24(&qword_280938B60, &qword_280938B58, &qword_2741CD0D8, MEMORY[0x277CDE5A0]);
  return sub_2741C7B9C();
}

unint64_t sub_2740C8FC8()
{
  result = qword_280938BB0;
  if (!qword_280938BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938BA8, &qword_2741CD110);
    sub_2740A6D24(&qword_280938BB8, &qword_280938BC0, &qword_2741CD118, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938BB0);
  }

  return result;
}

unint64_t sub_2740C9078()
{
  result = qword_280938BC8;
  if (!qword_280938BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938B78, &qword_2741CD0E8);
    sub_2740C8FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938BC8);
  }

  return result;
}

unint64_t sub_2740C911C()
{
  result = qword_280938BE8;
  if (!qword_280938BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938BE8);
  }

  return result;
}

uint64_t objectdestroyTm_4(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_2740C91EC()
{
  result = qword_280937FD8;
  if (!qword_280937FD8)
  {
    type metadata accessor for AssociationCredentials(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937FD8);
  }

  return result;
}

uint64_t sub_2740C9244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C10, &unk_2741CE760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740C92B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C10, &unk_2741CE760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2740C9344()
{
  result = qword_280938C20;
  if (!qword_280938C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938C20);
  }

  return result;
}

uint64_t sub_2740C9398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380B0, &qword_2741CD1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740C9408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380B0, &qword_2741CD1A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2740C947C()
{
  result = qword_280938C28;
  if (!qword_280938C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938C30, qword_2741CD1D0);
    sub_2740A6D24(&qword_280938B60, &qword_280938B58, &qword_2741CD0D8, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938C28);
  }

  return result;
}

uint64_t sub_2740C95DC()
{
  v1 = OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2740C9674(uint64_t a1)
{
  v3 = OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2740C976C()
{
  v1 = OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2740C9804(uint64_t a1)
{
  v3 = OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2740C98FC()
{
  v1 = OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2740C9994(uint64_t a1)
{
  v3 = OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2740C9AD0()
{
  v1 = (v0 + OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2740C9BA4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2740C9C04(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

id WiFiPickerConfiguration.__allocating_init(networks:currentNetwork:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  return WiFiPickerConfiguration.init(networks:currentNetwork:)(a1, a2);
}

{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle] = 0;
  *&v5[OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle] = 0;
  *&v5[OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption] = 3;
  v6 = &v5[OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR___WiFiPickerConfiguration_Swift_networks] = a1;
  *&v5[OBJC_IVAR___WiFiPickerConfiguration_Swift_currentNetwork] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id WiFiPickerConfiguration.init(networks:currentNetwork:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle] = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle] = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption] = 3;
  v4 = &v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 32);
    v8 = type metadata accessor for WiFiNetwork(0);
    do
    {
      v9 = *v7;
      v10 = objc_allocWithZone(v8);
      swift_bridgeObjectRetain_n();
      v11 = WiFiNetwork.init(networkInfo:cwfNetworkProfiles:)(v9, 0);
      MEMORY[0x2743E6040]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2741C800C();
      }

      sub_2741C802C();

      v5 = v16;

      ++v7;
      --v6;
    }

    while (v6);
  }

  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_networks] = v5;
  if (a2)
  {
    v12 = objc_allocWithZone(type metadata accessor for WiFiNetwork(0));

    *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_currentNetwork] = WiFiNetwork.init(networkInfo:cwfNetworkProfiles:)(a2, 0);
  }

  else
  {
    *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_currentNetwork] = 0;
  }

  v15.receiver = v2;
  v15.super_class = type metadata accessor for WiFiPickerConfiguration();
  v13 = objc_msgSendSuper2(&v15, sel_init);

  return v13;
}

{
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle] = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle] = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption] = 3;
  v3 = &v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_networks] = a1;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_currentNetwork] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for WiFiPickerConfiguration();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_2740CA1C4()
{
  v1 = v0;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741DA0E0);
  swift_beginAccess();
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0xD000000000000014, 0x80000002741DA100);
  swift_beginAccess();
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0xD000000000000011, 0x80000002741DA120);
  swift_beginAccess();
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0x726F7774656E202CLL, 0xEC000000203A736BLL);
  v2 = *(v0 + OBJC_IVAR___WiFiPickerConfiguration_Swift_networks);
  v3 = type metadata accessor for WiFiNetwork(0);
  v4 = MEMORY[0x2743E6080](v2, v3);
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0xD000000000000012, 0x80000002741DA140);
  v5 = *(v1 + OBJC_IVAR___WiFiPickerConfiguration_Swift_currentNetwork);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C68, qword_2741CD200);
  v6 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v6);

  MEMORY[0x2743E5FB0](41, 0xE100000000000000);
  return 0;
}

id WiFiPickerConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WiFiPickerConfiguration.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WiFiPickerConfiguration();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_2740CA644@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t dispatch thunk of WiFiPickerConfiguration.__allocating_init(networks:currentNetwork:)()
{
  return (*(v0 + 224))();
}

{
  return (*(v0 + 232))();
}

uint64_t sub_2740CA954()
{
  v0 = sub_2741C6AFC();
  __swift_allocate_value_buffer(v0, qword_280945DD8);
  __swift_project_value_buffer(v0, qword_280945DD8);
  return sub_2741C6AEC();
}

void sub_2740CA9CC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  oslog = sub_2741C6ADC();
  v8 = sub_2741C827C();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2740CABF8(a1, a2, &v12);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2740CABF8(a3, a4, &v12);
    _os_log_impl(&dword_274093000, oslog, v8, "%s %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E7790](v10, -1, -1);
    MEMORY[0x2743E7790](v9, -1, -1);
  }
}

uint64_t sub_2740CAB28(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2740CAB9C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2740CABF8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2740CABF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2740CACC4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_27409D308(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2740CACC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2740CADD0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2741C858C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2740CADD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_2740CAE1C(a1, a2);
  sub_2740CAF4C(&unk_288325D68);
  return v3;
}

void *sub_2740CAE1C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2740CB038(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2741C858C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2741C7F3C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2740CB038(v10, 0);
        result = sub_2741C855C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2740CAF4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2740CB0AC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2740CB038(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C70, &qword_2741CD250);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2740CB0AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C70, &qword_2741CD250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2740CB1A0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2740CB218(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2741C6AFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280945DD8);
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2741C6ADC();
  v15 = sub_2741C829C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_2740CABF8(a3, a4, &v21);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2740CABF8(v20, a2, &v21);
    _os_log_impl(&dword_274093000, v14, v15, "%s:%s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E7790](v18, -1, -1);
    MEMORY[0x2743E7790](v17, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2740CB460(uint64_t a1, unint64_t a2)
{
  v4 = sub_2741C6AFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280945DD8);
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2741C6ADC();
  v11 = sub_2741C827C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2740CABF8(a1, a2, &v16);
    _os_log_impl(&dword_274093000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x2743E7790](v13, -1, -1);
    MEMORY[0x2743E7790](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2740CB660(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v28 = a5;
  v29 = a1;
  v8 = sub_2741C6AFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2741C7E3C();
  v14 = [v13 lastPathComponent];

  v15 = sub_2741C7E7C();
  v17 = v16;

  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v8, qword_280945DD8);
  (*(v9 + 16))(v12, v18, v8);

  v19 = v8;
  v20 = sub_2741C6ADC();
  v21 = sub_2741C828C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v27 = v19;
    v23 = v22;
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 136315650;
    v25 = sub_2740CABF8(v15, v17, &v30);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2740CABF8(v28, a6, &v30);
    *(v23 + 22) = 2082;
    *(v23 + 24) = sub_2740CABF8(v29, a2, &v30);
    _os_log_impl(&dword_274093000, v20, v21, "%s:%s:%{public}s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743E7790](v24, -1, -1);
    MEMORY[0x2743E7790](v23, -1, -1);

    return (*(v9 + 8))(v12, v27);
  }

  else
  {

    return (*(v9 + 8))(v12, v19);
  }
}

uint64_t sub_2740CB984(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2741C6AFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280945DD8);
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2741C6ADC();
  v15 = sub_2741C82BC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_2740CABF8(a3, a4, &v21);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2740CABF8(v20, a2, &v21);
    _os_log_impl(&dword_274093000, v14, v15, "%s %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E7790](v18, -1, -1);
    MEMORY[0x2743E7790](v17, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

void sub_2740CBBBC(double a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    v2 = a1;
    v3 = ceilf(v2 * 3.0);
    if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v3 > -9.2234e18)
    {
      if (v3 < 9.2234e18)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t DisplayOption.init(rawValue:)(uint64_t a1)
{
  v1 = 2;
  if (a1 != 2)
  {
    v1 = 3;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2740CBC74()
{
  result = qword_280938C78;
  if (!qword_280938C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938C78);
  }

  return result;
}

uint64_t sub_2740CBCC8()
{
  v1 = *v0;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v1);
  return sub_2741C880C();
}

uint64_t sub_2740CBD3C(uint64_t a1)
{
  v2 = *v1;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v2);
  return sub_2741C880C();
}

void *sub_2740CBD80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (*result != 2)
  {
    v2 = 3;
  }

  if (*result == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  *(a2 + 8) = 0;
  return result;
}

uint64_t CWFWiFiUIStateFlags.description.getter(char a1)
{
  type metadata accessor for CWFWiFiUIStateFlags(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C80, qword_2741CD320);
  v2 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v2);

  MEMORY[0x2743E5FB0](0x3A7367616C6620, 0xE700000000000000);
  if ((a1 & 2) != 0)
  {
    MEMORY[0x2743E5FB0](0x6E4F7265776F7020, 0xE800000000000000);
  }

  if ((a1 & 4) != 0)
  {
    MEMORY[0x2743E5FB0](0x6169636F73736120, 0xEB00000000646574);
  }

  if ((a1 & 8) != 0)
  {
    MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741DA320);
  }

  if (a1)
  {
    MEMORY[0x2743E5FB0](0xD000000000000011, 0x80000002741DA300);
  }

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

void *sub_2740CBF04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NetworkSettings(0);
  MEMORY[0x28223BE20](v5, v6);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  return sub_27410D9B8(a2, a1);
}

uint64_t sub_2740CC180(uint64_t a1, const __SCNetworkSet *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  v6 = sub_2740CC83C(a2, a3);
  sub_27410ECF4(a2, a3, v6, v7);
}

uint64_t sub_2740CC2BC(uint64_t a1, const __SCNetworkSet *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  v6 = sub_2740CD930(a2, a3);
  sub_27410ECF4(a2, a3, v6, v7);
}

uint64_t sub_2740CC3F8(uint64_t a1, const __SCNetworkSet *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  v6 = sub_274113BB8(a2, a3);
  sub_27410ECF4(a2, a3, v6, v7);
}

uint64_t sub_2740CC534()
{
  sub_2740CC5FC(v0[2], v0[3], v0[4], v0[5], v0[6]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  return swift_deallocClassInstance();
}

uint64_t sub_2740CC5A0(uint64_t a1)
{
  v2 = type metadata accessor for NetworkSettings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2740CC5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_2740CC650()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2740CC6B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2740CC700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2740CC790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2740CC7D8(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t sub_2740CC83C(const __SCNetworkSet *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 56);
  v8 = *(v4 + 64);
  v9 = *(v4 + 72);
  v10 = *(v4 + 80);
  type metadata accessor for SystemIPConfiguration();
  swift_allocObject();

  if (!sub_2740ADCF8(v7, v8, v9, v10))
  {
LABEL_5:
    sub_2740CB218(0xD000000000000017, 0x80000002741DA500, 0x7469772865766173, 0xEB00000000293A68);
    sub_2740B2004();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }

  v11 = *(v4 + 48);
  v19[2] = *(v4 + 32);
  *v20 = v11;
  *&v20[16] = *(v4 + 64);
  v21 = *(v4 + 80);
  v12 = *(v4 + 16);
  v19[0] = *v4;
  v19[1] = v12;
  v13 = sub_2740AF328(v19, a1, a2);
  if (!v3)
  {
    v15 = v14;
    if (v14)
    {
      v16 = v13;

      v22 = *&v20[8];

      sub_27409D420(&v22, &qword_280938580, &qword_2741CD4E0);
      result = v16;
      *(v4 + 56) = v16;
      *(v4 + 64) = v15;
      return result;
    }

    goto LABEL_5;
  }
}

uint64_t sub_2740CC9F8()
{
  v1 = *v0;
  sub_2741C87DC();
  MEMORY[0x2743E6870](qword_2741CD600[v1]);
  return sub_2741C880C();
}

uint64_t sub_2740CCA80(uint64_t a1)
{
  v2 = *v1;
  sub_2741C87DC();
  MEMORY[0x2743E6870](qword_2741CD600[v2]);
  return sub_2741C880C();
}

_BYTE *sub_2740CCACC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10200u >> (8 * *result);
  if (*result >= 3uLL)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2740CCB30()
{
  result = qword_280938C88;
  if (!qword_280938C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938C90, &qword_2741D2CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938C88);
  }

  return result;
}

unint64_t sub_2740CCB98()
{
  result = qword_280938C98;
  if (!qword_280938C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938C98);
  }

  return result;
}

void sub_2740CCBEC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  v12 = [a1 OSSpecificAttributes];
  if (!v12)
  {

    v40 = 0u;
    *v41 = 0u;
    goto LABEL_15;
  }

  v13 = v12;
  v14 = sub_2741C7D6C();

  *&v32 = 0xD000000000000017;
  *(&v32 + 1) = 0x80000002741DA4E0;
  sub_2741C850C();
  if (!*(v14 + 16) || (v15 = sub_274125164(&v49), (v16 & 1) == 0))
  {

    sub_27409D2A4(&v49);
    v40 = 0u;
    *v41 = 0u;
    goto LABEL_13;
  }

  sub_27409D308(*(v14 + 56) + 32 * v15, &v40);
  sub_27409D2A4(&v49);

  if (!*&v41[8])
  {
LABEL_13:

LABEL_15:
    sub_27409D420(&v40, &qword_280937E28, &unk_2741CB3D0);
LABEL_16:
    sub_2740CB218(0xD000000000000023, 0x80000002741DA520, 0xD000000000000029, 0x80000002741DA550);
LABEL_17:

LABEL_18:

    v24 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    a2 = 0;
    a3 = 0;
    v25 = 0uLL;
    v26 = 0uLL;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v17 = v49;
  if (!*(v49 + 16) || (v18 = sub_2741251AC(a4, a5), (v19 & 1) == 0))
  {

LABEL_22:

    v49 = 0;
    v50 = 0xE000000000000000;
    sub_2741C856C();

    v49 = 0xD000000000000017;
    v50 = 0x80000002741DA580;
    MEMORY[0x2743E5FB0](a4, a5);

    sub_2740CB218(v49, v50, 0xD000000000000029, 0x80000002741DA550);

    goto LABEL_17;
  }

  sub_27409D308(*(v17 + 56) + 32 * v18, &v49);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v20 = *(&v40 + 1);
  v21 = v40;
  type metadata accessor for SystemIPConfiguration();
  swift_allocObject();

  if (!sub_2740ADCF8(v21, v20, a2, a3))
  {
    goto LABEL_22;
  }

  sub_2740ADDD0(&v49);
  if (!v56)
  {
    sub_2740CB218(0xD00000000000002DLL, 0x80000002741DA5A0, 0xD000000000000029, 0x80000002741DA550);

    goto LABEL_18;
  }

  v23 = v50;
  v22 = v51;
  v27 = v49;
  v28 = v56;
  v61[0] = *(&v49 + 1);
  *(v61 + 3) = HIDWORD(v49);
  v59 = v53;
  v60 = v52;
  v58 = v55;
  v57 = v54;
  v62 = v50;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v46 = v53;
  v47 = v52;
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  sub_2740A6D94(&v62, &v32, &qword_280938CA0, &qword_2741CD5E8);
  sub_2740A6D94(&v63, &v32, &qword_280938CA0, &qword_2741CD5E8);
  sub_2740A6D94(&v64, &v32, &qword_280938580, &qword_2741CD4E0);
  sub_2740A6D94(&v65, &v32, &qword_280938580, &qword_2741CD4E0);
  sub_2741C856C();
  v32 = v40;
  MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741DA5D0);
  LOBYTE(v40) = v27;
  *(&v40 + 1) = v61[0];
  DWORD1(v40) = *(v61 + 3);
  *(&v40 + 1) = v23;
  *v41 = v22;
  *&v41[8] = v60;
  v42 = v59;
  v43 = v57;
  v44 = v58;
  v45 = v28;
  sub_2741C862C();
  sub_27409D420(&v49, &qword_280938CA8, &unk_2741CD5F0);
  sub_2740CB460(v32, *(&v32 + 1));

  LOBYTE(v32) = v27;
  *(&v32 + 1) = v23;
  v33 = v22;
  v34 = v47;
  v35 = v46;
  v36 = v21;
  v37 = v20;
  v38 = a2;
  v39 = a3;
  v24 = v32;
  v29 = v46;
  v30 = v47;
  LOBYTE(v40) = v27;
  *(&v40 + 1) = v48[0];
  DWORD1(v40) = *(v48 + 3);
  *(&v40 + 1) = v23;
  *v41 = v22;
  *&v41[8] = v47;
  v42 = v46;
  v43 = __PAIR128__(v20, v21);
  v44 = a2;
  v45 = a3;
  sub_2740B2AC0(&v32, v31);
  sub_2740B2B1C(&v40);
  v26 = v29;
  v25 = v30;
LABEL_19:
  *a6 = v24;
  *(a6 + 8) = v23;
  *(a6 + 16) = v22;
  *(a6 + 24) = v25;
  *(a6 + 40) = v26;
  *(a6 + 56) = v21;
  *(a6 + 64) = v20;
  *(a6 + 72) = a2;
  *(a6 + 80) = a3;
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

uint64_t sub_2740CD218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_2740CD274(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IPv6ConfigMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IPv6ConfigMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
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
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2740CD434()
{
  result = qword_280938CB0;
  if (!qword_280938CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938CB8, qword_2741CD698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938CB0);
  }

  return result;
}

unint64_t sub_2740CD498@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2740CD52C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2740CD4D8()
{
  result = qword_280938CC0;
  if (!qword_280938CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938CC0);
  }

  return result;
}

unint64_t sub_2740CD52C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2740CD560(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2740CD5BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL sub_2740CD62C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_2740CD774(&v5, &v7);
}

unint64_t sub_2740CD67C()
{
  result = qword_280938CC8;
  if (!qword_280938CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938AC8, qword_2741CD810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938CC8);
  }

  return result;
}

unint64_t sub_2740CD6E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2740CD860(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2740CD720()
{
  result = qword_280938CD0;
  if (!qword_280938CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938CD0);
  }

  return result;
}

BOOL sub_2740CD774(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_2741C86DC();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 4);
  v10 = *(a2 + 4);
  if (v9)
  {
    if (v10)
    {
      if (*(a1 + 3) == *(a2 + 3) && v9 == v10)
      {
        return a1[40] == a2[40];
      }

      v11 = a1;
      v12 = a2;
      v13 = sub_2741C86DC();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if (v14)
      {
        return a1[40] == a2[40];
      }
    }
  }

  else if (!v10)
  {
    return a1[40] == a2[40];
  }

  return 0;
}

unint64_t sub_2740CD860(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2740CD88C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2740CD8D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740CD930(const __SCNetworkSet *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 3);
  v8 = *(v4 + 4);
  v9 = *(v4 + 5);
  v10 = *(v4 + 6);
  type metadata accessor for SystemIPConfiguration();
  swift_allocObject();

  if (!sub_2740ADCF8(v7, v8, v9, v10))
  {
LABEL_5:
    sub_2740CB218(0xD000000000000017, 0x80000002741DA500, 0x7469772865766173, 0xEB00000000293A68);
    sub_2740B2004();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }

  v11 = v4[1];
  v18 = *v4;
  *v19 = v11;
  *&v19[16] = v4[2];
  v20 = *(v4 + 6);
  v12 = sub_2740AF8A0(&v18, a1, a2);
  if (!v3)
  {
    v14 = v13;
    if (v13)
    {
      v15 = v12;

      v21 = *&v19[8];

      sub_27409D420(&v21, &qword_280938580, &qword_2741CD4E0);
      result = v15;
      *(v4 + 3) = v15;
      *(v4 + 4) = v14;
      return result;
    }

    goto LABEL_5;
  }
}

unint64_t sub_2740CDAE4()
{
  result = qword_280938CD8;
  if (!qword_280938CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938930, qword_2741CCAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938CD8);
  }

  return result;
}

void sub_2740CDB4C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{

  v12 = [a1 OSSpecificAttributes];
  if (!v12)
  {

    v27 = 0u;
    *v28 = 0u;
    goto LABEL_15;
  }

  v13 = v12;
  v14 = sub_2741C7D6C();

  *&v35 = 0xD000000000000017;
  *(&v35 + 1) = 0x80000002741DA4E0;
  sub_2741C850C();
  if (!*(v14 + 16) || (v15 = sub_274125164(&v30), (v16 & 1) == 0))
  {

    sub_27409D2A4(&v30);
    v27 = 0u;
    *v28 = 0u;
    goto LABEL_13;
  }

  sub_27409D308(*(v14 + 56) + 32 * v15, &v27);
  sub_27409D2A4(&v30);

  if (!v28[1])
  {
LABEL_13:

LABEL_15:
    sub_27409D420(&v27, &qword_280937E28, &unk_2741CB3D0);
LABEL_16:
    sub_2740CB218(0xD000000000000023, 0x80000002741DA520, 0xD000000000000029, 0x80000002741DA550);
LABEL_17:

    v25 = 0;
    v22 = 0;
LABEL_18:
    v23 = 0;
    v21 = 0;
    v20 = 0;
    a2 = 0;
    a3 = 0;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v17 = v30;
  if (!*(v30 + 16) || (v18 = sub_2741251AC(a4, a5), (v19 & 1) == 0))
  {

LABEL_22:

    v30 = 0;
    v31 = 0xE000000000000000;
    sub_2741C856C();

    v30 = 0xD000000000000017;
    v31 = 0x80000002741DA580;
    MEMORY[0x2743E5FB0](a4, a5);

    sub_2740CB218(v30, v31, 0xD000000000000029, 0x80000002741DA550);

    goto LABEL_17;
  }

  sub_27409D308(*(v17 + 56) + 32 * v18, &v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v20 = *(&v27 + 1);
  v21 = v27;
  type metadata accessor for SystemIPConfiguration();
  swift_allocObject();

  if (!sub_2740ADCF8(v21, v20, a2, a3))
  {
    goto LABEL_22;
  }

  sub_2740AE4C0(&v30);
  v22 = v31;
  if (!v31)
  {
    sub_2740CB218(0xD00000000000002CLL, 0x80000002741DA600, 0xD000000000000029, 0x80000002741DA550);

    v25 = 0;
    goto LABEL_18;
  }

  v23 = v32;
  v24 = v30;
  v26 = v30 >> 8;
  v35 = v33;
  v36 = v34;
  v37 = v31;
  v38 = v32;
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  sub_2740CE034(&v37, &v29);
  sub_2740CE034(&v38, &v29);
  sub_2741C856C();
  v29 = v27;
  MEMORY[0x2743E5FB0](0xD000000000000023, 0x80000002741DA630);
  LOBYTE(v27) = v24;
  BYTE7(v27) = HIBYTE(v24);
  *(&v27 + 5) = HIDWORD(v24) >> 8;
  *(&v27 + 1) = v26;
  *(&v27 + 1) = v22;
  v28[0] = v23;
  *&v28[1] = v35;
  *&v28[3] = v36;
  sub_2741C862C();
  sub_27409D420(&v30, &qword_280938CE0, &qword_2741CD9F8);
  sub_2740CB460(v29, *(&v29 + 1));

  v25 = v24 & 1;
LABEL_19:
  *a6 = v25;
  a6[1] = v22;
  a6[2] = v23;
  a6[3] = v21;
  a6[4] = v20;
  a6[5] = a2;
  a6[6] = a3;
}

uint64_t sub_2740CE034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740CE0A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740CE528();
  sub_2741C6A0C();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2740CE120(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2740CE1E0(v1, v2);
}

uint64_t sub_2740CE160()
{
  swift_getKeyPath();
  sub_2740CE528();
  sub_2741C6A0C();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2740CE1E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_2741C86DC() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    sub_2740CE528();
    sub_2741C69FC();
  }
}

uint64_t sub_2740CE310()
{

  v1 = OBJC_IVAR____TtC15WiFiSettingsKit9DNSDomain___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DNSDomain(uint64_t a1)
{
  result = qword_280938CF0;
  if (!qword_280938CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2740CE408(uint64_t a1)
{
  result = sub_2741C6A4C();
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

uint64_t sub_2740CE4A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2740CE1E0(v1, v2);
}

uint64_t sub_2740CE4E8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

unint64_t sub_2740CE528()
{
  result = qword_280938780;
  if (!qword_280938780)
  {
    type metadata accessor for DNSDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938780);
  }

  return result;
}

id sub_2740CE580(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D02B48]) init];
  if (a1)
  {
    sub_2740BA268(0, &qword_280938D00, 0x277D02B00);
    a1 = sub_2741C7FCC();
  }

  [v2 setChannels_];

  [v2 setMaximumAge_];
  [v2 setMergeScanResults_];
  [v2 setScanType_];
  [v2 setNumberOfScans_];
  [v2 setDwellTime_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938980, &qword_2741CCB70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2741CDA90;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  *(v3 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  *(v3 + 56) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  *(v3 + 64) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  v4 = sub_2741C7FCC();

  [v2 setANQPElementIDListForPasspointScanResults_];

  [v2 setIncludeMatchingKnownNetworkProfiles_];
  return v2;
}

uint64_t sub_2740CE980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_2740A6D94(a3, v26 - v11, &qword_280937E30, &qword_2741CDC20);
  v13 = sub_2741C80DC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_27409D420(v12, &qword_280937E30, &qword_2741CDC20);
  }

  else
  {
    sub_2741C80CC();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2741C805C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2741C7EEC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2740CEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_2740A6D94(a3, v26 - v11, &qword_280937E30, &qword_2741CDC20);
  v13 = sub_2741C80DC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_27409D420(v12, &qword_280937E30, &qword_2741CDC20);
  }

  else
  {
    sub_2741C80CC();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2741C805C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2741C7EEC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D90, &qword_2741CDDC0);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D90, &qword_2741CDDC0);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t PasswordAlertModel.password.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t sub_2740CF008@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2740CF08C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2741C6BFC();
}

uint64_t PasswordAlertModel.password.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2741C6BFC();
}

uint64_t (*PasswordAlertModel.password.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_2741C6BDC();
  return sub_2740D2D80;
}

uint64_t sub_2740CF250(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D18, &qword_2741CDB20);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D10, &qword_2741CDB18);
  sub_2741C6BCC();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PasswordAlertModel.$password.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D18, &qword_2741CDB20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D10, &qword_2741CDB18);
  sub_2741C6BCC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PasswordAlertModel.$password.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D18, &qword_2741CDB20);
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

  v10 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__password;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D10, &qword_2741CDB18);
  sub_2741C6BBC();
  swift_endAccess();
  return sub_2740D2D84;
}

uint64_t (*PasswordAlertModel.passwordVisible.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_2741C6BDC();
  return sub_2740CF778;
}

uint64_t (*PasswordAlertModel.$passwordVisible.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
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

  v10 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__passwordVisible;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BBC();
  swift_endAccess();
  return sub_2740CF914;
}

uint64_t (*PasswordAlertModel.rememberThisNetwork.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_2741C6BDC();
  return sub_2740D2D80;
}

uint64_t sub_2740CFA30(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BCC();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t sub_2740CFBC8(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BCC();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*PasswordAlertModel.$rememberThisNetwork.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
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

  v10 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__rememberThisNetwork;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BBC();
  swift_endAccess();
  return sub_2740D2D84;
}

uint64_t sub_2740CFE84(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v3;
}

uint64_t sub_2740CFF04@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  *a4 = v6;
  return result;
}

uint64_t sub_2740CFF98(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2741C6BFC();
}

uint64_t sub_2740D0020(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2741C6BFC();
}

uint64_t (*PasswordAlertModel.passwordReceived.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_2741C6BDC();
  return sub_2740D2D80;
}

void sub_2740D0130(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2740D01B4(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2741C6BBC();
  return swift_endAccess();
}

uint64_t sub_2740D022C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_2741C6BBC();
  return swift_endAccess();
}

uint64_t (*PasswordAlertModel.$passwordReceived.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
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

  v10 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__passwordReceived;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BBC();
  swift_endAccess();
  return sub_2740D2D84;
}

void sub_2740D0424(uint64_t a1, char a2)
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
    sub_2741C6BCC();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_2741C6BCC();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t PasswordAlertModel.passwordListener.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_passwordListener;
  swift_beginAccess();
  return sub_27409D4E4(v1 + v3, a1);
}

uint64_t PasswordAlertModel.passwordListener.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_passwordListener;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_27409D118(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t PasswordAlertModel.networkName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_networkName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PasswordAlertModel.networkName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_networkName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t PasswordAlertModel.securityType.getter()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_securityType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PasswordAlertModel.securityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_securityType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PasswordAlertModel.__allocating_init(passwordListener:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PasswordAlertModel.init(passwordListener:completion:)(a1, a2, a3);
  return v6;
}

char *PasswordAlertModel.init(passwordListener:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v43 = a2;
  v44 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D10, &qword_2741CDB18);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v42 - v16;
  v18 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__password;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_2741C6BAC();
  (*(v14 + 32))(&v4[v18], v17, v13);
  v19 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__passwordVisible;
  LOBYTE(v47) = 0;
  sub_2741C6BAC();
  v20 = *(v9 + 32);
  v20(&v4[v19], v12, v8);
  v21 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__rememberThisNetwork;
  LOBYTE(v47) = 1;
  sub_2741C6BAC();
  v20(&v4[v21], v12, v8);
  v22 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__passwordReceived;
  LOBYTE(v47) = 0;
  sub_2741C6BAC();
  v20(&v4[v22], v12, v8);
  v23 = &v4[OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_subscription];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v24 = &v4[OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_passwordListener];
  sub_27409D4E4(a1, &v4[OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_passwordListener]);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = (*(v26 + 8))(v25, v26);
  v28 = &v4[OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_networkName];
  *v28 = v27;
  v28[1] = v29;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  *&v4[OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_securityType] = (*(v31 + 32))(v30, v31);
  v32 = &v4[OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_completion];
  *v32 = v43;
  v32[1] = a3;
  swift_beginAccess();
  v33 = *(v24 + 3);
  v34 = *(v24 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v24, v33);
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v35, v35);
  v38 = &v42 - v37;
  (*(v36 + 16))(&v42 - v37);
  v39 = *(v34 + 72);

  v40 = v39(v33, v34);
  (*(v36 + 8))(v38, v33);
  v45 = v4;
  v46 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D48, &qword_2741CDC10);
  sub_2740D0D9C();
  sub_2740D2634(&qword_280938D58, &protocol conformance descriptor for PasswordAlertModel);
  sub_2741C6C1C();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

unint64_t sub_2740D0D9C()
{
  result = qword_280938D50;
  if (!qword_280938D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938D48, &qword_2741CDC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938D50);
  }

  return result;
}

uint64_t type metadata accessor for PasswordAlertModel(uint64_t a1)
{
  result = qword_280938D70;
  if (!qword_280938D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall PasswordAlertModel.listenForPassword()()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_passwordListener;
  swift_beginAccess();
  sub_27409D4E4(v0 + v1, v4);
  v2 = v5;
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v3 + 56))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_2740D0EE0(uint64_t a1)
{
  v2 = type metadata accessor for PasswordAlertResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2740D0F3C()
{
  v1 = v0 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_subscription;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_27409D4E4(v1, &v3);
    __swift_project_boxed_opaque_existential_1(&v3, *(&v4 + 1));
    sub_2741C6B1C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v3);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_2740D2B8C(&v3, v1);
  return swift_endAccess();
}

uint64_t sub_2740D1000(char a1)
{
  v3 = v1;
  v4 = type metadata accessor for PasswordAlertResult(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_passwordListener;
  swift_beginAccess();
  sub_27409D4E4(v3 + v9, v21);
  v10 = v22;
  v11 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v11 + 64))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v12 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_completion);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2741C6BEC();

  v13 = v21[0];
  v14 = v21[1];
  v15 = *(v5 + 36);
  v16 = type metadata accessor for EnterpriseIdentity(0);
  (*(*(v16 - 8) + 56))(&v8[v15], 1, 1, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v17 = v21[0];
  *v8 = a1;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = v13;
  *(v8 + 4) = v14;
  v8[*(v5 + 40)] = v17;
  v12(v8);

  sub_2740D0EE0(v8);
  v18 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_subscription;
  swift_beginAccess();
  sub_2740A6D94(v3 + v18, v21, &qword_280938D60, &qword_2741CDC18);
  sub_2740D0F3C();
  return sub_27409D420(v21, &qword_280938D60, &qword_2741CDC18);
}

uint64_t PasswordAlertModel.receive(subscription:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2741C6B2C();
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_27409D4E4(a1, v12);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  sub_27409D118(v12, (v9 + 5));

  sub_2740CE980(0, 0, v7, &unk_2741CDC30, v9);
}

uint64_t sub_2740D13C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_2741C80AC();
  v5[12] = sub_2741C809C();
  v7 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740D145C, v7, v6);
}

uint64_t sub_2740D145C()
{
  v1 = v0[11];
  v2 = v0[10];

  sub_27409D4E4(v1, (v0 + 2));
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_subscription;
  swift_beginAccess();
  sub_2740D2B8C((v0 + 2), v2 + v3);
  swift_endAccess();
  v4 = v0[1];

  return v4();
}

uint64_t sub_2740D1500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_2740D13C4(a1, v4, v5, v6, (v1 + 5));
}

uint64_t PasswordAlertModel.receive(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v12 - v7;
  v9 = sub_2741C80DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2740CE980(0, 0, v8, &unk_2741CDC40, v10);

  return 1;
}

uint64_t sub_2740D16E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_27409D648;

  return sub_2740D1860(a5, a6);
}

uint64_t sub_2740D1798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2740A7434;

  return sub_2740D16E8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2740D1860(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = type metadata accessor for PasswordAlertResult(0);
  v3[18] = swift_task_alloc();
  sub_2741C80AC();
  v3[19] = sub_2741C809C();
  v5 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740D192C, v5, v4);
}

uint64_t sub_2740D192C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v16 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);

  v5 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_passwordListener;
  swift_beginAccess();
  sub_27409D4E4(v2 + v5, v0 + 16);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  (*(v7 + 64))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 160) = 1;

  sub_2741C6BFC();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v4;
  *(v0 + 88) = v3;

  sub_2741C6BFC();
  v8 = *(v2 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_completion);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2741C6BEC();

  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v11 = *(v16 + 28);
  v12 = type metadata accessor for EnterpriseIdentity(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v13 = *(v0 + 161);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v9;
  *(v1 + 32) = v10;
  *(v1 + *(v16 + 32)) = v13;
  v8(v1);

  sub_2740D0EE0(v1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t PasswordAlertModel.deinit()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__password;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D10, &qword_2741CDB18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__passwordVisible;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__rememberThisNetwork, v4);
  v5(v0 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__passwordReceived, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_passwordListener));

  sub_27409D420(v0 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_subscription, &qword_280938D60, &qword_2741CDC18);
  return v0;
}

uint64_t PasswordAlertModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__password;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D10, &qword_2741CDB18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__passwordVisible;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__rememberThisNetwork, v4);
  v5(v0 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel__passwordReceived, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_passwordListener));

  sub_27409D420(v0 + OBJC_IVAR____TtC15WiFiSettingsKit18PasswordAlertModel_subscription, &qword_280938D60, &qword_2741CDC18);

  return swift_deallocClassInstance();
}

uint64_t sub_2740D1EE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2741C6B5C();
  *a1 = result;
  return result;
}

uint64_t sub_2740D1F38(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2741C6B2C();
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_27409D4E4(a1, v12);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  sub_27409D118(v12, (v9 + 5));

  sub_2740CE980(0, 0, v6, &unk_2741CDD88, v9);
}

uint64_t sub_2740D2090(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v8 = *a1;
  v7 = a1[1];
  v9 = *v1;
  v10 = sub_2741C80DC();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v11[5] = v8;
  v11[6] = v7;

  sub_2740CE980(0, 0, v6, &unk_2741CDD80, v11);

  return 1;
}

uint64_t sub_2740D21FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2740D22F4;

  return v6(a1);
}

uint64_t sub_2740D22F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2740D23EC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2740D24E0;

  return v5(v2 + 32);
}

uint64_t sub_2740D24E0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2740D2634(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PasswordAlertModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2740D27B0(uint64_t a1)
{
  sub_2740D2900(319, &qword_280938D80, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2740D2900(319, &qword_280938D88, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2740D2900(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2741C6C0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_28Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2740D29DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_2740D13C4(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_2740D2A9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2740D2AD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2740A7434;

  return sub_2740D21FC(a1, v4);
}

uint64_t sub_2740D2B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D60, &qword_2741CDC18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740D2BFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2740A7434;

  return sub_2740D23EC(a1, v4);
}

uint64_t sub_2740D2CB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27409D648;

  return sub_2740D23EC(a1, v4);
}

uint64_t getEnumTagSinglePayload for ScanError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ScanError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2740D2E70()
{
  sub_2741C87DC();
  MEMORY[0x2743E6870](0);
  return sub_2741C880C();
}

uint64_t sub_2740D2EDC(uint64_t a1)
{
  sub_2741C87DC();
  MEMORY[0x2743E6870](0);
  return sub_2741C880C();
}

unint64_t sub_2740D2F38(uint64_t a1)
{
  result = sub_2740D2F60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2740D2F60()
{
  result = qword_280938D98;
  if (!qword_280938D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938D98);
  }

  return result;
}

unint64_t sub_2740D2FB8()
{
  result = qword_280938DA0;
  if (!qword_280938DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938DA0);
  }

  return result;
}

id sub_2740D300C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DC0, &unk_2741CDF00);
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v0 + 16) = result;
  off_280938DA8 = v0;
  return result;
}

uint64_t Settings.askToJoinNetworks.getter()
{
  if (qword_280937368 != -1)
  {
    swift_once();
  }

  v1 = *(off_280938DA8 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DB0, &qword_2741CDEB0);
  v11.receiver = objc_allocWithZone(v2);
  v11.super_class = v2;
  v3 = objc_msgSendSuper2(&v11, sel_init);
  v4 = [v1 objectForKey_];

  if (v4)
  {
    v5 = v4[2];

    v6 = [v5 askToJoinMode];
  }

  else
  {
    v7 = [*(v0 + 16) userSettings];
    if (v7)
    {
      v8 = v7;
      v9 = v7;
      sub_2740D31F4(v8);
      v6 = [v9 askToJoinMode];
    }

    else
    {
      sub_2740CB218(0xD000000000000036, 0x80000002741DA7C0, 0xD000000000000011, 0x80000002741DA800);
      return 2;
    }
  }

  return v6;
}

void sub_2740D31F4(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DB8, &qword_2741CDEB8);
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v4 = *(v1 + 16);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DB0, &qword_2741CDEB0);
    v10.receiver = objc_allocWithZone(v5);
    v10.super_class = v5;
    v6 = a1;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    [v4 setObject:v3 forKey:{v7, v10.receiver, v10.super_class}];
  }

  else
  {
    v8 = *(v1 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DB0, &qword_2741CDEB0);
    v11.receiver = objc_allocWithZone(v9);
    v11.super_class = v9;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    [v8 removeObjectForKey_];
  }
}

uint64_t Settings.autoJoinHotspotsMode.getter()
{
  if (qword_280937368 != -1)
  {
    swift_once();
  }

  v1 = *(off_280938DA8 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DB0, &qword_2741CDEB0);
  v11.receiver = objc_allocWithZone(v2);
  v11.super_class = v2;
  v3 = objc_msgSendSuper2(&v11, sel_init);
  v4 = [v1 objectForKey_];

  if (v4)
  {
    v5 = v4[2];

    v6 = [v5 autoHotspotMode];
  }

  else
  {
    v7 = [*(v0 + 16) userSettings];
    if (v7)
    {
      v8 = v7;
      v9 = v7;
      sub_2740D31F4(v8);
      v6 = [v9 autoHotspotMode];
    }

    else
    {
      sub_2740CB218(0xD00000000000003ALL, 0x80000002741DA820, 0xD000000000000014, 0x80000002741DA860);
      return 1;
    }
  }

  return v6;
}

uint64_t Settings.__allocating_init(interface:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void static Settings.updateUserSettings(settings:)(void *a1)
{
  if (qword_280937368 != -1)
  {
    swift_once();
  }

  v2 = off_280938DA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DB8, &qword_2741CDEB8);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = v2[2];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DB0, &qword_2741CDEB0);
  v8.receiver = objc_allocWithZone(v5);
  v8.super_class = v5;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  [v4 setObject:v3 forKey:{v7, v8.receiver, v8.super_class}];
}

uint64_t Settings.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static WiFiCellularOutrank.cellularOutrankState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_280938DD8;
  return result;
}

uint64_t static WiFiCellularOutrank.cellularOutrankState.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_280938DD8 = v1;
  return result;
}

uint64_t WiFiCellularOutrank.CellularOutrankState.hashValue.getter()
{
  v1 = *v0;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v1);
  return sub_2741C880C();
}

void static WiFiCellularOutrank.registerForCellularOutrankStateNotification()()
{
  swift_beginAccess();
  if (dword_280938DC8 == -1)
  {
    sub_2740D3950();
    v1 = sub_2741C82CC();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    aBlock[4] = j___s15WiFiSettingsKit0aB15CellularOutrankC06updateeF5StateyyFZ_0;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2740D39B4;
    aBlock[3] = &block_descriptor_2;
    v3 = _Block_copy(aBlock);

    v4 = sub_2741C7EEC();
    swift_beginAccess();
    notify_register_dispatch((v4 + 32), &dword_280938DC8, v1, v3);
    swift_endAccess();

    _Block_release(v3);
  }
}

unint64_t sub_2740D3950()
{
  result = qword_280938588;
  if (!qword_280938588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280938588);
  }

  return result;
}

uint64_t sub_2740D39B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s15WiFiSettingsKit0aB15CellularOutrankC06updateeF5StateyyFZ_0()
{
  swift_beginAccess();
  v0 = qword_280938DD0;
  swift_beginAccess();
  v1 = dword_280938DC8;
  swift_beginAccess();
  state = notify_get_state(v1, &qword_280938DD0);
  result = swift_endAccess();
  if (!state && v0 != qword_280938DD0)
  {
    if (qword_280938DD0)
    {
      if ((qword_280938DD0 & 0x40000000) != 0)
      {
        v4 = 5;
      }

      else if ((qword_280938DD0 & 0x2000000) != 0)
      {
        v4 = 1;
      }

      else if ((qword_280938DD0 & 0x8000) != 0)
      {
        v4 = 3;
      }

      else if ((qword_280938DD0 & 0x800) != 0)
      {
        v4 = 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    result = swift_beginAccess();
    byte_280938DD8 = v4;
  }

  return result;
}

unint64_t sub_2740D3B48()
{
  result = qword_280938DE0;
  if (!qword_280938DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938DE0);
  }

  return result;
}

uint64_t sub_2740D3B9C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_280938DD8;
  return result;
}

uint64_t sub_2740D3BE8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_280938DD8 = v1;
  return result;
}

uint64_t sub_2740D3C7C()
{
  v1 = [v0 disable6EMode];
  v2 = [v0 isStandalone6G];
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741DA910);
  sub_2740D40EC();
  v4 = (v3 & 1) == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v6);

  MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741DA930);
  [v0 disable6EMode];
  v7 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v7);

  MEMORY[0x2743E5FB0](0x6E4F45367369202CLL, 0xEC000000203A796CLL);
  if (v2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v8, v9);

  sub_2740CB460(0, 0xE000000000000000);

  if (v2)
  {
    v10 = 0;
  }

  else
  {
    sub_2740D40EC();
    v10 = v11 | (v1 == 2);
  }

  return v10 & 1;
}

uint64_t sub_2740D3E48()
{
  v1 = sub_2741C696C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  result = [v0 isCarPlay];
  if (result)
  {
    v11 = [v0 lastJoinedByUserAt];
    if (v11)
    {
      v12 = v11;
      sub_2741C693C();

      (*(v2 + 32))(v9, v5, v1);
      (*(v2 + 56))(v9, 0, 1, v1);
      sub_2740D4084(v9);
    }

    else
    {
      (*(v2 + 56))(v9, 1, 1, v1);
      sub_2740D4084(v9);
      v13 = [v0 payloadUUID];
      if (!v13)
      {
        return 1;
      }
    }

    return 2;
  }

  return result;
}

uint64_t sub_2740D401C()
{
  v1 = [*v0 networkName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2741C7E7C();

  return v3;
}

uint64_t sub_2740D4084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2740D40EC()
{
  v1 = [v0 BSSList];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_2740D4324();
  sub_2740D4370();
  v3 = sub_2741C81EC();

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_2741C844C();
    sub_2741C821C();
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v18 = 0;
  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_2741C84BC() || (swift_dynamicCast(), (v14 = v19) == 0))
    {
LABEL_22:
      sub_2740D43C8(v3);
      return;
    }

LABEL_19:
    v15 = [v14 channel];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 band];

      v18 |= v17 == 3;
    }

    else
    {
    }
  }

  v12 = v6;
  v13 = v7;
  if (v7)
  {
LABEL_15:
    v7 = (v13 - 1) & v13;
    v14 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t sub_2740D4324()
{
  result = qword_280938DF0;
  if (!qword_280938DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280938DF0);
  }

  return result;
}

unint64_t sub_2740D4370()
{
  result = qword_280938DF8;
  if (!qword_280938DF8)
  {
    sub_2740D4324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938DF8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2740D43F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2740D4438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2740D44A8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E00, &qword_2741CE118);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E08, &unk_2741CE120);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - v11;
  v13 = sub_2741C70AC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_2741C82AC();
    v18 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v14 + 8))(v17, v13);
    a1 = v36[0];
  }

  v19 = *__swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  swift_beginAccess();
  sub_2740A6D94(v19 + 16, &v34, &qword_280938E10, &qword_2741D8580);
  if (!v35)
  {

    sub_27409D420(&v34, &qword_280938E10, &qword_2741D8580);
    goto LABEL_9;
  }

  sub_27409D118(&v34, v36);
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v20 = sub_2740D4BE4();
  v21 = *(v20 + 16);
  v22 = type metadata accessor for ScanState(0);
  if (v21(v22, v20) != 2)
  {
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v23 = v21(v22, v20);

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    if (v23 == 64)
    {
      goto LABEL_8;
    }

LABEL_9:
    v24 = 0.0;
    v25 = v36;
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v36);
LABEL_8:
  v24 = 1.0;
  v25 = &v34;
LABEL_10:
  sub_2741C6D3C();
  v26 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A60, &unk_2741CE130) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A78, &unk_2741CF6C0) + 28);
  v28 = *MEMORY[0x277CDF440];
  v29 = sub_2741C6CCC();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E18, &qword_2741CE170) + 36)] = 257;
  sub_2741C7C1C();
  sub_2741C6D8C();
  v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E20, &qword_2741CF6A0) + 36)];
  v31 = v25[1];
  *v30 = *v25;
  v30[1] = v31;
  v30[2] = v25[2];
  *&v12[*(v9 + 36)] = v24;
  sub_2740A6D94(v12, v8, &qword_280938E08, &unk_2741CE120);
  swift_storeEnumTagMultiPayload();
  sub_2740D495C();
  sub_2741C72CC();
  return sub_27409D420(v12, &qword_280938E08, &unk_2741CE120);
}

unint64_t sub_2740D495C()
{
  result = qword_280938E28;
  if (!qword_280938E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938E08, &unk_2741CE120);
    sub_2740D49E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938E28);
  }

  return result;
}

unint64_t sub_2740D49E8()
{
  result = qword_280938E30;
  if (!qword_280938E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938E20, &qword_2741CF6A0);
    sub_2740D4A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938E30);
  }

  return result;
}

unint64_t sub_2740D4A74()
{
  result = qword_280938E38;
  if (!qword_280938E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938E18, &qword_2741CE170);
    sub_2740D4B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938E38);
  }

  return result;
}

unint64_t sub_2740D4B00()
{
  result = qword_280938E40;
  if (!qword_280938E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938A60, &unk_2741CE130);
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0, MEMORY[0x277CDD7F8]);
    sub_2740A6D24(&qword_280938E48, &qword_280938A78, &unk_2741CF6C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938E40);
  }

  return result;
}

unint64_t sub_2740D4BE4()
{
  result = qword_280938E50;
  if (!qword_280938E50)
  {
    type metadata accessor for ScanState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938E50);
  }

  return result;
}

unint64_t sub_2740D4C40()
{
  result = qword_280938E58;
  if (!qword_280938E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938E60, &qword_2741CE178);
    sub_2740D495C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938E58);
  }

  return result;
}

uint64_t sub_2740D4CC4(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 217) = a1;
  v3 = sub_2741C6AFC();
  *(v2 + 176) = v3;
  *(v2 + 184) = *(v3 - 8);
  *(v2 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2740D4D88, 0, 0);
}

uint64_t sub_2740D4D88()
{
  v1 = *(v0 + 168);
  if (*(*(v1 + 24) + 16))
  {
    v2 = *(v0 + 217);
    *(v0 + 144) = 0;
    *(v0 + 152) = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0x20676E6975737369, 0xE800000000000000);
    *(v0 + 216) = v2;
    sub_2741C862C();
    MEMORY[0x2743E5FB0](0x6E61637320, 0xE500000000000000);
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = __swift_project_value_buffer(v7, qword_280945DD8);
    (*(v6 + 16))(v5, v8, v7);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v3, v4);

    (*(v6 + 8))(v5, v7);
    v9 = sub_2740CE580(0);
    *(v0 + 200) = v9;
    if (*(*(v1 + 24) + 16) && (sub_274125ECC(), (v10 & 1) != 0))
    {
      sub_2740D635C();

      v11 = sub_2741C7FCC();
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 168);
    [v9 setChannels_];

    [v9 setMergeScanResults_];
    v13 = *(v12 + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 160;
    *(v0 + 24) = sub_2740D5164;
    v14 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_274186F30;
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v14;
    [v13 performScanWithParameters:v9 reply:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 184);
    v15 = *(v0 + 192);
    v17 = *(v0 + 176);
    v18 = __swift_project_value_buffer(v17, qword_280945DD8);
    (*(v16 + 16))(v15, v18, v17);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD00000000000002FLL, 0x80000002741DAA30);
    (*(v16 + 8))(v15, v17);

    v19 = *(v0 + 8);
    v20 = MEMORY[0x277D84F90];

    return v19(v20);
  }
}

uint64_t sub_2740D5164()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_2740D52E8;
  }

  else
  {
    v2 = sub_2740D5274;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2740D5274()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2740D52E8()
{
  v1 = *(v0 + 200);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2740D5374()
{
  v47 = sub_2741C6AFC();
  v1 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v2);
  v46 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v5 = [*(v0 + 16) hardwareSupportedChannels];
  if (!v5)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v6 = v5;
  sub_2740D635C();
  v7 = sub_2741C7FEC();

  v51 = v4;
  if (v7 >> 62)
  {
LABEL_21:
    v8 = sub_2741C848C();
    v9 = v1;
    if (v8)
    {
LABEL_4:
      v10 = 0;
      v1 = v7 & 0xC000000000000001;
      v11 = MEMORY[0x277D84F90];
      do
      {
        v12 = v10;
        while (1)
        {
          if (v1)
          {
            v13 = MEMORY[0x2743E6600](v12, v7);
          }

          else
          {
            if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v13 = *(v7 + 8 * v12 + 32);
          }

          v14 = v13;
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          if ([v13 width] == 20)
          {
            break;
          }

          ++v12;
          if (v10 == v8)
          {
            goto LABEL_23;
          }
        }

        MEMORY[0x2743E6040]();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2741C800C();
        }

        sub_2741C802C();
        v11 = v51;
      }

      while (v10 != v8);
      goto LABEL_23;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v1;
    if (v8)
    {
      goto LABEL_4;
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_23:

  v1 = v9;
  v4 = MEMORY[0x277D84F90];
LABEL_24:
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_2741C856C();

  v51 = 0x20646E756F46;
  v52 = 0xE600000000000000;
  if (v11)
  {
    if (v11 >> 62)
    {
      v15 = sub_2741C848C();
    }

    else
    {
      v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v15 = 0;
  }

  v49 = v15;
  v50 = v11 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E80, &qword_2741CE250);
  v16 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v16);

  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741DA9D0);
  v17 = v51;
  v18 = v52;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v19 = v47;
  v20 = __swift_project_value_buffer(v47, qword_280945DD8);
  v21 = v46;
  v43 = *(v1 + 16);
  v44 = v20;
  v43(v46);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v17, v18);

  v24 = *(v1 + 8);
  v23 = v1 + 8;
  v22 = v24;
  result = (v24)(v21, v19);
  if (v11)
  {
    v26 = v11;
  }

  else
  {
    v26 = v4;
  }

  if (v26 >> 62)
  {
    result = sub_2741C848C();
    v27 = result;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v23;
  v42 = v22;
  if (!v27)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_55:

    v51 = 0;
    v52 = 0xE000000000000000;
    sub_2741C856C();

    v51 = 0xD000000000000017;
    v52 = 0x80000002741DA9F0;
    v35 = sub_2740D635C();
    v36 = MEMORY[0x2743E6080](v29, v35);
    MEMORY[0x2743E5FB0](v36);

    v37 = v51;
    v38 = v52;
    v40 = v46;
    v39 = v47;
    (v43)(v46, v44, v47);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v37, v38);

    v42(v40, v39);
    return v29;
  }

  if (v27 >= 1)
  {
    v28 = 0;
    v29 = MEMORY[0x277D84F90];
    v48 = xmmword_2741CE180;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x2743E6600](v28, v26);
      }

      else
      {
        v30 = *(v26 + 8 * v28 + 32);
      }

      v31 = v30;
      if ([v30 flags] & 0x2000) == 0 || (objc_msgSend(v31, sel_flags) & 0x2000) != 0 && ((v33 = objc_msgSend(v31, sel_channel), v34 = vdupq_n_s64(v33), (vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2883261D0, v34), vceqq_s64(unk_2883261E0, v34)), vuzp1q_s32(vceqq_s64(xmmword_2883261F0, v34), vceqq_s64(unk_288326200, v34)))))) || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_288326210, v34), vceqq_s64(unk_288326220, v34)), v48)) & 0xF) != 0 || qword_288326230 == v33 || unk_288326238 == v33 || qword_288326240 == v33))
      {
        v32 = v31;
        MEMORY[0x2743E6040]();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41[1] = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2741C800C();
        }

        sub_2741C802C();

        v29 = v53;
      }

      else
      {
      }

      ++v28;
    }

    while (v27 != v28);
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_2740D59B0()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for WiFiBand(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

uint64_t storeEnumTagSinglePayload for WiFiBand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
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
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
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

unint64_t sub_2740D5B68()
{
  result = qword_280938E68;
  if (!qword_280938E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938E68);
  }

  return result;
}

void *sub_2740D5BBC(unint64_t a1)
{
  v2 = sub_2741C6AFC();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v63 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_274178210(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_62:
    v6 = sub_2741C848C();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v67 = v6;
      v68 = a1 & 0xC000000000000001;
      v66 = a1 & 0xFFFFFFFFFFFFFF8;
      v11 = &unk_279ECC000;
      while (1)
      {
        if (v68)
        {
          v14 = MEMORY[0x2743E6600](v7, a1);
        }

        else
        {
          if (v7 >= *(v66 + 16))
          {
            goto LABEL_56;
          }

          v14 = *(a1 + 8 * v7 + 32);
        }

        v15 = v14;
        v16 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
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
          __break(1u);
          goto LABEL_62;
        }

        if (([v14 v11[209]] & 8) != 0)
        {
          sub_2740BA7B8(v8, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v5;
          v27 = sub_274125ECC();
          v29 = v5[2];
          v30 = (v28 & 1) == 0;
          v22 = __OFADD__(v29, v30);
          v31 = v29 + v30;
          if (v22)
          {
            goto LABEL_55;
          }

          v32 = v28;
          if (v5[3] >= v31)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_30;
            }

            v52 = v27;
            sub_274106B64();
            v27 = v52;
            v5 = v69;
            v11 = &unk_279ECC000;
            if ((v32 & 1) == 0)
            {
LABEL_31:
              v5[(v27 >> 6) + 8] |= 1 << v27;
              *(v5[6] + v27) = 0;
              *(v5[7] + 8 * v27) = MEMORY[0x277D84F90];
              v42 = v5[2];
              v22 = __OFADD__(v42, 1);
              v43 = v42 + 1;
              if (v22)
              {
                goto LABEL_58;
              }

              v5[2] = v43;
            }
          }

          else
          {
            sub_2741057B8(v31, isUniquelyReferenced_nonNull_native);
            v5 = v69;
            v27 = sub_274125ECC();
            if ((v32 & 1) != (v33 & 1))
            {
              goto LABEL_67;
            }

LABEL_30:
            v11 = &unk_279ECC000;
            if ((v32 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v44 = (v5[7] + 8 * v27);
          v45 = v15;
          MEMORY[0x2743E6040]();
          if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2741C800C();
            v11 = &unk_279ECC000;
          }

          sub_2741C802C();
          v8 = sub_2740D63C0;
          v6 = v67;
          goto LABEL_8;
        }

        if (([v15 v11[209]] & 0x10) != 0)
        {
          sub_2740BA7B8(v9, 0);
          v34 = swift_isUniquelyReferenced_nonNull_native();
          v69 = v5;
          v35 = sub_274125ECC();
          v37 = v5[2];
          v38 = (v36 & 1) == 0;
          v22 = __OFADD__(v37, v38);
          v39 = v37 + v38;
          if (v22)
          {
            goto LABEL_57;
          }

          v40 = v36;
          if (v5[3] >= v39)
          {
            if (v34)
            {
              goto LABEL_37;
            }

            v53 = v35;
            sub_274106B64();
            v35 = v53;
            v5 = v69;
            if ((v40 & 1) == 0)
            {
LABEL_38:
              v5[(v35 >> 6) + 8] |= 1 << v35;
              *(v5[6] + v35) = 1;
              *(v5[7] + 8 * v35) = MEMORY[0x277D84F90];
              v46 = v5[2];
              v22 = __OFADD__(v46, 1);
              v47 = v46 + 1;
              if (v22)
              {
                goto LABEL_60;
              }

              v5[2] = v47;
            }
          }

          else
          {
            sub_2741057B8(v39, v34);
            v5 = v69;
            v35 = sub_274125ECC();
            if ((v40 & 1) != (v41 & 1))
            {
LABEL_67:
              result = sub_2741C871C();
              __break(1u);
              return result;
            }

LABEL_37:
            if ((v40 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          v12 = (v5[7] + 8 * v35);
          v13 = v15;
          MEMORY[0x2743E6040]();
          if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2741C800C();
          }

          sub_2741C802C();
          v9 = sub_2740D63C0;
          goto LABEL_7;
        }

        if (([v15 v11[209]] & 0x2000) == 0)
        {
          goto LABEL_8;
        }

        sub_2740BA7B8(v10, 0);
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v5;
        v18 = sub_274125ECC();
        v20 = v5[2];
        v21 = (v19 & 1) == 0;
        v22 = __OFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          goto LABEL_59;
        }

        v24 = v19;
        if (v5[3] < v23)
        {
          break;
        }

        if (v17)
        {
          goto LABEL_42;
        }

        v54 = v18;
        sub_274106B64();
        v18 = v54;
        v5 = v69;
        if ((v24 & 1) == 0)
        {
LABEL_43:
          v5[(v18 >> 6) + 8] |= 1 << v18;
          *(v5[6] + v18) = 2;
          *(v5[7] + 8 * v18) = MEMORY[0x277D84F90];
          v48 = v5[2];
          v22 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v22)
          {
            goto LABEL_61;
          }

          v5[2] = v49;
        }

LABEL_45:
        v50 = (v5[7] + 8 * v18);
        v51 = v15;
        MEMORY[0x2743E6040]();
        if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2741C800C();
        }

        sub_2741C802C();
        v10 = sub_2740D63C0;
LABEL_7:
        v6 = v67;
        v11 = &unk_279ECC000;
LABEL_8:

        ++v7;
        if (v16 == v6)
        {
          goto LABEL_64;
        }
      }

      sub_2741057B8(v23, v17);
      v5 = v69;
      v18 = sub_274125ECC();
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_67;
      }

LABEL_42:
      if ((v24 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_45;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_64:
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_2741C856C();

  v69 = 0xD000000000000020;
  v70 = 0x80000002741DA9A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E70, &qword_2741CE248);
  sub_2740D6308();
  v55 = sub_2741C7D7C();
  MEMORY[0x2743E5FB0](v55);

  v56 = v69;
  v57 = v70;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v58 = v65;
  v59 = __swift_project_value_buffer(v65, qword_280945DD8);
  v61 = v63;
  v60 = v64;
  (*(v64 + 16))(v63, v59, v58);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v56, v57);

  (*(v60 + 8))(v61, v58);
  sub_2740BA7B8(v8, 0);
  sub_2740BA7B8(v9, 0);
  sub_2740BA7B8(v10, 0);
  return v5;
}

unint64_t sub_2740D6308()
{
  result = qword_280938E78;
  if (!qword_280938E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938E78);
  }

  return result;
}

unint64_t sub_2740D635C()
{
  result = qword_280938D00;
  if (!qword_280938D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280938D00);
  }

  return result;
}

uint64_t sub_2740D6518()
{
  swift_getKeyPath();
  sub_2740D6DCC();
  sub_2741C6A0C();

  return *(v0 + 16);
}

uint64_t sub_2740D6588@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740D6DCC();
  sub_2741C6A0C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2740D6628(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2740D6DCC();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_2740D6708()
{
  swift_getKeyPath();
  sub_2740D6DCC();
  sub_2741C6A0C();

  return *(v0 + 17);
}

uint64_t sub_2740D6778@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740D6DCC();
  sub_2741C6A0C();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_2740D6818(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2740D6DCC();
    sub_2741C69FC();
  }

  return result;
}

void sub_2740D6900()
{
  if (*(v0 + 16) == 1)
  {
    *(v0 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v2);
    sub_2740D6DCC();
    sub_2741C69FC();
  }

  if (*(v0 + 17) == 1)
  {
    *(v0 + 17) = 1;
  }

  else
  {
    v3 = swift_getKeyPath();
    MEMORY[0x28223BE20](v3, v4);
    sub_2740D6DCC();
    sub_2741C69FC();
  }
}

void sub_2740D6A88()
{
  if (*(v0 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v2);
    sub_2740D6DCC();
    sub_2741C69FC();

    if ((*(v0 + 17) & 1) == 0)
    {
LABEL_3:
      *(v0 + 17) = 0;
      return;
    }
  }

  else
  {
    *(v0 + 16) = 0;
    if ((*(v0 + 17) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = swift_getKeyPath();
  MEMORY[0x28223BE20](v3, v4);
  sub_2740D6DCC();
  sub_2741C69FC();
}

uint64_t sub_2740D6C04()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit23PasswordPromptViewState___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PasswordPromptViewState(uint64_t a1)
{
  result = qword_280938E98;
  if (!qword_280938E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2740D6CF4(uint64_t a1)
{
  result = sub_2741C6A4C();
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

unint64_t sub_2740D6DCC()
{
  result = qword_280938EA8;
  if (!qword_280938EA8)
  {
    type metadata accessor for PasswordPromptViewState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938EA8);
  }

  return result;
}

uint64_t sub_2740D6E90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2740D6ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_2740D6F30(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_2741C7DAC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return v3 == sub_2741C7DAC();
}

void *WiFiSystemConfiguration.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t WiFiSystemConfiguration.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2740D70F4()
{
  swift_getKeyPath();
  sub_2740D773C();
  sub_2741C6A0C();
}

uint64_t sub_2740D7168(uint64_t a1)
{

  v4 = sub_2741568A0(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2740D773C();
    sub_2741C69FC();
  }
}

uint64_t sub_2740D728C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_2740D773C();
  sub_2741C6A0C();

  v1 = *(v0 + 24);
  sub_2740D77C8(v1, *(v3 + 32), *(v3 + 40));
  return v1;
}

uint64_t sub_2740D7328@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740D773C();
  sub_2741C6A0C();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = *(v3 + 48);
  return sub_2740D77C8(v4, v5, v6);
}

uint64_t sub_2740D73B4(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2740D773C();
  sub_2741C69FC();
}

uint64_t sub_2740D746C()
{

  sub_2740D77B4(v0[3], v0[4], v0[5]);
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit24SystemConfigurationState___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SystemConfigurationState(uint64_t a1)
{
  result = qword_280938EB8;
  if (!qword_280938EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2740D7574(uint64_t a1)
{
  result = sub_2741C6A4C();
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

uint64_t sub_2740D7640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_2740D773C();
  sub_2741C69FC();
  sub_2740D77B4(a1, a2, a3);
}

unint64_t sub_2740D7714(uint64_t a1)
{
  result = sub_2740D773C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2740D773C()
{
  result = qword_280937DE8;
  if (!qword_280937DE8)
  {
    type metadata accessor for SystemConfigurationState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937DE8);
  }

  return result;
}

uint64_t sub_2740D77B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_2740D77C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_2740D77DC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v0 + 48);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  *(v2 + 48) = v8;
  sub_2740D77C8(v1, v3, v4);
  return sub_2740D77B4(v5, v6, v7);
}

uint64_t sub_2740D7854()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

WiFiSettingsKit::NetworkWarningType_optional __swiftcall NetworkWarningType.init(rawValue:)(WiFiSettingsKit::NetworkWarningType_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= WiFiSettingsKit_NetworkWarningType_unknownDefault)
  {
    value = WiFiSettingsKit_NetworkWarningType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

unint64_t sub_2740D78CC()
{
  result = qword_280938EC8;
  if (!qword_280938EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938EC8);
  }

  return result;
}

uint64_t sub_2740D7920()
{
  sub_2741C87DC();
  sub_2741C87FC();
  return sub_2741C880C();
}

uint64_t sub_2740D7994(uint64_t a1)
{
  sub_2741C87DC();
  sub_2741C87FC();
  return sub_2741C880C();
}

uint64_t getEnumTagSinglePayload for NetworkWarningType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkWarningType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2740D7B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for KnownNetwork(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2740D7C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for KnownNetwork(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ForgetNetworkSection(uint64_t a1)
{
  result = qword_280938ED0;
  if (!qword_280938ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2740D7E04(uint64_t a1)
{
  sub_2740D7F20(319, &qword_280937EA8, MEMORY[0x277CDD848]);
  if (v1 <= 0x3F)
  {
    sub_2740D7F20(319, &qword_280938EE0, type metadata accessor for NetworkDetailsModel);
    if (v2 <= 0x3F)
    {
      sub_2740A5754();
      if (v3 <= 0x3F)
      {
        type metadata accessor for WiFiSystemConfiguration();
        if (v4 <= 0x3F)
        {
          type metadata accessor for WiFiAssociator();
          if (v5 <= 0x3F)
          {
            type metadata accessor for KnownNetwork(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2740D7F20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2741C6CDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2740D7F90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2741C70AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  sub_2740D9488(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_2741C82AC();
    v15 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2740D8178()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for ForgetNetworkSection(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2741C82AC();
    v9 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2740D82C8@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = sub_2741C69BC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v79 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2741C7E2C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2741C7E0C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_2741C699C();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ForgetNetworkSection(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13, v17);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938EE8, &qword_2741CE718);
  v77 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v18);
  v20 = &v63 - v19;
  v83 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938EF0, &unk_2741CE720);
  sub_2740D942C(&qword_280938EF8, &qword_280938EF0, &unk_2741CE720);
  v82 = v20;
  sub_2741C7B9C();
  v21 = v1 + *(v14 + 32);
  v22 = *v21;
  v23 = *(v21 + 8);
  v87 = v22;
  v88 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v75 = v85;
  v76 = v84;
  v71 = v86;
  sub_2740D92A0(v1, &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v80 = swift_allocObject();
  sub_2740D9308(&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v80 + v24);
  if (qword_280937378 != -1)
  {
    swift_once();
  }

  v25 = [objc_opt_self() defaultManager];
  v26 = [v25 ubiquityIdentityToken];

  if (v26)
  {
    swift_unknownObjectRelease();
  }

  sub_2741C7DFC();
  sub_2741C7DEC();
  sub_2741C7DDC();
  sub_2741C7DEC();
  sub_2741C7E1C();
  sub_2741C69AC();
  v84 = sub_2741C7E9C();
  v85 = v27;
  sub_2740A6A74();
  v28 = sub_2741C76AC();
  v30 = v29;
  v68 = v31;
  v69 = v28;
  v67 = v32;
  sub_27409861C(v28, v32, v31 & 1);
  v70 = v30;

  sub_2741C714C();
  v33 = sub_2741C768C();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v63 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v40 = (type metadata accessor for WFButton(0) - 8);
  v41 = *(*v40 + 72);
  v42 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2741CC090;
  v44 = v43 + v42;
  v66 = v43;
  v79 = (v37 & 1);
  sub_27409861C(v33, v35, v37 & 1);

  v45 = v72;
  sub_2741C698C();
  v64 = v35;
  v46 = *(v73 + 32);
  v65 = v39;
  v47 = v74;
  v46(v44, v45, v74);
  *(v44 + v40[7]) = 1;
  v48 = (v44 + v40[8]);
  *v48 = nullsub_1;
  v48[1] = 0;
  v49 = v44 + v41;
  sub_2741C698C();
  v46(v49, v45, v47);
  v74 = &v63;
  *(v49 + v40[7]) = 2;
  v50 = (v49 + v40[8]);
  v51 = v80;
  *v50 = sub_2740D936C;
  v50[1] = v51;
  v53 = MEMORY[0x28223BE20](v51, v52);
  MEMORY[0x28223BE20](v53, v54);
  v55 = v63;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
  sub_2740D9384();
  sub_2740A5DB0();
  sub_2740A5EE4();
  v56 = v68;
  v57 = v69;
  v58 = v67;
  sub_2741C787C();
  v59 = v55;
  v60 = v55;
  v61 = v64;
  LOBYTE(v49) = v79;
  sub_2740A6AC8(v59, v64, v79);

  sub_2740A6AC8(v57, v58, v56 & 1);

  sub_2740A6AC8(v60, v61, v49);

  sub_2740A6AC8(v57, v58, v56 & 1);

  return (*(v77 + 8))(v82, v81);
}

uint64_t sub_2740D8BA4(uint64_t a1)
{
  v2 = type metadata accessor for ForgetNetworkSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  sub_2740D92A0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2740D9308(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C10, &unk_2741CE760);
  sub_2740D9770();
  return sub_2741C7A7C();
}

uint64_t sub_2740D8CE4(uint64_t a1)
{
  type metadata accessor for ForgetNetworkSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  return sub_2741C7A4C();
}

uint64_t sub_2740D8D58@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v17 = sub_2741C743C();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C08, &qword_2741CD160);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v17 - v7;
  if (qword_2809377E8 != -1)
  {
    swift_once();
  }

  v23 = qword_280946718;
  v24 = unk_280946720;
  sub_2740A6A74();

  v9 = sub_2741C76AC();
  v11 = v10;
  v23 = v9;
  v24 = v10;
  v13 = v12 & 1;
  v25 = v12 & 1;
  v26 = v14;
  sub_2741C741C();
  sub_2741C77DC();
  (*(v1 + 8))(v4, v17);
  sub_2740A6AC8(v9, v11, v13);

  v23 = qword_280946718;
  v24 = unk_280946720;
  v21 = MEMORY[0x277CE0BD8];
  v22 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  sub_2741C77BC();
  return (*(v18 + 8))(v8, v15);
}

uint64_t sub_2740D8FEC(uint64_t a1)
{
  v2 = sub_2741C6DBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ForgetNetworkSection(0);
  v8 = a1 + *(v7 + 36);
  sub_274198718(v8);
  v9 = sub_2740D8178();
  swift_getKeyPath();
  v12[1] = v9;
  sub_2740D985C(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v10 = *(v9 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork);

  if (v10)
  {
    if (*(v8 + 113) == 2)
    {
      sub_2741B199C(v8);
    }

    else
    {
      [*(*(*(a1 + *(v7 + 32)) + 16) + 16) disassociateWithReason_];
    }
  }

  sub_2740D7F90(v6);
  sub_2741C6DAC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2740D92A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForgetNetworkSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740D9308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForgetNetworkSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2740D9384()
{
  result = qword_280938F00;
  if (!qword_280938F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938EE8, &qword_2741CE718);
    sub_2740D942C(&qword_280938EF8, &qword_280938EF0, &unk_2741CE720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938F00);
  }

  return result;
}

uint64_t sub_2740D942C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2740D9488(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for ForgetNetworkSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2741C6DBC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 36);

  __swift_destroy_boxed_opaque_existential_1Tm((v6 + 72));
  v7 = *(type metadata accessor for KnownNetwork(0) + 64);
  v8 = sub_2741C689C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740D96FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ForgetNetworkSection(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2740D9770()
{
  result = qword_280938F08;
  if (!qword_280938F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938C10, &unk_2741CE760);
    swift_getOpaqueTypeConformance2();
    sub_2740D985C(&qword_280938F10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938F08);
  }

  return result;
}

uint64_t sub_2740D985C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2740D98A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938EE8, &qword_2741CE718);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  sub_2740D9384();
  sub_2740A5DB0();
  sub_2740A5EE4();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_2740D9998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_2740D99E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740D9A78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F18, &qword_2741CE878);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F20, &qword_2741CE880);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v21 - v11;
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F28, &qword_2741CE888);
  sub_2740A6D24(&qword_280938F30, &qword_280938F28, &qword_2741CE888, MEMORY[0x277CE14C0]);
  sub_2741C761C();
  if (qword_280937820 != -1)
  {
    swift_once();
  }

  v23 = qword_280946788;
  v24 = unk_280946790;
  v13 = sub_2740A6D24(&qword_280938F38, &qword_280938F18, &qword_2741CE878, MEMORY[0x277CDE580]);
  v14 = sub_2740A6A74();
  v15 = MEMORY[0x277D837D0];
  sub_2741C777C();
  v16 = (*(v4 + 8))(v7, v3);
  MEMORY[0x28223BE20](v16, v17);
  v21[-2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F40, &unk_2741CE890);
  v23 = v3;
  v24 = v15;
  v25 = v13;
  v26 = v14;
  swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F48, &qword_2741D04A0);
  v19 = sub_2740A6D24(&qword_280938F50, &qword_280938F48, &qword_2741D04A0, MEMORY[0x277CDD7A8]);
  v23 = v18;
  v24 = v19;
  swift_getOpaqueTypeConformance2();
  sub_2741C78BC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2740D9E18@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F68, &qword_2741CE920);
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v59 = &v58 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F70, &qword_2741CE928);
  MEMORY[0x28223BE20](v62, v6);
  v63 = &v58 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F78, &qword_2741CE930);
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F80, &qword_2741CE938);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v68 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F88, &unk_2741CE940);
  v66 = *(v18 - 8);
  v67 = v18;
  v20 = MEMORY[0x28223BE20](v18, v19);
  v65 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v58 - v23;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  v27 = a1[9];
  v26[9] = a1[8];
  v26[10] = v27;
  v26[11] = a1[10];
  v28 = a1[5];
  v26[5] = a1[4];
  v26[6] = v28;
  v29 = a1[7];
  v26[7] = a1[6];
  v26[8] = v29;
  v30 = a1[1];
  v26[1] = *a1;
  v26[2] = v30;
  v31 = a1[3];
  v26[3] = a1[2];
  v26[4] = v31;
  *&v78 = &unk_288326248;
  v70 = &v78;
  v71 = KeyPath;
  v72 = sub_2740DD3D8;
  v73 = v26;
  sub_2740DD328(a1, &v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F90, &unk_2741CE968);
  sub_2740DD554();
  v32 = v24;
  sub_2741C762C();

  v78 = *(a1 + 24);
  v75 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F60, &qword_2741CE908);
  v33 = sub_2741C7A3C();
  if (v74 == 1)
  {
    v60 = &v58;
    MEMORY[0x28223BE20](v33, v34);
    v75 = *(a1 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A3C();
    if (v74 == 1)
    {
      sub_2741C714C();
      v35 = sub_2741C768C();
      v39 = v38 & 1;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v39 = 0;
      v37 = 0;
    }

    *&v75 = v35;
    *(&v75 + 1) = v36;
    v76 = v39;
    v77 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FD0, &unk_2741CE990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740A6D24(&qword_280938FC8, &qword_280938FD0, &unk_2741CE990, MEMORY[0x277CE14C0]);
    sub_2740A5EE4();
    sub_2741C7BAC();
    v45 = v61;
    v46 = v64;
    (v61[2])(v63, v10, v64);
    swift_storeEnumTagMultiPayload();
    sub_2740DD60C();
    sub_2740DD6D0();
    v44 = v17;
    sub_2741C72CC();
    (v45[1])(v10, v46);
  }

  else
  {
    v75 = v78;
    v40 = sub_2741C7A3C();
    if (v74 != 2)
    {
      v47 = 1;
      v44 = v17;
      goto LABEL_10;
    }

    v61 = &v58;
    MEMORY[0x28223BE20](v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FB0, &qword_2741CE988);
    sub_2740A6D24(&qword_280938FB8, &qword_280938FB0, &qword_2741CE988, MEMORY[0x277CE1138]);
    v42 = v59;
    sub_2741C7B9C();
    v43 = v60;
    (v60[2])(v63, v42, v3);
    swift_storeEnumTagMultiPayload();
    sub_2740DD60C();
    sub_2740DD6D0();
    v44 = v17;
    sub_2741C72CC();
    (v43[1])(v42, v3);
  }

  v47 = 0;
LABEL_10:
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FA0, &qword_2741CE978);
  (*(*(v48 - 8) + 56))(v44, v47, 1, v48);
  v50 = v65;
  v49 = v66;
  v51 = *(v66 + 16);
  v52 = v67;
  v51(v65, v24, v67);
  v53 = v68;
  sub_2740A6D94(v44, v68, &qword_280938F80, &qword_2741CE938);
  v54 = v69;
  v51(v69, v50, v52);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FA8, &qword_2741CE980);
  sub_2740A6D94(v53, &v54[*(v55 + 48)], &qword_280938F80, &qword_2741CE938);
  sub_27409D420(v44, &qword_280938F80, &qword_2741CE938);
  v56 = *(v49 + 8);
  v56(v32, v52);
  sub_27409D420(v53, &qword_280938F80, &qword_2741CE938);
  return (v56)(v50, v52);
}

uint64_t sub_2740DA688(char *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  v5 = a2[9];
  *(v4 + 144) = a2[8];
  *(v4 + 160) = v5;
  *(v4 + 176) = a2[10];
  v6 = a2[5];
  *(v4 + 80) = a2[4];
  *(v4 + 96) = v6;
  v7 = a2[7];
  *(v4 + 112) = a2[6];
  *(v4 + 128) = v7;
  v8 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v8;
  v9 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v9;
  *(v4 + 192) = v3;
  sub_2740DD328(a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938948, &unk_2741CEA30);
  sub_2740A6D24(&qword_280938950, &qword_280938948, &unk_2741CEA30, MEMORY[0x277CE1138]);
  return sub_2741C7A7C();
}

uint64_t sub_2740DA7B0(uint64_t a1, char a2)
{
  sub_2741C7C5C();
  sub_2741C6DCC();
}

__n128 sub_2740DA820@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = sub_2741C70EC();
  v19 = 1;
  sub_2740DA8B4(v3, &v13);
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  result = v13;
  v12 = v19;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 24) = result;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = v8;
  *(a3 + 64) = v9;
  *(a3 + 72) = v10;
  return result;
}

uint64_t sub_2740DA8B4@<X0>(unsigned __int8 a1@<W0>, uint64_t a3@<X8>)
{
  v19 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_280937B30 == -1)
      {
        goto LABEL_8;
      }
    }

    else if (qword_280937B38 == -1)
    {
      goto LABEL_8;
    }

LABEL_12:
    swift_once();
    goto LABEL_8;
  }

  if (qword_280937B28 != -1)
  {
    goto LABEL_12;
  }

LABEL_8:

  sub_2740A6A74();
  v4 = sub_2741C76AC();
  v6 = v5;
  v8 = v7;
  sub_2741C799C();
  v9 = sub_2741C763C();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_2740A6AC8(v4, v6, v8 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F60, &qword_2741CE908);
  sub_2741C7A3C();
  if (v20 == v19)
  {
    v16 = sub_2741C79CC();
  }

  else
  {
    v16 = 0;
  }

  v17 = v13 & 1;
  sub_27409861C(v9, v11, v17);
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v17;
  *(a3 + 24) = v15;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v16;

  sub_2740A6AC8(v9, v11, v17);
}

uint64_t sub_2740DAB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FE0, &qword_2741CE9A0);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v68 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FE8, &qword_2741CE9A8);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v76 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v78 = &v66 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
  v73 = *(v75 - 8);
  v13 = MEMORY[0x28223BE20](v75, v12);
  v74 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v66 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FF0, &qword_2741CE9B8);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v81 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v66 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FB0, &qword_2741CE988);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v67 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v66 - v31;
  v34 = MEMORY[0x28223BE20](v30, v33);
  v36 = &v66 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v66 - v39;
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v66 - v42;
  *v43 = sub_2741C70EC();
  *(v43 + 1) = 0;
  v44 = 1;
  v43[16] = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FF8, &qword_2741CE9C0);
  v46 = *(v45 + 44);
  v79 = v43;
  sub_2740DB23C(a1, &v43[v46]);
  *v24 = sub_2741C70EC();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939000, &qword_2741CE9C8) + 44);
  v80 = v24;
  sub_2740DB4CC(a1, &v24[v47]);
  v83 = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v48 = v17;
  sub_2741C7ACC();
  v82 = *(a1 + 88);
  sub_2741C7A3C();
  if (v83 == 1)
  {
    *v40 = sub_2741C70EC();
    *(v40 + 1) = 0;
    v40[16] = 1;
    sub_2740DB8B8(a1, &v40[*(v45 + 44)]);
    *v36 = sub_2741C70EC();
    *(v36 + 1) = 0;
    v36[16] = 1;
    sub_2740DBB4C(a1, &v36[*(v45 + 44)]);
    sub_2740A6D94(v40, v32, &qword_280938FB0, &qword_2741CE988);
    v49 = v67;
    sub_2740A6D94(v36, v67, &qword_280938FB0, &qword_2741CE988);
    v50 = v68;
    sub_2740A6D94(v32, v68, &qword_280938FB0, &qword_2741CE988);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939010, &qword_2741CE9D8);
    sub_2740A6D94(v49, v50 + *(v51 + 48), &qword_280938FB0, &qword_2741CE988);
    sub_27409D420(v36, &qword_280938FB0, &qword_2741CE988);
    sub_27409D420(v40, &qword_280938FB0, &qword_2741CE988);
    sub_27409D420(v49, &qword_280938FB0, &qword_2741CE988);
    sub_27409D420(v32, &qword_280938FB0, &qword_2741CE988);
    sub_2740DD794(v50, v78);
    v44 = 0;
  }

  v52 = v78;
  (*(v71 + 56))(v78, v44, 1, v72);
  v53 = v40;
  v70 = v40;
  sub_2740A6D94(v79, v40, &qword_280938FB0, &qword_2741CE988);
  v54 = v81;
  sub_2740A6D94(v80, v81, &qword_280938FF0, &qword_2741CE9B8);
  v56 = v73;
  v55 = v74;
  v57 = *(v73 + 16);
  v69 = v48;
  v58 = v48;
  v59 = v75;
  v57(v74, v58, v75);
  v60 = v76;
  sub_2740A6D94(v52, v76, &qword_280938FE8, &qword_2741CE9A8);
  v61 = v53;
  v62 = v77;
  sub_2740A6D94(v61, v77, &qword_280938FB0, &qword_2741CE988);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939008, &qword_2741CE9D0);
  sub_2740A6D94(v54, v62 + v63[12], &qword_280938FF0, &qword_2741CE9B8);
  v57((v62 + v63[16]), v55, v59);
  sub_2740A6D94(v60, v62 + v63[20], &qword_280938FE8, &qword_2741CE9A8);
  sub_27409D420(v52, &qword_280938FE8, &qword_2741CE9A8);
  v64 = *(v56 + 8);
  v64(v69, v59);
  sub_27409D420(v80, &qword_280938FF0, &qword_2741CE9B8);
  sub_27409D420(v79, &qword_280938FB0, &qword_2741CE988);
  sub_27409D420(v60, &qword_280938FE8, &qword_2741CE9A8);
  v64(v55, v59);
  sub_27409D420(v81, &qword_280938FF0, &qword_2741CE9B8);
  return sub_27409D420(v70, &qword_280938FB0, &qword_2741CE988);
}

uint64_t sub_2740DB23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  v5 = v4 - 8;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - v11;
  sub_2741C714C();
  v24 = sub_2741C768C();
  v14 = v13;
  v25 = v15;
  v26 = v16;
  sub_2741C714C();
  v27 = *(a1 + 40);
  v28 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v18 = &v12[*(v5 + 44)];
  *v18 = KeyPath;
  v18[8] = 2;
  sub_2740A6D94(v12, v9, &qword_280939018, &qword_2741CE9E0);
  v19 = v24;
  *a2 = v24;
  *(a2 + 8) = v14;
  v20 = v25 & 1;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939020, &qword_2741D2BE0);
  sub_2740A6D94(v9, a2 + *(v21 + 64), &qword_280939018, &qword_2741CE9E0);
  sub_27409861C(v19, v14, v20);

  sub_27409D420(v12, &qword_280939018, &qword_2741CE9E0);
  sub_27409D420(v9, &qword_280939018, &qword_2741CE9E0);
  sub_2740A6AC8(v19, v14, v20);
}

uint64_t sub_2740DB4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938118, &unk_2741CB890);
  v5 = *(v4 - 8);
  v33 = v4;
  v34 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939028, &qword_2741CEA18);
  v10 = v9 - 8;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v29 - v16;
  sub_2741C714C();
  v18 = sub_2741C768C();
  v29 = v19;
  v30 = v18;
  v31 = v20;
  v32 = v21;
  sub_2741C714C();
  v35 = *(a1 + 64);
  v36 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C7C8C();
  sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890, MEMORY[0x277CDF1A8]);
  v22 = v33;
  sub_2741C772C();
  (*(v34 + 8))(v8, v22);
  KeyPath = swift_getKeyPath();
  v24 = &v17[*(v10 + 44)];
  *v24 = KeyPath;
  v24[8] = 2;
  sub_2740A6D94(v17, v14, &qword_280939028, &qword_2741CEA18);
  v26 = v29;
  v25 = v30;
  *a2 = v30;
  *(a2 + 8) = v26;
  LOBYTE(a1) = v31 & 1;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v32;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939030, &qword_2741CEA20);
  sub_2740A6D94(v14, a2 + *(v27 + 64), &qword_280939028, &qword_2741CEA18);
  sub_27409861C(v25, v26, a1);

  sub_27409D420(v17, &qword_280939028, &qword_2741CEA18);
  sub_27409D420(v14, &qword_280939028, &qword_2741CEA18);
  sub_2740A6AC8(v25, v26, a1);
}

uint64_t sub_2740DB838@<X0>(uint64_t a1@<X8>)
{
  sub_2741C714C();
  result = sub_2741C768C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2740DB8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  v5 = v4 - 8;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - v11;
  sub_2741C714C();
  v24 = sub_2741C768C();
  v14 = v13;
  v25 = v15;
  v26 = v16;
  sub_2741C714C();
  v27 = *(a1 + 104);
  v28 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v18 = &v12[*(v5 + 44)];
  *v18 = KeyPath;
  v18[8] = 2;
  sub_2740A6D94(v12, v9, &qword_280939018, &qword_2741CE9E0);
  v19 = v24;
  *a2 = v24;
  *(a2 + 8) = v14;
  v20 = v25 & 1;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939020, &qword_2741D2BE0);
  sub_2740A6D94(v9, a2 + *(v21 + 64), &qword_280939018, &qword_2741CE9E0);
  sub_27409861C(v19, v14, v20);

  sub_27409D420(v12, &qword_280939018, &qword_2741CE9E0);
  sub_27409D420(v9, &qword_280939018, &qword_2741CE9E0);
  sub_2740A6AC8(v19, v14, v20);
}

uint64_t sub_2740DBB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  v5 = v4 - 8;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - v11;
  sub_2741C714C();
  v24 = sub_2741C768C();
  v14 = v13;
  v25 = v15;
  v26 = v16;
  sub_2741C714C();
  v27 = *(a1 + 128);
  v28 = *(a1 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v18 = &v12[*(v5 + 44)];
  *v18 = KeyPath;
  v18[8] = 2;
  sub_2740A6D94(v12, v9, &qword_280939018, &qword_2741CE9E0);
  v19 = v24;
  *a2 = v24;
  *(a2 + 8) = v14;
  v20 = v25 & 1;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939020, &qword_2741D2BE0);
  sub_2740A6D94(v9, a2 + *(v21 + 64), &qword_280939018, &qword_2741CE9E0);
  sub_27409861C(v19, v14, v20);

  sub_27409D420(v12, &qword_280939018, &qword_2741CE9E0);
  sub_27409D420(v9, &qword_280939018, &qword_2741CE9E0);
  sub_2740A6AC8(v19, v14, v20);
}

uint64_t sub_2740DBDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FF8, &qword_2741CE9C0);
  return sub_2740DBE38(a1, a2 + *(v4 + 44));
}

uint64_t sub_2740DBE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  v5 = v4 - 8;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - v11;
  sub_2741C714C();
  v24 = sub_2741C768C();
  v14 = v13;
  v25 = v15;
  v26 = v16;
  sub_2741C714C();
  v27 = *(a1 + 152);
  v28 = *(a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v18 = &v12[*(v5 + 44)];
  *v18 = KeyPath;
  v18[8] = 2;
  sub_2740A6D94(v12, v9, &qword_280939018, &qword_2741CE9E0);
  v19 = v24;
  *a2 = v24;
  *(a2 + 8) = v14;
  v20 = v25 & 1;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939020, &qword_2741D2BE0);
  sub_2740A6D94(v9, a2 + *(v21 + 64), &qword_280939018, &qword_2741CE9E0);
  sub_27409861C(v19, v14, v20);

  sub_27409D420(v12, &qword_280939018, &qword_2741CE9E0);
  sub_27409D420(v9, &qword_280939018, &qword_2741CE9E0);
  sub_2740A6AC8(v19, v14, v20);
}

uint64_t sub_2740DC0C4(uint64_t a1)
{
  v2 = sub_2741C730C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F48, &qword_2741D04A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-v7];
  sub_2741C72EC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  sub_2740DD218();
  sub_2741C6D2C();
  v9 = sub_2740A6D24(&qword_280938F50, &qword_280938F48, &qword_2741D04A0, MEMORY[0x277CDD7A8]);
  MEMORY[0x2743E53C0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2740DC27C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2809378E8 != -1)
  {
    swift_once();
  }

  v15[22] = qword_280946918;
  v15[23] = unk_280946920;
  v4 = swift_allocObject();
  v5 = a1[9];
  v4[9] = a1[8];
  v4[10] = v5;
  v4[11] = a1[10];
  v6 = a1[5];
  v4[5] = a1[4];
  v4[6] = v6;
  v7 = a1[7];
  v4[7] = a1[6];
  v4[8] = v7;
  v8 = a1[1];
  v4[1] = *a1;
  v4[2] = v8;
  v9 = a1[3];
  v4[3] = a1[2];
  v4[4] = v9;

  sub_2740DD328(a1, v15);
  sub_2740A6A74();
  sub_2741C7A9C();
  v10 = sub_2740DC6AC();
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = !v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_2740A6E2C;
  v14[2] = v12;
  return result;
}

uint64_t sub_2740DC3F0()
{
  v1 = v0;
  v13 = *v0;
  v14 = *(v0 + 2);
  v11 = *v0;
  v12 = *(v0 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v9);
  v3 = v9;
  swift_getKeyPath();
  *&v11 = v3;
  sub_2740DD380();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v9 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F60, &qword_2741CE908);
  sub_2741C7A3C();
  *(v5 + 16) = v7;

  v9 = *(v1 + 24);
  sub_2741C7A3C();
  if (v7)
  {
    if (v7 == 1)
    {
      v9 = *(v1 + 40);
      v10 = *(v1 + 7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
      sub_2741C7A3C();
      v9 = v1[4];
      v10 = *(v1 + 10);
      sub_2741C7A3C();
      v9 = *(v1 + 104);
      v10 = *(v1 + 15);
      sub_2741C7A3C();
      v9 = v1[8];
      v10 = *(v1 + 18);
      sub_2741C7A3C();
      sub_2740DC9F8(v7, v8, v7, v8, v7, v8, v7, v8);
    }

    else
    {
      v9 = *(v1 + 152);
      v10 = *(v1 + 21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
      sub_2741C7A3C();
      sub_2740DD0A8(v7, v8);
    }
  }

  v9 = v13;
  v10 = v14;
  MEMORY[0x2743E5B70](&v7, v2);
  sub_274102974();
}

BOOL sub_2740DC6AC()
{
  v1 = v0;
  v16 = *v0;
  v17 = *(v0 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v14, v2);
  v3 = v14;
  swift_getKeyPath();
  *&v16 = v3;
  sub_2740DD380();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v6 = *(v5 + 16);

  v14 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F60, &qword_2741CE908);
  sub_2741C7A3C();
  if (v6 != v12[0])
  {
    return 1;
  }

  v14 = *(v1 + 24);
  sub_2741C7A3C();
  if (v12[0] != 1)
  {
    v14 = *(v1 + 24);
    sub_2741C7A3C();
    if (v12[0] == 2)
    {
      v14 = *(v1 + 152);
      v15 = *(v1 + 21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
      goto LABEL_16;
    }

    return 1;
  }

  v14 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  v14 = *(v1 + 40);
  v15 = *(v1 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A3C();

  v7 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v7 = *v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    return 0;
  }

  v14 = v1[4];
  v15 = *(v1 + 10);
  sub_2741C7A3C();

  v8 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v8 = *v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  v14 = *(v1 + 104);
  v15 = *(v1 + 15);
  sub_2741C7A3C();

  v9 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v9 = *v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  v14 = v1[8];
  v15 = *(v1 + 18);
LABEL_16:
  sub_2741C7A3C();

  v11 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v11 = *v12 & 0xFFFFFFFFFFFFLL;
  }

  return v11 != 0;
}

unsigned __int8 *sub_2740DC9F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v72 = *v8;
  v73 = *(v8 + 2);
  v70 = *v8;
  v71 = *(v8 + 2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v68);
  v13 = v68;
  swift_getKeyPath();
  *&v70 = v13;
  sub_2740DD380();
  sub_2741C6A0C();

  v14 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  v15 = *(v13 + v14);

  *(v15 + 24) = a1;
  *(v15 + 32) = a2;

  v68 = *v9;
  v58 = v9;
  v69 = *(v9 + 2);
  MEMORY[0x2743E5B70](&v66, v12);
  v16 = v66;
  swift_getKeyPath();
  *&v68 = v16;
  sub_2741C6A0C();

  v17 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  v18 = *(v16 + v17);

  v20 = HIBYTE(a4) & 0xF;
  v21 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v22 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_63;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {

    v24 = sub_2740B1168(a3, a4, 10);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      result = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_2741C858C();
    }

    v23 = *result;
    if (v23 == 43)
    {
      if (v21 >= 1)
      {
        v20 = v21 - 1;
        if (v21 != 1)
        {
          v24 = 0;
          if (result)
          {
            v31 = result + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                goto LABEL_61;
              }

              v33 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_61;
              }

              v24 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                goto LABEL_61;
              }

              ++v31;
              if (!--v20)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v23 != 45)
    {
      if (v21)
      {
        v24 = 0;
        if (result)
        {
          while (1)
          {
            v37 = *result - 48;
            if (v37 > 9)
            {
              goto LABEL_61;
            }

            v38 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_61;
            }

            v24 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v21)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v24 = 0;
      LOBYTE(v20) = 1;
LABEL_62:
      LOBYTE(v64) = v20;
      if ((v20 & 1) == 0)
      {
LABEL_64:
        *(v18 + 72) = v24;
        *(v18 + 80) = 0;

        v66 = v72;
        v67 = v73;
        MEMORY[0x2743E5B70](&v64, v12);
        v42 = v64;
        swift_getKeyPath();
        *&v66 = v42;
        sub_2741C6A0C();

        v43 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
        swift_beginAccess();
        v44 = *(v42 + v43);

        *(v44 + 40) = a5;
        *(v44 + 48) = a6;

        v64 = v72;
        v65 = v73;
        MEMORY[0x2743E5B70](&v62, v12);
        v45 = v62;
        swift_getKeyPath();
        *&v64 = v45;
        sub_2741C6A0C();

        v46 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
        swift_beginAccess();
        v47 = *(v45 + v46);

        *(v47 + 56) = a7;
        *(v47 + 64) = a8;

        v62 = v72;
        v63 = v73;
        MEMORY[0x2743E5B70](&v61, v12);
        v48 = v61;
        swift_getKeyPath();
        *&v62 = v48;
        sub_2741C6A0C();

        v49 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
        swift_beginAccess();
        v50 = *(v48 + v49);

        v61 = *(v58 + 88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
        sub_2741C7A3C();
        *(v50 + 81) = v60;
      }

LABEL_63:
      v24 = 0;
      goto LABEL_64;
    }

    if (v21 >= 1)
    {
      v20 = v21 - 1;
      if (v21 != 1)
      {
        v24 = 0;
        if (result)
        {
          v25 = result + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_61;
            }

            v27 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_61;
            }

            v24 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              goto LABEL_61;
            }

            ++v25;
            if (!--v20)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v20) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  *&v66 = a3;
  *(&v66 + 1) = a4 & 0xFFFFFFFFFFFFFFLL;
  if (a3 != 43)
  {
    if (a3 != 45)
    {
      if (v20)
      {
        v24 = 0;
        v39 = &v66;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          ++v39;
          if (!--v20)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v20)
    {
      if (--v20)
      {
        v24 = 0;
        v28 = &v66 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v20)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v20)
  {
    if (--v20)
    {
      v24 = 0;
      v34 = &v66 + 1;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          break;
        }

        v24 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          break;
        }

        ++v34;
        if (!--v20)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_2740DD0A8(uint64_t a1, uint64_t a2)
{
  v11 = *v2;
  v12 = *(v2 + 2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v10, v5);
  v6 = v10;
  swift_getKeyPath();
  *&v11 = v6;
  sub_2740DD380();
  sub_2741C6A0C();

  v7 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  v8 = *(v6 + v7);

  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
}

unint64_t sub_2740DD218()
{
  result = qword_280938F58;
  if (!qword_280938F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381A0, &qword_2741CB990);
    sub_2740A6D24(&qword_280937F78, &qword_280937F80, &unk_2741CB690, MEMORY[0x277CDF028]);
    sub_2740A6D24(&qword_2809383E8, &qword_2809383F0, &qword_2741CE8A0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938F58);
  }

  return result;
}

unint64_t sub_2740DD380()
{
  result = qword_280938760;
  if (!qword_280938760)
  {
    type metadata accessor for NetworkDetailsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938760);
  }

  return result;
}

uint64_t sub_2740DD3E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939038, &qword_2741CEA28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387B8, &qword_2741CC9B0);
  sub_2740A6D24(&qword_280939040, &qword_280939038, &qword_2741CEA28, MEMORY[0x277D83980]);
  sub_2740DD844();
  sub_2740A6D24(&qword_2809387B0, &qword_2809387B8, &qword_2741CC9B0, MEMORY[0x277CDF028]);
  return sub_2741C7B5C();
}

unint64_t sub_2740DD554()
{
  result = qword_280938F98;
  if (!qword_280938F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F90, &unk_2741CE968);
    sub_2740A6D24(&qword_2809387B0, &qword_2809387B8, &qword_2741CC9B0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938F98);
  }

  return result;
}

unint64_t sub_2740DD60C()
{
  result = qword_280938FC0;
  if (!qword_280938FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F78, &qword_2741CE930);
    sub_2740A6D24(&qword_280938FC8, &qword_280938FD0, &unk_2741CE990, MEMORY[0x277CE14C0]);
    sub_2740A5EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938FC0);
  }

  return result;
}

unint64_t sub_2740DD6D0()
{
  result = qword_280938FD8;
  if (!qword_280938FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F68, &qword_2741CE920);
    sub_2740A6D24(&qword_280938FB8, &qword_280938FB0, &qword_2741CE988, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938FD8);
  }

  return result;
}

uint64_t sub_2740DD794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FE0, &qword_2741CE9A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740DD80C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2740DD844()
{
  result = qword_280939048;
  if (!qword_280939048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939048);
  }

  return result;
}

uint64_t objectdestroyTm_7(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2740DD9D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F20, &qword_2741CE880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F40, &unk_2741CE890);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F18, &qword_2741CE878);
  sub_2740A6D24(&qword_280938F38, &qword_280938F18, &qword_2741CE878, MEMORY[0x277CDE580]);
  sub_2740A6A74();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F48, &qword_2741D04A0);
  sub_2740A6D24(&qword_280938F50, &qword_280938F48, &qword_2741D04A0, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_2740DDB50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = [a1 text];
  if (!v9)
  {
    sub_2740DDDB8();
    v9 = sub_2741C838C();
  }

  v10 = sub_2741C7E3C();
  v11 = [v9 stringByReplacingCharactersInRange:a2 withString:{a3, v10}];

  sub_2741C7E7C();
  v12 = sub_2741C7F1C();

  return v12 < 1 || *(v6 + OBJC_IVAR____TtCV15WiFiSettingsKit19CustomTextFieldView11Coordinator_charLimit) >= v12;
}

id sub_2740DDD10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomTextFieldView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2740DDDB8()
{
  result = qword_2809390C8;
  if (!qword_2809390C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809390C8);
  }

  return result;
}

unint64_t sub_2740DDEE0()
{
  result = qword_2809390D0;
  if (!qword_2809390D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809390D0);
  }

  return result;
}

uint64_t sub_2740DDF5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t sub_2740DDFE4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v3;
}

uint64_t sub_2740DE050(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  sub_2741C80AC();
  v2[17] = sub_2741C809C();
  v4 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740DE0E8, v4, v3);
}

uint64_t sub_2740DE0E8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v1 = *(v0 + 16);
  if (v1 && (v2 = *(v0 + 120), type metadata accessor for WiFiNetwork(0), v3 = v2, v4 = sub_2741C836C(), v1, v3, (v4 & 1) != 0))
  {
    v5 = *(v0 + 120);
    sub_2741C856C();

    v6 = [v5 description];
    v7 = sub_2741C7E7C();
    v9 = v8;

    MEMORY[0x2743E5FB0](v7, v9);

    sub_2740CB960(0xD000000000000029, 0x80000002741DADE0);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2741C6BEC();

    v10 = *(v0 + 16);
    if (v10)
    {
      v11 = *(v0 + 120);
      v12 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
      swift_beginAccess();
      v13 = *(v11 + v12);
      v14 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
      swift_beginAccess();
      *&v10[v14] = v13;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2741C6BEC();

    if (*(v0 + 64))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      v15 = *(v0 + 64);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 64) = v15;
      sub_2741C6BFC();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2741C6BEC();

    v16 = *(v0 + 64);
    if (v16)
    {
      v17 = (*(v0 + 120) + OBJC_IVAR___WiFiNetwork_Swift_macAddress);
      swift_beginAccess();
      v19 = *v17;
      v18 = v17[1];
      v20 = &v16[OBJC_IVAR___WiFiNetwork_Swift_macAddress];
      swift_beginAccess();
      *v20 = v19;
      *(v20 + 1) = v18;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2741C6BEC();

    v21 = *(v0 + 112);
    if (v21)
    {
      *&v21[OBJC_IVAR___WiFiNetwork_Swift_securityType] |= *(*(v0 + 120) + OBJC_IVAR___WiFiNetwork_Swift_securityType);
    }
  }

  else
  {
    v22 = *(v0 + 120);
    sub_2741C856C();

    v23 = [v22 description];
    v24 = sub_2741C7E7C();
    v26 = v25;

    MEMORY[0x2743E5FB0](v24, v26);

    sub_2740CB960(0xD000000000000013, 0x80000002741DADC0);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2741C6BEC();

    v27 = *(v0 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = v27;

    sub_2741C6BFC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = v22;
    v28 = v22;

    sub_2741C6BFC();
  }

  type metadata accessor for CurrentNetworkViewModel(0);
  sub_2740DEADC();
  sub_2741C6B5C();
  sub_2741C6B8C();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  sub_2741C6BFC();
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2740DE6D8()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit23CurrentNetworkViewModel__currentNetwork;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939128, &unk_2741CED70);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15WiFiSettingsKit23CurrentNetworkViewModel__previousNetwork, v2);
  v4 = OBJC_IVAR____TtC15WiFiSettingsKit23CurrentNetworkViewModel__isAssociating;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC15WiFiSettingsKit23CurrentNetworkViewModel__networkError;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939130, &qword_2741CED80);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_2740DEB4C(v0 + OBJC_IVAR____TtC15WiFiSettingsKit23CurrentNetworkViewModel_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CurrentNetworkViewModel(uint64_t a1)
{
  result = qword_2809390F8;
  if (!qword_2809390F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2740DE8AC(uint64_t a1)
{
  sub_2740DEA38(319, &qword_280939108, &qword_280938C68, qword_2741CD200);
  if (v1 <= 0x3F)
  {
    sub_2740DE9E8();
    if (v2 <= 0x3F)
    {
      sub_2740DEA38(319, &qword_280939110, &qword_280939118, &qword_2741CEB98);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2740DE9E8()
{
  if (!qword_280938D88)
  {
    v0 = sub_2741C6C0C();
    if (!v1)
    {
      atomic_store(v0, &qword_280938D88);
    }
  }
}

void sub_2740DEA38(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2741C6C0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2740DEA8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CurrentNetworkViewModel(0);
  result = sub_2741C6B5C();
  *a1 = result;
  return result;
}

unint64_t sub_2740DEADC()
{
  result = qword_280939120;
  if (!qword_280939120)
  {
    type metadata accessor for CurrentNetworkViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939120);
  }

  return result;
}

uint64_t sub_2740DEB74(void *a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939130, &qword_2741CED80);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v25 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939128, &unk_2741CED70);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC15WiFiSettingsKit23CurrentNetworkViewModel__currentNetwork;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C68, qword_2741CD200);
  sub_2741C6BAC();
  v18 = *(v13 + 32);
  v18(v3 + v17, v16, v12);
  v19 = OBJC_IVAR____TtC15WiFiSettingsKit23CurrentNetworkViewModel__previousNetwork;
  v32 = 0;
  sub_2741C6BAC();
  v18(v3 + v19, v16, v12);
  v20 = OBJC_IVAR____TtC15WiFiSettingsKit23CurrentNetworkViewModel__isAssociating;
  LOBYTE(v32) = 0;
  sub_2741C6BAC();
  (*(v8 + 32))(v3 + v20, v11, v26);
  v21 = OBJC_IVAR____TtC15WiFiSettingsKit23CurrentNetworkViewModel__networkError;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939118, &qword_2741CEB98);
  sub_2741C6BAC();
  (*(v27 + 32))(v3 + v21, v7, v28);
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v29;
  v22 = v29;

  sub_2741C6BFC();
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v30;
  v23 = v30;

  sub_2741C6BFC();
  swift_unknownObjectWeakAssign();
  return v3;
}

WiFiSettingsKit::CharacterLimit_optional __swiftcall CharacterLimit.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 32)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 63)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CharacterLimit.rawValue.getter()
{
  if (*v0)
  {
    return 32;
  }

  else
  {
    return 63;
  }
}

unint64_t sub_2740DEF34()
{
  result = qword_280939138;
  if (!qword_280939138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939138);
  }

  return result;
}

uint64_t sub_2740DEF88()
{
  v1 = *v0;
  sub_2741C87DC();
  if (v1)
  {
    v2 = 32;
  }

  else
  {
    v2 = 63;
  }

  MEMORY[0x2743E6870](v2);
  return sub_2741C880C();
}

uint64_t sub_2740DEFDC()
{
  if (*v0)
  {
    v1 = 32;
  }

  else
  {
    v1 = 63;
  }

  return MEMORY[0x2743E6870](v1);
}

uint64_t sub_2740DF018(uint64_t a1)
{
  v2 = *v1;
  sub_2741C87DC();
  if (v2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 63;
  }

  MEMORY[0x2743E6870](v3);
  return sub_2741C880C();
}

void *sub_2740DF068@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 32)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 63)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2740DF088(uint64_t *a1@<X8>)
{
  v2 = 63;
  if (*v1)
  {
    v2 = 32;
  }

  *a1 = v2;
}

uint64_t sub_2740DF0B4()
{
  if (qword_280937AA8 != -1)
  {
    swift_once();
  }

  v0 = xmmword_280946D38;

  return v0;
}

uint64_t sub_2740DF11C()
{
  if (qword_280937AB0 != -1)
  {
    swift_once();
  }

  v0 = qword_280946D48;

  return v0;
}

uint64_t sub_2740DF184(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a4;
  v27 = a1;
  v31 = sub_2741C699C();
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v6);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939140, &qword_2741CEE58);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - v11;
  aBlock = 0;
  v33 = 0xE000000000000000;
  sub_2741C856C();

  aBlock = 0xD00000000000001ELL;
  v33 = 0x80000002741DAE10;
  MEMORY[0x2743E5FB0](a2, a3);
  sub_2740CB460(aBlock, v33);

  v13 = [objc_opt_self() requestWithItemID:55 configuration:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938438, &qword_2741CC110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CC090;
  *(inited + 32) = 0x6E6F73616552;
  v15 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 72) = v15;
  *(inited + 80) = 0x73736572706D6F43;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;

  v16 = sub_274177B3C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938440, &qword_2741CC118);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938980, &qword_2741CCB70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2741CCB60;
  *(v17 + 32) = v13;
  sub_2740BA268(0, &qword_280939148, 0x277D7BB78);
  v18 = v13;
  v19 = sub_2741C7FCC();

  sub_274111E54(v16);

  v20 = sub_2741C7D4C();

  (*(v9 + 16))(v12, v27, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v12, v8);
  v36 = sub_2740DF928;
  v37 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2740DF748;
  v35 = &block_descriptor_4;
  v23 = _Block_copy(&aBlock);

  v24 = [v29 collectLogs:v19 configuration:v20 update:0 reply:v23];
  _Block_release(v23);

  v25 = v28;
  sub_2741C697C();

  return (*(v30 + 8))(v25, v31);
}

uint64_t sub_2740DF654(void *a1)
{
  if (a1 && (v1 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370), sub_2740BA268(0, &qword_280939158, 0x277CCA9B8), (swift_dynamicCast() & 1) != 0))
  {
    sub_2740DF9D4();
    swift_allocError();
    *v2 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939140, &qword_2741CEE58);
    return sub_2741C806C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939140, &qword_2741CEE58);
    return sub_2741C807C();
  }
}

uint64_t sub_2740DF748(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2741C689C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_2740BA268(0, &qword_280939150, 0x277D7BB70);
  v12 = sub_2741C7FEC();
  sub_2741C685C();

  v13 = a2;
  v11(a2, v12, v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2740DF894()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939140, &qword_2741CEE58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2740DF928(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939140, &qword_2741CEE58);

  return sub_2740DF654(a1);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2740DF9D4()
{
  result = qword_280939160;
  if (!qword_280939160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939160);
  }

  return result;
}

uint64_t sub_2740DFA34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2740DFA7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2740DFAC8(uint64_t a1)
{
  result = sub_2740DF9D4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2740DFAF0@<X0>(uint64_t a1@<X8>)
{
  v122 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939168, &qword_2741CEFE8);
  v121 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v1);
  v107 = &v102 - v2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939170, &qword_2741CEFF0);
  v105 = *(v106 - 8);
  v4 = MEMORY[0x28223BE20](v106, v3);
  v104 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v114 = &v102 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939178, &qword_2741CEFF8);
  v113 = *(v103 - 8);
  v9 = MEMORY[0x28223BE20](v103, v8);
  v102 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v112 = &v102 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939180, &qword_2741CF000);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v120 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v102 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939188, &qword_2741CF008);
  v115 = *(v116 - 1);
  MEMORY[0x28223BE20](v116, v20);
  v110 = &v102 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939190, &qword_2741CF010);
  v111 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v102 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939198, &qword_2741CF018);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v109 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v102 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391A0, &qword_2741CF020);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v102 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391A8, &qword_2741CF028);
  v40 = MEMORY[0x28223BE20](v38 - 8, v39);
  v42 = &v102 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v43);
  v124 = (&v102 - v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391B0, &qword_2741CF030);
  v47 = MEMORY[0x28223BE20](v45 - 8, v46);
  v117 = &v102 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v102 - v50;
  if (qword_280937BA8 != -1)
  {
    swift_once();
  }

  v119 = v19;
  v123 = v51;
  if (byte_28093B151)
  {
    v108 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939230, &qword_2741CF088);
    sub_2740A6D24(&qword_280939238, &qword_280939230, &qword_2741CF088, MEMORY[0x277CDD938]);
    sub_2741C7B9C();
    v52 = v124;
    (*(v34 + 32))(v124, v37, v33);
    v53 = (*(v34 + 56))(v52, 0, 1, v33);
    v55 = v111;
LABEL_5:
    MEMORY[0x28223BE20](v53, v54);
    *(&v102 - 2) = v125;
    sub_2740E2E18();
    sub_2741C7B9C();
    (*(v55 + 32))(v32, v25, v22);
    v54 = 0;
LABEL_6:
    (*(v55 + 56))(v32, v54, 1, v22);
    v56 = v124;
    v57 = v108;
    sub_2740A6D94(v124, v108, &qword_2809391A8, &qword_2741CF028);
    v58 = v109;
    sub_2740A6D94(v32, v109, &qword_280939198, &qword_2741CF018);
    v59 = v110;
    sub_2740A6D94(v57, v110, &qword_2809391A8, &qword_2741CF028);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939228, &qword_2741CF080);
    sub_2740A6D94(v58, v59 + *(v60 + 48), &qword_280939198, &qword_2741CF018);
    sub_27409D420(v32, &qword_280939198, &qword_2741CF018);
    sub_27409D420(v56, &qword_2809391A8, &qword_2741CF028);
    sub_27409D420(v58, &qword_280939198, &qword_2741CF018);
    sub_27409D420(v57, &qword_2809391A8, &qword_2741CF028);
    v51 = v123;
    sub_2740E2E6C(v59, v123);
    (*(v115 + 56))(v51, 0, 1, v116);
    goto LABEL_13;
  }

  if (qword_280937BA0 != -1)
  {
    swift_once();
  }

  if (byte_28093B150 == 1)
  {
    v108 = v42;
    _s15WiFiSettingsKit0aB16DeviceCapabilityC15isWAPIAvailableSbyFZ_0();
    v62 = v61;
    v53 = (*(v34 + 56))(v124, 1, 1, v33);
    v54 = 1;
    v55 = v111;
    if ((v62 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (*(v115 + 56))(v51, 1, 1, v116);
LABEL_13:
  v63 = v125;
  v130[0] = *v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391B8, &qword_2741CF038);
  sub_2741C7A3C();
  v64 = v126;
  swift_getKeyPath();
  *&v130[0] = v64;
  sub_2740E2AE4();
  sub_2741C6A0C();

  swift_beginAccess();
  v65 = *(v64 + 72);

  if (v65)
  {

    v68 = 1;
    v69 = v119;
  }

  else
  {
    MEMORY[0x28223BE20](v66, v67);
    *(&v102 - 2) = v63;
    sub_2740E1874(v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391C0, &qword_2741CF040);
    v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809391C8, &qword_2741CF048);
    v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809391D0, &qword_2741CF050);
    v72 = sub_2741C740C();
    v124 = v72;
    v73 = MEMORY[0x277CDF038];
    v74 = sub_2740A6D24(&qword_2809391D8, &qword_2809391D0, &qword_2741CF050, MEMORY[0x277CDF038]);
    v126 = v71;
    v127 = v72;
    v128 = v74;
    v129 = MEMORY[0x277CDE370];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v76 = sub_2740E2C18();
    v126 = v70;
    v127 = &type metadata for AskToJoinNetworkMode;
    v128 = OpaqueTypeConformance2;
    v129 = v76;
    swift_getOpaqueTypeConformance2();
    v77 = v112;
    v78 = sub_2741C7BAC();
    v116 = &v102;
    MEMORY[0x28223BE20](v78, v79);
    *(&v102 - 2) = v63;
    sub_2740E27D8(v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391E8, &qword_2741CF058);
    v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809391F0, &qword_2741CF060);
    v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809391F8, &qword_2741CF068);
    v82 = sub_2740A6D24(&qword_280939200, &qword_2809391F8, &qword_2741CF068, v73);
    v126 = v81;
    v127 = v124;
    v128 = v82;
    v129 = MEMORY[0x277CDE370];
    v83 = swift_getOpaqueTypeConformance2();
    v84 = sub_2740E2C74();
    v126 = v80;
    v127 = &type metadata for AutoHotspotMode;
    v128 = v83;
    v129 = v84;
    swift_getOpaqueTypeConformance2();
    v85 = v114;
    sub_2741C7BAC();
    v86 = *(v113 + 16);
    v87 = v102;
    v88 = v103;
    v86(v102, v77, v103);
    v89 = v105;
    v90 = *(v105 + 16);
    v91 = v104;
    v92 = v106;
    v90(v104, v85, v106);
    v93 = v107;
    v86(v107, v87, v88);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939210, &qword_2741CF070);
    v90((v93 + *(v94 + 48)), v91, v92);
    v95 = *(v89 + 8);
    v95(v114, v92);
    v96 = *(v113 + 8);
    v96(v112, v88);
    v95(v91, v92);
    v51 = v123;
    v96(v87, v88);
    v69 = v119;
    sub_2740E2CC8(v93, v119);
    v68 = 0;
  }

  (*(v121 + 56))(v69, v68, 1, v118);
  v97 = v117;
  sub_2740A6D94(v51, v117, &qword_2809391B0, &qword_2741CF030);
  v98 = v120;
  sub_2740E2D38(v69, v120);
  v99 = v122;
  sub_2740A6D94(v97, v122, &qword_2809391B0, &qword_2741CF030);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939218, &qword_2741CF078);
  sub_2740E2D38(v98, v99 + *(v100 + 48));
  sub_2740E2DA8(v69);
  sub_27409D420(v51, &qword_2809391B0, &qword_2741CF030);
  sub_2740E2DA8(v98);
  return sub_27409D420(v97, &qword_2809391B0, &qword_2741CF030);
}

uint64_t sub_2740E0970()
{
  [objc_allocWithZone(WiFiDataUsageViewController) init];
  sub_274098FA8();
  return sub_2741C6DDC();
}

uint64_t sub_2740E09F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_280937720 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}