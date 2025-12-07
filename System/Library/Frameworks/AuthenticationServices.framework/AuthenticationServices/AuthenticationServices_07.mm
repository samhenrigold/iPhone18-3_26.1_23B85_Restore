uint64_t _s22AuthenticationServices16ASImportableItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1D7B53C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v60[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FB8, &unk_1B1D93650);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v60[-v18];
  if (!sub_1B1D583E4(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_16;
  }

  v63 = v11;
  v64 = v7;
  v65 = type metadata accessor for ASImportableItem(0);
  v66 = a1;
  v20 = *(v65 + 20);
  v21 = *(v14 + 48);
  sub_1B1D64DB8(a1 + v20, v19);
  sub_1B1D64DB8(a2 + v20, &v19[v21]);
  v67 = v5;
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      v62 = a2;
      sub_1B1CDEC18(v19, &qword_1EB775228, &qword_1B1D88D60);
      goto LABEL_9;
    }

LABEL_7:
    v23 = v19;
LABEL_15:
    sub_1B1CDEC18(v23, &qword_1EB775FB8, &unk_1B1D93650);
    goto LABEL_16;
  }

  sub_1B1D64DB8(v19, v13);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    (*(v67 + 8))(v13, v4);
    goto LABEL_7;
  }

  v62 = a2;
  v24 = v67;
  v25 = v64;
  (*(v67 + 32))(v64, &v19[v21], v4);
  sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v61 = sub_1B1D7BE0C();
  v26 = *(v24 + 8);
  v26(v25, v4);
  v26(v13, v4);
  sub_1B1CDEC18(v19, &qword_1EB775228, &qword_1B1D88D60);
  if ((v61 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v27 = v65;
  v28 = *(v65 + 24);
  v29 = *(v14 + 48);
  sub_1B1D64DB8(v66 + v28, v17);
  v30 = v62 + v28;
  v31 = v62;
  sub_1B1D64DB8(v30, &v17[v29]);
  if (v22(v17, 1, v4) == 1)
  {
    if (v22(&v17[v29], 1, v4) == 1)
    {
      sub_1B1CDEC18(v17, &qword_1EB775228, &qword_1B1D88D60);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v32 = v63;
  sub_1B1D64DB8(v17, v63);
  if (v22(&v17[v29], 1, v4) == 1)
  {
    (*(v67 + 8))(v32, v4);
LABEL_14:
    v23 = v17;
    goto LABEL_15;
  }

  v35 = v67;
  v36 = v64;
  (*(v67 + 32))(v64, &v17[v29], v4);
  sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v37 = sub_1B1D7BE0C();
  v38 = *(v35 + 8);
  v38(v36, v4);
  v38(v32, v4);
  sub_1B1CDEC18(v17, &qword_1EB775228, &qword_1B1D88D60);
  if ((v37 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v39 = v27[7];
  v40 = v66;
  v41 = *(v66 + v39);
  v42 = *(v66 + v39 + 8);
  v43 = (v31 + v39);
  if ((v41 != *v43 || v42 != v43[1]) && (sub_1B1D7C50C() & 1) == 0)
  {
    goto LABEL_16;
  }

  v44 = v27[8];
  v45 = (v40 + v44);
  v46 = *(v40 + v44 + 8);
  v47 = (v31 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v48)
  {
    goto LABEL_16;
  }

  if (*(v40 + v27[9]) != *(v31 + v27[9]))
  {
    goto LABEL_16;
  }

  v49 = v27[10];
  v51 = *(v40 + v49);
  v50 = *(v40 + v49 + 8);
  v52 = v31;
  v53 = (v31 + v49);
  v55 = *v53;
  v54 = v53[1];
  if (v51)
  {
    if (v55)
    {
      sub_1B1D650F0(v51, v50);
      sub_1B1D650F0(v55, v54);
      sub_1B1D650F0(v51, v50);
      if (sub_1B1D302A4(v51, v55))
      {
        v56 = sub_1B1D304B8(v50, v54);
        sub_1B1D0C93C(v55, v54);

        sub_1B1D0C93C(v51, v50);
        if ((v56 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_42;
      }

      sub_1B1D0C93C(v55, v54);

      v57 = v51;
      v58 = v50;
LABEL_40:
      sub_1B1D0C93C(v57, v58);
      goto LABEL_16;
    }

    sub_1B1D650F0(v51, v50);
    sub_1B1D650F0(0, v54);
    sub_1B1D650F0(v51, v50);

LABEL_38:
    sub_1B1D0C93C(v51, v50);
    v57 = v55;
    v58 = v54;
    goto LABEL_40;
  }

  sub_1B1D650F0(0, v50);
  if (v55)
  {
    sub_1B1D650F0(v55, v54);
    goto LABEL_38;
  }

  sub_1B1D650F0(0, v54);
  sub_1B1D0C93C(0, v50);
LABEL_42:
  v59 = v66;
  if (sub_1B1D3375C(*(v66 + v27[11]), *(v52 + v27[11])))
  {
    v33 = sub_1B1D337EC(*(v59 + v27[12]), *(v52 + v27[12]));
    return v33 & 1;
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

unint64_t sub_1B1D65C88()
{
  result = qword_1EB7758E0;
  if (!qword_1EB7758E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758E0);
  }

  return result;
}

unint64_t sub_1B1D65CDC()
{
  result = qword_1EB7758F0;
  if (!qword_1EB7758F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7758E8, &qword_1B1D88E08);
    sub_1B1D641B4(&qword_1EB7758F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758F0);
  }

  return result;
}

unint64_t sub_1B1D65D90()
{
  result = qword_1EB775908;
  if (!qword_1EB775908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775900, &qword_1B1D88E10);
    sub_1B1D65E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775908);
  }

  return result;
}

unint64_t sub_1B1D65E14()
{
  result = qword_1EB775910;
  if (!qword_1EB775910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775910);
  }

  return result;
}

unint64_t sub_1B1D65E68()
{
  result = qword_1EB775920;
  if (!qword_1EB775920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7758E8, &qword_1B1D88E08);
    sub_1B1D641B4(&qword_1EB775928, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775920);
  }

  return result;
}

unint64_t sub_1B1D65F1C()
{
  result = qword_1EB775930;
  if (!qword_1EB775930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775900, &qword_1B1D88E10);
    sub_1B1D65FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775930);
  }

  return result;
}

unint64_t sub_1B1D65FA0()
{
  result = qword_1EB775938;
  if (!qword_1EB775938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775938);
  }

  return result;
}

uint64_t sub_1B1D65FF4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B1CE111C(result, a2);
  }

  return result;
}

uint64_t sub_1B1D66034(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B1CDEFDC(result, a2);
  }

  return result;
}

unint64_t sub_1B1D66074()
{
  result = qword_1EB775950;
  if (!qword_1EB775950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775950);
  }

  return result;
}

unint64_t sub_1B1D660C8()
{
  result = qword_1EB775958;
  if (!qword_1EB775958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775958);
  }

  return result;
}

unint64_t sub_1B1D6611C()
{
  result = qword_1EB775968;
  if (!qword_1EB775968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775968);
  }

  return result;
}

unint64_t sub_1B1D661D8()
{
  result = qword_1EB775978;
  if (!qword_1EB775978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775978);
  }

  return result;
}

unint64_t sub_1B1D6622C()
{
  result = qword_1EB775990;
  if (!qword_1EB775990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775990);
  }

  return result;
}

unint64_t sub_1B1D66280()
{
  result = qword_1EB775998;
  if (!qword_1EB775998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775998);
  }

  return result;
}

unint64_t sub_1B1D662D4()
{
  result = qword_1EB7759A8;
  if (!qword_1EB7759A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759A8);
  }

  return result;
}

uint64_t sub_1B1D66328(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    sub_1B1C91B94(result, a2);
  }

  return result;
}

unint64_t sub_1B1D66374()
{
  result = qword_1EB7759B8;
  if (!qword_1EB7759B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759B8);
  }

  return result;
}

unint64_t sub_1B1D663C8()
{
  result = qword_1EB7759C0;
  if (!qword_1EB7759C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759C0);
  }

  return result;
}

unint64_t sub_1B1D6644C()
{
  result = qword_1EB7759D0;
  if (!qword_1EB7759D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759D0);
  }

  return result;
}

unint64_t sub_1B1D664D8()
{
  result = qword_1EB7759E0;
  if (!qword_1EB7759E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759E0);
  }

  return result;
}

unint64_t sub_1B1D66594()
{
  result = qword_1EB7759F8;
  if (!qword_1EB7759F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759F8);
  }

  return result;
}

unint64_t sub_1B1D66650()
{
  result = qword_1EB775A10;
  if (!qword_1EB775A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A10);
  }

  return result;
}

unint64_t sub_1B1D6670C()
{
  result = qword_1EB775A28;
  if (!qword_1EB775A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A28);
  }

  return result;
}

unint64_t sub_1B1D66760()
{
  result = qword_1EB775A38;
  if (!qword_1EB775A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775A30, &qword_1B1D88E98);
    sub_1B1D6644C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A38);
  }

  return result;
}

unint64_t sub_1B1D667E4()
{
  result = qword_1EB775A48;
  if (!qword_1EB775A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775A30, &qword_1B1D88E98);
    sub_1B1D663C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A48);
  }

  return result;
}

unint64_t sub_1B1D66868()
{
  result = qword_1EB775A58;
  if (!qword_1EB775A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A58);
  }

  return result;
}

unint64_t sub_1B1D66924()
{
  result = qword_1EB775A70;
  if (!qword_1EB775A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A70);
  }

  return result;
}

unint64_t sub_1B1D66978()
{
  result = qword_1EB775A88;
  if (!qword_1EB775A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A88);
  }

  return result;
}

unint64_t sub_1B1D66A34()
{
  result = qword_1EB775AA0;
  if (!qword_1EB775AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775AA0);
  }

  return result;
}

unint64_t sub_1B1D66A88()
{
  result = qword_1EB775AB8;
  if (!qword_1EB775AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775AB8);
  }

  return result;
}

unint64_t sub_1B1D66ADC()
{
  result = qword_1EB775AD0;
  if (!qword_1EB775AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775AD0);
  }

  return result;
}

unint64_t sub_1B1D66B30()
{
  result = qword_1EB775AE8;
  if (!qword_1EB775AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775AE8);
  }

  return result;
}

unint64_t sub_1B1D66BEC()
{
  result = qword_1EB775B00;
  if (!qword_1EB775B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B00);
  }

  return result;
}

unint64_t sub_1B1D66CA8()
{
  result = qword_1EB775B18;
  if (!qword_1EB775B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B18);
  }

  return result;
}

unint64_t sub_1B1D66D64()
{
  result = qword_1EB775B30;
  if (!qword_1EB775B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B30);
  }

  return result;
}

unint64_t sub_1B1D66DB8()
{
  result = qword_1EB775B38;
  if (!qword_1EB775B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B38);
  }

  return result;
}

unint64_t sub_1B1D66E0C()
{
  result = qword_1EB775B48;
  if (!qword_1EB775B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B48);
  }

  return result;
}

unint64_t sub_1B1D66E60()
{
  result = qword_1EB775B58;
  if (!qword_1EB775B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B58);
  }

  return result;
}

unint64_t sub_1B1D66F1C()
{
  result = qword_1EB775B70;
  if (!qword_1EB775B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B70);
  }

  return result;
}

unint64_t sub_1B1D66F70()
{
  result = qword_1EB775B78;
  if (!qword_1EB775B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B78);
  }

  return result;
}

uint64_t sub_1B1D66FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B1D670B4()
{
  result = qword_1EB775B88;
  if (!qword_1EB775B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B88);
  }

  return result;
}

unint64_t sub_1B1D67114()
{
  result = qword_1EB775B90;
  if (!qword_1EB775B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775B98, &qword_1B1D88FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B90);
  }

  return result;
}

unint64_t sub_1B1D67178()
{
  result = qword_1EB775BA0;
  if (!qword_1EB775BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BA0);
  }

  return result;
}

unint64_t sub_1B1D67218()
{
  result = qword_1EB775BB0;
  if (!qword_1EB775BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BB0);
  }

  return result;
}

unint64_t sub_1B1D672B8()
{
  result = qword_1EB775BC0;
  if (!qword_1EB775BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BC0);
  }

  return result;
}

unint64_t sub_1B1D67358()
{
  result = qword_1EB775BD0;
  if (!qword_1EB775BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BD0);
  }

  return result;
}

unint64_t sub_1B1D673B0()
{
  result = qword_1EB775BD8;
  if (!qword_1EB775BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BD8);
  }

  return result;
}

unint64_t sub_1B1D67408()
{
  result = qword_1EB775BE0;
  if (!qword_1EB775BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BE0);
  }

  return result;
}

unint64_t sub_1B1D67460()
{
  result = qword_1EB775BE8;
  if (!qword_1EB775BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BE8);
  }

  return result;
}

unint64_t sub_1B1D674B8()
{
  result = qword_1EB775BF0;
  if (!qword_1EB775BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BF0);
  }

  return result;
}

unint64_t sub_1B1D67510()
{
  result = qword_1EB775BF8;
  if (!qword_1EB775BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BF8);
  }

  return result;
}

