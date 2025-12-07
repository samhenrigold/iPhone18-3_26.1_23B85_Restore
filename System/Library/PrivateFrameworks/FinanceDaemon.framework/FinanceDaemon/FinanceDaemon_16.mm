uint64_t sub_226C49B64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_226D677FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CC6DF0])
  {
    (*(v5 + 8))(a1, v4);
    *a2 = -1;
    v10 = MEMORY[0x277D20910];
LABEL_11:
    v11 = *v10;
    v12 = sub_226D6DA4C();
    return (*(*(v12 - 8) + 104))(a2, v11, v12);
  }

  if (v9 == *MEMORY[0x277CC6DE0])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20900];
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x277CC6DD8])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D208F8];
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x277CC6DF8])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20918];
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x277CC6DE8])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20908];
    goto LABEL_11;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226C49DF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_226D6C69C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CC8320])
  {
    (*(v5 + 8))(a1, v4);
    *a2 = -1;
    v10 = MEMORY[0x277D20950];
LABEL_21:
    v11 = *v10;
    v12 = sub_226D6DCDC();
    return (*(*(v12 - 8) + 104))(a2, v11, v12);
  }

  if (v9 == *MEMORY[0x277CC8318])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20948];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8328])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20958];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8300])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20930];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8340])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20970];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8338])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20968];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8310])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20940];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8308])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20938];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8330])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20960];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC82F8])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20928];
    goto LABEL_21;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226C4A194@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8390, &qword_226D783F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_226D6DBFC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x22AA89C90](v12);
  v15 = [a1 recipientFullName];
  if (v15)
  {
    v16 = v15;
    sub_226D6E39C();
  }

  sub_226D6DBDC();
  v17 = [a1 recipientEmailAddress];
  if (v17)
  {
    v18 = v17;
    sub_226D6E39C();
  }

  sub_226D6DB9C();
  v19 = [a1 recipientPhoneNumber];
  if (v19)
  {
    v20 = v19;
    sub_226D6E39C();
  }

  sub_226D6DB7C();
  v21 = [a1 recipientAddress];
  if (v21)
  {
    sub_226C4A51C(v21);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_226D6DDAC();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v9, v22, 1, v23);
  sub_226D6DBBC();
  sub_226D6DBCC();
  if (v25 || (sub_226D6DB8C(), v26) || (v27 = sub_226D6DB6C(), v28))
  {
  }

  else
  {
    MEMORY[0x22AA89C50](v27);

    if ((*(v24 + 48))(v6, 1, v23) == 1)
    {
      (*(v11 + 8))(v14, v10);
      sub_226C4A884(v6);
      v29 = 1;
      return (*(v11 + 56))(a2, v29, 1, v10);
    }

    sub_226C4A884(v6);
  }

  (*(v11 + 32))(a2, v14, v10);
  v29 = 0;
  return (*(v11 + 56))(a2, v29, 1, v10);
}

void sub_226C4A51C(void *a1)
{
  sub_226D6DD9C();
  v1 = [a1 street];
  sub_226D6E39C();

  sub_226D6DD7C();
  v2 = [a1 city];
  sub_226D6E39C();

  sub_226D6DD5C();
  v3 = [a1 state];
  sub_226D6E39C();

  sub_226D6DD6C();
  v4 = [a1 postalCode];
  sub_226D6E39C();

  sub_226D6DD4C();
  v5 = [a1 country];
  sub_226D6E39C();

  sub_226D6DD8C();
}

uint64_t sub_226C4A680@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D6DACC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6DABC();
  v8 = [a1 paymentMethodDisplayName];
  if (v8)
  {
    v9 = v8;
    sub_226D6E39C();
  }

  sub_226D6DA8C();
  v10 = [a1 paymentMethodSuffix];
  if (v10)
  {
    v11 = v10;
    sub_226D6E39C();
  }

  sub_226D6DAAC();
  [a1 paymentMethodIsApplePay];
  sub_226D6DA6C();
  sub_226D6DA7C();
  if (v12 || (sub_226D6DA9C(), v13))
  {
  }

  else
  {
    v16 = sub_226D6DA5C();

    if (v16 != 2 && (v16 & 1) == 0)
    {
      (*(v5 + 8))(v7, v4);
      v14 = 1;
      return (*(v5 + 56))(a2, v14, 1, v4);
    }
  }

  (*(v5 + 32))(a2, v7, v4);
  v14 = 0;
  return (*(v5 + 56))(a2, v14, 1, v4);
}

uint64_t sub_226C4A884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8390, &qword_226D783F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_226C4A8FC(void *a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  sub_226D6AC0C();
  v3 = sub_226D6AAFC();
  [v3 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71F40;
  sub_226B2A4F4();
  *(v4 + 32) = sub_226D6E91C();
  *(v4 + 40) = sub_226D6E91C();
  v5 = sub_226D6E5CC();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v3 setPredicate_];
  v7 = sub_226D6EBBC();
  if (v1)
  {
  }

  else
  {
    v8 = v7;
    v29 = a1;
    v30 = v3;
    v28 = 0;
    if (v7 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
    {
      v10 = 0;
      v11 = v8 & 0xC000000000000001;
      v32 = v8;
      v33 = v8 & 0xFFFFFFFFFFFFFF8;
      v31 = i;
      while (1)
      {
        if (v11)
        {
          v15 = MEMORY[0x22AA8AFD0](v10, v8);
        }

        else
        {
          if (v10 >= *(v33 + 16))
          {
            goto LABEL_22;
          }

          v15 = *(v8 + 8 * v10 + 32);
        }

        v16 = v15;
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v18 = MEMORY[0x22AA8B6A0]();
        v19 = [v16 insightsObject];
        if (v19)
        {
          v20 = v19;
          v14 = [v19 mapsInsightObject];

          if (v14)
          {
            v21 = [v14 brandObject];
            if (v21 && (v22 = v21, v23 = [v21 name], v22, v23) || (v24 = objc_msgSend(v14, sel_merchantObject, v28)) != 0 && (v25 = v24, v23 = objc_msgSend(v24, sel_name), v25, v23))
            {
              sub_226D6E39C();

              v12 = [v16 publicTransactionObject];
              v13 = sub_226D6E36C();

              [v12 setMerchantName_];

              v14 = v13;
              i = v31;
            }

            v8 = v32;
          }
        }

        objc_autoreleasePoolPop(v18);

        ++v10;
        if (v17 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    v34[0] = 0;
    if ([v29 save_])
    {
      v26 = v34[0];
    }

    else
    {
      v27 = v34[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226C4AD08(uint64_t a1)
{
  v1 = sub_226D676AC();
  sub_226D6EB7C();
}

uint64_t BankConnectServiceImplementation.disconnectAccount(with:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_226C4ADB4, 0, 0);
}

uint64_t sub_226C4ADB4()
{
  __swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
  sub_226D1F610(v0 + 2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_226C4AE74;
  v2 = v0[7];

  return sub_226D0C0D8(v2);
}

uint64_t sub_226C4AE74()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_226C4AF88;
  }

  else
  {
    v2 = sub_226B99748;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C4AF88()
{
  v1 = v0[10];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = sub_226D6A0DC();
  sub_226BD7738();
  swift_allocError();
  *v3 = v1;
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277CC7AB0], v2);
  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t sub_226C4B068(char *a1)
{
  v2 = v1;
  v4 = _s40NotificationSingleFulfillmentFormatStyleVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6913C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s39NotificationMultiFulfillmentFormatStyleVMa(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[*(_s21NotificationFormatterV16FulfillmentInputVMa(0) + 36)];
  v15 = sub_226D69B8C();
  v16 = *(*(v15 - 8) + 16);
  if (v14 == 1)
  {
    v16(v13, v2, v15);
    sub_226C54EC0(a1);
    if (!v17)
    {
      sub_226C554A8(v13, _s39NotificationMultiFulfillmentFormatStyleVMa);
      return 0;
    }

    (*(v8 + 104))(v10, *MEMORY[0x277CC77B0], v7);
    v18 = sub_226D6811C();
    (*(v8 + 8))(v10, v7);
    v19 = _s39NotificationMultiFulfillmentFormatStyleVMa;
    v20 = v13;
  }

  else
  {
    v16(v6, v2, v15);
    v18 = sub_226C4D154(a1);
    v19 = _s40NotificationSingleFulfillmentFormatStyleVMa;
    v20 = v6;
  }

  sub_226C554A8(v20, v19);
  return v18;
}

uint64_t sub_226C4B328(uint64_t a1)
{
  v66 = a1;
  v1 = sub_226D6D31C();
  v74 = *(v1 - 8);
  v75 = v1;
  MEMORY[0x28223BE20](v1);
  v73 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_226D6D35C();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v70 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D33C();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D08C();
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A83A8, &qword_226D78480);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A83B0, &qword_226D78488);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v62 = sub_226D6D37C();
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v55 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v52 - v18;
  MEMORY[0x28223BE20](v19);
  v58 = &v52 - v20;
  MEMORY[0x28223BE20](v21);
  v60 = &v52 - v22;
  v23 = sub_226D6D4AC();
  v63 = *(v23 - 8);
  v64 = v23;
  MEMORY[0x28223BE20](v23);
  v54 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_226D6D71C();
  v26 = *(v25 - 8);
  v77 = v25;
  v78 = v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v52 - v30;
  v76 = sub_226D6D6DC();
  v53 = *(v76 - 8);
  v32 = v53;
  MEMORY[0x28223BE20](v76);
  v34 = &v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v52 - v36;
  sub_226D69B6C();
  sub_226D69B7C();
  MEMORY[0x22AA836C0](v37, v31);
  sub_226D6D2AC();
  v38 = sub_226D6D2BC();
  (*(*(v38 - 8) + 56))(v15, 0, 1, v38);
  v39 = sub_226D6D29C();
  (*(*(v39 - 8) + 56))(v57, 1, 1, v39);
  sub_226D69B4C();
  (*(v32 + 16))(v34, v37, v76);
  (*(v78 + 16))(v28, v31, v77);
  sub_226D6D07C();
  v40 = v55;
  sub_226D6D2DC();
  v41 = v67;
  sub_226D6D32C();
  v42 = v56;
  sub_226D6D2EC();
  (*(v68 + 8))(v41, v69);
  v43 = *(v59 + 8);
  v44 = v62;
  v43(v40, v62);
  v45 = v70;
  sub_226D6D34C();
  v46 = v58;
  sub_226D6D2FC();
  (*(v71 + 8))(v45, v72);
  v43(v42, v44);
  v47 = v73;
  sub_226D6D30C();
  v48 = v60;
  sub_226D6D2CC();
  (*(v74 + 8))(v47, v75);
  v43(v46, v44);
  v49 = v54;
  v50 = sub_226D6D36C();
  v43(v48, v44);
  (*(v63 + 8))(v49, v64);
  (*(v78 + 8))(v31, v77);
  (*(v53 + 8))(v37, v76);
  return v50;
}

uint64_t sub_226C4BB60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_226D69B8C();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8530, &qword_226D78B28);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = sub_226D6D71C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = _s21ShippingDateFormatterVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D69B5C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C5CF74();
  v15 = v22;
  sub_226D6F37C();
  if (!v15)
  {
    v16 = v20;
    sub_226C5BAF8(&qword_27D7A8510, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_226D6F16C();
    (*(v21 + 8))(v8, v6);
    (*(v16 + 40))(v14, v5, v3);
    sub_226C5CFC8(v14, v19, _s21ShippingDateFormatterVMa);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_226C554A8(v14, _s21ShippingDateFormatterVMa);
}

uint64_t sub_226C4BF2C(uint64_t a1)
{
  v2 = sub_226C5CF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226C4BF68(uint64_t a1)
{
  v2 = sub_226C5CF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_226C4BFA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226C4B328(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_226C4C028(char *a1)
{
  v92 = a1;
  v1 = sub_226D6D31C();
  v86 = *(v1 - 8);
  v87 = v1;
  MEMORY[0x28223BE20](v1);
  v85 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_226D6D35C();
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D33C();
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x28223BE20](v5);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D08C();
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A83A8, &qword_226D78480);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A83B0, &qword_226D78488);
  MEMORY[0x28223BE20](v13 - 8);
  v88 = &v71 - v14;
  v93 = sub_226D6D37C();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v75 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = &v71 - v17;
  MEMORY[0x28223BE20](v18);
  v74 = &v71 - v19;
  MEMORY[0x28223BE20](v20);
  v78 = &v71 - v21;
  v22 = sub_226D6760C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226D6D4AC();
  v98 = *(v26 - 8);
  v99 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_226D6D71C();
  v96 = *(v29 - 8);
  v97 = v29;
  MEMORY[0x28223BE20](v29);
  v31 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v71 - v33;
  v35 = sub_226D6D6DC();
  v94 = *(v35 - 8);
  v95 = v35;
  MEMORY[0x28223BE20](v35);
  MEMORY[0x28223BE20](v36);
  v38 = &v71 - v37;
  sub_226D69B6C();
  sub_226D69B7C();
  v39 = v92;
  MEMORY[0x22AA836A0](v38, v34);
  (*(v23 + 16))(v25, v39, v22);
  v40 = (*(v23 + 88))(v25, v22);
  if (v40 == *MEMORY[0x277CC6CA8])
  {
    v41 = v88;
    sub_226D6D2AC();
    v42 = sub_226D6D2BC();
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    v43 = sub_226D6D29C();
    (*(*(v43 - 8) + 56))(v90, 1, 1, v43);
    sub_226D69B4C();
    sub_226D69B6C();
    sub_226D69B7C();
    sub_226D6D07C();
    v44 = v75;
    sub_226D6D2DC();
    v45 = v79;
    sub_226D6D32C();
    v46 = v89;
    sub_226D6D2EC();
    (*(v80 + 8))(v45, v81);
    v47 = *(v91 + 8);
    v48 = v44;
    v49 = v93;
    v47(v48, v93);
    v50 = v82;
    sub_226D6D34C();
    v51 = v74;
    sub_226D6D2FC();
    (*(v83 + 8))(v50, v84);
    v47(v46, v49);
    v52 = v85;
    sub_226D6D30C();
    v53 = v78;
    sub_226D6D2CC();
    (*(v86 + 8))(v52, v87);
    v47(v51, v49);
    v54 = sub_226D6D36C();
    v47(v53, v49);
    (*(v98 + 8))(v28, v99);
    (*(v96 + 8))(v34, v97);
    (*(v94 + 8))(v38, v95);
  }

  else
  {
    v71 = v31;
    v55 = v88;
    v56 = v90;
    v72 = v38;
    v57 = v89;
    v73 = v34;
    v92 = v28;
    v58 = v91;
    v59 = v93;
    if (v40 == *MEMORY[0x277CC6CA0])
    {
      sub_226D6D2AC();
      v60 = sub_226D6D2BC();
      (*(*(v60 - 8) + 56))(v55, 0, 1, v60);
      sub_226D6D28C();
      v61 = sub_226D6D29C();
      (*(*(v61 - 8) + 56))(v56, 0, 1, v61);
      sub_226D69B4C();
      sub_226D69B6C();
      sub_226D69B7C();
      sub_226D6D07C();
      v62 = v75;
      sub_226D6D2DC();
      v63 = v79;
      sub_226D6D32C();
      sub_226D6D2EC();
      (*(v80 + 8))(v63, v81);
      v64 = *(v58 + 8);
      v64(v62, v59);
      v65 = v82;
      sub_226D6D34C();
      v66 = v74;
      sub_226D6D2FC();
      (*(v83 + 8))(v65, v84);
      v64(v57, v59);
      v67 = v85;
      sub_226D6D30C();
      v68 = v78;
      sub_226D6D2CC();
      (*(v86 + 8))(v67, v87);
      v64(v66, v59);
      v69 = v92;
      v54 = sub_226D6D36C();
      v64(v68, v59);
      (*(v98 + 8))(v69, v99);
      (*(v96 + 8))(v73, v97);
      (*(v94 + 8))(v72, v95);
    }

    else
    {
      (*(v98 + 8))(v92, v99);
      (*(v96 + 8))(v73, v97);
      (*(v94 + 8))(v72, v95);
      (*(v23 + 8))(v25, v22);
      return 0;
    }
  }

  return v54;
}

uint64_t sub_226C4CC0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_226D69B8C();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8500, &qword_226D78B18);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = sub_226D6D71C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = _s21DeliveryDateFormatterVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D69B5C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C5CF20();
  v15 = v22;
  sub_226D6F37C();
  if (!v15)
  {
    v16 = v20;
    sub_226C5BAF8(&qword_27D7A8510, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_226D6F16C();
    (*(v21 + 8))(v8, v6);
    (*(v16 + 40))(v14, v5, v3);
    sub_226C5CFC8(v14, v19, _s21DeliveryDateFormatterVMa);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_226C554A8(v14, _s21DeliveryDateFormatterVMa);
}

uint64_t sub_226C4CFB4(uint64_t a1)
{
  v2 = sub_226C5CF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226C4CFF0(uint64_t a1)
{
  v2 = sub_226C5CF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_226C4D02C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226C4C028(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_226C4D0B0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_226D6F21C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_226D6F21C();
    }
  }

  return result;
}

uint64_t sub_226C4D154(char *a1)
{
  v2 = sub_226D6913C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6C69C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = *(a1 + 1);
  v12 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  (*(v7 + 16))(v9, &a1[*(v12 + 20)], v6);
  v13 = (*(v7 + 88))(v9, v6);
  result = 0;
  if (v13 != *MEMORY[0x277CC8320])
  {
    if (v13 == *MEMORY[0x277CC8318])
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CC77B0], v2, 0);
      v15 = sub_226D6811C();
      (*(v3 + 8))(v5, v2);
      sub_226C4E440(a1);
      return v15;
    }

    if (v13 == *MEMORY[0x277CC8328])
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CC77B0], v2, 0);
      v15 = sub_226D6811C();
      (*(v3 + 8))(v5, v2);
      sub_226C4E904(a1);
      return v15;
    }

    if (v13 == *MEMORY[0x277CC8300])
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CC77B0], v2, 0);
      v15 = sub_226D6811C();
      (*(v3 + 8))(v5, v2);
      sub_226C51968(a1);
      return v15;
    }

    if (v13 == *MEMORY[0x277CC8340])
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CC77B0], v2, 0);
      v15 = sub_226D6811C();
      (*(v3 + 8))(v5, v2);
      sub_226C54538(a1);
      return v15;
    }

    if (v13 == *MEMORY[0x277CC8338])
    {
      v16 = *MEMORY[0x277CC77B0];
      v17 = *(v3 + 104);
      (v17)(v5, v16, v2, 0);

      v18 = sub_226D6811C();
      v45 = v19;
      v46 = v18;
      v20 = *(v3 + 8);
      v20(v5, v2);
      v44 = "_SHIPPING_CANCELED";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_226D70840;
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = sub_226B16404();
      *(v21 + 32) = v11;
      *(v21 + 40) = v10;
      v17(v5, v16, v2);
    }

    else
    {
      if (v13 != *MEMORY[0x277CC8310])
      {
        if (v13 == *MEMORY[0x277CC8308])
        {
          v27 = *MEMORY[0x277CC77B0];
          v28 = *(v3 + 104);
          (v28)(v5, v27, v2, 0);

          v29 = sub_226D6811C();
          v45 = v30;
          v46 = v29;
          v31 = *(v3 + 8);
          v31(v5, v2);
          v44 = "_SHIPPING_READY_FOR_PICKUP";
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_226D70840;
          *(v32 + 56) = MEMORY[0x277D837D0];
          *(v32 + 64) = sub_226B16404();
          *(v32 + 32) = v11;
          *(v32 + 40) = v10;
          v28(v5, v27, v2);
        }

        else
        {
          if (v13 == *MEMORY[0x277CC8330])
          {
            v33 = *MEMORY[0x277CC77B0];
            v34 = *(v3 + 104);
            (v34)(v5, v33, v2, 0);

            v35 = sub_226D6811C();
            v45 = v36;
            v46 = v35;
            v20 = *(v3 + 8);
            v20(v5, v2);
            v44 = "_SHIPPING_PICKED_UP";
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_226D70840;
            *(v37 + 56) = MEMORY[0x277D837D0];
            *(v37 + 64) = sub_226B16404();
            *(v37 + 32) = v11;
            *(v37 + 40) = v10;
            v34(v5, v33, v2);
            goto LABEL_16;
          }

          if (v13 != *MEMORY[0x277CC82F8])
          {
            result = sub_226D6F0AC();
            __break(1u);
            return result;
          }

          v38 = *MEMORY[0x277CC77B0];
          v39 = *(v3 + 104);
          (v39)(v5, v38, v2, 0);

          v40 = sub_226D6811C();
          v45 = v41;
          v46 = v40;
          v31 = *(v3 + 8);
          v31(v5, v2);
          v44 = "_SHIPPING_PROCESSING";
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_226D70840;
          *(v42 + 56) = MEMORY[0x277D837D0];
          *(v42 + 64) = sub_226B16404();
          *(v42 + 32) = v11;
          *(v42 + 40) = v10;
          v39(v5, v38, v2);
        }

        sub_226D6812C();

        v31(v5, v2);
        return v46;
      }

      v22 = *MEMORY[0x277CC77B0];
      v23 = *(v3 + 104);
      (v23)(v5, v22, v2, 0);

      v24 = sub_226D6811C();
      v45 = v25;
      v46 = v24;
      v20 = *(v3 + 8);
      v20(v5, v2);
      v44 = "TIFICATION_TITLE_SHIPPING_ISSUE";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_226D70840;
      *(v26 + 56) = MEMORY[0x277D837D0];
      *(v26 + 64) = sub_226B16404();
      *(v26 + 32) = v11;
      *(v26 + 40) = v10;
      v23(v5, v22, v2);
    }

LABEL_16:
    sub_226D6812C();

    v20(v5, v2);
    return v46;
  }

  return result;
}

