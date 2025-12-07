unint64_t sub_1B76035C8()
{
  result = qword_1EB9994A8;
  if (!qword_1EB9994A8)
  {
    result = swift_getWitnessTable(byte_1B784ACA8, &type metadata for RecurringPayment.Payment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9994A8);
  }

  return result;
}

uint64_t sub_1B760363C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F8, &qword_1B784A8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10FinanceKit16RecurringPaymentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecurringPayment.Payment(0);
  v5 = *(v4 - 8);
  v97 = v4;
  v98 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F8, &qword_1B784A8C0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v89 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v89 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v89 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999588, &qword_1B784B368);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v95 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v89 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v89 - v27;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v93 = v12;
  v29 = v18;
  v30 = type metadata accessor for RecurringPayment(0);
  v31 = v30[5];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if ((v32 != *v34 || v33 != v34[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_48;
  }

  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v35 = v30[7];
  v36 = *(a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  if ((v36 != *v38 || v37 != v38[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_48;
  }

  v39 = v30[8];
  *&v110[0] = *(a1 + v39);
  *(v110 + 7) = *(a1 + v39 + 7);
  v40 = (a2 + v39);
  *&v109[0] = *v40;
  *(v109 + 7) = *(v40 + 7);
  if (!_s10FinanceKit16RecurringPaymentV19FrequencyComponentsV2eeoiySbAE_AEtFZ_0(v110, v109))
  {
    goto LABEL_48;
  }

  v41 = v30[9];
  v42 = *(a1 + v41);
  v43 = *(a2 + v41);
  if (v42 == 6)
  {
    if (v43 != 6)
    {
      goto LABEL_48;
    }
  }

  else if (v42 != v43)
  {
    goto LABEL_48;
  }

  v44 = v30[10];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v46 == 2 || ((v46 ^ v45) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (*(a1 + v30[11]) == *(a2 + v30[11]))
  {
    v91 = v30;
    v47 = v30[12];
    v89 = v29;
    v48 = *(v29 + 48);
    sub_1B760363C(a1 + v47, v28);
    v92 = v48;
    sub_1B760363C(a2 + v47, &v28[v48]);
    v49 = *(v98 + 48);
    v50 = v98 + 48;
    v51 = v49(v28, 1, v97);
    v98 = v50;
    v90 = v49;
    if (v51 == 1)
    {
      if (v49(&v28[v92], 1, v97) == 1)
      {
        sub_1B7205418(v28, &qword_1EB9923F8, &qword_1B784A8C0);
        goto LABEL_27;
      }
    }

    else
    {
      sub_1B760363C(v28, v17);
      if (v49(&v28[v92], 1, v97) != 1)
      {
        v53 = v96;
        sub_1B7605224(&v28[v92], v96);
        v54 = _s10FinanceKit16RecurringPaymentV0D0V2eeoiySbAE_AEtFZ_0(v17, v53);
        sub_1B76043C4(v53, type metadata accessor for RecurringPayment.Payment);
        sub_1B76043C4(v17, type metadata accessor for RecurringPayment.Payment);
        sub_1B7205418(v28, &qword_1EB9923F8, &qword_1B784A8C0);
        if ((v54 & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_27:
        v55 = v91[13];
        v56 = v89;
        v57 = *(v89 + 48);
        sub_1B760363C(a1 + v55, v26);
        v92 = v57;
        sub_1B760363C(a2 + v55, &v26[v57]);
        v58 = v97;
        v59 = v90;
        if (v90(v26, 1, v97) == 1)
        {
          if (v59(&v26[v92], 1, v58) == 1)
          {
            sub_1B7205418(v26, &qword_1EB9923F8, &qword_1B784A8C0);
LABEL_34:
            v62 = v91[14];
            v63 = *(v56 + 48);
            sub_1B760363C(a1 + v62, v23);
            sub_1B760363C(a2 + v62, &v23[v63]);
            v64 = v90;
            if (v90(v23, 1, v58) == 1)
            {
              if (v64(&v23[v63], 1, v58) == 1)
              {
                sub_1B7205418(v23, &qword_1EB9923F8, &qword_1B784A8C0);
LABEL_41:
                v67 = v91[15];
                v68 = *(v56 + 48);
                v69 = v95;
                sub_1B760363C(a1 + v67, v95);
                sub_1B760363C(a2 + v67, v69 + v68);
                if (v64(v69, 1, v58) == 1)
                {
                  if (v64(v69 + v68, 1, v58) == 1)
                  {
                    sub_1B7205418(v69, &qword_1EB9923F8, &qword_1B784A8C0);
LABEL_51:
                    v75 = v91[16];
                    v76 = *(a1 + v75 + 16);
                    v107[0] = *(a1 + v75);
                    v107[1] = v76;
                    v77 = *(a1 + v75 + 48);
                    v79 = *(a1 + v75);
                    v78 = *(a1 + v75 + 16);
                    v107[2] = *(a1 + v75 + 32);
                    v107[3] = v77;
                    v103 = v79;
                    v104 = v78;
                    v80 = *(a1 + v75 + 48);
                    v105 = *(a1 + v75 + 32);
                    v106 = v80;
                    v81 = (a2 + v75);
                    v82 = *v81;
                    v83 = v81[1];
                    v84 = v81[3];
                    v108[2] = v81[2];
                    v108[3] = v84;
                    v85 = v81[1];
                    v86 = v81[2];
                    v87 = *v81;
                    v108[0] = v82;
                    v108[1] = v85;
                    v99 = v87;
                    v100 = v83;
                    v88 = v81[3];
                    v101 = v86;
                    v102 = v88;
                    v71 = _s10FinanceKit14MandateDetailsV2eeoiySbAC_ACtFZ_0(&v103, &v99);
                    v109[0] = v99;
                    v109[1] = v100;
                    v109[2] = v101;
                    v109[3] = v102;
                    sub_1B72D1A90(v107, v110);
                    sub_1B72D1A90(v108, v110);
                    sub_1B72D1AC8(v109);
                    v110[0] = v103;
                    v110[1] = v104;
                    v110[2] = v105;
                    v110[3] = v106;
                    sub_1B72D1AC8(v110);
                    return v71 & 1;
                  }

                  goto LABEL_46;
                }

                v70 = v94;
                sub_1B760363C(v69, v94);
                if (v64(v69 + v68, 1, v58) == 1)
                {
                  sub_1B76043C4(v70, type metadata accessor for RecurringPayment.Payment);
LABEL_46:
                  v52 = v69;
                  goto LABEL_47;
                }

                v73 = v96;
                sub_1B7605224(v69 + v68, v96);
                v74 = _s10FinanceKit16RecurringPaymentV0D0V2eeoiySbAE_AEtFZ_0(v70, v73);
                sub_1B76043C4(v73, type metadata accessor for RecurringPayment.Payment);
                sub_1B76043C4(v70, type metadata accessor for RecurringPayment.Payment);
                sub_1B7205418(v69, &qword_1EB9923F8, &qword_1B784A8C0);
                if (v74)
                {
                  goto LABEL_51;
                }

                goto LABEL_48;
              }
            }

            else
            {
              v65 = v93;
              sub_1B760363C(v23, v93);
              if (v64(&v23[v63], 1, v58) != 1)
              {
                v66 = v96;
                sub_1B7605224(&v23[v63], v96);
                LODWORD(v97) = _s10FinanceKit16RecurringPaymentV0D0V2eeoiySbAE_AEtFZ_0(v65, v66);
                sub_1B76043C4(v66, type metadata accessor for RecurringPayment.Payment);
                sub_1B76043C4(v65, type metadata accessor for RecurringPayment.Payment);
                sub_1B7205418(v23, &qword_1EB9923F8, &qword_1B784A8C0);
                if ((v97 & 1) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_41;
              }

              sub_1B76043C4(v65, type metadata accessor for RecurringPayment.Payment);
            }

            v52 = v23;
LABEL_47:
            sub_1B7205418(v52, &qword_1EB999588, &qword_1B784B368);
            goto LABEL_48;
          }
        }

        else
        {
          sub_1B760363C(v26, v15);
          if (v59(&v26[v92], 1, v58) != 1)
          {
            v60 = v96;
            sub_1B7605224(&v26[v92], v96);
            v61 = _s10FinanceKit16RecurringPaymentV0D0V2eeoiySbAE_AEtFZ_0(v15, v60);
            sub_1B76043C4(v60, type metadata accessor for RecurringPayment.Payment);
            v58 = v97;
            sub_1B76043C4(v15, type metadata accessor for RecurringPayment.Payment);
            sub_1B7205418(v26, &qword_1EB9923F8, &qword_1B784A8C0);
            if ((v61 & 1) == 0)
            {
              goto LABEL_48;
            }

            goto LABEL_34;
          }

          sub_1B76043C4(v15, type metadata accessor for RecurringPayment.Payment);
        }

        v52 = v26;
        goto LABEL_47;
      }

      sub_1B76043C4(v17, type metadata accessor for RecurringPayment.Payment);
    }

    v52 = v28;
    goto LABEL_47;
  }

LABEL_48:
  v71 = 0;
  return v71 & 1;
}

unint64_t sub_1B7604068()
{
  result = qword_1EB9994C0;
  if (!qword_1EB9994C0)
  {
    result = swift_getWitnessTable(aA_30, &type metadata for RecurringPayment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9994C0);
  }

  return result;
}

unint64_t sub_1B76040BC()
{
  result = qword_1EB9994C8;
  if (!qword_1EB9994C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecurringPayment.FrequencyComponents, &type metadata for RecurringPayment.FrequencyComponents, v0, v1);
    atomic_store(result, &qword_1EB9994C8);
  }

  return result;
}

unint64_t sub_1B7604110()
{
  result = qword_1EB9994D0;
  if (!qword_1EB9994D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecurringPayment.Status, &type metadata for RecurringPayment.Status, v0, v1);
    atomic_store(result, &qword_1EB9994D0);
  }

  return result;
}

unint64_t sub_1B7604164()
{
  result = qword_1EB9994D8;
  if (!qword_1EB9994D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PaymentSchedulingType, &type metadata for PaymentSchedulingType, v0, v1);
    atomic_store(result, &qword_1EB9994D8);
  }

  return result;
}

unint64_t sub_1B76041B8()
{
  result = qword_1EB9994E8;
  if (!qword_1EB9994E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MandateDetails, &type metadata for MandateDetails, v0, v1);
    atomic_store(result, &qword_1EB9994E8);
  }

  return result;
}

unint64_t sub_1B760420C()
{
  result = qword_1EB9994F8;
  if (!qword_1EB9994F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecurringPayment.FrequencyComponents, &type metadata for RecurringPayment.FrequencyComponents, v0, v1);
    atomic_store(result, &qword_1EB9994F8);
  }

  return result;
}

unint64_t sub_1B7604260()
{
  result = qword_1EB999500;
  if (!qword_1EB999500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecurringPayment.Status, &type metadata for RecurringPayment.Status, v0, v1);
    atomic_store(result, &qword_1EB999500);
  }

  return result;
}

unint64_t sub_1B76042B4()
{
  result = qword_1EB999508;
  if (!qword_1EB999508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PaymentSchedulingType, &type metadata for PaymentSchedulingType, v0, v1);
    atomic_store(result, &qword_1EB999508);
  }

  return result;
}

unint64_t sub_1B7604308()
{
  result = qword_1EB999518;
  if (!qword_1EB999518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MandateDetails, &type metadata for MandateDetails, v0, v1);
    atomic_store(result, &qword_1EB999518);
  }

  return result;
}

uint64_t sub_1B760435C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B76043C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t _s10FinanceKit36ManagedRecurringPreauthorizedPaymentC14mappedKeyPathsSDys03AnyH4PathCSSGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8, &qword_1B7809FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B784A8A0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 25705;
  *(inited + 48) = 0xE200000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000024;
  *(inited + 72) = 0x80000001B78869B0;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x80000001B78802B0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6156737574617473;
  *(inited + 120) = 0xEB0000000065756CLL;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6156737574617473;
  *(inited + 144) = 0xEB0000000065756CLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x80000001B78802D0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000013;
  *(inited + 192) = 0x80000001B78802D0;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000012;
  *(inited + 216) = 0x80000001B78802F0;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x4E657461646E616DLL;
  *(inited + 240) = 0xEB00000000656D61;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "mandateReason");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000001B7878C10;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x4365736F70727570;
  *(inited + 312) = 0xEB0000000065646FLL;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x6261697261567369;
  *(inited + 336) = 0xEA0000000000656CLL;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000014;
  *(inited + 360) = 0x80000001B787A070;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000013;
  *(inited + 384) = 0x80000001B787A0C0;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000017;
  *(inited + 408) = 0x80000001B787A170;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000019;
  *(inited + 432) = 0x80000001B787A110;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000010;
  *(inited + 456) = 0x80000001B787A050;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x756F6D417473616CLL;
  *(inited + 480) = 0xEF65756C6156746ELL;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000013;
  *(inited + 504) = 0x80000001B787A150;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000015;
  *(inited + 528) = 0x80000001B787A0F0;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000010;
  *(inited + 552) = 0x80000001B787A050;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0x756F6D417473616CLL;
  *(inited + 576) = 0xEF65756C6156746ELL;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000013;
  *(inited + 600) = 0x80000001B787A150;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000015;
  *(inited + 624) = 0x80000001B787A0F0;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000010;
  *(inited + 648) = 0x80000001B787A090;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0x6D7961507473616CLL;
  *(inited + 672) = 0xEF65746144746E65;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0xD000000000000013;
  *(inited + 696) = 0x80000001B787A190;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0xD000000000000015;
  *(inited + 720) = 0x80000001B787A130;
  v1 = sub_1B7202424(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBC0, &qword_1B780D3E0);
  swift_arrayDestroy();
  return v1;
}

void sub_1B7604990(uint64_t a1)
{
  sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EB999530, &type metadata for RecurringPayment.Status);
    if (v2 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EB999538, &type metadata for PaymentSchedulingType);
      if (v3 <= 0x3F)
      {
        sub_1B7604A9C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7604A9C(uint64_t a1)
{
  if (!qword_1EB999540)
  {
    type metadata accessor for RecurringPayment.Payment(255);
    v1 = sub_1B7801768();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB999540);
    }
  }
}

void sub_1B7604B1C(uint64_t a1)
{
  sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, qword_1EDAFCF10, &type metadata for CurrencyAmount);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B7604BD4()
{
  result = qword_1EB999558;
  if (!qword_1EB999558)
  {
    result = swift_getWitnessTable(byte_1B784AB78, &type metadata for RecurringPayment.Payment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999558);
  }

  return result;
}

unint64_t sub_1B7604C2C()
{
  result = qword_1EB999560;
  if (!qword_1EB999560)
  {
    result = swift_getWitnessTable(byte_1B784AC30, &type metadata for RecurringPayment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999560);
  }

  return result;
}

unint64_t sub_1B7604C84()
{
  result = qword_1EB999568;
  if (!qword_1EB999568)
  {
    result = swift_getWitnessTable(aQ_33, &type metadata for RecurringPayment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999568);
  }

  return result;
}

unint64_t sub_1B7604CDC()
{
  result = qword_1EB999570;
  if (!qword_1EB999570)
  {
    result = swift_getWitnessTable(aI_36, &type metadata for RecurringPayment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999570);
  }

  return result;
}

unint64_t sub_1B7604D34()
{
  result = qword_1EB999578;
  if (!qword_1EB999578)
  {
    result = swift_getWitnessTable(asc_1B784AAE8, &type metadata for RecurringPayment.Payment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999578);
  }

  return result;
}

unint64_t sub_1B7604D8C()
{
  result = qword_1EB999580;
  if (!qword_1EB999580)
  {
    result = swift_getWitnessTable(asc_1B784AB10, &type metadata for RecurringPayment.Payment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999580);
  }

  return result;
}

uint64_t sub_1B7604DE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78802B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C756465686373 && a2 == 0xEE0065707954676ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6261697261567369 && a2 == 0xEA0000000000656CLL || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7961507473726966 && a2 == 0xEC000000746E656DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D7961507473616CLL && a2 == 0xEB00000000746E65 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7886990 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x676E696D6F637075 && a2 == 0xEF746E656D796150 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x44657461646E616DLL && a2 == 0xEE00736C69617465)
  {

    return 12;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1B7605224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecurringPayment.Payment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B76052B8(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1B7800838();

  return v3;
}

id sub_1B7605314()
{
  v1 = &v0[OBJC_IVAR___FKBankConnectOfflineLabConsentCoordinator_bankConnectService];
  if (qword_1EDAF9CD8 != -1)
  {
    swift_once();
  }

  v2 = off_1EDAF9CE0;
  *(v1 + 3) = type metadata accessor for BankConnectService();
  *(v1 + 4) = &protocol witness table for BankConnectService;
  *v1 = v2;
  v3 = OBJC_IVAR___FKBankConnectOfflineLabConsentCoordinator_localizedTitle;
  v4 = qword_1EDAF93A8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = &v0[v3];
  v6 = qword_1EDAF93B0;
  v7 = sub_1B7800838();
  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_1B7800868();
  v13 = v12;

  *v5 = v11;
  v5[1] = v13;
  v14 = &v0[OBJC_IVAR___FKBankConnectOfflineLabConsentCoordinator_localizedSubtitle];
  v15 = sub_1B7800838();
  v16 = sub_1B7800838();
  v17 = sub_1B7800838();
  v18 = [v6 localizedStringForKey:v15 value:v16 table:v17];

  v19 = sub_1B7800868();
  v21 = v20;

  *v14 = v19;
  v14[1] = v21;
  v22 = &v0[OBJC_IVAR___FKBankConnectOfflineLabConsentCoordinator_localizedOptInButtonTitle];
  v23 = sub_1B7800838();
  v24 = sub_1B7800838();
  v25 = sub_1B7800838();
  v26 = [v6 localizedStringForKey:v23 value:v24 table:v25];

  v27 = sub_1B7800868();
  v29 = v28;

  *v22 = v27;
  v22[1] = v29;
  v30 = &v0[OBJC_IVAR___FKBankConnectOfflineLabConsentCoordinator_localizedOptOutButtonTitle];
  v31 = sub_1B7800838();
  v32 = sub_1B7800838();
  v33 = sub_1B7800838();
  v34 = [v6 localizedStringForKey:v31 value:v32 table:v33];

  v35 = sub_1B7800868();
  v37 = v36;

  *v30 = v35;
  v30[1] = v37;
  v39.receiver = v0;
  v39.super_class = FKBankConnectOfflineLabConsentCoordinator;
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t sub_1B76056BC()
{
  v8 = v0;
  static DeviceInfo.deviceType.getter(&v7);
  if (v7)
  {
    v1 = v0[1];

    return v1(0);
  }

  else
  {
    sub_1B719B06C(v0[7] + OBJC_IVAR___FKBankConnectOfflineLabConsentCoordinator_bankConnectService, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v6 = (*(v4 + 16) + **(v4 + 16));
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1B7605848;

    return v6(v0 + 10, v3, v4);
  }
}

uint64_t sub_1B7605848()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B76059D4;
  }

  else
  {
    v2 = sub_1B760595C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B760595C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 81);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3 | v1);
}

uint64_t sub_1B76059D4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1B78000B8();
  __swift_project_value_buffer(v2, qword_1EDAF65B0);
  v3 = v1;
  v4 = sub_1B7800098();
  v5 = sub_1B78011D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7198000, v4, v5, "Failed to load offline lab preference. Error: %@", v8, 0xCu);
    sub_1B726B694(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1B7605CE8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B7605D90;

  return sub_1B760569C();
}

uint64_t sub_1B7605D90(unsigned int a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    v7[2](v7, a1 & 1, (a1 >> 8) & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_1B7605EF0(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7605F14, 0, 0);
}

uint64_t sub_1B7605F14()
{
  sub_1B719B06C(*(v0 + 56) + OBJC_IVAR___FKBankConnectOfflineLabConsentCoordinator_bankConnectService, v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v6 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1B7606058;
  v4 = *(v0 + 80);

  return v6(v4, v1, v2);
}

uint64_t sub_1B7606058()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B76061D0;
  }

  else
  {
    v2 = sub_1B760616C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B760616C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B76061D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1B78000B8();
  __swift_project_value_buffer(v2, qword_1EDAF65B0);
  v3 = v1;
  v4 = sub_1B7800098();
  v5 = sub_1B78011D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7198000, v4, v5, "Failed to set offline lab preference. Error: %@", v8, 0xCu);
    sub_1B726B694(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B76064F4(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1B76065B0;

  return sub_1B7605EF0(a1);
}

uint64_t sub_1B76065B0()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    if (v3)
    {
      v6 = *(v2 + 24);
      v7 = sub_1B77FF308();

      (v6)[2](v6, v7);
      _Block_release(v6);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v8 = *(v2 + 24);
    v8[2](v8, 0);
    _Block_release(v8);
  }

  v9 = *(v5 + 8);

  return v9();
}

uint64_t sub_1B760676C()
{
  v8 = v0;
  static DeviceInfo.deviceType.getter(&v7);
  if (v7)
  {
    v1 = v0[1];

    return v1(1);
  }

  else
  {
    sub_1B719B06C(v0[7] + OBJC_IVAR___FKBankConnectOfflineLabConsentCoordinator_bankConnectService, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v6 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1B76068F8;

    return v6(v0 + 10, v3, v4);
  }
}

uint64_t sub_1B76068F8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B7606A7C;
  }

  else
  {
    v2 = sub_1B7606A0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7606A0C()
{
  v1 = 2 - *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B7606A7C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1B78000B8();
  __swift_project_value_buffer(v2, qword_1EDAF65B0);
  v3 = v1;
  v4 = sub_1B7800098();
  v5 = sub_1B78011D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7198000, v4, v5, "Failed to obtain lab permission. Error: %@", v8, 0xCu);
    sub_1B726B694(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(1);
}

uint64_t sub_1B7606D90(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B7606E38;

  return sub_1B760674C();
}

uint64_t sub_1B7606E38(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    v7[2](v7, a1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

unint64_t type metadata accessor for FKBankConnectOfflineLabConsentCoordinator()
{
  result = qword_1EB9995B8;
  if (!qword_1EB9995B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB9995B8);
  }

  return result;
}

uint64_t sub_1B76070AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B723838C;

  return sub_1B7606D90(v2, v3);
}

uint64_t sub_1B7607158()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B723838C;

  return sub_1B76064F4(v2, v4, v3);
}

uint64_t objectdestroyTm_6()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B760724C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B723838C;

  return sub_1B7605CE8(v2, v3);
}