unint64_t sub_1B1D67568()
{
  result = qword_1EB775C00;
  if (!qword_1EB775C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C00);
  }

  return result;
}

unint64_t sub_1B1D675C0()
{
  result = qword_1EB775C08;
  if (!qword_1EB775C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C08);
  }

  return result;
}

unint64_t sub_1B1D67618()
{
  result = qword_1EB775C10;
  if (!qword_1EB775C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C10);
  }

  return result;
}

unint64_t sub_1B1D67670()
{
  result = qword_1EB775C18;
  if (!qword_1EB775C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C18);
  }

  return result;
}

unint64_t sub_1B1D676C8()
{
  result = qword_1EB775C20;
  if (!qword_1EB775C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C20);
  }

  return result;
}

unint64_t sub_1B1D67720()
{
  result = qword_1EB775C28;
  if (!qword_1EB775C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C28);
  }

  return result;
}

unint64_t sub_1B1D67778()
{
  result = qword_1EB775C30;
  if (!qword_1EB775C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C30);
  }

  return result;
}

unint64_t sub_1B1D677D0()
{
  result = qword_1EB775C38;
  if (!qword_1EB775C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C38);
  }

  return result;
}

unint64_t sub_1B1D67828()
{
  result = qword_1EB775C40;
  if (!qword_1EB775C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C40);
  }

  return result;
}

unint64_t sub_1B1D67880()
{
  result = qword_1EB775C48;
  if (!qword_1EB775C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C48);
  }

  return result;
}

unint64_t sub_1B1D678D8()
{
  result = qword_1EB775C50;
  if (!qword_1EB775C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C50);
  }

  return result;
}

unint64_t sub_1B1D67930()
{
  result = qword_1EB775C58;
  if (!qword_1EB775C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C58);
  }

  return result;
}

unint64_t sub_1B1D67988()
{
  result = qword_1EB775C60;
  if (!qword_1EB775C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C60);
  }

  return result;
}

unint64_t sub_1B1D679E0()
{
  result = qword_1EB775C68;
  if (!qword_1EB775C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C68);
  }

  return result;
}

unint64_t sub_1B1D67A38()
{
  result = qword_1EB775C70;
  if (!qword_1EB775C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C70);
  }

  return result;
}

unint64_t sub_1B1D67A90()
{
  result = qword_1EB775C78;
  if (!qword_1EB775C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C78);
  }

  return result;
}

unint64_t sub_1B1D67AE8()
{
  result = qword_1EB775C80;
  if (!qword_1EB775C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C80);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1B1D67B68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1B1D67BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B1D67C3C(uint64_t a1)
{
  sub_1B1D67DB0(319, &qword_1EB775CB0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B1C9030C(319, &qword_1EB775CB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B1C9030C(319, &qword_1EB775CC0, &type metadata for ASImportableLinkedItem, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1B1D67DB0(319, &qword_1EB775CC8, type metadata accessor for ASImportableCollection, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B1D67DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_88Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_89Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1B1D67FE8(uint64_t a1)
{
  sub_1B1D67DB0(319, &qword_1EB775CB0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B1C9030C(319, &qword_1EB775CB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B1C9030C(319, &qword_1EB775CE0, &type metadata for ASImportableCredentialScope, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B1C9030C(319, &qword_1EB775CE8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1B1C9030C(319, &qword_1EB775CF0, &type metadata for ASImportableCredential, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B1D68194(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B1D681DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices27ASImportableCredentialScopeV34AndroidAppCertificationFingerprintVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B1D68254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B1D6829C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D682FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B1D68344(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ASImportableEditableField.FieldType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASImportableEditableField.FieldType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices25ASImportableEditableFieldVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B1D6853C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 673))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 672);
  if (v3 <= 0xF)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D68584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 664) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 648) = 0u;
    *(result + 672) = 0;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 673) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 673) = 0;
    }

    if (a2)
    {
      *(result + 672) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1D686AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 336))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B1D68708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1B1D687E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B1D68844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B1D688CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 392))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B1D68928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 392) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 392) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B1D689F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D68A38(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1B1D68AC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 616))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B1D68B1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 616) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 616) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B1D68C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D68C68(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1B1D68CD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1B1D68D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D68D8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 672))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B1D68DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 664) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 672) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 672) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B1D68EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 504))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B1D68F58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1B1D69080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1B1D690C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D6914C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B1D691A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1B1D69268(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B1D692C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASImportableCredential.CredentialType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASImportableCredential.CredentialType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASImportableCredential.Passport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASImportableCredential.Passport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASImportableCredential.IdentityDocument.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASImportableCredential.IdentityDocument.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B1D69830(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B1D698C0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B1D69980(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B1D69A10(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B1D69B00(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B1D69B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B1D69C70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B1D69D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B1D69DE4()
{
  result = qword_1EB775CF8;
  if (!qword_1EB775CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775CF8);
  }

  return result;
}

unint64_t sub_1B1D69E3C()
{
  result = qword_1EB775D00;
  if (!qword_1EB775D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D00);
  }

  return result;
}

unint64_t sub_1B1D69E94()
{
  result = qword_1EB775D08;
  if (!qword_1EB775D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D08);
  }

  return result;
}

unint64_t sub_1B1D69EEC()
{
  result = qword_1EB775D10;
  if (!qword_1EB775D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D10);
  }

  return result;
}

unint64_t sub_1B1D69F44()
{
  result = qword_1EB775D18;
  if (!qword_1EB775D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D18);
  }

  return result;
}

unint64_t sub_1B1D69F9C()
{
  result = qword_1EB775D20;
  if (!qword_1EB775D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D20);
  }

  return result;
}

unint64_t sub_1B1D69FF4()
{
  result = qword_1EB775D28;
  if (!qword_1EB775D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D28);
  }

  return result;
}

unint64_t sub_1B1D6A04C()
{
  result = qword_1EB775D30;
  if (!qword_1EB775D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D30);
  }

  return result;
}

unint64_t sub_1B1D6A0A4()
{
  result = qword_1EB775D38;
  if (!qword_1EB775D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D38);
  }

  return result;
}

unint64_t sub_1B1D6A0FC()
{
  result = qword_1EB775D40;
  if (!qword_1EB775D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D40);
  }

  return result;
}

unint64_t sub_1B1D6A154()
{
  result = qword_1EB775D48;
  if (!qword_1EB775D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D48);
  }

  return result;
}

unint64_t sub_1B1D6A1AC()
{
  result = qword_1EB775D50;
  if (!qword_1EB775D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D50);
  }

  return result;
}

unint64_t sub_1B1D6A204()
{
  result = qword_1EB775D58;
  if (!qword_1EB775D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D58);
  }

  return result;
}

unint64_t sub_1B1D6A25C()
{
  result = qword_1EB775D60;
  if (!qword_1EB775D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D60);
  }

  return result;
}

unint64_t sub_1B1D6A2B4()
{
  result = qword_1EB775D68;
  if (!qword_1EB775D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D68);
  }

  return result;
}

unint64_t sub_1B1D6A30C()
{
  result = qword_1EB775D70;
  if (!qword_1EB775D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D70);
  }

  return result;
}

unint64_t sub_1B1D6A364()
{
  result = qword_1EB775D78;
  if (!qword_1EB775D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D78);
  }

  return result;
}

unint64_t sub_1B1D6A3BC()
{
  result = qword_1EB775D80;
  if (!qword_1EB775D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D80);
  }

  return result;
}

unint64_t sub_1B1D6A414()
{
  result = qword_1EB775D88;
  if (!qword_1EB775D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D88);
  }

  return result;
}

unint64_t sub_1B1D6A46C()
{
  result = qword_1EB775D90;
  if (!qword_1EB775D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D90);
  }

  return result;
}

unint64_t sub_1B1D6A4C4()
{
  result = qword_1EB775D98;
  if (!qword_1EB775D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D98);
  }

  return result;
}

unint64_t sub_1B1D6A51C()
{
  result = qword_1EB775DA0;
  if (!qword_1EB775DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DA0);
  }

  return result;
}

unint64_t sub_1B1D6A574()
{
  result = qword_1EB775DA8;
  if (!qword_1EB775DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DA8);
  }

  return result;
}

unint64_t sub_1B1D6A5CC()
{
  result = qword_1EB775DB0;
  if (!qword_1EB775DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DB0);
  }

  return result;
}

unint64_t sub_1B1D6A624()
{
  result = qword_1EB775DB8;
  if (!qword_1EB775DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DB8);
  }

  return result;
}

unint64_t sub_1B1D6A67C()
{
  result = qword_1EB775DC0;
  if (!qword_1EB775DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DC0);
  }

  return result;
}

unint64_t sub_1B1D6A6D4()
{
  result = qword_1EB775DC8;
  if (!qword_1EB775DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DC8);
  }

  return result;
}

unint64_t sub_1B1D6A72C()
{
  result = qword_1EB775DD0;
  if (!qword_1EB775DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DD0);
  }

  return result;
}

unint64_t sub_1B1D6A784()
{
  result = qword_1EB775DD8;
  if (!qword_1EB775DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DD8);
  }

  return result;
}

unint64_t sub_1B1D6A7DC()
{
  result = qword_1EB775DE0;
  if (!qword_1EB775DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DE0);
  }

  return result;
}

unint64_t sub_1B1D6A834()
{
  result = qword_1EB775DE8;
  if (!qword_1EB775DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DE8);
  }

  return result;
}

unint64_t sub_1B1D6A88C()
{
  result = qword_1EB775DF0;
  if (!qword_1EB775DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DF0);
  }

  return result;
}

unint64_t sub_1B1D6A8E4()
{
  result = qword_1EB775DF8;
  if (!qword_1EB775DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DF8);
  }

  return result;
}

unint64_t sub_1B1D6A93C()
{
  result = qword_1EB775E00;
  if (!qword_1EB775E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E00);
  }

  return result;
}

unint64_t sub_1B1D6A994()
{
  result = qword_1EB775E08;
  if (!qword_1EB775E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E08);
  }

  return result;
}

unint64_t sub_1B1D6A9EC()
{
  result = qword_1EB775E10;
  if (!qword_1EB775E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E10);
  }

  return result;
}

unint64_t sub_1B1D6AA44()
{
  result = qword_1EB775E18;
  if (!qword_1EB775E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E18);
  }

  return result;
}

unint64_t sub_1B1D6AA9C()
{
  result = qword_1EB775E20;
  if (!qword_1EB775E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E20);
  }

  return result;
}

unint64_t sub_1B1D6AAF4()
{
  result = qword_1EB775E28;
  if (!qword_1EB775E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E28);
  }

  return result;
}

unint64_t sub_1B1D6AB4C()
{
  result = qword_1EB775E30;
  if (!qword_1EB775E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E30);
  }

  return result;
}

unint64_t sub_1B1D6ABA4()
{
  result = qword_1EB775E38;
  if (!qword_1EB775E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E38);
  }

  return result;
}

unint64_t sub_1B1D6ABFC()
{
  result = qword_1EB775E40;
  if (!qword_1EB775E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E40);
  }

  return result;
}

unint64_t sub_1B1D6AC54()
{
  result = qword_1EB775E48;
  if (!qword_1EB775E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E48);
  }

  return result;
}

unint64_t sub_1B1D6ACAC()
{
  result = qword_1EB775E50;
  if (!qword_1EB775E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E50);
  }

  return result;
}

unint64_t sub_1B1D6AD04()
{
  result = qword_1EB775E58;
  if (!qword_1EB775E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E58);
  }

  return result;
}

unint64_t sub_1B1D6AD5C()
{
  result = qword_1EB775E60;
  if (!qword_1EB775E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E60);
  }

  return result;
}

unint64_t sub_1B1D6ADB4()
{
  result = qword_1EB775E68;
  if (!qword_1EB775E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E68);
  }

  return result;
}

unint64_t sub_1B1D6AE0C()
{
  result = qword_1EB775E70;
  if (!qword_1EB775E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E70);
  }

  return result;
}

unint64_t sub_1B1D6AE64()
{
  result = qword_1EB775E78;
  if (!qword_1EB775E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E78);
  }

  return result;
}

unint64_t sub_1B1D6AEBC()
{
  result = qword_1EB775E80;
  if (!qword_1EB775E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E80);
  }

  return result;
}

unint64_t sub_1B1D6AF14()
{
  result = qword_1EB775E88;
  if (!qword_1EB775E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E88);
  }

  return result;
}

unint64_t sub_1B1D6AF6C()
{
  result = qword_1EB775E90;
  if (!qword_1EB775E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E90);
  }

  return result;
}

unint64_t sub_1B1D6AFC4()
{
  result = qword_1EB775E98;
  if (!qword_1EB775E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E98);
  }

  return result;
}

unint64_t sub_1B1D6B01C()
{
  result = qword_1EB775EA0;
  if (!qword_1EB775EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EA0);
  }

  return result;
}

unint64_t sub_1B1D6B074()
{
  result = qword_1EB775EA8;
  if (!qword_1EB775EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EA8);
  }

  return result;
}

unint64_t sub_1B1D6B0CC()
{
  result = qword_1EB775EB0;
  if (!qword_1EB775EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EB0);
  }

  return result;
}

unint64_t sub_1B1D6B124()
{
  result = qword_1EB775EB8;
  if (!qword_1EB775EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EB8);
  }

  return result;
}