uint64_t sub_226C4DB20(char *a1)
{
  v2 = sub_226D6913C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D677FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = _s21NotificationFormatterV16OrderStatusInputVMa(0);
  (*(v7 + 16))(v9, &a1[*(v12 + 20)], v6);
  v13 = (*(v7 + 88))(v9, v6);
  v14 = 0;
  if (v13 == *MEMORY[0x277CC6DF0])
  {
    return v14;
  }

  v15 = *MEMORY[0x277CC6DE0];
  v26 = v10;
  if (v13 == v15)
  {
    v16 = v11;
    v24 = 0xD00000000000001CLL;
    v25 = "ORDER_NOTIFICATION_TITLE_OPEN";
LABEL_11:
    v18 = *MEMORY[0x277CC77B0];
    v19 = *(v3 + 104);
    v19(v5, v18, v2);

    v23 = sub_226D6811C();
    v20 = *(v3 + 8);
    v20(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_226D70840;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_226B16404();
    *(v21 + 32) = v26;
    *(v21 + 40) = v16;
    v19(v5, v18, v2);
    sub_226D6812C();

    v20(v5, v2);
    return v23;
  }

  if (v13 == *MEMORY[0x277CC6DD8])
  {
    v16 = v11;
    v25 = "_SHIPPING_PROCESSING";
    v17 = 0xD00000000000003ALL;
LABEL_10:
    v24 = v17;
    goto LABEL_11;
  }

  if (v13 == *MEMORY[0x277CC6DF8])
  {
    v16 = v11;
    v25 = "_SHIPPING_CANCELED";
    v17 = 0xD000000000000038;
    goto LABEL_10;
  }

  if (v13 == *MEMORY[0x277CC6DE8])
  {
    v16 = v11;
    v25 = "TIFICATION_TITLE_SHIPPING_ISSUE";
    v17 = 0xD000000000000035;
    goto LABEL_10;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226C4DFAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_226D69B8C();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8578, &qword_226D78B58);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = sub_226D6D71C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = _s34NotificationOrderStatusFormatStyleVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D69B5C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C5D0D8();
  v15 = v22;
  sub_226D6F37C();
  if (!v15)
  {
    v16 = v20;
    sub_226C5BAF8(&qword_27D7A8510, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_226D6F16C();
    (*(v21 + 8))(v8, v6);
    (*(v16 + 40))(v14, v5, v3);
    sub_226C5CFC8(v14, v19, _s34NotificationOrderStatusFormatStyleVMa);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_226C554A8(v14, _s34NotificationOrderStatusFormatStyleVMa);
}

uint64_t sub_226C4E354(uint64_t a1)
{
  v2 = sub_226C5D0D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226C4E390(uint64_t a1)
{
  v2 = sub_226C5D0D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_226C4E440(uint64_t *a1)
{
  v3 = sub_226D6913C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s21ShippingDateFormatterVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v36 - v10;
  v12 = sub_226D6762C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  sub_226AC40E8(a1 + *(v16 + 28), v11, &qword_27D7A6670, &qword_226D71888);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226AC47B0(v11, &qword_27D7A6670, &qword_226D71888);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_226D70840;
    v32 = *a1;
    v31 = a1[1];
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_226B16404();
    *(v30 + 32) = v32;
    *(v30 + 40) = v31;
    v34 = v37;
    v33 = v38;
    (*(v37 + 104))(v5, *MEMORY[0x277CC77B0], v38);

    v29 = sub_226D6812C();

    (*(v34 + 8))(v5, v33);
    return v29;
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = sub_226D69B8C();
  (*(*(v17 - 8) + 16))(v8, v1, v17);
  v18 = sub_226C4B328(v15);
  if (!v19)
  {
    sub_226C554A8(v8, _s21ShippingDateFormatterVMa);
    (*(v13 + 8))(v15, v12);
    goto LABEL_6;
  }

  v20 = v19;
  v36[0] = v18;
  v36[1] = "SINGLE_SHIPPING_SHIPPED";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_226D71840;
  v23 = *a1;
  v22 = a1[1];
  v24 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v25 = sub_226B16404();
  *(v21 + 32) = v23;
  *(v21 + 40) = v22;
  *(v21 + 96) = v24;
  *(v21 + 104) = v25;
  v26 = v36[0];
  *(v21 + 64) = v25;
  *(v21 + 72) = v26;
  *(v21 + 80) = v20;
  v28 = v37;
  v27 = v38;
  (*(v37 + 104))(v5, *MEMORY[0x277CC77B0], v38);

  v29 = sub_226D6812C();

  (*(v28 + 8))(v5, v27);
  sub_226C554A8(v8, _s21ShippingDateFormatterVMa);
  (*(v13 + 8))(v15, v12);
  return v29;
}

uint64_t sub_226C4E904(void (**a1)(char *, uint64_t))
{
  v372 = a1;
  v354 = sub_226D6CA9C();
  v347 = *(v354 - 8);
  MEMORY[0x28223BE20](v354);
  v323 = &v312 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v332 = &v312 - v3;
  MEMORY[0x28223BE20](v4);
  v350 = &v312 - v5;
  MEMORY[0x28223BE20](v6);
  v338 = &v312 - v7;
  MEMORY[0x28223BE20](v8);
  v346 = &v312 - v9;
  v10 = sub_226D6913C();
  v369 = *(v10 - 8);
  v370 = v10;
  MEMORY[0x28223BE20](v10);
  v371 = &v312 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v12 - 8);
  v318 = &v312 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v326 = &v312 - v15;
  MEMORY[0x28223BE20](v16);
  v343 = &v312 - v17;
  MEMORY[0x28223BE20](v18);
  v352 = &v312 - v19;
  MEMORY[0x28223BE20](v20);
  v329 = &v312 - v21;
  MEMORY[0x28223BE20](v22);
  v341 = &v312 - v23;
  MEMORY[0x28223BE20](v24);
  v320 = &v312 - v25;
  MEMORY[0x28223BE20](v26);
  v334 = &v312 - v27;
  v368 = sub_226D6D4AC();
  v366 = *(v368 - 8);
  MEMORY[0x28223BE20](v368);
  v322 = &v312 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v331 = &v312 - v30;
  MEMORY[0x28223BE20](v31);
  v349 = &v312 - v32;
  MEMORY[0x28223BE20](v33);
  v348 = &v312 - v34;
  MEMORY[0x28223BE20](v35);
  v337 = &v312 - v36;
  MEMORY[0x28223BE20](v37);
  v345 = &v312 - v38;
  MEMORY[0x28223BE20](v39);
  v327 = &v312 - v40;
  MEMORY[0x28223BE20](v41);
  v335 = &v312 - v42;
  v43 = sub_226D6907C();
  v44 = *(v43 - 8);
  v359 = v43;
  v360 = v44;
  MEMORY[0x28223BE20](v43);
  v361 = &v312 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226D69B8C();
  v47 = *(v46 - 8);
  v362 = v46;
  v363 = v47;
  MEMORY[0x28223BE20](v46);
  v364 = &v312 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_226D6814C();
  v356 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v321 = &v312 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v330 = &v312 - v52;
  MEMORY[0x28223BE20](v53);
  v353 = &v312 - v54;
  MEMORY[0x28223BE20](v55);
  v367 = &v312 - v56;
  MEMORY[0x28223BE20](v57);
  v336 = &v312 - v58;
  MEMORY[0x28223BE20](v59);
  v344 = &v312 - v60;
  MEMORY[0x28223BE20](v61);
  v325 = &v312 - v62;
  MEMORY[0x28223BE20](v63);
  v340 = &v312 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  MEMORY[0x28223BE20](v65 - 8);
  v358 = &v312 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  MEMORY[0x28223BE20](v67 - 8);
  v357 = &v312 - v68;
  v69 = sub_226D6CEAC();
  v355 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v319 = &v312 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v328 = &v312 - v72;
  MEMORY[0x28223BE20](v73);
  v351 = &v312 - v74;
  MEMORY[0x28223BE20](v75);
  v77 = &v312 - v76;
  MEMORY[0x28223BE20](v78);
  v333 = &v312 - v79;
  MEMORY[0x28223BE20](v80);
  v342 = &v312 - v81;
  MEMORY[0x28223BE20](v82);
  v324 = &v312 - v83;
  MEMORY[0x28223BE20](v84);
  v339 = &v312 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  MEMORY[0x28223BE20](v86 - 8);
  v88 = &v312 - v87;
  v89 = sub_226D6763C();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v312 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v95 = &v312 - v94;
  v96 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  sub_226AC40E8(v372 + *(v96 + 32), v88, &qword_27D7A6680, &unk_226D74710);
  if ((*(v90 + 48))(v88, 1, v89) == 1)
  {
    sub_226AC47B0(v88, &qword_27D7A6680, &unk_226D74710);
    v97 = v370;
    v98 = v371;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_226D70840;
    v101 = *v372;
    v100 = v372[1];
    *(v99 + 56) = MEMORY[0x277D837D0];
    *(v99 + 64) = sub_226B16404();
    *(v99 + 32) = v101;
    *(v99 + 40) = v100;
    v102 = v369;
    (*(v369 + 104))(v98, *MEMORY[0x277CC77B0], v97);

    v103 = sub_226D6812C();

    (*(v102 + 8))(v98, v97);
    return v103;
  }

  (*(v90 + 32))(v95, v88, v89);
  (*(v90 + 16))(v92, v95, v89);
  v104 = (*(v90 + 88))(v92, v89);
  v105 = v104 == *MEMORY[0x277CC6CF0];
  v317 = v69;
  v316 = v89;
  v315 = v95;
  v314 = v90;
  if (v105)
  {
    v106 = v49;
    (*(v90 + 96))(v92, v89);
    v107 = v357;
    v108 = v365;
    sub_226D69B6C();
    v109 = sub_226D6D6DC();
    (*(*(v109 - 8) + 56))(v107, 0, 1, v109);
    v110 = v358;
    sub_226D69B7C();
    v111 = sub_226D6D71C();
    (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
    sub_226D6CE8C();
    (*(v363 + 16))(v364, v108, v362);
    (*(v360 + 104))(v361, *MEMORY[0x277CC7750], v359);
    sub_226D6813C();
    v112 = v352;
    sub_226D6CE0C();
    v113 = v366;
    v114 = v368;
    result = (*(v366 + 48))(v112, 1, v368);
    if (result != 1)
    {
      v116 = v348;
      (*(v113 + 32))(v348, v112, v114);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v117 = v373;
      v118 = v374;
      v119 = v113;
      v365 = "TE_WITH_TIME_SINGULAR_HOURS";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_226D71840;
      v122 = *v372;
      v121 = v372[1];
      v123 = MEMORY[0x277D837D0];
      *(v120 + 56) = MEMORY[0x277D837D0];
      v124 = sub_226B16404();
      *(v120 + 32) = v122;
      *(v120 + 40) = v121;
      *(v120 + 96) = v123;
      *(v120 + 104) = v124;
      *(v120 + 64) = v124;
      *(v120 + 72) = v117;
      *(v120 + 80) = v118;
      v126 = v369;
      v125 = v370;
      v127 = v371;
      (*(v369 + 104))(v371, *MEMORY[0x277CC77B0], v370);

      v103 = sub_226D6812C();

      (*(v126 + 8))(v127, v125);
      (*(v119 + 8))(v116, v368);
      (*(v356 + 8))(v367, v106);
      (*(v355 + 8))(v77, v317);
      v128 = *(v314 + 8);
LABEL_22:
      v128(v315, v316);
      return v103;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v105 = v104 == *MEMORY[0x277CC6D08];
  v313 = v49;
  if (v105)
  {
    (*(v90 + 96))(v92, v89);
    v367 = *(v92 + 1);
    v129 = v357;
    v130 = v365;
    sub_226D69B6C();
    v131 = sub_226D6D6DC();
    (*(*(v131 - 8) + 56))(v129, 0, 1, v131);
    v132 = v358;
    sub_226D69B7C();
    v133 = sub_226D6D71C();
    (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
    v134 = v130;
    sub_226D6CE8C();
    v135 = v364;
    v136 = *(v363 + 16);
    v137 = v362;
    v136(v364, v130, v362);
    (*(v360 + 104))(v361, *MEMORY[0x277CC7750], v359);
    sub_226D6813C();
    v138 = v343;
    sub_226D6CE0C();
    v139 = v366;
    v140 = v368;
    result = (*(v366 + 48))(v138, 1, v368);
    if (result != 1)
    {
      (*(v139 + 32))(v349, v138, v140);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v141 = v373;
      v142 = v374;
      v136(v135, v134, v137);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
      sub_226D6A28C();
      v143 = v373;
      v144 = v374;
      sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v145 = swift_allocObject();
      *(v145 + 16) = xmmword_226D72130;
      v147 = *v372;
      v146 = v372[1];
      v148 = MEMORY[0x277D837D0];
      *(v145 + 56) = MEMORY[0x277D837D0];
      v149 = sub_226B16404();
      *(v145 + 32) = v147;
      *(v145 + 40) = v146;
      *(v145 + 96) = v148;
      *(v145 + 104) = v149;
      *(v145 + 64) = v149;
      *(v145 + 72) = v141;
      *(v145 + 80) = v142;
      *(v145 + 136) = v148;
      *(v145 + 144) = v149;
      *(v145 + 112) = v143;
      *(v145 + 120) = v144;
      v150 = v369 + 104;
      v151 = v371;
      v152 = v139 + 32;
      v153 = v370;
      (*(v369 + 104))(v371, *MEMORY[0x277CC77B0], v370);

      v154 = (v150 - 96);
      v155 = (v347 + 8);
      v156 = (v356 + 8);
      v157 = (v355 + 8);
      v372 = (v314 + 8);
      v103 = sub_226D6812C();

      (*v154)(v151, v153);
      (*v155)(v350, v354);
      (*(v152 - 24))(v349, v368);
      (*v156)(v353, v313);
      (*v157)(v351, v317);
LABEL_21:
      v128 = *v372;
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (v104 == *MEMORY[0x277CC6D00])
  {
    (*(v90 + 96))(v92, v89);
    v367 = *(v92 + 1);
    v158 = v357;
    v159 = v365;
    sub_226D69B6C();
    v160 = sub_226D6D6DC();
    (*(*(v160 - 8) + 56))(v158, 0, 1, v160);
    v161 = v358;
    sub_226D69B7C();
    v162 = sub_226D6D71C();
    (*(*(v162 - 8) + 56))(v161, 0, 1, v162);
    v163 = v159;
    sub_226D6CE8C();
    v164 = v364;
    v165 = *(v363 + 16);
    v166 = v362;
    v165(v364, v159, v362);
    (*(v360 + 104))(v361, *MEMORY[0x277CC7750], v359);
    sub_226D6813C();
    v167 = v341;
    sub_226D6CE0C();
    v168 = v366;
    v169 = v368;
    result = (*(v366 + 48))(v167, 1, v368);
    if (result != 1)
    {
      (*(v168 + 32))(v345, v167, v169);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v170 = v373;
      v171 = v374;
      v165(v164, v163, v166);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
      sub_226D6A28C();
      v172 = v373;
      v173 = v374;
      sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v174 = swift_allocObject();
      *(v174 + 16) = xmmword_226D72130;
      v176 = *v372;
      v175 = v372[1];
      v177 = MEMORY[0x277D837D0];
      *(v174 + 56) = MEMORY[0x277D837D0];
      v178 = sub_226B16404();
      *(v174 + 32) = v176;
      *(v174 + 40) = v175;
      *(v174 + 96) = v177;
      *(v174 + 104) = v178;
      *(v174 + 64) = v178;
      *(v174 + 72) = v170;
      *(v174 + 80) = v171;
      *(v174 + 136) = v177;
      *(v174 + 144) = v178;
      *(v174 + 112) = v172;
      *(v174 + 120) = v173;
      v179 = v369 + 104;
      v180 = v371;
      v181 = v168 + 32;
      v182 = v370;
      (*(v369 + 104))(v371, *MEMORY[0x277CC77B0], v370);

      v183 = (v179 - 96);
      v184 = (v347 + 8);
      v185 = (v356 + 8);
      v186 = (v355 + 8);
      v372 = (v314 + 8);
      v103 = sub_226D6812C();

      (*v183)(v180, v182);
      (*v184)(v346, v354);
      (*(v181 - 24))(v345, v368);
      (*v185)(v344, v313);
      (*v186)(v342, v317);
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  if (v104 == *MEMORY[0x277CC6CE0])
  {
    (*(v90 + 96))(v92, v89);
    v187 = v357;
    v188 = v365;
    sub_226D69B6C();
    v189 = sub_226D6D6DC();
    (*(*(v189 - 8) + 56))(v187, 0, 1, v189);
    v190 = v358;
    sub_226D69B7C();
    v191 = sub_226D6D71C();
    (*(*(v191 - 8) + 56))(v190, 0, 1, v191);
    sub_226D6CE8C();
    (*(v363 + 16))(v364, v188, v362);
    (*(v360 + 104))(v361, *MEMORY[0x277CC7750], v359);
    sub_226D6813C();
    v192 = v334;
    sub_226D6CE0C();
    v193 = v366;
    v194 = v368;
    result = (*(v366 + 48))(v192, 1, v368);
    v195 = v371;
    if (result != 1)
    {
      v196 = v335;
      (*(v193 + 32))(v335, v192, v194);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v197 = v193;
      v198 = v373;
      v199 = v374;
      v367 = "ON_THE_WAY_ON_DATE";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v200 = swift_allocObject();
      *(v200 + 16) = xmmword_226D71840;
      v202 = *v372;
      v201 = v372[1];
      v203 = MEMORY[0x277D837D0];
      *(v200 + 56) = MEMORY[0x277D837D0];
      v204 = sub_226B16404();
      *(v200 + 32) = v202;
      *(v200 + 40) = v201;
      *(v200 + 96) = v203;
      *(v200 + 104) = v204;
      *(v200 + 64) = v204;
      *(v200 + 72) = v198;
      *(v200 + 80) = v199;
      v205 = v369;
      v206 = v370;
      (*(v369 + 104))(v195, *MEMORY[0x277CC77B0], v370);

      v103 = sub_226D6812C();

      (*(v205 + 8))(v195, v206);
      (*(v197 + 8))(v196, v368);
      (*(v356 + 8))(v340, v313);
      (*(v355 + 8))(v339, v317);
      (*(v90 + 8))(v315, v316);
      return v103;
    }

    goto LABEL_37;
  }

  v98 = v371;
  if (v104 == *MEMORY[0x277CC6CE8])
  {
    (*(v90 + 96))(v92, v89);
    v367 = *(v92 + 1);
    v207 = v357;
    v208 = v365;
    sub_226D69B6C();
    v209 = sub_226D6D6DC();
    (*(*(v209 - 8) + 56))(v207, 0, 1, v209);
    v210 = v358;
    sub_226D69B7C();
    v211 = sub_226D6D71C();
    (*(*(v211 - 8) + 56))(v210, 0, 1, v211);
    v212 = v208;
    sub_226D6CE8C();
    v213 = v364;
    v214 = *(v363 + 16);
    v215 = v362;
    v214(v364, v208, v362);
    (*(v360 + 104))(v361, *MEMORY[0x277CC7750], v359);
    sub_226D6813C();
    v216 = v329;
    sub_226D6CE0C();
    v217 = v366;
    v218 = v368;
    result = (*(v366 + 48))(v216, 1, v368);
    if (result != 1)
    {
      (*(v217 + 32))(v337, v216, v218);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v219 = v373;
      v220 = v374;
      v214(v213, v212, v215);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
      sub_226D6A28C();
      v221 = v373;
      v222 = v374;
      sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v223 = swift_allocObject();
      *(v223 + 16) = xmmword_226D72130;
      v225 = *v372;
      v224 = v372[1];
      v226 = MEMORY[0x277D837D0];
      *(v223 + 56) = MEMORY[0x277D837D0];
      v227 = sub_226B16404();
      *(v223 + 32) = v225;
      *(v223 + 40) = v224;
      *(v223 + 96) = v226;
      *(v223 + 104) = v227;
      *(v223 + 64) = v227;
      *(v223 + 72) = v219;
      *(v223 + 80) = v220;
      *(v223 + 136) = v226;
      *(v223 + 144) = v227;
      *(v223 + 112) = v221;
      *(v223 + 120) = v222;
      v228 = v369 + 104;
      v229 = v371;
      v230 = v217 + 32;
      v231 = v370;
      (*(v369 + 104))(v371, *MEMORY[0x277CC77B0], v370);

      v232 = (v228 - 96);
      v233 = (v347 + 8);
      v234 = (v356 + 8);
      v235 = (v355 + 8);
      v372 = (v314 + 8);
      v103 = sub_226D6812C();

      (*v232)(v229, v231);
      (*v233)(v338, v354);
      (*(v230 - 24))(v337, v368);
      (*v234)(v336, v313);
      (*v235)(v333, v317);
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  if (v104 == *MEMORY[0x277CC6CF8])
  {
    (*(v90 + 96))(v92, v89);
    v367 = *(v92 + 1);
    v236 = v357;
    v237 = v365;
    sub_226D69B6C();
    v238 = sub_226D6D6DC();
    (*(*(v238 - 8) + 56))(v236, 0, 1, v238);
    v239 = v358;
    sub_226D69B7C();
    v240 = sub_226D6D71C();
    (*(*(v240 - 8) + 56))(v239, 0, 1, v240);
    v241 = v237;
    sub_226D6CE8C();
    v242 = v364;
    v243 = *(v363 + 16);
    v244 = v362;
    v243(v364, v237, v362);
    (*(v360 + 104))(v361, *MEMORY[0x277CC7750], v359);
    sub_226D6813C();
    v245 = v326;
    sub_226D6CE0C();
    v246 = v366;
    v247 = v368;
    result = (*(v366 + 48))(v245, 1, v368);
    if (result != 1)
    {
      (*(v246 + 32))(v331, v245, v247);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v248 = v373;
      v249 = v374;
      v243(v242, v241, v244);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
      sub_226D6A28C();
      v250 = v373;
      v251 = v374;
      sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v252 = swift_allocObject();
      *(v252 + 16) = xmmword_226D72130;
      v254 = *v372;
      v253 = v372[1];
      v255 = MEMORY[0x277D837D0];
      *(v252 + 56) = MEMORY[0x277D837D0];
      v256 = sub_226B16404();
      *(v252 + 32) = v254;
      *(v252 + 40) = v253;
      *(v252 + 96) = v255;
      *(v252 + 104) = v256;
      *(v252 + 64) = v256;
      *(v252 + 72) = v248;
      *(v252 + 80) = v249;
      *(v252 + 136) = v255;
      *(v252 + 144) = v256;
      *(v252 + 112) = v250;
      *(v252 + 120) = v251;
      v257 = v369 + 104;
      v258 = v371;
      v259 = v246 + 32;
      v260 = v370;
      (*(v369 + 104))(v371, *MEMORY[0x277CC77B0], v370);

      v261 = (v257 - 96);
      v262 = (v347 + 8);
      v263 = (v356 + 8);
      v264 = (v355 + 8);
      v372 = (v314 + 8);
      v103 = sub_226D6812C();

      (*v261)(v258, v260);
      (*v262)(v332, v354);
      (*(v259 - 24))(v331, v368);
      (*v263)(v330, v313);
      (*v264)(v328, v317);
      goto LABEL_21;
    }

    goto LABEL_39;
  }

  v97 = v370;
  if (v104 == *MEMORY[0x277CC6D10])
  {
    (*(v90 + 96))(v92, v89);
    v367 = *(v92 + 4);
    v265 = v357;
    v266 = v365;
    sub_226D69B6C();
    v267 = sub_226D6D6DC();
    (*(*(v267 - 8) + 56))(v265, 0, 1, v267);
    v268 = v358;
    sub_226D69B7C();
    v269 = sub_226D6D71C();
    (*(*(v269 - 8) + 56))(v268, 0, 1, v269);
    sub_226D6CE8C();
    (*(v363 + 16))(v364, v266, v362);
    (*(v360 + 104))(v361, *MEMORY[0x277CC7750], v359);
    sub_226D6813C();
    v270 = v320;
    sub_226D6CE0C();
    v271 = v366;
    v272 = v368;
    result = (*(v366 + 48))(v270, 1, v368);
    if (result != 1)
    {
      (*(v271 + 32))(v327, v270, v272);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v273 = v271;
      v274 = v373;
      v275 = v374;
      v367 = "ON_THE_WAY_ON_DATE";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v276 = swift_allocObject();
      *(v276 + 16) = xmmword_226D71840;
      v278 = *v372;
      v277 = v372[1];
      v279 = MEMORY[0x277D837D0];
      *(v276 + 56) = MEMORY[0x277D837D0];
      v280 = sub_226B16404();
      *(v276 + 32) = v278;
      *(v276 + 40) = v277;
      *(v276 + 96) = v279;
      *(v276 + 104) = v280;
      *(v276 + 64) = v280;
      *(v276 + 72) = v274;
      *(v276 + 80) = v275;
      v281 = v369;
      (*(v369 + 104))(v98, *MEMORY[0x277CC77B0], v97);

      v103 = sub_226D6812C();

      (*(v281 + 8))(v98, v97);
      (*(v273 + 8))(v327, v368);
      (*(v356 + 8))(v325, v313);
      (*(v355 + 8))(v324, v317);
      (*(v314 + 8))(v95, v316);
      return v103;
    }

    goto LABEL_40;
  }

  if (v104 != *MEMORY[0x277CC6D18])
  {
    v311 = *(v90 + 8);
    v311(v315, v89);
    v311(v92, v89);
    goto LABEL_3;
  }

  (*(v90 + 96))(v92, v89);
  v367 = *(v92 + 8);
  v282 = v357;
  v283 = v365;
  sub_226D69B6C();
  v284 = sub_226D6D6DC();
  (*(*(v284 - 8) + 56))(v282, 0, 1, v284);
  v285 = v358;
  sub_226D69B7C();
  v286 = sub_226D6D71C();
  (*(*(v286 - 8) + 56))(v285, 0, 1, v286);
  v287 = v283;
  sub_226D6CE8C();
  v288 = v364;
  v289 = *(v363 + 16);
  v290 = v362;
  v289(v364, v283, v362);
  (*(v360 + 104))(v361, *MEMORY[0x277CC7750], v359);
  sub_226D6813C();
  v291 = v318;
  sub_226D6CE0C();
  v292 = v366;
  v293 = v368;
  result = (*(v366 + 48))(v291, 1, v368);
  if (result != 1)
  {
    (*(v292 + 32))(v322, v291, v293);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v294 = v373;
    v295 = v374;
    v289(v288, v287, v290);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    sub_226D6A28C();
    v296 = v373;
    v297 = v374;
    sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v298 = swift_allocObject();
    *(v298 + 16) = xmmword_226D72130;
    v300 = *v372;
    v299 = v372[1];
    v301 = MEMORY[0x277D837D0];
    *(v298 + 56) = MEMORY[0x277D837D0];
    v302 = sub_226B16404();
    *(v298 + 32) = v300;
    *(v298 + 40) = v299;
    *(v298 + 96) = v301;
    *(v298 + 104) = v302;
    *(v298 + 64) = v302;
    *(v298 + 72) = v294;
    *(v298 + 80) = v295;
    *(v298 + 136) = v301;
    *(v298 + 144) = v302;
    *(v298 + 112) = v296;
    *(v298 + 120) = v297;
    v303 = v369 + 104;
    v304 = v371;
    v305 = v292 + 32;
    v306 = v370;
    (*(v369 + 104))(v371, *MEMORY[0x277CC77B0], v370);

    v307 = (v303 - 96);
    v308 = (v347 + 8);
    v309 = (v356 + 8);
    v310 = (v355 + 8);
    v372 = (v314 + 8);
    v103 = sub_226D6812C();

    (*v307)(v304, v306);
    (*v308)(v323, v354);
    (*(v305 - 24))(v322, v368);
    (*v309)(v321, v313);
    (*v310)(v319, v317);
    goto LABEL_21;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_226C51968(uint64_t *a1)
{
  v333 = a1;
  v319 = sub_226D6CA9C();
  v313 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v290 = &v284 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v297 = &v284 - v3;
  MEMORY[0x28223BE20](v4);
  v316 = &v284 - v5;
  MEMORY[0x28223BE20](v6);
  v308 = &v284 - v7;
  MEMORY[0x28223BE20](v8);
  v301 = &v284 - v9;
  v331 = sub_226D6913C();
  v329 = *(v331 - 8);
  MEMORY[0x28223BE20](v331);
  v330 = &v284 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v11 - 8);
  v286 = &v284 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v292 = &v284 - v14;
  MEMORY[0x28223BE20](v15);
  v305 = &v284 - v16;
  MEMORY[0x28223BE20](v17);
  v303 = &v284 - v18;
  MEMORY[0x28223BE20](v19);
  v294 = &v284 - v20;
  MEMORY[0x28223BE20](v21);
  v317 = &v284 - v22;
  MEMORY[0x28223BE20](v23);
  v287 = &v284 - v24;
  MEMORY[0x28223BE20](v25);
  v298 = &v284 - v26;
  v27 = sub_226D6D4AC();
  v326 = *(v27 - 8);
  v327 = v27;
  MEMORY[0x28223BE20](v27);
  v289 = &v284 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v296 = &v284 - v30;
  MEMORY[0x28223BE20](v31);
  v315 = &v284 - v32;
  MEMORY[0x28223BE20](v33);
  v307 = &v284 - v34;
  MEMORY[0x28223BE20](v35);
  v300 = &v284 - v36;
  MEMORY[0x28223BE20](v37);
  v314 = &v284 - v38;
  MEMORY[0x28223BE20](v39);
  v293 = &v284 - v40;
  MEMORY[0x28223BE20](v41);
  v304 = &v284 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  MEMORY[0x28223BE20](v43 - 8);
  v323 = &v284 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  MEMORY[0x28223BE20](v45 - 8);
  v322 = &v284 - v46;
  v47 = sub_226D6CEAC();
  v320 = *(v47 - 8);
  v321 = v47;
  MEMORY[0x28223BE20](v47);
  v288 = &v284 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v295 = &v284 - v50;
  MEMORY[0x28223BE20](v51);
  v318 = &v284 - v52;
  MEMORY[0x28223BE20](v53);
  v306 = &v284 - v54;
  MEMORY[0x28223BE20](v55);
  v299 = &v284 - v56;
  MEMORY[0x28223BE20](v57);
  v324 = &v284 - v58;
  MEMORY[0x28223BE20](v59);
  v291 = &v284 - v60;
  MEMORY[0x28223BE20](v61);
  v302 = &v284 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  MEMORY[0x28223BE20](v63 - 8);
  v65 = &v284 - v64;
  v66 = sub_226D6763C();
  v335 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v325 = &v284 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v70 = &v284 - v69;
  v71 = sub_226D6907C();
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v284 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_226D69B8C();
  v76 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v78 = &v284 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_226D6814C();
  v328 = *(v332 - 8);
  v79 = MEMORY[0x28223BE20](v332);
  v81 = &v284 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v76 + 16);
  v311 = v75;
  v310 = v76 + 16;
  v309 = v82;
  (v82)(v78, v336, v75, v79);
  v83 = v71;
  v84 = v335;
  (*(v72 + 104))(v74, *MEMORY[0x277CC7750], v83);
  v85 = v66;
  v334 = v81;
  v86 = v333;
  v312 = v78;
  sub_226D6813C();
  v87 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  sub_226AC40E8(v86 + *(v87 + 32), v65, &qword_27D7A6680, &unk_226D74710);
  if ((*(v84 + 48))(v65, 1, v66) == 1)
  {
    sub_226AC47B0(v65, &qword_27D7A6680, &unk_226D74710);
    v89 = v331;
    v88 = v332;
    v90 = v330;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_226D70840;
    v93 = *v86;
    v92 = v86[1];
    *(v91 + 56) = MEMORY[0x277D837D0];
    *(v91 + 64) = sub_226B16404();
    *(v91 + 32) = v93;
    *(v91 + 40) = v92;
    v94 = v329;
    (*(v329 + 104))(v90, *MEMORY[0x277CC77B0], v89);

    v95 = sub_226D6812C();

    (*(v94 + 8))(v90, v89);
LABEL_23:
    (*(v328 + 8))(v334, v88);
    return v95;
  }

  (*(v84 + 32))(v70, v65, v66);
  v96 = v325;
  (*(v84 + 16))(v325, v70, v66);
  v97 = (*(v84 + 88))(v96, v66);
  v98 = v97 == *MEMORY[0x277CC6CF0];
  v284 = v66;
  v285 = v70;
  if (v98)
  {
    (*(v84 + 96))(v96, v66);
    v99 = v322;
    sub_226D69B6C();
    v100 = sub_226D6D6DC();
    (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
    v101 = v323;
    sub_226D69B7C();
    v102 = sub_226D6D71C();
    (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
    sub_226D6CE8C();
    v103 = v317;
    sub_226D6CE0C();
    v105 = v326;
    v104 = v327;
    result = (*(v326 + 48))(v103, 1, v327);
    if (result != 1)
    {
      v107 = v314;
      (*(v105 + 32))(v314, v103, v104);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      v108 = v332;
      sub_226D6A28C();
      v109 = v337;
      v110 = v338;
      v336 = "ME_SINGULAR_HOURS";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_226D71840;
      v113 = *v86;
      v112 = v86[1];
      v114 = MEMORY[0x277D837D0];
      *(v111 + 56) = MEMORY[0x277D837D0];
      v115 = sub_226B16404();
      *(v111 + 32) = v113;
      *(v111 + 40) = v112;
      *(v111 + 96) = v114;
      *(v111 + 104) = v115;
      *(v111 + 64) = v115;
      *(v111 + 72) = v109;
      *(v111 + 80) = v110;
      v117 = v329;
      v116 = v330;
      v118 = v331;
      (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

      v95 = sub_226D6812C();

      (*(v117 + 8))(v116, v118);
      v88 = v108;
      (*(v105 + 8))(v107, v327);
      (*(v320 + 8))(v324, v321);
      (*(v335 + 8))(v285, v284);
      goto LABEL_23;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v119 = v326;
  if (v97 == *MEMORY[0x277CC6D08])
  {
    (*(v84 + 96))(v96, v66);
    v120 = *(v96 + 1);
    v317 = *v96;
    v324 = v120;
    v314 = *(v96 + 2);
    v121 = v322;
    v122 = v336;
    sub_226D69B6C();
    v123 = sub_226D6D6DC();
    (*(*(v123 - 8) + 56))(v121, 0, 1, v123);
    v124 = v323;
    sub_226D69B7C();
    v125 = sub_226D6D71C();
    (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
    sub_226D6CE8C();
    v126 = v305;
    sub_226D6CE0C();
    v127 = v327;
    result = (*(v119 + 48))(v126, 1, v327);
    if (result != 1)
    {
      v128 = v119 + 32;
      (*(v119 + 32))(v315, v126, v127);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v130 = v337;
      v129 = v338;
      v309(v312, v122, v311);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
      sub_226D6A28C();
      v131 = v337;
      v132 = v338;
      sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_226D72130;
      v135 = *v333;
      v134 = v333[1];
      v136 = MEMORY[0x277D837D0];
      *(v133 + 56) = MEMORY[0x277D837D0];
      v137 = sub_226B16404();
      *(v133 + 32) = v135;
      *(v133 + 40) = v134;
      *(v133 + 96) = v136;
      *(v133 + 104) = v137;
      *(v133 + 64) = v137;
      *(v133 + 72) = v130;
      *(v133 + 80) = v129;
      *(v133 + 136) = v136;
      *(v133 + 144) = v137;
      *(v133 + 112) = v131;
      *(v133 + 120) = v132;
      v138 = v330;
      v139 = v329 + 104;
      v140 = v331;
      (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

      v141 = (v139 - 96);
      v142 = (v313 + 8);
      v143 = (v128 - 24);
      v144 = (v320 + 8);
      v145 = (v335 + 8);
      v95 = sub_226D6812C();

      (*v141)(v138, v140);
      (*v142)(v316, v319);
      (*v143)(v315, v327);
      (*v144)(v318, v321);
LABEL_22:
      (*v145)(v285, v284);
      v88 = v332;
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  if (v97 == *MEMORY[0x277CC6D00])
  {
    (*(v84 + 96))(v96, v66);
    v146 = *(v96 + 1);
    v318 = *v96;
    v324 = v146;
    v147 = v322;
    v148 = v336;
    sub_226D69B6C();
    v149 = sub_226D6D6DC();
    (*(*(v149 - 8) + 56))(v147, 0, 1, v149);
    v150 = v323;
    sub_226D69B7C();
    v151 = sub_226D6D71C();
    (*(*(v151 - 8) + 56))(v150, 0, 1, v151);
    sub_226D6CE8C();
    v152 = v303;
    sub_226D6CE0C();
    v154 = v326;
    v153 = v327;
    result = (*(v326 + 48))(v152, 1, v327);
    if (result == 1)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    (*(v154 + 32))(v307, v152, v153);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v156 = v337;
    v155 = v338;
    v309(v312, v148, v311);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    sub_226D6A28C();
    v157 = v337;
    v158 = v338;
    sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_226D72130;
    v161 = *v333;
    v160 = v333[1];
    v162 = MEMORY[0x277D837D0];
    *(v159 + 56) = MEMORY[0x277D837D0];
    v163 = sub_226B16404();
    *(v159 + 32) = v161;
    *(v159 + 40) = v160;
    *(v159 + 96) = v162;
    *(v159 + 104) = v163;
    *(v159 + 64) = v163;
    *(v159 + 72) = v156;
    *(v159 + 80) = v155;
    *(v159 + 136) = v162;
    *(v159 + 144) = v163;
    *(v159 + 112) = v157;
    *(v159 + 120) = v158;
    v164 = v330;
    v165 = v329 + 104;
    v166 = v331;
    (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

    v167 = (v165 - 96);
    v168 = (v313 + 8);
    v169 = (v154 + 8);
    v170 = (v320 + 8);
    v145 = (v335 + 8);
    v95 = sub_226D6812C();

    (*v167)(v164, v166);
    (*v168)(v308, v319);
    (*v169)(v307, v327);
    v214 = *v170;
    v215 = &v338;
LABEL_21:
    v214(*(v215 - 32), v321);
    goto LABEL_22;
  }

  if (v97 == *MEMORY[0x277CC6CE0])
  {
    (*(v84 + 96))(v96, v66);
    v171 = v322;
    sub_226D69B6C();
    v172 = sub_226D6D6DC();
    (*(*(v172 - 8) + 56))(v171, 0, 1, v172);
    v173 = v323;
    sub_226D69B7C();
    v174 = sub_226D6D71C();
    (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
    sub_226D6CE8C();
    v175 = v298;
    sub_226D6CE0C();
    v177 = v326;
    v176 = v327;
    result = (*(v326 + 48))(v175, 1, v327);
    v178 = v330;
    if (result == 1)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    (*(v177 + 32))(v304, v175, v176);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    v88 = v332;
    sub_226D6A28C();
    v179 = v337;
    v180 = v338;
    v336 = "OUT_FOR_DELIVERY_ON_DATE";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v181 = swift_allocObject();
    *(v181 + 16) = xmmword_226D71840;
    v183 = *v333;
    v182 = v333[1];
    v184 = MEMORY[0x277D837D0];
    *(v181 + 56) = MEMORY[0x277D837D0];
    v185 = sub_226B16404();
    *(v181 + 32) = v183;
    *(v181 + 40) = v182;
    *(v181 + 96) = v184;
    *(v181 + 104) = v185;
    *(v181 + 64) = v185;
    *(v181 + 72) = v179;
    *(v181 + 80) = v180;
    v186 = v329;
    v187 = v331;
    (*(v329 + 104))(v178, *MEMORY[0x277CC77B0], v331);

    v95 = sub_226D6812C();

    (*(v186 + 8))(v178, v187);
    (*(v177 + 8))(v304, v327);
    (*(v320 + 8))(v302, v321);
LABEL_17:
    (*(v335 + 8))(v285, v85);
    goto LABEL_23;
  }

  v188 = v70;
  v90 = v330;
  v89 = v331;
  if (v97 == *MEMORY[0x277CC6CE8])
  {
    (*(v84 + 96))(v96, v85);
    v189 = *(v96 + 1);
    v318 = *v96;
    v324 = v189;
    v190 = v322;
    v191 = v336;
    sub_226D69B6C();
    v192 = sub_226D6D6DC();
    (*(*(v192 - 8) + 56))(v190, 0, 1, v192);
    v193 = v323;
    sub_226D69B7C();
    v194 = sub_226D6D71C();
    (*(*(v194 - 8) + 56))(v193, 0, 1, v194);
    sub_226D6CE8C();
    v195 = v294;
    sub_226D6CE0C();
    v197 = v326;
    v196 = v327;
    result = (*(v326 + 48))(v195, 1, v327);
    if (result == 1)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    (*(v197 + 32))(v300, v195, v196);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v198 = v337;
    v326 = v338;
    v309(v312, v191, v311);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    sub_226D6A28C();
    v199 = v337;
    v200 = v338;
    sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v201 = swift_allocObject();
    *(v201 + 16) = xmmword_226D72130;
    v203 = *v333;
    v202 = v333[1];
    v204 = v197 + 32;
    v205 = MEMORY[0x277D837D0];
    *(v201 + 56) = MEMORY[0x277D837D0];
    v206 = sub_226B16404();
    *(v201 + 32) = v203;
    *(v201 + 40) = v202;
    *(v201 + 96) = v205;
    *(v201 + 104) = v206;
    *(v201 + 64) = v206;
    *(v201 + 72) = v198;
    *(v201 + 80) = v326;
    *(v201 + 136) = v205;
    *(v201 + 144) = v206;
    *(v201 + 112) = v199;
    *(v201 + 120) = v200;
    v207 = v330;
    v208 = v329 + 104;
    v209 = v331;
    (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

    v210 = (v208 - 96);
    v211 = (v313 + 8);
    v212 = (v204 - 24);
    v213 = (v320 + 8);
    v145 = (v335 + 8);
    v95 = sub_226D6812C();

    (*v210)(v207, v209);
    (*v211)(v301, v319);
    (*v212)(v300, v327);
    v214 = *v213;
    v215 = &v331;
    goto LABEL_21;
  }

  if (v97 == *MEMORY[0x277CC6CF8])
  {
    (*(v84 + 96))(v96, v85);
    v216 = *(v96 + 1);
    v318 = *v96;
    v324 = v216;
    v217 = v322;
    v218 = v336;
    sub_226D69B6C();
    v219 = sub_226D6D6DC();
    (*(*(v219 - 8) + 56))(v217, 0, 1, v219);
    v220 = v323;
    sub_226D69B7C();
    v221 = sub_226D6D71C();
    (*(*(v221 - 8) + 56))(v220, 0, 1, v221);
    sub_226D6CE8C();
    v222 = v292;
    sub_226D6CE0C();
    v224 = v326;
    v223 = v327;
    result = (*(v326 + 48))(v222, 1, v327);
    if (result == 1)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    (*(v224 + 32))(v296, v222, v223);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v225 = v337;
    v326 = v338;
    v309(v312, v218, v311);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    sub_226D6A28C();
    v226 = v337;
    v227 = v338;
    sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v228 = swift_allocObject();
    *(v228 + 16) = xmmword_226D72130;
    v230 = *v333;
    v229 = v333[1];
    v231 = v224 + 32;
    v232 = MEMORY[0x277D837D0];
    *(v228 + 56) = MEMORY[0x277D837D0];
    v233 = sub_226B16404();
    *(v228 + 32) = v230;
    *(v228 + 40) = v229;
    *(v228 + 96) = v232;
    *(v228 + 104) = v233;
    *(v228 + 64) = v233;
    *(v228 + 72) = v225;
    *(v228 + 80) = v326;
    *(v228 + 136) = v232;
    *(v228 + 144) = v233;
    *(v228 + 112) = v226;
    *(v228 + 120) = v227;
    v234 = v330;
    v235 = v329 + 104;
    v236 = v331;
    (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

    v237 = (v235 - 96);
    v238 = (v313 + 8);
    v239 = (v231 - 24);
    v240 = (v320 + 8);
    v145 = (v335 + 8);
    v95 = sub_226D6812C();

    (*v237)(v234, v236);
    (*v238)(v297, v319);
    (*v239)(v296, v327);
    v214 = *v240;
    v215 = &v327;
    goto LABEL_21;
  }

  if (v97 == *MEMORY[0x277CC6D10])
  {
    (*(v84 + 96))(v96, v85);
    v241 = v322;
    sub_226D69B6C();
    v242 = sub_226D6D6DC();
    (*(*(v242 - 8) + 56))(v241, 0, 1, v242);
    v243 = v323;
    sub_226D69B7C();
    v244 = sub_226D6D71C();
    (*(*(v244 - 8) + 56))(v243, 0, 1, v244);
    sub_226D6CE8C();
    v245 = v287;
    sub_226D6CE0C();
    v247 = v326;
    v246 = v327;
    result = (*(v326 + 48))(v245, 1, v327);
    v88 = v332;
    v248 = v333;
    if (result == 1)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    (*(v247 + 32))(v293, v245, v246);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v249 = v338;
    v325 = v337;
    v336 = "OUT_FOR_DELIVERY_ON_DATE";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_226D71840;
    v251 = v248;
    v252 = *v248;
    v253 = v251[1];
    v254 = MEMORY[0x277D837D0];
    *(v250 + 56) = MEMORY[0x277D837D0];
    v255 = sub_226B16404();
    *(v250 + 32) = v252;
    *(v250 + 40) = v253;
    *(v250 + 96) = v254;
    *(v250 + 104) = v255;
    v256 = v325;
    *(v250 + 64) = v255;
    *(v250 + 72) = v256;
    *(v250 + 80) = v249;
    v257 = v329;
    (*(v329 + 104))(v90, *MEMORY[0x277CC77B0], v89);

    v95 = sub_226D6812C();

    (*(v257 + 8))(v90, v89);
    (*(v247 + 8))(v293, v327);
    (*(v320 + 8))(v291, v321);
    goto LABEL_17;
  }

  if (v97 != *MEMORY[0x277CC6D18])
  {
    v283 = *(v84 + 8);
    v283(v188, v85);
    v283(v96, v85);
    v88 = v332;
    v86 = v333;
    goto LABEL_3;
  }

  (*(v84 + 96))(v96, v85);
  v258 = *(v96 + 8);
  v318 = *(v96 + 7);
  v324 = v258;
  v259 = v322;
  v260 = v336;
  sub_226D69B6C();
  v261 = sub_226D6D6DC();
  (*(*(v261 - 8) + 56))(v259, 0, 1, v261);
  v262 = v323;
  sub_226D69B7C();
  v263 = sub_226D6D71C();
  (*(*(v263 - 8) + 56))(v262, 0, 1, v263);
  sub_226D6CE8C();
  v264 = v286;
  sub_226D6CE0C();
  v266 = v326;
  v265 = v327;
  result = (*(v326 + 48))(v264, 1, v327);
  if (result != 1)
  {
    (*(v266 + 32))(v289, v264, v265);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v267 = v337;
    v326 = v338;
    v309(v312, v260, v311);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    sub_226D6A28C();
    v268 = v337;
    v269 = v338;
    sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v270 = swift_allocObject();
    *(v270 + 16) = xmmword_226D72130;
    v272 = *v333;
    v271 = v333[1];
    v273 = v266 + 32;
    v274 = MEMORY[0x277D837D0];
    *(v270 + 56) = MEMORY[0x277D837D0];
    v275 = sub_226B16404();
    *(v270 + 32) = v272;
    *(v270 + 40) = v271;
    *(v270 + 96) = v274;
    *(v270 + 104) = v275;
    *(v270 + 64) = v275;
    *(v270 + 72) = v267;
    *(v270 + 80) = v326;
    *(v270 + 136) = v274;
    *(v270 + 144) = v275;
    *(v270 + 112) = v268;
    *(v270 + 120) = v269;
    v276 = v330;
    v277 = v329 + 104;
    v278 = v331;
    (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

    v279 = (v277 - 96);
    v280 = (v313 + 8);
    v281 = (v273 - 24);
    v282 = (v320 + 8);
    v145 = (v335 + 8);
    v95 = sub_226D6812C();

    (*v279)(v276, v278);
    (*v280)(v290, v319);
    (*v281)(v289, v327);
    v214 = *v282;
    v215 = &v320;
    goto LABEL_21;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_226C54538(uint64_t *a1)
{
  v3 = sub_226D6913C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s21DeliveryDateFormatterVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v36 - v10;
  v12 = sub_226D6760C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  sub_226AC40E8(a1 + *(v16 + 24), v11, &qword_27D7A6678, &unk_226D71890);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226AC47B0(v11, &qword_27D7A6678, &unk_226D71890);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_226D70840;
    v32 = *a1;
    v31 = a1[1];
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_226B16404();
    *(v30 + 32) = v32;
    *(v30 + 40) = v31;
    v34 = v37;
    v33 = v38;
    (*(v37 + 104))(v5, *MEMORY[0x277CC77B0], v38);

    v29 = sub_226D6812C();

    (*(v34 + 8))(v5, v33);
    return v29;
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = sub_226D69B8C();
  (*(*(v17 - 8) + 16))(v8, v1, v17);
  v18 = sub_226C4C028(v15);
  if (!v19)
  {
    sub_226C554A8(v8, _s21DeliveryDateFormatterVMa);
    (*(v13 + 8))(v15, v12);
    goto LABEL_6;
  }

  v20 = v19;
  v36[0] = v18;
  v36[1] = "SINGLE_SHIPPING_DELIVERED";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_226D71840;
  v23 = *a1;
  v22 = a1[1];
  v24 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v25 = sub_226B16404();
  *(v21 + 32) = v23;
  *(v21 + 40) = v22;
  *(v21 + 96) = v24;
  *(v21 + 104) = v25;
  v26 = v36[0];
  *(v21 + 64) = v25;
  *(v21 + 72) = v26;
  *(v21 + 80) = v20;
  v28 = v37;
  v27 = v38;
  (*(v37 + 104))(v5, *MEMORY[0x277CC77B0], v38);

  v29 = sub_226D6812C();

  (*(v28 + 8))(v5, v27);
  sub_226C554A8(v8, _s21DeliveryDateFormatterVMa);
  (*(v13 + 8))(v15, v12);
  return v29;
}

uint64_t sub_226C549FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_226D69B8C();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8560, &qword_226D78B48);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = sub_226D6D71C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = _s40NotificationSingleFulfillmentFormatStyleVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D69B5C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C5D084();
  v15 = v22;
  sub_226D6F37C();
  if (!v15)
  {
    v16 = v20;
    sub_226C5BAF8(&qword_27D7A8510, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_226D6F16C();
    (*(v21 + 8))(v8, v6);
    (*(v16 + 40))(v14, v5, v3);
    sub_226C5CFC8(v14, v19, _s40NotificationSingleFulfillmentFormatStyleVMa);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_226C554A8(v14, _s40NotificationSingleFulfillmentFormatStyleVMa);
}

uint64_t sub_226C54DA4(uint64_t a1)
{
  v2 = sub_226C5D084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226C54DE0(uint64_t a1)
{
  v2 = sub_226C5D084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_226C54E34@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_226C54EC0(char *a1)
{
  v2 = sub_226D6913C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6C69C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = *(a1 + 1);
  v12 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  (*(v7 + 16))(v9, &a1[*(v12 + 20)], v6);
  v13 = (*(v7 + 88))(v9, v6);
  result = 0;
  if (v13 != *MEMORY[0x277CC8320])
  {
    if (v13 == *MEMORY[0x277CC8318])
    {
      return sub_226C55508(a1);
    }

    else if (v13 == *MEMORY[0x277CC8328])
    {
      return sub_226C559CC(a1);
    }

    else if (v13 == *MEMORY[0x277CC8300])
    {
      return sub_226C58A44(a1);
    }

    else if (v13 == *MEMORY[0x277CC8340])
    {
      return sub_226C5B614(a1);
    }

    else if (v13 == *MEMORY[0x277CC8338] || v13 == *MEMORY[0x277CC8310] || v13 == *MEMORY[0x277CC8308] || v13 == *MEMORY[0x277CC8330] || v13 == *MEMORY[0x277CC82F8])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_226D70840;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_226B16404();
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
      (*(v3 + 104))(v5, *MEMORY[0x277CC77B0], v2);

      v16 = sub_226D6812C();

      (*(v3 + 8))(v5, v2);
      return v16;
    }

    else
    {
      result = sub_226D6F0AC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_226C554A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C55508(uint64_t *a1)
{
  v3 = sub_226D6913C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s21ShippingDateFormatterVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v36 - v10;
  v12 = sub_226D6762C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  sub_226AC40E8(a1 + *(v16 + 28), v11, &qword_27D7A6670, &qword_226D71888);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226AC47B0(v11, &qword_27D7A6670, &qword_226D71888);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_226D70840;
    v32 = *a1;
    v31 = a1[1];
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_226B16404();
    *(v30 + 32) = v32;
    *(v30 + 40) = v31;
    v34 = v37;
    v33 = v38;
    (*(v37 + 104))(v5, *MEMORY[0x277CC77B0], v38);

    v29 = sub_226D6812C();

    (*(v34 + 8))(v5, v33);
    return v29;
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = sub_226D69B8C();
  (*(*(v17 - 8) + 16))(v8, v1, v17);
  v18 = sub_226C4B328(v15);
  if (!v19)
  {
    sub_226C554A8(v8, _s21ShippingDateFormatterVMa);
    (*(v13 + 8))(v15, v12);
    goto LABEL_6;
  }

  v20 = v19;
  v36[0] = v18;
  v36[1] = "MULTI_SHIPPING_SHIPPED";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_226D71840;
  v23 = *a1;
  v22 = a1[1];
  v24 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v25 = sub_226B16404();
  *(v21 + 32) = v23;
  *(v21 + 40) = v22;
  *(v21 + 96) = v24;
  *(v21 + 104) = v25;
  v26 = v36[0];
  *(v21 + 64) = v25;
  *(v21 + 72) = v26;
  *(v21 + 80) = v20;
  v28 = v37;
  v27 = v38;
  (*(v37 + 104))(v5, *MEMORY[0x277CC77B0], v38);

  v29 = sub_226D6812C();

  (*(v28 + 8))(v5, v27);
  sub_226C554A8(v8, _s21ShippingDateFormatterVMa);
  (*(v13 + 8))(v15, v12);
  return v29;
}

uint64_t sub_226C559CC(uint64_t *a1)
{
  v356 = sub_226D6CA9C();
  v349 = *(v356 - 8);
  MEMORY[0x28223BE20](v356);
  v325 = &v315 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v334 = &v315 - v4;
  MEMORY[0x28223BE20](v5);
  v352 = &v315 - v6;
  MEMORY[0x28223BE20](v7);
  v340 = &v315 - v8;
  MEMORY[0x28223BE20](v9);
  v348 = &v315 - v10;
  v11 = sub_226D6913C();
  v373 = *(v11 - 8);
  v374 = v11;
  MEMORY[0x28223BE20](v11);
  v375 = &v315 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v13 - 8);
  v320 = &v315 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v329 = &v315 - v16;
  MEMORY[0x28223BE20](v17);
  v346 = &v315 - v18;
  MEMORY[0x28223BE20](v19);
  v354 = &v315 - v20;
  MEMORY[0x28223BE20](v21);
  v331 = &v315 - v22;
  MEMORY[0x28223BE20](v23);
  v343 = &v315 - v24;
  MEMORY[0x28223BE20](v25);
  v322 = &v315 - v26;
  MEMORY[0x28223BE20](v27);
  v336 = &v315 - v28;
  v371 = sub_226D6D4AC();
  v368 = *(v371 - 8);
  MEMORY[0x28223BE20](v371);
  v324 = &v315 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v333 = &v315 - v31;
  MEMORY[0x28223BE20](v32);
  v351 = &v315 - v33;
  MEMORY[0x28223BE20](v34);
  v350 = &v315 - v35;
  MEMORY[0x28223BE20](v36);
  v339 = &v315 - v37;
  MEMORY[0x28223BE20](v38);
  v347 = &v315 - v39;
  MEMORY[0x28223BE20](v40);
  v328 = &v315 - v41;
  MEMORY[0x28223BE20](v42);
  v337 = &v315 - v43;
  v44 = sub_226D6907C();
  v45 = *(v44 - 8);
  v361 = v44;
  v362 = v45;
  MEMORY[0x28223BE20](v44);
  v363 = &v315 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226D69B8C();
  v48 = *(v47 - 8);
  v364 = v47;
  v365 = v48;
  MEMORY[0x28223BE20](v47);
  v366 = &v315 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_226D6814C();
  v358 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v323 = &v315 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v332 = &v315 - v53;
  MEMORY[0x28223BE20](v54);
  v355 = &v315 - v55;
  MEMORY[0x28223BE20](v56);
  v370 = &v315 - v57;
  MEMORY[0x28223BE20](v58);
  v338 = &v315 - v59;
  MEMORY[0x28223BE20](v60);
  v344 = &v315 - v61;
  MEMORY[0x28223BE20](v62);
  v327 = &v315 - v63;
  MEMORY[0x28223BE20](v64);
  v342 = &v315 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  MEMORY[0x28223BE20](v66 - 8);
  v360 = &v315 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  MEMORY[0x28223BE20](v68 - 8);
  v359 = &v315 - v69;
  v70 = sub_226D6CEAC();
  v357 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v321 = &v315 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v330 = &v315 - v73;
  MEMORY[0x28223BE20](v74);
  v353 = &v315 - v75;
  MEMORY[0x28223BE20](v76);
  v369 = &v315 - v77;
  MEMORY[0x28223BE20](v78);
  v335 = &v315 - v79;
  MEMORY[0x28223BE20](v80);
  v345 = &v315 - v81;
  MEMORY[0x28223BE20](v82);
  v326 = &v315 - v83;
  MEMORY[0x28223BE20](v84);
  v341 = &v315 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  MEMORY[0x28223BE20](v86 - 8);
  v88 = &v315 - v87;
  v89 = sub_226D6763C();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v315 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v95 = &v315 - v94;
  v96 = *(_s21NotificationFormatterV16FulfillmentInputVMa(0) + 32);
  v372 = a1;
  sub_226AC40E8(a1 + v96, v88, &qword_27D7A6680, &unk_226D74710);
  if ((*(v90 + 48))(v88, 1, v89) == 1)
  {
    sub_226AC47B0(v88, &qword_27D7A6680, &unk_226D74710);
    v97 = v374;
    v98 = v375;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_226D70840;
    v101 = *v372;
    v100 = v372[1];
    *(v99 + 56) = MEMORY[0x277D837D0];
    *(v99 + 64) = sub_226B16404();
    *(v99 + 32) = v101;
    *(v99 + 40) = v100;
    v102 = v373;
    (*(v373 + 104))(v98, *MEMORY[0x277CC77B0], v97);

    v103 = sub_226D6812C();

    (*(v102 + 8))(v98, v97);
    return v103;
  }

  (*(v90 + 32))(v95, v88, v89);
  (*(v90 + 16))(v92, v95, v89);
  v104 = (*(v90 + 88))(v92, v89);
  v105 = v104 == *MEMORY[0x277CC6CF0];
  v319 = v70;
  v318 = v89;
  v317 = v95;
  v316 = v90;
  if (v105)
  {
    v106 = v50;
    (*(v90 + 96))(v92, v89);
    v107 = v359;
    v108 = v367;
    sub_226D69B6C();
    v109 = sub_226D6D6DC();
    (*(*(v109 - 8) + 56))(v107, 0, 1, v109);
    v110 = v360;
    sub_226D69B7C();
    v111 = sub_226D6D71C();
    (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
    sub_226D6CE8C();
    (*(v365 + 16))(v366, v108, v364);
    (*(v362 + 104))(v363, *MEMORY[0x277CC7750], v361);
    sub_226D6813C();
    v112 = v354;
    sub_226D6CE0C();
    v113 = v368;
    v114 = v371;
    result = (*(v368 + 48))(v112, 1, v371);
    if (result != 1)
    {
      v116 = v350;
      (*(v113 + 32))(v350, v112, v114);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v117 = v113;
      v118 = v376;
      v119 = v377;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_226D71840;
      v122 = *v372;
      v121 = v372[1];
      v123 = MEMORY[0x277D837D0];
      *(v120 + 56) = MEMORY[0x277D837D0];
      v124 = sub_226B16404();
      *(v120 + 32) = v122;
      *(v120 + 40) = v121;
      *(v120 + 96) = v123;
      *(v120 + 104) = v124;
      *(v120 + 64) = v124;
      *(v120 + 72) = v118;
      *(v120 + 80) = v119;
      v126 = v373;
      v125 = v374;
      v127 = v375;
      (*(v373 + 104))(v375, *MEMORY[0x277CC77B0], v374);

      v103 = sub_226D6812C();

      (*(v126 + 8))(v127, v125);
      (*(v117 + 8))(v116, v371);
      (*(v358 + 8))(v370, v106);
      (*(v357 + 8))(v369, v319);
      v128 = *(v316 + 8);
LABEL_22:
      v128(v317, v318);
      return v103;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v105 = v104 == *MEMORY[0x277CC6D08];
  v315 = v50;
  if (v105)
  {
    (*(v90 + 96))(v92, v89);
    v370 = *(v92 + 1);
    v129 = v359;
    v130 = v367;
    sub_226D69B6C();
    v131 = sub_226D6D6DC();
    (*(*(v131 - 8) + 56))(v129, 0, 1, v131);
    v132 = v360;
    sub_226D69B7C();
    v133 = sub_226D6D71C();
    (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
    v134 = v130;
    sub_226D6CE8C();
    v135 = v366;
    v136 = *(v365 + 16);
    v137 = v364;
    v136(v366, v130, v364);
    (*(v362 + 104))(v363, *MEMORY[0x277CC7750], v361);
    sub_226D6813C();
    v138 = v346;
    sub_226D6CE0C();
    v139 = v368;
    v140 = v371;
    result = (*(v368 + 48))(v138, 1, v371);
    if (result != 1)
    {
      (*(v139 + 32))(v351, v138, v140);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v141 = v376;
      v142 = v377;
      v136(v135, v134, v137);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
      sub_226D6A28C();
      v143 = v376;
      v144 = v377;
      LODWORD(v370) = sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v145 = swift_allocObject();
      *(v145 + 16) = xmmword_226D72130;
      v146 = v139 + 32;
      v148 = *v372;
      v147 = v372[1];
      v149 = MEMORY[0x277D837D0];
      *(v145 + 56) = MEMORY[0x277D837D0];
      v150 = sub_226B16404();
      *(v145 + 32) = v148;
      *(v145 + 40) = v147;
      *(v145 + 96) = v149;
      *(v145 + 104) = v150;
      *(v145 + 64) = v150;
      *(v145 + 72) = v141;
      *(v145 + 80) = v142;
      *(v145 + 136) = v149;
      *(v145 + 144) = v150;
      *(v145 + 112) = v143;
      *(v145 + 120) = v144;
      v151 = v374;
      v152 = v373 + 104;
      v153 = v375;
      (*(v373 + 104))(v375, *MEMORY[0x277CC77B0], v374);

      v154 = (v152 - 96);
      v155 = (v349 + 8);
      v156 = (v358 + 8);
      v157 = (v357 + 8);
      v373 = v316 + 8;
      v103 = sub_226D6812C();

      (*v154)(v153, v151);
      (*v155)(v352, v356);
      (*(v146 - 24))(v351, v371);
      (*v156)(v355, v315);
      (*v157)(v353, v319);
LABEL_21:
      v128 = *v373;
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (v104 == *MEMORY[0x277CC6D00])
  {
    (*(v90 + 96))(v92, v89);
    v370 = *v92;
    v158 = v359;
    v159 = v367;
    sub_226D69B6C();
    v160 = sub_226D6D6DC();
    (*(*(v160 - 8) + 56))(v158, 0, 1, v160);
    v161 = v360;
    sub_226D69B7C();
    v162 = sub_226D6D71C();
    (*(*(v162 - 8) + 56))(v161, 0, 1, v162);
    v163 = v159;
    sub_226D6CE8C();
    v164 = v366;
    v165 = *(v365 + 16);
    v166 = v364;
    v165(v366, v159, v364);
    (*(v362 + 104))(v363, *MEMORY[0x277CC7750], v361);
    sub_226D6813C();
    v167 = v343;
    sub_226D6CE0C();
    v168 = v368;
    v169 = v371;
    result = (*(v368 + 48))(v167, 1, v371);
    if (result != 1)
    {
      (*(v168 + 32))(v347, v167, v169);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v170 = v376;
      v171 = v377;
      v165(v164, v163, v166);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
      sub_226D6A28C();
      v172 = v376;
      v173 = v377;
      LODWORD(v370) = sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v174 = swift_allocObject();
      *(v174 + 16) = xmmword_226D72130;
      v175 = v168 + 32;
      v177 = *v372;
      v176 = v372[1];
      v178 = MEMORY[0x277D837D0];
      *(v174 + 56) = MEMORY[0x277D837D0];
      v179 = sub_226B16404();
      *(v174 + 32) = v177;
      *(v174 + 40) = v176;
      *(v174 + 96) = v178;
      *(v174 + 104) = v179;
      *(v174 + 64) = v179;
      *(v174 + 72) = v170;
      *(v174 + 80) = v171;
      *(v174 + 136) = v178;
      *(v174 + 144) = v179;
      *(v174 + 112) = v172;
      *(v174 + 120) = v173;
      v180 = v374;
      v181 = v373 + 104;
      v182 = v375;
      (*(v373 + 104))(v375, *MEMORY[0x277CC77B0], v374);

      v183 = (v181 - 96);
      v184 = (v349 + 8);
      v185 = (v358 + 8);
      v186 = (v357 + 8);
      v373 = v316 + 8;
      v103 = sub_226D6812C();

      (*v183)(v182, v180);
      (*v184)(v348, v356);
      (*(v175 - 24))(v347, v371);
      (*v185)(v344, v315);
      (*v186)(v345, v319);
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  if (v104 == *MEMORY[0x277CC6CE0])
  {
    (*(v90 + 96))(v92, v89);
    v187 = v359;
    v188 = v367;
    sub_226D69B6C();
    v189 = sub_226D6D6DC();
    (*(*(v189 - 8) + 56))(v187, 0, 1, v189);
    v190 = v360;
    sub_226D69B7C();
    v191 = sub_226D6D71C();
    (*(*(v191 - 8) + 56))(v190, 0, 1, v191);
    sub_226D6CE8C();
    (*(v365 + 16))(v366, v188, v364);
    (*(v362 + 104))(v363, *MEMORY[0x277CC7750], v361);
    sub_226D6813C();
    v192 = v336;
    sub_226D6CE0C();
    v193 = v368;
    v194 = v371;
    result = (*(v368 + 48))(v192, 1, v371);
    v195 = v375;
    if (result != 1)
    {
      v196 = v337;
      (*(v193 + 32))(v337, v192, v194);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v197 = v193;
      v198 = v376;
      v199 = v377;
      v370 = "E_BY_TIME_SINGULAR_HOURS";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v200 = swift_allocObject();
      *(v200 + 16) = xmmword_226D71840;
      v202 = *v372;
      v201 = v372[1];
      v203 = MEMORY[0x277D837D0];
      *(v200 + 56) = MEMORY[0x277D837D0];
      v204 = sub_226B16404();
      *(v200 + 32) = v202;
      *(v200 + 40) = v201;
      *(v200 + 96) = v203;
      *(v200 + 104) = v204;
      *(v200 + 64) = v204;
      *(v200 + 72) = v198;
      *(v200 + 80) = v199;
      v205 = v373;
      v206 = v374;
      (*(v373 + 104))(v195, *MEMORY[0x277CC77B0], v374);

      v103 = sub_226D6812C();

      (*(v205 + 8))(v195, v206);
      (*(v197 + 8))(v196, v371);
      (*(v358 + 8))(v342, v315);
      (*(v357 + 8))(v341, v319);
      (*(v90 + 8))(v317, v318);
      return v103;
    }

    goto LABEL_37;
  }

  v98 = v375;
  if (v104 == *MEMORY[0x277CC6CE8])
  {
    (*(v90 + 96))(v92, v89);
    v207 = *(v92 + 1);
    v369 = *v92;
    v370 = v207;
    v208 = v359;
    v209 = v367;
    sub_226D69B6C();
    v210 = sub_226D6D6DC();
    (*(*(v210 - 8) + 56))(v208, 0, 1, v210);
    v211 = v360;
    sub_226D69B7C();
    v212 = sub_226D6D71C();
    (*(*(v212 - 8) + 56))(v211, 0, 1, v212);
    v213 = v209;
    sub_226D6CE8C();
    v214 = v366;
    v215 = *(v365 + 16);
    v216 = v364;
    v215(v366, v209, v364);
    (*(v362 + 104))(v363, *MEMORY[0x277CC7750], v361);
    sub_226D6813C();
    v217 = v331;
    sub_226D6CE0C();
    v218 = v368;
    v219 = v371;
    result = (*(v368 + 48))(v217, 1, v371);
    if (result != 1)
    {
      (*(v218 + 32))(v339, v217, v219);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v220 = v376;
      v221 = v377;
      v215(v214, v213, v216);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
      sub_226D6A28C();
      v222 = v376;
      v223 = v377;
      LODWORD(v370) = sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v224 = swift_allocObject();
      *(v224 + 16) = xmmword_226D72130;
      v225 = v218 + 32;
      v227 = *v372;
      v226 = v372[1];
      v228 = MEMORY[0x277D837D0];
      *(v224 + 56) = MEMORY[0x277D837D0];
      v229 = sub_226B16404();
      *(v224 + 32) = v227;
      *(v224 + 40) = v226;
      *(v224 + 96) = v228;
      *(v224 + 104) = v229;
      *(v224 + 64) = v229;
      *(v224 + 72) = v220;
      *(v224 + 80) = v221;
      *(v224 + 136) = v228;
      *(v224 + 144) = v229;
      *(v224 + 112) = v222;
      *(v224 + 120) = v223;
      v230 = v374;
      v231 = v373 + 104;
      v232 = v375;
      (*(v373 + 104))(v375, *MEMORY[0x277CC77B0], v374);

      v233 = (v231 - 96);
      v234 = (v349 + 8);
      v235 = (v358 + 8);
      v236 = (v357 + 8);
      v373 = v316 + 8;
      v103 = sub_226D6812C();

      (*v233)(v232, v230);
      (*v234)(v340, v356);
      (*(v225 - 24))(v339, v371);
      (*v235)(v338, v315);
      (*v236)(v335, v319);
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  if (v104 == *MEMORY[0x277CC6CF8])
  {
    (*(v90 + 96))(v92, v89);
    v237 = *(v92 + 1);
    v369 = *v92;
    v370 = v237;
    v238 = v359;
    v239 = v367;
    sub_226D69B6C();
    v240 = sub_226D6D6DC();
    (*(*(v240 - 8) + 56))(v238, 0, 1, v240);
    v241 = v360;
    sub_226D69B7C();
    v242 = sub_226D6D71C();
    (*(*(v242 - 8) + 56))(v241, 0, 1, v242);
    v243 = v239;
    sub_226D6CE8C();
    v244 = v366;
    v245 = *(v365 + 16);
    v246 = v364;
    v245(v366, v239, v364);
    (*(v362 + 104))(v363, *MEMORY[0x277CC7750], v361);
    sub_226D6813C();
    v247 = v329;
    sub_226D6CE0C();
    v248 = v368;
    v249 = v371;
    result = (*(v368 + 48))(v247, 1, v371);
    if (result != 1)
    {
      (*(v248 + 32))(v333, v247, v249);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v250 = v376;
      v251 = v377;
      v245(v244, v243, v246);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
      sub_226D6A28C();
      v252 = v376;
      v253 = v377;
      LODWORD(v370) = sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v254 = swift_allocObject();
      *(v254 + 16) = xmmword_226D72130;
      v255 = v248 + 32;
      v257 = *v372;
      v256 = v372[1];
      v258 = MEMORY[0x277D837D0];
      *(v254 + 56) = MEMORY[0x277D837D0];
      v259 = sub_226B16404();
      *(v254 + 32) = v257;
      *(v254 + 40) = v256;
      *(v254 + 96) = v258;
      *(v254 + 104) = v259;
      *(v254 + 64) = v259;
      *(v254 + 72) = v250;
      *(v254 + 80) = v251;
      *(v254 + 136) = v258;
      *(v254 + 144) = v259;
      *(v254 + 112) = v252;
      *(v254 + 120) = v253;
      v260 = v374;
      v261 = v373 + 104;
      v262 = v375;
      (*(v373 + 104))(v375, *MEMORY[0x277CC77B0], v374);

      v263 = (v261 - 96);
      v264 = (v349 + 8);
      v265 = (v358 + 8);
      v266 = (v357 + 8);
      v373 = v316 + 8;
      v103 = sub_226D6812C();

      (*v263)(v262, v260);
      (*v264)(v334, v356);
      (*(v255 - 24))(v333, v371);
      (*v265)(v332, v315);
      (*v266)(v330, v319);
      goto LABEL_21;
    }

    goto LABEL_39;
  }

  v97 = v374;
  if (v104 == *MEMORY[0x277CC6D10])
  {
    (*(v90 + 96))(v92, v89);
    v370 = *(v92 + 4);
    v267 = v359;
    v268 = v367;
    sub_226D69B6C();
    v269 = sub_226D6D6DC();
    (*(*(v269 - 8) + 56))(v267, 0, 1, v269);
    v270 = v360;
    sub_226D69B7C();
    v271 = sub_226D6D71C();
    (*(*(v271 - 8) + 56))(v270, 0, 1, v271);
    sub_226D6CE8C();
    (*(v365 + 16))(v366, v268, v364);
    (*(v362 + 104))(v363, *MEMORY[0x277CC7750], v361);
    sub_226D6813C();
    v272 = v322;
    sub_226D6CE0C();
    v273 = v368;
    v274 = v371;
    result = (*(v368 + 48))(v272, 1, v371);
    if (result != 1)
    {
      (*(v273 + 32))(v328, v272, v274);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v275 = v376;
      v276 = v377;
      v370 = "E_BY_TIME_SINGULAR_HOURS";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v277 = v273;
      v278 = swift_allocObject();
      *(v278 + 16) = xmmword_226D71840;
      v280 = *v372;
      v279 = v372[1];
      v281 = MEMORY[0x277D837D0];
      *(v278 + 56) = MEMORY[0x277D837D0];
      v282 = sub_226B16404();
      *(v278 + 32) = v280;
      *(v278 + 40) = v279;
      *(v278 + 96) = v281;
      *(v278 + 104) = v282;
      *(v278 + 64) = v282;
      *(v278 + 72) = v275;
      *(v278 + 80) = v276;
      v283 = v373;
      (*(v373 + 104))(v98, *MEMORY[0x277CC77B0], v97);

      v103 = sub_226D6812C();

      (*(v283 + 8))(v98, v97);
      (*(v277 + 8))(v328, v371);
      (*(v358 + 8))(v327, v315);
      (*(v357 + 8))(v326, v319);
      (*(v316 + 8))(v95, v318);
      return v103;
    }

    goto LABEL_40;
  }

  if (v104 != *MEMORY[0x277CC6D18])
  {
    v314 = *(v90 + 8);
    v314(v317, v89);
    v314(v92, v89);
    goto LABEL_3;
  }

  (*(v90 + 96))(v92, v89);
  v284 = *(v92 + 8);
  v369 = *(v92 + 7);
  v370 = v284;
  v285 = v359;
  v286 = v367;
  sub_226D69B6C();
  v287 = sub_226D6D6DC();
  (*(*(v287 - 8) + 56))(v285, 0, 1, v287);
  v288 = v360;
  sub_226D69B7C();
  v289 = sub_226D6D71C();
  (*(*(v289 - 8) + 56))(v288, 0, 1, v289);
  v290 = v286;
  sub_226D6CE8C();
  v291 = v366;
  v292 = *(v365 + 16);
  v293 = v364;
  v292(v366, v286, v364);
  (*(v362 + 104))(v363, *MEMORY[0x277CC7750], v361);
  sub_226D6813C();
  v294 = v320;
  sub_226D6CE0C();
  v295 = v368;
  v296 = v371;
  result = (*(v368 + 48))(v294, 1, v371);
  if (result != 1)
  {
    (*(v295 + 32))(v324, v294, v296);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v297 = v376;
    v298 = v377;
    v292(v291, v290, v293);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    sub_226D6A28C();
    v299 = v376;
    v300 = v377;
    LODWORD(v370) = sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v301 = swift_allocObject();
    *(v301 + 16) = xmmword_226D72130;
    v302 = v295 + 32;
    v304 = *v372;
    v303 = v372[1];
    v305 = MEMORY[0x277D837D0];
    *(v301 + 56) = MEMORY[0x277D837D0];
    v306 = sub_226B16404();
    *(v301 + 32) = v304;
    *(v301 + 40) = v303;
    *(v301 + 96) = v305;
    *(v301 + 104) = v306;
    *(v301 + 64) = v306;
    *(v301 + 72) = v297;
    *(v301 + 80) = v298;
    *(v301 + 136) = v305;
    *(v301 + 144) = v306;
    *(v301 + 112) = v299;
    *(v301 + 120) = v300;
    v307 = v374;
    v308 = v373 + 104;
    v309 = v375;
    (*(v373 + 104))(v375, *MEMORY[0x277CC77B0], v374);

    v310 = (v308 - 96);
    v311 = (v349 + 8);
    v312 = (v358 + 8);
    v313 = (v357 + 8);
    v373 = v316 + 8;
    v103 = sub_226D6812C();

    (*v310)(v309, v307);
    (*v311)(v325, v356);
    (*(v302 - 24))(v324, v371);
    (*v312)(v323, v315);
    (*v313)(v321, v319);
    goto LABEL_21;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_226C58A44(uint64_t *a1)
{
  v333 = a1;
  v319 = sub_226D6CA9C();
  v313 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v290 = &v284 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v297 = &v284 - v3;
  MEMORY[0x28223BE20](v4);
  v316 = &v284 - v5;
  MEMORY[0x28223BE20](v6);
  v308 = &v284 - v7;
  MEMORY[0x28223BE20](v8);
  v301 = &v284 - v9;
  v331 = sub_226D6913C();
  v329 = *(v331 - 8);
  MEMORY[0x28223BE20](v331);
  v330 = &v284 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v11 - 8);
  v286 = &v284 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v292 = &v284 - v14;
  MEMORY[0x28223BE20](v15);
  v305 = &v284 - v16;
  MEMORY[0x28223BE20](v17);
  v303 = &v284 - v18;
  MEMORY[0x28223BE20](v19);
  v294 = &v284 - v20;
  MEMORY[0x28223BE20](v21);
  v317 = &v284 - v22;
  MEMORY[0x28223BE20](v23);
  v287 = &v284 - v24;
  MEMORY[0x28223BE20](v25);
  v298 = &v284 - v26;
  v27 = sub_226D6D4AC();
  v326 = *(v27 - 8);
  v327 = v27;
  MEMORY[0x28223BE20](v27);
  v289 = &v284 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v296 = &v284 - v30;
  MEMORY[0x28223BE20](v31);
  v315 = &v284 - v32;
  MEMORY[0x28223BE20](v33);
  v307 = &v284 - v34;
  MEMORY[0x28223BE20](v35);
  v300 = &v284 - v36;
  MEMORY[0x28223BE20](v37);
  v314 = &v284 - v38;
  MEMORY[0x28223BE20](v39);
  v293 = &v284 - v40;
  MEMORY[0x28223BE20](v41);
  v304 = &v284 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  MEMORY[0x28223BE20](v43 - 8);
  v323 = &v284 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  MEMORY[0x28223BE20](v45 - 8);
  v322 = &v284 - v46;
  v47 = sub_226D6CEAC();
  v320 = *(v47 - 8);
  v321 = v47;
  MEMORY[0x28223BE20](v47);
  v288 = &v284 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v295 = &v284 - v50;
  MEMORY[0x28223BE20](v51);
  v318 = &v284 - v52;
  MEMORY[0x28223BE20](v53);
  v306 = &v284 - v54;
  MEMORY[0x28223BE20](v55);
  v299 = &v284 - v56;
  MEMORY[0x28223BE20](v57);
  v324 = &v284 - v58;
  MEMORY[0x28223BE20](v59);
  v291 = &v284 - v60;
  MEMORY[0x28223BE20](v61);
  v302 = &v284 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  MEMORY[0x28223BE20](v63 - 8);
  v65 = &v284 - v64;
  v66 = sub_226D6763C();
  v335 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v325 = &v284 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v70 = &v284 - v69;
  v71 = sub_226D6907C();
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v284 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_226D69B8C();
  v76 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v78 = &v284 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_226D6814C();
  v328 = *(v332 - 8);
  v79 = MEMORY[0x28223BE20](v332);
  v81 = &v284 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v76 + 16);
  v311 = v75;
  v310 = v76 + 16;
  v309 = v82;
  (v82)(v78, v336, v75, v79);
  v83 = v71;
  v84 = v335;
  (*(v72 + 104))(v74, *MEMORY[0x277CC7750], v83);
  v85 = v66;
  v334 = v81;
  v86 = v333;
  v312 = v78;
  sub_226D6813C();
  v87 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  sub_226AC40E8(v86 + *(v87 + 32), v65, &qword_27D7A6680, &unk_226D74710);
  if ((*(v84 + 48))(v65, 1, v66) == 1)
  {
    sub_226AC47B0(v65, &qword_27D7A6680, &unk_226D74710);
    v89 = v331;
    v88 = v332;
    v90 = v330;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_226D70840;
    v93 = *v86;
    v92 = v86[1];
    *(v91 + 56) = MEMORY[0x277D837D0];
    *(v91 + 64) = sub_226B16404();
    *(v91 + 32) = v93;
    *(v91 + 40) = v92;
    v94 = v329;
    (*(v329 + 104))(v90, *MEMORY[0x277CC77B0], v89);

    v95 = sub_226D6812C();

    (*(v94 + 8))(v90, v89);
LABEL_23:
    (*(v328 + 8))(v334, v88);
    return v95;
  }

  (*(v84 + 32))(v70, v65, v66);
  v96 = v325;
  (*(v84 + 16))(v325, v70, v66);
  v97 = (*(v84 + 88))(v96, v66);
  v98 = v97 == *MEMORY[0x277CC6CF0];
  v284 = v66;
  v285 = v70;
  if (v98)
  {
    (*(v84 + 96))(v96, v66);
    v99 = v322;
    sub_226D69B6C();
    v100 = sub_226D6D6DC();
    (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
    v101 = v323;
    sub_226D69B7C();
    v102 = sub_226D6D71C();
    (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
    sub_226D6CE8C();
    v103 = v317;
    sub_226D6CE0C();
    v105 = v326;
    v104 = v327;
    result = (*(v326 + 48))(v103, 1, v327);
    if (result != 1)
    {
      v107 = v314;
      (*(v105 + 32))(v314, v103, v104);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      v108 = v332;
      sub_226D6A28C();
      v109 = v337;
      v110 = v338;
      v336 = "E_SINGULAR_HOURS";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_226D71840;
      v113 = *v86;
      v112 = v86[1];
      v114 = MEMORY[0x277D837D0];
      *(v111 + 56) = MEMORY[0x277D837D0];
      v115 = sub_226B16404();
      *(v111 + 32) = v113;
      *(v111 + 40) = v112;
      *(v111 + 96) = v114;
      *(v111 + 104) = v115;
      *(v111 + 64) = v115;
      *(v111 + 72) = v109;
      *(v111 + 80) = v110;
      v117 = v329;
      v116 = v330;
      v118 = v331;
      (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

      v95 = sub_226D6812C();

      (*(v117 + 8))(v116, v118);
      v88 = v108;
      (*(v105 + 8))(v107, v327);
      (*(v320 + 8))(v324, v321);
      (*(v335 + 8))(v285, v284);
      goto LABEL_23;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v119 = v326;
  if (v97 == *MEMORY[0x277CC6D08])
  {
    (*(v84 + 96))(v96, v66);
    v120 = *(v96 + 1);
    v317 = *v96;
    v324 = v120;
    v314 = *(v96 + 2);
    v121 = v322;
    v122 = v336;
    sub_226D69B6C();
    v123 = sub_226D6D6DC();
    (*(*(v123 - 8) + 56))(v121, 0, 1, v123);
    v124 = v323;
    sub_226D69B7C();
    v125 = sub_226D6D71C();
    (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
    sub_226D6CE8C();
    v126 = v305;
    sub_226D6CE0C();
    v127 = v327;
    result = (*(v119 + 48))(v126, 1, v327);
    if (result != 1)
    {
      v128 = v119 + 32;
      (*(v119 + 32))(v315, v126, v127);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
      sub_226D6A28C();
      v130 = v337;
      v129 = v338;
      v309(v312, v122, v311);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
      sub_226D6A28C();
      v131 = v337;
      v132 = v338;
      sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_226D72130;
      v135 = *v333;
      v134 = v333[1];
      v136 = MEMORY[0x277D837D0];
      *(v133 + 56) = MEMORY[0x277D837D0];
      v137 = sub_226B16404();
      *(v133 + 32) = v135;
      *(v133 + 40) = v134;
      *(v133 + 96) = v136;
      *(v133 + 104) = v137;
      *(v133 + 64) = v137;
      *(v133 + 72) = v130;
      *(v133 + 80) = v129;
      *(v133 + 136) = v136;
      *(v133 + 144) = v137;
      *(v133 + 112) = v131;
      *(v133 + 120) = v132;
      v138 = v330;
      v139 = v329 + 104;
      v140 = v331;
      (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

      v141 = (v139 - 96);
      v142 = (v313 + 8);
      v143 = (v128 - 24);
      v144 = (v320 + 8);
      v145 = (v335 + 8);
      v95 = sub_226D6812C();

      (*v141)(v138, v140);
      (*v142)(v316, v319);
      (*v143)(v315, v327);
      (*v144)(v318, v321);
LABEL_22:
      (*v145)(v285, v284);
      v88 = v332;
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  if (v97 == *MEMORY[0x277CC6D00])
  {
    (*(v84 + 96))(v96, v66);
    v146 = *(v96 + 1);
    v318 = *v96;
    v324 = v146;
    v147 = v322;
    v148 = v336;
    sub_226D69B6C();
    v149 = sub_226D6D6DC();
    (*(*(v149 - 8) + 56))(v147, 0, 1, v149);
    v150 = v323;
    sub_226D69B7C();
    v151 = sub_226D6D71C();
    (*(*(v151 - 8) + 56))(v150, 0, 1, v151);
    sub_226D6CE8C();
    v152 = v303;
    sub_226D6CE0C();
    v154 = v326;
    v153 = v327;
    result = (*(v326 + 48))(v152, 1, v327);
    if (result == 1)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    (*(v154 + 32))(v307, v152, v153);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v156 = v337;
    v155 = v338;
    v309(v312, v148, v311);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    sub_226D6A28C();
    v157 = v337;
    v158 = v338;
    sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_226D72130;
    v161 = *v333;
    v160 = v333[1];
    v162 = MEMORY[0x277D837D0];
    *(v159 + 56) = MEMORY[0x277D837D0];
    v163 = sub_226B16404();
    *(v159 + 32) = v161;
    *(v159 + 40) = v160;
    *(v159 + 96) = v162;
    *(v159 + 104) = v163;
    *(v159 + 64) = v163;
    *(v159 + 72) = v156;
    *(v159 + 80) = v155;
    *(v159 + 136) = v162;
    *(v159 + 144) = v163;
    *(v159 + 112) = v157;
    *(v159 + 120) = v158;
    v164 = v330;
    v165 = v329 + 104;
    v166 = v331;
    (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

    v167 = (v165 - 96);
    v168 = (v313 + 8);
    v169 = (v154 + 8);
    v170 = (v320 + 8);
    v145 = (v335 + 8);
    v95 = sub_226D6812C();

    (*v167)(v164, v166);
    (*v168)(v308, v319);
    (*v169)(v307, v327);
    v214 = *v170;
    v215 = &v338;
LABEL_21:
    v214(*(v215 - 32), v321);
    goto LABEL_22;
  }

  if (v97 == *MEMORY[0x277CC6CE0])
  {
    (*(v84 + 96))(v96, v66);
    v171 = v322;
    sub_226D69B6C();
    v172 = sub_226D6D6DC();
    (*(*(v172 - 8) + 56))(v171, 0, 1, v172);
    v173 = v323;
    sub_226D69B7C();
    v174 = sub_226D6D71C();
    (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
    sub_226D6CE8C();
    v175 = v298;
    sub_226D6CE0C();
    v177 = v326;
    v176 = v327;
    result = (*(v326 + 48))(v175, 1, v327);
    v178 = v330;
    if (result == 1)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    (*(v177 + 32))(v304, v175, v176);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    v88 = v332;
    sub_226D6A28C();
    v179 = v337;
    v180 = v338;
    v336 = "UT_FOR_DELIVERY_ON_DATE";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v181 = swift_allocObject();
    *(v181 + 16) = xmmword_226D71840;
    v183 = *v333;
    v182 = v333[1];
    v184 = MEMORY[0x277D837D0];
    *(v181 + 56) = MEMORY[0x277D837D0];
    v185 = sub_226B16404();
    *(v181 + 32) = v183;
    *(v181 + 40) = v182;
    *(v181 + 96) = v184;
    *(v181 + 104) = v185;
    *(v181 + 64) = v185;
    *(v181 + 72) = v179;
    *(v181 + 80) = v180;
    v186 = v329;
    v187 = v331;
    (*(v329 + 104))(v178, *MEMORY[0x277CC77B0], v331);

    v95 = sub_226D6812C();

    (*(v186 + 8))(v178, v187);
    (*(v177 + 8))(v304, v327);
    (*(v320 + 8))(v302, v321);
LABEL_17:
    (*(v335 + 8))(v285, v85);
    goto LABEL_23;
  }

  v188 = v70;
  v90 = v330;
  v89 = v331;
  if (v97 == *MEMORY[0x277CC6CE8])
  {
    (*(v84 + 96))(v96, v85);
    v189 = *(v96 + 1);
    v318 = *v96;
    v324 = v189;
    v190 = v322;
    v191 = v336;
    sub_226D69B6C();
    v192 = sub_226D6D6DC();
    (*(*(v192 - 8) + 56))(v190, 0, 1, v192);
    v193 = v323;
    sub_226D69B7C();
    v194 = sub_226D6D71C();
    (*(*(v194 - 8) + 56))(v193, 0, 1, v194);
    sub_226D6CE8C();
    v195 = v294;
    sub_226D6CE0C();
    v197 = v326;
    v196 = v327;
    result = (*(v326 + 48))(v195, 1, v327);
    if (result == 1)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    (*(v197 + 32))(v300, v195, v196);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v198 = v337;
    v326 = v338;
    v309(v312, v191, v311);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    sub_226D6A28C();
    v199 = v337;
    v200 = v338;
    sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v201 = swift_allocObject();
    *(v201 + 16) = xmmword_226D72130;
    v203 = *v333;
    v202 = v333[1];
    v204 = v197 + 32;
    v205 = MEMORY[0x277D837D0];
    *(v201 + 56) = MEMORY[0x277D837D0];
    v206 = sub_226B16404();
    *(v201 + 32) = v203;
    *(v201 + 40) = v202;
    *(v201 + 96) = v205;
    *(v201 + 104) = v206;
    *(v201 + 64) = v206;
    *(v201 + 72) = v198;
    *(v201 + 80) = v326;
    *(v201 + 136) = v205;
    *(v201 + 144) = v206;
    *(v201 + 112) = v199;
    *(v201 + 120) = v200;
    v207 = v330;
    v208 = v329 + 104;
    v209 = v331;
    (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

    v210 = (v208 - 96);
    v211 = (v313 + 8);
    v212 = (v204 - 24);
    v213 = (v320 + 8);
    v145 = (v335 + 8);
    v95 = sub_226D6812C();

    (*v210)(v207, v209);
    (*v211)(v301, v319);
    (*v212)(v300, v327);
    v214 = *v213;
    v215 = &v331;
    goto LABEL_21;
  }

  if (v97 == *MEMORY[0x277CC6CF8])
  {
    (*(v84 + 96))(v96, v85);
    v216 = *(v96 + 1);
    v318 = *v96;
    v324 = v216;
    v217 = v322;
    v218 = v336;
    sub_226D69B6C();
    v219 = sub_226D6D6DC();
    (*(*(v219 - 8) + 56))(v217, 0, 1, v219);
    v220 = v323;
    sub_226D69B7C();
    v221 = sub_226D6D71C();
    (*(*(v221 - 8) + 56))(v220, 0, 1, v221);
    sub_226D6CE8C();
    v222 = v292;
    sub_226D6CE0C();
    v224 = v326;
    v223 = v327;
    result = (*(v326 + 48))(v222, 1, v327);
    if (result == 1)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    (*(v224 + 32))(v296, v222, v223);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v225 = v337;
    v326 = v338;
    v309(v312, v218, v311);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    sub_226D6A28C();
    v226 = v337;
    v227 = v338;
    sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v228 = swift_allocObject();
    *(v228 + 16) = xmmword_226D72130;
    v230 = *v333;
    v229 = v333[1];
    v231 = v224 + 32;
    v232 = MEMORY[0x277D837D0];
    *(v228 + 56) = MEMORY[0x277D837D0];
    v233 = sub_226B16404();
    *(v228 + 32) = v230;
    *(v228 + 40) = v229;
    *(v228 + 96) = v232;
    *(v228 + 104) = v233;
    *(v228 + 64) = v233;
    *(v228 + 72) = v225;
    *(v228 + 80) = v326;
    *(v228 + 136) = v232;
    *(v228 + 144) = v233;
    *(v228 + 112) = v226;
    *(v228 + 120) = v227;
    v234 = v330;
    v235 = v329 + 104;
    v236 = v331;
    (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

    v237 = (v235 - 96);
    v238 = (v313 + 8);
    v239 = (v231 - 24);
    v240 = (v320 + 8);
    v145 = (v335 + 8);
    v95 = sub_226D6812C();

    (*v237)(v234, v236);
    (*v238)(v297, v319);
    (*v239)(v296, v327);
    v214 = *v240;
    v215 = &v327;
    goto LABEL_21;
  }

  if (v97 == *MEMORY[0x277CC6D10])
  {
    (*(v84 + 96))(v96, v85);
    v241 = v322;
    sub_226D69B6C();
    v242 = sub_226D6D6DC();
    (*(*(v242 - 8) + 56))(v241, 0, 1, v242);
    v243 = v323;
    sub_226D69B7C();
    v244 = sub_226D6D71C();
    (*(*(v244 - 8) + 56))(v243, 0, 1, v244);
    sub_226D6CE8C();
    v245 = v287;
    sub_226D6CE0C();
    v247 = v326;
    v246 = v327;
    result = (*(v326 + 48))(v245, 1, v327);
    v88 = v332;
    v248 = v333;
    if (result == 1)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    (*(v247 + 32))(v293, v245, v246);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v249 = v338;
    v325 = v337;
    v336 = "UT_FOR_DELIVERY_ON_DATE";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_226D71840;
    v251 = v248;
    v252 = *v248;
    v253 = v251[1];
    v254 = MEMORY[0x277D837D0];
    *(v250 + 56) = MEMORY[0x277D837D0];
    v255 = sub_226B16404();
    *(v250 + 32) = v252;
    *(v250 + 40) = v253;
    *(v250 + 96) = v254;
    *(v250 + 104) = v255;
    v256 = v325;
    *(v250 + 64) = v255;
    *(v250 + 72) = v256;
    *(v250 + 80) = v249;
    v257 = v329;
    (*(v329 + 104))(v90, *MEMORY[0x277CC77B0], v89);

    v95 = sub_226D6812C();

    (*(v257 + 8))(v90, v89);
    (*(v247 + 8))(v293, v327);
    (*(v320 + 8))(v291, v321);
    goto LABEL_17;
  }

  if (v97 != *MEMORY[0x277CC6D18])
  {
    v283 = *(v84 + 8);
    v283(v188, v85);
    v283(v96, v85);
    v88 = v332;
    v86 = v333;
    goto LABEL_3;
  }

  (*(v84 + 96))(v96, v85);
  v258 = *(v96 + 8);
  v318 = *(v96 + 7);
  v324 = v258;
  v259 = v322;
  v260 = v336;
  sub_226D69B6C();
  v261 = sub_226D6D6DC();
  (*(*(v261 - 8) + 56))(v259, 0, 1, v261);
  v262 = v323;
  sub_226D69B7C();
  v263 = sub_226D6D71C();
  (*(*(v263 - 8) + 56))(v262, 0, 1, v263);
  sub_226D6CE8C();
  v264 = v286;
  sub_226D6CE0C();
  v266 = v326;
  v265 = v327;
  result = (*(v326 + 48))(v264, 1, v327);
  if (result != 1)
  {
    (*(v266 + 32))(v289, v264, v265);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0], MEMORY[0x277CC71B8]);
    sub_226D6A28C();
    v267 = v337;
    v326 = v338;
    v309(v312, v260, v311);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    sub_226D6A28C();
    v268 = v337;
    v269 = v338;
    sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v270 = swift_allocObject();
    *(v270 + 16) = xmmword_226D72130;
    v272 = *v333;
    v271 = v333[1];
    v273 = v266 + 32;
    v274 = MEMORY[0x277D837D0];
    *(v270 + 56) = MEMORY[0x277D837D0];
    v275 = sub_226B16404();
    *(v270 + 32) = v272;
    *(v270 + 40) = v271;
    *(v270 + 96) = v274;
    *(v270 + 104) = v275;
    *(v270 + 64) = v275;
    *(v270 + 72) = v267;
    *(v270 + 80) = v326;
    *(v270 + 136) = v274;
    *(v270 + 144) = v275;
    *(v270 + 112) = v268;
    *(v270 + 120) = v269;
    v276 = v330;
    v277 = v329 + 104;
    v278 = v331;
    (*(v329 + 104))(v330, *MEMORY[0x277CC77B0], v331);

    v279 = (v277 - 96);
    v280 = (v313 + 8);
    v281 = (v273 - 24);
    v282 = (v320 + 8);
    v145 = (v335 + 8);
    v95 = sub_226D6812C();

    (*v279)(v276, v278);
    (*v280)(v290, v319);
    (*v281)(v289, v327);
    v214 = *v282;
    v215 = &v320;
    goto LABEL_21;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_226C5B614(uint64_t *a1)
{
  v3 = sub_226D6913C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s21DeliveryDateFormatterVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v36 - v10;
  v12 = sub_226D6760C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  sub_226AC40E8(a1 + *(v16 + 24), v11, &qword_27D7A6678, &unk_226D71890);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226AC47B0(v11, &qword_27D7A6678, &unk_226D71890);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_226D70840;
    v32 = *a1;
    v31 = a1[1];
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_226B16404();
    *(v30 + 32) = v32;
    *(v30 + 40) = v31;
    v34 = v37;
    v33 = v38;
    (*(v37 + 104))(v5, *MEMORY[0x277CC77B0], v38);

    v29 = sub_226D6812C();

    (*(v34 + 8))(v5, v33);
    return v29;
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = sub_226D69B8C();
  (*(*(v17 - 8) + 16))(v8, v1, v17);
  v18 = sub_226C4C028(v15);
  if (!v19)
  {
    sub_226C554A8(v8, _s21DeliveryDateFormatterVMa);
    (*(v13 + 8))(v15, v12);
    goto LABEL_6;
  }

  v20 = v19;
  v36[0] = v18;
  v36[1] = "MULTI_SHIPPING_DELIVERED";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_226D71840;
  v23 = *a1;
  v22 = a1[1];
  v24 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v25 = sub_226B16404();
  *(v21 + 32) = v23;
  *(v21 + 40) = v22;
  *(v21 + 96) = v24;
  *(v21 + 104) = v25;
  v26 = v36[0];
  *(v21 + 64) = v25;
  *(v21 + 72) = v26;
  *(v21 + 80) = v20;
  v28 = v37;
  v27 = v38;
  (*(v37 + 104))(v5, *MEMORY[0x277CC77B0], v38);

  v29 = sub_226D6812C();

  (*(v28 + 8))(v5, v27);
  sub_226C554A8(v8, _s21DeliveryDateFormatterVMa);
  (*(v13 + 8))(v15, v12);
  return v29;
}

uint64_t sub_226C5BAF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226C5BC28(uint64_t a1)
{
  result = sub_226D677FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D69B8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D69B8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226C5BE10(uint64_t a1)
{
  result = sub_226D69B8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_226C5BEA4(uint64_t a1)
{
  sub_226D6C69C();
  if (v1 <= 0x3F)
  {
    sub_226C5BFC4(319, &qword_27D7A8448, MEMORY[0x277CC6CB0]);
    if (v2 <= 0x3F)
    {
      sub_226C5BFC4(319, &qword_27D7A8450, MEMORY[0x277CC6CD0]);
      if (v3 <= 0x3F)
      {
        sub_226C5BFC4(319, &qword_27D7A8458, MEMORY[0x277CC6D20]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_226C5BFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_226D6EC9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_226C5C258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_226D69B8C();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8548, &qword_226D78B38);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = sub_226D6D71C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = _s39NotificationMultiFulfillmentFormatStyleVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D69B5C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C5D030();
  v15 = v22;
  sub_226D6F37C();
  if (!v15)
  {
    v16 = v20;
    sub_226C5BAF8(&qword_27D7A8510, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_226D6F16C();
    (*(v21 + 8))(v8, v6);
    (*(v16 + 40))(v14, v5, v3);
    sub_226C5CFC8(v14, v19, _s39NotificationMultiFulfillmentFormatStyleVMa);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_226C554A8(v14, _s39NotificationMultiFulfillmentFormatStyleVMa);
}

uint64_t sub_226C5C600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_226D6F21C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_226C5C690(uint64_t a1)
{
  v2 = sub_226C5D030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226C5C6CC(uint64_t a1)
{
  v2 = sub_226C5D030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_226C5C708@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_226D6913C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_226C54EC0(a1);
  v10 = v9;
  if (v9)
  {
    v11 = result;
    (*(v5 + 104))(v7, *MEMORY[0x277CC77B0], v4);
    v12 = sub_226D6811C();
    v14 = v13;
    result = (*(v5 + 8))(v7, v4);
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v11 = 0;
  }

  *a2 = v12;
  a2[1] = v14;
  a2[2] = v11;
  a2[3] = v10;
  return result;
}

uint64_t sub_226C5C8B0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_226D6F38C();
  sub_226D69B8C();
  sub_226C5BAF8(&qword_27D7A8520, MEMORY[0x277CC7968], MEMORY[0x277CC7970]);
  sub_226D6F19C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_226C5CA30()
{
  sub_226D6F2FC();
  sub_226D69B8C();
  sub_226C5BAF8(&qword_27D7A8528, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226C5CAB8(uint64_t a1)
{
  sub_226D69B8C();
  sub_226C5BAF8(&qword_27D7A8528, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);

  return sub_226D6E30C();
}

uint64_t sub_226C5CB3C(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D69B8C();
  sub_226C5BAF8(&qword_27D7A8528, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

unint64_t sub_226C5CF20()
{
  result = qword_27D7A8508;
  if (!qword_27D7A8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8508);
  }

  return result;
}

unint64_t sub_226C5CF74()
{
  result = qword_27D7A8538;
  if (!qword_27D7A8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8538);
  }

  return result;
}

uint64_t sub_226C5CFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_226C5D030()
{
  result = qword_27D7A8550;
  if (!qword_27D7A8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8550);
  }

  return result;
}

unint64_t sub_226C5D084()
{
  result = qword_27D7A8568;
  if (!qword_27D7A8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8568);
  }

  return result;
}

unint64_t sub_226C5D0D8()
{
  result = qword_27D7A8580;
  if (!qword_27D7A8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8580);
  }

  return result;
}

unint64_t sub_226C5D190()
{
  result = qword_27D7A8590;
  if (!qword_27D7A8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8590);
  }

  return result;
}

unint64_t sub_226C5D1E8()
{
  result = qword_27D7A8598;
  if (!qword_27D7A8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8598);
  }

  return result;
}

unint64_t sub_226C5D240()
{
  result = qword_27D7A85A0;
  if (!qword_27D7A85A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85A0);
  }

  return result;
}

unint64_t sub_226C5D298()
{
  result = qword_27D7A85A8;
  if (!qword_27D7A85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85A8);
  }

  return result;
}

unint64_t sub_226C5D2F0()
{
  result = qword_27D7A85B0;
  if (!qword_27D7A85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85B0);
  }

  return result;
}

unint64_t sub_226C5D348()
{
  result = qword_27D7A85B8;
  if (!qword_27D7A85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85B8);
  }

  return result;
}

unint64_t sub_226C5D3A0()
{
  result = qword_27D7A85C0;
  if (!qword_27D7A85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85C0);
  }

  return result;
}

unint64_t sub_226C5D3F8()
{
  result = qword_27D7A85C8;
  if (!qword_27D7A85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85C8);
  }

  return result;
}

unint64_t sub_226C5D450()
{
  result = qword_27D7A85D0;
  if (!qword_27D7A85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85D0);
  }

  return result;
}

unint64_t sub_226C5D4A8()
{
  result = qword_27D7A85D8;
  if (!qword_27D7A85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85D8);
  }

  return result;
}

unint64_t sub_226C5D500()
{
  result = qword_27D7A85E0;
  if (!qword_27D7A85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85E0);
  }

  return result;
}

unint64_t sub_226C5D558()
{
  result = qword_27D7A85E8;
  if (!qword_27D7A85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85E8);
  }

  return result;
}

unint64_t sub_226C5D5B0()
{
  result = qword_27D7A85F0;
  if (!qword_27D7A85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85F0);
  }

  return result;
}

unint64_t sub_226C5D608()
{
  result = qword_27D7A85F8;
  if (!qword_27D7A85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A85F8);
  }

  return result;
}

unint64_t sub_226C5D660()
{
  result = qword_27D7A8600;
  if (!qword_27D7A8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8600);
  }

  return result;
}

uint64_t BankConnectServiceImplementation.encrypt(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_226D6E23C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C5D7A8, 0, 0);
}

uint64_t sub_226C5D7A8()
{
  __swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
  sub_226D6BABC();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_226D6C3DC();
  v1 = sub_226D6A5EC();
  v3 = v2;
  (*(v0[10] + 8))();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v4 = v0[1];

  return v4(v1, v3);
}

uint64_t BankConnectServiceImplementation.decrypt(accountPaymentInformation:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_226D6E23C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C5D9E8, 0, 0);
}

uint64_t sub_226C5D9E8()
{
  __swift_project_boxed_opaque_existential_1((v0[9] + 16), *(v0[9] + 40));
  sub_226D6BABC();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_226D6C3DC();
  v1 = sub_226D6A5DC();
  (*(v0[11] + 8))(v0[12], v0[10]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v2 = v0[1];

  return v2(v1);
}

unint64_t sub_226C5DB48()
{
  result = qword_27D7A8608;
  if (!qword_27D7A8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8608);
  }

  return result;
}

uint64_t sub_226C5DB9C(char a1)
{
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_226D6CF0C();

  return v2;
}

unint64_t sub_226C5DCC0()
{
  result = qword_27D7A8610;
  if (!qword_27D7A8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8610);
  }

  return result;
}

uint64_t sub_226C5DD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_226D6B49C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C5DDEC, 0, 0);
}

uint64_t sub_226C5DDEC()
{
  v21 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5C0);

  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v18 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;

    sub_226D6B45C();
    sub_226C5E9E4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v8 = sub_226D6F1CC();
    v10 = v9;
    (*(v5 + 8))(v4, v18);
    v11 = sub_226AC4530(v8, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_226AB4000, v2, v3, "Starting delete pending order task for order %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  v19 = *(v0 + 24);
  v14 = sub_226D676AC();
  v15 = swift_task_alloc();
  *(v15 + 16) = v19;
  *(v15 + 32) = v13;
  *(v15 + 40) = v12;
  *(v15 + 48) = v14;
  sub_226D6EB7C();

  v16 = *(v0 + 8);

  return v16();
}

void sub_226C5E0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v38[1] = *MEMORY[0x277D85DE8];
  v37 = sub_226D6B49C();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  sub_226D6AF9C();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v35 = a1;
  sub_226D6B45C();
  v13 = v36;
  v14 = sub_226D6AF6C();
  v36 = v13;
  if (v13)
  {

    (*(v7 + 8))(v12, v37);
  }

  else
  {
    v15 = v14;
    v33 = v9;
    v34 = a5;
    v16 = *(v7 + 8);
    v17 = v37;
    v16(v12, v37);
    if (v15)
    {

      v18 = v34;
      [v34 deleteObject_];
      v38[0] = 0;
      if ([v18 save_])
      {
        v19 = v38[0];
      }

      else
      {
        v31 = v38[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      v34 = v16;
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v20 = sub_226D6E07C();
      __swift_project_value_buffer(v20, qword_28105F5C0);

      v21 = sub_226D6E05C();
      v22 = sub_226D6E9AC();

      v23 = os_log_type_enabled(v21, v22);
      v24 = v33;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v38[0] = v32;
        *v25 = 136315138;
        sub_226D6B45C();
        sub_226C5E9E4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
        v26 = sub_226D6F1CC();
        v28 = v27;
        v34(v24, v17);
        v29 = sub_226AC4530(v26, v28, v38);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_226AB4000, v21, v22, "Pending Apple Pay order %s not found", v25, 0xCu);
        v30 = v32;
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x22AA8BEE0](v30, -1, -1);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_226C5E4F0()
{

  sub_226D6B45C();
  type metadata accessor for OrderWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226C5E574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v0 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226D70840;

  sub_226D6B45C();
  swift_storeEnumTagMultiPayload();
  v3 = sub_226B1FBC0(v2);
  swift_setDeallocating();
  sub_226C5EA2C(v2 + v1);
  swift_deallocClassInstance();
  return v3;
}

uint64_t sub_226C5E6AC(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226C5DD24(a1, v4, v5, v7, v6);
}

uint64_t sub_226C5E768()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD00000000000002FLL, 0x8000000226D85670);
  MEMORY[0x22AA8A510](v1, v2);
  MEMORY[0x22AA8A510](0xD000000000000012, 0x8000000226D856A0);
  MEMORY[0x22AA8A510](v3, v4);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_226C5E838(uint64_t a1)
{
  result = sub_226C5E860();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226C5E860()
{
  result = qword_27D7A8618;
  if (!qword_27D7A8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8618);
  }

  return result;
}

unint64_t sub_226C5E944(uint64_t a1)
{
  result = sub_226C5E96C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226C5E96C()
{
  result = qword_27D7A8628;
  if (!qword_27D7A8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8628);
  }

  return result;
}

uint64_t sub_226C5E9E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226C5EA2C(uint64_t a1)
{
  v2 = type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_226C5EA88(uint64_t a1)
{
  v3 = v1;
  v111 = a1;
  v4 = sub_226D6B9BC();
  v5 = *(v4 - 8);
  v103 = v4;
  v104 = v5;
  MEMORY[0x28223BE20](v4);
  v102 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OfflineLabAccountInfo(0);
  v106 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v109 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v93 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v93 - v13;
  MEMORY[0x28223BE20](v15);
  v98 = &v93 - v16;
  v110 = sub_226D6D1AC();
  v113 = *(v110 - 1);
  MEMORY[0x28223BE20](v110);
  v107 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v108 = &v93 - v19;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v20 = sub_226D6E07C();
  v112 = __swift_project_value_buffer(v20, qword_28105F668);
  v21 = sub_226D6E05C();
  v22 = sub_226D6E9EC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_226AB4000, v21, v22, "Obtaining accounts to process...", v23, 2u);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
  }

  v24 = v3[6];
  v25 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v24);
  result = (*(v25 + 8))(v24, v25);
  if (!v2)
  {
    v27 = result;

    v28 = sub_226D6E05C();
    v29 = sub_226D6E9EC();

    v30 = os_log_type_enabled(v28, v29);
    v100 = v3;
    v101 = v11;
    v95 = v7;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = v27;
      v33 = swift_slowAlloc();
      v114 = v33;
      *v31 = 136315138;
      v34 = MEMORY[0x22AA8A6A0](v32, v7);
      v36 = sub_226AC4530(v34, v35, &v114);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_226AB4000, v28, v29, "Done obtaining accounts to process. Obtained: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v37 = v33;
      v27 = v32;
      MEMORY[0x22AA8BEE0](v37, -1, -1);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
    }

    v38 = v113;
    v39 = v27[2];
    v40 = v108;
    if (v39)
    {
      v94 = v27;
      v41 = *(v113 + 16);
      v42 = v110;
      v105 = (v113 + 16);
      *&v97 = v41;
      v41(v108, v111, v110);
      v43 = sub_226D6E05C();
      v44 = sub_226D6E9EC();
      v45 = os_log_type_enabled(v43, v44);
      v113 = v39;
      if (v45)
      {
        v46 = v40;
        v47 = swift_slowAlloc();
        v48 = v38;
        v96 = swift_slowAlloc();
        v114 = v96;
        *v47 = 136315138;
        sub_226C61CA4(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v49 = sub_226D6F1CC();
        v50 = v42;
        v52 = v51;
        (*(v48 + 8))(v46, v50);
        v53 = sub_226AC4530(v49, v52, &v114);

        *(v47 + 4) = v53;
        _os_log_impl(&dword_226AB4000, v43, v44, "Preparing to write to: %s", v47, 0xCu);
        v54 = v96;
        __swift_destroy_boxed_opaque_existential_0Tm(v96);
        MEMORY[0x22AA8BEE0](v54, -1, -1);
        MEMORY[0x22AA8BEE0](v47, -1, -1);
      }

      else
      {

        (*(v38 + 8))(v40, v42);
      }

      v58 = v100;
      v59 = [objc_opt_self() defaultManager];
      sub_226D6D16C();
      v60 = sub_226D6E36C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8640, &qword_226D79340);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_226D70840;
      v62 = *MEMORY[0x277CCA1B0];
      *(inited + 32) = *MEMORY[0x277CCA1B0];
      v63 = *MEMORY[0x277CCA1A0];
      type metadata accessor for FileProtectionType(0);
      *(inited + 64) = v64;
      *(inited + 40) = v63;
      v65 = v62;
      v66 = v63;
      sub_226B2357C(inited);
      swift_setDeallocating();
      sub_226AC47B0(inited + 32, &qword_27D7A6AF0, &qword_226D72608);
      type metadata accessor for FileAttributeKey(0);
      sub_226C61CA4(&qword_27D7A6390, type metadata accessor for FileAttributeKey, &unk_226D71128);
      v67 = sub_226D6E2AC();

      [v59 createFileAtPath:v60 contents:0 attributes:v67];

      sub_226C619A0();
      v68 = v107;
      (v97)(v107, v111, v110);
      v69 = sub_226C5FA3C(v68);
      v107 = v58[2];
      v96 = ((*(v106 + 80) + 32) & ~*(v106 + 80));
      v70 = v96 + v94;
      v71 = *(v106 + 72);
      v72 = v104++;
      v105 = (v72 + 2);
      v110 = MEMORY[0x277D84F90];
      *&v73 = 136315138;
      v97 = v73;
      v74 = v102;
      v75 = v103;
      v76 = v98;
      v99 = v14;
      v108 = v69;
      v106 = v71;
      do
      {
        sub_226C619EC(v70, v76);
        v77 = (*v105)(v74, v76, v75);
        MEMORY[0x28223BE20](v77);
        *(&v93 - 4) = v74;
        *(&v93 - 3) = v58;
        *(&v93 - 2) = v69;
        *(&v93 - 1) = v76;
        sub_226D6EB8C();
        (*v104)(v74, v75);
        sub_226C619EC(v76, v14);
        v78 = sub_226D6E05C();
        v79 = sub_226D6E9EC();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v114 = v81;
          *v80 = v97;
          v82 = &v14[*(v95 + 20)];
          v84 = *v82;
          v83 = v82[1];

          sub_226C61A70(v14);
          v85 = sub_226AC4530(v84, v83, &v114);
          v75 = v103;

          *(v80 + 4) = v85;
          v58 = v100;
          _os_log_impl(&dword_226AB4000, v78, v79, "Completed writing account: %s.", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v81);
          v86 = v81;
          v76 = v98;
          MEMORY[0x22AA8BEE0](v86, -1, -1);
          v87 = v80;
          v74 = v102;
          MEMORY[0x22AA8BEE0](v87, -1, -1);
        }

        else
        {

          sub_226C61A70(v14);
        }

        sub_226C619EC(v76, v109);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v88 = v110;
        }

        else
        {
          v88 = sub_226BBB6D0(0, v110[2] + 1, 1, v110);
        }

        v90 = v88[2];
        v89 = v88[3];
        if (v90 >= v89 >> 1)
        {
          v88 = sub_226BBB6D0((v89 > 1), v90 + 1, 1, v88);
        }

        v88[2] = v90 + 1;
        v110 = v88;
        v91 = v96 + v88 + v90 * v106;
        v92 = v106;
        sub_226B51660(v109, v91);
        sub_226C61A70(v76);
        v69 = v108;
        v70 += v92;
        --v113;
      }

      while (v113);

      sub_226C61678(v69);

      return v110;
    }

    else
    {

      v55 = sub_226D6E05C();
      v56 = sub_226D6E9EC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_226AB4000, v55, v56, "No accounts to write. Returning.", v57, 2u);
        MEMORY[0x22AA8BEE0](v57, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_226C5F77C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_226C5F7D8();
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_226C5F7D8()
{
  v0 = sub_226D6CC4C();
  MEMORY[0x28223BE20](v0);
  v1 = sub_226D6CC6C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6CCAC();
  swift_allocObject();
  v5 = sub_226D6CC9C();
  (*(v2 + 104))(v4, *MEMORY[0x277CC8778], v1);
  sub_226D6CC7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8668, &qword_226D79350);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  sub_226D6CC3C();
  v8[1] = v6;
  sub_226C61CA4(&qword_27D7A8670, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8678, &qword_226D79358);
  sub_226C61BEC();
  sub_226D6ED5C();
  sub_226D6CC5C();
  return v5;
}

id sub_226C5FA3C(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_226D6D0DC();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_226D6D1AC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_226D6D04C();

    swift_willThrow();
    v9 = sub_226D6D1AC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

void sub_226C5FB94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v12 = a2[2];
  v13 = sub_226D69D9C();
  if (!v4)
  {
    v31 = a2;
    v32 = a1;
    if (v13)
    {
      v30[2] = v11;
      v30[3] = v9;
      v30[4] = v12;
      v14 = v13;
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v15 = sub_226D6E07C();
      v16 = __swift_project_value_buffer(v15, qword_28105F668);
      v17 = v14;
      v30[0] = v16;
      v18 = sub_226D6E05C();
      v19 = sub_226D6E9EC();

      v20 = os_log_type_enabled(v18, v19);
      v30[1] = v8;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v34 = v22;
        *v21 = 136315138;
        v23 = sub_226D69DCC();
        v25 = sub_226AC4530(v23, v24, &v34);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_226AB4000, v18, v19, "Writing offline lab account data for: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x22AA8BEE0](v22, -1, -1);
        MEMORY[0x22AA8BEE0](v21, -1, -1);
      }

      v26 = v31;
      MEMORY[0x28223BE20](v27);
      v31 = v17;
      v30[-4] = v17;
      v30[-3] = v26;
      v30[-2] = a3;
      sub_226D6EB8C();
      v28 = type metadata accessor for OfflineLabAccountInfo(0);
      MEMORY[0x28223BE20](v28);
      v30[-4] = v29;
      v30[-3] = v32;
      v30[-2] = v26;
      v30[-1] = a3;
      sub_226D6EB8C();
    }
  }
}

void sub_226C60194(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v8 = sub_226D69E2C();
  if (!v2)
  {
    v9 = v8;
    sub_226D681FC();
    sub_226D6D46C();
    sub_226D681EC();
    (*(v5 + 8))(v7, v4);
    v12[0] = 0;
    if ([a2 save_])
    {
      v10 = v12[0];
    }

    else
    {
      v11 = v12[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

uint64_t sub_226C60344(void *a1, uint64_t a2, uint64_t a3)
{
  v33[1] = a3;
  v37 = a2;
  v4 = sub_226D6E3DC();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D68C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v40 = sub_226D6B9BC();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6859C();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v46 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D680EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = v33 - v15;
  v17 = a1;
  sub_226D69DBC();
  if (qword_27D7A5F88 != -1)
  {
    swift_once();
  }

  v18 = sub_226D4E14C(v16, qword_27D7B61F0);
  (*(v13 + 8))(v16, v12);
  if (v18)
  {
    sub_226D69D5C();
    sub_226D6B97C();
    (*(v7 + 8))(v9, v40);
    v19 = v17;
    sub_226D68C2C();
    sub_226D69DBC();
    v20 = v41;
    result = sub_226D6858C();
    if (!v20)
    {
      sub_226C5F77C();
      sub_226C61CA4(&qword_27D7A8690, MEMORY[0x277CC74F0], MEMORY[0x277CC74F8]);
      v22 = v39;
      v23 = sub_226D6CC8C();
      v25 = v24;

      v26 = v34;
      sub_226D6E3BC();
      v27 = sub_226D6E3AC();
      v29 = v28;
      result = (*(v35 + 8))(v26, v36);
      if (v29 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {
        *&v45 = v23;
        *(&v45 + 1) = v25;
        v43 = MEMORY[0x277CC9318];
        v44 = MEMORY[0x277CC9300];
        *&v42 = v27;
        *(&v42 + 1) = v29;
        v30 = __swift_project_boxed_opaque_existential_1(&v42, MEMORY[0x277CC9318]);
        v31 = *v30;
        v32 = v30[1];
        sub_226B11B44(v23, v25);
        sub_226B3FA64(v27, v29);
        sub_226B3F350(v31, v32, &v45);
        sub_226B3FAEC(v27, v29);
        __swift_destroy_boxed_opaque_existential_0Tm(&v42);
        v42 = v45;
        sub_226C61B28();
        sub_226D6E93C();
        sub_226B11B98(v23, v25);
        sub_226B11B98(v42, *(&v42 + 1));
        return (*(v38 + 8))(v46, v22);
      }
    }
  }

  else
  {
    sub_226C61C50();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

void sub_226C6089C(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v72 = a4;
  v80 = a3;
  v78 = a2;
  v83 = a1;
  v74 = sub_226D6E3DC();
  v81 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D684EC();
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_226D6855C();
  v71 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v85 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8650, &qword_226D79348);
  MEMORY[0x28223BE20](v8 - 8);
  v75 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6568, &qword_226D71560);
  MEMORY[0x28223BE20](v12 - 8);
  v82 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - v15;
  v17 = sub_226D6D4AC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  v22 = sub_226D6CD7C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6AC0C();
  v79 = sub_226D6AAFC();
  (*(v18 + 16))(v21, v83, v17);
  v26 = v23;
  sub_226D6D46C();
  v27 = v78;
  sub_226D6CD3C();
  (*(v23 + 16))(v16, v25, v22);
  v28 = *(v23 + 56);
  v64 = v22;
  v28(v16, 0, 1, v22);
  v29 = sub_226D6823C();
  v30 = v82;
  (*(*(v29 - 8) + 56))(v82, 1, 1, v29);
  v31 = MEMORY[0x22AA86C40](v27, 0, v16, v30);
  sub_226AC47B0(v30, &qword_27D7A6568, &qword_226D71560);
  sub_226AC47B0(v16, &qword_27D7A6558, &qword_226D7CCE0);
  v32 = v79;
  [v79 setPredicate_];

  v33 = v32;
  v34 = v84;
  v35 = sub_226D6EBBC();
  if (v34)
  {
    (*(v23 + 8))(v25, v64);
  }

  else
  {
    v36 = v35;
    v37 = v81;
    if (v35 >> 62)
    {
LABEL_21:
      v38 = sub_226D6EDFC();
    }

    else
    {
      v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v77;
    v40 = v71;
    if (v38)
    {
      v41 = 0;
      v71 = v36 & 0xC000000000000001;
      v63 = v36 & 0xFFFFFFFFFFFFFF8;
      v66 = (v37 + 8);
      v67 = (v40 + 8);
      v65 = v38;
      v70 = v26;
      v69 = v25;
      v68 = v36;
      while (1)
      {
        if (v71)
        {
          v42 = v41;
          v43 = MEMORY[0x22AA8AFD0](v41, v36);
        }

        else
        {
          if (v41 >= *(v63 + 16))
          {
            goto LABEL_20;
          }

          v42 = v41;
          v43 = *(v36 + 8 * v41 + 32);
        }

        v37 = v43;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v81 = v42 + 1;
        v82 = v42;
        v84 = 0;
        v44 = sub_226D6856C();
        v45 = *(*(v44 - 8) + 56);
        v45(v39, 1, 1, v44);
        v46 = sub_226D6AAEC();
        v47 = v75;
        if (v46)
        {
          sub_226D6857C();
          sub_226AC47B0(v39, &qword_27D7A8650, &qword_226D79348);
          v45(v47, 0, 1, v44);
          sub_226C61B7C(v47, v39);
        }

        sub_226D6B97C();
        v48 = v37;
        sub_226D6B9AC();
        v83 = v48;
        sub_226D684FC();
        sub_226AC40E8(v39, v47, &qword_27D7A8650, &qword_226D79348);
        v49 = v85;
        sub_226D6854C();
        sub_226C5F77C();
        sub_226C61CA4(&qword_27D7A8658, MEMORY[0x277CC74E0], MEMORY[0x277CC74E8]);
        v50 = v84;
        v51 = sub_226D6CC8C();
        if (v50)
        {

          (*v67)(v49, v90);
          sub_226AC47B0(v77, &qword_27D7A8650, &qword_226D79348);
          (*(v70 + 8))(v69, v64);
          return;
        }

        v53 = v51;
        v54 = v52;
        v37 = v72;

        v55 = v73;
        sub_226D6E3BC();
        v56 = sub_226D6E3AC();
        v58 = v57;
        (*v66)(v55, v74);
        if (v58 >> 60 == 15)
        {
          break;
        }

        *&v89 = v53;
        *(&v89 + 1) = v54;
        v87 = MEMORY[0x277CC9318];
        v88 = MEMORY[0x277CC9300];
        *&v86 = v56;
        *(&v86 + 1) = v58;
        v59 = __swift_project_boxed_opaque_existential_1(&v86, MEMORY[0x277CC9318]);
        v61 = *v59;
        v60 = v59[1];
        sub_226B11B44(v53, v54);
        sub_226B3FA64(v56, v58);
        sub_226B3F350(v61, v60, &v89);
        sub_226B3FAEC(v56, v58);
        __swift_destroy_boxed_opaque_existential_0Tm(&v86);
        v86 = v89;
        sub_226C61B28();
        sub_226D6E93C();
        sub_226B11B98(v53, v54);

        sub_226B11B98(v86, *(&v86 + 1));
        (*v67)(v85, v90);
        v39 = v77;
        sub_226AC47B0(v77, &qword_27D7A8650, &qword_226D79348);
        v41 = (v82 + 1);
        v33 = v79;
        v26 = v70;
        v25 = v69;
        v36 = v68;
        if (v81 == v65)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:

      (*(v26 + 8))(v25, v64);
    }
  }
}

uint64_t sub_226C612FC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_226C61368()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8638, &qword_226D79338);
  v0 = sub_226D680EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71190;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CC7158], v0);
  v6(v5 + v2, *MEMORY[0x277CC7170], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277CC7178], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277CC7168], v0);
  v7 = sub_226B1FF64(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27D7B61F0 = v7;
  return result;
}

uint64_t sub_226C614FC(void *a1, uint64_t a2)
{
  type metadata accessor for OfflineLabDataProvider();
  v4 = swift_allocObject();
  *(v4 + 64) = 0;
  sub_226AC40E8(a2, &v13, &qword_27D7A8698, &qword_226D79360);
  if (v14)
  {
    sub_226AC47B0(a2, &qword_27D7A8698, &qword_226D79360);
    sub_226AC484C(&v13, &v15);
  }

  else
  {
    v16 = &type metadata for OfflineLabAccountProvider;
    v17 = &off_283A726C0;
    v5 = swift_allocObject();
    *&v15 = v5;
    v5[5] = type metadata accessor for OfflineLabDefaultLogicProvider(0);
    v5[6] = &off_283A6E4A0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
    v7 = a1;
    sub_226C0639C(boxed_opaque_existential_1);
    v8 = sub_226D6B5EC();
    v9 = MEMORY[0x277CC7F68];
    v5[11] = v8;
    v5[12] = v9;
    __swift_allocate_boxed_opaque_existential_1(v5 + 8);
    sub_226D6B58C();
    sub_226AC47B0(a2, &qword_27D7A8698, &qword_226D79360);
    v5[7] = v7;
    v5[13] = v7;
    v10 = v14;
    v11 = v7;
    if (v10)
    {
      sub_226AC47B0(&v13, &qword_27D7A8698, &qword_226D79360);
    }
  }

  sub_226AC484C(&v15, v4 + 24);
  *(v4 + 16) = a1;
  return v4;
}

void sub_226C61678(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F668);
  v3 = a1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_226AC4530(0x6F74286574697277, 0xEA0000000000293ALL, v18);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_226AB4000, v4, v5, "Finished %s closing file handle: %@", v6, 0x16u);
    sub_226AC47B0(v7, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v18[0] = 0;
  if ([v3 closeAndReturnError_])
  {

    MEMORY[0x2821F9840]();
  }

  else
  {
    v10 = v18[0];
    v11 = sub_226D6D04C();

    swift_willThrow();
    v12 = v3;
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_226AB4000, v13, v14, "Unable to close fileHandle: %@", v15, 0xCu);
      sub_226AC47B0(v16, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }
  }
}

unint64_t sub_226C619A0()
{
  result = qword_27D7A8648;
  if (!qword_27D7A8648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A8648);
  }

  return result;
}

uint64_t sub_226C619EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLabAccountInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C61A70(uint64_t a1)
{
  v2 = type metadata accessor for OfflineLabAccountInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226C61B28()
{
  result = qword_27D7A8660;
  if (!qword_27D7A8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8660);
  }

  return result;
}

uint64_t sub_226C61B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8650, &qword_226D79348);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_226C61BEC()
{
  result = qword_27D7A8680;
  if (!qword_27D7A8680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8678, &qword_226D79358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8680);
  }

  return result;
}

unint64_t sub_226C61C50()
{
  result = qword_27D7A8688;
  if (!qword_27D7A8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8688);
  }

  return result;
}

uint64_t sub_226C61CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226C61D00()
{
  result = qword_27D7A86A0;
  if (!qword_27D7A86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A86A0);
  }

  return result;
}

uint64_t type metadata accessor for OrderWebServiceFetchChangesTask(uint64_t a1)
{
  result = qword_27D7A86A8;
  if (!qword_27D7A86A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226C61DC8(uint64_t a1)
{
  sub_226D6D1AC();
  if (v1 <= 0x3F)
  {
    sub_226BBB5E0();
    if (v2 <= 0x3F)
    {
      sub_226B20350(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_226C61E78()
{
  v1 = v0;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000029, 0x8000000226D857F0);
  ChangesTask = type metadata accessor for OrderWebServiceFetchChangesTask(0);
  MEMORY[0x22AA8A510](*(v1 + ChangesTask[6]), *(v1 + ChangesTask[6] + 8));
  MEMORY[0x22AA8A510](0xD000000000000013, 0x8000000226D85820);
  MEMORY[0x22AA8A510](*(v1 + ChangesTask[5]), *(v1 + ChangesTask[5] + 8));
  MEMORY[0x22AA8A510](0x6F4D7473616C202CLL, 0xEF3D646569666964);
  v3 = (v0 + ChangesTask[8]);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x3E656E6F6E3CLL;
  }

  MEMORY[0x22AA8A510](v4, v5);

  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226C645CC(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v6 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v6);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226C62040(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for OrderWebServiceFetchChangesTask(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C620E0, 0, 0);
}

uint64_t sub_226C620E0()
{
  v30 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C64548(v3, v2);
  sub_226C64548(v3, v1);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  v9 = v0[6];
  if (v7)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315394;
    v13 = (v9 + *(v10 + 24));
    v14 = *v13;
    v15 = v13[1];

    sub_226C64764(v9, type metadata accessor for OrderWebServiceFetchChangesTask);
    v16 = sub_226AC4530(v14, v15, &v29);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C645CC(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    sub_226C64764(v8, type metadata accessor for OrderWebServiceFetchChangesTask);
    v20 = sub_226AC4530(v17, v19, &v29);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v5, v6, "Attempting to fetch changes for order type %s from order web service at %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  else
  {

    sub_226C64764(v8, type metadata accessor for OrderWebServiceFetchChangesTask);
    sub_226C64764(v9, type metadata accessor for OrderWebServiceFetchChangesTask);
  }

  v21 = v0[3];
  v22 = sub_226C0B798(v21);
  v0[7] = v22;
  v23 = swift_task_alloc();
  v0[8] = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  v28 = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v24 = swift_task_alloc();
  v0[9] = v24;
  v25 = sub_226D6C21C();
  *v24 = v0;
  v24[1] = sub_226C6242C;
  v26 = v0[2];

  return v28(v26, &unk_226D79548, v23, v25);
}

uint64_t sub_226C6242C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_226C625C0;
  }

  else
  {

    v2 = sub_226C62548;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C62548()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C625C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C62648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6C0BC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C6270C, 0, 0);
}

uint64_t sub_226C6270C()
{
  type metadata accessor for OrderWebServiceFetchChangesTask(0);

  sub_226D6C0AC();
  v5 = (*MEMORY[0x277CC78F8] + MEMORY[0x277CC78F8]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_226B4BF14;
  v2 = v0[7];
  v3 = v0[2];

  return v5(v3, v2);
}

void sub_226C62838(uint64_t a1, void *a2)
{
  v3 = v2;
  v27[33] = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277CBE380]);
  v5 = sub_226D6E36C();
  v6 = [v4 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86E0, &unk_226D7AAB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D72130;
  v8 = MEMORY[0x277D837D0];
  sub_226D6EE8C();
  v9 = sub_226AE59B4(0, &unk_27D7A8C60, 0x277CCA9C0);
  v10 = sub_226D6E92C();
  *(inited + 96) = v9;
  *(inited + 72) = v10;
  sub_226D6EE8C();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 0;
  v27[0] = 0xD000000000000016;
  v27[1] = 0x8000000226D85790;
  sub_226D6EE8C();
  v11 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 240) = sub_226AE59B4(0, &qword_27D7A86E8, 0x277CBEB68);
  *(inited + 216) = v11;
  sub_226B229F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AB0, &unk_226D79520);
  swift_arrayDestroy();
  v12 = sub_226D6E2AC();

  [v6 setPropertiesToUpdate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D70840;
  v15 = (v3 + *(type metadata accessor for OrderWebServiceFetchChangesTask(0) + 24));
  v16 = *v15;
  v17 = v15[1];
  *(v14 + 56) = v8;
  *(v14 + 64) = sub_226B16404();
  *(v14 + 32) = v16;
  *(v14 + 40) = v17;

  *(v13 + 32) = sub_226D6E91C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_226D70840;
  *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  *(v18 + 64) = sub_226C64634();
  *(v18 + 32) = a1;

  *(v13 + 40) = sub_226D6E91C();
  v19 = sub_226D6E5CC();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v6 setPredicate_];
  v27[0] = 0;
  v21 = [a2 executeRequest:v6 error:v27];
  if (v21)
  {
    v22 = v21;
    v23 = v27[0];
  }

  else
  {
    v24 = v27[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226C62CE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6C21C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for OrderWebServiceFetchChangesTask(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C62DE8, 0, 0);
}

uint64_t sub_226C62DE8()
{
  v42 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = sub_226D6E07C();
  __swift_project_value_buffer(v8, qword_28105F5C0);
  sub_226C64548(v6, v2);
  sub_226C64548(v6, v1);
  (*(v4 + 16))(v3, v7, v5);
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9EC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  v13 = v0[10];
  if (v11)
  {
    v14 = v0[8];
    v15 = v0[6];
    v38 = v0[7];
    v39 = v0[5];
    v16 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41[0] = v40;
    *v16 = 136315650;
    v17 = (v13 + *(v14 + 24));
    v19 = *v17;
    v18 = v17[1];

    sub_226C64764(v13, type metadata accessor for OrderWebServiceFetchChangesTask);
    v20 = sub_226AC4530(v19, v18, v41);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C645CC(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v21 = sub_226D6F1CC();
    v23 = v22;
    sub_226C64764(v12, type metadata accessor for OrderWebServiceFetchChangesTask);
    v24 = sub_226AC4530(v21, v23, v41);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    sub_226D6C1FC();
    v25 = MEMORY[0x22AA8A6A0]();
    v27 = v26;

    (*(v15 + 8))(v38, v39);
    v28 = sub_226AC4530(v25, v27, v41);

    *(v16 + 24) = v28;
    _os_log_impl(&dword_226AB4000, v9, v10, "Successfully fetched changes for order type %s from order web service at %s. Order identifiers: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v40, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {
    v30 = v0[6];
    v29 = v0[7];
    v31 = v0[5];

    (*(v30 + 8))(v29, v31);
    sub_226C64764(v12, type metadata accessor for OrderWebServiceFetchChangesTask);
    sub_226C64764(v13, type metadata accessor for OrderWebServiceFetchChangesTask);
  }

  v32 = v0[4];
  v33 = v0[2];
  v34 = sub_226D676AC();
  v35 = swift_task_alloc();
  v35[2] = v32;
  v35[3] = v33;
  v35[4] = v34;
  sub_226D6EB8C();

  v36 = v0[1];

  return v36();
}

uint64_t sub_226C631D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_226D6C1FC();
  sub_226C62838(v5, a3);

  if (!v3)
  {
    MEMORY[0x28223BE20](result);
    return sub_226D6EB7C();
  }

  return result;
}

void sub_226C632A0(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a3;
  v40[1] = *MEMORY[0x277D85DE8];
  ChangesTask = type metadata accessor for OrderWebServiceFetchChangesTask(0);
  MEMORY[0x28223BE20](ChangesTask);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F6C();
  v15 = v39;
  v16 = sub_226D69F2C();
  if (!v15)
  {
    v36 = v11;
    v37 = v12;
    v39 = 0;
    if (v16)
    {
      v17 = v16;
      [v16 setFetchChangesSequenceNumber_];
      sub_226D6C20C();
      if (v18)
      {
        sub_226D6D46C();
        sub_226D69F4C();

        (*(v37 + 8))(v14, v36);
      }

      [v17 setRequestAttemptCount_];
      [v17 setLastRequestAttemptDate_];
      v40[0] = 0;
      if ([a2 save_])
      {
        v19 = v40[0];
      }

      else
      {
        v35 = v40[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v20 = sub_226D6E07C();
      __swift_project_value_buffer(v20, qword_28105F5C0);
      v21 = v10;
      sub_226C64548(a1, v10);
      sub_226C64548(a1, v7);
      v22 = sub_226D6E05C();
      v23 = sub_226D6E9AC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = v21;
        v26 = swift_slowAlloc();
        v40[0] = v26;
        *v24 = 136315394;
        v27 = (v25 + *(ChangesTask + 24));
        v28 = *v27;
        v29 = v27[1];

        sub_226C64764(v25, type metadata accessor for OrderWebServiceFetchChangesTask);
        v30 = sub_226AC4530(v28, v29, v40);

        *(v24 + 4) = v30;
        *(v24 + 12) = 2080;
        sub_226D6D1AC();
        sub_226C645CC(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v31 = sub_226D6F1CC();
        v33 = v32;
        sub_226C64764(v7, type metadata accessor for OrderWebServiceFetchChangesTask);
        v34 = sub_226AC4530(v31, v33, v40);

        *(v24 + 14) = v34;
        _os_log_impl(&dword_226AB4000, v22, v23, "OrderWebService for order type %s and %s doesn't exist", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v26, -1, -1);
        MEMORY[0x22AA8BEE0](v24, -1, -1);
      }

      else
      {

        sub_226C64764(v7, type metadata accessor for OrderWebServiceFetchChangesTask);
        sub_226C64764(v21, type metadata accessor for OrderWebServiceFetchChangesTask);
      }
    }
  }
}

uint64_t sub_226C63750(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for OrderWebServiceFetchChangesTask(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C637F4, 0, 0);
}

uint64_t sub_226C637F4()
{
  v41 = v0;
  v1 = *(v0 + 56);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v3 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v3;
  v4 = sub_226C778C0();
  v5 = sub_226C6DB80(v1);
  sub_226BA21B0(v4, v5);

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F5C0);
  sub_226C64548(v8, v7);
  sub_226C64548(v8, v6);
  v11 = v9;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9CC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  if (!v14)
  {

    sub_226C64764(v15, type metadata accessor for OrderWebServiceFetchChangesTask);
    sub_226C64764(v16, type metadata accessor for OrderWebServiceFetchChangesTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v17 = *(v0 + 80);
  v38 = *(v0 + 56);
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v40[0] = v39;
  *v18 = 136315650;
  v20 = (v16 + *(v17 + 24));
  v22 = *v20;
  v21 = v20[1];

  sub_226C64764(v16, type metadata accessor for OrderWebServiceFetchChangesTask);
  v23 = sub_226AC4530(v22, v21, v40);

  *(v18 + 4) = v23;
  *(v18 + 12) = 2080;
  sub_226D6D1AC();
  sub_226C645CC(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v24 = sub_226D6F1CC();
  v26 = v25;
  sub_226C64764(v15, type metadata accessor for OrderWebServiceFetchChangesTask);
  v27 = sub_226AC4530(v24, v26, v40);

  *(v18 + 14) = v27;
  *(v18 + 22) = 2112;
  v28 = v38;
  v29 = _swift_stdlib_bridgeErrorToNSError();
  *(v18 + 24) = v29;
  *v19 = v29;
  _os_log_impl(&dword_226AB4000, v12, v13, "Failed to fetch changes for order type %s from order web service at %s with error: %@", v18, 0x20u);
  sub_226B17298(v19);
  MEMORY[0x22AA8BEE0](v19, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x22AA8BEE0](v39, -1, -1);
  MEMORY[0x22AA8BEE0](v18, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v30 = *(v0 + 72);
    v31 = *(v0 + 56);
    v32 = sub_226D676AC();
    v33 = swift_task_alloc();
    v33[2] = v30;
    v33[3] = v32;
    v33[4] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
    sub_226D6EB7C();
    v34 = *(v0 + 64);
    v35 = *(v0 + 56);

    sub_226C6EB10(v35, *(v0 + 40), *(v0 + 48), v34 + 136);
  }

LABEL_8:

  v36 = *(v0 + 8);

  return v36();
}

void sub_226C63C60(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v46 = a4;
  v49[1] = *MEMORY[0x277D85DE8];
  ChangesTask = type metadata accessor for OrderWebServiceFetchChangesTask(0);
  MEMORY[0x28223BE20](ChangesTask);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_226D6D4AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F6C();
  v16 = v48;
  v17 = sub_226D69F2C();
  if (!v16)
  {
    v18 = v47;
    v43 = v12;
    v44 = v13;
    v45 = a2;
    v48 = 0;
    if (v17)
    {
      v11 = v17;
      v19 = v17;
      v20 = v11;
      sub_226C6E85C(v18, v11);

      v8 = &selRef_setSortDescriptors_;
      v21 = [v19 requestAttemptCount];
      if (!__OFADD__(v21, 1))
      {
        [v19 setRequestAttemptCount_];
        sub_226D6D46C();
        v22 = sub_226D6D3EC();
        (*(v44 + 8))(v15, v43);
        [v19 setLastRequestAttemptDate_];

        v49[0] = 0;
        if (![v45 save_])
        {
          v42 = v49[0];
          sub_226D6D04C();

          swift_willThrow();
          return;
        }

        v23 = v49[0];
        v24 = [v19 requestAttemptCount];

        v25 = v46;
        v26 = v20;
        goto LABEL_12;
      }

      __break(1u);
    }

    else
    {
      v47 = 0;
      if (qword_28105F5B8 == -1)
      {
LABEL_7:
        v27 = sub_226D6E07C();
        __swift_project_value_buffer(v27, qword_28105F5C0);
        sub_226C64548(a1, v11);
        v28 = v8;
        sub_226C64548(a1, v8);
        v29 = sub_226D6E05C();
        v30 = sub_226D6E9AC();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v49[0] = v32;
          *v31 = 136315394;
          v33 = &v11[*(ChangesTask + 24)];
          v34 = v11;
          v35 = *v33;
          v36 = v33[1];

          sub_226C64764(v34, type metadata accessor for OrderWebServiceFetchChangesTask);
          v37 = sub_226AC4530(v35, v36, v49);

          *(v31 + 4) = v37;
          *(v31 + 12) = 2080;
          sub_226D6D1AC();
          sub_226C645CC(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v38 = sub_226D6F1CC();
          v40 = v39;
          sub_226C64764(v28, type metadata accessor for OrderWebServiceFetchChangesTask);
          v41 = sub_226AC4530(v38, v40, v49);

          *(v31 + 14) = v41;
          _os_log_impl(&dword_226AB4000, v29, v30, "OrderWebService for order type %s and %s doesn't exist", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v32, -1, -1);
          MEMORY[0x22AA8BEE0](v31, -1, -1);
        }

        else
        {

          sub_226C64764(v8, type metadata accessor for OrderWebServiceFetchChangesTask);
          sub_226C64764(v11, type metadata accessor for OrderWebServiceFetchChangesTask);
        }

        v24 = 0;
        v25 = v46;
        v26 = v47;
LABEL_12:
        *v25 = v24;
        *(v25 + 8) = v26 == 0;
        return;
      }
    }

    swift_once();
    goto LABEL_7;
  }
}

double sub_226C64158@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
  v6 = (v2 + *(a1 + 24));
  v7 = v6[1];
  *a2 = *v6;
  *(a2 + 1) = v7;
  v8 = sub_226D6D1AC();
  (*(*(v8 - 8) + 16))(&a2[v5], v2, v8);
  type metadata accessor for OrderWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226C64214(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v3 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  v6 = (v5 + v4);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
  v8 = (v1 + *(a1 + 24));
  v9 = v8[1];
  *v6 = *v8;
  *(v6 + 1) = v9;
  v10 = sub_226D6D1AC();
  (*(*(v10 - 8) + 16))(&v6[v7], v1, v10);
  swift_storeEnumTagMultiPayload();

  v11 = sub_226B1FBC0(v5);
  swift_setDeallocating();
  sub_226C64764(v6, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v11;
}

uint64_t sub_226C643E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  *(a1 + 8) = sub_226C645CC(&qword_27D7A86C0, type metadata accessor for OrderWebServiceFetchChangesTask, &unk_226D794A0);
  result = sub_226C645CC(a4, type metadata accessor for OrderWebServiceFetchChangesTask, a5);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226C644F0(uint64_t a1)
{
  result = sub_226C645CC(&qword_27D7A86D8, type metadata accessor for OrderWebServiceFetchChangesTask, &unk_226D79440);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226C64548(uint64_t a1, uint64_t a2)
{
  ChangesTask = type metadata accessor for OrderWebServiceFetchChangesTask(0);
  (*(*(ChangesTask - 8) + 16))(a2, a1, ChangesTask);
  return a2;
}

uint64_t sub_226C645CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226C64634()
{
  result = qword_28105F520;
  if (!qword_28105F520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A5FC0, &unk_226D75DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F520);
  }

  return result;
}

uint64_t sub_226C646B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C62648(a1, v5, v4);
}

uint64_t sub_226C64764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C647C8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectNotificationEventsFetchTask(0);
  sub_226AF265C(v1 + *(Task + 32), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + *(Task + 28));
    v13 = v12 < 1;
    v14 = v12 - 1;
    if (!v13)
    {
      exp2(v14);
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    v11 = 0;
  }

  return (*(v7 + 56))(a1, v11, 1, v6);
}

unint64_t sub_226C649D4()
{
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000037;
}

uint64_t sub_226C64A54(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *(type metadata accessor for BankConnectNotificationEventsFetchTask(0) - 8);
  v2[16] = v3;
  v2[17] = *(v3 + 64);
  v2[18] = swift_task_alloc();
  v4 = sub_226D682FC();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v2[21] = *(v5 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C64B88, 0, 0);
}

uint64_t sub_226C64B88()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_226D676AC();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  sub_226D6EB8C();

  if (v0[13])
  {
    v7 = v0[14];

    __swift_project_boxed_opaque_existential_1(v7, v1[3]);
    sub_226D6BACC();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_226D6A63C();
    v10 = v0[14];

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    __swift_project_boxed_opaque_existential_1(v10, v1[3]);
    v11 = sub_226D682EC();
    v13 = v12;
    v0[24] = v12;
    v14 = swift_task_alloc();
    v0[25] = v14;
    v15 = sub_226B41FC0();
    *v14 = v0;
    v14[1] = sub_226C64E9C;

    return MEMORY[0x28211A3F8](v11, v13, &type metadata for BankConnectEnvironmentImplementation, v15);
  }

  else
  {
    v8 = sub_226D6B67C();
    sub_226C6BBAC(&qword_27D7A8710, MEMORY[0x277CC7FD0], MEMORY[0x277CC7FD8]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277CC7FC8], v8);
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_226C64E9C(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_226C64FBC, 0, 0);
}

uint64_t sub_226C64FBC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);
  (*(v2 + 16))(v1, *(v0 + 184), v5);
  sub_226C67704(v8, v4, type metadata accessor for BankConnectNotificationEventsFetchTask);
  sub_226AE532C(v9, v0 + 56);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = (v3 + *(v7 + 80) + v10) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v0 + 216) = v12;
  (*(v2 + 32))(v12 + v10, v1, v5);
  sub_226C67804(v4, v12 + v11);
  sub_226AC484C((v0 + 56), v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);
  v13 = swift_task_alloc();
  *(v0 + 224) = v13;
  *v13 = v0;
  v13[1] = sub_226C6517C;

  return v15();
}

uint64_t sub_226C6517C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_226C65360;
  }

  else
  {
    v2 = sub_226C652B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C652B0()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226C65360()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226C65408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_226D688DC();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_226D6D4AC();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_226D682FC();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = sub_226D6C90C();
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C655E0, 0, 0);
}

uint64_t sub_226C655E0()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[3];
  v5 = v0[4];
  (*(v0[12] + 16))(v0[13], v0[2], v0[11]);
  Task = type metadata accessor for BankConnectNotificationEventsFetchTask(0);
  (*(v4 + 16))(v2, v6 + *(Task + 20), v3);

  sub_226D6C8FC();
  v8 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_project_boxed_opaque_existential_1(v8 + 1, v8[4]);
  v9 = sub_226D6C2AC();
  v0[17] = v9;
  v10 = swift_task_alloc();
  v0[18] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_226C6576C;
  v12 = v0[7];
  v13 = v0[5];

  return MEMORY[0x282119B28](v12, &unk_226D79628, v10, v13);
}

uint64_t sub_226C6576C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_226C65BD8;
  }

  else
  {

    v2 = sub_226C65888;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C65888()
{
  v1 = v0[4];
  v2 = sub_226D688CC();
  v0[21] = v2;
  v3 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_226C6595C;
  v5 = v0[3];

  return sub_226C6A8D4(v2, v3, v5);
}

uint64_t sub_226C6595C(uint64_t a1)
{

  return MEMORY[0x2822009F8](sub_226C65A80, 0, 0);
}

uint64_t sub_226C65A80()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  v5 = sub_226D676AC();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  sub_226D6EB7C();

  (*(v2 + 8))(v1, v3);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226C65BD8()
{

  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226C65C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AD827C;

  return MEMORY[0x282119AF0](a1, a3);
}

void sub_226C65D4C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_226D6794C();
  v4 = sub_226D678BC();
  sub_226B2A4F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  v6 = *a1;
  v7 = a1[1];
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_226B16404();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;

  v8 = sub_226D6E91C();
  [v4 setPredicate_];

  v9 = sub_226D6EBBC();
  if (v2)
  {

    return;
  }

  if (v9 >> 62)
  {
    v16 = v9;
    v17 = sub_226D6EDFC();
    v9 = v16;
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_10:

    *a2 = 0;
    a2[1] = 0;
    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x22AA8AFD0](0);
    goto LABEL_8;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
LABEL_8:
    v11 = v10;

    v12 = [v11 consentID];

    v13 = sub_226D6E39C();
    v15 = v14;

    *a2 = v13;
    a2[1] = v15;
    return;
  }

  __break(1u);
}

uint64_t sub_226C65F48(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_226D6A30C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C6600C, 0, 0);
}

uint64_t sub_226C6600C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_226D6BACC();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_226D6865C();
  (*(v2 + 104))(v1, *MEMORY[0x277CC7B68], v3);
  type metadata accessor for BankConnectNotificationEventsFetchTask(0);
  sub_226D6A65C();
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226C6616C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6867C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C66230, 0, 0);
}

uint64_t sub_226C66230()
{
  v29 = v0;
  v1 = sub_226D6863C();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v7 = sub_226D676AC();
    v8 = swift_task_alloc();
    v8[2] = v3;
    v8[3] = v4;
    v8[4] = v6;
    v8[5] = v7;
    v8[6] = v5;
    sub_226D6EB7C();
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    v12 = *(v0 + 16);
    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F710);
    (*(v10 + 16))(v9, v12, v11);
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9CC();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
      v22 = sub_226D6F1CC();
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = sub_226AC4530(v22, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_226AB4000, v14, v15, "Failed to handle event %s. accountID is nil.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

void sub_226C66514(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v40 = a5;
  v42[1] = *MEMORY[0x277D85DE8];
  v9 = sub_226D6867C();
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  sub_226D6865C();
  v12 = v41;
  v13 = sub_226D69DAC();
  v41 = v12;
  if (v12)
  {
  }

  else
  {
    v14 = v13;
    v37 = a1;
    v38 = v11;
    v15 = v39;

    if (v14)
    {
      type metadata accessor for BankConnectNotificationEventsFetchTask(0);
      v16 = sub_226D6D3EC();
      [v14 setEarliestAccountRequestStartDate_];

      v17 = sub_226D6D3EC();
      [v14 setEarliestTransactionsRequestStartDate_];

      v42[0] = 0;
      if ([a4 save_])
      {
        v18 = v42[0];
      }

      else
      {
        v34 = v42[0];
        v35 = sub_226D6D04C();

        v41 = v35;
        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v19 = sub_226D6E07C();
      __swift_project_value_buffer(v19, qword_28105F710);
      v20 = v15;
      v21 = *(v15 + 16);
      v22 = v38;
      v21(v38, a3, v9);
      v23 = a2;

      v24 = sub_226D6E05C();
      v25 = sub_226D6E9CC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = v22;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42[0] = v28;
        *v27 = 136315394;
        sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
        v29 = sub_226D6F1CC();
        v40 = v23;
        v30 = v29;
        v32 = v31;
        (*(v20 + 8))(v26, v9);
        v33 = sub_226AC4530(v30, v32, v42);

        *(v27 + 4) = v33;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_226AC4530(v37, v40, v42);
        _os_log_impl(&dword_226AB4000, v24, v25, "Failed to handle event %s. Account with ID %s doesn't exist.", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v28, -1, -1);
        MEMORY[0x22AA8BEE0](v27, -1, -1);
      }

      else
      {

        (*(v20 + 8))(v22, v9);
      }
    }
  }
}

void sub_226C66928(void *a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectNotificationEventsFetchTask(0);
  MEMORY[0x28223BE20](Task);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226D6C5BC();
  v8 = sub_226D6C55C();
  if (!v2)
  {
    if (v8)
    {
      v9 = v8;
      [v8 setRequestAttemptCount_];
      [v9 setLastRequestAttemptDate_];
      [v9 setFetchSequenceNumber_];
      v10 = sub_226D6D3EC();
      [v9 setLastFetchedAt_];

      v21[0] = 0;
      if ([a2 save_])
      {
        v11 = v21[0];
      }

      else
      {
        v20 = v21[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v12 = sub_226D6E07C();
      __swift_project_value_buffer(v12, qword_28105F710);
      sub_226C67704(a1, v7, type metadata accessor for BankConnectNotificationEventsFetchTask);
      v13 = sub_226D6E05C();
      v14 = sub_226D6E9CC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21[0] = v16;
        *v15 = 136315138;
        v17 = *v7;
        v18 = v7[1];

        sub_226C6776C(v7, type metadata accessor for BankConnectNotificationEventsFetchTask);
        v19 = sub_226AC4530(v17, v18, v21);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_226AB4000, v13, v14, "Notification subscription with subscriptionID %s doesn't exist", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x22AA8BEE0](v16, -1, -1);
        MEMORY[0x22AA8BEE0](v15, -1, -1);
      }

      else
      {

        sub_226C6776C(v7, type metadata accessor for BankConnectNotificationEventsFetchTask);
      }
    }
  }
}

uint64_t sub_226C66C4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_226D66DFC();
  v3[6] = swift_task_alloc();
  type metadata accessor for BankConnectNotificationEventsFetchTask(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C66D10, 0, 0);
}

uint64_t sub_226C66D10()
{
  v25 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226C67704(v3, v2, type metadata accessor for BankConnectNotificationEventsFetchTask);
  sub_226C67704(v4, v1, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  if (!v8)
  {

    sub_226C6776C(v9, MEMORY[0x277CC6528]);
    sub_226C6776C(v10, type metadata accessor for BankConnectNotificationEventsFetchTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v24 = v13;
  *v11 = 136315394;
  v15 = *v10;
  v14 = v10[1];

  sub_226C6776C(v10, type metadata accessor for BankConnectNotificationEventsFetchTask);
  v16 = sub_226AC4530(v15, v14, &v24);

  *(v11 + 4) = v16;
  *(v11 + 12) = 2112;
  sub_226C6BBAC(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
  swift_allocError();
  sub_226C67704(v9, v17, MEMORY[0x277CC6528]);
  v18 = _swift_stdlib_bridgeErrorToNSError();
  sub_226C6776C(v9, MEMORY[0x277CC6528]);
  *(v11 + 14) = v18;
  *v12 = v18;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to fetch notification events with subscriptionID %s\nwith error: %@", v11, 0x16u);
  sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v19 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v20 = sub_226D676AC();
    v21 = swift_task_alloc();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    sub_226D6EB7C();
  }

LABEL_8:

  v22 = *(v0 + 8);

  return v22();
}

void sub_226C670D4(void *a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectNotificationEventsFetchTask(0);
  MEMORY[0x28223BE20](Task);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226D6C5BC();
  v8 = sub_226D6C55C();
  if (v2)
  {
    return;
  }

  v9 = v8;
  if (!v8)
  {
    if (qword_28105F708 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v10 = [v8 requestAttemptCount];
  if (__OFADD__(v10, 1))
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_8:
    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F710);
    sub_226C67704(a1, v7, type metadata accessor for BankConnectNotificationEventsFetchTask);
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9CC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      v18 = *v7;
      v19 = v7[1];

      sub_226C6776C(v7, type metadata accessor for BankConnectNotificationEventsFetchTask);
      v20 = sub_226AC4530(v18, v19, v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_226AB4000, v14, v15, "Notification subscription with subscriptionID %s doesn't exist", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    else
    {

      sub_226C6776C(v7, type metadata accessor for BankConnectNotificationEventsFetchTask);
    }

    return;
  }

  [v9 setRequestAttemptCount_];
  v11 = sub_226D6D3EC();
  [v9 setLastRequestAttemptDate_];

  v22[0] = 0;
  if ([a2 save_])
  {
    v12 = v22[0];
  }

  else
  {
    v21 = v22[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226C673E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226C64A54(a1);
}

uint64_t sub_226C67478(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226C66C4C(a1, a2);
}

double sub_226C6751C@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226C67608(uint64_t a1)
{
  result = sub_226C6BBAC(&qword_27D7A8700, type metadata accessor for BankConnectNotificationEventsFetchTask, &unk_226D79560);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectNotificationEventsFetchTask(uint64_t a1)
{
  result = qword_28105FD10;
  if (!qword_28105FD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226C676AC(uint64_t a1)
{
  result = sub_226C6BBAC(&qword_27D7A8708, type metadata accessor for BankConnectNotificationEventsFetchTask, &unk_226D795A4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226C67704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C6776C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C67804(uint64_t a1, uint64_t a2)
{
  Task = type metadata accessor for BankConnectNotificationEventsFetchTask(0);
  (*(*(Task - 8) + 32))(a2, a1, Task);
  return a2;
}

uint64_t sub_226C67868(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D682FC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BankConnectNotificationEventsFetchTask(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_226AE5A84;

  return sub_226C65408(a1, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_226C679D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C65C98(a1, v5, v4);
}

void sub_226C67A84(uint64_t *a1)
{
  v2 = *(sub_226D6867C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_226C694DC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_226C67B2C(v5);
  *a1 = v3;
}

void sub_226C67B2C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_226D6F1BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_226D6867C();
        v6 = sub_226D6E63C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_226D6867C() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_226C67FF8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_226C67C58(0, v2, 1, a1);
  }
}

void sub_226C67C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_226D6D4AC();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_226D6867C();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_226D6864C();
      v32 = v59;
      sub_226D6864C();
      v62 = sub_226D6D3FC();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_226C67FF8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_226D6D4AC();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_226D6867C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_226C69374(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_226C68BF8(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226C69374(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_226C692E8(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_226D6864C();
      v34 = v159;
      sub_226D6864C();
      LODWORD(v149) = sub_226D6D3FC();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_226D6864C();
        v46 = v159;
        sub_226D6864C();
        LOBYTE(v162) = sub_226D6D3FC() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_226BBB0C4(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_226BBB0C4((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_226C68BF8(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_226C69374(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_226C692E8(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_226D6864C();
    v120 = v159;
    sub_226D6864C();
    LODWORD(v162) = sub_226D6D3FC();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_226C68BF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_226D6D4AC();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_226D6867C();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_226D6864C();
            v48 = v66;
            sub_226D6864C();
            v68 = sub_226D6D3FC();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_226D6864C();
        v28 = v66;
        sub_226D6864C();
        v68 = sub_226D6D3FC();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_226C693B8(&v75, &v74, &v73, MEMORY[0x277CC7500]);
}

uint64_t sub_226C692E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_226C69374(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_226C693B8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_226C694F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v5 = sub_226D6873C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_226D6867C();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[5] = &type metadata for BankConnectEnvironmentImplementation;
  v3[6] = sub_226B6CA08();
  v7 = swift_allocObject();
  v3[2] = v7;
  sub_226B42014(a2, v7 + 16);

  return MEMORY[0x2822009F8](sub_226C69678, 0, 0);
}

uint64_t sub_226C69678()
{
  v49 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[7];
  v5 = sub_226D6E07C();
  v0[19] = __swift_project_value_buffer(v5, qword_28105F710);
  v6 = *(v2 + 16);
  v0[20] = v6;
  v0[21] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v13 = 136315138;
    sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
    v14 = sub_226D6F1CC();
    v46 = v6;
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_226AC4530(v14, v16, &v47);
    v6 = v46;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_226AB4000, v7, v8, "Handling notification event %s.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x22AA8BEE0](v45, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v0[22] = v18;
  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[9];
  sub_226D6866C();
  v24 = (*(v22 + 88))(v21, v23);
  if (v24 == *MEMORY[0x277CC7528])
  {
    v6(v0[17], v0[7], v0[12]);
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9CC();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[17];
    v29 = v0[12];
    if (v27)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47 = v31;
      *v30 = 136315138;
      sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
      v32 = sub_226D6F1CC();
      v33 = v18;
      v34 = v32;
      v36 = v35;
      v33(v28, v29);
      v37 = sub_226AC4530(v34, v36, &v47);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_226AB4000, v25, v26, "Unknown notification event %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
      MEMORY[0x22AA8BEE0](v30, -1, -1);
    }

    else
    {

      v18(v28, v29);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

    v41 = v0[1];

    return v41(0);
  }

  else if (v24 == *MEMORY[0x277CC7520])
  {
    v38 = swift_task_alloc();
    v0[23] = v38;
    *v38 = v0;
    v38[1] = sub_226C69CEC;
    v39 = v0[7];

    return sub_226C65F48(v39, (v0 + 2));
  }

  else if (v24 == *MEMORY[0x277CC7518])
  {
    v42 = swift_task_alloc();
    v0[25] = v42;
    *v42 = v0;
    v42[1] = sub_226C69E00;
    v43 = v0[7];

    return sub_226C6616C(v43, (v0 + 2));
  }

  else
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_226D6EEFC();

    v47 = 0xD00000000000001CLL;
    v48 = 0x8000000226D858A0;
    sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
    v44 = sub_226D6F1CC();
    MEMORY[0x22AA8A510](v44);

    return sub_226D6F0AC();
  }
}

uint64_t sub_226C69CEC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_226C6A144;
  }

  else
  {
    v2 = sub_226C69F14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C69E00()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_226C6A624;
  }

  else
  {
    v2 = sub_226C6A3F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C69F14()
{
  v17 = v0;
  (*(v0 + 160))(*(v0 + 128), *(v0 + 56), *(v0 + 96));
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 176);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  if (v3)
  {
    v15 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
    v9 = sub_226D6F1CC();
    v11 = v10;
    v15(v5, v6);
    v12 = sub_226AC4530(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_226AB4000, v1, v2, "Handled notification event %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {

    v4(v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v13 = *(v0 + 8);

  return v13(1);
}