FinanceKit::ManagedExtractedOrderShippingFulfillment::Status_optional ManagedExtractedOrderShippingFulfillment.status.getter@<W0>(_BYTE *a1@<X8>)
{
  result.value = ManagedExtractedOrderShippingFulfillment.Status.init(rawValue:)([v1 statusValue]).value;
  v4 = v5;
  if (v5 == 10)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void ManagedExtractedOrderShippingFulfillment.shippingDate.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 shippingDateYear];
  v5 = v4;
  if (v4)
  {
    v22 = [v4 integerValue];
  }

  else
  {
    v22 = 0;
  }

  v6 = [v1 shippingDateMonth];
  v7 = v6;
  if (v6)
  {
    v21 = [v6 integerValue];
  }

  else
  {
    v21 = 0;
  }

  v8 = [v1 shippingDateDay];
  v9 = v8;
  if (v8)
  {
    v20 = [v8 integerValue];
  }

  else
  {
    v20 = 0;
  }

  v10 = [v1 shippingTimeHours];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 integerValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v1 shippingTimeMinutes];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 integerValue];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v2 shippingTimeSeconds];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 integerValue];

    if (!v5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v18 = 0;
    if (!v5)
    {
LABEL_28:
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      v19 = -2;
LABEL_29:
      *(a1 + 48) = v19;
      return;
    }
  }

  if (!v7 || !v9)
  {
    goto LABEL_28;
  }

  if (v11 && v14)
  {
    if (v17)
    {
      v19 = 0x80;
    }

    else
    {
      v19 = -127;
    }

    *a1 = v22;
    *(a1 + 8) = v21;
    *(a1 + 16) = v20;
    *(a1 + 24) = v12;
    *(a1 + 32) = v15;
    *(a1 + 40) = v18;
    goto LABEL_29;
  }

  *a1 = v22;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void ManagedExtractedOrderShippingFulfillment.deliveryDate.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 deliveryDateYear];
  v5 = v4;
  if (v4)
  {
    v22 = [v4 integerValue];
  }

  else
  {
    v22 = 0;
  }

  v6 = [v1 deliveryDateMonth];
  v7 = v6;
  if (v6)
  {
    v21 = [v6 integerValue];
  }

  else
  {
    v21 = 0;
  }

  v8 = [v1 deliveryDateDay];
  v9 = v8;
  if (v8)
  {
    v20 = [v8 integerValue];
  }

  else
  {
    v20 = 0;
  }

  v10 = [v1 deliveryTimeHours];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 integerValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v1 deliveryTimeMinutes];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 integerValue];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v2 deliveryTimeSeconds];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 integerValue];

    if (!v5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v18 = 0;
    if (!v5)
    {
LABEL_28:
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      v19 = -2;
LABEL_29:
      *(a1 + 48) = v19;
      return;
    }
  }

  if (!v7 || !v9)
  {
    goto LABEL_28;
  }

  if (v11 && v14)
  {
    if (v17)
    {
      v19 = 0x80;
    }

    else
    {
      v19 = -127;
    }

    *a1 = v22;
    *(a1 + 8) = v21;
    *(a1 + 16) = v20;
    *(a1 + 24) = v12;
    *(a1 + 32) = v15;
    *(a1 + 40) = v18;
    goto LABEL_29;
  }

  *a1 = v22;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

id ManagedExtractedOrderShippingFulfillment.__allocating_init(shippingFulfillment:positionIndex:context:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v4 = sub_1B7609448(a1, a2, a3);

  return v4;
}

void ManagedExtractedOrderShippingFulfillment.estimatedDeliveryDate.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 estimatedDeliveryStartDateYear];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0;
  }

  v60 = v5;
  v7 = [v2 estimatedDeliveryStartDateMonth];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v2 estimatedDeliveryStartDateDay];
  v11 = v10;
  v52 = v9;
  v53 = v6;
  if (v10)
  {
    v51 = [v10 integerValue];
  }

  else
  {
    v51 = 0;
  }

  v12 = [v2 estimatedDeliveryEndDateYear];
  v13 = v12;
  if (v12)
  {
    v54 = [v12 integerValue];
  }

  else
  {
    v54 = 0;
  }

  v14 = [v2 estimatedDeliveryEndDateMonth];
  v15 = v14;
  v58 = v8;
  if (v14)
  {
    v55 = [v14 integerValue];
  }

  else
  {
    v55 = 0;
  }

  v16 = [v2 estimatedDeliveryEndDateDay];
  v17 = v16;
  if (v16)
  {
    v56 = [v16 integerValue];
  }

  else
  {
    v56 = 0;
  }

  v18 = [v2 estimatedDeliveryStartTimeHours];
  v19 = v18;
  v57 = v11;
  if (v18)
  {
    v48 = [v18 integerValue];
  }

  else
  {
    v48 = 0;
  }

  v20 = [v2 estimatedDeliveryStartTimeMinutes];
  v21 = v20;
  v59 = v13;
  if (v20)
  {
    v47 = [v20 integerValue];
  }

  else
  {
    v47 = 0;
  }

  v22 = [v2 estimatedDeliveryStartTimeSeconds];
  v23 = v22;
  if (v22)
  {
    v45 = [v22 integerValue];
  }

  else
  {
    v45 = 0;
  }

  v24 = [v2 estimatedDeliveryEndTimeHours];
  v25 = v24;
  if (v24)
  {
    v50 = [v24 integerValue];
  }

  else
  {
    v50 = 0;
  }

  v26 = [v2 estimatedDeliveryEndTimeMinutes];
  v27 = v26;
  if (v26)
  {
    v49 = [v26 &selRef_setIdentifier_];
  }

  else
  {
    v49 = 0;
  }

  v28 = [v2 estimatedDeliveryEndTimeSeconds];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 &selRef_setIdentifier_];
  }

  else
  {
    v30 = 0;
  }

  if (v15)
  {
    v31 = v17 == 0;
  }

  else
  {
    v31 = 1;
  }

  v33 = v31 || v59 == 0;
  if (!v60 || !v58 || !v57)
  {
    if (v33)
    {
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0x1FFFFFFFELL;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return;
    }

    if (v25 && v27)
    {
      *a1 = v54;
      *(a1 + 8) = v55;
      *(a1 + 16) = v56;
      *(a1 + 24) = v50;
      *(a1 + 32) = v49;
      *(a1 + 40) = v30;
      *(a1 + 48) = v29 == 0;
      *(a1 + 55) = 0;
      *(a1 + 53) = 0;
      *(a1 + 49) = 0;
      v42 = 0x80;
    }

    else
    {
      *a1 = v54;
      *(a1 + 8) = v55;
      *(a1 + 16) = v56;
      *(a1 + 48) = 0;
      v42 = 96;
    }

    goto LABEL_105;
  }

  if (v33)
  {
    if (v25)
    {
      v34 = v27 == 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = v34;
    v37 = v52;
    v36 = v53;
    v38 = v51;
    if (v19 && v21)
    {
      if (v35)
      {
        v39 = v23 == 0;
LABEL_75:
        *a1 = v36;
        *(a1 + 8) = v37;
        *(a1 + 16) = v38;
        *(a1 + 24) = v48;
        *(a1 + 32) = v47;
        *(a1 + 40) = v46;
LABEL_76:
        *(a1 + 48) = v39;
        *(a1 + 55) = 0;
        *(a1 + 53) = 0;
        *(a1 + 49) = 0;
        v42 = 32;
LABEL_105:
        *(a1 + 104) = v42;
        return;
      }

      goto LABEL_104;
    }

    if ((v35 & 1) == 0)
    {
      v43 = v29 == 0;
LABEL_96:
      *a1 = v36;
      *(a1 + 8) = v37;
      *(a1 + 16) = v38;
      *(a1 + 24) = v50;
      *(a1 + 32) = v49;
      *(a1 + 40) = v30;
      *(a1 + 48) = v43;
      *(a1 + 55) = 0;
      *(a1 + 53) = 0;
      *(a1 + 49) = 0;
      v42 = 64;
      goto LABEL_105;
    }

    goto LABEL_92;
  }

  v38 = v51;
  v37 = v52;
  v36 = v53;
  if (v51 == v56 && v52 == v55 && v53 == v54)
  {
    if (v25)
    {
      v40 = v27 == 0;
    }

    else
    {
      v40 = 1;
    }

    v41 = v40;
    if (v19 && v21)
    {
      if (v41)
      {
        v39 = v23 == 0;
        goto LABEL_75;
      }

      if (v48 == v50 && v47 == v49)
      {
        if (v23)
        {
          if (!v29 || v46 != v30)
          {
            goto LABEL_104;
          }
        }

        else if (v29)
        {
          goto LABEL_104;
        }

        v39 = v23 == 0;
        *a1 = v53;
        *(a1 + 8) = v52;
        *(a1 + 16) = v51;
        *(a1 + 24) = v48;
        *(a1 + 32) = v47;
        *(a1 + 40) = v46;
        goto LABEL_76;
      }

LABEL_104:
      *a1 = v53;
      *(a1 + 8) = v52;
      *(a1 + 16) = v51;
      *(a1 + 24) = v48;
      *(a1 + 32) = v47;
      *(a1 + 40) = v46;
      *(a1 + 48) = v23 == 0;
      *(a1 + 56) = v50;
      *(a1 + 64) = v49;
      *(a1 + 72) = v30;
      *(a1 + 80) = v29 == 0;
      v42 = -96;
      goto LABEL_105;
    }

    if ((v41 & 1) == 0)
    {
      v43 = v29 == 0;
      goto LABEL_96;
    }

LABEL_92:
    *a1 = v36;
    *(a1 + 8) = v37;
    *(a1 + 16) = v38;
    *(a1 + 48) = 0;
    *(a1 + 104) = 0;
    return;
  }

  if (!v21 || !v19 || !v25 || !v27)
  {
    *a1 = v53;
    *(a1 + 8) = v52;
    *(a1 + 16) = v51;
    *(a1 + 24) = v54;
    *(a1 + 32) = v55;
    *(a1 + 40) = v56;
    *(a1 + 48) = 0;
    v42 = -64;
    goto LABEL_105;
  }

  if (v29)
  {
    v44 = -32;
  }

  else
  {
    v44 = -31;
  }

  *a1 = v53;
  *(a1 + 8) = v52;
  *(a1 + 16) = v51;
  *(a1 + 24) = v48;
  *(a1 + 32) = v47;
  *(a1 + 40) = v46;
  *(a1 + 48) = v23 == 0;
  *(a1 + 56) = v54;
  *(a1 + 64) = v55;
  *(a1 + 72) = v56;
  *(a1 + 80) = v50;
  *(a1 + 88) = v49;
  *(a1 + 96) = v30;
  *(a1 + 104) = v44;
}

FinanceKit::ManagedExtractedOrderShippingFulfillment::Status_optional __swiftcall ManagedExtractedOrderShippingFulfillment.Status.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0xAu)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

id (*ManagedExtractedOrderShippingFulfillment.status.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedExtractedOrderShippingFulfillment.Status.init(rawValue:)([v1 statusValue]);
  v3 = v5;
  if (v5 == 10)
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  return sub_1B74C4A2C;
}

void ManagedExtractedOrderShippingFulfillment.shippingDate.setter(void *a1)
{
  v2 = *(a1 + 48);
  if (v2 > 0xFD)
  {
    [v1 setShippingDateYear_];
    [v1 setShippingDateMonth_];
    [v1 setShippingDateDay_];
LABEL_5:
    [v1 setShippingTimeHours_];
    [v1 setShippingTimeMinutes_];

    [v1 setShippingTimeSeconds_];
    return;
  }

  if ((v2 & 0x80) == 0)
  {
    v3 = sub_1B7801008();
    [v1 setShippingDateYear_];

    v4 = sub_1B7801008();
    [v1 setShippingDateMonth_];

    v5 = sub_1B7801008();
    [v1 setShippingDateDay_];

    goto LABEL_5;
  }

  v6 = sub_1B7801008();
  [v1 setShippingDateYear_];

  v7 = sub_1B7801008();
  [v1 setShippingDateMonth_];

  v8 = sub_1B7801008();
  [v1 setShippingDateDay_];

  v9 = sub_1B7801008();
  [v1 setShippingTimeHours_];

  v10 = sub_1B7801008();
  [v1 setShippingTimeMinutes_];

  if (v2)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1B7801008();
  }

  v12 = v11;
  [v1 setShippingTimeSeconds_];
}

uint64_t (*ManagedExtractedOrderShippingFulfillment.shippingDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  ManagedExtractedOrderShippingFulfillment.shippingDate.getter(v3);
  return sub_1B76081AC;
}

void ManagedExtractedOrderShippingFulfillment.estimatedDeliveryDate.setter(void *a1)
{
  v2 = a1[6];
  v3 = *(a1 + 104);
  if (v2 >> 1 == 0xFFFFFFFF && v3 < 2)
  {
    [v1 setEstimatedDeliveryStartDateYear_];
    [v1 setEstimatedDeliveryStartDateMonth_];
    [v1 setEstimatedDeliveryStartDateDay_];
    goto LABEL_4;
  }

  v4 = v3 >> 5;
  if (v3 >> 5 <= 3)
  {
    if (v3 >> 5 <= 1)
    {
      if (v4)
      {
        v24 = sub_1B7801008();
        [v1 setEstimatedDeliveryStartDateYear_];

        v25 = sub_1B7801008();
        [v1 setEstimatedDeliveryStartDateMonth_];

        v26 = sub_1B7801008();
        [v1 setEstimatedDeliveryStartDateDay_];

        v27 = sub_1B7801008();
        [v1 setEstimatedDeliveryStartTimeHours_];

        v28 = sub_1B7801008();
        [v1 setEstimatedDeliveryStartTimeMinutes_];

        if (v2)
        {
          v29 = 0;
        }

        else
        {
          v29 = sub_1B7801008();
        }

        [v1 setEstimatedDeliveryStartTimeSeconds_];

        goto LABEL_5;
      }

      v5 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartDateYear_];

      v6 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartDateMonth_];

      v7 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartDateDay_];

LABEL_4:
      [v1 setEstimatedDeliveryStartTimeHours_];
      [v1 setEstimatedDeliveryStartTimeMinutes_];
      [v1 setEstimatedDeliveryStartTimeSeconds_];
LABEL_5:
      [v1 setEstimatedDeliveryEndDateYear_];
      [v1 setEstimatedDeliveryEndDateMonth_];
      [v1 setEstimatedDeliveryEndDateDay_];
LABEL_6:
      [v1 setEstimatedDeliveryEndTimeHours_];
      [v1 setEstimatedDeliveryEndTimeMinutes_];

      [v1 setEstimatedDeliveryEndTimeSeconds_];
      return;
    }

    if (v4 == 2)
    {
      v14 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartDateYear_];

      v15 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartDateMonth_];

      v16 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartDateDay_];

      [v1 setEstimatedDeliveryStartTimeHours_];
      [v1 setEstimatedDeliveryStartTimeMinutes_];
      [v1 setEstimatedDeliveryStartTimeSeconds_];
      [v1 setEstimatedDeliveryEndDateYear_];
      [v1 setEstimatedDeliveryEndDateMonth_];
      [v1 setEstimatedDeliveryEndDateDay_];
      v17 = sub_1B7801008();
      [v1 setEstimatedDeliveryEndTimeHours_];

      v18 = sub_1B7801008();
      [v1 setEstimatedDeliveryEndTimeMinutes_];

      v13 = 0;
      if ((v2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    [v1 setEstimatedDeliveryStartDateYear_];
    [v1 setEstimatedDeliveryStartDateMonth_];
    [v1 setEstimatedDeliveryStartDateDay_];
    [v1 setEstimatedDeliveryStartTimeHours_];
    [v1 setEstimatedDeliveryStartTimeMinutes_];
    [v1 setEstimatedDeliveryStartTimeSeconds_];
    v36 = sub_1B7801008();
    [v1 setEstimatedDeliveryEndDateYear_];

    v37 = sub_1B7801008();
    [v1 setEstimatedDeliveryEndDateMonth_];

LABEL_27:
    v38 = sub_1B7801008();
    [v1 setEstimatedDeliveryEndDateDay_];

    goto LABEL_6;
  }

  if (v3 >> 5 > 5)
  {
    if (v4 != 6)
    {
      v39 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartDateYear_];

      v40 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartDateMonth_];

      v41 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartDateDay_];

      v42 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartTimeHours_];

      v43 = sub_1B7801008();
      [v1 setEstimatedDeliveryStartTimeMinutes_];

      if (v2)
      {
        v44 = 0;
      }

      else
      {
        v44 = sub_1B7801008();
      }

      [v1 setEstimatedDeliveryStartTimeSeconds_];

      v47 = sub_1B7801008();
      [v1 setEstimatedDeliveryEndDateYear_];

      v48 = sub_1B7801008();
      [v1 setEstimatedDeliveryEndDateMonth_];

      v49 = sub_1B7801008();
      [v1 setEstimatedDeliveryEndDateDay_];

      v50 = sub_1B7801008();
      [v1 setEstimatedDeliveryEndTimeHours_];

      v51 = sub_1B7801008();
      [v1 setEstimatedDeliveryEndTimeMinutes_];

      if ((v3 & 1) == 0)
      {
        goto LABEL_38;
      }

      v13 = 0;
      goto LABEL_39;
    }

    v19 = sub_1B7801008();
    [v1 setEstimatedDeliveryStartDateYear_];

    v20 = sub_1B7801008();
    [v1 setEstimatedDeliveryStartDateMonth_];

    v21 = sub_1B7801008();
    [v1 setEstimatedDeliveryStartDateDay_];

    [v1 setEstimatedDeliveryStartTimeHours_];
    [v1 setEstimatedDeliveryStartTimeMinutes_];
    [v1 setEstimatedDeliveryStartTimeSeconds_];
    v22 = sub_1B7801008();
    [v1 setEstimatedDeliveryEndDateYear_];

    v23 = sub_1B7801008();
    [v1 setEstimatedDeliveryEndDateMonth_];

    goto LABEL_27;
  }

  if (v4 != 4)
  {
    v52 = *(a1 + 80);
    v30 = sub_1B7801008();
    [v1 setEstimatedDeliveryStartDateYear_];

    v31 = sub_1B7801008();
    [v1 setEstimatedDeliveryStartDateMonth_];

    v32 = sub_1B7801008();
    [v1 setEstimatedDeliveryStartDateDay_];

    v33 = sub_1B7801008();
    [v1 setEstimatedDeliveryStartTimeHours_];

    v34 = sub_1B7801008();
    [v1 setEstimatedDeliveryStartTimeMinutes_];

    if (v2)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_1B7801008();
    }

    [v1 setEstimatedDeliveryStartTimeSeconds_];

    [v1 setEstimatedDeliveryEndDateYear_];
    [v1 setEstimatedDeliveryEndDateMonth_];
    [v1 setEstimatedDeliveryEndDateDay_];
    v45 = sub_1B7801008();
    [v1 setEstimatedDeliveryEndTimeHours_];

    v46 = sub_1B7801008();
    [v1 setEstimatedDeliveryEndTimeMinutes_];

    v13 = 0;
    if (v52)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  [v1 setEstimatedDeliveryStartDateYear_];
  [v1 setEstimatedDeliveryStartDateMonth_];
  [v1 setEstimatedDeliveryStartDateDay_];
  [v1 setEstimatedDeliveryStartTimeHours_];
  [v1 setEstimatedDeliveryStartTimeMinutes_];
  [v1 setEstimatedDeliveryStartTimeSeconds_];
  v8 = sub_1B7801008();
  [v1 setEstimatedDeliveryEndDateYear_];

  v9 = sub_1B7801008();
  [v1 setEstimatedDeliveryEndDateMonth_];

  v10 = sub_1B7801008();
  [v1 setEstimatedDeliveryEndDateDay_];

  v11 = sub_1B7801008();
  [v1 setEstimatedDeliveryEndTimeHours_];

  v12 = sub_1B7801008();
  [v1 setEstimatedDeliveryEndTimeMinutes_];

  v13 = 0;
  if ((v2 & 1) == 0)
  {
LABEL_38:
    v13 = sub_1B7801008();
  }