unint64_t sub_1B1D6B17C()
{
  result = qword_1EB775EC0;
  if (!qword_1EB775EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EC0);
  }

  return result;
}

unint64_t sub_1B1D6B1D4()
{
  result = qword_1EB775EC8;
  if (!qword_1EB775EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EC8);
  }

  return result;
}

unint64_t sub_1B1D6B22C()
{
  result = qword_1EB775ED0;
  if (!qword_1EB775ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775ED0);
  }

  return result;
}

unint64_t sub_1B1D6B284()
{
  result = qword_1EB775ED8;
  if (!qword_1EB775ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775ED8);
  }

  return result;
}

unint64_t sub_1B1D6B2DC()
{
  result = qword_1EB775EE0;
  if (!qword_1EB775EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EE0);
  }

  return result;
}

unint64_t sub_1B1D6B334()
{
  result = qword_1EB775EE8;
  if (!qword_1EB775EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EE8);
  }

  return result;
}

unint64_t sub_1B1D6B38C()
{
  result = qword_1EB775EF0;
  if (!qword_1EB775EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EF0);
  }

  return result;
}

unint64_t sub_1B1D6B3E4()
{
  result = qword_1EB775EF8;
  if (!qword_1EB775EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EF8);
  }

  return result;
}

unint64_t sub_1B1D6B43C()
{
  result = qword_1EB775F00;
  if (!qword_1EB775F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F00);
  }

  return result;
}

unint64_t sub_1B1D6B494()
{
  result = qword_1EB775F08;
  if (!qword_1EB775F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F08);
  }

  return result;
}

unint64_t sub_1B1D6B4EC()
{
  result = qword_1EB775F10;
  if (!qword_1EB775F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F10);
  }

  return result;
}

unint64_t sub_1B1D6B544()
{
  result = qword_1EB775F18;
  if (!qword_1EB775F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F18);
  }

  return result;
}

unint64_t sub_1B1D6B59C()
{
  result = qword_1EB775F20;
  if (!qword_1EB775F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F20);
  }

  return result;
}

unint64_t sub_1B1D6B5F4()
{
  result = qword_1EB775F28;
  if (!qword_1EB775F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F28);
  }

  return result;
}

unint64_t sub_1B1D6B64C()
{
  result = qword_1EB775F30;
  if (!qword_1EB775F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F30);
  }

  return result;
}

unint64_t sub_1B1D6B6A4()
{
  result = qword_1EB775F38;
  if (!qword_1EB775F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F38);
  }

  return result;
}

unint64_t sub_1B1D6B6FC()
{
  result = qword_1EB775F40;
  if (!qword_1EB775F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F40);
  }

  return result;
}

unint64_t sub_1B1D6B754()
{
  result = qword_1EB775F48;
  if (!qword_1EB775F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F48);
  }

  return result;
}

unint64_t sub_1B1D6B7AC()
{
  result = qword_1EB775F50;
  if (!qword_1EB775F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F50);
  }

  return result;
}

unint64_t sub_1B1D6B804()
{
  result = qword_1EB775F58;
  if (!qword_1EB775F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F58);
  }

  return result;
}

unint64_t sub_1B1D6B85C()
{
  result = qword_1EB775F60;
  if (!qword_1EB775F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F60);
  }

  return result;
}

unint64_t sub_1B1D6B8B4()
{
  result = qword_1EB775F68;
  if (!qword_1EB775F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F68);
  }

  return result;
}

unint64_t sub_1B1D6B90C()
{
  result = qword_1EB775F70;
  if (!qword_1EB775F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F70);
  }

  return result;
}

unint64_t sub_1B1D6B964()
{
  result = qword_1EB775F78;
  if (!qword_1EB775F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F78);
  }

  return result;
}

unint64_t sub_1B1D6B9BC()
{
  result = qword_1EB775F80;
  if (!qword_1EB775F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F80);
  }

  return result;
}

unint64_t sub_1B1D6BA10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B1D6BA5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B1D6BAA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B1D6BAF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEA00000000007441 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1B1D6BDD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B1D6BE24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954646C656966 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B1D7C50C();

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

unint64_t sub_1B1D6BF80(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B1D6BFCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B1D6C018(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B1D6C064(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795464726163 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B1D9CD90 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7235952 && a2 == 0xE300000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144797269707865 && a2 == 0xEA00000000006574 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F724664696C6176 && a2 == 0xE90000000000006DLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B1D7C50C();

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

unint64_t sub_1B1D6C2C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B1D6C30C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446874726962 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6144797269707865 && a2 == 0xEA00000000006574 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B1D9CDB0 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F746972726574 && a2 == 0xE900000000000079 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E65736E6563696CLL && a2 == 0xED00007265626D75 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4365736E6563696CLL && a2 == 0xEC0000007373616CLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B1D6C614(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43676E6975737369 && a2 == 0xEE007972746E756FLL;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEE007265626D754ELL || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B1D9CDD0 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E6F6974616ELL && a2 == 0xEB00000000797469 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446874726962 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616C506874726962 && a2 == 0xEA00000000006563 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144797269707865 && a2 == 0xEA00000000006574 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B1D9CDB0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1B1D6C9C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B1D6CA10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43676E6975737369 && a2 == 0xEE007972746E756FLL;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F7073736170 && a2 == 0xEC00000065707954 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74726F7073736170 && a2 == 0xEE007265626D754ELL || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B1D9CDF0 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616E6F6974616ELL && a2 == 0xEB00000000797469 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446874726962 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x616C506874726962 && a2 == 0xEA00000000006563 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6144797269707865 && a2 == 0xEA00000000006574 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B1D9CDB0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1B1D6CE10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65766967 && a2 == 0xE500000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E496E65766967 && a2 == 0xED00006C616D726FLL || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x326E65766967 && a2 == 0xE600000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x50656D616E727573 && a2 == 0xED00007869666572 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D616E727573 && a2 == 0xE700000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x32656D616E727573 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69746172656E6567 && a2 == 0xEA00000000006E6FLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1B1D6D100(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B1D6D14C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7C3AC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B1D6D198(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632435 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B1D9CE10 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6172687073736170 && a2 == 0xEA00000000006573 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B1D7C50C();

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

unint64_t sub_1B1D6D308()
{
  result = qword_1EB775F88;
  if (!qword_1EB775F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F88);
  }

  return result;
}

unint64_t sub_1B1D6D35C()
{
  result = qword_1EB775F90;
  if (!qword_1EB775F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F90);
  }

  return result;
}

unint64_t sub_1B1D6D3B0()
{
  result = qword_1EB775F98;
  if (!qword_1EB775F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F98);
  }

  return result;
}

uint64_t sub_1B1D6D404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B1D6D46C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B1D6D68C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775098, &qword_1B1D86088);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1B1D7BE4C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

id sub_1B1D6D760(uint64_t a1)
{
  v1 = sub_1B1D7B43C();
  v2 = [v1 domain];
  v3 = sub_1B1D7BE4C();
  v5 = v4;

  if (v3 == sub_1B1D7BE4C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1B1D7C50C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v9 = [v1 code];
  if (v9 == 18)
  {
    v10 = @"com.apple.AuthenticationServices.AuthorizationError";
    v16 = [v1 userInfo];
    sub_1B1D7BDDC();

    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_1B1D7BDCC();

    v14 = [v17 initWithDomain:v10 code:1007 userInfo:v13];
    goto LABEL_13;
  }

  if (v9 == 19)
  {
    v10 = @"com.apple.AuthenticationServices.AuthorizationError";
    v11 = [v1 userInfo];
    sub_1B1D7BDDC();

    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_1B1D7BDCC();

    v14 = [v12 initWithDomain:v10 code:1008 userInfo:v13];
LABEL_13:
    v15 = v14;

    v1 = v13;
    goto LABEL_14;
  }

LABEL_11:
  v15 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:0];
LABEL_14:

  return v15;
}

uint64_t sub_1B1D6DA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1D7C50C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1D6DAA0(uint64_t a1)
{
  v2 = sub_1B1D6DC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D6DADC(uint64_t a1)
{
  v2 = sub_1B1D6DC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCredentialExportManager.ExportOptions.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FC8, &qword_1B1D93660);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6DC50();
  sub_1B1D7C63C();
  sub_1B1D64160();
  sub_1B1D7C4CC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B1D6DC50()
{
  result = qword_1EB775FD0;
  if (!qword_1EB775FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775FD0);
  }

  return result;
}

uint64_t ASCredentialExportManager.ExportOptions.hashValue.getter()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t ASCredentialExportManager.ExportOptions.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FD8, &unk_1B1D93668);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6DC50();
  sub_1B1D7C62C();
  if (!v1)
  {
    sub_1B1D642D4();
    sub_1B1D7C43C();
    (*(v4 + 8))(v6, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B1D6DE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[32] = a2;
  v5 = swift_task_alloc();
  v4[35] = v5;
  *v5 = v4;
  v5[1] = sub_1B1D6DF14;

  return sub_1B1D6EE18();
}

uint64_t sub_1B1D6DF14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B1D6E048, 0, 0);
}

uint64_t sub_1B1D6E048()
{
  v1 = v0[33];
  v0[37] = *(v0[34] + 16);
  if (v1)
  {
    v2 = sub_1B1D7BE1C();
  }

  else
  {
    v2 = 0;
  }

  v0[38] = v2;
  v0[39] = sub_1B1D7BF2C();
  v0[40] = sub_1B1D7BF1C();
  v4 = sub_1B1D7BF0C();

  return MEMORY[0x1EEE6DFA0](sub_1B1D6E104, v4, v3);
}

uint64_t sub_1B1D6E104()
{
  v1 = *(v0 + 288);

  *(v0 + 328) = [v1 windowScene];

  return MEMORY[0x1EEE6DFA0](sub_1B1D6E18C, 0, 0);
}

uint64_t sub_1B1D6E18C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 328))
  {
    *(v3 + 336) = sub_1B1D7BF1C();
    v4 = sub_1B1D7BF0C();
    v6 = v5;
    a1 = sub_1B1D6E224;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B1D6E224()
{
  v1 = *(v0 + 328);

  *(v0 + 344) = [v1 _sceneIdentifier];

  return MEMORY[0x1EEE6DFA0](sub_1B1D6E2AC, 0, 0);
}

uint64_t sub_1B1D6E2AC()
{
  v1 = v0[43];
  if (!v1)
  {
    sub_1B1D7BE4C();
    v1 = sub_1B1D7BE1C();
  }

  v0[44] = v1;
  v3 = v0[37];
  v2 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1B1D6E3FC;
  v4 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7750D8, &unk_1B1D93680);
  v0[20] = MEMORY[0x1E69E9820];
  v0[21] = 1107296256;
  v0[22] = sub_1B1D6D68C;
  v0[23] = &block_descriptor_6;
  v0[24] = v4;
  [v3 requestExportForCredentialProvider:v2 windowSceneIdentifier:v1 completionHandler:v0 + 20];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1D6E3FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_1B1D6E808;
  }

  else
  {
    v2 = sub_1B1D6E50C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1D6E50C()
{
  v16 = v0;
  v1 = *(v0 + 304);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);

  if (sub_1B1D7C3AC())
  {
    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v4, qword_1EB782530);

    v5 = sub_1B1D7BD6C();
    v6 = sub_1B1D7C00C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = sub_1B1D0D070(v3, v2, &v15);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_1B1C8D000, v5, v6, "Received unexpected format version: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1B273C4C0](v8, -1, -1);
      MEMORY[0x1B273C4C0](v7, -1, -1);
    }

    else
    {
    }

    type metadata accessor for ASAuthorizationError(0);
    *(v0 + 248) = 1004;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v12;
    *(inited + 48) = 0xD000000000000023;
    *(inited + 56) = 0x80000001B1D9CE30;
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    sub_1B1D6FC98(&qword_1EB774F70, type metadata accessor for ASAuthorizationError, &unk_1B1D8508C);
    sub_1B1D7B42C();
    swift_willThrow();
    v13 = *(v0 + 288);
    [*(v0 + 296) invalidate];
    swift_willThrow();

    v10 = *(v0 + 8);
  }

  else
  {

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_1B1D6E808(uint64_t a1)
{
  v2 = *(v1 + 352);
  v3 = *(v1 + 304);
  swift_willThrow();

  v4 = *(v1 + 288);
  [*(v1 + 296) invalidate];
  swift_willThrow();

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1B1D6E89C(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B1D6E8BC, 0, 0);
}

uint64_t sub_1B1D6E8BC()
{
  v1 = ASExportedCredentialData.allItems.getter()[2];

  if (v1)
  {
    sub_1B1D7B2EC();
    swift_allocObject();
    v0[30] = sub_1B1D7B2DC();
    type metadata accessor for ASExportedCredentialData(0);
    sub_1B1D6FC98(&qword_1EB775FE0, type metadata accessor for ASExportedCredentialData, &protocol conformance descriptor for ASExportedCredentialData);
    v0[31] = sub_1B1D7B2CC();
    v0[32] = v2;
    v10 = *(v0[29] + 16);
    v11 = sub_1B1D7B4DC();
    v0[33] = v11;
    v0[2] = v0;
    v0[3] = sub_1B1D6EBD8;
    v12 = swift_continuation_init();
    v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775078, &unk_1B1D936A0);
    v0[20] = MEMORY[0x1E69E9820];
    v0[21] = 1107296256;
    v0[22] = sub_1B1CEFEE8;
    v0[23] = &block_descriptor_5;
    v0[24] = v12;
    [v10 continueExportWithCredentials:v11 completionHandler:v0 + 20];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v4;
    *(inited + 48) = 0xD000000000000023;
    *(inited + 56) = 0x80000001B1D9CE60;
    v5 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v7 = sub_1B1D7BDCC();

    [v6 initWithDomain:v5 code:1008 userInfo:v7];

    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1B1D6EBD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1B1D6ED5C;
  }

  else
  {
    v2 = sub_1B1D6ECE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1D6ECE8()
{
  v1 = v0[33];
  sub_1B1CDEFDC(v0[31], v0[32]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B1D6ED5C(uint64_t a1)
{
  v3 = v1[33];
  v2 = v1[34];
  v5 = v1[31];
  v4 = v1[32];
  swift_willThrow();

  sub_1B1D6D760(v2);
  swift_willThrow();

  sub_1B1CDEFDC(v5, v4);

  v6 = v1[1];

  return v6();
}

uint64_t sub_1B1D6EE38()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = v0[1];

    __asm { BRAA            X2, X16 }
  }

  v3 = v0[12];
  v4 = *(v3 + 32);
  v0[14] = v4;
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v8;
    *(inited + 48) = 0xD00000000000002DLL;
    *(inited + 56) = 0x80000001B1D9CF70;
    v9 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v11 = sub_1B1D7BDCC();

    [v10 initWithDomain:v9 code:1008 userInfo:v11];

    swift_willThrow();
    v12 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[15] = *(v3 + 40);
  sub_1B1D7BF2C();

  v0[16] = sub_1B1D7BF1C();
  v6 = sub_1B1D7BF0C();

  return MEMORY[0x1EEE6DFA0](sub_1B1D6F094, v6, v5);
}

uint64_t sub_1B1D6F094()
{
  v1 = *(v0 + 112);

  *(v0 + 136) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1B1D6F10C, 0, 0);
}

uint64_t sub_1B1D6F10C()
{
  v1 = *(v0 + 136);
  sub_1B1D6FC88(*(v0 + 112), *(v0 + 120));
  if (v1)
  {
    v2 = *(v0 + 136);
    v11 = *(v0 + 8);
    v3 = *(v0 + 104);

    return v11(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v6;
    *(inited + 48) = 0xD00000000000002DLL;
    *(inited + 56) = 0x80000001B1D9CF70;
    v7 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    v8 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v9 = sub_1B1D7BDCC();

    [v8 initWithDomain:v7 code:1008 userInfo:v9];

    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

void *ASCredentialExportManager.__allocating_init(presentationAnchorProvider:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ASCredentialExportManager();
  swift_allocObject();
  v4 = sub_1B1D6FBEC(0, a1, a2);

  return v4;
}

void *ASCredentialExportManager.__allocating_init(presentationAnchor:)(void *a1)
{
  type metadata accessor for ASCredentialExportManager();
  swift_allocObject();
  return sub_1B1D6FBEC(a1, 0, 0);
}

uint64_t ASCredentialExportManager.deinit()
{
  MEMORY[0x1B273C590](v0 + 24);
  sub_1B1D6FC88(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t ASCredentialExportManager.__deallocating_deinit()
{
  MEMORY[0x1B273C590](v0 + 24);
  sub_1B1D6FC88(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B1D6F42C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B1D6F44C, 0, 0);
}

uint64_t sub_1B1D6F44C()
{
  v1 = [objc_allocWithZone(_ASAgentCredentialExchangeListenerProxy) initForMode_];
  v0[22] = v1;
  v2 = sub_1B1D7B55C();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B1D6F5A4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FE8, &qword_1B1D936B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B1D6F89C;
  v0[13] = &block_descriptor_9;
  v0[14] = v3;
  [v1 importCredentialsWithToken:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1D6F5A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1B1D6F804;
  }

  else
  {
    v2 = sub_1B1D6F6B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1D6F6B4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);

  sub_1B1D7B2BC();
  swift_allocObject();
  sub_1B1D7B2AC();
  type metadata accessor for ASExportedCredentialData(0);
  sub_1B1D6FC98(&qword_1EB775FF0, type metadata accessor for ASExportedCredentialData, &protocol conformance descriptor for ASExportedCredentialData);
  sub_1B1D7B29C();

  sub_1B1CDEFDC(v3, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B1D6F804(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[22];
  swift_willThrow();

  v4 = v1[24];
  sub_1B1D6D760(v4);
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_1B1D6F89C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775098, &qword_1B1D86088);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_1B1D7B4EC();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

unint64_t sub_1B1D6F9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F90, &unk_1B1D93950);
    v3 = sub_1B1D7C37C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B1CE7FA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B1D6FAB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F98, &unk_1B1D93960);
    v3 = sub_1B1D7C37C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B1CE9604(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B1CE7FA8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B1CE9674(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B1D6FBEC(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = [objc_allocWithZone(_ASAgentCredentialExchangeListenerProxy) initForMode_];
  swift_unknownObjectWeakInit();
  v3[4] = 0;
  v3[5] = 0;
  swift_unknownObjectWeakAssign();

  v7 = v3[4];
  v8 = v3[5];
  v3[4] = a2;
  v3[5] = a3;
  sub_1B1D70250(a2, a3);
  sub_1B1D6FC88(v7, v8);
  return v3;
}

uint64_t sub_1B1D6FC88(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B1D6FC98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B1D6FCE4()
{
  result = qword_1EB775FF8;
  if (!qword_1EB775FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775FF8);
  }

  return result;
}

uint64_t dispatch thunk of ASCredentialExportManager.requestExport(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 104) + **(*v3 + 104));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B1CE99BC;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ASCredentialExportManager.exportCredentials(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B1CE9AD0;

  return v6(a1);
}

uint64_t dispatch thunk of ASCredentialImportManager.importCredentials(token:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 80) + **(*v2 + 80));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B1CE9AD0;

  return v8(a1, a2);
}

unint64_t sub_1B1D7014C()
{
  result = qword_1EB776000;
  if (!qword_1EB776000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776000);
  }

  return result;
}

unint64_t sub_1B1D701A4()
{
  result = qword_1EB776008;
  if (!qword_1EB776008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776008);
  }

  return result;
}

unint64_t sub_1B1D701FC()
{
  result = qword_1EB776010;
  if (!qword_1EB776010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776010);
  }

  return result;
}

uint64_t sub_1B1D70250(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B1D70288()
{
  if (*v0)
  {
    return 0x6C69616D65;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_1B1D702C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_1B1D7C50C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B1D7C50C();

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

uint64_t sub_1B1D703A4(uint64_t a1)
{
  v2 = sub_1B1D7083C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D703E0(uint64_t a1)
{
  v2 = sub_1B1D7083C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D70428(uint64_t a1)
{
  v2 = sub_1B1D70890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D70464(uint64_t a1)
{
  v2 = sub_1B1D70890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D704A0(uint64_t a1)
{
  v2 = sub_1B1D708E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D704DC(uint64_t a1)
{
  v2 = sub_1B1D708E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASContactIdentifierRequest.hashValue.getter()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

uint64_t ASContactIdentifierRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776018, &qword_1B1D93970);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776020, &qword_1B1D93978);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776028, &qword_1B1D93980);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D7083C();
  sub_1B1D7C63C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B1D70890();
    v14 = v18;
    sub_1B1D7C46C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B1D708E4();
    sub_1B1D7C46C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1B1D7083C()
{
  result = qword_1EB776030;
  if (!qword_1EB776030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776030);
  }

  return result;
}

unint64_t sub_1B1D70890()
{
  result = qword_1EB776038;
  if (!qword_1EB776038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776038);
  }

  return result;
}

unint64_t sub_1B1D708E4()
{
  result = qword_1EB776040;
  if (!qword_1EB776040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776040);
  }

  return result;
}

uint64_t ASContactIdentifierRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776048, &qword_1B1D93988);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776050, &qword_1B1D93990);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776058, &qword_1B1D93998);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D7083C();
  v13 = v31;
  sub_1B1D7C62C();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1B1D7C45C();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1B1D7C2BC();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
    *v21 = &type metadata for ASContactIdentifierRequest;
    sub_1B1D7C3CC();
    sub_1B1D7C2AC();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1B1D70890();
    sub_1B1D7C3BC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1B1D708E4();
    sub_1B1D7C3BC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

unint64_t sub_1B1D70D90()
{
  result = qword_1EB776060;
  if (!qword_1EB776060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776060);
  }

  return result;
}

unint64_t sub_1B1D70E58()
{
  result = qword_1EB776068;
  if (!qword_1EB776068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776068);
  }

  return result;
}

unint64_t sub_1B1D70EB0()
{
  result = qword_1EB776070;
  if (!qword_1EB776070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776070);
  }

  return result;
}

unint64_t sub_1B1D70F08()
{
  result = qword_1EB776078;
  if (!qword_1EB776078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776078);
  }

  return result;
}

unint64_t sub_1B1D70F60()
{
  result = qword_1EB776080;
  if (!qword_1EB776080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776080);
  }

  return result;
}

unint64_t sub_1B1D70FB8()
{
  result = qword_1EB776088;
  if (!qword_1EB776088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776088);
  }

  return result;
}

unint64_t sub_1B1D71010()
{
  result = qword_1EB776090;
  if (!qword_1EB776090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776090);
  }

  return result;
}

unint64_t sub_1B1D71068()
{
  result = qword_1EB776098;
  if (!qword_1EB776098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776098);
  }

  return result;
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.prf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BA5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - v8;
  v10 = [v1 extensions];
  sub_1B1D7BA6C();

  if ((*(v4 + 48))(v9, 1, v3))
  {
    result = sub_1B1CDEC18(v9, &qword_1EB774CD8, &qword_1B1D857C8);
    v12 = 0uLL;
    v13 = 1;
    v14 = 0uLL;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_1B1CDEC18(v9, &qword_1EB774CD8, &qword_1B1D857C8);
    sub_1B1D0D91C(v15);
    result = (*(v4 + 8))(v6, v3);
    v12 = v15[0];
    v14 = v15[1];
    v13 = v16;
  }

  *a1 = v12;
  *(a1 + 16) = v14;
  *(a1 + 32) = v13;
  return result;
}

void sub_1B1D7129C(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  *&v5 = *a1;
  *(&v5 + 1) = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  sub_1B1D71888(v5, v1, v2, v3, v4);
  ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.prf.setter(&v5);
}

void ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.prf.setter(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = a1[1];
  v11 = *a1;
  v12 = v6;
  v7 = *(a1 + 4);
  v8 = [v1 extensions];
  if (v7 == 1)
  {
    v9 = sub_1B1D7BA5C();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  else
  {
    v13 = v11;
    v14 = v12;
    v15 = v7;
    sub_1B1D0DCD8(v5);
    sub_1B1CDEF8C(v13, *(&v13 + 1), v14, *(&v14 + 1));

    v10 = sub_1B1D7BA5C();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  sub_1B1D7BA7C();
}

void (*ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.prf.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = sub_1B1D7BA5C();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  *(v5 + 56) = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  *(v5 + 64) = v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8) - 8) + 64);
  if (v3)
  {
    *(v5 + 72) = swift_coroFrameAlloc();
    *(v5 + 80) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 72) = malloc(v11);
    *(v5 + 80) = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v5 + 88) = v12;
  v14 = [v1 extensions];
  sub_1B1D7BA6C();

  if ((*(v8 + 48))(v13, 1, v6))
  {
    sub_1B1CDEC18(v13, &qword_1EB774CD8, &qword_1B1D857C8);
    v15 = 0uLL;
    v16 = 1;
    v17 = 0uLL;
  }

  else
  {
    (*(v8 + 16))(v10, v13, v6);
    sub_1B1CDEC18(v13, &qword_1EB774CD8, &qword_1B1D857C8);
    sub_1B1D0D91C(v19);
    (*(v8 + 8))(v10, v6);
    v15 = v19[0];
    v17 = v19[1];
    v16 = v20;
  }

  *v5 = v15;
  *(v5 + 16) = v17;
  *(v5 + 32) = v16;
  return sub_1B1D716B0;
}

void sub_1B1D716B0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  if (a2)
  {
    sub_1B1D71888(**a1, v3, v6, v5, v7);
    v9 = [v8 extensions];
    if (v7 == 1)
    {
      v10 = 1;
    }

    else
    {
      sub_1B1D0DCD8(v2[9]);
      sub_1B1CDEF8C(v4, v3, v6, v5);

      v10 = 0;
    }

    v14 = v2[10];
    v13 = v2[11];
    v16 = v2[8];
    v15 = v2[9];
    (*(v2[7] + 56))(v15, v10, 1, v2[6]);
    sub_1B1D7BA7C();

    sub_1B1D718CC(*v2, v2[1], v2[2], v2[3], v2[4]);
  }

  else
  {
    v11 = [(*a1)[5] extensions];
    if (v7 == 1)
    {
      v12 = 1;
    }

    else
    {
      sub_1B1D0DCD8(v2[10]);
      sub_1B1CDEF8C(v4, v3, v6, v5);

      v12 = 0;
    }

    v14 = v2[10];
    v13 = v2[11];
    v16 = v2[8];
    v15 = v2[9];
    (*(v2[7] + 56))(v14, v12, 1, v2[6]);
    sub_1B1D7BA7C();
  }

  free(v13);
  free(v14);
  free(v15);
  free(v16);

  free(v2);
}