LABEL_39:
  v53 = v13;
  [v1 setEstimatedDeliveryEndTimeSeconds_];
}

void (*ManagedExtractedOrderShippingFulfillment.estimatedDeliveryDate.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  *a1 = v3;
  *(v3 + 112) = v1;
  ManagedExtractedOrderShippingFulfillment.estimatedDeliveryDate.getter(v3);
  return sub_1B7608D58;
}

void sub_1B7608D58(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v5[4] = *(*a1 + 64);
  v6[0] = v2;
  *(v6 + 9) = *(v1 + 89);
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v4 = v1[3];
  v5[2] = v1[2];
  v5[3] = v4;
  ManagedExtractedOrderShippingFulfillment.estimatedDeliveryDate.setter(v5);

  free(v1);
}

void ManagedExtractedOrderShippingFulfillment.deliveryDate.setter(void *a1)
{
  v2 = *(a1 + 48);
  if (v2 > 0xFD)
  {
    [v1 setDeliveryDateYear_];
    [v1 setDeliveryDateMonth_];
    [v1 setDeliveryDateDay_];
LABEL_5:
    [v1 setDeliveryTimeHours_];
    [v1 setDeliveryTimeMinutes_];

    [v1 setDeliveryTimeSeconds_];
    return;
  }

  if ((v2 & 0x80) == 0)
  {
    v3 = sub_1B7801008();
    [v1 setDeliveryDateYear_];

    v4 = sub_1B7801008();
    [v1 setDeliveryDateMonth_];

    v5 = sub_1B7801008();
    [v1 setDeliveryDateDay_];

    goto LABEL_5;
  }

  v6 = sub_1B7801008();
  [v1 setDeliveryDateYear_];

  v7 = sub_1B7801008();
  [v1 setDeliveryDateMonth_];

  v8 = sub_1B7801008();
  [v1 setDeliveryDateDay_];

  v9 = sub_1B7801008();
  [v1 setDeliveryTimeHours_];

  v10 = sub_1B7801008();
  [v1 setDeliveryTimeMinutes_];

  if (v2)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1B7801008();
  }

  v12 = v11;
  [v1 setDeliveryTimeSeconds_];
}

uint64_t (*ManagedExtractedOrderShippingFulfillment.deliveryDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  ManagedExtractedOrderShippingFulfillment.deliveryDate.getter(v3);
  return sub_1B7609098;
}

void sub_1B76090B0(void **a1, uint64_t a2, void (*a3)(void *))
{
  v3 = *a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = *(*a1 + 48);
  v10[0] = **a1;
  v10[1] = v4;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v8;
  v10[5] = v7;
  v11 = v9;
  (a3)(v10, a2);

  free(v3);
}

uint64_t sub_1B760911C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 fulfillmentUpdateDate];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B76091C0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7280900(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setFulfillmentUpdateDate_];
}

id ManagedExtractedOrderShippingFulfillment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedExtractedOrderShippingFulfillment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedExtractedOrderShippingFulfillment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B7609448(unsigned __int8 *a1, __int16 a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v49[-v8];
  v10 = [objc_allocWithZone(v3) initWithContext_];
  v11 = *a1;
  v12 = v10;
  [v12 setStatusValue_];
  if (*(a1 + 2))
  {
    v13 = sub_1B7800838();
  }

  else
  {
    v13 = 0;
  }

  [v12 setTrackingNumber_];

  if (*(a1 + 4))
  {
    v14 = sub_1B7800838();
  }

  else
  {
    v14 = 0;
  }

  [v12 setCarrierName_];

  if (*(a1 + 6))
  {
    v15 = sub_1B7800838();
  }

  else
  {
    v15 = 0;
  }

  [v12 setShippingMethod_];

  v16 = a1[104];
  v17 = *(a1 + 72);
  v69 = *(a1 + 56);
  v70 = v17;
  v71 = *(a1 + 88);
  LOBYTE(v72) = v16;
  ManagedExtractedOrderShippingFulfillment.shippingDate.setter(&v69);
  v18 = *(a1 + 12);
  v73 = *(a1 + 11);
  *v74 = v18;
  *&v74[9] = *(a1 + 201);
  v19 = *(a1 + 8);
  v69 = *(a1 + 7);
  v70 = v19;
  v20 = *(a1 + 10);
  v71 = *(a1 + 9);
  v72 = v20;
  ManagedExtractedOrderShippingFulfillment.estimatedDeliveryDate.setter(&v69);
  v21 = a1[272];
  v22 = *(a1 + 15);
  v69 = *(a1 + 14);
  v70 = v22;
  v71 = *(a1 + 16);
  LOBYTE(v72) = v21;
  ManagedExtractedOrderShippingFulfillment.deliveryDate.setter(&v69);
  v23 = a1 + 280;
  v24 = *(a1 + 360);
  v73 = *(a1 + 344);
  *v74 = v24;
  v25 = *(a1 + 392);
  *&v74[16] = *(a1 + 376);
  v75 = v25;
  v26 = *(a1 + 296);
  v69 = *(a1 + 280);
  v70 = v26;
  v27 = *(a1 + 328);
  v71 = *(a1 + 312);
  v72 = v27;
  if (j__get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v69) == 1 || !*(&v69 + 1))
  {
    v28 = 0;
  }

  else
  {

    v28 = sub_1B7800838();
  }

  [v12 setRecipientFullName_];

  v29 = *(a1 + 360);
  v65 = *(a1 + 344);
  v66 = v29;
  v30 = *(a1 + 392);
  v67 = *(a1 + 376);
  v68 = v30;
  v31 = *(a1 + 296);
  v61 = *v23;
  v62 = v31;
  v32 = *(a1 + 328);
  v63 = *(a1 + 312);
  v64 = v32;
  if (j__get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v61) == 1 || !*(&v62 + 1))
  {
    v33 = 0;
  }

  else
  {

    v33 = sub_1B7800838();
  }

  [v12 setRecipientPhoneNumber_];

  v34 = *(a1 + 360);
  v57 = *(a1 + 344);
  v58 = v34;
  v35 = *(a1 + 392);
  v59 = *(a1 + 376);
  v60 = v35;
  v36 = *(a1 + 296);
  v54[0] = *v23;
  v54[1] = v36;
  v37 = *(a1 + 328);
  v55 = *(a1 + 312);
  v56 = v37;
  if (j__get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v54) == 1 || !*(&v55 + 1))
  {
    v38 = 0;
  }

  else
  {

    v38 = sub_1B7800838();
  }

  [v12 setRecipientEmailAddress_];

  v39 = *(a1 + 360);
  v53.city = *(a1 + 344);
  v53.state = v39;
  v40 = *(a1 + 392);
  v53.postalCode = *(a1 + 376);
  v53.country = v40;
  v41 = *(a1 + 296);
  v52[0] = *v23;
  v52[1] = v41;
  v42 = *(a1 + 328);
  v52[2] = *(a1 + 312);
  v53.street = v42;
  v43 = 0;
  if (j__get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v52) != 1 && v53.street.value._object != 1)
  {
    v51 = v53;
    sub_1B74BA2BC();
    v50 = v53;
    sub_1B7561B1C(&v51, v49);
    v43 = CNMutablePostalAddress.init(extractedOrderAddress:)(&v50);
  }

  [v12 setRecipientAddress_];

  v44 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  sub_1B7280900(&a1[*(v44 + 48)], v9);
  v45 = sub_1B77FF988();
  v46 = *(v45 - 8);
  v47 = 0;
  if ((*(v46 + 48))(v9, 1, v45) != 1)
  {
    v47 = sub_1B77FF8B8();
    (*(v46 + 8))(v9, v45);
  }

  [v12 setFulfillmentUpdateDate_];

  [v12 setPositionIndex_];
  sub_1B7609BA8(a1);
  return v12;
}

unint64_t sub_1B7609928()
{
  result = qword_1EB9995C0;
  if (!qword_1EB9995C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedExtractedOrderShippingFulfillment.Status, &type metadata for ManagedExtractedOrderShippingFulfillment.Status, v0, v1);
    atomic_store(result, &qword_1EB9995C0);
  }

  return result;
}

double keypath_get_19Tm@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
  v3 = v8;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v3;
  return result;
}

uint64_t keypath_set_20Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = *(a1 + 32);
  v9 = v5;
  return a5(v8);
}

uint64_t sub_1B7609BA8(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id NSManagedObjectContext.currentLocalHistoryToken.getter()
{
  v0 = NSManagedObjectContext.localStore.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 persistentStoreCoordinator];
    if (v2)
    {
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50, &qword_1B780C3E0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1B7807CD0;
      *(v4 + 56) = sub_1B72BB97C();
      *(v4 + 32) = v1;
      v5 = v1;
      v6 = sub_1B7800C18();

      v7 = [v3 currentPersistentHistoryTokenFromStores_];

      return v7;
    }
  }

  else
  {
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B78000B8();
    __swift_project_value_buffer(v9, qword_1EDAFD2D0);
    v10 = sub_1B7800098();
    v11 = sub_1B78011D8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B7198000, v10, v11, "Unable to provide history token, local store does not exist", v12, 2u);
      MEMORY[0x1B8CA7A40](v12, -1, -1);
    }
  }

  return 0;
}

void NSManagedObjectContext.fetchPersistentHistory(after:store:)(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() fetchHistoryAfterToken_];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B780B190;
    *(v5 + 32) = a2;
    sub_1B72BB97C();
    v6 = a2;
    v7 = v4;
    v8 = sub_1B7800C18();

    [v7 setAffectedStores_];
  }

  *&v20[0] = 0;
  v9 = [v2 executeRequest:v4 error:v20];
  v10 = *&v20[0];
  if (v9)
  {
    v11 = v9;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    v13 = v10;
    if ([v12 result])
    {
      sub_1B7801848();
      swift_unknownObjectRelease();

      sub_1B72051F0(v20, &v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F180, &unk_1B7808EC0);
      swift_dynamicCast();
    }

    else
    {
      if (qword_1EDAFD2C8 != -1)
      {
        swift_once();
      }

      v15 = sub_1B78000B8();
      __swift_project_value_buffer(v15, qword_1EDAFD2D0);
      v16 = sub_1B7800098();
      v17 = sub_1B78011D8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1B7198000, v16, v17, "No history results, no transactions to return", v18, 2u);
        MEMORY[0x1B8CA7A40](v18, -1, -1);
      }
    }
  }

  else
  {
    v14 = *&v20[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t Order.ShippingFulfillment.init(_:previewResourceLoader:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v75 = &v66 - v6;
  v7 = type metadata accessor for Order.ShippingFulfillment(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 44);
  v12 = sub_1B77FF4F8();
  v13 = *(*(v12 - 8) + 56);
  *&v71 = v11;
  v13(&v10[v11], 1, 1, v12);
  v14 = &v10[v7[12]];
  v78 = xmmword_1B78301C0;
  *v14 = xmmword_1B78301C0;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 6) = 0;
  v15 = v7[13];
  v16 = type metadata accessor for Order.FulfillmentWindow(0);
  v17 = *(*(v16 - 8) + 56);
  v74 = v15;
  v17(&v10[v15], 1, 1, v16);
  v18 = v7[14];
  v19 = sub_1B77FF988();
  v20 = *(*(v19 - 8) + 56);
  v72 = v18;
  v20(&v10[v18], 1, 1, v19);
  v76 = v7;
  v73 = v7[16];
  v20(&v10[v73], 1, 1, v19);
  v21 = *a1;
  v80[2] = a2;
  sub_1B75EBB14(sub_1B742CB48, v80, v21);
  v22 = *(a1 + 8);
  *v10 = v23;
  *(v10 + 1) = v22;
  v24 = *(a1 + 32);
  v70 = *(a1 + 16);
  *(v10 + 1) = v70;
  *(v10 + 4) = v24;
  v10[40] = 0x706040302050100uLL >> (8 * *(a1 + 40));
  v26 = *(a1 + 48);
  v25 = *(a1 + 56);
  v79 = a2;
  sub_1B719B06C(a2, &v97);
  if (v25)
  {
    v27 = *(&v98 + 1);
    v28 = v99;
    v29 = __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    v30 = *(v28 + 8);
    v68 = v29;
    v69 = v30;
    v67 = v26;

    v31 = v69(v67, v25, v27, v28);
    v33 = v32;
  }

  else
  {

    v31 = 0;
    v33 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v97);
  *(v10 + 6) = v31;
  *(v10 + 7) = v33;
  v34 = *(a1 + 64);
  v35 = *(a1 + 72);
  sub_1B719B06C(v79, v107);
  if (v35)
  {
    v36 = v108;
    v37 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    *&v70 = *(v37 + 8);

    v38 = (v70)(v34, v35, v36, v37);
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v107);
  *(v10 + 8) = v38;
  *(v10 + 9) = v40;
  v41 = *(a1 + 88);
  *(v10 + 10) = *(a1 + 80);
  *(v10 + 11) = v41;
  v42 = type metadata accessor for RawOrderShippingFulfillment(0);
  v43 = v42[11];

  sub_1B73FE224(a1 + v43, &v10[v71], &unk_1EB994C70, &qword_1B7809800);
  v44 = (a1 + v42[12]);
  v45 = v44[7];
  v46 = v44[5];
  v93 = v44[6];
  v94 = v45;
  v47 = v44[7];
  v95 = v44[8];
  v48 = v44[3];
  v49 = v44[5];
  v91 = v44[4];
  v92 = v49;
  v50 = v44[3];
  v51 = v44[1];
  v89 = v44[2];
  v90 = v50;
  v52 = v44[1];
  v87 = *v44;
  v88 = v52;
  v103 = v93;
  v104 = v47;
  v105 = v44[8];
  v99 = v89;
  v100 = v48;
  v101 = v91;
  v102 = v46;
  v96 = *(v44 + 18);
  v106 = *(v44 + 18);
  v97 = v87;
  v98 = v51;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v97) == 1)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v71 = 0u;
  }

  else
  {
    v85[6] = v93;
    v85[7] = v94;
    v85[8] = v95;
    v86 = v96;
    v85[2] = v89;
    v85[3] = v90;
    v85[4] = v91;
    v85[5] = v92;
    v85[0] = v87;
    v85[1] = v88;
    sub_1B760CE50(v85, v81);
    Order.ShippingRecipient.init(_:)(&v87, v81);
    v71 = v81[1];
    v78 = v81[0];
    v53 = v82;
    v54 = v83;
    v55 = v84;
  }

  sub_1B760CBEC(*v14, *(v14 + 1), *(v14 + 2), *(v14 + 3), *(v14 + 4), *(v14 + 5), *(v14 + 6));
  v56 = v71;
  *v14 = v78;
  *(v14 + 1) = v56;
  *(v14 + 4) = v53;
  *(v14 + 5) = v54;
  *(v14 + 6) = v55;
  v57 = v75;
  RawOrderShippingFulfillment.estimatedDeliveryWindow.getter(v75);
  sub_1B7213740(v57, &v10[v74], &qword_1EB990828, &unk_1B781C5A0);
  sub_1B73FE224(a1 + v42[15], &v10[v72], &qword_1EB98EBD0, &unk_1B7809780);
  v58 = (a1 + v42[16]);
  v60 = *v58;
  v59 = v58[1];
  v61 = v76;
  v62 = &v10[v76[15]];
  *v62 = v60;
  *(v62 + 1) = v59;
  v63 = v42[17];

  sub_1B73FE224(a1 + v63, &v10[v73], &qword_1EB98EBD0, &unk_1B7809780);
  v64 = *(a1 + v42[18]);
  sub_1B760EB3C(a1, type metadata accessor for RawOrderShippingFulfillment);
  v10[v61[17]] = v64;
  sub_1B760CDEC(v10, v77);
  __swift_destroy_boxed_opaque_existential_1(v79);
  return sub_1B760EB3C(v10, type metadata accessor for Order.ShippingFulfillment);
}

void Order.ShippingFulfillment.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v94 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  *&v104 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v101 = &v94 - v13;
  v14 = type metadata accessor for Order.ShippingFulfillment(0);
  v15 = v14[11];
  v16 = sub_1B77FF4F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v100 = v15;
  v99 = v16;
  v98 = v18;
  v97 = v17 + 56;
  (v18)(a2 + v15, 1, 1);
  v19 = a2 + v14[12];
  *v19 = xmmword_1B78301C0;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0;
  v20 = v14[13];
  v21 = type metadata accessor for Order.FulfillmentWindow(0);
  v22 = *(*(v21 - 8) + 56);
  v102 = v20;
  v22(a2 + v20, 1, 1, v21);
  v23 = v14[14];
  v24 = sub_1B77FF988();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v27 = v25 + 56;
  v103 = v23;
  v26(a2 + v23, 1, 1, v24);
  v105 = v14[16];
  v106 = v24;
  v107 = v27;
  v108 = v26;
  v26(a2 + v105, 1, 1, v24);
  v28 = ManagedOrderShippingFulfillment.lineItems.getter();
  v29 = v28;
  if (v28 >> 62)
  {
    v30 = sub_1B7801958();
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_14:

    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_14;
  }