uint64_t sub_1B1D71888(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1B1D05C30(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B1D718CC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1B1CDEF8C(result, a2, a3, a4);
  }

  return result;
}

id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__largeBlobSwift.getter()
{
  v1 = sub_1B1D7BA8C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = sub_1B1D7BABC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = [v0 extensions];
  sub_1B1D7BACC();

  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1B1CDEC18(v14, &qword_1EB774CD0, &qword_1B1D857C0);
    return 0;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    sub_1B1CDEC18(v14, &qword_1EB774CD0, &qword_1B1D857C0);
    sub_1B1D7BAAC();
    (*(v2 + 16))(v5, v7, v1);
    v17 = (*(v2 + 88))(v5, v1);
    if (v17 == *MEMORY[0x1E698DF30])
    {
      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v11, v8);
      (*(v2 + 96))(v5, v1);
      v18 = *v5;
      v19 = v5[1];
      v20 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput) initWithOperation_];
      v21 = sub_1B1D7B4DC();
      [v20 setDataToWrite_];

      sub_1B1CDEFDC(v18, v19);
      return v20;
    }

    else if (v17 == *MEMORY[0x1E698DF28])
    {
      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v11, v8);
      return [objc_allocWithZone(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput) initWithOperation_];
    }

    else
    {
      result = sub_1B1D7C32C();
      __break(1u);
    }
  }

  return result;
}

void ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__largeBlobSwift.setter(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = [v1 extensions];
  if (a1)
  {
    a1 = a1;
    sub_1B1D07B8C();

    v7 = sub_1B1D7BABC();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  }

  else
  {
    v8 = sub_1B1D7BABC();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  sub_1B1D7BADC();
}

void *ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__prfSwift.getter()
{
  v1 = sub_1B1D7BA5C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = [v0 extensions];
  sub_1B1D7BA6C();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1B1CDEC18(v7, &qword_1EB774CD8, &qword_1B1D857C8);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_1B1CDEC18(v7, &qword_1EB774CD8, &qword_1B1D857C8);
    sub_1B1D0D91C(v14);
    (*(v2 + 8))(v4, v1);
    v11 = v14[0];
    v12 = v14[1];
    v13 = v15;
    v10 = sub_1B1D0E95C();
    sub_1B1CDEF8C(v11, *(&v11 + 1), v12, *(&v12 + 1));

    return v10;
  }
}

void ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__prfSwift.setter(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = [v1 extensions];
  if (a1)
  {
    a1 = a1;
    sub_1B1D10BFC(v5);

    v7 = sub_1B1D7BA5C();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  }

  else
  {
    v8 = sub_1B1D7BA5C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  sub_1B1D7BA7C();
}

id static ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.emptyExtensions()()
{
  v0 = objc_allocWithZone(sub_1B1D7BAEC());

  return [v0 init];
}

uint64_t ASAuthorizationUIContext.Header.Title.text.getter()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  if ((*v0 & 1) != 0 && [objc_opt_self() isAppleAccountBrandingEnabled])
  {
    sub_1B1D7B64C();
    sub_1B1D7B64C();
    v8 = sub_1B1D7B62C();
    v9 = *(v2 + 8);
    v9(v5, v1);
    v9(v7, v1);
  }

  else
  {
    sub_1B1D7B64C();
    v8 = sub_1B1D7B63C();
    (*(v2 + 8))(v7, v1);
  }

  return v8;
}

uint64_t ASAuthorizationUIContext.Title.text.getter()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1 || __PAIR128__(-128, 1) < __PAIR128__(v6, v5) || v5 | *(v0 + 8) ^ 0x80)
    {
      sub_1B1D7B64C();
      v8 = sub_1B1D7B63C();
      (*(v2 + 8))(v4, v1);
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = *v0;
    v10 = v6 & 1;
    return ASAuthorizationUIContext.PasskeyTitle.text.getter();
  }
}

uint64_t ASAuthorizationUIContext.PasskeyTitle.text.getter()
{
  v0 = sub_1B1D7B65C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1D7B64C();
  v4 = sub_1B1D7B63C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t ASAuthorizationUIContext.Message.text(appleIDLoginChoiceMessageProvider:)(uint64_t (*a1)(void))
{
  v2 = v1;
  v4 = sub_1B1D7B65C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v60 - v9;
  v11 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ASAuthorizationUIContext.Message(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1D770B8(v2, v16, type metadata accessor for ASAuthorizationUIContext.Message);
  v17 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B1D1831C(v16, v13);
      v17 = ASAuthorizationUIContext.PasskeyMessage.text.getter();
      sub_1B1CF9788(v13);
      return v17;
    case 2u:
      v21 = *(v16 + 1);
      v22 = *(v16 + 3);
      v68 = *(v16 + 2);
      v69 = v22;
      v23 = *(v16 + 1);
      v67[0] = *v16;
      v67[1] = v23;
      v24 = *(v16 + 3);
      v64 = v68;
      v65 = v24;
      v70 = *(v16 + 8);
      v66 = *(v16 + 8);
      v62 = v67[0];
      v63 = v21;
      v17 = ASAuthorizationUIContext.PasswordMessage.text.getter();
      sub_1B1D18268(v67);
      return v17;
    case 3u:
      v17 = 0;
      v19 = *v16;
      if (*v16 > 1)
      {
        if (v19 == 2 || v19 == 4)
        {
          goto LABEL_27;
        }
      }

      else if (v19 <= 1)
      {
        goto LABEL_27;
      }

      return v17;
    case 4u:
      if (*v16 != 1)
      {
        goto LABEL_27;
      }

      [objc_opt_self() isAppleAccountBrandingEnabled];
      v20 = (v5 + 8);
      goto LABEL_28;
    case 5u:
      v26 = *v16;
      v25 = *(v16 + 1);
      v29 = v16[16];
      v30 = *(v16 + 4);
      v60 = *(v16 + 3);
      v61 = v30;
      sub_1B1D7B64C();
      v31 = (v5 + 8);
      if (v29 == 1)
      {
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v32 = *v31;
        (*v31)(v8, v4);
        v32(v10, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1B1D85D30;
        v34 = MEMORY[0x1E69E6158];
        *(v33 + 56) = MEMORY[0x1E69E6158];
        v35 = sub_1B1CED4EC();
        *(v33 + 32) = v26;
        *(v33 + 40) = v25;
        *(v33 + 96) = v34;
        *(v33 + 104) = v35;
        v37 = v60;
        v36 = v61;
        *(v33 + 64) = v35;
        *(v33 + 72) = v37;
        *(v33 + 80) = v36;
        goto LABEL_18;
      }

      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v41 = *v31;
      (*v31)(v8, v4);
      v41(v10, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1B1D85D30;
      v43 = sub_1B1D7BE1C();
      v44 = [v43 _lp_userVisibleHost];

      v45 = sub_1B1D7BE4C();
      v47 = v46;

      v48 = MEMORY[0x1E69E6158];
      *(v42 + 56) = MEMORY[0x1E69E6158];
      v49 = sub_1B1CED4EC();
      *(v42 + 32) = v45;
      *(v42 + 40) = v47;
      *(v42 + 96) = v48;
      *(v42 + 104) = v49;
      v51 = v60;
      v50 = v61;
      *(v42 + 64) = v49;
      *(v42 + 72) = v51;
      *(v42 + 80) = v50;
      goto LABEL_26;
    case 6u:
      v26 = *v16;
      v25 = *(v16 + 1);
      v27 = v16[16];
      sub_1B1D7B64C();
      v28 = (v5 + 8);
      if (v27 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    case 7u:
      v26 = *v16;
      v25 = *(v16 + 1);
      v38 = v16[16];
      sub_1B1D7B64C();
      v28 = (v5 + 8);
      if (v38 == 1)
      {
LABEL_17:
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v39 = *v28;
        (*v28)(v8, v4);
        v39(v10, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1B1D85C40;
        *(v40 + 56) = MEMORY[0x1E69E6158];
        *(v40 + 64) = sub_1B1CED4EC();
        *(v40 + 32) = v26;
        *(v40 + 40) = v25;
LABEL_18:

        v17 = sub_1B1D7BE2C();

        sub_1B1CF8E9C(v26, v25);
      }

      else
      {
LABEL_25:
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v52 = *v28;
        (*v28)(v8, v4);
        v52(v10, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1B1D85C40;
        v54 = sub_1B1D7BE1C();
        v55 = [v54 _lp_userVisibleHost];

        v56 = sub_1B1D7BE4C();
        v58 = v57;

        *(v53 + 56) = MEMORY[0x1E69E6158];
        *(v53 + 64) = sub_1B1CED4EC();
        *(v53 + 32) = v56;
        *(v53 + 40) = v58;
LABEL_26:
        v17 = sub_1B1D7BE2C();

        sub_1B1CF8E9C(v26, v25);
      }

      return v17;
    case 8u:
      v20 = (v5 + 8);
LABEL_28:
      sub_1B1D7B64C();
      v17 = sub_1B1D7B63C();
      (*v20)(v10, v4);
      return v17;
    case 9u:
      return v17;
    case 0xAu:
      return 0xD000000000000028;
    case 0xBu:
    case 0xCu:
LABEL_27:
      sub_1B1D7B64C();
      v17 = sub_1B1D7B63C();
      (*(v5 + 8))(v10, v4);
      return v17;
    default:
      v18 = *v16;
      v17 = a1(*v16);

      return v17;
  }
}

uint64_t ASAuthorizationUIContext.PasswordMessage.text.getter()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v141 - v6;
  v8 = *(v0 + 8);
  v146 = *v0;
  v9 = *(v0 + 16);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  v14 = *(v0 + 23) >> 5;
  if (v14 > 1)
  {
    v144 = *(v0 + 24);
    if (v14 != 2)
    {
      v15 = v12;
      v143 = v13;
      v145 = v8;
      if (v14 == 3)
      {
        v16 = v10;

        v17 = v15;

        sub_1B1D7B64C();
        v18 = (v2 + 8);
        if (v9)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = v10;

        v17 = v15;

        sub_1B1D7B64C();
        v18 = (v2 + 8);
        if (v9)
        {
LABEL_23:
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v41 = *v18;
          (*v18)(v5, v1);
          v41(v7, v1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1B1D88820;
          v43 = MEMORY[0x1E69E6158];
          *(v42 + 56) = MEMORY[0x1E69E6158];
          v44 = sub_1B1CED4EC();
          v45 = v145;
          *(v42 + 32) = v146;
          *(v42 + 40) = v45;
          *(v42 + 96) = v43;
          *(v42 + 104) = v44;
          v46 = v143;
          v47 = v144;
          *(v42 + 64) = v44;
          *(v42 + 72) = v47;
          *(v42 + 80) = v16;
          *(v42 + 136) = v43;
          *(v42 + 144) = v44;
          *(v42 + 112) = v46;
          *(v42 + 120) = v17;
LABEL_24:

          goto LABEL_35;
        }
      }

      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v68 = *v18;
      (*v18)(v5, v1);
      v68(v7, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1B1D88820;
      v70 = sub_1B1D7BE1C();
      v71 = [v70 _lp_userVisibleHost];

      v72 = sub_1B1D7BE4C();
      v74 = v73;

      v75 = MEMORY[0x1E69E6158];
      *(v69 + 56) = MEMORY[0x1E69E6158];
      v76 = sub_1B1CED4EC();
      *(v69 + 32) = v72;
      *(v69 + 40) = v74;
      *(v69 + 96) = v75;
      *(v69 + 104) = v76;
      v77 = v143;
      v78 = v144;
      *(v69 + 64) = v76;
      *(v69 + 72) = v78;
      *(v69 + 80) = v16;
      *(v69 + 136) = v75;
      *(v69 + 144) = v76;
      *(v69 + 112) = v77;
      *(v69 + 120) = v17;
      goto LABEL_35;
    }

    if (v9)
    {
      v31 = v10;
      if (v12)
      {
        v32 = v12;
        v143 = v13;

        v33 = v32;

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v34 = v8;
        v35 = *(v2 + 8);
        v35(v5, v1);
        v35(v7, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1B1D88820;
        v37 = MEMORY[0x1E69E6158];
        *(v36 + 56) = MEMORY[0x1E69E6158];
        v38 = sub_1B1CED4EC();
        *(v36 + 32) = v146;
        *(v36 + 40) = v34;
        *(v36 + 96) = v37;
        *(v36 + 104) = v38;
        v39 = v143;
        v40 = v144;
        *(v36 + 64) = v38;
        *(v36 + 72) = v40;
        *(v36 + 80) = v31;
        *(v36 + 136) = v37;
        *(v36 + 144) = v38;
        *(v36 + 112) = v39;
        *(v36 + 120) = v33;
      }

      else
      {

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v111 = *(v2 + 8);
        v111(v5, v1);
        v111(v7, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_1B1D85D30;
        v113 = MEMORY[0x1E69E6158];
        *(v112 + 56) = MEMORY[0x1E69E6158];
        v114 = sub_1B1CED4EC();
        *(v112 + 32) = v146;
        *(v112 + 40) = v8;
        *(v112 + 96) = v113;
        *(v112 + 104) = v114;
        v115 = v144;
        *(v112 + 64) = v114;
        *(v112 + 72) = v115;
        *(v112 + 80) = v31;
      }

      goto LABEL_24;
    }

    if (v12)
    {
      v55 = v10;
      v56 = v12;
      v143 = v13;

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v57 = *(v2 + 8);
      v57(v5, v1);
      v57(v7, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1B1D88820;
      v59 = sub_1B1D7BE1C();
      v60 = [v59 _lp_userVisibleHost];

      v61 = sub_1B1D7BE4C();
      v63 = v62;

      v64 = MEMORY[0x1E69E6158];
      *(v58 + 56) = MEMORY[0x1E69E6158];
      v65 = sub_1B1CED4EC();
      *(v58 + 32) = v61;
      *(v58 + 40) = v63;
      *(v58 + 96) = v64;
      *(v58 + 104) = v65;
      v66 = v143;
      v67 = v144;
      *(v58 + 64) = v65;
      *(v58 + 72) = v67;
      *(v58 + 80) = v55;
      *(v58 + 136) = v64;
      *(v58 + 144) = v65;
      *(v58 + 112) = v66;
      *(v58 + 120) = v56;
      goto LABEL_35;
    }

    v116 = v10;

    sub_1B1D7B64C();
    sub_1B1D7B64C();
    sub_1B1D7B62C();
    v117 = *(v2 + 8);
    v117(v5, v1);
    v117(v7, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_1B1D85D30;
    v119 = sub_1B1D7BE1C();
    v120 = [v119 _lp_userVisibleHost];

    v121 = sub_1B1D7BE4C();
    v123 = v122;

    v124 = MEMORY[0x1E69E6158];
    *(v118 + 56) = MEMORY[0x1E69E6158];
    v125 = sub_1B1CED4EC();
    *(v118 + 32) = v121;
    *(v118 + 40) = v123;
    *(v118 + 96) = v124;
    *(v118 + 104) = v125;
    v126 = v144;
    *(v118 + 64) = v125;
    *(v118 + 72) = v126;
LABEL_42:
    *(v118 + 80) = v116;
    goto LABEL_35;
  }

  v145 = v8;
  if (!v14)
  {
    v20 = *(v0 + 56);
    v19 = *(v0 + 64);
    v21 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v21 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = v12 == 0;
    }

    v23 = v22;
    if (v9)
    {
      if ((v23 & 1) == 0)
      {
        v95 = v12;

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v96 = *(v2 + 8);
        v96(v5, v1);
        v96(v7, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_1B1D85D30;
        v98 = MEMORY[0x1E69E6158];
        *(v97 + 56) = MEMORY[0x1E69E6158];
        v99 = sub_1B1CED4EC();
        v100 = v145;
        *(v97 + 32) = v146;
        *(v97 + 40) = v100;
        *(v97 + 96) = v98;
        *(v97 + 104) = v99;
        *(v97 + 64) = v99;
        *(v97 + 72) = v13;
        *(v97 + 80) = v95;

        goto LABEL_35;
      }

      v144 = v11;
      v24 = v10;

      if (v19)
      {

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v25 = *(v2 + 8);
        v25(v5, v1);
        v25(v7, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1B1D88820;
        v27 = MEMORY[0x1E69E6158];
        *(v26 + 56) = MEMORY[0x1E69E6158];
        v28 = sub_1B1CED4EC();
        v29 = v145;
        *(v26 + 32) = v146;
        *(v26 + 40) = v29;
        *(v26 + 96) = v27;
        *(v26 + 104) = v28;
        v30 = v144;
        *(v26 + 64) = v28;
        *(v26 + 72) = v30;
        *(v26 + 80) = v24;
        *(v26 + 136) = v27;
        *(v26 + 144) = v28;
        *(v26 + 112) = v20;
        *(v26 + 120) = v19;
      }

      else
      {
        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v127 = *(v2 + 8);
        v127(v5, v1);
        v127(v7, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_1B1D85D30;
        v129 = MEMORY[0x1E69E6158];
        *(v128 + 56) = MEMORY[0x1E69E6158];
        v130 = sub_1B1CED4EC();
        v131 = v145;
        *(v128 + 32) = v146;
        *(v128 + 40) = v131;
        *(v128 + 96) = v129;
        *(v128 + 104) = v130;
        v132 = v144;
        *(v128 + 64) = v130;
        *(v128 + 72) = v132;
        *(v128 + 80) = v24;
      }

      goto LABEL_24;
    }

    if ((v23 & 1) == 0)
    {
      v101 = v12;

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v102 = *(v2 + 8);
      v102(v5, v1);
      v102(v7, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1B1D85D30;
      v104 = sub_1B1D7BE1C();
      v105 = [v104 _lp_userVisibleHost];

      v106 = sub_1B1D7BE4C();
      v108 = v107;

      v109 = MEMORY[0x1E69E6158];
      *(v103 + 56) = MEMORY[0x1E69E6158];
      v110 = sub_1B1CED4EC();
      *(v103 + 32) = v106;
      *(v103 + 40) = v108;
      *(v103 + 96) = v109;
      *(v103 + 104) = v110;
      *(v103 + 64) = v110;
      *(v103 + 72) = v13;
      *(v103 + 80) = v101;
      goto LABEL_35;
    }

    v79 = v11;
    if (v19)
    {
      v80 = v10;

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      v143 = sub_1B1D7B62C();
      v81 = *(v2 + 8);
      v81(v5, v1);
      v81(v7, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1B1D88820;
      v83 = sub_1B1D7BE1C();
      v84 = [v83 _lp_userVisibleHost];

      v85 = sub_1B1D7BE4C();
      v87 = v86;

      v88 = MEMORY[0x1E69E6158];
      *(v82 + 56) = MEMORY[0x1E69E6158];
      v89 = sub_1B1CED4EC();
      *(v82 + 32) = v85;
      *(v82 + 40) = v87;
      *(v82 + 96) = v88;
      *(v82 + 104) = v89;
      *(v82 + 64) = v89;
      *(v82 + 72) = v79;
      *(v82 + 80) = v80;
      *(v82 + 136) = v88;
      *(v82 + 144) = v89;
      *(v82 + 112) = v20;
      *(v82 + 120) = v19;
      goto LABEL_35;
    }

    v116 = v10;

    sub_1B1D7B64C();
    sub_1B1D7B64C();
    sub_1B1D7B62C();
    v133 = *(v2 + 8);
    v133(v5, v1);
    v133(v7, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_1B1D85D30;
    v134 = sub_1B1D7BE1C();
    v135 = [v134 _lp_userVisibleHost];

    v136 = sub_1B1D7BE4C();
    v138 = v137;

    v139 = MEMORY[0x1E69E6158];
    *(v118 + 56) = MEMORY[0x1E69E6158];
    v140 = sub_1B1CED4EC();
    *(v118 + 32) = v136;
    *(v118 + 40) = v138;
    *(v118 + 96) = v139;
    *(v118 + 104) = v140;
    *(v118 + 64) = v140;
    *(v118 + 72) = v79;
    goto LABEL_42;
  }

  v142 = v10;
  v48 = v12;

  sub_1B1D7B64C();
  sub_1B1D7B64C();
  v143 = sub_1B1D7B62C();
  v49 = *(v2 + 8);
  v49(v5, v1);
  v49(v7, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B1D88820;
  v51 = MEMORY[0x1E69E6158];
  *(v50 + 56) = MEMORY[0x1E69E6158];
  v52 = sub_1B1CED4EC();
  *(v50 + 32) = v13;
  *(v50 + 40) = v48;
  *(v50 + 96) = v51;
  *(v50 + 104) = v52;
  *(v50 + 64) = v52;
  *(v50 + 72) = v11;
  *(v50 + 80) = v142;
  if (v9)
  {
    v53 = v145;

    v54 = v146;
  }

  else
  {
    v90 = sub_1B1D7BE1C();
    v91 = [v90 _lp_userVisibleHost];

    v54 = sub_1B1D7BE4C();
    v53 = v92;
  }

  *(v50 + 136) = v51;
  *(v50 + 144) = v52;
  *(v50 + 112) = v54;
  *(v50 + 120) = v53;
LABEL_35:
  v93 = sub_1B1D7BE2C();

  return v93;
}

uint64_t ASAuthorizationUIContext.PasskeyMessage.text.getter()
{
  v1 = v0;
  v2 = sub_1B1D7C08C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v259 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B1D7B65C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v259 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v259 - v11;
  v13 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v259 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1D770B8(v1, v15, type metadata accessor for ASAuthorizationUIContext.PasskeyMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *v15;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v63 = *v15;
      v64 = *(v15 + 1);
      v65 = v15[16];
      sub_1B1D7B64C();
      v66 = (v7 + 8);
      if (v65 != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_34;
    case 2:
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775150, &qword_1B1D863C0);
      (*(v3 + 32))(v5, &v15[*(v55 + 48)], v2);
      sub_1B1D7B64C();
      sub_1B1D7B63C();
      (*(v7 + 8))(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v221 = swift_allocObject();
      *(v221 + 16) = xmmword_1B1D85C40;
      v222 = sub_1B1D7C03C();
      v224 = v223;
      *(v221 + 56) = MEMORY[0x1E69E6158];
      *(v221 + 64) = sub_1B1CED4EC();
      *(v221 + 32) = v222;
      *(v221 + 40) = v224;
      v225 = sub_1B1D7BE2C();

      (*(v3 + 8))(v5, v2);
      return v225;
    case 3:
      v263 = *(v15 + 1);
      v264 = v17;
      v56 = v15[16];
      v57 = *(v15 + 4);
      v262 = *(v15 + 3);
      v58 = *(v15 + 6);
      v59 = *(v15 + 7);
      if (v15[40] == 1)
      {
        if (v56)
        {
          if (v59)
          {
            goto LABEL_48;
          }

LABEL_86:
          sub_1B1D7B64C();
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v238 = *(v7 + 8);
          v238(v10, v6);
          v238(v12, v6);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v239 = swift_allocObject();
          *(v239 + 16) = xmmword_1B1D85D30;
          v240 = MEMORY[0x1E69E6158];
          *(v239 + 56) = MEMORY[0x1E69E6158];
          v241 = sub_1B1CED4EC();
          v243 = v263;
          v242 = v264;
          *(v239 + 32) = v264;
          *(v239 + 40) = v243;
          *(v239 + 96) = v240;
          *(v239 + 104) = v241;
          v244 = v262;
          *(v239 + 64) = v241;
          *(v239 + 72) = v244;
          *(v239 + 80) = v57;
          sub_1B1CEF6D4(v242, v243);

          v225 = sub_1B1D7BE2C();

          v102 = v242;
          v103 = v243;
          goto LABEL_83;
        }

        if (v59)
        {
          sub_1B1D7B64C();
          sub_1B1D7B64C();
          v181 = sub_1B1D7B62C();
          v260 = v182;
          v261 = v181;
          v183 = *(v7 + 8);
          v183(v10, v6);
          v183(v12, v6);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v184 = swift_allocObject();
          *(v184 + 16) = xmmword_1B1D88820;
          v185 = v263;
          v186 = v264;
          v187 = sub_1B1D7BE1C();
          v188 = [v187 _lp_userVisibleHost];
LABEL_69:
          v192 = v188;

          v193 = sub_1B1D7BE4C();
          v195 = v194;

          v196 = MEMORY[0x1E69E6158];
          *(v184 + 56) = MEMORY[0x1E69E6158];
          v197 = sub_1B1CED4EC();
          *(v184 + 32) = v193;
          *(v184 + 40) = v195;
          *(v184 + 96) = v196;
          *(v184 + 104) = v197;
          v198 = v262;
          *(v184 + 64) = v197;
          *(v184 + 72) = v198;
          *(v184 + 80) = v57;
          *(v184 + 136) = v196;
          *(v184 + 144) = v197;
          *(v184 + 112) = v58;
          *(v184 + 120) = v59;

          v225 = sub_1B1D7BE2C();

          v102 = v186;
          v103 = v185;
          goto LABEL_83;
        }

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v245 = *(v7 + 8);
        v245(v10, v6);
        v245(v12, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v246 = swift_allocObject();
        *(v246 + 16) = xmmword_1B1D85D30;
        v248 = v263;
        v247 = v264;
        v249 = sub_1B1D7BE1C();
        v250 = [v249 _lp_userVisibleHost];
      }

      else
      {
        if (v56)
        {
          if (v59)
          {
LABEL_48:
            sub_1B1D7B64C();
            sub_1B1D7B64C();
            v261 = sub_1B1D7B62C();
            v117 = *(v7 + 8);
            v117(v10, v6);
            v117(v12, v6);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
            v118 = swift_allocObject();
            *(v118 + 16) = xmmword_1B1D88820;
            v119 = MEMORY[0x1E69E6158];
            *(v118 + 56) = MEMORY[0x1E69E6158];
            v120 = sub_1B1CED4EC();
            v121 = v263;
            v122 = v264;
            *(v118 + 32) = v264;
            *(v118 + 40) = v121;
            *(v118 + 96) = v119;
            *(v118 + 104) = v120;
            v123 = v262;
            *(v118 + 64) = v120;
            *(v118 + 72) = v123;
            *(v118 + 80) = v57;
            *(v118 + 136) = v119;
            *(v118 + 144) = v120;
            *(v118 + 112) = v58;
            *(v118 + 120) = v59;
            sub_1B1CEF6D4(v122, v121);

            v225 = sub_1B1D7BE2C();

            v102 = v122;
            v103 = v121;
            goto LABEL_83;
          }

          goto LABEL_86;
        }

        if (v59)
        {
          sub_1B1D7B64C();
          sub_1B1D7B64C();
          v189 = sub_1B1D7B62C();
          v260 = v190;
          v261 = v189;
          v191 = *(v7 + 8);
          v191(v10, v6);
          v191(v12, v6);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v184 = swift_allocObject();
          *(v184 + 16) = xmmword_1B1D88820;
          v185 = v263;
          v186 = v264;
          v187 = sub_1B1D7BE1C();
          v188 = [v187 _lp_userVisibleHost];
          goto LABEL_69;
        }

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v251 = *(v7 + 8);
        v251(v10, v6);
        v251(v12, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v246 = swift_allocObject();
        *(v246 + 16) = xmmword_1B1D85D30;
        v248 = v263;
        v247 = v264;
        v249 = sub_1B1D7BE1C();
        v250 = [v249 _lp_userVisibleHost];
      }

      v252 = v250;

      v253 = sub_1B1D7BE4C();
      v255 = v254;

      v256 = MEMORY[0x1E69E6158];
      *(v246 + 56) = MEMORY[0x1E69E6158];
      v257 = sub_1B1CED4EC();
      *(v246 + 32) = v253;
      *(v246 + 40) = v255;
      *(v246 + 96) = v256;
      *(v246 + 104) = v257;
      v258 = v262;
      *(v246 + 64) = v257;
      *(v246 + 72) = v258;
      *(v246 + 80) = v57;

      v225 = sub_1B1D7BE2C();

      v102 = v247;
      v103 = v248;
      goto LABEL_83;
    case 4:
      v37 = *v15;
      v38 = *(v15 + 1);
      v39 = v15[16];
      v264 = *(v15 + 4);
      v40 = (v7 + 8);
      if (v15[40] == 1)
      {
        sub_1B1D7B64C();
        if (v39)
        {
          goto LABEL_41;
        }
      }

      else
      {
        sub_1B1D7B64C();
        if (v39)
        {
LABEL_41:
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v100 = *v40;
          (*v40)(v10, v6);
          v100(v12, v6);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v101 = swift_allocObject();
          *(v101 + 16) = xmmword_1B1D85C40;
          *(v101 + 56) = MEMORY[0x1E69E6158];
          *(v101 + 64) = sub_1B1CED4EC();
          *(v101 + 32) = v37;
          *(v101 + 40) = v38;

          v225 = sub_1B1D7BE2C();

          v102 = v37;
          v103 = v38;
          goto LABEL_83;
        }
      }

      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v163 = *v40;
      (*v40)(v10, v6);
      v163(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v164 = swift_allocObject();
      *(v164 + 16) = xmmword_1B1D85C40;
      v165 = sub_1B1D7BE1C();
      v166 = [v165 _lp_userVisibleHost];

      v167 = sub_1B1D7BE4C();
      v169 = v168;

      *(v164 + 56) = MEMORY[0x1E69E6158];
      *(v164 + 64) = sub_1B1CED4EC();
      *(v164 + 32) = v167;
      *(v164 + 40) = v169;
      v225 = sub_1B1D7BE2C();

      v102 = v37;
      v103 = v38;
      goto LABEL_83;
    case 5:
      v263 = *(v15 + 1);
      v264 = v17;
      LODWORD(v262) = v15[16];
      v67 = *(v15 + 3);
      v68 = *(v15 + 4);
      v69 = *(v15 + 6);
      v70 = *(v15 + 7);
      if (v15[40] == 1)
      {
        sub_1B1D7B64C();
        sub_1B1D7B63C();
        (*(v7 + 8))(v12, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1B1D88820;
        v72 = MEMORY[0x1E69E6158];
        *(v71 + 56) = MEMORY[0x1E69E6158];
        v73 = sub_1B1CED4EC();
        *(v71 + 32) = v69;
        *(v71 + 40) = v70;
        *(v71 + 96) = v72;
        *(v71 + 104) = v73;
        *(v71 + 64) = v73;
        *(v71 + 72) = v67;
        *(v71 + 80) = v68;

        if (v262)
        {
          goto LABEL_37;
        }

        goto LABEL_76;
      }

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      v260 = sub_1B1D7B62C();
      v261 = v136;
      v137 = *(v7 + 8);
      v137(v10, v6);
      v137(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_1B1D88820;
      v139 = MEMORY[0x1E69E6158];
      *(v138 + 56) = MEMORY[0x1E69E6158];
      v140 = sub_1B1CED4EC();
      *(v138 + 32) = v69;
      *(v138 + 40) = v70;
      *(v138 + 96) = v139;
      *(v138 + 104) = v140;
      *(v138 + 64) = v140;
      *(v138 + 72) = v67;
      *(v138 + 80) = v68;

      if (v262)
      {
        goto LABEL_62;
      }

      goto LABEL_78;
    case 6:
      v18 = *v15;
      v19 = *(v15 + 1);
      v80 = v15[16];
      v81 = *(v15 + 3);
      v82 = *(v15 + 4);
      v83 = v15[40];
      v84 = *(v15 + 7);
      v262 = *(v15 + 6);
      v263 = v84;
      v264 = v81;
      v85 = (v7 + 8);
      if (v83 == 1)
      {
        sub_1B1D7B64C();
        if (v80)
        {
          goto LABEL_59;
        }
      }

      else
      {
        sub_1B1D7B64C();
        if (v80)
        {
LABEL_59:
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v144 = *v85;
          (*v85)(v10, v6);
          v144(v12, v6);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v145 = swift_allocObject();
          *(v145 + 16) = xmmword_1B1D88820;
          v146 = MEMORY[0x1E69E6158];
          *(v145 + 56) = MEMORY[0x1E69E6158];
          v147 = sub_1B1CED4EC();
          *(v145 + 32) = v18;
          *(v145 + 40) = v19;
          *(v145 + 96) = v146;
          *(v145 + 104) = v147;
          v149 = v262;
          v148 = v263;
          *(v145 + 64) = v147;
          *(v145 + 72) = v149;
          *(v145 + 80) = v148;
          *(v145 + 136) = v146;
          *(v145 + 144) = v147;
          *(v145 + 112) = v264;
          *(v145 + 120) = v82;
          goto LABEL_80;
        }
      }

      sub_1B1D7B64C();
      v261 = sub_1B1D7B62C();
      v203 = *v85;
      (*v85)(v10, v6);
      v203(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v204 = swift_allocObject();
      *(v204 + 16) = xmmword_1B1D88820;
      v205 = sub_1B1D7BE1C();
      v206 = [v205 _lp_userVisibleHost];

      v207 = sub_1B1D7BE4C();
      v209 = v208;

      v210 = MEMORY[0x1E69E6158];
      *(v204 + 56) = MEMORY[0x1E69E6158];
      v211 = sub_1B1CED4EC();
      *(v204 + 32) = v207;
      *(v204 + 40) = v209;
      *(v204 + 96) = v210;
      *(v204 + 104) = v211;
      v213 = v262;
      v212 = v263;
      *(v204 + 64) = v211;
      *(v204 + 72) = v213;
      *(v204 + 80) = v212;
      *(v204 + 136) = v210;
      *(v204 + 144) = v211;
      *(v204 + 112) = v264;
      *(v204 + 120) = v82;
LABEL_74:

      goto LABEL_75;
    case 7:
      v19 = *(v15 + 1);
      v61 = *(v15 + 3);
      v60 = *(v15 + 4);
      v62 = (v7 + 8);
      if (v15[40] == 1)
      {
        if (v15[16])
        {
          v264 = *(v15 + 3);
          v18 = v17;
LABEL_22:
          sub_1B1D7B64C();
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v226 = *v62;
          (*v62)(v10, v6);
          v226(v12, v6);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v227 = swift_allocObject();
          *(v227 + 16) = xmmword_1B1D85D30;
          v228 = MEMORY[0x1E69E6158];
          *(v227 + 56) = MEMORY[0x1E69E6158];
          v229 = sub_1B1CED4EC();
          *(v227 + 32) = v18;
          *(v227 + 40) = v19;
          *(v227 + 96) = v228;
          *(v227 + 104) = v229;
          v230 = v264;
          *(v227 + 64) = v229;
          *(v227 + 72) = v230;
          *(v227 + 80) = v60;
          goto LABEL_80;
        }

        v199 = *v15;
      }

      else
      {
        if (v15[16])
        {
          v264 = *(v15 + 3);
          v18 = v17;
          goto LABEL_22;
        }

        v199 = *v15;
      }

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      v264 = sub_1B1D7B62C();
      v200 = *v62;
      (*v62)(v10, v6);
      v200(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v201 = swift_allocObject();
      *(v201 + 16) = xmmword_1B1D85D30;
      v202 = sub_1B1D7BE1C();
      v231 = [v202 _lp_userVisibleHost];

      v232 = sub_1B1D7BE4C();
      v234 = v233;

      v235 = MEMORY[0x1E69E6158];
      *(v201 + 56) = MEMORY[0x1E69E6158];
      v236 = sub_1B1CED4EC();
      *(v201 + 32) = v232;
      *(v201 + 40) = v234;
      *(v201 + 96) = v235;
      *(v201 + 104) = v236;
      *(v201 + 64) = v236;
      *(v201 + 72) = v61;
      *(v201 + 80) = v60;

      v225 = sub_1B1D7BE2C();

      v102 = v199;
      goto LABEL_82;
    case 8:
      v263 = *(v15 + 1);
      v264 = v17;
      LODWORD(v262) = v15[16];
      v89 = *(v15 + 3);
      v68 = *(v15 + 4);
      v90 = *(v15 + 6);
      v91 = *(v15 + 7);
      if (v15[40] == 1)
      {
        sub_1B1D7B64C();
        sub_1B1D7B63C();
        (*(v7 + 8))(v12, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1B1D88820;
        v92 = MEMORY[0x1E69E6158];
        *(v71 + 56) = MEMORY[0x1E69E6158];
        v73 = sub_1B1CED4EC();
        *(v71 + 32) = v90;
        *(v71 + 40) = v91;
        *(v71 + 96) = v92;
        *(v71 + 104) = v73;
        *(v71 + 64) = v73;
        *(v71 + 72) = v89;
        *(v71 + 80) = v68;

        if (v262)
        {
LABEL_37:
          v94 = v263;
          v93 = v264;
          sub_1B1CEF6D4(v264, v263);
          v95 = v93;
          v96 = v94;
        }

        else
        {
LABEL_76:
          v94 = v263;
          v93 = v264;
          v214 = sub_1B1D7BE1C();
          v215 = [v214 _lp_userVisibleHost];
          v261 = v68;
          v216 = v215;

          v95 = sub_1B1D7BE4C();
          v96 = v217;
        }

        *(v71 + 136) = MEMORY[0x1E69E6158];
        *(v71 + 144) = v73;
        *(v71 + 112) = v95;
        *(v71 + 120) = v96;
        sub_1B1CF8E9C(v93, v94);

        v225 = sub_1B1D7BE2C();
      }

      else
      {
        sub_1B1D7B64C();
        sub_1B1D7B64C();
        v260 = sub_1B1D7B62C();
        v261 = v157;
        v158 = *(v7 + 8);
        v158(v10, v6);
        v158(v12, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v138 = swift_allocObject();
        *(v138 + 16) = xmmword_1B1D88820;
        v139 = MEMORY[0x1E69E6158];
        *(v138 + 56) = MEMORY[0x1E69E6158];
        v140 = sub_1B1CED4EC();
        *(v138 + 32) = v90;
        *(v138 + 40) = v91;
        *(v138 + 96) = v139;
        *(v138 + 104) = v140;
        *(v138 + 64) = v140;
        *(v138 + 72) = v89;
        *(v138 + 80) = v68;

        if (v262)
        {
LABEL_62:
          v160 = v263;
          v159 = v264;
          sub_1B1CEF6D4(v264, v263);
          v161 = v159;
          v162 = v160;
        }

        else
        {
LABEL_78:
          v160 = v263;
          v159 = v264;
          v218 = sub_1B1D7BE1C();
          v219 = [v218 _lp_userVisibleHost];

          v161 = sub_1B1D7BE4C();
          v162 = v220;
        }

        *(v138 + 136) = v139;
        *(v138 + 144) = v140;
        *(v138 + 112) = v161;
        *(v138 + 120) = v162;
        sub_1B1CF8E9C(v159, v160);

        v225 = sub_1B1D7BE2C();
      }

      goto LABEL_84;
    case 9:
      v48 = *v15;
      v49 = *(v15 + 1);
      v50 = v15[16];
      v51 = *(v15 + 4);
      v263 = *(v15 + 3);
      v264 = v49;
      v52 = v15[40];
      v53 = *(v15 + 7);
      v261 = *(v15 + 6);
      v262 = v53;
      v54 = (v7 + 8);
      if (v52 == 1)
      {
        sub_1B1D7B64C();
        if (v50)
        {
          goto LABEL_45;
        }
      }

      else
      {
        sub_1B1D7B64C();
        if (v50)
        {
LABEL_45:
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v110 = *v54;
          (*v54)(v10, v6);
          v110(v12, v6);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_1B1D88820;
          v112 = MEMORY[0x1E69E6158];
          *(v111 + 56) = MEMORY[0x1E69E6158];
          v113 = sub_1B1CED4EC();
          v114 = v48;
          *(v111 + 32) = v48;
          v19 = v264;
          *(v111 + 40) = v264;
          *(v111 + 96) = v112;
          *(v111 + 104) = v113;
          v116 = v261;
          v115 = v262;
          *(v111 + 64) = v113;
          *(v111 + 72) = v116;
          *(v111 + 80) = v115;
          *(v111 + 136) = v112;
          *(v111 + 144) = v113;
          *(v111 + 112) = v263;
          *(v111 + 120) = v51;
          sub_1B1CEF6D4(v114, v19);

          v225 = sub_1B1D7BE2C();

          v102 = v114;
          goto LABEL_81;
        }
      }

      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v170 = *v54;
      (*v54)(v10, v6);
      v170(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_1B1D88820;
      v18 = v48;
      v19 = v264;
      v172 = sub_1B1D7BE1C();
      v173 = [v172 _lp_userVisibleHost];

      v174 = sub_1B1D7BE4C();
      v176 = v175;

      v177 = MEMORY[0x1E69E6158];
      *(v171 + 56) = MEMORY[0x1E69E6158];
      v178 = sub_1B1CED4EC();
      *(v171 + 32) = v174;
      *(v171 + 40) = v176;
      *(v171 + 96) = v177;
      *(v171 + 104) = v178;
      v180 = v261;
      v179 = v262;
      *(v171 + 64) = v178;
      *(v171 + 72) = v180;
      *(v171 + 80) = v179;
      *(v171 + 136) = v177;
      *(v171 + 144) = v178;
      *(v171 + 112) = v263;
      *(v171 + 120) = v51;

LABEL_75:
      v225 = sub_1B1D7BE2C();

      v102 = v18;
LABEL_82:
      v103 = v19;
LABEL_83:
      sub_1B1CF8E9C(v102, v103);
LABEL_84:

      return v225;
    case 10:
      v63 = *v15;
      v64 = *(v15 + 1);
      v86 = v15[16];
      sub_1B1D7B64C();
      v66 = (v7 + 8);
      if (v86 == 1)
      {
LABEL_34:
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v87 = *v66;
        (*v66)(v10, v6);
        v87(v12, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1B1D85C40;
        *(v88 + 56) = MEMORY[0x1E69E6158];
        *(v88 + 64) = sub_1B1CED4EC();
        *(v88 + 32) = v63;
        *(v88 + 40) = v64;

        v225 = sub_1B1D7BE2C();

        sub_1B1CF8E9C(v63, v64);
      }

      else
      {
LABEL_60:
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v150 = *v66;
        (*v66)(v10, v6);
        v150(v12, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v151 = swift_allocObject();
        *(v151 + 16) = xmmword_1B1D85C40;
        v152 = sub_1B1D7BE1C();
        v153 = [v152 _lp_userVisibleHost];

        v154 = sub_1B1D7BE4C();
        v156 = v155;

        *(v151 + 56) = MEMORY[0x1E69E6158];
        *(v151 + 64) = sub_1B1CED4EC();
        *(v151 + 32) = v154;
        *(v151 + 40) = v156;
        v225 = sub_1B1D7BE2C();

        sub_1B1CF8E9C(v63, v64);
      }

      return v225;
    case 11:
      v32 = *(v15 + 1);
      v33 = v15[16];
      sub_1B1D7B64C();
      sub_1B1D7B63C();
      (*(v7 + 8))(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1B1D85C40;
      if (v33 == 1)
      {

        v35 = v17;
        v36 = v32;
      }

      else
      {
        v97 = sub_1B1D7BE1C();
        v98 = [v97 _lp_userVisibleHost];

        v35 = sub_1B1D7BE4C();
        v36 = v99;
      }

      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = sub_1B1CED4EC();
      *(v34 + 32) = v35;
      *(v34 + 40) = v36;
      sub_1B1CF8E9C(v17, v32);
      v225 = sub_1B1D7BE2C();

      goto LABEL_84;
    case 12:
      v41 = *(v15 + 1);
      v42 = v15[16];
      v43 = *(v15 + 3);
      v263 = *(v15 + 4);
      v44 = *(v15 + 6);
      v262 = sub_1B1D77524();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1B1D85D30;
      v264 = v44;
      if (v42 == 1)
      {

        v46 = v17;
        v47 = v41;
      }

      else
      {
        v104 = sub_1B1D7BE1C();
        v105 = [v104 _lp_userVisibleHost];

        v46 = sub_1B1D7BE4C();
        v47 = v106;
      }

      v107 = MEMORY[0x1E69E6158];
      *(v45 + 56) = MEMORY[0x1E69E6158];
      v108 = sub_1B1CED4EC();
      *(v45 + 64) = v108;
      *(v45 + 32) = v46;
      *(v45 + 40) = v47;
      sub_1B1CF8E9C(v17, v41);
      *(v45 + 96) = v107;
      *(v45 + 104) = v108;
      v109 = v263;
      *(v45 + 72) = v43;
      *(v45 + 80) = v109;
      v225 = sub_1B1D7BE2C();

      goto LABEL_57;
    case 13:
      v74 = *(v15 + 1);
      v75 = v15[16];
      v76 = *(v15 + 4);
      sub_1B1D776C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1B1D85C40;
      if (v75 == 1)
      {

        v78 = v17;
        v79 = v74;
      }

      else
      {
        v141 = sub_1B1D7BE1C();
        v142 = [v141 _lp_userVisibleHost];

        v78 = sub_1B1D7BE4C();
        v79 = v143;
      }

      *(v77 + 56) = MEMORY[0x1E69E6158];
      *(v77 + 64) = sub_1B1CED4EC();
      *(v77 + 32) = v78;
      *(v77 + 40) = v79;
      sub_1B1CF8E9C(v17, v74);
      v225 = sub_1B1D7BE2C();

LABEL_57:

      goto LABEL_84;
    default:
      v18 = *v15;
      v19 = *(v15 + 1);
      v20 = v15[16];
      v21 = *(v15 + 4);
      v23 = *(v15 + 6);
      v22 = *(v15 + 7);
      v262 = *(v15 + 3);
      v263 = v23;
      v264 = v22;
      sub_1B1D7B64C();
      v24 = (v7 + 8);
      if (v20 != 1)
      {
        sub_1B1D7B64C();
        v261 = sub_1B1D7B62C();
        v124 = *v24;
        (*v24)(v10, v6);
        v124(v12, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_1B1D88820;
        v126 = sub_1B1D7BE1C();
        v127 = [v126 _lp_userVisibleHost];

        v128 = sub_1B1D7BE4C();
        v130 = v129;

        v131 = MEMORY[0x1E69E6158];
        *(v125 + 56) = MEMORY[0x1E69E6158];
        v132 = sub_1B1CED4EC();
        *(v125 + 32) = v128;
        *(v125 + 40) = v130;
        *(v125 + 96) = v131;
        *(v125 + 104) = v132;
        v133 = v262;
        v134 = v263;
        *(v125 + 64) = v132;
        *(v125 + 72) = v133;
        *(v125 + 80) = v21;
        *(v125 + 136) = v131;
        *(v125 + 144) = v132;
        v135 = v264;
        *(v125 + 112) = v134;
        *(v125 + 120) = v135;
        goto LABEL_74;
      }

      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v25 = *v24;
      (*v24)(v10, v6);
      v25(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1B1D88820;
      v27 = MEMORY[0x1E69E6158];
      *(v26 + 56) = MEMORY[0x1E69E6158];
      v28 = sub_1B1CED4EC();
      *(v26 + 32) = v18;
      *(v26 + 40) = v19;
      *(v26 + 96) = v27;
      *(v26 + 104) = v28;
      v29 = v262;
      v30 = v263;
      *(v26 + 64) = v28;
      *(v26 + 72) = v29;
      *(v26 + 80) = v21;
      *(v26 + 136) = v27;
      *(v26 + 144) = v28;
      v31 = v264;
      *(v26 + 112) = v30;
      *(v26 + 120) = v31;
LABEL_80:
      sub_1B1CEF6D4(v18, v19);

      v225 = sub_1B1D7BE2C();

      v102 = v18;
LABEL_81:
      v103 = v19;
      goto LABEL_83;
  }
}

uint64_t ASAuthorizationUIContext.Service.name.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
  }

  else
  {
    v2 = sub_1B1D7BE1C();
    v3 = [v2 _lp_userVisibleHost];

    v1 = sub_1B1D7BE4C();
  }

  return v1;
}

uint64_t sub_1B1D770B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ASAuthorizationUIContext.MainButton.ButtonText.text.getter()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v0;
  if (*(v0 + 8) > 2u)
  {
    if (v8 <= 3)
    {
      if (v8 == 2)
      {
        goto LABEL_11;
      }
    }

    else if (v8 <= 5)
    {
      if (v8 != 4)
      {
LABEL_11:
        sub_1B1D7B64C();
        sub_1B1D7B64C();
        v9 = sub_1B1D7B62C();
        v11 = *(v2 + 8);
        v11(v5, v1);
        v11(v7, v1);
        return v9;
      }
    }

    else if (v8 == 7)
    {
      goto LABEL_11;
    }
  }

  sub_1B1D7B64C();
  v9 = sub_1B1D7B63C();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1B1D77524()
{
  v0 = sub_1B1D7B65C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1B1D7B89C() & 1) == 0)
  {
    sub_1B1D7B8BC();
  }

  sub_1B1D7B8AC();
  sub_1B1D7B64C();
  v4 = sub_1B1D7B63C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1B1D776C4()
{
  v0 = sub_1B1D7B65C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1B1D7B89C() & 1) == 0)
  {
    sub_1B1D7B8BC();
  }

  sub_1B1D7B8AC();
  sub_1B1D7B64C();
  v4 = sub_1B1D7B63C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void getWBSPrivacyProxyChangeNotification_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNotificationName getWBSPrivacyProxyChangeNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
}

void getSFScreenScale_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGFloat getSFScreenScale(void)"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

void MobileSafariLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileSafariLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:38 description:{@"%s", *a1}];

  __break(1u);
}

void __getWBSCacheClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSCacheClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:49 description:{@"Unable to find class %s", "WBSCache"}];

  __break(1u);
}

void SafariSharedLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariSharedLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:48 description:{@"%s", *a1}];

  __break(1u);
}

void __getWBSPrivacyProxyAvailabilityManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSPrivacyProxyAvailabilityManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:23 description:{@"Unable to find class %s", "WBSPrivacyProxyAvailabilityManager"}];

  __break(1u);
}

void SafariSharedUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariSharedUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:6 description:{@"%s", *a1}];

  __break(1u);
}

void __getWBUHistoryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBUHistoryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:56 description:{@"Unable to find class %s", "WBUHistory"}];

  __break(1u);
}

void __getWBUHistoryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:55 description:{@"%s", *a1}];

  __break(1u);
}

void __getWBSHistoryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSHistoryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:50 description:{@"Unable to find class %s", "WBSHistory"}];

  __break(1u);
}

void __getWBSImageUtilitiesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSImageUtilitiesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:14 description:{@"Unable to find class %s", "WBSImageUtilities"}];

  __break(1u);
}

void __getWBSTouchIconResponseClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSTouchIconResponseClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:18 description:{@"Unable to find class %s", "WBSTouchIconResponse"}];

  __break(1u);
}

void __getAAUIProfilePictureStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAAUIProfilePictureStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASAccountSharingGroupMemberDataManager.m" lineNumber:48 description:{@"Unable to find class %s", "AAUIProfilePictureStore"}];

  __break(1u);
}

void __getAAUIProfilePictureStoreClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleAccountUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASAccountSharingGroupMemberDataManager.m" lineNumber:47 description:{@"%s", *a1}];

  __break(1u);
}

void __getPMCredentialRequestPaneHeaderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPMCredentialRequestPaneHeaderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ASCredentialRequestPaneContext.m" lineNumber:20 description:{@"Unable to find class %s", "PMCredentialRequestPaneHeader"}];

  __break(1u);
}

void __getPMCredentialRequestPaneHeaderClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PasswordManagerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ASCredentialRequestPaneContext.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getSFAuthenticationSessionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFAuthenticationSessionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ASWebAuthenticationSessionIOS.m" lineNumber:83 description:{@"Unable to find class %s", "SFAuthenticationSession"}];

  __break(1u);
}

void __getSFAuthenticationSessionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ASWebAuthenticationSessionIOS.m" lineNumber:82 description:{@"%s", *a1}];

  __break(1u);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}