LABEL_3:
  v117 = MEMORY[0x1E69E7CC0];
  sub_1B71FDDBC(0, v30 & ~(v30 >> 63), 0);
  if (v30 < 0)
  {
    __break(1u);
    return;
  }

  v94 = v9;
  v95 = v14;
  v96 = v7;
  v31 = 0;
  v32 = v117;
  if ((v29 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = MEMORY[0x1B8CA5DC0](v31, v29); ; i = *(v29 + 8 * v31 + 32))
  {
    Order.LineItem.init(_:)(i, &v109);
    v117 = v32;
    v35 = *(v32 + 16);
    v34 = *(v32 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1B71FDDBC((v34 > 1), v35 + 1, 1);
      v32 = v117;
    }

    *(v32 + 16) = v35 + 1;
    v36 = (v32 + (v35 << 7));
    v37 = v109;
    v38 = v110;
    v39 = v112;
    v36[4] = v111;
    v36[5] = v39;
    v36[2] = v37;
    v36[3] = v38;
    v40 = v113;
    v41 = v114;
    v42 = v116;
    v36[8] = v115;
    v36[9] = v42;
    v36[6] = v40;
    v36[7] = v41;
    if (v30 - 1 == v31)
    {
      break;
    }

    ++v31;
    if ((v29 & 0xC000000000000001) != 0)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

  v7 = v96;
  v14 = v95;
  v9 = v94;
LABEL_15:
  *a2 = v32;
  v43 = [a1 carrier];
  if (v43)
  {
    v44 = v43;
    v45 = sub_1B7800868();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  *(a2 + 8) = v45;
  *(a2 + 16) = v47;
  v48 = [a1 carrierIdentifier];
  if (v48)
  {
    v49 = v48;
    v50 = sub_1B7800868();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  *(a2 + 24) = v50;
  *(a2 + 32) = v52;
  *(a2 + 40) = ManagedOrderShippingFulfillment.status.getter();
  v53 = [a1 statusDescription];
  if (v53)
  {
    v54 = v53;
    v55 = sub_1B77FFA48();
    v56 = sub_1B741F7D4(v55);
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  *(a2 + 48) = v56;
  *(a2 + 56) = v58;
  v59 = [a1 notes];
  if (v59)
  {
    v60 = v59;
    v61 = sub_1B77FFA48();
    v62 = sub_1B741F7D4(v61);
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  v65 = v102;
  *(a2 + 64) = v62;
  *(a2 + 72) = v64;
  v66 = [a1 trackingNumber];
  if (v66)
  {
    v67 = v66;
    v68 = sub_1B7800868();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = v104;
  *(a2 + 80) = v68;
  *(a2 + 88) = v70;
  v72 = [a1 trackingURL];
  if (v72)
  {
    v73 = v101;
    v74 = v72;
    sub_1B77FF478();

    v75 = v73;
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v75 = v101;
  }

  v77 = 1;
  v98(v75, v76, 1, v99);
  sub_1B7213740(v75, a2 + v100, &unk_1EB994C70, &qword_1B7809800);
  ManagedOrderShippingFulfillment.recipientModel.getter(&v109);
  v104 = v111;
  v78 = v112;
  sub_1B760CBEC(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48));
  v79 = v110;
  *v19 = v109;
  *(v19 + 16) = v79;
  *(v19 + 32) = v104;
  *(v19 + 48) = v78;
  ManagedOrderShippingFulfillment.estimatedDeliveryWindow.getter(v71);
  sub_1B7213740(v71, a2 + v65, &qword_1EB990828, &unk_1B781C5A0);
  v80 = [a1 deliveryDate];
  if (v80)
  {
    v81 = v80;
    sub_1B77FF928();

    v77 = 0;
  }

  v82 = v106;
  v83 = v103;
  v84 = 1;
  v108(v9, v77, 1, v106);
  sub_1B7213740(v9, a2 + v83, &qword_1EB98EBD0, &unk_1B7809780);
  v85 = [a1 fulfillmentIdentifier];
  v86 = sub_1B7800868();
  v88 = v87;

  v89 = (a2 + v14[15]);
  *v89 = v86;
  v89[1] = v88;
  v90 = [a1 shippedDate];
  if (v90)
  {
    v91 = v90;
    sub_1B77FF928();

    v84 = 0;
  }

  v92 = v105;
  v108(v7, v84, 1, v82);
  sub_1B7213740(v7, a2 + v92, &qword_1EB98EBD0, &unk_1B7809780);
  v93 = ManagedOrderShippingFulfillment.shippingType.getter();

  *(a2 + v14[17]) = v93 & 1;
}

uint64_t type metadata accessor for Order.ShippingFulfillment(uint64_t a1)
{
  result = qword_1EB999610;
  if (!qword_1EB999610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Order.ShippingFulfillment.carrier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void Order.ShippingFulfillment.carrier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t Order.ShippingFulfillment.carrierIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void Order.ShippingFulfillment.carrierIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t Order.ShippingFulfillment.statusDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void Order.ShippingFulfillment.statusDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t Order.ShippingFulfillment.notes.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void Order.ShippingFulfillment.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t Order.ShippingFulfillment.trackingNumber.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void Order.ShippingFulfillment.trackingNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

double Order.ShippingFulfillment.recipient.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Order.ShippingFulfillment(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  return sub_1B760E054(v4, v5, v6, v7, v8, v9, v10);
}

__n128 Order.ShippingFulfillment.recipient.setter(uint64_t a1)
{
  v7 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + *(type metadata accessor for Order.ShippingFulfillment(0) + 48);
  sub_1B760CBEC(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  result = v7;
  *(v4 + 32) = v7;
  *(v4 + 48) = v3;
  return result;
}

uint64_t Order.ShippingFulfillment.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.ShippingFulfillment(0) + 60));

  return v1;
}

void Order.ShippingFulfillment.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Order.ShippingFulfillment(0) + 60));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Order.ShippingFulfillment.shippingType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Order.ShippingFulfillment(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t Order.ShippingFulfillment.shippingType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Order.ShippingFulfillment(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

unint64_t sub_1B760B830(char a1)
{
  result = 0x6D657449656E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x72656972726163;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x737574617473;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7365746F6ELL;
      break;
    case 6:
    case 7:
      result = 0x676E696B63617274;
      break;
    case 8:
      result = 0x6E65697069636572;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x79726576696C6564;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x4464657070696873;
      break;
    case 13:
      result = 0x676E697070696873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B760B9D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B760E6B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B760B9FC(uint64_t a1)
{
  v2 = sub_1B760E0B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B760BA38(uint64_t a1)
{
  v2 = sub_1B760E0B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.ShippingFulfillment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9995C8, &unk_1B784B508);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B760E0B8();
  sub_1B78023F8();
  v20 = *v3;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9946A0, &qword_1B782A250);
  sub_1B742C9C4(&qword_1EB9946A8, sub_1B742C91C, MEMORY[0x1E69E6300]);
  sub_1B7801FC8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v20) = 1;
  sub_1B7801EF8();
  LOBYTE(v20) = 2;
  sub_1B7801EF8();
  LOBYTE(v20) = *(v3 + 40);
  v27 = 3;
  sub_1B760E10C();
  sub_1B7801FC8();
  LOBYTE(v20) = 4;
  sub_1B7801EF8();
  LOBYTE(v20) = 5;
  sub_1B7801EF8();
  LOBYTE(v20) = 6;
  sub_1B7801EF8();
  v9 = type metadata accessor for Order.ShippingFulfillment(0);
  LOBYTE(v20) = 7;
  sub_1B77FF4F8();
  sub_1B760EB9C(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1B7801F38();
  v10 = (v3 + *(v9 + 48));
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[3];
  v14 = v10[4];
  v15 = v10[5];
  v16 = v10[6];
  v20 = *v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = 8;
  sub_1B760E054(v20, v11, v12, v13, v14, v15, v16);
  sub_1B760E160();
  sub_1B7801F38();
  sub_1B760CBEC(v20, v21, v22, v23, v24, v25, v26);
  LOBYTE(v20) = 9;
  type metadata accessor for Order.FulfillmentWindow(0);
  sub_1B760EB9C(&qword_1EB996760, type metadata accessor for Order.FulfillmentWindow, protocol conformance descriptor for Order.FulfillmentWindow);
  sub_1B7801F38();
  v19 = v6;
  LOBYTE(v20) = 10;
  sub_1B77FF988();
  sub_1B760EB9C(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1B7801F38();
  LOBYTE(v20) = 11;
  sub_1B7801F78();
  LOBYTE(v20) = 12;
  sub_1B7801F38();
  LOBYTE(v20) = *(v3 + *(v9 + 68));
  v27 = 13;
  sub_1B760E1B4();
  sub_1B7801FC8();
  return (*(v19 + 8))(v8, v5);
}

uint64_t Order.ShippingFulfillment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v61 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v62 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *&v66 = &v54 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9995F0, &unk_1B784B518);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v11 = &v54 - v10;
  v12 = type metadata accessor for Order.ShippingFulfillment(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 44);
  v17 = sub_1B77FF4F8();
  v18 = *(*(v17 - 8) + 56);
  v74 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = &v15[v12[12]];
  *v19 = xmmword_1B78301C0;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  v73 = v19;
  *(v19 + 6) = 0;
  v20 = v12[13];
  v21 = type metadata accessor for Order.FulfillmentWindow(0);
  v22 = *(*(v21 - 8) + 56);
  v72 = v20;
  v22(&v15[v20], 1, 1, v21);
  v23 = v12[14];
  v24 = sub_1B77FF988();
  v25 = *(*(v24 - 8) + 56);
  v71 = v23;
  v25(&v15[v23], 1, 1, v24);
  v67 = v12;
  v26 = v12[16];
  v75 = v15;
  v25(&v15[v26], 1, 1, v24);
  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  sub_1B760E0B8();
  v68 = v11;
  v27 = v70;
  sub_1B78023C8();
  if (v27)
  {
    v28 = v74;
    __swift_destroy_boxed_opaque_existential_1(v76);
    swift_bridgeObjectRelease_n();
    v32 = v75;

    sub_1B7205418(v32 + v28, &unk_1EB994C70, &qword_1B7809800);
    sub_1B760CBEC(*v73, *(v73 + 1), *(v73 + 2), *(v73 + 3), *(v73 + 4), *(v73 + 5), *(v73 + 6));
    sub_1B7205418(v32 + v72, &qword_1EB990828, &unk_1B781C5A0);
    sub_1B7205418(v32 + v71, &qword_1EB98EBD0, &unk_1B7809780);
    return sub_1B7205418(v32 + v26, &qword_1EB98EBD0, &unk_1B7809780);
  }

  else
  {
    *&v70 = v17;
    v29 = v66;
    v60 = v24;
    v30 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9946A0, &qword_1B782A250);
    v81 = 0;
    sub_1B742C9C4(&qword_1EB9946C8, sub_1B742CA3C, MEMORY[0x1E69E6330]);
    sub_1B7801E48();
    v31 = v74;
    v34 = v75;
    *v75 = v77;
    LOBYTE(v77) = 1;
    v34[1] = sub_1B7801D78();
    v34[2] = v35;
    v58 = v35;
    LOBYTE(v77) = 2;
    v34[3] = sub_1B7801D78();
    v34[4] = v36;
    v57 = v36;
    v81 = 3;
    sub_1B760E208();
    sub_1B7801E48();
    *(v34 + 40) = v77;
    LOBYTE(v77) = 4;
    v34[6] = sub_1B7801D78();
    v34[7] = v37;
    v56 = v37;
    LOBYTE(v77) = 5;
    v34[8] = sub_1B7801D78();
    v34[9] = v38;
    v55 = v38;
    LOBYTE(v77) = 6;
    v34[10] = sub_1B7801D78();
    v34[11] = v39;
    v59 = v39;
    LOBYTE(v77) = 7;
    sub_1B760EB9C(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1B7801DB8();
    sub_1B7213740(v29, v75 + v31, &unk_1EB994C70, &qword_1B7809800);
    v81 = 8;
    sub_1B760E25C();
    sub_1B7801DB8();
    v70 = v79;
    v40 = v80;
    v41 = v73;
    v42 = *v73;
    v43 = *(v73 + 1);
    v44 = *(v73 + 2);
    v45 = *(v73 + 3);
    v46 = *(v73 + 4);
    v47 = *(v73 + 5);
    v48 = *(v73 + 6);
    v66 = v77;
    v54 = v78;
    sub_1B760CBEC(v42, v43, v44, v45, v46, v47, v48);
    v49 = v54;
    *v41 = v66;
    *(v41 + 1) = v49;
    *(v41 + 2) = v70;
    *(v41 + 6) = v40;
    LOBYTE(v77) = 9;
    sub_1B760EB9C(&qword_1EB996748, type metadata accessor for Order.FulfillmentWindow, protocol conformance descriptor for Order.FulfillmentWindow);
    sub_1B7801DB8();
    sub_1B7213740(v64, v75 + v72, &qword_1EB990828, &unk_1B781C5A0);
    LOBYTE(v77) = 10;
    sub_1B760EB9C(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1B7801DB8();
    sub_1B7213740(v63, v75 + v71, &qword_1EB98EBD0, &unk_1B7809780);
    LOBYTE(v77) = 11;
    v50 = sub_1B7801DF8();
    v51 = (v75 + v67[15]);
    *v51 = v50;
    v51[1] = v52;
    LOBYTE(v77) = 12;
    sub_1B7801DB8();
    sub_1B7213740(v62, v75 + v26, &qword_1EB98EBD0, &unk_1B7809780);
    v81 = 13;
    sub_1B760E2B0();
    sub_1B7801E48();
    (*(v30 + 8))(v68, v69);
    v53 = v75;
    *(v75 + v67[17]) = v77;
    sub_1B760CDEC(v53, v61);
    __swift_destroy_boxed_opaque_existential_1(v76);
    return sub_1B760EB3C(v53, type metadata accessor for Order.ShippingFulfillment);
  }
}

uint64_t Order.ShippingFulfillment.fulfillment.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B760CDEC(v1, a1);
  type metadata accessor for Order.Fulfillment(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_1B760CBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2 != 1)
  {
  }
}

__n128 Order.ShippingRecipient.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 112);
  v20[3] = *(a1 + 96);
  v20[4] = v3;
  v20[5] = *(a1 + 128);
  v21 = *(a1 + 144);
  v4 = *(a1 + 48);
  *&v19[32] = *(a1 + 32);
  v20[0] = v4;
  v5 = *(a1 + 80);
  v20[1] = *(a1 + 64);
  v20[2] = v5;
  v6 = *(a1 + 16);
  *v19 = *a1;
  *&v19[16] = v6;
  v14 = *&v19[24];
  v15 = *&v19[8];
  v7 = *v19;
  v8 = *&v19[40];
  if (*&v20[0] == 1)
  {

    sub_1B760E304(v19);
    v9 = 0;
  }

  else
  {
    v10 = *(a1 + 128);
    v17[4] = *(a1 + 112);
    v17[5] = v10;
    v18 = *(a1 + 144);
    v11 = *(a1 + 64);
    v17[0] = *(a1 + 48);
    v17[1] = v11;
    v12 = *(a1 + 96);
    v17[2] = *(a1 + 80);
    v17[3] = v12;
    sub_1B74BA2BC();
    sub_1B7205588(v20, v16, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B7205588(v20, v16, &qword_1EB995F40, &unk_1B78347E0);

    v9 = CNMutablePostalAddress.init(rawAddress:)(v17);
    sub_1B760E304(v19);
    sub_1B7205418(v20, &qword_1EB995F40, &unk_1B78347E0);
  }

  *a2 = v7;
  result = v14;
  *(a2 + 8) = v15;
  *(a2 + 24) = v14;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_1B760CDEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.ShippingFulfillment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10FinanceKit5OrderV19ShippingFulfillmentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v147 = *(v4 - 8);
  v148 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v141 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v140 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v142 = &v125 - v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  v10 = MEMORY[0x1EEE9AC00](v146);
  v144 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v145 = &v125 - v12;
  v13 = type metadata accessor for Order.FulfillmentWindow(0);
  v14 = *(v13 - 8);
  v149 = v13;
  v150 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v143 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v125 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990A40, &unk_1B780EB60);
  MEMORY[0x1EEE9AC00](v19);
  v151 = &v125 - v20;
  v21 = sub_1B77FF4F8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v125 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v125 - v29;
  if ((sub_1B731C3C0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_53;
  }

  v31 = *(a1 + 16);
  v32 = *(a2 + 16);
  if (v31)
  {
    if (!v32 || (*(a1 + 8) != *(a2 + 8) || v31 != v32) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v32)
  {
    goto LABEL_53;
  }

  v33 = *(a1 + 32);
  v34 = *(a2 + 32);
  if (v33)
  {
    if (!v34 || (*(a1 + 24) != *(a2 + 24) || v33 != v34) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v34)
  {
    goto LABEL_53;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_53;
  }

  v35 = *(a1 + 56);
  v36 = *(a2 + 56);
  if (v35)
  {
    if (!v36 || (*(a1 + 48) != *(a2 + 48) || v35 != v36) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v36)
  {
    goto LABEL_53;
  }

  v37 = *(a1 + 72);
  v38 = *(a2 + 72);
  if (v37)
  {
    if (!v38 || (*(a1 + 64) != *(a2 + 64) || v37 != v38) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v38)
  {
    goto LABEL_53;
  }

  v39 = *(a1 + 88);
  v40 = *(a2 + 88);
  if (v39)
  {
    if (!v40)
    {
      goto LABEL_53;
    }

    v139 = a1;
    v41 = *(a1 + 80);
    v138 = a2;
    if ((v41 != *(a2 + 80) || v39 != v40) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v139 = a1;
    v138 = a2;
    if (v40)
    {
      goto LABEL_53;
    }
  }

  v137 = type metadata accessor for Order.ShippingFulfillment(0);
  v42 = v137[11];
  v43 = *(v28 + 48);
  sub_1B7205588(v139 + v42, v30, &unk_1EB994C70, &qword_1B7809800);
  v44 = v138 + v42;
  v45 = v43;
  sub_1B7205588(v44, &v30[v43], &unk_1EB994C70, &qword_1B7809800);
  v46 = *(v22 + 48);
  if (v46(v30, 1, v21) == 1)
  {
    if (v46(&v30[v45], 1, v21) == 1)
    {
      sub_1B7205418(v30, &unk_1EB994C70, &qword_1B7809800);
      goto LABEL_46;
    }

LABEL_43:
    v47 = &qword_1EB991C30;
    v48 = &unk_1B7816E10;
    v49 = v30;
LABEL_44:
    sub_1B7205418(v49, v47, v48);
    goto LABEL_53;
  }

  sub_1B7205588(v30, v27, &unk_1EB994C70, &qword_1B7809800);
  if (v46(&v30[v45], 1, v21) == 1)
  {
    (*(v22 + 8))(v27, v21);
    goto LABEL_43;
  }

  (*(v22 + 32))(v24, &v30[v45], v21);
  sub_1B760EB9C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v50 = sub_1B7800828();
  v51 = *(v22 + 8);
  v51(v24, v21);
  v51(v27, v21);
  sub_1B7205418(v30, &unk_1EB994C70, &qword_1B7809800);
  if ((v50 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_46:
  v52 = v137[12];
  v54 = *(v139 + v52);
  v53 = *(v139 + v52 + 8);
  v56 = *(v139 + v52 + 16);
  v55 = *(v139 + v52 + 24);
  v57 = *(v139 + v52 + 32);
  v58 = *(v139 + v52 + 40);
  v59 = *(v139 + v52 + 48);
  v60 = (v138 + v52);
  v61 = *v60;
  v62 = v60[1];
  v63 = v60[2];
  v64 = v60[3];
  v65 = v60[4];
  v133 = v60[5];
  v135 = v60[6];
  v136 = v65;
  if (v53 == 1)
  {
    v66 = v61;
    v132 = v63;
    v134 = v64;
    v130 = 1;
    v67 = v55;
    v68 = v57;
    sub_1B760E054(v54, 1, v56, v55, v57, v58, v59);
    if (v62 == 1)
    {
      sub_1B760E054(v66, 1, v132, v134, v136, v133, v135);
      sub_1B760CBEC(v54, 1, v56, v67, v68, v58, v59);
      goto LABEL_56;
    }

    v131 = v66;
    v76 = v66;
    v74 = v133;
    v75 = v135;
    sub_1B760E054(v76, v62, v132, v134, v136, v133, v135);
    v70 = v130;
LABEL_52:
    sub_1B760CBEC(v54, v70, v56, v67, v68, v58, v59);
    sub_1B760CBEC(v131, v62, v132, v134, v136, v74, v75);
    goto LABEL_53;
  }

  v154[0] = v54;
  v154[1] = v53;
  v154[2] = v56;
  v154[3] = v55;
  v154[4] = v57;
  v154[5] = v58;
  v155 = v59;
  v131 = v61;
  if (v62 == 1)
  {
    v69 = v61;
    v70 = v53;
    v71 = v63;
    v67 = v55;
    v134 = v64;
    v68 = v57;
    sub_1B760E054(v54, v53, v56, v55, v57, v58, v59);
    v72 = v69;
    v132 = v71;
    v73 = v71;
    v74 = v133;
    v75 = v135;
    sub_1B760E054(v72, 1, v73, v134, v136, v133, v135);
    sub_1B760E054(v54, v70, v56, v67, v68, v58, v59);

    goto LABEL_52;
  }

  v152[0] = v61;
  v152[1] = v62;
  v152[2] = v63;
  v152[3] = v64;
  v79 = v133;
  v152[4] = v65;
  v152[5] = v133;
  v80 = v135;
  v153 = v135;
  v126 = v54;
  v81 = v54;
  v130 = v53;
  v82 = v56;
  v127 = v56;
  v83 = v63;
  v84 = v55;
  v129 = v55;
  v128 = v57;
  sub_1B760E054(v81, v53, v82, v55, v57, v58, v59);
  sub_1B760E054(v131, v62, v83, v64, v136, v79, v80);
  v85 = v126;
  v86 = v130;
  v87 = v127;
  v88 = v128;
  sub_1B760E054(v126, v130, v127, v84, v128, v58, v59);
  LODWORD(v136) = _s10FinanceKit5OrderV17ShippingRecipientV2eeoiySbAE_AEtFZ_0(v154, v152);
  v135 = v153;

  v135 = v155;

  sub_1B760CBEC(v85, v86, v87, v129, v88, v58, v59);
  if ((v136 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_56:
  v89 = v137[13];
  v90 = *(v19 + 48);
  v91 = v151;
  sub_1B7205588(v139 + v89, v151, &qword_1EB990828, &unk_1B781C5A0);
  sub_1B7205588(v138 + v89, v91 + v90, &qword_1EB990828, &unk_1B781C5A0);
  v92 = v149;
  v93 = *(v150 + 48);
  if (v93(v91, 1, v149) == 1)
  {
    if (v93(v91 + v90, 1, v92) == 1)
    {
      sub_1B7205418(v91, &qword_1EB990828, &unk_1B781C5A0);
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  sub_1B7205588(v91, v18, &qword_1EB990828, &unk_1B781C5A0);
  if (v93(v91 + v90, 1, v92) == 1)
  {
    sub_1B760EB3C(v18, type metadata accessor for Order.FulfillmentWindow);
LABEL_61:
    v47 = &qword_1EB990A40;
    v48 = &unk_1B780EB60;
    v49 = v91;
    goto LABEL_44;
  }

  v94 = v91 + v90;
  v95 = v143;
  sub_1B75E4FF8(v94, v143);
  v96 = _s10FinanceKit5OrderV17FulfillmentWindowO2eeoiySbAE_AEtFZ_0(v18, v95);
  sub_1B760EB3C(v95, type metadata accessor for Order.FulfillmentWindow);
  sub_1B760EB3C(v18, type metadata accessor for Order.FulfillmentWindow);
  sub_1B7205418(v91, &qword_1EB990828, &unk_1B781C5A0);
  if ((v96 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_63:
  v97 = v137[14];
  v98 = v145;
  v99 = *(v146 + 48);
  sub_1B7205588(v139 + v97, v145, &qword_1EB98EBD0, &unk_1B7809780);
  v100 = v98;
  sub_1B7205588(v138 + v97, v98 + v99, &qword_1EB98EBD0, &unk_1B7809780);
  v101 = *(v147 + 48);
  v102 = v98;
  v103 = v148;
  if (v101(v102, 1, v148) != 1)
  {
    v104 = v142;
    sub_1B7205588(v100, v142, &qword_1EB98EBD0, &unk_1B7809780);
    if (v101(v100 + v99, 1, v103) != 1)
    {
      v105 = v147;
      v106 = v141;
      (*(v147 + 32))(v141, v100 + v99, v103);
      sub_1B760EB9C(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v107 = sub_1B7800828();
      v108 = *(v105 + 8);
      v108(v106, v103);
      v108(v104, v103);
      sub_1B7205418(v100, &qword_1EB98EBD0, &unk_1B7809780);
      if ((v107 & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_70;
    }

    (*(v147 + 8))(v104, v103);
    goto LABEL_68;
  }

  if (v101(v100 + v99, 1, v103) != 1)
  {
LABEL_68:
    v47 = &qword_1EB98FCE0;
    v48 = &qword_1B7813550;
    v49 = v100;
    goto LABEL_44;
  }

  sub_1B7205418(v100, &qword_1EB98EBD0, &unk_1B7809780);
LABEL_70:
  v109 = v137[15];
  v110 = (v139 + v109);
  v111 = *(v139 + v109 + 8);
  v112 = (v138 + v109);
  if ((*v110 != *v112 || v111 != v112[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_53;
  }

  v113 = v137[16];
  v114 = *(v146 + 48);
  v115 = v144;
  sub_1B7205588(v139 + v113, v144, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(v138 + v113, v115 + v114, &qword_1EB98EBD0, &unk_1B7809780);
  if (v101(v115, 1, v148) == 1)
  {
    if (v101(v144 + v114, 1, v148) == 1)
    {
      sub_1B7205418(v144, &qword_1EB98EBD0, &unk_1B7809780);
LABEL_80:
      v77 = *(v139 + v137[17]) ^ *(v138 + v137[17]) ^ 1;
      return v77 & 1;
    }

    goto LABEL_78;
  }

  v116 = v144;
  sub_1B7205588(v144, v140, &qword_1EB98EBD0, &unk_1B7809780);
  if (v101(v116 + v114, 1, v148) == 1)
  {
    (*(v147 + 8))(v140, v148);
LABEL_78:
    v47 = &qword_1EB98FCE0;
    v48 = &qword_1B7813550;
    v49 = v144;
    goto LABEL_44;
  }

  v118 = v147;
  v117 = v148;
  v119 = v144;
  v120 = v144 + v114;
  v121 = v141;
  (*(v147 + 32))(v141, v120, v148);
  sub_1B760EB9C(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v122 = v140;
  v123 = sub_1B7800828();
  v124 = *(v118 + 8);
  v124(v121, v117);
  v124(v122, v117);
  sub_1B7205418(v119, &qword_1EB98EBD0, &unk_1B7809780);
  if (v123)
  {
    goto LABEL_80;
  }

LABEL_53:
  v77 = 0;
  return v77 & 1;
}

double sub_1B760E054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2 != 1)
  {
    v8 = a7;
  }

  return result;
}

unint64_t sub_1B760E0B8()
{
  result = qword_1EB9995D0;
  if (!qword_1EB9995D0)
  {
    result = swift_getWitnessTable(byte_1B784B6D8, &_s19ShippingFulfillmentV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9995D0);
  }

  return result;
}

unint64_t sub_1B760E10C()
{
  result = qword_1EB9995D8;
  if (!qword_1EB9995D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.ShippingStatus, &type metadata for Order.ShippingStatus, v0, v1);
    atomic_store(result, &qword_1EB9995D8);
  }

  return result;
}

unint64_t sub_1B760E160()
{
  result = qword_1EB9995E0;
  if (!qword_1EB9995E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.ShippingRecipient, &type metadata for Order.ShippingRecipient, v0, v1);
    atomic_store(result, &qword_1EB9995E0);
  }

  return result;
}

unint64_t sub_1B760E1B4()
{
  result = qword_1EB9995E8;
  if (!qword_1EB9995E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.ShippingType, &type metadata for Order.ShippingType, v0, v1);
    atomic_store(result, &qword_1EB9995E8);
  }

  return result;
}

unint64_t sub_1B760E208()
{
  result = qword_1EB9995F8;
  if (!qword_1EB9995F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.ShippingStatus, &type metadata for Order.ShippingStatus, v0, v1);
    atomic_store(result, &qword_1EB9995F8);
  }

  return result;
}

unint64_t sub_1B760E25C()
{
  result = qword_1EB999600;
  if (!qword_1EB999600)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.ShippingRecipient, &type metadata for Order.ShippingRecipient, v0, v1);
    atomic_store(result, &qword_1EB999600);
  }

  return result;
}

unint64_t sub_1B760E2B0()
{
  result = qword_1EB999608;
  if (!qword_1EB999608)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.ShippingType, &type metadata for Order.ShippingType, v0, v1);
    atomic_store(result, &qword_1EB999608);
  }

  return result;
}

void sub_1B760E380(uint64_t a1)
{
  sub_1B75E4A4C(319, &qword_1EB992E20, &type metadata for Order.LineItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B75E4A4C(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B760E548(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        sub_1B75E4A4C(319, &qword_1EB999620, &type metadata for Order.ShippingRecipient, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B760E548(319, &qword_1EB990A10, type metadata accessor for Order.FulfillmentWindow);
          if (v5 <= 0x3F)
          {
            sub_1B760E548(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
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

void sub_1B760E548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B760E5B0()
{
  result = qword_1EB999628;
  if (!qword_1EB999628)
  {
    result = swift_getWitnessTable(byte_1B784B6B0, &_s19ShippingFulfillmentV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999628);
  }

  return result;
}

unint64_t sub_1B760E608()
{
  result = qword_1EB999630;
  if (!qword_1EB999630)
  {
    result = swift_getWitnessTable(byte_1B784B620, &_s19ShippingFulfillmentV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999630);
  }

  return result;
}

unint64_t sub_1B760E660()
{
  result = qword_1EB999638;
  if (!qword_1EB999638)
  {
    result = swift_getWitnessTable(byte_1B784B648, &_s19ShippingFulfillmentV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999638);
  }

  return result;
}

uint64_t sub_1B760E6B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D657449656E696CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656972726163 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7882030 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78749D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xEB000000004C5255 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xE900000000000074 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B7886F70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xEC00000065746144 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7881AD0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4464657070696873 && a2 == 0xEB00000000657461 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x676E697070696873 && a2 == 0xEC00000065707954)
  {

    return 13;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1B760EB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B760EB9C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Order.ShippingRecipient.init(familyName:givenName:organizationName:address:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1B760EC38(uint64_t a1)
{
  v2 = sub_1B7611588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B760EC74(uint64_t a1)
{
  v2 = sub_1B7611588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B760ECB0()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 0x6575737369;
  if (v1 != 6)
  {
    v3 = 0x656C6C65636E6163;
  }

  v4 = 0x65726576696C6564;
  if (v1 != 4)
  {
    v4 = 0x64657070696873;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7961576568546E6FLL;
  if (v1 != 2)
  {
    v5 = 0x6544726F4674756FLL;
  }

  if (*v0)
  {
    v2 = 0x69737365636F7270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B760EDB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B76122A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B760EDD8(uint64_t a1)
{
  v2 = sub_1B7611534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B760EE14(uint64_t a1)
{
  v2 = sub_1B7611534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B760EE50(uint64_t a1)
{
  v2 = sub_1B7611684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B760EE8C(uint64_t a1)
{
  v2 = sub_1B7611684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B760EEC8(uint64_t a1)
{
  v2 = sub_1B76115DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B760EF04(uint64_t a1)
{
  v2 = sub_1B76115DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B760EF40(uint64_t a1)
{
  v2 = sub_1B761172C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B760EF7C(uint64_t a1)
{
  v2 = sub_1B761172C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B760EFB8(uint64_t a1)
{
  v2 = sub_1B76117D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B760EFF4(uint64_t a1)
{
  v2 = sub_1B76117D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B760F030(uint64_t a1)
{
  v2 = sub_1B76116D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B760F06C(uint64_t a1)
{
  v2 = sub_1B76116D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B760F0A8(uint64_t a1)
{
  v2 = sub_1B7611780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B760F0E4(uint64_t a1)
{
  v2 = sub_1B7611780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B760F120(uint64_t a1)
{
  v2 = sub_1B7611630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B760F15C(uint64_t a1)
{
  v2 = sub_1B7611630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.ShippingStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t Order.ShippingRecipient.familyName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Order.ShippingRecipient.givenName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Order.ShippingRecipient.organizationName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *Order.ShippingRecipient.address.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void Order.ShippingRecipient.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[6];
  if (v1[1])
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B7802318();
    if (v2)
    {
LABEL_3:
      sub_1B7802318();
      sub_1B7800798();
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_1B7802318();
      if (v4)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_1B7802318();
      return;
    }
  }

  sub_1B7802318();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1B7802318();
  sub_1B7800798();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_1B7802318();
  v5 = v4;
  sub_1B7801568();
}

uint64_t Order.ShippingRecipient.hashValue.getter()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1B78022F8();
  Order.ShippingRecipient.hash(into:)(v4);
  return sub_1B7802368();
}

uint64_t sub_1B760F44C()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1B78022F8();
  Order.ShippingRecipient.hash(into:)(v4);
  return sub_1B7802368();
}

uint64_t sub_1B760F4AC(uint64_t a1)
{
  v2 = *(v1 + 6);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  sub_1B78022F8();
  Order.ShippingRecipient.hash(into:)(v5);
  return sub_1B7802368();
}

uint64_t Order.ShippingStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999640, &qword_1B784B730);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999648, &qword_1B784B738);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999650, &qword_1B784B740);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999658, &qword_1B784B748);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999660, &qword_1B784B750);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999668, &qword_1B784B758);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v33 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999670, &qword_1B784B760);
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999678, &qword_1B784B768);
  v33 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999680, &qword_1B784B770);
  v20 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v21 = *v1;
  v22 = a1[3];
  v23 = a1;
  v25 = &v33 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1B7611534();
  sub_1B78023F8();
  v26 = (v20 + 8);
  if (v21 > 3)
  {
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v61 = 6;
        sub_1B76115DC();
        v28 = v48;
        v27 = v54;
        sub_1B7801ED8();
        v30 = v49;
        v29 = v50;
      }

      else
      {
        v62 = 7;
        sub_1B7611588();
        v28 = v51;
        v27 = v54;
        sub_1B7801ED8();
        v30 = v52;
        v29 = v53;
      }
    }

    else if (v21 == 4)
    {
      v59 = 4;
      sub_1B7611684();
      v28 = v42;
      v27 = v54;
      sub_1B7801ED8();
      v30 = v43;
      v29 = v44;
    }

    else
    {
      v60 = 5;
      sub_1B7611630();
      v28 = v45;
      v27 = v54;
      sub_1B7801ED8();
      v30 = v46;
      v29 = v47;
    }

    goto LABEL_16;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v57 = 2;
      sub_1B761172C();
      v28 = v36;
      v27 = v54;
      sub_1B7801ED8();
      v30 = v37;
      v29 = v38;
    }

    else
    {
      v58 = 3;
      sub_1B76116D8();
      v28 = v39;
      v27 = v54;
      sub_1B7801ED8();
      v30 = v40;
      v29 = v41;
    }

LABEL_16:
    (*(v30 + 8))(v28, v29);
    return (*v26)(v25, v27);
  }

  if (v21)
  {
    v56 = 1;
    sub_1B7611780();
    v31 = v54;
    sub_1B7801ED8();
    (*(v34 + 8))(v16, v35);
    return (*v26)(v25, v31);
  }

  v55 = 0;
  sub_1B76117D4();
  v27 = v54;
  sub_1B7801ED8();
  (*(v33 + 8))(v19, v17);
  return (*v26)(v25, v27);
}

uint64_t Order.ShippingStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9996D0, &qword_1B784B778);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9996D8, &qword_1B784B780);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9996E0, &qword_1B784B788);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9996E8, &qword_1B784B790);
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v57 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9996F0, &qword_1B784B798);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v79 = &v57 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9996F8, &qword_1B784B7A0);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v77 = &v57 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999700, &qword_1B784B7A8);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999708, &qword_1B784B7B0);
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999710, &unk_1B784B7B8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - v21;
  v23 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1B7611534();
  v24 = v84;
  sub_1B78023C8();
  if (!v24)
  {
    v58 = v18;
    v57 = v16;
    v59 = v15;
    v26 = v79;
    v25 = v80;
    v28 = v81;
    v27 = v82;
    v84 = v20;
    v29 = v83;
    v61 = v19;
    v60 = v22;
    v30 = sub_1B7801E98();
    v31 = (2 * *(v30 + 16)) | 1;
    v86 = v30;
    v87 = v30 + 32;
    v88 = 0;
    v89 = v31;
    v32 = sub_1B721CE58();
    if (v32 != 8 && v88 == v89 >> 1)
    {
      v90 = v32;
      if (v32 > 3u)
      {
        v43 = v61;
        v44 = v60;
        if (v32 > 5u)
        {
          v52 = v84;
          if (v32 == 6)
          {
            v91 = 6;
            sub_1B76115DC();
            sub_1B7801D38();
            (*(v73 + 8))(v27, v74);
          }

          else
          {
            v91 = 7;
            sub_1B7611588();
            v56 = v78;
            sub_1B7801D38();
            (*(v75 + 8))(v56, v76);
          }

          (*(v52 + 8))(v44, v43);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        v45 = v84;
        if (v32 == 4)
        {
          v91 = 4;
          sub_1B7611684();
          sub_1B7801D38();
          v46 = v69;
          v47 = v70;
        }

        else
        {
          v91 = 5;
          sub_1B7611630();
          v25 = v28;
          sub_1B7801D38();
          v47 = v71;
          v46 = v72;
        }

        (*(v47 + 8))(v25, v46);
        (*(v45 + 8))(v44, v43);
      }

      else
      {
        if (v32 > 1u)
        {
          v48 = v84;
          if (v32 == 2)
          {
            v91 = 2;
            sub_1B761172C();
            v49 = v77;
            v50 = v61;
            v51 = v60;
            sub_1B7801D38();
            (*(v65 + 8))(v49, v66);
          }

          else
          {
            v91 = 3;
            sub_1B76116D8();
            v50 = v61;
            v51 = v60;
            sub_1B7801D38();
            (*(v67 + 8))(v26, v68);
          }

          (*(v48 + 8))(v51, v50);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        if (v32)
        {
          v91 = 1;
          sub_1B7611780();
          v53 = v59;
          v54 = v61;
          v55 = v60;
          sub_1B7801D38();
          (*(v63 + 8))(v53, v64);
          (*(v84 + 8))(v55, v54);
        }

        else
        {
          v91 = 0;
          sub_1B76117D4();
          v34 = v58;
          v35 = v61;
          v36 = v60;
          sub_1B7801D38();
          (*(v62 + 8))(v34, v57);
          (*(v84 + 8))(v36, v35);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v33 = v90;
      return __swift_destroy_boxed_opaque_existential_1(v85);
    }

    v37 = sub_1B7801B18();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
    *v39 = &type metadata for Order.ShippingStatus;
    v40 = v61;
    v41 = v60;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v84 + 8))(v41, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

unint64_t sub_1B76107F0()
{
  v1 = 0x614E796C696D6166;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x73736572646461;
  }

  if (*v0)
  {
    v1 = 0x6D614E6E65766967;
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

uint64_t sub_1B7610878@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7612550(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B76108A0(uint64_t a1)
{
  v2 = sub_1B7611828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76108DC(uint64_t a1)
{
  v2 = sub_1B7611828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.ShippingRecipient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999718, &unk_1B784B7C8);
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  v6 = v1[3];
  v11[3] = v1[2];
  v11[2] = v6;
  v7 = v1[5];
  v11[1] = v1[4];
  v11[0] = v7;
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7611828();
  sub_1B78023F8();
  if (v8)
  {
    RawAddress.init(_:)(v8, v20);
  }

  else
  {
    *v20 = 1;
    memset(&v20[8], 0, 96);
  }

  LOBYTE(v13) = 0;
  v9 = v11[4];
  sub_1B7801EF8();
  if (!v9)
  {
    LOBYTE(v13) = 1;
    sub_1B7801EF8();
    LOBYTE(v13) = 2;
    sub_1B7801EF8();
    v17 = *&v20[64];
    v18 = *&v20[80];
    v19 = *&v20[96];
    v13 = *v20;
    v14 = *&v20[16];
    v16 = *&v20[48];
    v15 = *&v20[32];
    v12 = 3;
    sub_1B7304418();
    sub_1B7801F38();
  }

  (*(v21 + 8))(v5, v3);
  return sub_1B761187C(v20);
}

void Order.ShippingRecipient.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999728, &qword_1B784B7D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B7611828();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    v10 = v6;
    v35 = 3;
    sub_1B73043C4();
    sub_1B7801DB8();
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v28 = v36;
    v29 = v37;
    v30 = v38;
    v31 = v39;
    LOBYTE(v25[0]) = 0;
    v11 = sub_1B7801D78();
    v13 = v12;
    v24 = v11;
    LOBYTE(v25[0]) = 1;
    v22 = sub_1B7801D78();
    v23 = v14;
    v27 = 2;
    v15 = sub_1B7801D78();
    v21 = v16;
    if (v28 == 1)
    {
      (*(v10 + 8))(v8, v5);
      v17 = 0;
    }

    else
    {
      v25[4] = v32;
      v25[5] = v33;
      v26 = v34;
      v25[0] = v28;
      v25[1] = v29;
      v25[2] = v30;
      v25[3] = v31;
      sub_1B7205540(0, &qword_1EB990D70, 0x1E695CF30);
      v17 = CNMutablePostalAddress.init(rawAddress:)(v25);
      (*(v10 + 8))(v8, v5);
    }

    v18 = v23;
    *a2 = v24;
    a2[1] = v13;
    v19 = v21;
    a2[2] = v22;
    a2[3] = v18;
    a2[4] = v15;
    a2[5] = v19;
    a2[6] = v17;
    v20 = v17;

    __swift_destroy_boxed_opaque_existential_1(v43);
  }
}

uint64_t Order.ShippingRecipient.formattedName.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DF8, &qword_1B784B7E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1B77FEEA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 56))(v2, 1, 1, v3);

  sub_1B77FEE78();
  v7 = sub_1B77FEE98();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    return 0;
  }

  return v7;
}

void Order.ShippingRecipient.formatted.getter()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[6];
  if (v3)
  {
    v4 = [objc_opt_self() stringFromPostalAddress:v3 style:0];
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v21 = Order.ShippingRecipient.formattedName.getter();
  v22 = v8;
  v23 = v2;
  v24 = v1;
  v25 = v5;
  v26 = v7;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v9 <= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 + 1;
  v13 = 16 * v9 + 40;
  while (v9 != 3)
  {
    if (v12 == ++v9)
    {
      __break(1u);
      return;
    }

    v14 = v13 + 16;
    v15 = *&v20[v13];
    v13 += 16;
    if (v15)
    {
      v16 = *&v20[v14 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1B723E180(0, *(v10 + 2) + 1, 1, v10);
      }

      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (v18 >= v17 >> 1)
      {
        v10 = sub_1B723E180((v17 > 1), v18 + 1, 1, v10);
      }

      *(v10 + 2) = v18 + 1;
      v19 = &v10[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D98, &unk_1B781F4F0);
  swift_arrayDestroy();
  if (*(v10 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
    sub_1B723E0F4();
    sub_1B78007C8();
  }
}

uint64_t _s10FinanceKit5OrderV17ShippingRecipientV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v12 || (v4 != v10 || v6 != v12) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13 || (v5 != v11 || v7 != v13) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (v14)
    {
      sub_1B7205540(0, &qword_1EDAFAF20, 0x1E695CF60);
      v15 = v14;
      v16 = v8;
      v17 = sub_1B7801558();

      if (v17)
      {
        return 1;
      }
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B7611534()
{
  result = qword_1EB999688;
  if (!qword_1EB999688)
  {
    result = swift_getWitnessTable(asc_1B784C194, &_s14ShippingStatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999688);
  }

  return result;
}

unint64_t sub_1B7611588()
{
  result = qword_1EB999690;
  if (!qword_1EB999690)
  {
    result = swift_getWitnessTable(aU_21, &_s14ShippingStatusO19CancelledCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999690);
  }

  return result;
}

unint64_t sub_1B76115DC()
{
  result = qword_1EB999698;
  if (!qword_1EB999698)
  {
    result = swift_getWitnessTable(byte_1B784C0F4, &_s14ShippingStatusO15IssueCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999698);
  }

  return result;
}

unint64_t sub_1B7611630()
{
  result = qword_1EB9996A0;
  if (!qword_1EB9996A0)
  {
    result = swift_getWitnessTable(byte_1B784C0A4, &_s14ShippingStatusO17ShippedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9996A0);
  }

  return result;
}

unint64_t sub_1B7611684()
{
  result = qword_1EB9996A8;
  if (!qword_1EB9996A8)
  {
    result = swift_getWitnessTable(aE_26, &_s14ShippingStatusO19DeliveredCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9996A8);
  }

  return result;
}

unint64_t sub_1B76116D8()
{
  result = qword_1EB9996B0;
  if (!qword_1EB9996B0)
  {
    result = swift_getWitnessTable(byte_1B784C004, &_s14ShippingStatusO24OutForDeliveryCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9996B0);
  }

  return result;
}

unint64_t sub_1B761172C()
{
  result = qword_1EB9996B8;
  if (!qword_1EB9996B8)
  {
    result = swift_getWitnessTable(byte_1B784BFB4, &_s14ShippingStatusO18OnTheWayCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9996B8);
  }

  return result;
}

unint64_t sub_1B7611780()
{
  result = qword_1EB9996C0;
  if (!qword_1EB9996C0)
  {
    result = swift_getWitnessTable(aU_22, &_s14ShippingStatusO20ProcessingCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9996C0);
  }

  return result;
}

unint64_t sub_1B76117D4()
{
  result = qword_1EB9996C8;
  if (!qword_1EB9996C8)
  {
    result = swift_getWitnessTable(byte_1B784BF14, &_s14ShippingStatusO14OpenCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9996C8);
  }

  return result;
}

unint64_t sub_1B7611828()
{
  result = qword_1EB999720;
  if (!qword_1EB999720)
  {
    result = swift_getWitnessTable(byte_1B784BEC4, &_s17ShippingRecipientV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999720);
  }

  return result;
}

uint64_t sub_1B761187C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F40, &unk_1B78347E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B76118E8()
{
  result = qword_1EB999730;
  if (!qword_1EB999730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.ShippingStatus, &type metadata for Order.ShippingStatus, v0, v1);
    atomic_store(result, &qword_1EB999730);
  }

  return result;
}

unint64_t sub_1B7611940()
{
  result = qword_1EB999738;
  if (!qword_1EB999738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.ShippingRecipient, &type metadata for Order.ShippingRecipient, v0, v1);
    atomic_store(result, &qword_1EB999738);
  }

  return result;
}

uint64_t sub_1B76119A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1B7611A00(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B7611B14()
{
  result = qword_1EB999740;
  if (!qword_1EB999740)
  {
    result = swift_getWitnessTable(aE_27, &_s14ShippingStatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999740);
  }

  return result;
}

unint64_t sub_1B7611B6C()
{
  result = qword_1EB999748;
  if (!qword_1EB999748)
  {
    result = swift_getWitnessTable(byte_1B784BE9C, &_s17ShippingRecipientV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999748);
  }

  return result;
}

unint64_t sub_1B7611BC4()
{
  result = qword_1EB999750;
  if (!qword_1EB999750)
  {
    result = swift_getWitnessTable(byte_1B784BE0C, &_s17ShippingRecipientV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999750);
  }

  return result;
}

unint64_t sub_1B7611C1C()
{
  result = qword_1EB999758;
  if (!qword_1EB999758)
  {
    result = swift_getWitnessTable(byte_1B784BE34, &_s17ShippingRecipientV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999758);
  }

  return result;
}

unint64_t sub_1B7611C74()
{
  result = qword_1EB999760;
  if (!qword_1EB999760)
  {
    result = swift_getWitnessTable(byte_1B784BD04, &_s14ShippingStatusO14OpenCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999760);
  }

  return result;
}

unint64_t sub_1B7611CCC()
{
  result = qword_1EB999768;
  if (!qword_1EB999768)
  {
    result = swift_getWitnessTable(byte_1B784BD2C, &_s14ShippingStatusO14OpenCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999768);
  }

  return result;
}

unint64_t sub_1B7611D24()
{
  result = qword_1EB999770;
  if (!qword_1EB999770)
  {
    result = swift_getWitnessTable(asc_1B784BCB4, &_s14ShippingStatusO20ProcessingCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999770);
  }

  return result;
}

unint64_t sub_1B7611D7C()
{
  result = qword_1EB999778;
  if (!qword_1EB999778)
  {
    result = swift_getWitnessTable(aU_23, &_s14ShippingStatusO20ProcessingCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999778);
  }

  return result;
}

unint64_t sub_1B7611DD4()
{
  result = qword_1EB999780;
  if (!qword_1EB999780)
  {
    result = swift_getWitnessTable(byte_1B784BC64, &_s14ShippingStatusO18OnTheWayCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999780);
  }

  return result;
}

unint64_t sub_1B7611E2C()
{
  result = qword_1EB999788;
  if (!qword_1EB999788)
  {
    result = swift_getWitnessTable(byte_1B784BC8C, &_s14ShippingStatusO18OnTheWayCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999788);
  }

  return result;
}

unint64_t sub_1B7611E84()
{
  result = qword_1EB999790;
  if (!qword_1EB999790)
  {
    result = swift_getWitnessTable(byte_1B784BC14, &_s14ShippingStatusO24OutForDeliveryCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999790);
  }

  return result;
}

unint64_t sub_1B7611EDC()
{
  result = qword_1EB999798;
  if (!qword_1EB999798)
  {
    result = swift_getWitnessTable(byte_1B784BC3C, &_s14ShippingStatusO24OutForDeliveryCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999798);
  }

  return result;
}

unint64_t sub_1B7611F34()
{
  result = qword_1EB9997A0;
  if (!qword_1EB9997A0)
  {
    result = swift_getWitnessTable(asc_1B784BBC4, &_s14ShippingStatusO19DeliveredCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9997A0);
  }

  return result;
}

unint64_t sub_1B7611F8C()
{
  result = qword_1EB9997A8;
  if (!qword_1EB9997A8)
  {
    result = swift_getWitnessTable(aE_28, &_s14ShippingStatusO19DeliveredCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9997A8);
  }

  return result;
}

unint64_t sub_1B7611FE4()
{
  result = qword_1EB9997B0;
  if (!qword_1EB9997B0)
  {
    result = swift_getWitnessTable(asc_1B784BB74, &_s14ShippingStatusO17ShippedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9997B0);
  }

  return result;
}

unint64_t sub_1B761203C()
{
  result = qword_1EB9997B8;
  if (!qword_1EB9997B8)
  {
    result = swift_getWitnessTable(byte_1B784BB9C, &_s14ShippingStatusO17ShippedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9997B8);
  }

  return result;
}

unint64_t sub_1B7612094()
{
  result = qword_1EB9997C0;
  if (!qword_1EB9997C0)
  {
    result = swift_getWitnessTable(byte_1B784BB24, &_s14ShippingStatusO15IssueCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9997C0);
  }

  return result;
}

unint64_t sub_1B76120EC()
{
  result = qword_1EB9997C8;
  if (!qword_1EB9997C8)
  {
    result = swift_getWitnessTable(byte_1B784BB4C, &_s14ShippingStatusO15IssueCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9997C8);
  }

  return result;
}

unint64_t sub_1B7612144()
{
  result = qword_1EB9997D0;
  if (!qword_1EB9997D0)
  {
    result = swift_getWitnessTable(byte_1B784BAD4, &_s14ShippingStatusO19CancelledCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9997D0);
  }

  return result;
}

unint64_t sub_1B761219C()
{
  result = qword_1EB9997D8;
  if (!qword_1EB9997D8)
  {
    result = swift_getWitnessTable(a5_15, &_s14ShippingStatusO19CancelledCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9997D8);
  }

  return result;
}

unint64_t sub_1B76121F4()
{
  result = qword_1EB9997E0;
  if (!qword_1EB9997E0)
  {
    result = swift_getWitnessTable(byte_1B784BD54, &_s14ShippingStatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9997E0);
  }

  return result;
}

unint64_t sub_1B761224C()
{
  result = qword_1EB9997E8;
  if (!qword_1EB9997E8)
  {
    result = swift_getWitnessTable(byte_1B784BD7C, &_s14ShippingStatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9997E8);
  }

  return result;
}

uint64_t sub_1B76122A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEA0000000000676ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961576568546E6FLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6544726F4674756FLL && a2 == 0xEE0079726576696CLL || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726576696C6564 && a2 == 0xE900000000000064 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64657070696873 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575737369 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B7612550(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7881130 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B76126CC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t BankConnectRefreshReminderDetecting.accountsWithinWindows(_:withUserPreferences:forInstitutionIds:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v15 = (*(a6 + 16))(a1, a2, v14, a3, a4, v18, a6);
  (*(v12 + 8))(v14, v11);
  return v15;
}

uint64_t BankConnectRefreshReminderDetecting.accountsInConfirmationWindowRequiringReminder(forInstitutionIds:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v12 = (*(a4 + 24))(v11, a1, a2, a3, a4);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t BankConnectRefreshReminderDetector.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B78000B8();
  v3 = __swift_project_value_buffer(v2, qword_1EDAF65B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t BankConnectRefreshReminderDetector.isAccountSubjectToRefreshReminders(_:context:)(uint64_t a1, uint64_t a2)
{
  sub_1B7612B8C();
  if (!v2)
  {
    v5 = v4;
    v6 = type metadata accessor for InternalAccount(0);
    v7 = a1 + *(v6 + 20);
    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    v12[0] = v9;
    v12[1] = v8;
    MEMORY[0x1EEE9AC00](v6);
    v11[2] = v12;
    LOBYTE(a1) = sub_1B76126CC(sub_1B7293360, v11, v5);
  }

  return a1 & 1;
}

void sub_1B7612B8C()
{
  type metadata accessor for ManagedInstitution();
  v1 = [swift_getObjCClassFromMetadata() entityName];
  if (!v1)
  {
    sub_1B7800868();
    v1 = sub_1B7800838();
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  refreshed = _s10FinanceKit18ManagedInstitutionC39predicateForRefreshReminderInstitutionsSo11NSPredicateCyFZ_0();
  [v2 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50, &qword_1B780C3E0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = v5;
  *(v4 + 32) = 25705;
  *(v4 + 40) = 0xE200000000000000;
  v6 = sub_1B7800C18();

  [v2 setPropertiesToFetch_];

  [v2 setResultType_];
  sub_1B7205540(0, &qword_1EB994458, 0x1E695DF20);
  v7 = sub_1B7801498();
  if (v0)
  {

    return;
  }

  v8 = v7;
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_32:
    v10 = sub_1B7801958();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_33:
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_33;
  }

LABEL_7:
  v11 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v23 = v2;
  do
  {
    v2 = v11;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1B8CA5DC0](v2, v8);
      }

      else
      {
        if (v2 >= *(v9 + 16))
        {
          goto LABEL_31;
        }

        v12 = *(v8 + 8 * v2 + 32);
      }

      v13 = v12;
      v11 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      *&v24 = 25705;
      *(&v24 + 1) = 0xE200000000000000;
      v14 = [v12 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v14)
      {
        sub_1B7801848();
        swift_unknownObjectRelease();
      }

      else
      {

        v24 = 0u;
        v25 = 0u;
      }

      v26[0] = v24;
      v26[1] = v25;
      if (*(&v25 + 1))
      {
        break;
      }

      sub_1B726990C(v26);
LABEL_10:
      ++v2;
      if (v11 == v10)
      {
        v2 = v23;
        goto LABEL_34;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    v15 = v28;
    if (!v28)
    {
      goto LABEL_10;
    }

    v16 = v27;
    v17 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B723E180(0, *(v17 + 2) + 1, 1, v17);
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    v29 = v17;
    if (v20 >= v19 >> 1)
    {
      v29 = sub_1B723E180((v19 > 1), v20 + 1, 1, v29);
    }

    v21 = v29;
    *(v29 + 2) = v20 + 1;
    v22 = &v21[16 * v20];
    *(v22 + 4) = v16;
    *(v22 + 5) = v15;
    v2 = v23;
  }

  while (v11 != v10);
LABEL_34:
}

void *BankConnectRefreshReminderDetector.accountsWithinWindows(_:withUserPreferences:asOf:forInstitutionIds:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = v6;
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v10 = type metadata accessor for InternalAccount(0);
  v49 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Institution(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (v47 - v18);
  v20 = sub_1B7613564(a5);
  if (v6)
  {
    return v5;
  }

  v21 = v20;
  v55 = v17;
  v56 = v14;
  v47[2] = v5;
  v48 = v12;
  if (*(a4 + 16))
  {
    v47[1] = a5;
    v54 = *(v20 + 16);
    if (v54)
    {
      v22 = 0;
      v23 = MEMORY[0x1E69E7CC0];
      v24 = v56;
      v53 = v20;
      while (v22 < *(v21 + 16))
      {
        v12 = ((*(v24 + 80) + 32) & ~*(v24 + 80));
        a5 = *(v24 + 72);
        v25 = sub_1B7616E28(&v12[v21 + a5 * v22], v19, type metadata accessor for Institution);
        v26 = v19[1];
        v58[0] = *v19;
        v58[1] = v26;
        MEMORY[0x1EEE9AC00](v25);
        v47[-2] = v58;
        v27 = v7;
        if (sub_1B76126CC(sub_1B72936E4, &v47[-4], a4))
        {
          sub_1B7616BE8(v19, v55, type metadata accessor for Institution);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B71FE0B0(0, *(v23 + 16) + 1, 1);
            v23 = v59;
          }

          v30 = *(v23 + 16);
          v29 = *(v23 + 24);
          v31 = v55;
          if (v30 >= v29 >> 1)
          {
            sub_1B71FE0B0((v29 > 1), v30 + 1, 1);
            v31 = v55;
            v23 = v59;
          }

          *(v23 + 16) = v30 + 1;
          sub_1B7616BE8(v31, &v12[v23 + v30 * a5], type metadata accessor for Institution);
          v7 = v27;
          v21 = v53;
        }

        else
        {
          sub_1B7616E90(v19, type metadata accessor for Institution);
        }

        ++v22;
        v24 = v56;
        if (v54 == v22)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      v41 = sub_1B7801958();
      v42 = v49;
      if (!v41)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v21 = v23;
  }

  MEMORY[0x1EEE9AC00](v20);
  v47[-4] = v32;
  v47[-3] = v33;
  v47[-2] = v35;
  v47[-1] = v34;
  sub_1B75EC8E4(sub_1B7616BC4, &v47[-6], v21);

  type metadata accessor for ManagedInternalAccount();
  v57.receiver = swift_getObjCClassFromMetadata();
  v57.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v12 = objc_msgSendSuper2(&v57, sel_fetchRequest);
  v36 = sub_1B7800C18();
  [v12 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  v37 = sub_1B7800C18();

  v38 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v12 setPredicate_];
  v39 = sub_1B7801498();
  a4 = v48;
  a5 = v39;
  v56 = 0;
  if (v39 >> 62)
  {
    goto LABEL_31;
  }

  v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = v49;
  if (!v41)
  {
LABEL_32:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_21:
  v55 = v12;
  v58[0] = MEMORY[0x1E69E7CC0];
  result = sub_1B71FD914(0, v41 & ~(v41 >> 63), 0);
  if ((v41 & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v5 = v58[0];
    do
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x1B8CA5DC0](v43, a5);
      }

      else
      {
        v44 = *(a5 + 8 * v43 + 32);
      }

      InternalAccount.init(_:)(v44, a4);
      v58[0] = v5;
      v46 = *(v5 + 16);
      v45 = *(v5 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1B71FD914((v45 > 1), v46 + 1, 1);
        v5 = v58[0];
      }

      ++v43;
      *(v5 + 16) = v46 + 1;
      sub_1B7616BE8(a4, v5 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v46, type metadata accessor for InternalAccount);
    }

    while (v41 != v43);

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1B7613564(uint64_t a1)
{
  v3 = type metadata accessor for Institution(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInstitution();
  v18.receiver = swift_getObjCClassFromMetadata();
  v18.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedInstitution;
  v7 = objc_msgSendSuper2(&v18, sel_fetchRequest);
  refreshed = _s10FinanceKit18ManagedInstitutionC39predicateForRefreshReminderInstitutionsSo11NSPredicateCyFZ_0();
  [v7 setPredicate_];

  v9 = sub_1B7801498();
  if (v1)
  {

    return a1;
  }

  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_15:

    return MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1B7801958();
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_5:
  v17[0] = v7;
  v17[1] = 0;
  v19 = MEMORY[0x1E69E7CC0];
  result = sub_1B71FE0B0(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    a1 = v19;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1B8CA5DC0](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      Institution.init(_:)(v14, v6);
      v19 = a1;
      v16 = *(a1 + 16);
      v15 = *(a1 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1B71FE0B0((v15 > 1), v16 + 1, 1);
        a1 = v19;
      }

      ++v13;
      *(a1 + 16) = v16 + 1;
      sub_1B7616BE8(v6, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, type metadata accessor for Institution);
    }

    while (v11 != v13);

    return a1;
  }

  __break(1u);
  return result;
}

void sub_1B76137D8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v24 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B781E650;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7807CD0;
  v12 = *a1;
  v11 = a1[1];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1B721FF04();
  *(v10 + 32) = v12;
  *(v10 + 40) = v11;

  *(v9 + 32) = sub_1B78010E8();
  *(v9 + 40) = sub_1B7614930(a4);
  v21 = a2;
  v22 = a1;
  v23 = a5;
  sub_1B75ECA28(sub_1B7616EF0, v20, a3);
  v13 = sub_1B7800C18();

  v14 = objc_opt_self();
  v15 = [v14 orPredicateWithSubpredicates_];

  *(v9 + 48) = v15;
  v16 = sub_1B7800C18();

  v17 = [v14 andPredicateWithSubpredicates_];

  *v24 = v17;
}

void *BankConnectRefreshReminderDetector.accountsInConfirmationWindowRequiringReminder(asOf:forInstitutionIds:context:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v4;
  v49 = a1;
  v8 = type metadata accessor for InternalAccount(0);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Institution(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v44 - v16);
  v18 = sub_1B7613564(a3);
  if (v4)
  {
    return v3;
  }

  v19 = v18;
  v52 = v15;
  v53 = v12;
  v47 = v10;
  v50 = a2;
  if (*(a2 + 16))
  {
    v45 = v3;
    v46 = a3;
    v51 = *(v18 + 16);
    if (v51)
    {
      v20 = 0;
      v21 = MEMORY[0x1E69E7CC0];
      v22 = v50;
      v23 = v53;
      while (v20 < *(v19 + 16))
      {
        v10 = ((*(v23 + 80) + 32) & ~*(v23 + 80));
        a3 = *(v23 + 72);
        v24 = sub_1B7616E28(&v10[v19 + a3 * v20], v17, type metadata accessor for Institution);
        v25 = v17[1];
        v55[0] = *v17;
        v55[1] = v25;
        MEMORY[0x1EEE9AC00](v24);
        *(&v44 - 2) = v55;
        v26 = v5;
        if (sub_1B76126CC(sub_1B72936E4, (&v44 - 4), v22))
        {
          sub_1B7616BE8(v17, v52, type metadata accessor for Institution);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B71FE0B0(0, *(v21 + 16) + 1, 1);
            v21 = v56;
          }

          v29 = *(v21 + 16);
          v28 = *(v21 + 24);
          v30 = v52;
          if (v29 >= v28 >> 1)
          {
            sub_1B71FE0B0((v28 > 1), v29 + 1, 1);
            v30 = v52;
            v21 = v56;
          }

          *(v21 + 16) = v29 + 1;
          sub_1B7616BE8(v30, &v10[v21 + v29 * a3], type metadata accessor for Institution);
          v5 = v26;
          v22 = v50;
        }

        else
        {
          sub_1B7616E90(v17, type metadata accessor for Institution);
        }

        ++v20;
        v23 = v53;
        if (v51 == v20)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      v37 = sub_1B7801958();
      v39 = v47;
      v38 = v48;
      if (!v37)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v19 = v21;
    v3 = v45;
  }

  MEMORY[0x1EEE9AC00](v18);
  *(&v44 - 2) = v3;
  *(&v44 - 1) = v31;
  sub_1B75EC8E4(sub_1B7616C50, (&v44 - 4), v19);

  type metadata accessor for ManagedInternalAccount();
  v54.receiver = swift_getObjCClassFromMetadata();
  v54.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v10 = objc_msgSendSuper2(&v54, sel_fetchRequest);
  v32 = sub_1B7800C18();
  [v10 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  v33 = sub_1B7800C18();

  v34 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v10 setPredicate_];
  v35 = sub_1B7801498();
  a3 = v35;
  v53 = 0;
  if (v35 >> 62)
  {
    goto LABEL_31;
  }

  v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v39 = v47;
  v38 = v48;
  if (!v37)
  {
LABEL_32:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_21:
  v52 = v10;
  v55[0] = MEMORY[0x1E69E7CC0];
  result = sub_1B71FD914(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    v3 = v55[0];
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1B8CA5DC0](v40, a3);
      }

      else
      {
        v41 = *(a3 + 8 * v40 + 32);
      }

      InternalAccount.init(_:)(v41, v39);
      v55[0] = v3;
      v43 = *(v3 + 16);
      v42 = *(v3 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1B71FD914((v42 > 1), v43 + 1, 1);
        v3 = v55[0];
      }

      ++v40;
      *(v3 + 16) = v43 + 1;
      sub_1B7616BE8(v39, v3 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v43, type metadata accessor for InternalAccount);
    }

    while (v37 != v40);

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1B7613FD8(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B781E650;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v7 = *a1;
  v6 = a1[1];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B721FF04();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  *(v4 + 32) = sub_1B78010E8();
  *(v4 + 40) = sub_1B7614930(&unk_1F2F45FA8);
  *(v4 + 48) = sub_1B7615E48(a1, a2);
  v8 = sub_1B7800C18();

  v9 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v9;
}

void *BankConnectRefreshReminderDetector.accountsWithRefreshWindowSet(forInstitutionIds:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v70 = a1;
  v6 = type metadata accessor for InternalAccount(0);
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Institution(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v63 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v63 - v17);
  v19 = sub_1B7613564(a2);
  v20 = v3;
  if (v3)
  {
    return v2;
  }

  v69 = v16;
  v63[3] = v2;
  v64 = a2;
  v71 = v13;
  v65 = v8;
  v21 = v66;
  if (*(v70 + 16))
  {
    v68 = v19[2];
    if (v68)
    {
      v22 = 0;
      v23 = MEMORY[0x1E69E7CC0];
      v67 = v10;
      while (v22 < v19[2])
      {
        v4 = ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v16 = *(v10 + 72);
        v24 = v19;
        v25 = sub_1B7616E28(v4 + v19 + v16 * v22, v18, type metadata accessor for Institution);
        v26 = v18[1];
        v73[0] = *v18;
        v73[1] = v26;
        MEMORY[0x1EEE9AC00](v25);
        v63[-2] = v73;
        if (sub_1B76126CC(sub_1B72936E4, &v63[-4], v70))
        {
          sub_1B7616BE8(v18, v69, type metadata accessor for Institution);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B71FE0B0(0, v23[2] + 1, 1);
            v23 = v74;
          }

          v29 = v23[2];
          v28 = v23[3];
          if (v29 >= v28 >> 1)
          {
            sub_1B71FE0B0((v28 > 1), v29 + 1, 1);
            v23 = v74;
          }

          v23[2] = v29 + 1;
          sub_1B7616BE8(v69, v4 + v23 + v29 * v16, type metadata accessor for Institution);
          v21 = v66;
        }

        else
        {
          sub_1B7616E90(v18, type metadata accessor for Institution);
        }

        ++v22;
        v19 = v24;
        v10 = v67;
        if (v68 == v22)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v30 = v10;

    v31 = v23;
    a2 = v64;
  }

  else
  {
    v30 = v10;
    v31 = v19;
  }

  v70 = 0;
  v32 = type metadata accessor for ManagedInternalAccount();
  v72.receiver = swift_getObjCClassFromMetadata();
  v72.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v33 = objc_msgSendSuper2(&v72, sel_fetchRequest);
  v34 = sub_1B7800C18();
  v69 = v33;
  [v33 setRelationshipKeyPathsForPrefetching_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1B781E650;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B7807CD0;
  v36 = v31[2];
  if (v36)
  {
    v63[0] = v35;
    v63[1] = v32;
    v73[0] = MEMORY[0x1E69E7CC0];
    v37 = v31;
    sub_1B71FDB50(0, v36, 0);
    v38 = v73[0];
    v39 = v30;
    v40 = *(v30 + 80);
    v63[2] = v37;
    v41 = v37 + ((v40 + 32) & ~v40);
    v42 = *(v39 + 72);
    v43 = v71;
    do
    {
      sub_1B7616E28(v41, v43, type metadata accessor for Institution);
      v45 = *v43;
      v44 = v43[1];

      sub_1B7616E90(v43, type metadata accessor for Institution);
      v73[0] = v38;
      v47 = *(v38 + 16);
      v46 = *(v38 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1B71FDB50((v46 > 1), v47 + 1, 1);
        v38 = v73[0];
      }

      *(v38 + 16) = v47 + 1;
      v48 = v38 + 16 * v47;
      *(v48 + 32) = v45;
      *(v48 + 40) = v44;
      v41 += v42;
      --v36;
      v43 = v71;
    }

    while (v36);

    v21 = v66;
    v49 = v64;
    v35 = v63[0];
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
    v49 = a2;
  }

  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  *(v35 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
  *(v35 + 64) = sub_1B7220068();
  *(v35 + 32) = v38;
  v50 = sub_1B78010E8();
  v51 = v68;
  *(v68 + 32) = v50;
  v20 = MEMORY[0x1E69E7CC0];
  *(v51 + 40) = sub_1B78010E8();
  *(v51 + 48) = sub_1B7614930(&unk_1F2F45F20);
  v52 = sub_1B7800C18();

  v4 = [objc_opt_self() andPredicateWithSubpredicates_];

  v18 = v69;
  [v69 setPredicate_];
  v2 = v49;
  v53 = v70;
  v54 = sub_1B7801498();
  v70 = v53;
  if (v53)
  {

    return v2;
  }

  v16 = v54;
  if (v54 >> 62)
  {
LABEL_39:
    v56 = sub_1B7801958();
    if (!v56)
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v56)
  {
LABEL_40:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_29:
  v71 = v4;
  v57 = v21;
  v73[0] = v20;
  result = sub_1B71FD914(0, v56 & ~(v56 >> 63), 0);
  if ((v56 & 0x8000000000000000) == 0)
  {
    v58 = 0;
    v2 = v73[0];
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x1B8CA5DC0](v58, v16);
      }

      else
      {
        v59 = *(v16 + 8 * v58 + 32);
      }

      v60 = v65;
      InternalAccount.init(_:)(v59, v65);
      v73[0] = v2;
      v62 = *(v2 + 16);
      v61 = *(v2 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1B71FD914((v61 > 1), v62 + 1, 1);
        v2 = v73[0];
      }

      ++v58;
      *(v2 + 16) = v62 + 1;
      sub_1B7616BE8(v60, v2 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v62, type metadata accessor for InternalAccount);
    }

    while (v56 != v58);

    return v2;
  }

  __break(1u);
  return result;
}

id sub_1B7614930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7801B98();
    sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
    v3 = (a1 + 32);
    v4 = MEMORY[0x1E69E7290];
    v5 = MEMORY[0x1E69E72E8];
    do
    {
      v6 = *v3++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1B7807CD0;
      *(v7 + 56) = v4;
      *(v7 + 64) = v5;
      *(v7 + 32) = v6;
      sub_1B78010E8();
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      --v1;
    }

    while (v1);
  }

  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  v8 = sub_1B7800C18();

  v9 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v9;
}

void BankConnectRefreshReminderDetector.allowsUserOptIn(institutionID:asOf:tccCoordinator:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  v159 = a4;
  v157 = a3;
  v161 = a2;
  v162 = a1;
  v155 = sub_1B77FFA18();
  v160 = *(v155 - 8);
  v7 = MEMORY[0x1EEE9AC00](v155);
  v153 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v154 = &v141 - v9;
  v10 = type metadata accessor for Institution(0);
  v163 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v141 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v141 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v141 - v20;
  v22 = type metadata accessor for InternalAccount(0);
  v156 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v141 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v141 - v29;
  sub_1B7612B8C();
  v152 = v21;
  v158 = v19;
  v147 = v30;
  v145 = v16;
  v148 = v13;
  v151 = a5;
  v144 = v25;
  v149 = v5;
  v150 = v28;
  v31 = v161;
  v167 = v162;
  v168 = v161;
  v33 = MEMORY[0x1EEE9AC00](v32);
  *(&v141 - 2) = &v167;
  v34 = sub_1B76126CC(sub_1B72936E4, (&v141 - 4), v33);

  if ((v34 & 1) == 0)
  {
    return;
  }

  v146 = 0;
  v35 = *(v159 + 24);
  v36 = *(v159 + 32);
  __swift_project_boxed_opaque_existential_1(v159, v35);
  inited = (*(v36 + 8))(v35, v36);
  v38 = 0;
  v39 = *(inited + 16);
  v40 = MEMORY[0x1E69E7CC0];
  v41 = 24;
LABEL_5:
  v42 = 24 * v38;
  v43 = v151;
  v44 = v158;
  while (v39 != v38)
  {
    if (v38 >= *(inited + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    ++v38;
    v45 = v42 + 24;
    v46 = *(inited + v42 + 48);
    v42 += 24;
    if (v46)
    {
      v47 = *(inited + v45 + 8);
      v48 = *(inited + v45 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v167 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B71FE640(0, *(v40 + 16) + 1, 1);
        v40 = v167;
      }

      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1B71FE640((v50 > 1), v51 + 1, 1);
        v40 = v167;
      }

      *(v40 + 16) = v51 + 1;
      v52 = v40 + 24 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v48;
      *(v52 + 48) = 1;
      goto LABEL_5;
    }
  }

  v53 = *(v40 + 16);

  if (!v53)
  {
    return;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80, &unk_1B780C050);
  inited = swift_initStackObject();
  v143 = xmmword_1B7807CD0;
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = v162;
  *(inited + 40) = v31;

  v54 = v43;
  v43 = v146;
  v55 = sub_1B7613564(v54);
  if (v43)
  {
    swift_setDeallocating();
    v56 = inited + 32;
    goto LABEL_17;
  }

  v57 = v55;
  v142 = (inited + 32);
  v146 = v41;
  v58 = MEMORY[0x1E69E7CC0];
  v159 = v55[2];
  if (v159)
  {
    v59 = 0;
    v60 = v163;
    v61 = v152;
    while (v59 < v57[2])
    {
      v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v63 = *(v60 + 72);
      v64 = sub_1B7616E28(v57 + v62 + v63 * v59, v61, type metadata accessor for Institution);
      v41 = &v141;
      v65 = v61[1];
      v167 = *v61;
      v168 = v65;
      MEMORY[0x1EEE9AC00](v64);
      *(&v141 - 2) = &v167;
      if (sub_1B76126CC(sub_1B72936E4, (&v141 - 4), inited))
      {
        sub_1B7616BE8(v61, v44, type metadata accessor for Institution);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v166 = v58;
        if ((v66 & 1) == 0)
        {
          sub_1B71FE0B0(0, *(v58 + 16) + 1, 1);
          v58 = v166;
        }

        v41 = *(v58 + 16);
        v67 = *(v58 + 24);
        if (v41 >= v67 >> 1)
        {
          sub_1B71FE0B0((v67 > 1), v41 + 1, 1);
          v58 = v166;
        }

        *(v58 + 16) = v41 + 1;
        v44 = v158;
        sub_1B7616BE8(v158, v58 + v62 + v41 * v63, type metadata accessor for Institution);
        v61 = v152;
      }

      else
      {
        sub_1B7616E90(v61, type metadata accessor for Institution);
      }

      ++v59;
      v60 = v163;
      if (v159 == v59)
      {
        goto LABEL_30;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    v82 = sub_1B7801958();
    v83 = v147;
    if (!v82)
    {
      goto LABEL_47;
    }

    goto LABEL_35;
  }

LABEL_30:
  swift_setDeallocating();
  sub_1B73DCE10(v142);

  MEMORY[0x1EEE9AC00](v68);
  *(&v141 - 4) = v149;
  *(&v141 - 3) = &unk_1F2F45FD0;
  v69 = v157;
  *(&v141 - 2) = &unk_1F2F45FF8;
  *(&v141 - 1) = v69;
  sub_1B75EC8E4(sub_1B7616F40, (&v141 - 6), v58);

  v70 = type metadata accessor for ManagedInternalAccount();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v165.receiver = ObjCClassFromMetadata;
  v165.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v72 = objc_msgSendSuper2(&v165, sel_fetchRequest);
  v73 = sub_1B7800C18();
  [v72 setRelationshipKeyPathsForPrefetching_];

  v74 = sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  v75 = sub_1B7800C18();

  v76 = objc_opt_self();
  v77 = [v76 orPredicateWithSubpredicates_];

  [v72 setPredicate_];
  v41 = v72;
  v78 = sub_1B7801498();
  inited = v78;
  v152 = v70;
  v158 = v76;
  v142 = ObjCClassFromMetadata;
  v141 = v74;
  if (v78 >> 62)
  {
    goto LABEL_46;
  }

  v82 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v83 = v147;
  if (!v82)
  {
LABEL_47:

    v85 = MEMORY[0x1E69E7CC0];
    goto LABEL_48;
  }

LABEL_35:
  v159 = v41;
  v167 = MEMORY[0x1E69E7CC0];
  sub_1B71FD914(0, v82 & ~(v82 >> 63), 0);
  if (v82 < 0)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v84 = 0;
  v85 = v167;
  v86 = v156;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v87 = MEMORY[0x1B8CA5DC0](v84, inited);
    }

    else
    {
      v87 = *(inited + 8 * v84 + 32);
    }

    InternalAccount.init(_:)(v87, v83);
    v167 = v85;
    v89 = *(v85 + 16);
    v88 = *(v85 + 24);
    if (v89 >= v88 >> 1)
    {
      sub_1B71FD914((v88 > 1), v89 + 1, 1);
      v86 = v156;
      v85 = v167;
    }

    ++v84;
    *(v85 + 16) = v89 + 1;
    sub_1B7616BE8(v83, v85 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v89, type metadata accessor for InternalAccount);
  }

  while (v82 != v84);

LABEL_48:
  v90 = *(v85 + 16);
  v83 = v160;
  if (v90)
  {
    v147 = v43;
    v167 = MEMORY[0x1E69E7CC0];
    sub_1B71FD958(0, v90, 0);
    v91 = v167;
    v92 = v85 + ((*(v156 + 80) + 32) & ~*(v156 + 80));
    v159 = *(v156 + 72);
    v93 = (v83 + 16);
    v94 = v155;
    v95 = v154;
    do
    {
      v96 = v150;
      sub_1B7616E28(v92, v150, type metadata accessor for InternalAccount);
      (*v93)(v95, v96, v94);
      sub_1B7616E90(v96, type metadata accessor for InternalAccount);
      v167 = v91;
      v98 = *(v91 + 16);
      v97 = *(v91 + 24);
      v83 = v98 + 1;
      if (v98 >= v97 >> 1)
      {
        sub_1B71FD958((v97 > 1), v98 + 1, 1);
        v91 = v167;
      }

      *(v91 + 16) = v83;
      (*(v160 + 32))(v91 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v98, v95, v94);
      v92 += v159;
      --v90;
    }

    while (v90);

    v43 = v147;
  }

  else
  {

    v91 = MEMORY[0x1E69E7CC0];
  }

  v41 = sub_1B723AF4C(v91);

  v99 = swift_initStackObject();
  *(v99 + 16) = v143;
  *(v99 + 32) = v162;
  *(v99 + 40) = v161;

  v100 = sub_1B7613564(v151);
  if (v43)
  {

    swift_setDeallocating();
    v56 = v99 + 32;
LABEL_17:
    sub_1B73DCE10(v56);
    v79 = sub_1B7800098();
    v80 = sub_1B78011D8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1B7198000, v79, v80, "Could not load accounts for userOptIn check", v81, 2u);
      MEMORY[0x1B8CA7A40](v81, -1, -1);
    }

    return;
  }

  v101 = v100;
  v161 = v99 + 32;
  v102 = MEMORY[0x1E69E7CC0];
  v162 = v100[2];
  v159 = v41;
  if (v162)
  {
    v103 = 0;
    v104 = v145;
    while (v103 < v101[2])
    {
      v107 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v41 = *(v163 + 72);
      v108 = sub_1B7616E28(v101 + v107 + v41 * v103, v104, type metadata accessor for Institution);
      v83 = &v141;
      v109 = v104[1];
      v167 = *v104;
      v168 = v109;
      MEMORY[0x1EEE9AC00](v108);
      *(&v141 - 2) = &v167;
      if (sub_1B76126CC(sub_1B72936E4, (&v141 - 4), v99))
      {
        sub_1B7616BE8(v104, v148, type metadata accessor for Institution);
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v166 = v102;
        if ((v110 & 1) == 0)
        {
          sub_1B71FE0B0(0, *(v102 + 16) + 1, 1);
          v102 = v166;
        }

        v112 = *(v102 + 16);
        v111 = *(v102 + 24);
        v83 = v112 + 1;
        if (v112 >= v111 >> 1)
        {
          sub_1B71FE0B0((v111 > 1), v112 + 1, 1);
          v102 = v166;
        }

        *(v102 + 16) = v83;
        sub_1B7616BE8(v148, v102 + v107 + v112 * v41, type metadata accessor for Institution);
      }

      else
      {
        sub_1B7616E90(v104, type metadata accessor for Institution);
      }

      ++v103;
      v105 = v158;
      v106 = &selRef_heroImageAttributionName;
      if (v162 == v103)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
    goto LABEL_81;
  }

  v105 = v158;
  v106 = &selRef_heroImageAttributionName;
LABEL_69:
  swift_setDeallocating();
  sub_1B73DCE10(v161);

  MEMORY[0x1EEE9AC00](v113);
  *(&v141 - 4) = v149;
  *(&v141 - 3) = &unk_1F2F46050;
  v114 = v157;
  *(&v141 - 2) = &unk_1F2F46078;
  *(&v141 - 1) = v114;
  sub_1B75EC8E4(sub_1B7616F40, (&v141 - 6), v102);

  v164.receiver = v142;
  v164.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v41 = objc_msgSendSuper2(&v164, sel_fetchRequest);
  v115 = sub_1B7800C18();
  [v41 setRelationshipKeyPathsForPrefetching_];

  v116 = sub_1B7800C18();

  v117 = [v105 v106[73]];

  [v41 setPredicate_];
  v118 = sub_1B7801498();
  v83 = v118;
  if (v118 >> 62)
  {
LABEL_82:
    v119 = sub_1B7801958();
    v120 = v144;
    v121 = MEMORY[0x1E69E7CC0];
    v122 = v160;
    if (!v119)
    {
      goto LABEL_83;
    }

    goto LABEL_71;
  }

  v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v120 = v144;
  v121 = MEMORY[0x1E69E7CC0];
  v122 = v160;
  if (!v119)
  {
LABEL_83:

    v124 = MEMORY[0x1E69E7CC0];
    v125 = v156;
    goto LABEL_84;
  }

LABEL_71:
  v167 = v121;
  sub_1B71FD914(0, v119 & ~(v119 >> 63), 0);
  if (v119 < 0)
  {
LABEL_94:
    __break(1u);
    return;
  }

  v123 = 0;
  v124 = v167;
  v125 = v156;
  do
  {
    if ((v83 & 0xC000000000000001) != 0)
    {
      v126 = MEMORY[0x1B8CA5DC0](v123, v83);
    }

    else
    {
      v126 = *(v83 + 8 * v123 + 32);
    }

    InternalAccount.init(_:)(v126, v120);
    v167 = v124;
    v128 = *(v124 + 16);
    v127 = *(v124 + 24);
    if (v128 >= v127 >> 1)
    {
      sub_1B71FD914((v127 > 1), v128 + 1, 1);
      v125 = v156;
      v124 = v167;
    }

    ++v123;
    *(v124 + 16) = v128 + 1;
    sub_1B7616BE8(v120, v124 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v128, type metadata accessor for InternalAccount);
  }

  while (v119 != v123);

  v122 = v160;
  v121 = MEMORY[0x1E69E7CC0];
LABEL_84:
  v129 = *(v124 + 16);
  if (v129)
  {
    v167 = v121;
    v130 = v125;
    sub_1B71FD958(0, v129, 0);
    v131 = v167;
    v132 = v124 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
    v163 = *(v130 + 72);
    v133 = v155;
    v134 = v153;
    do
    {
      v135 = v150;
      sub_1B7616E28(v132, v150, type metadata accessor for InternalAccount);
      (*(v122 + 16))(v134, v135, v133);
      sub_1B7616E90(v135, type metadata accessor for InternalAccount);
      v167 = v131;
      v137 = *(v131 + 16);
      v136 = *(v131 + 24);
      if (v137 >= v136 >> 1)
      {
        sub_1B71FD958((v136 > 1), v137 + 1, 1);
        v131 = v167;
      }

      *(v131 + 16) = v137 + 1;
      (*(v160 + 32))(v131 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v137, v134, v133);
      v132 += v163;
      --v129;
    }

    while (v129);
  }

  else
  {

    v131 = MEMORY[0x1E69E7CC0];
  }

  v138 = sub_1B723AF4C(v131);

  v139 = *(v159 + 16);

  v140 = *(v138 + 16);

  if (__OFADD__(v139, v140))
  {
    __break(1u);
    goto LABEL_94;
  }
}

int *sub_1B7615E48(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  MEMORY[0x1EEE9AC00](refreshed);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73[0] = 1;
  v71 = a2;
  v68 = sub_1B76165C8(v73, a1);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  v66 = sub_1B78010E8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v8 = swift_allocObject();
  v67 = xmmword_1B780C060;
  *(v8 + 16) = xmmword_1B780C060;
  *(v8 + 32) = sub_1B78010E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v9 = swift_allocObject();
  v72 = xmmword_1B7807CD0;
  *(v9 + 16) = xmmword_1B7807CD0;
  result = type metadata accessor for Institution(0);
  v11 = a1 + result[12];
  v12 = v11 + *(refreshed + 32);
  if (*(v12 + 8))
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = *v12;
  v14 = MEMORY[0x1E69E6438];
  *(v9 + 56) = MEMORY[0x1E69E63B0];
  *(v9 + 64) = v14;
  *(v9 + 32) = v13;
  *(v8 + 40) = sub_1B78010E8();
  v15 = sub_1B7800C18();

  v16 = objc_opt_self();
  v17 = [v16 andPredicateWithSubpredicates_];

  v65 = v11;
  result = sub_1B7616E28(v11, v6, type metadata accessor for Institution.BackgroundRefreshConfiguration);
  v18 = &v6[*(refreshed + 32)];
  if (v18[8])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v62 = v17;
  v63 = v6;
  v70 = v16;
  v64 = refreshed;
  v19 = &v6[*(refreshed + 36)];
  if (v19[8])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = (*v19 - *v18) * 0.5;
  v21 = swift_allocObject();
  v69 = xmmword_1B782D420;
  *(v21 + 16) = xmmword_1B782D420;
  *(v21 + 32) = sub_1B78010E8();
  v61 = "UserPreferenceChangedAt)";
  v22 = swift_allocObject();
  *(v22 + 16) = v72;
  v23 = MEMORY[0x1E69E63B0];
  *(v22 + 56) = MEMORY[0x1E69E63B0];
  v24 = MEMORY[0x1E69E6438];
  *(v22 + 64) = MEMORY[0x1E69E6438];
  *(v22 + 32) = v13;
  *(v21 + 40) = sub_1B78010E8();
  v25 = swift_allocObject();
  *(v25 + 16) = v72;
  v26 = v13 + v20;
  *(v25 + 56) = v23;
  *(v25 + 64) = v24;
  *(v25 + 32) = v26;
  *(v21 + 48) = sub_1B78010E8();
  v27 = swift_allocObject();
  v60 = xmmword_1B7808C50;
  *(v27 + 16) = xmmword_1B7808C50;
  *(v27 + 56) = v23;
  *(v27 + 64) = v24;
  *(v27 + 32) = v20;
  v28 = sub_1B77FF8B8();
  v57 = sub_1B7205540(0, &qword_1EDAF93C8, 0x1E695DF00);
  *(v27 + 96) = v57;
  v56 = sub_1B71B592C();
  *(v27 + 104) = v56;
  *(v27 + 72) = v28;
  *(v21 + 56) = sub_1B78010E8();
  v29 = sub_1B7800C18();

  v58 = [v70 andPredicateWithSubpredicates_];

  v59 = v7;
  v30 = swift_allocObject();
  *(v30 + 16) = v69;
  *(v30 + 32) = sub_1B78010E8();
  v31 = swift_allocObject();
  *(v31 + 16) = v72;
  *(v31 + 56) = v23;
  *(v31 + 64) = v24;
  *(v31 + 32) = v26;
  *(v30 + 40) = sub_1B78010E8();
  result = swift_allocObject();
  *(result + 1) = v60;
  v32 = v65 + *(v64 + 36);
  if ((*(v32 + 8) & 1) == 0)
  {
    v33 = *v32;
    *(result + 7) = v23;
    *(result + 8) = v24;
    *(result + 4) = v33;
    *(result + 12) = v23;
    *(result + 13) = v24;
    *(result + 9) = 0x40F5180000000000;
    *(v30 + 48) = sub_1B78010E8();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1B780D870;
    *(v34 + 56) = v23;
    *(v34 + 64) = v24;
    *(v34 + 32) = v33;
    v35 = sub_1B77FF8B8();
    v36 = v56;
    *(v34 + 96) = v57;
    *(v34 + 104) = v36;
    *(v34 + 72) = v35;
    *(v34 + 136) = v23;
    *(v34 + 144) = v24;
    *(v34 + 112) = 0x40F5180000000000;
    *(v30 + 56) = sub_1B78010E8();
    v37 = sub_1B7800C18();

    v38 = v70;
    v39 = [v70 andPredicateWithSubpredicates_];

    v40 = swift_allocObject();
    *(v40 + 16) = v69;
    v41 = v66;
    v42 = v62;
    *(v40 + 32) = v66;
    *(v40 + 40) = v42;
    v43 = v58;
    *(v40 + 48) = v58;
    *(v40 + 56) = v39;
    v44 = v41;
    v45 = v42;
    v46 = v43;
    v47 = v39;
    v48 = sub_1B7800C18();

    v49 = [v38 orPredicateWithSubpredicates_];

    v50 = swift_allocObject();
    *(v50 + 16) = v67;
    v51 = v68;
    *(v50 + 32) = v68;
    *(v50 + 40) = v49;
    v52 = v51;
    v53 = v49;
    v54 = sub_1B7800C18();

    v55 = [v38 andPredicateWithSubpredicates_];

    sub_1B7616E90(v63, type metadata accessor for Institution.BackgroundRefreshConfiguration);
    return v55;
  }

LABEL_9:
  __break(1u);
  return result;
}

int *sub_1B76165C8(_BYTE *a1, uint64_t a2)
{
  if (!*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B7808C50;
    v21 = a2 + *(type metadata accessor for Institution(0) + 48);
    result = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
    v22 = (v21 + result[8]);
    if ((v22[1] & 1) == 0)
    {
      v23 = *v22;
      sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
      v24 = MEMORY[0x1E69E6438];
      *(v20 + 56) = MEMORY[0x1E69E63B0];
      *(v20 + 64) = v24;
      *(v20 + 32) = v23;
      v25 = sub_1B77FF8B8();
      *(v20 + 96) = sub_1B7205540(0, &qword_1EDAF93C8, 0x1E695DF00);
      *(v20 + 104) = sub_1B71B592C();
      *(v20 + 72) = v25;
      return sub_1B78010E8();
    }

    goto LABEL_12;
  }

  if (*a1 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B780C060;
    sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
    *(v26 + 32) = sub_1B78010E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1B7808C50;
    v28 = a2 + *(type metadata accessor for Institution(0) + 48);
    result = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
    v29 = (v28 + result[9]);
    if ((v29[1] & 1) == 0)
    {
      v30 = *v29;
      v31 = MEMORY[0x1E69E6438];
      *(v27 + 56) = MEMORY[0x1E69E63B0];
      *(v27 + 64) = v31;
      *(v27 + 32) = v30;
      v32 = sub_1B77FF8B8();
      *(v27 + 96) = sub_1B7205540(0, &qword_1EDAF93C8, 0x1E695DF00);
      *(v27 + 104) = sub_1B71B592C();
      *(v27 + 72) = v32;
      *(v26 + 40) = sub_1B78010E8();
      v18 = sub_1B7800C18();

      v19 = [objc_opt_self() orPredicateWithSubpredicates_];
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B780C060;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7808C50;
  v5 = a2 + *(type metadata accessor for Institution(0) + 48);
  result = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  v7 = (v5 + result[8]);
  if (v7[1])
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  v9 = *v7;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  v10 = MEMORY[0x1E69E6438];
  *(v4 + 56) = MEMORY[0x1E69E63B0];
  *(v4 + 64) = v10;
  *(v4 + 32) = v9;
  v11 = sub_1B77FF8B8();
  v12 = sub_1B7205540(0, &qword_1EDAF93C8, 0x1E695DF00);
  *(v4 + 96) = v12;
  v13 = sub_1B71B592C();
  *(v4 + 104) = v13;
  *(v4 + 72) = v11;
  *(v3 + 32) = sub_1B78010E8();
  result = swift_allocObject();
  *(result + 1) = xmmword_1B7808C50;
  v14 = (v5 + *(v8 + 36));
  if ((v14[1] & 1) == 0)
  {
    v15 = result;
    v16 = *v14;
    *(result + 7) = MEMORY[0x1E69E63B0];
    *(result + 8) = MEMORY[0x1E69E6438];
    *(result + 4) = v16;
    v17 = sub_1B77FF8B8();
    v15[12] = v12;
    v15[13] = v13;
    v15[9] = v17;
    *(v3 + 40) = sub_1B78010E8();
    v18 = sub_1B7800C18();

    v19 = [objc_opt_self() andPredicateWithSubpredicates_];
LABEL_10:
    v33 = v19;

    return v33;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1B7616AB0(uint64_t a1)
{
  sub_1B7612B8C();
  if (!v1)
  {
    v4 = v3;
    v5 = type metadata accessor for InternalAccount(0);
    v6 = a1 + *(v5 + 20);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v11[0] = v8;
    v11[1] = v7;
    MEMORY[0x1EEE9AC00](v5);
    v10[2] = v11;
    LOBYTE(a1) = sub_1B76126CC(sub_1B72936E4, v10, v4);
  }

  return a1 & 1;
}

uint64_t sub_1B7616BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1B7616C50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B7613FD8(a1, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for BankConnectRefreshReminderDetector(uint64_t a1)
{
  result = qword_1EDAF6D30;
  if (!qword_1EDAF6D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7616DBC(uint64_t a1)
{
  result = sub_1B78000B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7616E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7616E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *sub_1B7616EF0@<X0>(char *a1@<X0>, int **a2@<X8>)
{
  v4 = *(v2 + 24);
  v6 = *a1;
  result = sub_1B76165C8(&v6, v4);
  *a2 = result;
  return result;
}

unint64_t static ManagedAuthorizationSession.existingSession(in:)(void *a1)
{
  v9.receiver = swift_getObjCClassFromMetadata();
  v9.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedAuthorizationSession;
  v3 = objc_msgSendSuper2(&v9, sel_fetchRequest);
  v4 = a1;
  result = sub_1B7801498();
  if (v1)
  {

    return v4;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v7 = result;
  v8 = sub_1B7801958();
  result = v7;
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 32);
LABEL_8:
    v4 = v6;

    return v4;
  }

  __break(1u);
  return result;
}

void sub_1B7617074(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 fpanId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B76170DC(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setFpanId_];
}

uint64_t sub_1B761714C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 previousConsentUUID];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF9E8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FFA18();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B76171F0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7227AFC(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF9B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setPreviousConsentUUID_];
}

id ManagedAuthorizationSession.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAuthorizationSession.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAuthorizationSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedAuthorizationSession.authorizationType.getter()
{
  result = [v0 authorizationTypeValue];
  if (result > 2)
  {
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000003CLL, 0x80000001B7887370);
    [v0 authorizationTypeValue];
    v2 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v2);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

id (*ManagedAuthorizationSession.authorizationType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ManagedAuthorizationSession.authorizationType.getter();
  return sub_1B76175C0;
}

id ManagedAuthorizationSession.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v3 = sub_1B7617BA4(a1, a2);

  return v3;
}

uint64_t BankConnectAuthorizationSession.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v51 - v8;
  v10 = sub_1B77FFA18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 id];
  v60 = v13;
  sub_1B77FF9E8();

  v15 = [a1 consentId];
  v16 = sub_1B7800868();
  v58 = v17;
  v59 = v16;

  v18 = [a1 consentToken];
  v19 = sub_1B7800868();
  v56 = v20;
  v57 = v19;

  v21 = [a1 consentAuthorizationURI];
  v22 = sub_1B7800868();
  v54 = v23;
  v55 = v22;

  v24 = [a1 extensionPayload];
  if (v24)
  {
    v25 = v24;
    v53 = *&v24[OBJC_IVAR____TtC10FinanceKit12StringParams_value];
  }

  else
  {
    v53 = 0;
  }

  v26 = [a1 previousConsentUUID];
  if (v26)
  {
    v27 = v26;
    sub_1B77FF9E8();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v61 = v11;
  v62 = v9;
  v29 = *(v11 + 56);
  v30 = v10;
  v29(v9, v28, 1, v10);
  v31 = [a1 codeVerifier];
  v32 = sub_1B7800868();
  v51 = v33;
  v52 = v32;

  v34 = v6;
  Institution.init(_:)([a1 institutionObject], v6);
  v35 = [a1 fpanId];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1B7800868();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = ManagedAuthorizationSession.authorizationType.getter();

  v41 = type metadata accessor for BankConnectAuthorizationSession(0);
  v42 = v41[7];
  v29((a2 + v42), 1, 1, v30);
  v43 = (a2 + v41[9]);
  (*(v61 + 32))(a2, v60, v30);
  v44 = (a2 + v41[5]);
  v45 = v58;
  *v44 = v59;
  v44[1] = v45;
  v46 = v56;
  v44[2] = v57;
  v44[3] = v46;
  v47 = v54;
  v44[4] = v55;
  v44[5] = v47;
  v44[6] = v53;
  sub_1B741129C(v62, a2 + v42);
  v48 = (a2 + v41[6]);
  v49 = v51;
  *v48 = v52;
  v48[1] = v49;
  result = sub_1B739983C(v34, a2 + v41[8]);
  *v43 = v37;
  v43[1] = v39;
  *(a2 + v41[10]) = v40;
  return result;
}

id static ManagedAuthorizationSession.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedAuthorizationSession;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

void static ManagedAuthorizationSession.deleteAllSessions(in:)(void *a1)
{
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedAuthorizationSession;
  v3 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  [v3 setIncludesPropertyValues_];
  v4 = sub_1B7801498();
  if (v1)
  {

    return;
  }

  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_1B7801958();
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8CA5DC0](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    [a1 deleteObject_];
  }

LABEL_12:
}

id sub_1B7617BA4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = [objc_allocWithZone(v2) initWithContext_];
  v9 = sub_1B77FF9B8();
  [v8 setId_];

  v10 = type metadata accessor for BankConnectAuthorizationSession(0);
  if (*(a1 + v10[9] + 8))
  {
    v11 = sub_1B7800838();
  }

  else
  {
    v11 = 0;
  }

  [v8 setFpanId_];

  v12 = a1 + v10[5];
  v13 = sub_1B7800838();
  [v8 setConsentId_];

  v14 = sub_1B7800838();
  [v8 setConsentToken_];

  v15 = sub_1B7800838();
  [v8 setConsentAuthorizationURI_];

  sub_1B7227AFC(a1 + v10[7], v7);
  v16 = sub_1B77FFA18();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v7, 1, v16) != 1)
  {
    v18 = sub_1B77FF9B8();
    (*(v17 + 8))(v7, v16);
  }

  [v8 setPreviousConsentUUID_];

  v19 = *(v12 + 48);
  if (v19)
  {
    v20 = type metadata accessor for StringParams();
    v21 = objc_allocWithZone(v20);
    *&v21[OBJC_IVAR____TtC10FinanceKit12StringParams_value] = v19;
    v24.receiver = v21;
    v24.super_class = v20;

    v19 = objc_msgSendSuper2(&v24, sel_init);
  }

  [v8 setExtensionPayload_];

  v22 = sub_1B7800838();
  [v8 setCodeVerifier_];

  [v8 setAuthorizationTypeValue_];
  sub_1B761817C(a1);
  return v8;
}

id sub_1B7617E9C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for BankConnectAuthorizationSession(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedAuthorizationSession();
  sub_1B7618114(a1, v11, type metadata accessor for BankConnectAuthorizationSession);
  v12 = a2;
  v13 = sub_1B7617BA4(v11, v12);

  v14 = (a1 + *(v9 + 40));
  type metadata accessor for ManagedInstitution();
  v15 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(*v14, v14[1]);
  if (v2)
  {
  }

  else
  {
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA0D0VSo22NSManagedObjectContextCtFZ_0(v17, v14, v12);
    }

    else
    {
      sub_1B7618114(v14, v7, type metadata accessor for Institution);
      v18 = v12;
      v17 = sub_1B74FA170(v7, v18);
    }

    sub_1B7688858(v14 + *(v5 + 60), v17, v12);

    [v13 setInstitutionObject_];
  }

  return v13;
}

uint64_t sub_1B7618114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B761817C(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAuthorizationSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B76181F8(uint64_t a1)
{
  v2 = sub_1B7618890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7618234(uint64_t a1)
{
  v2 = sub_1B7618890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7618270()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x656C6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852141679;
  }
}

uint64_t sub_1B76182CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7619298(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B76182F4(uint64_t a1)
{
  v2 = sub_1B761883C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7618330(uint64_t a1)
{
  v2 = sub_1B761883C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B761836C(uint64_t a1)
{
  v2 = sub_1B76188E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76183A8(uint64_t a1)
{
  v2 = sub_1B76188E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76183E4(uint64_t a1)
{
  v2 = sub_1B7618938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7618420(uint64_t a1)
{
  v2 = sub_1B7618938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t OrderStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9997F0, &qword_1B784C290);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9997F8, &qword_1B784C298);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999800, &qword_1B784C2A0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999808, &qword_1B784C2A8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B761883C();
  sub_1B78023F8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B76188E4();
      v9 = v21;
      sub_1B7801ED8();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B7618890();
      v9 = v24;
      sub_1B7801ED8();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B7618938();
    sub_1B7801ED8();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B761883C()
{
  result = qword_1EB999810;
  if (!qword_1EB999810)
  {
    result = swift_getWitnessTable(asc_1B784C6AC, &type metadata for OrderStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999810);
  }

  return result;
}

unint64_t sub_1B7618890()
{
  result = qword_1EB999818;
  if (!qword_1EB999818)
  {
    result = swift_getWitnessTable(asc_1B784C65C, &type metadata for OrderStatus.CancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999818);
  }

  return result;
}

unint64_t sub_1B76188E4()
{
  result = qword_1EB999820;
  if (!qword_1EB999820)
  {
    result = swift_getWitnessTable(byte_1B784C60C, &type metadata for OrderStatus.CompletedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999820);
  }

  return result;
}

unint64_t sub_1B7618938()
{
  result = qword_1EB999828;
  if (!qword_1EB999828)
  {
    result = swift_getWitnessTable(byte_1B784C5BC, &type metadata for OrderStatus.OpenCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999828);
  }

  return result;
}

uint64_t OrderStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999830, &qword_1B784C2B0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999838, &qword_1B784C2B8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999840, &qword_1B784C2C0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999848, &unk_1B784C2C8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B761883C();
  v15 = v36;
  sub_1B78023C8();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B7801E98();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B721CE54();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B7801B18();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v24 = &type metadata for OrderStatus;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1B76188E4();
          sub_1B7801D38();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B7618890();
          v26 = v17;
          sub_1B7801D38();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B7618938();
        sub_1B7801D38();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1B7618F84()
{
  result = qword_1EB999850;
  if (!qword_1EB999850)
  {
    result = swift_getWitnessTable(byte_1B784C594, &type metadata for OrderStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999850);
  }

  return result;
}

unint64_t sub_1B7618FDC()
{
  result = qword_1EB999858;
  if (!qword_1EB999858)
  {
    result = swift_getWitnessTable(asc_1B784C4B4, &type metadata for OrderStatus.OpenCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999858);
  }

  return result;
}

unint64_t sub_1B7619034()
{
  result = qword_1EB999860;
  if (!qword_1EB999860)
  {
    result = swift_getWitnessTable(aU_24, &type metadata for OrderStatus.OpenCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999860);
  }

  return result;
}

unint64_t sub_1B761908C()
{
  result = qword_1EB999868;
  if (!qword_1EB999868)
  {
    result = swift_getWitnessTable(byte_1B784C464, &type metadata for OrderStatus.CompletedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999868);
  }

  return result;
}

unint64_t sub_1B76190E4()
{
  result = qword_1EB999870;
  if (!qword_1EB999870)
  {
    result = swift_getWitnessTable(byte_1B784C48C, &type metadata for OrderStatus.CompletedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999870);
  }

  return result;
}

unint64_t sub_1B761913C()
{
  result = qword_1EB999878;
  if (!qword_1EB999878)
  {
    result = swift_getWitnessTable(byte_1B784C414, &type metadata for OrderStatus.CancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999878);
  }

  return result;
}

unint64_t sub_1B7619194()
{
  result = qword_1EB999880;
  if (!qword_1EB999880)
  {
    result = swift_getWitnessTable(byte_1B784C43C, &type metadata for OrderStatus.CancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999880);
  }

  return result;
}

unint64_t sub_1B76191EC()
{
  result = qword_1EB999888;
  if (!qword_1EB999888)
  {
    result = swift_getWitnessTable(byte_1B784C504, &type metadata for OrderStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999888);
  }

  return result;
}

unint64_t sub_1B7619244()
{
  result = qword_1EB999890;
  if (!qword_1EB999890)
  {
    result = swift_getWitnessTable(byte_1B784C52C, &type metadata for OrderStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999890);
  }

  return result;
}

uint64_t sub_1B7619298(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

void sub_1B76193C4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedFinHealthTransactionInsight();
    sub_1B761BC38(&qword_1EB990020, 255, type metadata accessor for ManagedFinHealthTransactionInsight);
    sub_1B7800FE8();
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
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

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v16 = v4;
LABEL_8:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedFinHealthTransactionInsight(), swift_dynamicCast(), v14 = v17, v5 = v10, v6 = v11, !v17))
      {
LABEL_22:
        sub_1B71B7B58(v2);
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_18:
    v15 = [v14 finHealthTransactionEntityGroupObject];

    v10 = v5;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B7619630(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedFinHealthTransactionInsight();
    sub_1B761BC38(&qword_1EB990020, 255, type metadata accessor for ManagedFinHealthTransactionInsight);
    sub_1B7800FE8();
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
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

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v16 = v4;
LABEL_8:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedFinHealthTransactionInsight(), swift_dynamicCast(), v14 = v17, v5 = v10, v6 = v11, !v17))
      {
LABEL_22:
        sub_1B71B7B58(v2);
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_18:
    v15 = [v14 finHealthIncomeInsightObject];

    v10 = v5;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B761989C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedTransactionInsights();
    sub_1B761BC38(&qword_1EB990040, v3, type metadata accessor for ManagedTransactionInsights);
    sub_1B7800FE8();
    v2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
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

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v17 = v5;
LABEL_8:
  v11 = v6;
  v12 = v7;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedTransactionInsights(), swift_dynamicCast(), v15 = v18, v6 = v11, v7 = v12, !v18))
      {
LABEL_22:
        sub_1B71B7B58(v2);
        return;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v6 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    v16 = [v15 applePayInsightObject];

    v11 = v6;
    v12 = v7;
    if (v16)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B7619AFC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedTransactionInsights();
    sub_1B761BC38(&qword_1EB990040, v3, type metadata accessor for ManagedTransactionInsights);
    sub_1B7800FE8();
    v2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
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

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v17 = v5;
LABEL_8:
  v11 = v6;
  v12 = v7;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedTransactionInsights(), swift_dynamicCast(), v15 = v18, v6 = v11, v7 = v12, !v18))
      {
LABEL_22:
        sub_1B71B7B58(v2);
        return;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v6 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    v16 = [v15 bankMerchantInformationInsightObject];

    v11 = v6;
    v12 = v7;
    if (v16)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B7619D5C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedTransactionInsights();
    sub_1B761BC38(&qword_1EB990040, v3, type metadata accessor for ManagedTransactionInsights);
    sub_1B7800FE8();
    v2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
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

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v17 = v5;
LABEL_8:
  v11 = v6;
  v12 = v7;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedTransactionInsights(), swift_dynamicCast(), v15 = v18, v6 = v11, v7 = v12, !v18))
      {
LABEL_22:
        sub_1B71B7B58(v2);
        return;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v6 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    v16 = [v15 mapsInsightObject];

    v11 = v6;
    v12 = v7;
    if (v16)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}