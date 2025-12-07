uint64_t sub_1DB0680EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08FD5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB068114(uint64_t a1)
{
  v2 = sub_1DB08EB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB068150(uint64_t a1)
{
  v2 = sub_1DB08EB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB0681C4()
{
  sub_1DB09E3A4();
  sub_1DB066CEC(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB068208()
{
  sub_1DB09E3A4();
  sub_1DB066CEC(v1);
  return sub_1DB09E3E4();
}

uint64_t ArmandDeviceData.fields.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

_OWORD *sub_1DB06829C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 33);
  v5 = *(v2 + 24);
  v6 = *(v2 + 56);
  v62[2] = *(v2 + 40);
  v62[3] = v6;
  v63 = *(v2 + 72);
  v62[0] = *(v2 + 8);
  v62[1] = v5;
  v7 = *(v2 + 128);
  v64[2] = *(v2 + 112);
  v64[3] = v7;
  v64[4] = *(v2 + 144);
  v65 = *(v2 + 160);
  v8 = *(v2 + 96);
  v64[0] = *(v2 + 80);
  v64[1] = v8;
  v59 = *(v2 + 168);
  v60 = *(v2 + 176);
  v58 = *(v2 + 184);
  *(v67 + 9) = *(v2 + 233);
  v9 = *(v2 + 224);
  v66[1] = *(v2 + 208);
  v67[0] = v9;
  v66[0] = *(v2 + 192);
  *(v69 + 15) = *(v2 + 319);
  v10 = *(v2 + 304);
  v68[2] = *(v2 + 288);
  v69[0] = v10;
  v11 = *(v2 + 272);
  v68[0] = *(v2 + 256);
  v68[1] = v11;
  v56 = *(v2 + 328);
  v57 = *(v2 + 336);
  v54 = *(v2 + 345);
  v55 = *(v2 + 344);
  v53 = *(v2 + 346);
  v12 = *(v2 + 360);
  v52 = *(v2 + 352);
  v13 = *(v2 + 368);
  v14 = *(v2 + 392);
  v70[0] = *(v2 + 376);
  v70[1] = v14;
  v15 = *(v2 + 408);
  v16 = *(v2 + 424);
  v17 = *(v2 + 440);
  v18 = *(v2 + 456);
  v71 = *(v2 + 472);
  v70[4] = v17;
  v70[5] = v18;
  v70[2] = v15;
  v70[3] = v16;
  v19 = *(v2 + 480);
  v20 = *(v2 + 488);
  result = memcpy(__dst, (v2 + 496), 0x119uLL);
  v22 = *(v2 + 1000);
  v73[2] = *(v2 + 984);
  v73[3] = v22;
  v74 = *(v2 + 1016);
  v23 = *(v2 + 968);
  v73[0] = *(v2 + 952);
  v73[1] = v23;
  switch(v4)
  {
    case 1:
      *(a2 + 24) = &type metadata for MobileGestaltSource;
      *(a2 + 32) = &off_1F56C59F8;
      v40 = swift_allocObject();
      *a2 = v40;
      v41 = *(v2 + 128);
      *(v40 + 48) = *(v2 + 112);
      *(v40 + 64) = v41;
      *(v40 + 80) = *(v2 + 144);
      *(v40 + 96) = *(v2 + 160);
      v42 = *(v2 + 96);
      *(v40 + 16) = *(v2 + 80);
      *(v40 + 32) = v42;
      return sub_1DB08B1A8(v64, v61);
    case 2:
      *(a2 + 24) = &type metadata for BaaSource;
      *(a2 + 32) = &off_1F56C42B8;
      v38 = swift_allocObject();
      *a2 = v38;
      v39 = *(v2 + 208);
      v38[1] = *(v2 + 192);
      v38[2] = v39;
      v38[3] = *(v2 + 224);
      *(v38 + 57) = *(v2 + 233);
      return sub_1DB08B1E0(v66, v61);
    case 3:
      *(a2 + 24) = &type metadata for NearFieldSource;
      *(a2 + 32) = &off_1F56C6C70;
      *a2 = v59;
      *(a2 + 8) = v60;
      v34 = v58;
      goto LABEL_10;
    case 4:
      *(a2 + 24) = &type metadata for IDSSource;
      *(a2 + 32) = &off_1F56C4180;
      *a2 = v56;
      *(a2 + 8) = v57;
      v34 = v55;
LABEL_10:
      *(a2 + 16) = v34;
      goto LABEL_19;
    case 5:
      *(a2 + 24) = &type metadata for CoreTelephonySource;
      *(a2 + 32) = &off_1F56C9190;
      v43 = swift_allocObject();
      *a2 = v43;
      v44 = *(v2 + 304);
      *(v43 + 48) = *(v2 + 288);
      *(v43 + 64) = v44;
      *(v43 + 79) = *(v2 + 319);
      v45 = *(v2 + 272);
      *(v43 + 16) = *(v2 + 256);
      *(v43 + 32) = v45;
      return sub_1DB08B218(v68, v61);
    case 6:
      *(a2 + 24) = &type metadata for LocationSource;
      *(a2 + 32) = &off_1F56C72F8;
      v47 = swift_allocObject();
      *a2 = v47;
      v48 = *(v2 + 456);
      *(v47 + 80) = *(v2 + 440);
      *(v47 + 96) = v48;
      *(v47 + 112) = *(v2 + 472);
      v49 = *(v2 + 392);
      *(v47 + 16) = *(v2 + 376);
      *(v47 + 32) = v49;
      v50 = *(v2 + 424);
      *(v47 + 48) = *(v2 + 408);
      *(v47 + 64) = v50;
      return sub_1DB08B250(v70, v61);
    case 7:
      *(a2 + 24) = &type metadata for TelephonyUtilitiesSource;
      *(a2 + 32) = &off_1F56C4B10;
      *a2 = v54;
      *(a2 + 1) = v53;
      return result;
    case 8:
      *(a2 + 24) = &type metadata for TimeZoneSource;
      *(a2 + 32) = &off_1F56C7050;
      *a2 = v52;
      *(a2 + 8) = v12;
      *(a2 + 16) = v13;
      goto LABEL_19;
    case 9:
      *(a2 + 24) = &type metadata for CallerClientSource;
      *(a2 + 32) = &off_1F56D0518;
      *a2 = v19;
      *(a2 + 8) = v20;
LABEL_19:

      break;
    case 10:
      *(a2 + 24) = &type metadata for NameParserSource;
      *(a2 + 32) = &off_1F56D0538;
      v51 = swift_allocObject();
      *a2 = v51;
      memcpy((v51 + 16), (v2 + 496), 0x119uLL);
      result = sub_1DB08B298(__dst, v61);
      break;
    case 11:
      v30 = (v2 + 824);
      *(a2 + 24) = &type metadata for GeocoderSource;
      *(a2 + 32) = &off_1F56D0578;
      result = swift_allocObject();
      *a2 = result;
      v31 = v30[5];
      result[5] = v30[4];
      result[6] = v31;
      result[7] = v30[6];
      *(result + 122) = *(v30 + 106);
      v32 = v30[1];
      result[1] = *v30;
      result[2] = v32;
      v33 = v30[3];
      result[3] = v30[2];
      result[4] = v33;
      break;
    case 12:
      *(a2 + 24) = &type metadata for PhoneFormatterSource;
      *(a2 + 32) = &off_1F56D0598;
      v35 = swift_allocObject();
      *a2 = v35;
      v36 = *(v2 + 1000);
      *(v35 + 48) = *(v2 + 984);
      *(v35 + 64) = v36;
      *(v35 + 80) = *(v2 + 1016);
      v37 = *(v2 + 968);
      *(v35 + 16) = *(v2 + 952);
      *(v35 + 32) = v37;
      result = sub_1DB08B66C(v73, v61);
      break;
    case 13:
      *(a2 + 24) = &type metadata for DeviceSettingsSource;
      *(a2 + 32) = &off_1F56D0558;
      result = swift_allocObject();
      *a2 = result;
      v46 = *(v2 + 800);
      result[1] = *(v2 + 784);
      result[2] = v46;
      *(result + 12) = *(v2 + 816);
      break;
    case 14:
      v27 = *(v2 + 1033);
      v28 = *(v2 + 1032);
      v29 = *(v2 + 1024);
      *(a2 + 24) = &type metadata for ConfigurationSource;
      *(a2 + 32) = &off_1F56D05B8;
      *a2 = v29;
      *(a2 + 8) = v28;
      *(a2 + 9) = v27;
      break;
    default:
      *(a2 + 24) = &type metadata for AccountsSource;
      *(a2 + 32) = &off_1F56C7658;
      v24 = swift_allocObject();
      *a2 = v24;
      v25 = *(v2 + 24);
      v26 = *(v2 + 56);
      *(v24 + 48) = *(v2 + 40);
      *(v24 + 64) = v26;
      *(v24 + 80) = *(v2 + 72);
      *(v24 + 16) = *(v2 + 8);
      *(v24 + 32) = v25;
      result = sub_1DB08B170(v62, v61);
      break;
  }

  return result;
}

double sub_1DB068820@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = -44;
  *(a1 + 32) = 0u;
  *(a1 + 48) = -44;
  *(a1 + 56) = 0u;
  *(a1 + 72) = -44;
  *(a1 + 80) = 0u;
  *(a1 + 96) = -44;
  *(a1 + 104) = 0u;
  *(a1 + 120) = -44;
  *(a1 + 128) = 0u;
  *(a1 + 144) = -44;
  *(a1 + 152) = 0;
  *(a1 + 160) = -11263;
  *(a1 + 168) = 0u;
  *(a1 + 184) = -44;
  *(a1 + 192) = 0;
  *(a1 + 200) = -11263;
  *(a1 + 208) = 0u;
  *(a1 + 224) = -44;
  *(a1 + 232) = 0u;
  *(a1 + 248) = -44;
  *(a1 + 256) = 0u;
  *(a1 + 272) = -44;
  *(a1 + 280) = 0u;
  *(a1 + 296) = -44;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 724;
  *(a1 + 322) = -44;
  v13[0] = 1;
  v12[0] = 1;
  v11[0] = 1;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 724;
  *(a1 + 394) = -44;
  *(a1 + 400) = 0;
  *(a1 + 408) = -11263;
  *(a1 + 416) = 0;
  *(a1 + 424) = 1;
  *(a1 + 425) = -44;
  *(a1 + 432) = 0;
  *(a1 + 440) = 1;
  *(a1 + 441) = -44;
  *(a1 + 448) = 0;
  *(a1 + 456) = 1;
  *(a1 + 457) = -44;
  *(a1 + 464) = 0;
  *(a1 + 472) = 1;
  *(a1 + 473) = -44;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 724;
  *(a1 + 346) = -44;
  *(a1 + 352) = 0u;
  *(a1 + 368) = -44;
  *(a1 + 480) = sub_1DAF3F644(MEMORY[0x1E69E7CC0]);
  *(a1 + 488) = -37;
  *(a1 + 496) = 0u;
  *(a1 + 512) = -44;
  *(a1 + 513) = *v13;
  *(a1 + 516) = *&v13[3];
  *(a1 + 520) = 0u;
  *(a1 + 536) = -44;
  *(a1 + 537) = *v12;
  *(a1 + 540) = *&v12[3];
  *(a1 + 544) = 0u;
  *(a1 + 560) = -44;
  *(a1 + 564) = *&v11[3];
  *(a1 + 561) = *v11;
  *(a1 + 568) = 0u;
  *(a1 + 584) = -44;
  *(a1 + 585) = *v10;
  *(a1 + 588) = *&v10[3];
  *(a1 + 592) = 0u;
  *(a1 + 608) = -44;
  *(a1 + 609) = *v9;
  *(a1 + 612) = *&v9[3];
  *(a1 + 616) = 0u;
  *(a1 + 632) = -44;
  *(a1 + 636) = *&v8[3];
  *(a1 + 633) = *v8;
  *(a1 + 640) = 0u;
  *(a1 + 656) = -44;
  *(a1 + 660) = *&v7[3];
  *(a1 + 657) = *v7;
  *(a1 + 664) = 0u;
  *(a1 + 680) = -44;
  *(a1 + 684) = *&v6[3];
  *(a1 + 681) = *v6;
  *(a1 + 688) = 0u;
  *(a1 + 704) = -44;
  *(a1 + 708) = *&v5[3];
  *(a1 + 705) = *v5;
  *(a1 + 712) = 0u;
  *(a1 + 728) = -44;
  *(a1 + 732) = *&v4[3];
  *(a1 + 729) = *v4;
  *(a1 + 736) = 0u;
  *(a1 + 752) = -44;
  *(a1 + 756) = *&v3[3];
  *(a1 + 753) = *v3;
  *(a1 + 760) = 0u;
  *(a1 + 776) = -44;
  *&result = 3556955138;
  *(a1 + 784) = -738012158;
  *(a1 + 792) = 0;
  *(a1 + 800) = -11263;
  *(a1 + 802) = v14;
  *(a1 + 806) = v15;
  *(a1 + 808) = 0;
  *(a1 + 816) = 1;
  *(a1 + 817) = 724;
  *(a1 + 819) = -44;
  v31[0] = 1;
  v30[0] = 1;
  LOBYTE(v28) = 1;
  LOBYTE(v26) = 1;
  LOBYTE(v24) = 1;
  LOBYTE(v22) = 1;
  LOBYTE(v20) = 1;
  LOBYTE(v18) = 1;
  *(a1 + 824) = 0;
  *(a1 + 832) = -11263;
  *(a1 + 834) = v28;
  *(a1 + 838) = v29;
  *(a1 + 840) = 0;
  *(a1 + 848) = 1;
  *(a1 + 849) = -44;
  *(a1 + 850) = v26;
  *(a1 + 854) = v27;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 865) = -44;
  *(a1 + 870) = v25;
  *(a1 + 866) = v24;
  *(a1 + 872) = 0;
  *(a1 + 880) = 1;
  *(a1 + 881) = -44;
  *(a1 + 886) = v23;
  *(a1 + 882) = v22;
  *(a1 + 888) = 0;
  *(a1 + 896) = 1;
  *(a1 + 897) = -44;
  *(a1 + 902) = v21;
  *(a1 + 898) = v20;
  *(a1 + 904) = 0;
  *(a1 + 912) = 1;
  *(a1 + 913) = -44;
  *(a1 + 918) = v19;
  *(a1 + 914) = v18;
  *(a1 + 920) = 0;
  *(a1 + 928) = 1;
  *(a1 + 929) = -44;
  *(a1 + 934) = v17;
  *(a1 + 930) = v16;
  *(a1 + 936) = 0;
  *(a1 + 944) = 1;
  *(a1 + 945) = -44;
  *(a1 + 952) = 0u;
  *(a1 + 968) = -44;
  *(a1 + 972) = *&v31[3];
  *(a1 + 969) = *v31;
  *(a1 + 976) = 0u;
  *(a1 + 992) = -44;
  *(a1 + 996) = *&v30[3];
  *(a1 + 993) = *v30;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = -44;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = -11263;
  return result;
}

CoreODIEssentials::ODIBindingsDict __swiftcall ArmandDeviceData.valueDict()()
{
  v2 = v1;
  v3 = v0;
  v4 = *v2;
  memcpy(__dst, v2 + 1, sizeof(__dst));
  v5 = MEMORY[0x1E69E7CC0];
  ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v53);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v38 = v3;

    v8 = 0;
    v39 = v7 - 1;
    v40 = v6;
    v9 = v53;
    v10 = 32;
    v41 = v4;
    do
    {
      v11 = *(v6 + v10);
      v12 = *(v6 + v10 + 16);
      v13 = *(v6 + v10 + 32);
      *(v52 + 10) = *(v6 + v10 + 42);
      v51 = v12;
      v52[0] = v13;
      v50 = v11;
      *&v46[0] = v4;
      memcpy(v46 + 8, __dst, 0x402uLL);
      v44[0] = *(v6 + v10);
      v44[1] = *(v6 + v10 + 16);
      v45[0] = *(v6 + v10 + 32);
      *(v45 + 10) = *(v6 + v10 + 42);
      sub_1DB06829C(v44, &v47);
      v14 = v48;
      v15 = v49;
      __swift_project_boxed_opaque_existential_1(&v47, v48);
      v46[0] = v50;
      v46[1] = v51;
      v46[2] = v52[0];
      *(&v46[2] + 10) = *(v52 + 10);
      v16 = *(v15 + 24);
      sub_1DB042BD4(&v50, v44);
      v16(v44, v46, v14, v15);
      v17 = *&v44[0];
      if (*(*&v44[0] + 16) && (v18 = sub_1DAF35210(0x65756C6176, 0xE500000000000000), (v19 & 1) != 0))
      {
        sub_1DAF3523C(*(v17 + 56) + 40 * v18, v46);
      }

      else
      {
        memset(v46, 0, 40);
      }

      v20 = v50;
      __swift_destroy_boxed_opaque_existential_1Tm(&v47);
      sub_1DAF40A84(v46, v44, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DAF40A84(v44, &v47, &qword_1ECC0E178, &qword_1DB09FFB0);
      if (v48)
      {
        sub_1DAF332B8(&v47, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = sub_1DAF35210(v20, *(&v20 + 1));
        v24 = v9[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_34;
        }

        v27 = v22;
        if (v9[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAF3C3E8();
          }
        }

        else
        {
          sub_1DAF3761C(v26, isUniquelyReferenced_nonNull_native);
          v28 = sub_1DAF35210(v20, *(&v20 + 1));
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_36;
          }

          v23 = v28;
        }

        if (v27)
        {
          v33 = (v9[7] + 40 * v23);
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          sub_1DAF332B8(v42, v33);
          sub_1DB042C0C(&v50);
          sub_1DAF40AEC(v44, &qword_1ECC0E178, &qword_1DB09FFB0);
          sub_1DAF40AEC(v46, &qword_1ECC0E178, &qword_1DB09FFB0);
        }

        else
        {
          v9[(v23 >> 6) + 8] |= 1 << v23;
          *(v9[6] + 16 * v23) = v20;
          sub_1DAF332B8(v42, v9[7] + 40 * v23);

          sub_1DB042C0C(&v50);
          sub_1DAF40AEC(v44, &qword_1ECC0E178, &qword_1DB09FFB0);
          sub_1DAF40AEC(v46, &qword_1ECC0E178, &qword_1DB09FFB0);
          v34 = v9[2];
          v35 = __OFADD__(v34, 1);
          v36 = v34 + 1;
          if (v35)
          {
            goto LABEL_35;
          }

          v9[2] = v36;
        }

        v6 = v40;
        v4 = v41;
      }

      else
      {
        sub_1DAF40AEC(&v47, &qword_1ECC0E178, &qword_1DB09FFB0);
        v30 = sub_1DAF35210(v20, *(&v20 + 1));
        if (v31)
        {
          v32 = v30;
          v6 = v40;
          v4 = v41;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_1DAF3C3E8();
          }

          sub_1DAF332B8((v9[7] + 40 * v32), v42);
          sub_1DB07FBA0(v32, v9);
          sub_1DB042C0C(&v50);
          sub_1DAF40AEC(v44, &qword_1ECC0E178, &qword_1DB09FFB0);
          sub_1DAF40AEC(v46, &qword_1ECC0E178, &qword_1DB09FFB0);
        }

        else
        {
          sub_1DB042C0C(&v50);
          sub_1DAF40AEC(v44, &qword_1ECC0E178, &qword_1DB09FFB0);
          sub_1DAF40AEC(v46, &qword_1ECC0E178, &qword_1DB09FFB0);
          memset(v42, 0, sizeof(v42));
          v43 = 0;
          v6 = v40;
          v4 = v41;
        }

        sub_1DAF40AEC(v42, &qword_1ECC0E178, &qword_1DB09FFB0);
      }

      if (v39 == v8)
      {

        v3 = v38;
        goto LABEL_33;
      }

      ++v8;
      v10 += 64;
    }

    while (v8 < *(v6 + 16));
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    result.contents._rawValue = sub_1DB09E2E4();
    __break(1u);
  }

  else
  {

    v9 = v53;
LABEL_33:
    *v3 = v9;
  }

  return result;
}

uint64_t ArmandDeviceData.missingP1ValuesList()()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 7);
  v109 = *(v0 + 5);
  v110 = v3;
  v111 = *(v0 + 72);
  v107 = *(v0 + 1);
  v108 = v2;
  v4 = *(v0 + 8);
  v114 = *(v0 + 7);
  v115 = v4;
  v116 = *(v0 + 9);
  v117 = *(v0 + 80);
  v5 = *(v0 + 6);
  v112 = *(v0 + 5);
  v113 = v5;
  v87 = v0[22];
  v88 = v0[21];
  v86 = *(v0 + 184);
  *(v120 + 9) = *(v0 + 233);
  v6 = *(v0 + 14);
  v119 = *(v0 + 13);
  v120[0] = v6;
  v118 = *(v0 + 12);
  *(v124 + 15) = *(v0 + 319);
  v7 = *(v0 + 19);
  v123 = *(v0 + 18);
  v124[0] = v7;
  v8 = *(v0 + 17);
  v121 = *(v0 + 16);
  v122 = v8;
  v84 = v0[42];
  v85 = v0[41];
  v82 = *(v0 + 345);
  v83 = *(v0 + 344);
  v81 = *(v0 + 346);
  v79 = v0[45];
  v80 = v0[44];
  v78 = *(v0 + 368);
  v9 = *(v0 + 49);
  v125 = *(v0 + 47);
  v126 = v9;
  v10 = *(v0 + 51);
  v11 = *(v0 + 53);
  v12 = *(v0 + 55);
  v13 = *(v0 + 57);
  v131 = *(v0 + 236);
  v129 = v12;
  v130 = v13;
  v127 = v10;
  v128 = v11;
  v77 = v0[60];
  v76 = *(v0 + 488);
  result = memcpy(__dst, v0 + 62, 0x119uLL);
  v15 = *(v0 + 50);
  v133 = *(v0 + 49);
  v134 = v15;
  v135 = *(v0 + 204);
  v16 = *(v0 + 113);
  v140 = *(v0 + 111);
  v141 = v16;
  v142[0] = *(v0 + 115);
  *(v142 + 10) = *(v0 + 930);
  v17 = *(v0 + 105);
  v136 = *(v0 + 103);
  v137 = v17;
  v18 = *(v0 + 109);
  v138 = *(v0 + 107);
  v139 = v18;
  v147 = *(v0 + 1016);
  v19 = *(v0 + 125);
  v145 = *(v0 + 123);
  v146 = v19;
  v20 = *(v0 + 121);
  v143 = *(v0 + 119);
  v144 = v20;
  v91 = v0[128];
  v89 = *(v0 + 1033);
  v90 = *(v0 + 1032);
  if (!v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v21 = *(v1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      v24 = (v1 + 32 + (v22 << 6));
      v25 = v22;
      while (1)
      {
        if (v25 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v26 = *v24;
        v27 = v24[1];
        v28 = v24[2];
        *&v96[10] = *(v24 + 42);
        v95 = v27;
        *v96 = v28;
        v94 = v26;
        v22 = v25 + 1;
        if (*(&v28 + 1) == 1)
        {
          break;
        }

        v24 += 4;
        ++v25;
        if (v21 == v22)
        {
          goto LABEL_16;
        }
      }

      sub_1DB042BD4(&v94, &v104);
      result = swift_isUniquelyReferenced_nonNull_native();
      v99 = v23;
      if ((result & 1) == 0)
      {
        result = sub_1DAF5F730(0, *(v23 + 16) + 1, 1);
        v23 = v99;
      }

      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_1DAF5F730((v29 > 1), v30 + 1, 1);
        v23 = v99;
      }

      *(v23 + 16) = v30 + 1;
      v31 = (v23 + (v30 << 6));
      v32 = v94;
      v33 = v95;
      v34 = *v96;
      *(v31 + 74) = *&v96[10];
      v31[3] = v33;
      v31[4] = v34;
      v31[2] = v32;
    }

    while (v21 - 1 != v25);
LABEL_16:
    v35 = *(v23 + 16);
    if (v35)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

  v23 = MEMORY[0x1E69E7CC0];
  v35 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v35)
  {
LABEL_17:
    v36 = v35 - 1;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = 32;
    v92 = v23;
    while (1)
    {
      v39 = *(v23 + v38);
      v40 = *(v23 + v38 + 16);
      v41 = *(v23 + v38 + 32);
      *(v106 + 10) = *(v23 + v38 + 42);
      v105 = v40;
      v106[0] = v41;
      v104 = v39;
      v93 = v37;
      switch(BYTE1(v41))
      {
        case 1:
          v102 = &type metadata for MobileGestaltSource;
          v103 = &off_1F56C59F8;
          v55 = swift_allocObject();
          v99 = v55;
          v56 = v115;
          *(v55 + 48) = v114;
          *(v55 + 64) = v56;
          *(v55 + 80) = v116;
          *(v55 + 96) = v117;
          v57 = v113;
          *(v55 + 16) = v112;
          *(v55 + 32) = v57;
          sub_1DB08B1A8(&v112, &v94);
          break;
        case 2:
          v102 = &type metadata for BaaSource;
          v103 = &off_1F56C42B8;
          v53 = swift_allocObject();
          v99 = v53;
          v54 = v119;
          v53[1] = v118;
          v53[2] = v54;
          v53[3] = v120[0];
          *(v53 + 57) = *(v120 + 9);
          sub_1DB08B1E0(&v118, &v94);
          break;
        case 3:
          v102 = &type metadata for NearFieldSource;
          v103 = &off_1F56C6C70;
          v99 = v88;
          v100 = v87;
          v49 = v86;
          goto LABEL_34;
        case 4:
          v102 = &type metadata for IDSSource;
          v103 = &off_1F56C4180;
          v99 = v85;
          v100 = v84;
          v49 = v83;
          goto LABEL_34;
        case 5:
          v102 = &type metadata for CoreTelephonySource;
          v103 = &off_1F56C9190;
          v58 = swift_allocObject();
          v99 = v58;
          v59 = v124[0];
          *(v58 + 48) = v123;
          *(v58 + 64) = v59;
          *(v58 + 79) = *(v124 + 15);
          v60 = v122;
          *(v58 + 16) = v121;
          *(v58 + 32) = v60;
          sub_1DB08B218(&v121, &v94);
          break;
        case 6:
          v102 = &type metadata for LocationSource;
          v103 = &off_1F56C72F8;
          v63 = swift_allocObject();
          v99 = v63;
          v64 = v130;
          *(v63 + 80) = v129;
          *(v63 + 96) = v64;
          *(v63 + 112) = v131;
          v65 = v126;
          *(v63 + 16) = v125;
          *(v63 + 32) = v65;
          v66 = v128;
          *(v63 + 48) = v127;
          *(v63 + 64) = v66;
          sub_1DB08B250(&v125, &v94);
          break;
        case 7:
          v102 = &type metadata for TelephonyUtilitiesSource;
          v103 = &off_1F56C4B10;
          LOBYTE(v99) = v82;
          BYTE1(v99) = v81;
          break;
        case 8:
          v102 = &type metadata for TimeZoneSource;
          v103 = &off_1F56C7050;
          v99 = v80;
          v100 = v79;
          v49 = v78;
LABEL_34:
          v101 = v49;
          goto LABEL_35;
        case 9:
          v102 = &type metadata for CallerClientSource;
          v103 = &off_1F56D0518;
          v99 = v77;
          LOBYTE(v100) = v76;
LABEL_35:

          break;
        case 0xA:
          v102 = &type metadata for NameParserSource;
          v103 = &off_1F56D0538;
          v99 = swift_allocObject();
          memcpy((v99 + 16), __dst, 0x119uLL);
          sub_1DB08B298(__dst, &v94);
          break;
        case 0xB:
          v102 = &type metadata for GeocoderSource;
          v103 = &off_1F56D0578;
          v45 = swift_allocObject();
          v99 = v45;
          v46 = v141;
          v45[5] = v140;
          v45[6] = v46;
          v45[7] = v142[0];
          *(v45 + 122) = *(v142 + 10);
          v47 = v137;
          v45[1] = v136;
          v45[2] = v47;
          v48 = v139;
          v45[3] = v138;
          v45[4] = v48;
          break;
        case 0xC:
          v102 = &type metadata for PhoneFormatterSource;
          v103 = &off_1F56D0598;
          v50 = swift_allocObject();
          v99 = v50;
          v51 = v146;
          *(v50 + 48) = v145;
          *(v50 + 64) = v51;
          *(v50 + 80) = v147;
          v52 = v144;
          *(v50 + 16) = v143;
          *(v50 + 32) = v52;
          sub_1DB08B66C(&v143, &v94);
          break;
        case 0xD:
          v102 = &type metadata for DeviceSettingsSource;
          v103 = &off_1F56D0558;
          v61 = swift_allocObject();
          v99 = v61;
          v62 = v134;
          *(v61 + 16) = v133;
          *(v61 + 32) = v62;
          *(v61 + 48) = v135;
          break;
        case 0xE:
          v102 = &type metadata for ConfigurationSource;
          v103 = &off_1F56D05B8;
          v99 = v91;
          LOBYTE(v100) = v90;
          BYTE1(v100) = v89;
          break;
        default:
          v102 = &type metadata for AccountsSource;
          v103 = &off_1F56C7658;
          v42 = swift_allocObject();
          v99 = v42;
          v43 = v110;
          *(v42 + 48) = v109;
          *(v42 + 64) = v43;
          *(v42 + 80) = v111;
          v44 = v108;
          *(v42 + 16) = v107;
          *(v42 + 32) = v44;
          sub_1DB08B170(&v107, &v94);
          break;
      }

      v67 = v105;
      v68 = v106[0];
      v70 = v102;
      v69 = v103;
      __swift_project_boxed_opaque_existential_1(&v99, v102);
      v97 = v67;
      v98 = v68;
      v71 = v69[1];
      sub_1DB042BD4(&v104, &v94);
      sub_1DB042B1C(v67, *(&v67 + 1), v68);
      v71(&v94, &v97, v70, v69);
      sub_1DB041AD8(v97, *(&v97 + 1), v98);
      v72 = v94;
      __swift_destroy_boxed_opaque_existential_1Tm(&v99);
      if (v72 == 211)
      {
        v37 = v93;
      }

      else
      {
        v73 = v104;

        v37 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1DAF72DB4(0, *(v93 + 2) + 1, 1, v93);
        }

        v75 = *(v37 + 2);
        v74 = *(v37 + 3);
        if (v75 >= v74 >> 1)
        {
          v37 = sub_1DAF72DB4((v74 > 1), v75 + 1, 1, v37);
        }

        *(v37 + 2) = v75 + 1;
        *&v37[16 * v75 + 32] = v73;
      }

      sub_1DB042C0C(&v104);
      v23 = v92;
      if (!v36)
      {
        break;
      }

      --v36;
      v38 += 64;
    }

    return v37;
  }

LABEL_47:

  return MEMORY[0x1E69E7CC0];
}

uint64_t ArmandDeviceData.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 72);
  v22 = *(v1 + 64);
  v23 = *(v1 + 176);
  v24 = *(v1 + 184);
  v25 = *(v1 + 336);
  v9 = *(v1 + 344);
  v21 = *(v1 + 360);
  v26 = *(v1 + 368);
  memcpy(__dst, (v1 + 496), sizeof(__dst));
  v10 = *(v1 + 800);
  v52 = *(v1 + 784);
  v53 = v10;
  v54 = *(v1 + 816);
  v31 = *(v1 + 824);
  v27 = *(v1 + 833);
  v28 = *(v1 + 832);
  v34 = *(v1 + 840);
  v29 = *(v1 + 849);
  v30 = *(v1 + 848);
  v37 = *(v1 + 856);
  v32 = *(v1 + 865);
  v33 = *(v1 + 864);
  v40 = *(v1 + 872);
  v35 = *(v1 + 881);
  v36 = *(v1 + 880);
  v43 = *(v1 + 888);
  v38 = *(v1 + 897);
  v39 = *(v1 + 896);
  v46 = *(v1 + 904);
  v41 = *(v1 + 913);
  v42 = *(v1 + 912);
  v44 = *(v1 + 929);
  v45 = *(v1 + 928);
  v49 = *(v1 + 920);
  v50 = *(v1 + 936);
  v47 = *(v1 + 945);
  v48 = *(v1 + 944);
  v11 = *(v1 + 1000);
  v57 = *(v1 + 984);
  v58 = v11;
  v59 = *(v1 + 1016);
  v12 = *(v1 + 968);
  v55 = *(v1 + 952);
  v56 = v12;
  if (v3)
  {
    sub_1DB09E3C4();
    sub_1DB08379C(a1, v3);
    v13 = v9;
    if (v4)
    {
LABEL_3:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DB09E3C4();
    v13 = v9;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1DB09E3C4();
LABEL_6:
  if ((v5 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v14 = qword_1DB0BD040[v5 ^ 0x80u];
  }

  else
  {
    v14 = (v5 + 45);
  }

  MEMORY[0x1E1280A80](v14);
  sub_1DB09E3C4();
  if (v6)
  {
    sub_1DB09D794();
  }

  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v15 = qword_1DB0BD040[v7 ^ 0x80u];
  }

  else
  {
    v15 = (v7 + 45);
  }

  MEMORY[0x1E1280A80](v15);
  sub_1DB09E3C4();
  if (v22)
  {
    sub_1DB09D794();
  }

  if ((v8 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v16 = qword_1DB0BD040[v8 ^ 0x80u];
  }

  else
  {
    v16 = (v8 + 45);
  }

  MEMORY[0x1E1280A80](v16);
  sub_1DB05CC50(a1);
  sub_1DB09E3C4();
  if (v23)
  {
    sub_1DB09D794();
  }

  if ((v24 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v17 = qword_1DB0BD040[v24 ^ 0x80u];
  }

  else
  {
    v17 = (v24 + 45);
  }

  MEMORY[0x1E1280A80](v17);
  sub_1DB05DA5C(a1);
  sub_1DB05EAE8(a1);
  sub_1DB09E3C4();
  if (v25)
  {
    sub_1DB09D794();
  }

  if ((v13 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v18 = qword_1DB0BD040[v13 ^ 0x80u];
  }

  else
  {
    v18 = (v13 + 45);
  }

  MEMORY[0x1E1280A80](v18);
  sub_1DB06116C();
  sub_1DB09E3C4();
  if (v21)
  {
    sub_1DB09D794();
  }

  if ((v26 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v19 = qword_1DB0BD040[v26 ^ 0x80u];
  }

  else
  {
    v19 = (v26 + 45);
  }

  MEMORY[0x1E1280A80](v19);
  sub_1DB060374(a1);
  sub_1DB061FF8(a1);
  sub_1DB066CEC(a1);
  sub_1DB062B54();
  sub_1DB055C74(a1, v31, v28 | (v27 << 8));
  sub_1DB055C74(a1, v34, v30 | (v29 << 8));
  sub_1DB055C74(a1, v37, v33 | (v32 << 8));
  sub_1DB055C74(a1, v40, v36 | (v35 << 8));
  sub_1DB055C74(a1, v43, v39 | (v38 << 8));
  sub_1DB055C74(a1, v46, v42 | (v41 << 8));
  sub_1DB055C74(a1, v49, v45 | (v44 << 8));
  sub_1DB055C74(a1, v50, v48 | (v47 << 8));
  sub_1DB05BF5C(a1);
  return sub_1DB0639E8();
}

uint64_t ArmandDeviceData.hashValue.getter()
{
  sub_1DB09E3A4();
  ArmandDeviceData.hash(into:)(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB06A064()
{
  sub_1DB09E3A4();
  ArmandDeviceData.hash(into:)(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB06A0A8()
{
  sub_1DB09E3A4();
  ArmandDeviceData.hash(into:)(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB06A0EC(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x40AuLL);
  v3 = *a2;
  swift_beginAccess();
  memcpy(v7, (v3 + 112), 0x40AuLL);
  memcpy((v3 + 112), __dst, 0x40AuLL);
  sub_1DAF96A98(__dst, v5);
  return sub_1DAF40988(v7);
}

uint64_t sub_1DB06A170@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 112), 0x40AuLL);
  memcpy(a1, (v1 + 112), 0x40AuLL);
  return sub_1DAF96A98(__dst, &v4);
}

uint64_t sub_1DB06A1D8(const void *a1)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 112), 0x40AuLL);
  memcpy((v1 + 112), a1, 0x40AuLL);
  return sub_1DAF40988(__dst);
}

uint64_t sub_1DB06A28C()
{
  v1 = *(v0 + 1224);
  v10 = *(v0 + 1216);
  v11 = v1;

  sub_1DB09DE44();

  v8 = 0xD000000000000019;
  v9 = 0x80000001DB0CB380;
  if (*(v0 + 1147))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 1147))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v2, v3);

  MEMORY[0x1E127FE90](0x20646E6120, 0xE500000000000000);
  if (*(v0 + 1146))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 1146))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v4, v5);

  v6 = v8;
  LOBYTE(v8) = 5;
  CoreODILogger.debug(_:category:)(v6, v9, &v8);

  if (*(v0 + 1147) == 1)
  {
    return *(v0 + 1146);
  }

  else
  {
    return 0;
  }
}

uint64_t ArmandDataFiller.__allocating_init(sessionIdentifier:workflowID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  ArmandDataFiller.init(sessionIdentifier:workflowID:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ArmandDataFiller.init(sessionIdentifier:workflowID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  sub_1DB068820(v5 + 112);
  *(v5 + 1146) = 0;
  *(v5 + 1152) = 0;
  *(v5 + 1168) = 0;
  *(v5 + 1160) = 0;
  *(v5 + 1232) = a3;
  *(v5 + 1240) = a4;
  v10 = type metadata accessor for PhoneCertificateVendorWrapper();
  swift_allocObject();
  v16 = v10;
  v17 = &off_1F56CD198;
  *&v15 = sub_1DAF975E8();
  v11 = type metadata accessor for PhoneAuthenticationCertificateProvider();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 152) = 0;
  sub_1DAF332B8(&v15, v12 + 112);
  *(v5 + 1200) = v11;
  *(v5 + 1208) = &off_1F56CD188;
  *(v5 + 1176) = v12;
  *(v5 + 1216) = a1;
  *(v5 + 1224) = a2;
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v14 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000001FLL, 0x80000001DB0CB3A0, &v14);

  return v5;
}

uint64_t sub_1DB06A56C(__int128 *a1)
{
  v2 = v1;
  v4 = *(v1 + 1224);
  v17 = *(v1 + 1216);
  v18 = v4;
  LOBYTE(v20) = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000001FLL, 0x80000001DB0CBB90, &v20);

  v5 = *(a1 + 2);
  v6 = *(a1 + 24);
  swift_beginAccess();
  if (v6)
  {
    v7 = -43;
  }

  else
  {
    v7 = -45;
  }

  *(v2 + 304) = v5;
  *(v2 + 312) = v6 & 1;
  *(v2 + 313) = v7;
  v20 = a1[5];

  v8 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v9 = -45;
  }

  else
  {
    v9 = -43;
  }

  *(v2 + 344) = v20;
  *(v2 + 352) = v8;
  *(v2 + 360) = v9;
  v19 = *a1;
  sub_1DAF40A84(&v20, v16, &unk_1ECC0EAE0, &unk_1DB0A4650);

  v10 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v11 = -45;
  }

  else
  {
    v11 = -43;
  }

  *(v2 + 320) = v19;
  *(v2 + 328) = v10;
  *(v2 + 336) = v11;
  swift_endAccess();
  v12 = *(v2 + 1216);
  v13 = *(v2 + 1224);
  v17 = v12;
  v18 = v13;
  v15 = 5;
  sub_1DAF40A84(&v19, v16, &unk_1ECC0EAE0, &unk_1DB0A4650);

  CoreODILogger.debug(_:category:)(0xD000000000000029, 0x80000001DB0CBBB0, &v15);
}

uint64_t sub_1DB06A700(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06A724, v2, 0);
}

uint64_t sub_1DB06A724()
{
  v16 = v0;
  if (*(v0 + 120) >> 60 != 15)
  {
    sub_1DAF40674(*(v0 + 112), *(v0 + 120));
    v1 = sub_1DB09D004();
    v2 = SecCertificateCreateWithData(0, v1);

    if (v2)
    {
      v3 = v2;
      sub_1DAFC40A8(v3, v0 + 16);
      v8 = *(v0 + 120);
      v9 = *(v0 + 128);
      v10 = *(v0 + 112);
      v11 = *(v9 + 1224);
      v13[0] = *(v9 + 1216);
      v13[1] = v11;
      v14 = 5;
      v15 = 0xE000000000000000;

      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000034, 0x80000001DB0CBB50);
      v12 = sub_1DB09CF84();
      MEMORY[0x1E127FE90](v12);

      CoreODILogger.debug(_:category:)(0, 0xE000000000000000, &v14);

      sub_1DB06A56C((v0 + 16));
      sub_1DB0903D4(v0 + 16);

      sub_1DAF4AC40(v10, v8);
      goto LABEL_6;
    }

    sub_1DAF4AC40(*(v0 + 112), *(v0 + 120));
  }

  v4 = *(v0 + 128);
  v5 = *(v4 + 1224);
  v14 = *(v4 + 1216);
  v15 = v5;
  LOBYTE(v13[0]) = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000036, 0x80000001DB0CBB10, v13);

LABEL_6:
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DB06A958()
{
  v4 = v0;
  v3 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002ALL, 0x80000001DB0CBAA0, &v3);

  if (qword_1EE304008 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 496) = v1;
  *v1 = v0;
  v1[1] = sub_1DB06AA6C;

  return sub_1DAFEFC24(v0 + 240);
}

uint64_t sub_1DB06AA6C()
{
  v1 = *(*v0 + 488);

  return MEMORY[0x1EEE6DFA0](sub_1DB06AB7C, v1, 0);
}

uint64_t sub_1DB06AB7C()
{
  v16 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 320);
  *(v0 + 80) = *(v0 + 304);
  *(v0 + 96) = v2;
  v3 = *(v0 + 288);
  *(v0 + 48) = *(v0 + 272);
  *(v0 + 64) = v3;
  v4 = *(v0 + 384);
  *(v0 + 144) = *(v0 + 368);
  *(v0 + 160) = v4;
  v5 = *(v0 + 352);
  *(v0 + 112) = *(v0 + 336);
  *(v0 + 128) = v5;
  v6 = *(v0 + 448);
  *(v0 + 208) = *(v0 + 432);
  *(v0 + 224) = v6;
  v7 = *(v0 + 416);
  *(v0 + 176) = *(v0 + 400);
  *(v0 + 192) = v7;
  v8 = *(v0 + 256);
  *(v0 + 16) = *(v0 + 240);
  *(v0 + 32) = v8;
  v9 = *(v1 + 1232);
  v10 = *(v1 + 1240);
  v11 = *(v0 + 232);

  if (v11)
  {
  }

  else
  {
    v11 = sub_1DAF3EE1C(MEMORY[0x1E69E7CC0]);
    v1 = *(v0 + 488);
  }

  sub_1DAF791EC(v0 + 16);
  v12 = sub_1DAFFF410(v9, v10, v11);

  swift_beginAccess();
  *(v1 + 1136) = v12;
  *(v1 + 1144) = -11520;
  v15 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000034, 0x80000001DB0CBAD0, &v15);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DB06ACF0(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v3[24] = *(type metadata accessor for AnyODIKnownBinding(0) - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB06ADBC, v2, 0);
}

uint64_t sub_1DB06ADBC()
{
  v24 = v0;
  v1 = v0[23];
  v2 = v0[21];
  v3 = *(v1 + 1224);
  v21[0] = *(v1 + 1216);
  v21[1] = v3;

  sub_1DB09DE44();

  v22 = 0xD000000000000005;
  v23 = 0x80000001DB0CB9F0;
  v4 = MEMORY[0x1E1280010](v2, MEMORY[0x1E69E6158]);
  MEMORY[0x1E127FE90](v4);

  CoreODILogger.debug(_:category:)(0xD000000000000024, 0x80000001DB0CB9F0, &v22);

  v5 = *(v2 + 16);
  v0[27] = v5;
  if (v5)
  {
    v6 = v0[22];
    v7 = v0[21];
    v0[28] = 0;
    v0[29] = 0;
    v8 = *(v7 + 32);
    v0[30] = v8;
    v9 = *(v7 + 40);
    v0[31] = v9;
    v10 = v6[3];
    v11 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v10);
    v12 = swift_allocObject();
    v0[32] = v12;
    swift_weakInit();
    v13 = swift_allocObject();
    v0[33] = v13;
    v13[2] = v12;
    v13[3] = v8;
    v13[4] = v9;
    v14 = *(v11 + 32);
    swift_bridgeObjectRetain_n();

    v20 = (v14 + *v14);
    v15 = swift_task_alloc();
    v0[34] = v15;
    *v15 = v0;
    v15[1] = sub_1DB06B0DC;

    return (v20)(v8, v9, &unk_1DB0BB1A0, v13, v10, v11);
  }

  else
  {
    v17 = v0[23];
    v18 = *(v17 + 1224);
    v22 = *(v17 + 1216);
    v23 = v18;
    LOBYTE(v21[0]) = 5;

    CoreODILogger.debug(_:category:)(0xD00000000000002CLL, 0x80000001DB0CBA20, v21);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1DB06B0DC()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1DB06B22C, v1, 0);
}

uint64_t sub_1DB06B22C()
{
  v1 = v0[22];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1DB06B35C;
  v5 = v0[30];
  v6 = v0[31];

  return v8(v0 + 7, v5, v6, v2, v3);
}

uint64_t sub_1DB06B35C()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1DB06B46C, v1, 0);
}

uint64_t sub_1DB06B46C()
{
  v44 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 224);
    v2 = *(v0 + 208);
    sub_1DAF332B8((v0 + 56), v0 + 16);
    sub_1DAF3523C(v0 + 16, v0 + 96);
    sub_1DB05B030((v0 + 96), v2);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

      v3 = *(v0 + 8);
LABEL_23:

      return v3();
    }

    v5 = *(v0 + 184);
    swift_beginAccess();
    *(v5 + 600) = -45;
    if (!*(v5 + 592))
    {
      *(*(v0 + 184) + 592) = MEMORY[0x1E69E7CC8];
    }

    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 184);
    sub_1DB08E6B0(*(v0 + 208), *(v0 + 200), type metadata accessor for AnyODIKnownBinding);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + 592);
    *(v0 + 160) = v10;
    *(v8 + 592) = 0x8000000000000000;
    v11 = sub_1DAF35210(v7, v6);
    v13 = *(v10 + 16);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v6) = v12;
      if (*(v10 + 24) < v16)
      {
        v18 = *(v0 + 240);
        v17 = *(v0 + 248);
        sub_1DAF39ADC(v16, isUniquelyReferenced_nonNull_native);
        v11 = sub_1DAF35210(v18, v17);
        if ((v6 & 1) != (v19 & 1))
        {

          return sub_1DB09E2E4();
        }

LABEL_14:
        v21 = *(v0 + 160);
        if (v6)
        {
LABEL_15:
          sub_1DAF404BC(*(v0 + 200), v21[7] + *(*(v0 + 192) + 72) * v11);
LABEL_20:
          v30 = *(v0 + 208);
          *(*(v0 + 184) + 592) = v21;

          swift_endAccess();

          sub_1DB08E718(v30, type metadata accessor for AnyODIKnownBinding);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
          v4 = 0;
          goto LABEL_21;
        }

LABEL_18:
        v24 = *(v0 + 240);
        v23 = *(v0 + 248);
        v26 = *(v0 + 192);
        v25 = *(v0 + 200);
        v21[(v11 >> 6) + 8] |= 1 << v11;
        v27 = (v21[6] + 16 * v11);
        *v27 = v24;
        v27[1] = v23;
        result = sub_1DB08E91C(v25, v21[7] + *(v26 + 72) * v11, type metadata accessor for AnyODIKnownBinding);
        v28 = v21[2];
        v15 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v15)
        {
          __break(1u);
          return result;
        }

        v21[2] = v29;

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }
    }

    v22 = v11;
    sub_1DAF3D308();
    v11 = v22;
    v21 = *(v0 + 160);
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  sub_1DAF40AEC(v0 + 56, &qword_1ECC0E178, &qword_1DB09FFB0);
  v4 = *(v0 + 224);
LABEL_21:
  v31 = *(v0 + 232) + 1;
  if (v31 == *(v0 + 216))
  {
    v43[0] = 5;

    CoreODILogger.debug(_:category:)(0xD00000000000002CLL, 0x80000001DB0CBA20, v43);

    v3 = *(v0 + 8);
    goto LABEL_23;
  }

  *(v0 + 224) = v4;
  *(v0 + 232) = v31;
  v32 = *(v0 + 176);
  v33 = *(v0 + 168) + 16 * v31;
  v34 = *(v33 + 32);
  *(v0 + 240) = v34;
  v35 = *(v33 + 40);
  *(v0 + 248) = v35;
  v36 = v32[3];
  v37 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v36);
  v38 = swift_allocObject();
  *(v0 + 256) = v38;
  swift_weakInit();
  v39 = swift_allocObject();
  *(v0 + 264) = v39;
  v39[2] = v38;
  v39[3] = v34;
  v39[4] = v35;
  v40 = *(v37 + 32);
  swift_bridgeObjectRetain_n();

  v42 = (v40 + *v40);
  v41 = swift_task_alloc();
  *(v0 + 272) = v41;
  *v41 = v0;
  v41[1] = sub_1DB06B0DC;

  return (v42)(v34, v35, &unk_1DB0BB1A0, v39, v36, v37);
}

uint64_t sub_1DB06B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E238, &qword_1DB0A01D0);
  v4[17] = swift_task_alloc();
  v5 = type metadata accessor for AnyODIKnownBinding(0);
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB06BAB0, 0, 0);
}

uint64_t sub_1DB06BAB0()
{
  v1 = v0[20];
  sub_1DAF3523C(v0[13], (v0 + 2));
  sub_1DB05B030(v0 + 2, v1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB06BBF4, Strong, 0);
  }

  else
  {
    sub_1DB08E718(v0[20], type metadata accessor for AnyODIKnownBinding);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1DB06BBF4()
{
  v1 = v0[21];
  swift_beginAccess();
  *(v1 + 600) = -45;
  if (!*(v1 + 592))
  {
    *(v1 + 592) = sub_1DAF3F644(MEMORY[0x1E69E7CC0]);
  }

  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  sub_1DB08E6B0(v0[20], v4, type metadata accessor for AnyODIKnownBinding);
  (*(v3 + 56))(v4, 0, 1, v2);

  sub_1DAF34408(v4, v6, v5);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DB06BD1C, 0, 0);
}

uint64_t sub_1DB06BD1C()
{
  sub_1DB08E718(*(v0 + 160), type metadata accessor for AnyODIKnownBinding);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB06BDAC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06BDD0, v2, 0);
}

void sub_1DB06BDD0()
{
  v26 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v4 = (v1 + 40);
    do
    {
      v5 = *(v23 + 16);
      if (v3 == v5)
      {
        break;
      }

      if (v3 >= v5)
      {
        __break(1u);
        return;
      }

      v6 = *v4;
      v7 = *(v23 + 32 + v3);
      if (*v4 && (v8 = *(v4 - 1), , v9 = _s17CoreODIEssentials15BindingsHelpersV17formatPhoneNumber05phoneG016usingCountryCodeSSSgSS_So8NSStringCSgtFZ_0(v8, v6, 0), v11 = v10, , v11))
      {
        v12 = v2;
        swift_beginAccess();
        v13 = (v22 + 1072);
        v14 = (v22 + 1064);
        v15 = (v22 + 1080);
        if (v7)
        {
          v13 = (v22 + 1096);
          v14 = (v22 + 1088);
          v15 = (v22 + 1104);
          if (v7 != 1)
          {
            v13 = (v22 + 1120);
            v14 = (v22 + 1112);
            v15 = (v22 + 1128);
          }
        }

        *v14 = v9;
        *v13 = v11;
        v2 = v12;
      }

      else
      {
        v24 = 0;
        v25 = 0xE000000000000000;

        sub_1DB09DE44();
        v16 = v25;
        *(v0 + 16) = v24;
        *(v0 + 24) = v16;
        MEMORY[0x1E127FE90](0xD000000000000011, 0x80000001DB0CBBE0);
        *(v0 + 64) = v7;
        sub_1DB09DF94();
        MEMORY[0x1E127FE90](0x6E20656E6F687020, 0xED00007265626D75);
        v17 = *(v0 + 16);
        v18 = *(v0 + 24);
        LOBYTE(v24) = 5;
        CoreODILogger.warning(_:category:)(v17, v18, &v24);

        swift_beginAccess();
        v19 = (v22 + 1072);
        v20 = (v22 + 1064);
        v15 = (v22 + 1080);
        if (v7)
        {
          v19 = (v22 + 1096);
          v20 = (v22 + 1088);
          v15 = (v22 + 1104);
          if (v7 != 1)
          {
            v19 = (v22 + 1120);
            v20 = (v22 + 1112);
            v15 = (v22 + 1128);
          }
        }

        *v20 = 0;
        *v19 = 0xE000000000000000;
      }

      ++v3;
      v4 += 2;
      *v15 = -45;
      swift_endAccess();
    }

    while (v2 != v3);
  }

  v21 = *(v0 + 8);

  v21();
}

uint64_t sub_1DB06C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = v5;
  *(v6 + 112) = a5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  v7 = sub_1DB09CE54();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB06C174, v5, 0);
}

uint64_t sub_1DB06C174()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  MEMORY[0x1E127FE90](32, 0xE100000000000000);

  MEMORY[0x1E127FE90](v2, v1);

  v3 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  v4 = sub_1DB09D6B4();

  v5 = [v3 personNameComponentsFromString_];

  if (v5)
  {
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 112);
    sub_1DB09CE34();

    (*(v9 + 32))(v6, v7, v8);
    swift_beginAccess();
    sub_1DB065E00(v6, v10 & 1);
    swift_endAccess();
    (*(v9 + 8))(v6, v8);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DB06C324(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DB09D2A4();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A0, &qword_1DB0AECB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v44 - v7;
  v8 = type metadata accessor for ODISignpost(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v44 - v13;
  v49 = *a1;
  if (qword_1EE301378 != -1)
  {
    v43 = v12;
    swift_once();
    v12 = v43;
  }

  v15 = qword_1EE309F48;
  v16 = unk_1EE309F50;
  v17 = byte_1EE309F58;
  v18 = qword_1EE309F60;
  v19 = byte_1EE309F68;
  *(v11 + 4) = "enableTelemetry=YES";
  *(v11 + 5) = 19;
  v11[48] = 2;
  *v11 = v15;
  *(v11 + 1) = v16;
  v11[16] = v17;
  *(v11 + 3) = v18;
  v50 = v12;
  v20 = *(v12 + 28);
  v21 = v18;
  sub_1DB09D474();
  v22 = sub_1DB09DC14();
  if (v19 == 1)
  {
    sub_1DB09D454(v22, &dword_1DAF16000, v21, v15, v16, v17, &v11[v20], "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DB08E91C(v11, v14, type metadata accessor for ODISignpost);
  v23 = MKBGetDeviceLockState() - 1 < 2;
  swift_beginAccess();
  *(v2 + 896) = v23;
  *(v2 + 897) = -45;
  v24 = [objc_opt_self() sharedConnection];
  v25 = v48;
  if (v24)
  {
    v26 = v24;
    v27 = [v24 effectiveBoolValueForSetting_];

    v28 = v27 == 1;
  }

  else
  {
    v28 = 0;
  }

  *(v2 + 898) = v28;
  *(v2 + 899) = -45;
  v29 = v45;
  sub_1DB09D264();
  sub_1DB09D254();
  (*(v46 + 8))(v29, v47);
  v30 = sub_1DB09D244();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v25, 1, v30) == 1)
  {
    sub_1DAF40AEC(v25, &qword_1ECC0E9A0, &qword_1DB0AECB0);
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    v34 = sub_1DB09D1F4();
    v33 = v35;
    (*(v31 + 8))(v25, v30);
    v32 = v34;
  }

  v36 = _s17CoreODIEssentials15BindingsHelpersV25convertCountryCodeToASCII3strSiSS_tFZ_0(v32, v33);

  *(v2 + 904) = v36;
  *(v2 + 912) = 0;
  *(v2 + 913) = -45;
  v37 = _s17CoreODIEssentials15BindingsHelpersV14deviceLanguageSSSgvgZ_0();
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0xE000000000000000;
  }

  v40 = _s17CoreODIEssentials15BindingsHelpersV26convertLanguageCodeToASCII3strSiSS_tFZ_0(v37, v39);

  *(v2 + 920) = v40;
  *(v2 + 928) = 0;
  *(v2 + 929) = -45;
  v52 = v49;
  v51 = 70;
  v41 = sub_1DB06C80C(&v51);
  if (v41 != 2)
  {
    *(v2 + 930) = v41;
    *(v2 + 931) = -45;
  }

  sub_1DB09DC04();
  sub_1DB09D464();
  return sub_1DB08E718(v14, type metadata accessor for ODISignpost);
}

uint64_t sub_1DB06C80C(unsigned __int8 *a1)
{
  v2 = *a1;
  ODIBindingsDict.subscript.getter(v3);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1DAF40AEC(v3, &qword_1ECC0E178, &qword_1DB09FFB0);
    return 2;
  }
}

uint64_t sub_1DB06C8B8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06C8D8, v1, 0);
}

uint64_t sub_1DB06C8D8()
{
  v8 = v0;
  v1 = *(v0 + 40);
  v7 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000033, 0x80000001DB0CB9B0, &v7);

  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DB06CA4C;

  return v6(v2, v3);
}

uint64_t sub_1DB06CA4C(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB06CB64, v2, 0);
}

uint64_t sub_1DB06CB64()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  swift_beginAccess();
  *(v2 + 505) = v1;
  *(v2 + 506) = -45;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DB06CBE4(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06CC04, v1, 0);
}

uint64_t sub_1DB06CC04()
{
  v8 = v0;
  v1 = *(v0 + 120);
  v7 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000024, 0x80000001DB0CB8C0, &v7);

  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1DB06CD78;

  return v6(v2, v3);
}

uint64_t sub_1DB06CD78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = sub_1DB06D068;
  }

  else
  {
    v6 = sub_1DB06CEAC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DB06CEAC()
{
  v10 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[16];
    swift_beginAccess();
    sub_1DB05FA5C(v1);
    swift_endAccess();
    v3 = sub_1DB09017C(v1);
    v5 = v4;
    swift_beginAccess();

    *(v2 + 488) = v3;
    *(v2 + 496) = v5;
    *(v2 + 504) = -45;
    swift_endAccess();
    if (sub_1DB09DA64())
    {
      v9 = 14;

      CoreODILogger.warning(_:category:)(0xD000000000000050, 0x80000001DB0CB950, &v9);
    }

    else
    {
    }
  }

  else
  {
    v6 = v0[16];
    swift_beginAccess();

    *(v6 + 488) = 0;
    *(v6 + 496) = 0;
    *(v6 + 504) = -43;
    swift_endAccess();
  }

  v9 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000031, 0x80000001DB0CB910, &v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB06D068()
{
  v11 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = *(v2 + 1224);
  v8[0] = *(v2 + 1216);
  v8[1] = v3;
  v9 = 14;
  v10 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000018, 0x80000001DB0CB8F0);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.debug(_:category:)(0, 0xE000000000000000, &v9);

  v4 = v0[16];
  v5 = *(v4 + 1224);
  v9 = *(v4 + 1216);
  v10 = v5;
  LOBYTE(v8[0]) = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000031, 0x80000001DB0CB910, v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB06D1C0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06D1E0, v1, 0);
}

uint64_t sub_1DB06D1E0()
{
  v3 = v0;
  *(*(v0 + 48) + 1152) = *(v0 + 40);

  v2 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000026, 0x80000001DB0CB860, &v2);

  return MEMORY[0x1EEE6DFA0](sub_1DB06D2A4, 0, 0);
}

uint64_t sub_1DB06D2A4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1DB06D384;
  v2 = *(v0 + 40);
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 64, 0, 0, 0x6E69726168537369, 0xEF6E656572635367, sub_1DB08EE1C, v2, v3);
}

uint64_t sub_1DB06D384()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB06D480, 0, 0);
}

uint64_t sub_1DB06D480()
{
  v1 = *(v0 + 48);
  *(v0 + 65) = *(v0 + 64);
  return MEMORY[0x1EEE6DFA0](sub_1DB06D4A4, v1, 0);
}

uint64_t sub_1DB06D4A4()
{
  v6 = v0;
  v1 = *(v0 + 65);
  v2 = *(v0 + 48);
  swift_beginAccess();
  *(v2 + 457) = v1;
  *(v2 + 458) = -45;
  v5 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002BLL, 0x80000001DB0CB890, &v5);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DB06D570(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06D590, v1, 0);
}

uint64_t sub_1DB06D590()
{
  v5 = v0;
  *(v0[8] + 1160) = v0[7];

  v4 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000025, 0x80000001DB0CB7A0, &v4);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1DB06D688;
  v2 = v0[7];

  return sub_1DB06E404(v2);
}

uint64_t sub_1DB06D688()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_1DB06D7E0;
  v4 = *(v1 + 56);

  return sub_1DB06E770(v4);
}

uint64_t sub_1DB06D7E0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_1DB06D938;
  v4 = *(v1 + 56);

  return sub_1DB06EADC(v4);
}

uint64_t sub_1DB06D938()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1DB06DA48, v1, 0);
}

uint64_t sub_1DB06DA48()
{
  v1 = v0[7];
  v2 = sub_1DB08E648(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo, &protocol conformance descriptor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  strcpy((v3 + 24), "UniqueChipID");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E430, &unk_1DB0A0550);
  *v4 = v0;
  v4[1] = sub_1DB06DBB4;

  return MEMORY[0x1EEE6DDE0](v0 + 5, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAF49C08, v3, v5);
}

uint64_t sub_1DB06DBB4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  *(v1 + 112) = *(v1 + 40);
  *(v1 + 49) = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1DB06DD10, v2, 0);
}

uint64_t sub_1DB06DD10()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 112);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  swift_beginAccess();
  if (v1)
  {
    v5 = -43;
  }

  else
  {
    v5 = -45;
  }

  *(v4 + 264) = v2;
  *(v4 + 272) = v1;
  *(v4 + 273) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1DB06DDB4, v3, 0);
}

uint64_t sub_1DB06DDB4()
{
  v1 = *(v0 + 64);
  *(v0 + 50) = sub_1DAFC9A60() & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DB06DE24, v1, 0);
}

uint64_t sub_1DB06DE24()
{
  v6 = v0;
  v1 = *(v0 + 64);
  *(v1 + 433) = *(v0 + 50);
  *(v1 + 434) = -45;
  v5 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000023, 0x80000001DB0CB7D0, &v5);

  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1DB06DF10;
  v3 = *(v0 + 56);

  return sub_1DB06EE4C(v3);
}

uint64_t sub_1DB06DF10()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1DB06E020, v1, 0);
}

uint64_t sub_1DB06E020()
{
  v4 = v0;
  v3 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000001DLL, 0x80000001DB0CB800, &v3);

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1DB06E0FC;

  return sub_1DB06EFB4();
}

uint64_t sub_1DB06E0FC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 136) = v3;
  *v3 = v2;
  v3[1] = sub_1DB06E254;

  return sub_1DB06F23C();
}

uint64_t sub_1DB06E254()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1DB06E364, v1, 0);
}

uint64_t sub_1DB06E364()
{
  v4 = v0;
  v3 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000032, 0x80000001DB0CB820, &v3);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB06E404(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06E424, a1, 0);
}

uint64_t sub_1DB06E424()
{
  v1 = v0[7];
  v2 = sub_1DB08E648(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo, &protocol conformance descriptor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  strcpy((v3 + 24), "BuildVersion");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  *v4 = v0;
  v4[1] = sub_1DB06E590;

  return MEMORY[0x1EEE6DDE0](v0 + 5, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v5);
}

uint64_t sub_1DB06E590()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  *(v1 + 88) = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DB06E6CC, v2, 0);
}

uint64_t sub_1DB06E6CC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  swift_beginAccess();

  if (v2)
  {
    v4 = -45;
  }

  else
  {
    v4 = -43;
  }

  *(v3 + 192) = v1;
  *(v3 + 200) = v2;
  *(v3 + 208) = v4;
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB06E770(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06E790, a1, 0);
}

uint64_t sub_1DB06E790()
{
  v1 = v0[7];
  v2 = sub_1DB08E648(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo, &protocol conformance descriptor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  strcpy((v3 + 24), "SerialNumber");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  *v4 = v0;
  v4[1] = sub_1DB06E8FC;

  return MEMORY[0x1EEE6DDE0](v0 + 5, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v5);
}

uint64_t sub_1DB06E8FC()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  *(v1 + 88) = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DB06EA38, v2, 0);
}

uint64_t sub_1DB06EA38()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  swift_beginAccess();

  if (v2)
  {
    v4 = -45;
  }

  else
  {
    v4 = -43;
  }

  *(v3 + 216) = v1;
  *(v3 + 224) = v2;
  *(v3 + 232) = v4;
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB06EADC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06EAFC, a1, 0);
}

uint64_t sub_1DB06EAFC()
{
  v1 = v0[7];
  v2 = sub_1DB08E648(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo, &protocol conformance descriptor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  strcpy((v3 + 24), "UniqueDeviceID");
  *(v3 + 39) = -18;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  *v4 = v0;
  v4[1] = sub_1DB06EC6C;

  return MEMORY[0x1EEE6DDE0](v0 + 5, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFA7214, v3, v5);
}

uint64_t sub_1DB06EC6C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  *(v1 + 88) = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DB06EDA8, v2, 0);
}

uint64_t sub_1DB06EDA8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  swift_beginAccess();

  if (v2)
  {
    v4 = -45;
  }

  else
  {
    v4 = -43;
  }

  *(v3 + 240) = v1;
  *(v3 + 248) = v2;
  *(v3 + 256) = v4;
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB06EE4C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06EE6C, a1, 0);
}

uint64_t sub_1DB06EE6C()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = sub_1DAFC5BDC(0);

  return MEMORY[0x1EEE6DFA0](sub_1DB06EEDC, v1, 0);
}

uint64_t sub_1DB06EEDC()
{
  v1 = v0[7];
  if (v1)
  {
    if (v1[2])
    {
      v3 = v1[4];
      v2 = v1[5];

      goto LABEL_6;
    }
  }

  v3 = 0;
  v2 = 0;
LABEL_6:
  v4 = v0[6];
  swift_beginAccess();

  if (v2)
  {
    v5 = -45;
  }

  else
  {
    v5 = -43;
  }

  *(v4 + 368) = v3;
  *(v4 + 376) = v2;
  *(v4 + 384) = v5;
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB06EFB4()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1DB06F04C;

  return sub_1DAFC6EF4();
}

uint64_t sub_1DB06F04C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB06F164, v2, 0);
}

uint64_t sub_1DB06F164()
{
  v1 = v0[7];
  if (v1)
  {
    if (v1[2])
    {
      v3 = v1[4];
      v2 = v1[5];

      goto LABEL_6;
    }
  }

  v3 = 0;
  v2 = 0;
LABEL_6:
  v4 = v0[5];
  swift_beginAccess();

  if (v2)
  {
    v5 = -45;
  }

  else
  {
    v5 = -43;
  }

  *(v4 + 392) = v3;
  *(v4 + 400) = v2;
  *(v4 + 408) = v5;
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB06F23C()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1DB06F2D4;

  return sub_1DAFC7D98();
}

uint64_t sub_1DB06F2D4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB06F3EC, v2, 0);
}

uint64_t sub_1DB06F3EC()
{
  v1 = v0[7];
  if (v1)
  {
    if (v1[2])
    {
      v3 = v1[4];
      v2 = v1[5];

      goto LABEL_6;
    }
  }

  v3 = 0;
  v2 = 0;
LABEL_6:
  v4 = v0[5];
  swift_beginAccess();

  if (v2)
  {
    v5 = -45;
  }

  else
  {
    v5 = -43;
  }

  *(v4 + 416) = v3;
  *(v4 + 424) = v2;
  *(v4 + 432) = v5;
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB06F4C4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06F4E4, v1, 0);
}

uint64_t sub_1DB06F4E4()
{
  v4 = v0;
  *(v0[6] + 1168) = v0[5];

  v3 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000001CLL, 0x80000001DB0CB750, &v3);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DB06F5D8;

  return sub_1DAFE3884();
}

uint64_t sub_1DB06F5D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    v10 = v6[6];
    v6[8] = a2;
    v6[9] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DB06F734, v10, 0);
  }
}

uint64_t sub_1DB06F734()
{
  v8 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  swift_beginAccess();

  if (v1)
  {
    v4 = -45;
  }

  else
  {
    v4 = -43;
  }

  *(v3 + 280) = v2;
  *(v3 + 288) = v1;
  *(v3 + 296) = v4;
  swift_endAccess();
  v7 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002FLL, 0x80000001DB0CB770, &v7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB06F840()
{
  v6 = v0;
  v5 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000020, 0x80000001DB0CB6F0, &v5);

  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE302B58;
  v2 = type metadata accessor for ODIAccountManager();
  v0[5] = v2;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1DB06F988;

  return sub_1DB04D28C();
}

uint64_t sub_1DB06F988(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[12] = v2;

  v7 = v6[10];
  if (v2)
  {
    v8 = sub_1DB06FAC8;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v8 = sub_1DB06FB2C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DB06FAC8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB06FB2C()
{
  v7 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  swift_beginAccess();

  *(v3 + 168) = v2;
  *(v3 + 176) = v1;
  *(v3 + 184) = -45;
  swift_endAccess();
  v6 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002ALL, 0x80000001DB0CB720, &v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB06FC34()
{
  v8 = v0;
  v1 = v0[15];
  v7 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000020, 0x80000001DB0CB690, &v7);

  sub_1DAF3523C(v1 + 1176, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1DB06FDAC;

  return v6(v2, v3);
}

uint64_t sub_1DB06FDAC(uint64_t a1)
{
  v4 = *v2;
  v4[17] = v1;

  v5 = v4[15];
  if (v1)
  {
    v6 = sub_1DB070058;
  }

  else
  {
    v4[18] = a1;
    v6 = sub_1DB06FEE8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DB06FEE8()
{
  v8 = v0;
  v1 = v0[15];
  v0[14] = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  sub_1DAF4AA8C(&qword_1EE301930, &qword_1ECC0E448, &qword_1DB0A3110, MEMORY[0x1E69E6310]);
  v2 = sub_1DB09D694();
  v4 = v3;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  swift_beginAccess();

  *(v1 + 440) = v2;
  *(v1 + 448) = v4;
  *(v1 + 456) = -45;
  swift_endAccess();
  v7 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002CLL, 0x80000001DB0CB6C0, &v7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB070058()
{
  v8 = v0;
  v1 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {

    v3 = byte_1DB0BD02E[*(v0 + 152)];
    v4 = *(v0 + 120);
    swift_beginAccess();
    *(v4 + 456) = v3;
    *(v4 + 440) = 0;
    *(v4 + 448) = 0;

    v7 = 5;

    CoreODILogger.debug(_:category:)(0xD00000000000002CLL, 0x80000001DB0CB6C0, &v7);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DB0701D4()
{
  v6 = v0;
  v5 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000023, 0x80000001DB0CB630, &v5);

  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE302B58;
  v2 = type metadata accessor for ODIAccountManager();
  v0[5] = v2;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1DB07031C;

  return sub_1DB04DA34();
}

uint64_t sub_1DB07031C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[12] = v2;

  v7 = v6[10];
  if (v2)
  {
    v8 = sub_1DB095470;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v8 = sub_1DB07045C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DB07045C()
{
  v7 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  swift_beginAccess();

  *(v3 + 144) = v2;
  *(v3 + 152) = v1;
  *(v3 + 160) = -45;
  swift_endAccess();
  v6 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002FLL, 0x80000001DB0CB660, &v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB070564()
{
  v7 = v0;
  v6 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000023, 0x80000001DB0CB5D0, &v6);

  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE302B58;
  v2 = type metadata accessor for ODIAccountManager();
  v0[5] = v2;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v1;
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[8] = v3;
  v4 = *v3;

  return MEMORY[0x1EEE6DFA0](sub_1DB070684, v4, 0);
}

uint64_t sub_1DB070684()
{
  v1 = sub_1DB04E1DC();
  v3 = v2;
  v0[9] = 0;
  v4 = v0[7];
  v0[10] = v3;
  v0[11] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DB070780, v4, 0);
}

uint64_t sub_1DB07071C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB070780()
{
  v7 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  swift_beginAccess();

  *(v3 + 120) = v2;
  *(v3 + 128) = v1;
  *(v3 + 136) = -45;
  swift_endAccess();
  v6 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002FLL, 0x80000001DB0CB600, &v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB070868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[345] = v4;
  v5[344] = a4;
  v5[343] = a3;
  v5[342] = a2;
  v5[341] = a1;
  v5[346] = *v4;
  v5[347] = type metadata accessor for ODISignpost(0);
  v5[348] = swift_task_alloc();
  v5[349] = swift_task_alloc();
  v5[350] = swift_task_alloc();
  v5[351] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB070958, v4, 0);
}

uint64_t sub_1DB070958()
{
  v139 = v0;
  v1 = v0 + 2408;
  v116 = (v0 + 2576);
  v107 = (v0 + 2608);
  v108 = (v0 + 2592);
  v99 = (v0 + 2640);
  v101 = (v0 + 2664);
  v102 = (v0 + 2656);
  v104 = (v0 + 2688);
  v105 = (v0 + 2672);
  v106 = (v0 + 2696);
  v103 = (v0 + 2704);
  v122 = (v0 + 2712);
  v123 = (v0 + 2624);
  v115 = (v0 + 2720);
  v2 = *(v0 + 2760);
  v3 = *(v0 + 2728);
  v4 = v2[152];
  *(v0 + 2816) = v4;
  v5 = v2[153];
  *(v0 + 2824) = v5;
  swift_beginAccess();
  memcpy((v0 + 1056), v2 + 14, 0x40AuLL);
  v127 = v5;
  v128 = v4;
  *&v137[0] = v4;
  *(&v137[0] + 1) = v5;
  __src = (v0 + 1056);
  sub_1DAF96A98(v0 + 1056, v0 + 16);
  sub_1DB09DE44();

  __dst[0] = 0xD000000000000005;
  __dst[1] = 0x80000001DB0CB3C0;
  v6 = MEMORY[0x1E1280010](v3, &type metadata for DeviceDataField);
  MEMORY[0x1E127FE90](v6);

  CoreODILogger.info(_:category:)(0xD000000000000015, 0x80000001DB0CB3C0, __dst);

  *(v0 + 2576) = 0;
  *(v0 + 2584) = 1;
  *(v0 + 2720) = 0;
  *(v0 + 2624) = 0;
  *(v0 + 2632) = 1;
  *(v0 + 2704) = 0u;
  *(v0 + 2608) = 0;
  *(v0 + 2616) = 1;
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 2696) = MEMORY[0x1E69E7CC0];
  *(v0 + 2688) = 0;
  *(v0 + 2592) = 0;
  *(v0 + 2600) = 1;
  *(v0 + 2672) = v8;
  *(v0 + 2664) = v8;
  *(v0 + 2656) = 0;
  *(v0 + 2640) = 0;
  *(v0 + 2648) = 1;
  if (!*(v3 + 16))
  {
    v75 = 400000;
    v76 = MEMORY[0x1E69E7CC0];
    v77 = MEMORY[0x1E69E7CC0];
    goto LABEL_146;
  }

  v95 = 0;
  v9 = 0;
  v100 = 0;
  v110 = 0;
  v111 = 0;
  v125 = 0;
  v126 = 0;
  v118 = 0;
  v119 = 0;
  v94 = 0;
  v97 = 0;
  v10 = (v0 + 2224);
  v98 = *(v0 + 2728) + 32;
  v109 = 1;
  v112 = MEMORY[0x1E69E7CC0];
  v113 = MEMORY[0x1E69E7CC0];
  v120 = MEMORY[0x1E69E7CC0];
  v121 = MEMORY[0x1E69E7CC0];
  v114 = MEMORY[0x1E69E7CC0];
  v124 = 1;
  v117 = 1;
  v96 = 1;
  v130 = *(v3 + 16);
  while (2)
  {
    while (2)
    {
      v11 = (v98 + (v9 << 6));
      while (1)
      {
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        *(v10 + 42) = *(v11 + 42);
        v10[1] = v13;
        v10[2] = v14;
        *v10 = v12;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          goto LABEL_150;
        }

        v134 = v9;
        v142 = v9 + 1;
        v15 = v10;
        v16 = *(v0 + 2240);
        v17 = *(v0 + 2248);
        v18 = *(v0 + 2256);
        memcpy(__dst, __src, 0x40AuLL);
        v19 = v11[1];
        v137[0] = *v11;
        v137[1] = v19;
        v138[0] = v11[2];
        v135 = v11;
        *(v138 + 10) = *(v11 + 42);
        sub_1DB06829C(v137, v0 + 2448);
        v20 = *(v0 + 2472);
        v21 = *(v0 + 2480);
        __swift_project_boxed_opaque_existential_1((v0 + 2448), v20);
        __dst[0] = v16;
        __dst[1] = v17;
        LOBYTE(__dst[2]) = v18;
        v22 = *(v21 + 8);
        sub_1DB042BD4(v15, v0 + 2160);
        v132 = v17;
        v133 = v16;
        sub_1DB042B1C(v16, v17, v18);
        v22(v137, __dst, v20, v21);
        sub_1DB041AD8(__dst[0], __dst[1], __dst[2]);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2448));
        if (LOBYTE(v137[0]) != 212)
        {
          sub_1DB042C0C(v15);
          v32 = v130;
          v33 = v142;
          v10 = v15;
          v30 = v135;
          goto LABEL_109;
        }

        v129 = *(v0 + 2272);
        v23 = *(v0 + 2280);
        v24 = *(v0 + 2264);
        v25 = *(v0 + 2257);
        *&v137[0] = v128;
        *(&v137[0] + 1) = v127;
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1DB09DE44();
        v26 = __dst[1];
        *(v0 + 2512) = __dst[0];
        *(v0 + 2520) = v26;
        MEMORY[0x1E127FE90](0xD00000000000001ALL, 0x80000001DB0CB4A0);
        v27 = v15[1];
        *(v0 + 2096) = *v15;
        *(v0 + 2112) = v27;
        *(v0 + 2128) = v15[2];
        *(v0 + 2138) = *(v15 + 42);
        sub_1DB09DF94();
        v28 = *(v0 + 2512);
        v29 = *(v0 + 2520);
        LOBYTE(__dst[0]) = 5;
        CoreODILogger.debug(_:category:)(v28, v29, __dst);

        v10 = v15;
        v30 = v135;
        if (v25 <= 9)
        {
          break;
        }

        if (v25 > 11)
        {
          if (v25 != 12)
          {
            if (v25 != 14)
            {
              goto LABEL_107;
            }

            v51 = v23;
            v32 = v130;
            v33 = v142;
            if (v18)
            {
              if (v129 > 0x10C6F7A0B5EDLL)
              {
                v52 = 1;
              }

              else
              {
                v52 = v51;
              }

              v53 = 1000000 * v129;
              if (1000000 * v129 <= v111)
              {
                v53 = v111;
              }

              if (v52)
              {
                v54 = -1;
              }

              else
              {
                v54 = v53;
              }

              *v104 = v54;
              v55 = v110;
              if (v109)
              {
                v55 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if (v24 < v55)
              {
                v55 = v24;
              }

              *v108 = v55;
              *(v0 + 2600) = 0;
              sub_1DB042B1C(v133, v132, 1);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v112 = sub_1DAF72DB4(0, *(v112 + 2) + 1, 1, v112);
              }

              v57 = *(v112 + 2);
              v56 = *(v112 + 3);
              if (v57 >= v56 >> 1)
              {
                v112 = sub_1DAF72DB4((v56 > 1), v57 + 1, 1, v112);
              }

              sub_1DB042C0C(v15);
              *(v112 + 2) = v57 + 1;
              v58 = &v112[16 * v57];
              *(v58 + 4) = v133;
              *(v58 + 5) = v132;
              sub_1DB041AD8(v133, v132, 1);
              *v105 = v112;
              goto LABEL_109;
            }

            goto LABEL_105;
          }

          v32 = v130;
          v33 = v142;
          if (!v18)
          {
            goto LABEL_105;
          }

          sub_1DB042B1C(v133, v132, 1);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_1DAF72DB4(0, *(v121 + 2) + 1, 1, v121);
          }

          v64 = *(v121 + 2);
          v67 = *(v121 + 3);
          v65 = v64 + 1;
          if (v64 >= v67 >> 1)
          {
            v121 = sub_1DAF72DB4((v67 > 1), v64 + 1, 1, v121);
          }

          sub_1DB042C0C(v15);
          v66 = v121;
        }

        else
        {
          if (v25 != 10)
          {
            v41 = v23;
            v32 = v130;
            v33 = v142;
            if (v18)
            {
              sub_1DB042B1C(v133, v132, 1);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v113 = sub_1DAF72DB4(0, *(v113 + 2) + 1, 1, v113);
              }

              v43 = *(v113 + 2);
              v42 = *(v113 + 3);
              if (v43 >= v42 >> 1)
              {
                v113 = sub_1DAF72DB4((v42 > 1), v43 + 1, 1, v113);
              }

              *(v113 + 2) = v43 + 1;
              v44 = &v113[16 * v43];
              *(v44 + 4) = v133;
              *(v44 + 5) = v132;
              sub_1DB041AD8(v133, v132, 1);
              sub_1DB042C0C(v10);
              *v101 = v113;
              if (v129 > 0x10C6F7A0B5EDLL)
              {
                v45 = 1;
              }

              else
              {
                v45 = v41;
              }

              v46 = 1000000 * v129;
              if (1000000 * v129 <= v100)
              {
                v46 = v100;
              }

              if (v45)
              {
                v46 = -1;
              }

              v100 = v46;
              *v102 = v46;
              goto LABEL_109;
            }

LABEL_105:
            sub_1DB042C0C(v10);
            goto LABEL_109;
          }

          v32 = v130;
          v33 = v142;
          if (!v18)
          {
            goto LABEL_105;
          }

          sub_1DB042B1C(v133, v132, 1);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v120 = sub_1DAF72DB4(0, *(v120 + 2) + 1, 1, v120);
          }

          v64 = *(v120 + 2);
          v63 = *(v120 + 3);
          v65 = v64 + 1;
          if (v64 >= v63 >> 1)
          {
            v120 = sub_1DAF72DB4((v63 > 1), v64 + 1, 1, v120);
          }

          sub_1DB042C0C(v15);
          v66 = v120;
        }

        *(v66 + 2) = v65;
        v68 = &v66[16 * v64];
        *(v68 + 4) = v133;
        *(v68 + 5) = v132;
        sub_1DB041AD8(v133, v132, 1);
LABEL_109:
        if (v33 == v32)
        {
          goto LABEL_136;
        }

        v9 = v134 + 1;
        v11 = v30 + 4;
        if (v33 >= v32)
        {
          goto LABEL_135;
        }
      }

      if (v25 <= 4)
      {
        if (v25 == 1)
        {
LABEL_79:
          sub_1DB042C0C(v15);
          v59 = v126;
          if (v124)
          {
            v59 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v24 >= v59)
          {
            v60 = v59;
          }

          else
          {
            v60 = v24;
          }

          v126 = v60;
          *v123 = v60;
          *(v0 + 2632) = 0;
          if (v129 > 0x10C6F7A0B5EDLL)
          {
            v61 = 1;
          }

          else
          {
            v61 = v23;
          }

          v62 = 1000000 * v129;
          if (1000000 * v129 <= v125)
          {
            v62 = v125;
          }

          if (v61)
          {
            v62 = -1;
          }

          v125 = v62;
          *v122 = v62;
          v124 = 0;
        }

        else
        {
          if (v25 != 2)
          {
            goto LABEL_107;
          }

          sub_1DB042C0C(v15);
          v47 = v119;
          if (v117)
          {
            v47 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v24 >= v47)
          {
            v48 = v47;
          }

          else
          {
            v48 = v24;
          }

          v119 = v48;
          *v116 = v48;
          *(v0 + 2584) = 0;
          if (v129 > 0x10C6F7A0B5EDLL)
          {
            v49 = 1;
          }

          else
          {
            v49 = v23;
          }

          v50 = 1000000 * v129;
          if (1000000 * v129 <= v118)
          {
            v50 = v118;
          }

          if (v49)
          {
            v50 = -1;
          }

          v118 = v50;
          *v115 = v50;
          v117 = 0;
        }

LABEL_108:
        v32 = v130;
        v33 = v142;
        goto LABEL_109;
      }

      if (v25 == 5)
      {
        goto LABEL_79;
      }

      if (v25 == 9)
      {
        v31 = v23;
        v32 = v130;
        v33 = v142;
        if (v18)
        {
          if (v129 > 0x10C6F7A0B5EDLL)
          {
            v34 = 1;
          }

          else
          {
            v34 = v31;
          }

          v35 = 1000000 * v129;
          if (1000000 * v129 <= v111)
          {
            v35 = v111;
          }

          if (v34)
          {
            v35 = -1;
          }

          v111 = v35;
          *v103 = v35;
          v36 = v110;
          if (v109)
          {
            v36 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v24 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v24;
          }

          v110 = v37;
          *v107 = v37;
          *(v0 + 2616) = 0;
          sub_1DB042B1C(v133, v132, 1);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_1DAF72DB4(0, *(v114 + 2) + 1, 1, v114);
          }

          v39 = *(v114 + 2);
          v38 = *(v114 + 3);
          if (v39 >= v38 >> 1)
          {
            v114 = sub_1DAF72DB4((v38 > 1), v39 + 1, 1, v114);
          }

          sub_1DB042C0C(v15);
          *(v114 + 2) = v39 + 1;
          v40 = &v114[16 * v39];
          *(v40 + 4) = v133;
          *(v40 + 5) = v132;
          sub_1DB041AD8(v133, v132, 1);
          v109 = 0;
          *v106 = v114;
          goto LABEL_109;
        }

        goto LABEL_105;
      }

      if (v25 != 6)
      {
LABEL_107:
        sub_1DB042C0C(v15);
        goto LABEL_108;
      }

      if (v133 == 11)
      {
        v69 = v18;
      }

      else
      {
        v69 = 1;
      }

      sub_1DB042C0C(v15);
      v9 = v142;
      if (v69)
      {
        v70 = v94;
        if (v96)
        {
          v70 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v71 = v95;
        if (v96)
        {
          v71 = 0;
        }

        if (v70 >= v24)
        {
          v72 = v24;
        }

        else
        {
          v72 = v70;
        }

        v94 = v72;
        *v99 = v72;
        *(v0 + 2648) = 0;
        v73 = 1000000 * v129;
        if (v129 > 0x10C6F7A0B5EDLL)
        {
          v74 = 1;
        }

        else
        {
          v74 = v23;
        }

        if (v74)
        {
          v73 = -1;
        }

        if (v71 > v73)
        {
          v73 = v71;
        }

        v95 = v73;
        if (v9 != v130)
        {
          v96 = 0;
          v97 = 1;
          if (v9 < v130)
          {
            continue;
          }

          goto LABEL_135;
        }

        if (v73 >= 0x3B9ACA00)
        {
          v75 = 1000000000;
        }

        else
        {
          v75 = v73;
        }

        goto LABEL_155;
      }

      break;
    }

    if (v142 == v130)
    {
LABEL_150:
      v93 = 1000000000;
      if (v95 < 0x3B9ACA00)
      {
        v93 = v95;
      }

      if (v96)
      {
        v75 = 400000;
      }

      else
      {
        v75 = v93;
      }

LABEL_155:
      v1 = v0 + 2408;
      v77 = v120;
      v76 = v121;
      goto LABEL_143;
    }

    v97 = 1;
    if (v142 < v130)
    {
      continue;
    }

    break;
  }

LABEL_135:
  __break(1u);
LABEL_136:
  if (v96)
  {
    v75 = 400000;
  }

  else if (v95 >= 0x3B9ACA00)
  {
    v75 = 1000000000;
  }

  else
  {
    v75 = v95;
  }

  v1 = v0 + 2408;
  v77 = v120;
  v76 = v121;
  if (v97)
  {
LABEL_143:
    *(v0 + 2848) = v75;
    *(v0 + 2840) = v77;
    *(v0 + 2832) = v76;
    v142 = *(v0 + 2736) + **(v0 + 2736);
    v78 = swift_task_alloc();
    *(v0 + 2856) = v78;
    *v78 = v0;
    v78[1] = sub_1DB07177C;
    v79 = v142;

    return v79(v1);
  }

LABEL_146:
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v0 + 2872) = v77;
  *(v0 + 2864) = v76;
  v81 = *(v0 + 2824);
  v82 = *(v0 + 2816);
  v83 = *(v0 + 2768);
  v84 = *(v0 + 2760);
  v85 = *(v0 + 2752);
  v86 = *(v0 + 2728);
  v142 = sub_1DB08E648(&qword_1EE3014E0, v7, type metadata accessor for ArmandDataFiller, &protocol conformance descriptor for ArmandDataFiller);
  v87 = swift_task_alloc();
  *(v0 + 2880) = v87;
  v87[2] = v82;
  v87[3] = v81;
  v87[4] = v101;
  v87[5] = v102;
  v87[6] = v85;
  v87[7] = v84;
  v87[8] = v99;
  v87[9] = v1;
  v87[10] = v75;
  v87[11] = v86;
  v87[12] = __src;
  v87[13] = v116;
  v87[14] = v115;
  v87[15] = v123;
  v87[16] = v122;
  v87[17] = v105;
  v87[18] = v108;
  v87[19] = v104;
  v87[20] = v107;
  v87[21] = v103;
  v87[22] = v106;
  v87[23] = v83;
  v88 = swift_task_alloc();
  *(v0 + 2888) = v88;
  *v88 = v0;
  v88[1] = sub_1DB071AAC;
  v89 = MEMORY[0x1E69E6370];
  v141 = MEMORY[0x1E69E6370];
  v90 = MEMORY[0x1E69E7CA8] + 8;
  v91 = MEMORY[0x1E69E7CA8] + 8;
  v92 = v142;

  return MEMORY[0x1EEE6DD58](v0 + 1050, v90, v89, v84, v92, &unk_1DB0B93A0, v87, v91);
}

uint64_t sub_1DB07177C()
{
  v1 = *(*v0 + 2760);

  return MEMORY[0x1EEE6DFA0](sub_1DB07188C, v1, 0);
}

uint64_t sub_1DB07188C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2848);
  *(v2 + 2864) = *(v2 + 2832);
  v4 = *(v2 + 2824);
  v5 = *(v2 + 2816);
  v15 = *(v2 + 2768);
  v6 = *(v2 + 2760);
  v7 = *(v2 + 2752);
  v8 = *(v2 + 2728);
  v17 = sub_1DB08E648(&qword_1EE3014E0, a2, type metadata accessor for ArmandDataFiller, &protocol conformance descriptor for ArmandDataFiller);
  v9 = swift_task_alloc();
  *(v2 + 2880) = v9;
  v9[2] = v5;
  v9[3] = v4;
  v9[4] = v2 + 2664;
  v9[5] = v2 + 2656;
  v9[6] = v7;
  v9[7] = v6;
  v9[8] = v2 + 2640;
  v9[9] = v2 + 2408;
  v9[10] = v3;
  v9[11] = v8;
  v9[12] = v2 + 1056;
  v9[13] = v2 + 2576;
  v9[14] = v2 + 2720;
  v9[15] = v2 + 2624;
  v9[16] = v2 + 2712;
  v9[17] = v2 + 2672;
  v9[18] = v2 + 2592;
  v9[19] = v2 + 2688;
  v9[20] = v2 + 2608;
  v9[21] = v2 + 2704;
  v9[22] = v2 + 2696;
  v9[23] = v15;
  v10 = swift_task_alloc();
  *(v2 + 2888) = v10;
  *v10 = v2;
  v10[1] = sub_1DB071AAC;
  v11 = MEMORY[0x1E69E6370];
  v12 = MEMORY[0x1E69E7CA8] + 8;
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v2 + 1050, v12, v11, v6, v17, &unk_1DB0B93A0, v9, v13);
}

void sub_1DB071AAC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 2760);
    sub_1DAF40988(v2 + 1056);

    MEMORY[0x1EEE6DFA0](sub_1DB071BF8, v3, 0);
  }
}

uint64_t sub_1DB071BF8()
{
  v13 = v0;
  v1 = *(v0 + 2752);
  v2 = *(v0 + 1050);
  *(v0 + 1051) = v2;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000048, 0x80000001DB0CB3E0);
  if (v2)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v3, v4);

  v5 = v11;
  LOBYTE(v11) = 5;
  CoreODILogger.debug(_:category:)(v5, v12, &v11);

  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v10 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  *(v0 + 2896) = v8;
  *v8 = v0;
  v8[1] = sub_1DB071DE0;

  return v10(v0 + 2680, v6, v7);
}

uint64_t sub_1DB071DE0()
{
  v1 = *(*v0 + 2760);

  return MEMORY[0x1EEE6DFA0](sub_1DB071EF0, v1, 0);
}

uint64_t sub_1DB071EF0()
{
  v97 = v0;
  v1 = *(v0 + 2864);
  v2 = *(v0 + 2680);
  *(v0 + 2904) = v2;
  if (!*(v1 + 16))
  {

    v13 = *(*(v0 + 2872) + 16);

    if (v13)
    {
      if (qword_1ECC0E0B8 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 2784);
      v15 = *(v0 + 2776);
      v17 = qword_1ECC25D20;
      v16 = *algn_1ECC25D28;
      v18 = byte_1ECC25D30;
      v19 = qword_1ECC25D38;
      v20 = byte_1ECC25D40;
      *(v14 + 32) = "enableTelemetry=YES";
      *(v14 + 40) = 19;
      *(v14 + 48) = 2;
      *v14 = v17;
      *(v14 + 8) = v16;
      *(v14 + 16) = v18;
      *(v14 + 24) = v19;
      v21 = *(v15 + 28);
      v22 = v19;
      sub_1DB09D474();
      v23 = sub_1DB09DC14();
      if (v20 == 1)
      {
        sub_1DB09D454(v23, &dword_1DAF16000, v22, v17, v16, v18, v14 + v21, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        sub_1DB09D464();
      }

      v63 = *(v0 + 2904);
      sub_1DB08E91C(*(v0 + 2784), *(v0 + 2792), type metadata accessor for ODISignpost);
      v95 = v63;
      LOBYTE(v94[0]) = 0;
      v64 = sub_1DB07E64C(v94);
      *(v0 + 2936) = v65;
      if (v65)
      {
        v66 = v65;
        v67 = v64;
        v95 = *(v0 + 2904);
        LOBYTE(v94[0]) = 1;
        v68 = sub_1DB07E64C(v94);
        *(v0 + 2944) = v69;
        if (v69)
        {
          v70 = v68;
          v71 = v69;
          v72 = swift_task_alloc();
          *(v0 + 2952) = v72;
          *v72 = v0;
          v72[1] = sub_1DB072FD0;
          v73 = v67;
          v74 = v66;
          v75 = v70;
          v76 = v71;
          v77 = 0;
LABEL_74:

          return sub_1DB06C09C(v73, v74, v75, v76, v77);
        }
      }

      v95 = *(v0 + 2904);
      LOBYTE(v94[0]) = 16;
      v78 = sub_1DB07E64C(v94);
      *(v0 + 2960) = v79;
      if (v79)
      {
        v80 = v79;
        v81 = v78;
        v95 = *(v0 + 2904);
        LOBYTE(v94[0]) = 17;
        v82 = sub_1DB07E64C(v94);
        *(v0 + 2968) = v83;
        if (v83)
        {
          v84 = v82;
          v85 = v83;
          v86 = swift_task_alloc();
          *(v0 + 2976) = v86;
          *v86 = v0;
          v86[1] = sub_1DB07338C;
          v73 = v81;
          v74 = v80;
          v75 = v84;
          v76 = v85;
          v77 = 1;
          goto LABEL_74;
        }
      }

      v87 = *(v0 + 2792);
      sub_1DB09DC04();
      sub_1DB09D464();
      sub_1DB08E718(v87, type metadata accessor for ODISignpost);
    }

    v88 = *(v0 + 2824);
    v89 = *(v0 + 2816);
    v90 = *(v0 + 2760);
    v95 = *(v0 + 2904);
    sub_1DB06C324(&v95);

    *(v90 + 1146) = 1;
    v95 = v89;
    v96 = v88;
    LOBYTE(v94[0]) = 5;
    CoreODILogger.debug(_:category:)(0xD000000000000030, 0x80000001DB0CB460, v94);
    sub_1DAF40AEC(v0 + 2408, &qword_1ECC0FDD0, &qword_1DB0B93B0);

    v91 = *(v0 + 8);
    v92 = *(v0 + 1051);

    return v91(v92);
  }

  if (qword_1ECC0E0C0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 2800);
  v4 = *(v0 + 2776);
  v5 = qword_1ECC25D48;
  v6 = unk_1ECC25D50;
  v7 = byte_1ECC25D58;
  v8 = qword_1ECC25D60;
  v9 = byte_1ECC25D68;
  *(v3 + 32) = "enableTelemetry=YES";
  *(v3 + 40) = 19;
  *(v3 + 48) = 2;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  *(v3 + 24) = v8;
  v10 = *(v4 + 28);
  v11 = v8;
  sub_1DB09D474();
  v12 = sub_1DB09DC14();
  if (v9 == 1)
  {
    sub_1DB09D454(v12, &dword_1DAF16000, v11, v5, v6, v7, v3 + v10, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DB08E91C(*(v0 + 2800), *(v0 + 2808), type metadata accessor for ODISignpost);
  v24 = *(v1 + 16);
  if (v24)
  {
    v25 = (*(v0 + 2864) + 40);
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v30 = *(v25 - 1);
      v29 = *v25;

      v31 = sub_1DB09E004();
      if (v31 == 2)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1DAF73DA0(0, *(v26 + 2) + 1, 1, v26);
        }

        v37 = *(v26 + 2);
        v36 = *(v26 + 3);
        if (v37 >= v36 >> 1)
        {
          v26 = sub_1DAF73DA0((v36 > 1), v37 + 1, 1, v26);
        }

        *(v26 + 2) = v37 + 1;
        v27 = &v26[v37];
        v28 = 2;
      }

      else
      {
        if (v31 != 1)
        {
          if (v31)
          {
            v38 = *(v0 + 2824);
            v94[0] = *(v0 + 2816);
            v94[1] = v38;
            v95 = 0;
            v96 = 0xE000000000000000;
            sub_1DB09DE44();

            v95 = 0xD000000000000025;
            v96 = 0x80000001DB0CB430;
            MEMORY[0x1E127FE90](v30, v29);

            v39 = v95;
            LOBYTE(v95) = 5;
            CoreODILogger.info(_:category:)(v39, v96, &v95);
          }

          else
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_1DAF73DA0(0, *(v26 + 2) + 1, 1, v26);
            }

            v33 = *(v26 + 2);
            v32 = *(v26 + 3);
            if (v33 >= v32 >> 1)
            {
              v26 = sub_1DAF73DA0((v32 > 1), v33 + 1, 1, v26);
            }

            *(v26 + 2) = v33 + 1;
            v26[v33 + 32] = 0;
          }

          goto LABEL_16;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1DAF73DA0(0, *(v26 + 2) + 1, 1, v26);
        }

        v35 = *(v26 + 2);
        v34 = *(v26 + 3);
        if (v35 >= v34 >> 1)
        {
          v26 = sub_1DAF73DA0((v34 > 1), v35 + 1, 1, v26);
        }

        *(v26 + 2) = v35 + 1;
        v27 = &v26[v35];
        v28 = 1;
      }

      v27[32] = v28;
LABEL_16:
      v25 += 2;
      if (!--v24)
      {
        goto LABEL_36;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_36:

  v40 = sub_1DB08E188(v26, sub_1DB09047C, &type metadata for PhoneFormatterSource.PhoneNumberType, sub_1DB082C44);

  v41 = sub_1DB053C90(v40);
  *(v0 + 2912) = v41;
  v42 = v41[2];
  v93 = v41;
  if (v42)
  {
    v43 = (v41 + 4);
    v44 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v46 = *v43++;
      v45 = v46;
      if (v46)
      {
        if (v45 == 1)
        {
          if (*(v2 + 16))
          {
            v47 = sub_1DAF35210(0x6E6F685072656570, 0xEF7265626D754E65);
            if (v48)
            {
              sub_1DAF3523C(*(v2 + 56) + 40 * v47, v0 + 2328);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
              v49 = swift_dynamicCast();
              v50 = *(v0 + 2544);
              v51 = *(v0 + 2552);
LABEL_49:
              if (v49)
              {
                v56 = v50;
              }

              else
              {
                v56 = 0;
              }

              if (v49)
              {
                v57 = v51;
              }

              else
              {
                v57 = 0;
              }

              goto LABEL_56;
            }
          }
        }

        else if (*(v2 + 16))
        {
          v54 = sub_1DAF35210(0xD000000000000014, 0x80000001DB0C1960);
          if (v55)
          {
            sub_1DAF3523C(*(v2 + 56) + 40 * v54, v0 + 2368);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v49 = swift_dynamicCast();
            v50 = *(v0 + 2560);
            v51 = *(v0 + 2568);
            goto LABEL_49;
          }
        }
      }

      else if (*(v2 + 16))
      {
        v52 = sub_1DAF35210(0x6D754E656E6F6870, 0xEB00000000726562);
        if (v53)
        {
          sub_1DAF3523C(*(v2 + 56) + 40 * v52, v0 + 2288);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
          v49 = swift_dynamicCast();
          v50 = *(v0 + 2528);
          v51 = *(v0 + 2536);
          goto LABEL_49;
        }
      }

      v56 = 0;
      v57 = 0;
LABEL_56:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1DAF73C6C(0, v44[2] + 1, 1, v44);
      }

      v59 = v44[2];
      v58 = v44[3];
      if (v59 >= v58 >> 1)
      {
        v44 = sub_1DAF73C6C((v58 > 1), v59 + 1, 1, v44);
      }

      v44[2] = v59 + 1;
      v60 = &v44[2 * v59];
      v60[4] = v56;
      v60[5] = v57;
      if (!--v42)
      {
        goto LABEL_63;
      }
    }
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_63:
  *(v0 + 2920) = v44;
  v61 = swift_task_alloc();
  *(v0 + 2928) = v61;
  *v61 = v0;
  v61[1] = sub_1DB0729E4;

  return sub_1DB06BDAC(v44, v93);
}

uint64_t sub_1DB0729E4()
{
  v1 = *(*v0 + 2760);

  return MEMORY[0x1EEE6DFA0](sub_1DB072B34, v1, 0);
}

uint64_t sub_1DB072B34(uint64_t a1)
{
  v47 = v1;
  v2 = *(v1 + 2808);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);
  v3 = *(*(v1 + 2872) + 16);

  if (v3)
  {
    if (qword_1ECC0E0B8 != -1)
    {
      swift_once();
    }

    v4 = *(v1 + 2784);
    v5 = *(v1 + 2776);
    v7 = qword_1ECC25D20;
    v6 = *algn_1ECC25D28;
    v8 = byte_1ECC25D30;
    v9 = qword_1ECC25D38;
    v10 = byte_1ECC25D40;
    *(v4 + 32) = "enableTelemetry=YES";
    *(v4 + 40) = 19;
    *(v4 + 48) = 2;
    *v4 = v7;
    *(v4 + 8) = v6;
    *(v4 + 16) = v8;
    *(v4 + 24) = v9;
    v11 = *(v5 + 28);
    v12 = v9;
    sub_1DB09D474();
    v13 = sub_1DB09DC14();
    if (v10 == 1)
    {
      sub_1DB09D454(v13, &dword_1DAF16000, v12, v7, v6, v8, v4 + v11, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      sub_1DB09D464();
    }

    v14 = *(v1 + 2904);
    sub_1DB08E91C(*(v1 + 2784), *(v1 + 2792), type metadata accessor for ODISignpost);
    v45[0] = v14;
    v46 = 0;
    v15 = sub_1DB07E64C(&v46);
    *(v1 + 2936) = v16;
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v45[0] = *(v1 + 2904);
      v46 = 1;
      v19 = sub_1DB07E64C(&v46);
      *(v1 + 2944) = v20;
      if (v20)
      {
        v21 = v19;
        v22 = v20;
        v23 = swift_task_alloc();
        *(v1 + 2952) = v23;
        *v23 = v1;
        v23[1] = sub_1DB072FD0;
        v24 = v18;
        v25 = v17;
        v26 = v21;
        v27 = v22;
        v28 = 0;
LABEL_14:

        return sub_1DB06C09C(v24, v25, v26, v27, v28);
      }
    }

    v45[0] = *(v1 + 2904);
    v46 = 16;
    v29 = sub_1DB07E64C(&v46);
    *(v1 + 2960) = v30;
    if (v30)
    {
      v31 = v30;
      v32 = v29;
      v45[0] = *(v1 + 2904);
      v46 = 17;
      v33 = sub_1DB07E64C(&v46);
      *(v1 + 2968) = v34;
      if (v34)
      {
        v35 = v33;
        v36 = v34;
        v37 = swift_task_alloc();
        *(v1 + 2976) = v37;
        *v37 = v1;
        v37[1] = sub_1DB07338C;
        v24 = v32;
        v25 = v31;
        v26 = v35;
        v27 = v36;
        v28 = 1;
        goto LABEL_14;
      }
    }

    v39 = *(v1 + 2792);
    sub_1DB09DC04();
    sub_1DB09D464();
    sub_1DB08E718(v39, type metadata accessor for ODISignpost);
  }

  v40 = *(v1 + 2824);
  v41 = *(v1 + 2816);
  v42 = *(v1 + 2760);
  v45[0] = *(v1 + 2904);
  sub_1DB06C324(v45);

  *(v42 + 1146) = 1;
  v45[0] = v41;
  v45[1] = v40;
  v46 = 5;
  CoreODILogger.debug(_:category:)(0xD000000000000030, 0x80000001DB0CB460, &v46);
  sub_1DAF40AEC(v1 + 2408, &qword_1ECC0FDD0, &qword_1DB0B93B0);

  v43 = *(v1 + 8);
  v44 = *(v1 + 1051);

  return v43(v44);
}

uint64_t sub_1DB072FD0()
{
  v1 = *(*v0 + 2760);

  return MEMORY[0x1EEE6DFA0](sub_1DB073120, v1, 0);
}

uint64_t sub_1DB073120()
{
  v19 = v0;
  v17[0] = *(v0 + 2904);
  v18 = 16;
  v1 = sub_1DB07E64C(&v18);
  *(v0 + 2960) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v17[0] = *(v0 + 2904);
    v18 = 17;
    v5 = sub_1DB07E64C(&v18);
    *(v0 + 2968) = v6;
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = swift_task_alloc();
      *(v0 + 2976) = v9;
      *v9 = v0;
      v9[1] = sub_1DB07338C;

      return sub_1DB06C09C(v4, v3, v7, v8, 1);
    }
  }

  v11 = *(v0 + 2792);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v11, type metadata accessor for ODISignpost);
  v12 = *(v0 + 2824);
  v13 = *(v0 + 2816);
  v14 = *(v0 + 2760);
  v17[0] = *(v0 + 2904);
  sub_1DB06C324(v17);

  *(v14 + 1146) = 1;
  v17[0] = v13;
  v17[1] = v12;
  v18 = 5;
  CoreODILogger.debug(_:category:)(0xD000000000000030, 0x80000001DB0CB460, &v18);
  sub_1DAF40AEC(v0 + 2408, &qword_1ECC0FDD0, &qword_1DB0B93B0);

  v15 = *(v0 + 8);
  v16 = *(v0 + 1051);

  return v15(v16);
}

uint64_t sub_1DB07338C()
{
  v1 = *(*v0 + 2760);

  return MEMORY[0x1EEE6DFA0](sub_1DB0734DC, v1, 0);
}

uint64_t sub_1DB0734DC(uint64_t a1)
{
  v11 = v1;
  v2 = *(v1 + 2792);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);
  v3 = *(v1 + 2824);
  v4 = *(v1 + 2816);
  v5 = *(v1 + 2760);
  v9[0] = *(v1 + 2904);
  sub_1DB06C324(v9);

  *(v5 + 1146) = 1;
  v9[0] = v4;
  v9[1] = v3;
  v10 = 5;
  CoreODILogger.debug(_:category:)(0xD000000000000030, 0x80000001DB0CB460, &v10);
  sub_1DAF40AEC(v1 + 2408, &qword_1ECC0FDD0, &qword_1DB0B93B0);

  v6 = *(v1 + 8);
  v7 = *(v1 + 1051);

  return v6(v7);
}

uint64_t sub_1DB07365C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 3:

      return sub_1DB09D9E4();
    case 2:

      return MEMORY[0x1EEE6D958](21);
    case 1:

      return sub_1DB09D9F4();
    default:
      v7[8] = v3;
      v7[9] = v4;
      v7[2] = a2;
      v7[3] = a3;
      sub_1DB09DE44();

      v7[0] = 0xD00000000000000ELL;
      v7[1] = 0x80000001DB0CBFC0;
      v6 = sub_1DB09E1D4();
      MEMORY[0x1E127FE90](v6);

      CoreODILogger.error(_:category:)(0xD000000000000030, 0x80000001DB0CBFC0, v7);

      return sub_1DB09D9E4();
  }
}

uint64_t sub_1DB073774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1400) = v21;
  *(v8 + 1392) = v20;
  *(v8 + 1376) = v19;
  *(v8 + 1360) = v18;
  *(v8 + 1344) = v17;
  *(v8 + 1328) = v16;
  *(v8 + 1312) = v15;
  *(v8 + 1296) = v14;
  *(v8 + 1280) = v13;
  *(v8 + 1272) = a8;
  *(v8 + 1264) = a7;
  *(v8 + 1256) = a6;
  *(v8 + 1248) = a5;
  *(v8 + 1240) = a4;
  *(v8 + 1232) = a3;
  *(v8 + 1224) = a2;
  *(v8 + 1216) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10160, &unk_1DB0BB1B8);
  *(v8 + 1408) = v10;
  *(v8 + 1416) = *(v10 - 8);
  *(v8 + 1424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  *(v8 + 1432) = swift_task_alloc();
  *(v8 + 1440) = swift_task_alloc();
  *(v8 + 1448) = swift_task_alloc();
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 1464) = swift_task_alloc();
  *(v8 + 1472) = swift_task_alloc();
  *(v8 + 1480) = swift_task_alloc();
  *(v8 + 1488) = swift_task_alloc();
  *(v8 + 1496) = swift_task_alloc();
  *(v8 + 1504) = swift_task_alloc();
  *(v8 + 1512) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07394C, a8, 0);
}

uint64_t sub_1DB07394C()
{
  v226 = v0;
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  *&__dst[0] = *(v0 + 1232);
  *(&__dst[0] + 1) = v2;
  LOBYTE(v222[0]) = 5;
  CoreODILogger.info(_:category:)(0xD00000000000001BLL, 0x80000001DB0CBC00, v222);
  v3 = *v1;
  if (*(v3 + 16))
  {
    v4 = *(v0 + 1512);
    v5 = *(v0 + 1400);
    v6 = *(v0 + 1272);
    v7 = *(v0 + 1264);
    v8 = *(v0 + 1256);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1232);
    v11 = sub_1DB09DA24();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = *v8;
    sub_1DAF3523C(v7, v0 + 640);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    sub_1DAF332B8((v0 + 640), (v13 + 5));
    v13[10] = v3;
    v13[11] = v10;
    v13[12] = v9;
    v13[13] = v6;
    v13[14] = v5;

    sub_1DB055070(v4, &unk_1DB0BB1D0, v13);
    sub_1DAF40AEC(v4, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  else
  {
    v14 = *(v0 + 1240);
    *&__dst[0] = *(v0 + 1232);
    *(&__dst[0] + 1) = v14;
    LOBYTE(v222[0]) = 5;
    CoreODILogger.debug(_:category:)(0xD00000000000001CLL, 0x80000001DB0CBD80, v222);
  }

  v15 = *(v0 + 1280);
  if ((*(v15 + 8) & 1) == 0)
  {
    v16 = *v15;
    sub_1DAF40A84(*(v0 + 1288), v0 + 480, &qword_1ECC0FDD0, &qword_1DB0B93B0);
    if (*(v0 + 504))
    {
      v17 = *(v0 + 1512);
      v18 = *(v0 + 1296);
      v19 = *(v0 + 1272);
      v20 = *(v0 + 1240);
      v21 = *(v0 + 1232);
      sub_1DAF332B8((v0 + 480), v0 + 560);
      sub_1DB07365C(v16, v21, v20);
      v22 = sub_1DB09DA24();
      (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
      sub_1DAF3523C(v0 + 560, v0 + 400);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v18;
      v23[5] = v19;
      sub_1DAF332B8((v0 + 400), (v23 + 6));
      v23[11] = v21;
      v23[12] = v20;

      sub_1DB055070(v17, &unk_1DB0BB2A0, v23);
      sub_1DAF40AEC(v17, &qword_1ECC0ECE0, &unk_1DB0A21D0);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
    }

    else
    {
      sub_1DAF40AEC(v0 + 480, &qword_1ECC0FDD0, &qword_1DB0B93B0);
    }
  }

  v24 = *(v0 + 1304);
  v25 = *(v24 + 16);
  if (v25)
  {
    v218 = (v0 + 1112);
    v217 = *(v0 + 1320);
    v26 = (v24 + 48);
    do
    {
      v219 = v26;
      v220 = v25;
      v32 = *(v0 + 1312);
      v33 = *(v0 + 1240);
      v34 = *(v0 + 1232);
      v36 = *v26;
      v35 = v26[1];
      v37 = *(v26 - 1);
      *(v0 + 122) = *(v26 + 26);
      *(v0 + 96) = v36;
      *(v0 + 112) = v35;
      *(v0 + 80) = v37;
      v38 = *(v26 + 16);
      *v218 = *v26;
      *(v0 + 1128) = v38;
      *&v222[0] = v34;
      *(&v222[0] + 1) = v33;
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;
      sub_1DB042BD4(v0 + 80, v0 + 272);
      sub_1DB09DE44();
      v39 = *(&__dst[0] + 1);
      *(v0 + 1136) = *&__dst[0];
      *(v0 + 1144) = v39;
      MEMORY[0x1E127FE90](0xD000000000000011, 0x80000001DB0CBC20);
      v40 = *(v0 + 96);
      *(v0 + 336) = *(v0 + 80);
      *(v0 + 352) = v40;
      *(v0 + 368) = *(v0 + 112);
      *(v0 + 378) = *(v0 + 122);
      sub_1DB09DF94();
      v41 = *(v0 + 1136);
      v42 = *(v0 + 1144);
      LOBYTE(__dst[0]) = 5;
      CoreODILogger.debug(_:category:)(v41, v42, __dst);

      memcpy(__dst, v32, 0x40AuLL);
      v43 = *(v0 + 96);
      v222[0] = *(v0 + 80);
      v222[1] = v43;
      v223[0] = *(v0 + 112);
      *(v223 + 10) = *(v0 + 122);
      sub_1DB06829C(v222, v0 + 520);
      v44 = *(v0 + 544);
      v45 = *(v0 + 552);
      __swift_project_boxed_opaque_existential_1((v0 + 520), v44);
      __dst[0] = *v218;
      LOBYTE(__dst[1]) = *(v0 + 1128);
      v46 = *(v45 + 8);
      sub_1DB0905C4(v218, v0 + 1064);
      v46(v222, __dst, v44, v45);
      sub_1DB041AD8(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 520));
      v47 = *(v0 + 1240);
      if (LOBYTE(v222[0]) == 212)
      {
        v48 = *(v0 + 120);
        v49 = *(v0 + 113);
        *&v222[0] = *(v0 + 1232);
        *(&v222[0] + 1) = v47;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        sub_1DB09DE44();
        v50 = *(&__dst[0] + 1);
        *(v0 + 1152) = *&__dst[0];
        *(v0 + 1160) = v50;
        MEMORY[0x1E127FE90](0xD00000000000001ALL, 0x80000001DB0CB4A0);
        v51 = *(v0 + 96);
        *(v0 + 208) = *(v0 + 80);
        *(v0 + 224) = v51;
        *(v0 + 240) = *(v0 + 112);
        *(v0 + 250) = *(v0 + 122);
        sub_1DB09DF94();
        v52 = *(v0 + 1152);
        v53 = *(v0 + 1160);
        LOBYTE(__dst[0]) = 5;
        CoreODILogger.debug(_:category:)(v52, v53, __dst);

        switch(v49)
        {
          case 1:
          case 5:
            goto LABEL_51;
          case 2:
            v79 = *(v0 + 1328);
            v80 = *(v0 + 1320);
            v81 = *v80;
            if (*(v217 + 8))
            {
              v81 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v48 < v81)
            {
              v81 = v48;
            }

            v82 = *(v0 + 128);
            v83 = *(v0 + 136);
            *v80 = v81;
            *(v217 + 8) = 0;
            v84 = *v79;
            sub_1DB042C0C(v0 + 80);
            v85 = 1000000 * v82;
            if (1000000 * v82 <= v84)
            {
              v85 = v84;
            }

            if (v83 & 1 | (v82 > 0x10C6F7A0B5EDLL))
            {
              v86 = -1;
            }

            else
            {
              v86 = v85;
            }

            *v79 = v86;
            goto LABEL_67;
          case 3:
            if ((*(v0 + 1128) & 1) != 0 || *(v0 + 1112) != 1)
            {
              goto LABEL_50;
            }

            v54 = *(v0 + 1488);
            v55 = *(v0 + 1480);
            v56 = *(v0 + 1272);
            v57 = *(v0 + 1240);
            v58 = *(v0 + 1232);
            sub_1DB07365C(v48, v58, v57);
            v59 = sub_1DB09DA24();
            v60 = *(v59 - 8);
            (*(v60 + 56))(v54, 0, 1, v59);
            v61 = swift_allocObject();
            *(v61 + 16) = 0;
            *(v61 + 24) = 0;
            v62 = *(v0 + 96);
            *(v61 + 32) = *(v0 + 80);
            *(v61 + 48) = v62;
            *(v61 + 64) = *(v0 + 112);
            *(v61 + 74) = *(v0 + 122);
            *(v61 + 96) = v56;
            *(v61 + 104) = v58;
            *(v61 + 112) = v57;
            sub_1DAF40A84(v54, v55, &qword_1ECC0ECE0, &unk_1DB0A21D0);
            LODWORD(v58) = (*(v60 + 48))(v55, 1, v59);

            v63 = *(v0 + 1480);
            if (v58 == 1)
            {
              sub_1DAF40AEC(*(v0 + 1480), &qword_1ECC0ECE0, &unk_1DB0A21D0);
            }

            else
            {
              sub_1DB09DA14();
              (*(v60 + 8))(v63, v59);
            }

            if (*(v61 + 16))
            {
              swift_getObjectType();
              swift_unknownObjectRetain();
              v119 = sub_1DB09D984();
              v121 = v120;
              swift_unknownObjectRelease();
            }

            else
            {
              v119 = 0;
              v121 = 0;
            }

            v128 = **(v0 + 1224);
            v129 = v121 | v119;
            if (v121 | v119)
            {
              v129 = v0 + 792;
              *(v0 + 792) = 0;
              *(v0 + 800) = 0;
              *(v0 + 808) = v119;
              *(v0 + 816) = v121;
            }

            v130 = *(v0 + 1488);
            *(v0 + 944) = 1;
            *(v0 + 952) = v129;
            *(v0 + 960) = v128;
            goto LABEL_65;
          case 4:
            v94 = *(v0 + 1512);
            v95 = *(v0 + 1272);
            v96 = *(v0 + 1240);
            v97 = *(v0 + 1232);
            sub_1DB0905C4(v218, v0 + 1088);
            sub_1DB07365C(v48, v97, v96);
            v98 = sub_1DB09DA24();
            (*(*(v98 - 8) + 56))(v94, 0, 1, v98);
            v99 = swift_allocObject();
            *(v99 + 16) = 0;
            *(v99 + 24) = 0;
            v100 = *(v0 + 96);
            *(v99 + 32) = *(v0 + 80);
            *(v99 + 48) = v100;
            *(v99 + 64) = *(v0 + 112);
            *(v99 + 74) = *(v0 + 122);
            *(v99 + 96) = v95;
            *(v99 + 104) = v97;
            *(v99 + 112) = v96;

            sub_1DB042BD4(v0 + 80, v0 + 144);
            sub_1DB055070(v94, &unk_1DB0BB270, v99);
            sub_1DB090EA4(v218);
            sub_1DB042C0C(v0 + 80);
            v101 = v94;
            goto LABEL_66;
          case 6:
            if ((*(v0 + 1128) & 1) != 0 || *v218 != 11)
            {
              goto LABEL_51;
            }

            sub_1DAF40A84(*(v0 + 1288), v0 + 440, &qword_1ECC0FDD0, &qword_1DB0B93B0);
            if (*(v0 + 464))
            {
              v102 = *(v0 + 1512);
              v103 = *(v0 + 1272);
              v104 = *(v0 + 1240);
              v105 = *(v0 + 1232);
              sub_1DAF332B8((v0 + 440), v0 + 720);
              sub_1DB07365C(v48, v105, v104);
              v106 = sub_1DB09DA24();
              (*(*(v106 - 8) + 56))(v102, 0, 1, v106);
              sub_1DAF3523C(v0 + 720, v0 + 680);
              v107 = swift_allocObject();
              *(v107 + 16) = 0;
              *(v107 + 24) = 0;
              v108 = *(v0 + 96);
              *(v107 + 32) = *(v0 + 80);
              *(v107 + 48) = v108;
              *(v107 + 64) = *(v0 + 112);
              *(v107 + 74) = *(v0 + 122);
              *(v107 + 96) = v103;
              sub_1DAF332B8((v0 + 680), v107 + 104);
              *(v107 + 144) = v105;
              *(v107 + 152) = v104;

              sub_1DB055070(v102, &unk_1DB0BB260, v107);
              sub_1DAF40AEC(v102, &qword_1ECC0ECE0, &unk_1DB0A21D0);
              __swift_destroy_boxed_opaque_existential_1Tm((v0 + 720));
              goto LABEL_67;
            }

            v153 = *(v0 + 1240);
            v154 = *(v0 + 1232);
            sub_1DAF40AEC(v0 + 440, &qword_1ECC0FDD0, &qword_1DB0B93B0);
            *&__dst[0] = v154;
            *(&__dst[0] + 1) = v153;
            LOBYTE(v222[0]) = 5;
            CoreODILogger.error(_:category:)(0xD00000000000003ELL, 0x80000001DB0CBD40, v222);
            goto LABEL_51;
          case 7:
            if ((*(v0 + 1128) & 1) != 0 || *(v0 + 1112) != 12)
            {
              goto LABEL_50;
            }

            v87 = *(v0 + 1472);
            v88 = *(v0 + 1464);
            v89 = *(v0 + 1272);
            sub_1DB07365C(v48, *(v0 + 1232), *(v0 + 1240));
            v90 = sub_1DB09DA24();
            v91 = *(v90 - 8);
            (*(v91 + 56))(v87, 0, 1, v90);
            v92 = swift_allocObject();
            v92[2] = 0;
            v92[3] = 0;
            v92[4] = v89;
            sub_1DAF40A84(v87, v88, &qword_1ECC0ECE0, &unk_1DB0A21D0);
            LODWORD(v87) = (*(v91 + 48))(v88, 1, v90);

            v93 = *(v0 + 1464);
            if (v87 == 1)
            {
              sub_1DAF40AEC(*(v0 + 1464), &qword_1ECC0ECE0, &unk_1DB0A21D0);
            }

            else
            {
              sub_1DB09DA14();
              (*(v91 + 8))(v93, v90);
            }

            if (v92[2])
            {
              swift_getObjectType();
              swift_unknownObjectRetain();
              v122 = sub_1DB09D984();
              v124 = v123;
              swift_unknownObjectRelease();
            }

            else
            {
              v122 = 0;
              v124 = 0;
            }

            v31 = v220;
            v131 = **(v0 + 1224);
            v132 = v124 | v122;
            if (v124 | v122)
            {
              v132 = v0 + 888;
              *(v0 + 888) = 0;
              *(v0 + 896) = 0;
              *(v0 + 904) = v122;
              *(v0 + 912) = v124;
            }

            v133 = *(v0 + 1472);
            *(v0 + 1040) = 1;
            *(v0 + 1048) = v132;
            *(v0 + 1056) = v131;
            swift_task_create();

            sub_1DB042C0C(v0 + 80);
            sub_1DAF40AEC(v133, &qword_1ECC0ECE0, &unk_1DB0A21D0);
            break;
          case 8:
            if ((*(v0 + 1128) & 1) != 0 || *(v0 + 1112) != 14)
            {
              goto LABEL_50;
            }

            v109 = *(v0 + 1504);
            v110 = *(v0 + 1496);
            v111 = *(v0 + 1272);
            sub_1DB07365C(v48, *(v0 + 1232), *(v0 + 1240));
            v112 = sub_1DB09DA24();
            v113 = *(v112 - 8);
            (*(v113 + 56))(v109, 0, 1, v112);
            v114 = swift_allocObject();
            v114[2] = 0;
            v114[3] = 0;
            v114[4] = v111;
            sub_1DAF40A84(v109, v110, &qword_1ECC0ECE0, &unk_1DB0A21D0);
            LODWORD(v109) = (*(v113 + 48))(v110, 1, v112);

            v115 = *(v0 + 1496);
            if (v109 == 1)
            {
              sub_1DAF40AEC(*(v0 + 1496), &qword_1ECC0ECE0, &unk_1DB0A21D0);
            }

            else
            {
              sub_1DB09DA14();
              (*(v113 + 8))(v115, v112);
            }

            v31 = v220;
            if (v114[2])
            {
              swift_getObjectType();
              swift_unknownObjectRetain();
              v125 = sub_1DB09D984();
              v127 = v126;
              swift_unknownObjectRelease();
            }

            else
            {
              v125 = 0;
              v127 = 0;
            }

            v134 = **(v0 + 1224);
            v135 = v127 | v125;
            if (v127 | v125)
            {
              v135 = v0 + 760;
              *(v0 + 760) = 0;
              *(v0 + 768) = 0;
              *(v0 + 776) = v125;
              *(v0 + 784) = v127;
            }

            v136 = *(v0 + 1504);
            *(v0 + 920) = 1;
            *(v0 + 928) = v135;
            *(v0 + 936) = v134;
            swift_task_create();

            sub_1DB042C0C(v0 + 80);
            sub_1DAF40AEC(v136, &qword_1ECC0ECE0, &unk_1DB0A21D0);
            break;
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
            if (*(v0 + 1128))
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          default:
            if (*(v0 + 1128))
            {
              goto LABEL_50;
            }

            v64 = *v218;
            switch(v64)
            {
              case 18:
                v147 = *(v0 + 1512);
                v148 = *(v0 + 1272);
                v149 = *(v0 + 1240);
                v150 = *(v0 + 1232);
                sub_1DB07365C(v48, v150, v149);
                v151 = sub_1DB09DA24();
                (*(*(v151 - 8) + 56))(v147, 0, 1, v151);
                v152 = swift_allocObject();
                v152[2] = 0;
                v152[3] = 0;
                v152[4] = v148;
                v152[5] = v150;
                v152[6] = v149;

                sub_1DB055070(v147, &unk_1DB0BB220, v152);
                sub_1DB042C0C(v0 + 80);
                v101 = v147;
                goto LABEL_66;
              case 17:
                v137 = *(v0 + 1440);
                v138 = *(v0 + 1432);
                v139 = *(v0 + 1272);
                v140 = *(v0 + 1240);
                v141 = *(v0 + 1232);
                sub_1DB07365C(v48, v141, v140);
                v142 = sub_1DB09DA24();
                v143 = *(v142 - 8);
                (*(v143 + 56))(v137, 0, 1, v142);
                v144 = swift_allocObject();
                *(v144 + 16) = 0;
                *(v144 + 24) = 0;
                v145 = *(v0 + 96);
                *(v144 + 32) = *(v0 + 80);
                *(v144 + 48) = v145;
                *(v144 + 64) = *(v0 + 112);
                *(v144 + 74) = *(v0 + 122);
                *(v144 + 96) = v139;
                *(v144 + 104) = v141;
                *(v144 + 112) = v140;
                sub_1DAF40A84(v137, v138, &qword_1ECC0ECE0, &unk_1DB0A21D0);
                LODWORD(v141) = (*(v143 + 48))(v138, 1, v142);

                v146 = *(v0 + 1432);
                if (v141 == 1)
                {
                  sub_1DAF40AEC(*(v0 + 1432), &qword_1ECC0ECE0, &unk_1DB0A21D0);
                }

                else
                {
                  sub_1DB09DA14();
                  (*(v143 + 8))(v146, v142);
                }

                if (*(v144 + 16))
                {
                  swift_getObjectType();
                  swift_unknownObjectRetain();
                  v155 = sub_1DB09D984();
                  v157 = v156;
                  swift_unknownObjectRelease();
                }

                else
                {
                  v155 = 0;
                  v157 = 0;
                }

                v160 = **(v0 + 1224);
                v161 = v157 | v155;
                if (v157 | v155)
                {
                  v161 = v0 + 824;
                  *(v0 + 824) = 0;
                  *(v0 + 832) = 0;
                  *(v0 + 840) = v155;
                  *(v0 + 848) = v157;
                }

                v130 = *(v0 + 1440);
                *(v0 + 992) = 1;
                *(v0 + 1000) = v161;
                *(v0 + 1008) = v160;
                goto LABEL_65;
              case 16:
                v65 = *(v0 + 1456);
                v66 = *(v0 + 1448);
                v67 = *(v0 + 1272);
                v68 = *(v0 + 1240);
                v69 = *(v0 + 1232);
                sub_1DB07365C(v48, v69, v68);
                v70 = sub_1DB09DA24();
                v71 = *(v70 - 8);
                (*(v71 + 56))(v65, 0, 1, v70);
                v72 = swift_allocObject();
                *(v72 + 16) = 0;
                v73 = (v72 + 16);
                *(v72 + 24) = 0;
                v74 = *(v0 + 96);
                *(v72 + 32) = *(v0 + 80);
                *(v72 + 48) = v74;
                *(v72 + 64) = *(v0 + 112);
                *(v72 + 74) = *(v0 + 122);
                *(v72 + 96) = v67;
                *(v72 + 104) = v69;
                *(v72 + 112) = v68;
                sub_1DAF40A84(v65, v66, &qword_1ECC0ECE0, &unk_1DB0A21D0);
                LODWORD(v65) = (*(v71 + 48))(v66, 1, v70);

                v75 = *(v0 + 1448);
                if (v65 == 1)
                {
                  sub_1DAF40AEC(*(v0 + 1448), &qword_1ECC0ECE0, &unk_1DB0A21D0);
                  if (*v73)
                  {
                    goto LABEL_26;
                  }

LABEL_84:
                  v76 = 0;
                  v78 = 0;
                }

                else
                {
                  sub_1DB09DA14();
                  (*(v71 + 8))(v75, v70);
                  if (!*v73)
                  {
                    goto LABEL_84;
                  }

LABEL_26:
                  swift_getObjectType();
                  swift_unknownObjectRetain();
                  v76 = sub_1DB09D984();
                  v78 = v77;
                  swift_unknownObjectRelease();
                }

                v158 = **(v0 + 1224);
                v159 = v78 | v76;
                if (v78 | v76)
                {
                  v159 = v0 + 856;
                  *(v0 + 856) = 0;
                  *(v0 + 864) = 0;
                  *(v0 + 872) = v76;
                  *(v0 + 880) = v78;
                }

                v130 = *(v0 + 1456);
                *(v0 + 1016) = 1;
                *(v0 + 1024) = v159;
                *(v0 + 1032) = v158;
LABEL_65:
                swift_task_create();

                v101 = v130;
LABEL_66:
                sub_1DAF40AEC(v101, &qword_1ECC0ECE0, &unk_1DB0A21D0);
                goto LABEL_67;
            }

LABEL_50:
            v116 = *(v0 + 1240);
            v224 = *(v0 + 1232);
            v225 = v116;
            *&__dst[0] = 0;
            *(&__dst[0] + 1) = 0xE000000000000000;
            sub_1DB09DE44();

            *&v222[0] = 0xD000000000000022;
            *(&v222[0] + 1) = 0x80000001DB0CBD10;
            LOBYTE(__dst[0]) = v49;
            v117 = ArmandDataSource.rawValue.getter();
            MEMORY[0x1E127FE90](v117);

            MEMORY[0x1E127FE90](47, 0xE100000000000000);
            __dst[0] = *v218;
            LOBYTE(__dst[1]) = *(v0 + 1128);
            v118 = AssessmentConfigFieldName.description.getter();
            MEMORY[0x1E127FE90](v118);

            LOBYTE(__dst[0]) = 5;
            CoreODILogger.warning(_:category:)(*&v222[0], *(&v222[0] + 1), __dst);

LABEL_51:
            sub_1DB042C0C(v0 + 80);
LABEL_67:
            v31 = v220;
            break;
        }
      }

      else
      {
        *&v222[0] = *(v0 + 1232);
        *(&v222[0] + 1) = v47;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        sub_1DB09DE44();
        v27 = *(&__dst[0] + 1);
        *(v0 + 1168) = *&__dst[0];
        *(v0 + 1176) = v27;
        MEMORY[0x1E127FE90](0xD000000000000018, 0x80000001DB0CBC40);
        v28 = *(v0 + 96);
        *(v0 + 16) = *(v0 + 80);
        *(v0 + 32) = v28;
        *(v0 + 48) = *(v0 + 112);
        *(v0 + 58) = *(v0 + 122);
        sub_1DB09DF94();
        sub_1DB042C0C(v0 + 80);
        v29 = *(v0 + 1168);
        v30 = *(v0 + 1176);
        LOBYTE(__dst[0]) = 5;
        CoreODILogger.debug(_:category:)(v29, v30, __dst);

        v31 = v220;
      }

      v26 = v219 + 4;
      v25 = v31 - 1;
    }

    while (v25);
  }

  v162 = *(v0 + 1320);
  if ((*(v162 + 8) & 1) == 0)
  {
    v163 = *(v0 + 1512);
    v164 = *(v0 + 1328);
    v165 = *(v0 + 1272);
    v166 = *(v0 + 1240);
    v167 = *(v0 + 1232);
    sub_1DB07365C(*v162, v167, v166);
    v168 = sub_1DB09DA24();
    (*(*(v168 - 8) + 56))(v163, 0, 1, v168);
    v169 = *v164;
    v170 = swift_allocObject();
    v170[2] = 0;
    v170[3] = 0;
    v170[4] = v169;
    v170[5] = v165;
    v170[6] = v167;
    v170[7] = v166;

    sub_1DB055070(v163, &unk_1DB0BB210, v170);
    sub_1DAF40AEC(v163, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  v171 = *(v0 + 1336);
  if ((*(v171 + 8) & 1) == 0)
  {
    v172 = *(v0 + 1512);
    v173 = *(v0 + 1344);
    v174 = *(v0 + 1272);
    v175 = *(v0 + 1240);
    v176 = *(v0 + 1232);
    sub_1DB07365C(*v171, v176, v175);
    v177 = sub_1DB09DA24();
    (*(*(v177 - 8) + 56))(v172, 0, 1, v177);
    v178 = *v173;
    v179 = swift_allocObject();
    v179[2] = 0;
    v179[3] = 0;
    v179[4] = v178;
    v179[5] = v174;
    v179[6] = v176;
    v179[7] = v175;

    sub_1DB055070(v172, &unk_1DB0BB200, v179);
    sub_1DAF40AEC(v172, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  if (*(**(v0 + 1352) + 16))
  {
    v180 = *(v0 + 1360);
    if ((*(v180 + 8) & 1) == 0)
    {
      v181 = *(v0 + 1512);
      v182 = *(v0 + 1368);
      v183 = *(v0 + 1272);
      v184 = *(v0 + 1240);
      v185 = *(v0 + 1232);
      sub_1DB07365C(*v180, v185, v184);
      v186 = sub_1DB09DA24();
      (*(*(v186 - 8) + 56))(v181, 0, 1, v186);
      v187 = *v182;
      v188 = swift_allocObject();
      v188[2] = 0;
      v188[3] = 0;
      v188[4] = v187;
      v188[5] = v183;
      v188[6] = v185;
      v188[7] = v184;

      sub_1DB055070(v181, &unk_1DB0BB1F0, v188);
      sub_1DAF40AEC(v181, &qword_1ECC0ECE0, &unk_1DB0A21D0);
    }
  }

  v189 = *(v0 + 1384);
  v190 = *(v0 + 1376);
  v191 = *(v0 + 1240);
  *&v222[0] = *(v0 + 1232);
  *(&v222[0] + 1) = v191;
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000002ALL, 0x80000001DB0CBC60);
  v192 = *v190;
  if (*(v190 + 8))
  {
    v192 = -1;
  }

  *(v0 + 1208) = v192;
  v193 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v193);

  MEMORY[0x1E127FE90](0x6974206874697720, 0xEE002074756F656DLL);
  *(v0 + 1200) = *v189;
  v194 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v194);

  MEMORY[0x1E127FE90](0x65696620646E6120, 0xEC0000002073646CLL);

  v196 = MEMORY[0x1E1280010](v195, MEMORY[0x1E69E6158]);
  v198 = v197;

  MEMORY[0x1E127FE90](v196, v198);

  v199 = *&__dst[0];
  LOBYTE(__dst[0]) = 5;
  CoreODILogger.info(_:category:)(v199, *(&__dst[0] + 1), __dst);

  if ((*(v190 + 8) & 1) == 0)
  {
    v200 = *(v0 + 1512);
    v201 = *(v0 + 1392);
    v202 = *(v0 + 1384);
    v203 = *(v0 + 1272);
    v204 = *(v0 + 1264);
    v205 = *(v0 + 1240);
    v206 = *(v0 + 1232);
    sub_1DB07365C(**(v0 + 1376), v206, v205);
    v207 = sub_1DB09DA24();
    (*(*(v207 - 8) + 56))(v200, 0, 1, v207);
    v208 = *v202;
    v209 = *v201;
    sub_1DAF3523C(v204, v0 + 600);
    v210 = swift_allocObject();
    v210[2] = 0;
    v210[3] = 0;
    v210[4] = v206;
    v210[5] = v205;
    v210[6] = v209;
    v210[7] = v208;
    v210[8] = v203;
    sub_1DAF332B8((v0 + 600), (v210 + 9));

    sub_1DB055070(v200, &unk_1DB0BB1E0, v210);
    sub_1DAF40AEC(v200, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09DA94();
  v212 = sub_1DB08E648(&qword_1EE3014E0, v211, type metadata accessor for ArmandDataFiller, &protocol conformance descriptor for ArmandDataFiller);
  *(v0 + 1520) = v212;
  v213 = *(v0 + 1272);
  v214 = swift_task_alloc();
  *(v0 + 1528) = v214;
  *v214 = v0;
  v214[1] = sub_1DB0757E4;
  v215 = *(v0 + 1408);

  return MEMORY[0x1EEE6DAD8](v0 + 74, v213, v212, v215, v0 + 1192);
}

uint64_t sub_1DB0757E4()
{
  v2 = *v1;
  *(*v1 + 1536) = v0;

  v3 = *(v2 + 1272);
  if (v0)
  {
    v4 = sub_1DB075BD0;
  }

  else
  {
    v4 = sub_1DB0758FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DB0758FC()
{
  v15 = v0;
  if (*(v0 + 74))
  {
    v1 = *(v0 + 1536);
    (*(*(v0 + 1416) + 8))(*(v0 + 1424), *(v0 + 1408));
    sub_1DB09DA74();
    if (v1)
    {
      v2 = *(v0 + 1272);
      v3 = *(v2 + 1224);
      v12[0] = *(v2 + 1216);
      v12[1] = v3;
      v13 = 5;
      v14 = 0xE000000000000000;

      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000017, 0x80000001DB0CBC90);
      swift_getErrorValue();
      sub_1DB09E234();
      CoreODILogger.error(_:category:)(0, 0xE000000000000000, &v13);

      v4 = *(v2 + 1224);
      v13 = *(v2 + 1216);
      v14 = v4;
      LOBYTE(v12[0]) = 5;

      CoreODILogger.debug(_:category:)(0xD00000000000005ALL, 0x80000001DB0CBCB0, v12);

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    **(v0 + 1216) = v5;

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v6 = *(v0 + 1520);
    v7 = *(v0 + 1272);
    v8 = swift_task_alloc();
    *(v0 + 1528) = v8;
    *v8 = v0;
    v8[1] = sub_1DB0757E4;
    v9 = *(v0 + 1408);

    return MEMORY[0x1EEE6DAD8](v0 + 74, v7, v6, v9, v0 + 1192);
  }
}

uint64_t sub_1DB075BD0()
{
  v10 = v0;
  (*(*(v0 + 1416) + 8))(*(v0 + 1424), *(v0 + 1408));
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1272);
  v3 = *(v2 + 1224);
  v7[0] = *(v2 + 1216);
  v7[1] = v3;
  v8 = 5;
  v9 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000017, 0x80000001DB0CBC90);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, &v8);

  v4 = *(v2 + 1224);
  v8 = *(v2 + 1216);
  v9 = v4;
  LOBYTE(v7[0]) = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000005ALL, 0x80000001DB0CBCB0, v7);

  **(v0 + 1216) = 0;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DB075DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v10;
  v8[19] = v11;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a1;
  v8[13] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB075E20, 0, 0);
}

uint64_t sub_1DB075E20()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v18 = *(v0 + 144);
  sub_1DAF3523C(*(v0 + 112), v0 + 16);
  sub_1DAF3523C(v0 + 16, v0 + 56);
  v5 = swift_allocObject();
  *(v0 + 160) = v5;
  sub_1DAF332B8((v0 + 16), v5 + 16);
  *(v5 + 56) = v3;
  *(v5 + 64) = v2;
  *(v5 + 72) = v1;
  *(v5 + 80) = v18;

  if (v4 == -1)
  {
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    *v11 = v0;
    v11[1] = sub_1DB0761A0;
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    v15 = *(v0 + 120);
    v16 = *(v0 + 96);

    return sub_1DB076400(v16, v0 + 56, v15, v13, v14, v12);
  }

  else
  {
    v6 = *(v0 + 104);
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    v7[2] = v6;
    v7[3] = &unk_1DB0BB360;
    v7[4] = v5;
    v7[5] = &unk_1DB0BB2B8;
    v7[6] = 0;
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    *v8 = v0;
    v8[1] = sub_1DB076050;
    v9 = *(v0 + 96);
    v10 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v7, v10);
  }
}

uint64_t sub_1DB076050()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB0762B4, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1DB0761A0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1DB076394;
  }

  else
  {
    v2 = sub_1DB076328;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB0762B4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB076328()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB076394()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB076400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[6] = a2;
  v6[11] = type metadata accessor for ODISignpost(0);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB0764A8, 0, 0);
}

uint64_t sub_1DB0764A8()
{
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_1DB0765D4;

  return v6(v0 + 40, v2, v3);
}

uint64_t sub_1DB0765D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB0766D0, 0, 0);
}

uint64_t sub_1DB0766D0()
{
  v38 = v0;
  v34 = v0[5];
  if (qword_1ECC0E0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[12];
  v3 = qword_1ECC25D70;
  v4 = *algn_1ECC25D78;
  v5 = byte_1ECC25D80;
  v6 = qword_1ECC25D88;
  v7 = byte_1ECC25D90;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v3, v4, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[7];
  sub_1DB08E91C(v0[12], v0[13], type metadata accessor for ODISignpost);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v0[7] + 40);
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v18 = *(v13 - 1);
      v17 = *v13;

      v19 = sub_1DB09E004();
      if (v19 > 7)
      {
        break;
      }

      if (((1 << v19) & 0xC) != 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1DAF73DB4(0, *(v14 + 2) + 1, 1, v14);
        }

        v27 = *(v14 + 2);
        v26 = *(v14 + 3);
        if (v27 >= v26 >> 1)
        {
          v14 = sub_1DAF73DB4((v26 > 1), v27 + 1, 1, v14);
        }

        *(v14 + 2) = v27 + 1;
        v15 = &v14[v27];
        v16 = 3;
      }

      else
      {
        if (((1 << v19) & 0x30) != 0)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1DAF73DB4(0, *(v14 + 2) + 1, 1, v14);
          }

          v25 = *(v14 + 2);
          v24 = *(v14 + 3);
          if (v25 >= v24 >> 1)
          {
            v14 = sub_1DAF73DB4((v24 > 1), v25 + 1, 1, v14);
          }

          *(v14 + 2) = v25 + 1;
          v14[v25 + 32] = 1;
          goto LABEL_10;
        }

        if (((1 << v19) & 0xC0) == 0)
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1DAF73DB4(0, *(v14 + 2) + 1, 1, v14);
        }

        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          v14 = sub_1DAF73DB4((v20 > 1), v21 + 1, 1, v14);
        }

        *(v14 + 2) = v21 + 1;
        v15 = &v14[v21];
        v16 = 2;
      }

      v15[32] = v16;
LABEL_10:
      v13 += 2;
      if (!--v12)
      {
        goto LABEL_37;
      }
    }

    if (v19 >= 2)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1DB09DE44();

      v36 = 0xD00000000000001CLL;
      v37 = 0x80000001DB0CC000;
      MEMORY[0x1E127FE90](v18, v17);

      v28 = v36;
      LOBYTE(v36) = 5;
      CoreODILogger.info(_:category:)(v28, v37, &v36);
    }

    else
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAF73DB4(0, *(v14 + 2) + 1, 1, v14);
      }

      v23 = *(v14 + 2);
      v22 = *(v14 + 3);
      if (v23 >= v22 >> 1)
      {
        v14 = sub_1DAF73DB4((v22 > 1), v23 + 1, 1, v14);
      }

      *(v14 + 2) = v23 + 1;
      v14[v23 + 32] = 0;
    }

    goto LABEL_10;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v29 = v0[6];
  v36 = v34;
  v0[15] = sub_1DB0919B0(v14, &v36);

  v30 = v29[3];
  v31 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v35 = (*(v31 + 16) + **(v31 + 16));
  v32 = swift_task_alloc();
  v0[16] = v32;
  *v32 = v0;
  v32[1] = sub_1DB076C34;

  return v35(v30, v31);
}

uint64_t sub_1DB076C34(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[17] = a1;

  v4 = swift_task_alloc();
  v2[18] = v4;
  *v4 = v3;
  v4[1] = sub_1DB076D80;
  v5 = v2[15];

  return sub_1DB017BB8(v5);
}

uint64_t sub_1DB076D80(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB076ED8, v2, 0);
}

uint64_t sub_1DB076ED8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  v6 = swift_beginAccess();
  v9 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v1 + 56) + 16 * v12);
    v14 = *(*(v1 + 48) + v12);
    v16 = *v13;
    v15 = v13[1];
    v17 = (v2 + 1032);
    if (v14 == 2)
    {
      v17 = (v2 + 1000);
    }

    v18 = (v2 + 1040);
    if (v14 == 2)
    {
      v18 = (v2 + 1008);
    }

    v19 = (v2 + 1041);
    if (v14 == 2)
    {
      v19 = (v2 + 1009);
    }

    v20 = (v2 + 1048);
    if (v14 == 2)
    {
      v20 = (v2 + 1016);
    }

    v22 = (v2 + 1025);
    v21 = (v2 + 1024);
    if (v14 != 2)
    {
      v21 = (v2 + 1056);
      v22 = (v2 + 1057);
    }

    v23 = (v2 + 968);
    if (!v14)
    {
      v23 = (v2 + 936);
    }

    v24 = (v2 + 944);
    if (v14)
    {
      v24 = (v2 + 976);
      v6 = (v2 + 977);
    }

    else
    {
      v6 = (v2 + 945);
    }

    if (v14)
    {
      v7 = (v2 + 984);
    }

    else
    {
      v7 = (v2 + 952);
    }

    if (v14)
    {
      v8 = (v2 + 992);
    }

    else
    {
      v8 = (v2 + 960);
    }

    if (v14)
    {
      v25 = (v2 + 993);
    }

    else
    {
      v25 = (v2 + 961);
    }

    v26 = v14 <= 1;
    if (v14 <= 1)
    {
      v27 = v24;
    }

    else
    {
      v23 = v17;
      v27 = v18;
    }

    if (v26)
    {
      v28 = v6;
    }

    else
    {
      v28 = v19;
    }

    if (v26)
    {
      v29 = v7;
    }

    else
    {
      v29 = v20;
    }

    if (v26)
    {
      v30 = v8;
    }

    else
    {
      v30 = v21;
    }

    if (v26)
    {
      v31 = v25;
    }

    else
    {
      v31 = v22;
    }

    *v23 = v16;
    *v27 = 0;
    *v28 = -45;
    *v29 = v15;
    *v30 = 0;
    v9 = v10;
    *v31 = -45;
  }

  while (v5);
  while (1)
  {
LABEL_6:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v6, v7, v8);
    }

    if (v10 >= ((63 - v3) >> 6))
    {
      break;
    }

    v5 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v6 = sub_1DB077138;
  v7 = 0;
  v8 = 0;

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DB077138(uint64_t a1)
{
  v2 = *(v1 + 104);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DB0771F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v8[21] = type metadata accessor for ODISignpost(0);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07729C, 0, 0);
}

uint64_t sub_1DB07729C()
{
  if (qword_1ECC0E0A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = qword_1ECC25CA8;
  v3 = unk_1ECC25CB0;
  v5 = byte_1ECC25CB8;
  v6 = qword_1ECC25CC0;
  v7 = byte_1ECC25CC8;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  sub_1DB08E91C(*(v0 + 176), *(v0 + 184), type metadata accessor for ODISignpost);
  sub_1DAF3523C(v12, v0 + 16);
  sub_1DAF3523C(v0 + 16, v0 + 56);
  v14 = swift_allocObject();
  *(v0 + 192) = v14;
  *(v14 + 16) = v11;
  sub_1DAF332B8((v0 + 16), v14 + 24);

  if (v13 == -1)
  {
    v19 = swift_task_alloc();
    *(v0 + 224) = v19;
    *v19 = v0;
    v19[1] = sub_1DB0776F8;

    return sub_1DB06CBE4(v0 + 56);
  }

  else
  {
    v15 = *(v0 + 128);
    v16 = swift_task_alloc();
    *(v0 + 200) = v16;
    v16[2] = v15;
    v16[3] = &unk_1DB0BB2B0;
    v16[4] = v14;
    v16[5] = &unk_1DB0BB2B8;
    v16[6] = 0;
    v17 = swift_task_alloc();
    *(v0 + 208) = v17;
    *v17 = v0;
    v17[1] = sub_1DB0775C0;
    v18 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0912B8, v16, v18);
  }
}

uint64_t sub_1DB0775C0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1DB077920;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));

    v3 = sub_1DB077864;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB0776F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB0777F4, 0, 0);
}

uint64_t sub_1DB0777F4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DB077864, 0, 0);
}

uint64_t sub_1DB077864(uint64_t a1)
{
  v2 = *(v1 + 184);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DB077920()
{
  v6 = v0;
  v1 = v0[27];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000002ALL, 0x80000001DB0CBDA0);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[23];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB077A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DAF5F404;

  return sub_1DB06CBE4(a3);
}

uint64_t sub_1DB077B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = sub_1DB09D344();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB077BEC, a4, 0);
}

uint64_t sub_1DB077BEC(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v5 = v1[5];
  v4 = v1[6];
  sub_1DB09D334();
  v6 = sub_1DB09D304();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();

  *(v5 + 464) = v6;
  *(v5 + 472) = v8;
  *(v5 + 480) = -45;
  swift_endAccess();

  v9 = v1[1];

  return v9();
}

uint64_t sub_1DB077CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for ODISignpost(0);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB077D68, 0, 0);
}

uint64_t sub_1DB077D68()
{
  if (qword_1EE3013B8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1EE309F70;
  v3 = *algn_1EE309F78;
  v5 = byte_1EE309F80;
  v6 = qword_1EE309F88;
  v7 = byte_1EE309F90;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[6];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);
  v12 = *(v11 + 48);
  LOBYTE(v11) = *(v11 + 56);

  if ((v11 & 1) != 0 || v12 > 0x10C6F7A0B5EDLL)
  {
    if (qword_1EE302C70 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE302C80;
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_1DB0781C4;

    return sub_1DB06F4C4(v17);
  }

  else
  {
    v13 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = 1000000 * v12;
    v14[3] = &unk_1DB0BB2C8;
    v14[4] = v13;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1DB07809C;
    v16 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v16);
  }
}

uint64_t sub_1DB07809C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1DB078494;
  }

  else
  {

    v2 = sub_1DB09549C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB0781C4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DB078340;
  }

  else
  {
    v2 = sub_1DB0782D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB0782D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB09549C, 0, 0);
}

uint64_t sub_1DB078340()
{
  v6 = v0;

  v1 = v0[17];
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000022, 0x80000001DB0CBDD0);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB078494()
{
  v6 = v0;

  v1 = v0[15];
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000022, 0x80000001DB0CBDD0);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB078614()
{
  if (qword_1EE302C70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE302C80;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DB0786E0;

  return sub_1DB06F4C4(v1);
}

uint64_t sub_1DB0786E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB0787D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for ODISignpost(0);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB078878, 0, 0);
}

uint64_t sub_1DB078878()
{
  if (qword_1ECC0E080 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1ECC25C58;
  v3 = unk_1ECC25C60;
  v5 = byte_1ECC25C68;
  v6 = qword_1ECC25C70;
  v7 = byte_1ECC25C78;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[6];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);
  v12 = *(v11 + 48);
  LOBYTE(v11) = *(v11 + 56);

  if ((v11 & 1) != 0 || v12 > 0x10C6F7A0B5EDLL)
  {
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_1DB078C98;

    return sub_1DB06FC14();
  }

  else
  {
    v13 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = 1000000 * v12;
    v14[3] = &unk_1DB0BB2D8;
    v14[4] = v13;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1DB078B70;
    v16 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v16);
  }
}

uint64_t sub_1DB078B70()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1DB078F00;
  }

  else
  {

    v2 = sub_1DB09549C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB078C98()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DB078DAC;
  }

  else
  {
    v2 = sub_1DB0782D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB078DAC()
{
  v6 = v0;

  v1 = v0[17];
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0CBE00);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB078F00()
{
  v6 = v0;

  v1 = v0[15];
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0CBE00);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB079060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB06FC14();
}

uint64_t sub_1DB0790F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB079118, 0, 0);
}

uint64_t sub_1DB079118()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  sub_1DAF3523C(*(v0 + 144), v0 + 16);
  sub_1DAF3523C(v0 + 16, v0 + 56);
  v5 = swift_allocObject();
  *(v0 + 168) = v5;
  *(v5 + 16) = v1;
  sub_1DAF332B8((v0 + 16), v5 + 24);

  if ((v4 & 1) != 0 || v3 > 0x10C6F7A0B5EDLL)
  {
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *v9 = v0;
    v9[1] = sub_1DB079458;

    return sub_1DB06C8B8(v0 + 56);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    v6[2] = 1000000 * v3;
    v6[3] = &unk_1DB0BB2E8;
    v6[4] = v5;
    v6[5] = &unk_1DB0BB2B8;
    v6[6] = 0;
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_1DB079320;
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v6, v8);
  }
}

uint64_t sub_1DB079320()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1DB0795C4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));

    v3 = sub_1DAF51504;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB079458()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB079554, 0, 0);
}

uint64_t sub_1DB079554()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DAF51504, 0, 0);
}

uint64_t sub_1DB0795C4()
{
  v5 = v0;
  v1 = v0[24];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4[0] = 5;
  v4[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000002DLL, 0x80000001DB0CBE30);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v4);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB0796D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DAF63DE8;

  return sub_1DB06C8B8(a3);
}

uint64_t sub_1DB079774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for ODISignpost(0);
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB079814, 0, 0);
}

uint64_t sub_1DB079814()
{
  if (qword_1ECC0E090 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v4 = qword_1ECC25C80;
  v3 = *algn_1ECC25C88;
  v5 = byte_1ECC25C90;
  v6 = qword_1ECC25C98;
  v7 = byte_1ECC25CA0;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DB08E91C(v0[4], v0[5], type metadata accessor for ODISignpost);
  if (qword_1ECC0DFD0 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECC25A50;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_1DB079A14;

  return sub_1DB06D1C0(v11);
}

uint64_t sub_1DB079A14()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB079B10, 0, 0);
}

uint64_t sub_1DB079B10(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DB079BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for ODISignpost(0);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB079C70, 0, 0);
}

uint64_t sub_1DB079C70()
{
  if (qword_1ECC0E0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1ECC25CD0;
  v3 = *algn_1ECC25CD8;
  v5 = byte_1ECC25CE0;
  v6 = qword_1ECC25CE8;
  v7 = byte_1ECC25CF0;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[6];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);
  v12 = *(v11 + 48);
  LOBYTE(v11) = *(v11 + 56);

  if ((v11 & 1) != 0 || v12 > 0x10C6F7A0B5EDLL)
  {
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_1DB07A090;

    return sub_1DB0701B4();
  }

  else
  {
    v13 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = 1000000 * v12;
    v14[3] = &unk_1DB0BB2F8;
    v14[4] = v13;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1DB079F68;
    v16 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v16);
  }
}

uint64_t sub_1DB079F68()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1DB07A2F8;
  }

  else
  {

    v2 = sub_1DB09549C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB07A090()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DB07A1A4;
  }

  else
  {
    v2 = sub_1DB0782D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB07A1A4()
{
  v6 = v0;

  v1 = v0[17];
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBE60);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB07A2F8()
{
  v6 = v0;

  v1 = v0[15];
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBE60);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB07A458()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB0701B4();
}

uint64_t sub_1DB07A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for ODISignpost(0);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07A58C, 0, 0);
}

uint64_t sub_1DB07A58C()
{
  if (qword_1ECC0E0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1ECC25CD0;
  v3 = *algn_1ECC25CD8;
  v5 = byte_1ECC25CE0;
  v6 = qword_1ECC25CE8;
  v7 = byte_1ECC25CF0;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[6];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);
  v12 = *(v11 + 48);
  LOBYTE(v11) = *(v11 + 56);

  if ((v11 & 1) != 0 || v12 > 0x10C6F7A0B5EDLL)
  {
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_1DB07A9AC;

    return sub_1DB070544();
  }

  else
  {
    v13 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = 1000000 * v12;
    v14[3] = &unk_1DB0BB308;
    v14[4] = v13;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1DB07A884;
    v16 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v16);
  }
}

uint64_t sub_1DB07A884()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1DB07AC14;
  }

  else
  {

    v2 = sub_1DB09549C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB07A9AC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DB07AAC0;
  }

  else
  {
    v2 = sub_1DB0782D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB07AAC0()
{
  v6 = v0;

  v1 = v0[17];
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBE90);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB07AC14()
{
  v6 = v0;

  v1 = v0[15];
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBE90);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB07AD74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB070544();
}

uint64_t sub_1DB07AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v7 = swift_task_alloc();
  v6[8] = v7;
  *v7 = v6;
  v7[1] = sub_1DB07AE98;

  return sub_1DB06F820();
}

uint64_t sub_1DB07AE98()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB07AFCC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB07AFCC()
{
  v5 = v0;
  v1 = *(v0 + 72);
  v4[0] = 5;
  v4[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0CBEC0);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v4);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB07B0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[12] = type metadata accessor for ODISignpost(0);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07B164, 0, 0);
}

uint64_t sub_1DB07B164()
{
  if (qword_1ECC0E078 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v4 = qword_1ECC25C30;
  v3 = *algn_1ECC25C38;
  v5 = byte_1ECC25C40;
  v6 = qword_1ECC25C48;
  v7 = byte_1ECC25C50;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[8];
  sub_1DB08E91C(v0[13], v0[14], type metadata accessor for ODISignpost);

  if (v11 == -1)
  {
    if (qword_1EE301828 != -1)
    {
      swift_once();
    }

    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_1DB07B598;

    return sub_1DAF4FF9C();
  }

  else
  {
    v13 = v0[8];
    v12 = v0[9];
    v14 = swift_task_alloc();
    v0[15] = v14;
    v14[2] = v13;
    v14[3] = &unk_1DB0BB320;
    v14[4] = 0;
    v14[5] = &unk_1DB0BB318;
    v14[6] = v12;
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_1DB07B470;
    v16 = MEMORY[0x1E6969080];

    return MEMORY[0x1EEE6DE38](v0 + 5, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0916C4, v14, v16);
  }
}

uint64_t sub_1DB07B470()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DB07B894;
  }

  else
  {

    v2 = sub_1DB07B9F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB07B598(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v7 = sub_1DB07B740;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v7 = sub_1DB07B6CC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DB07B6CC()
{
  *(v0 + 40) = vextq_s8(*(v0 + 160), *(v0 + 160), 8uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DB07B9F4, 0, 0);
}

uint64_t sub_1DB07B740()
{
  v6 = v0;

  v1 = v0[19];
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001ELL, 0x80000001DB0CBEF0);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[14];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB07B894()
{
  v6 = v0;

  v1 = v0[17];
  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001ELL, 0x80000001DB0CBEF0);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[14];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB07B9F4()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[22] = v2;
  v0[23] = v1;
  sub_1DAF40674(v2, v1);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1DB07BAA8;

  return sub_1DB06A700(v2, v1);
}

uint64_t sub_1DB07BAA8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1DB07BC88;
  }

  else
  {
    sub_1DAF40780(*(v2 + 176), *(v2 + 184));
    v3 = sub_1DB07BBC4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB07BBC4()
{
  sub_1DAF40780(v0[22], v0[23]);
  v1 = v0[14];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v1, type metadata accessor for ODISignpost);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB07BC88()
{
  v8 = v0;
  v1 = v0[22];
  v2 = v0[23];
  sub_1DAF40780(v1, v2);
  sub_1DAF40780(v1, v2);
  v3 = v0[25];
  v7[0] = 5;
  v7[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001ELL, 0x80000001DB0CBEF0);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v7);

  v4 = v0[14];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v4, type metadata accessor for ODISignpost);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB07BDF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DB07BE94;

  return sub_1DB06A700(v2, v3);
}

uint64_t sub_1DB07BE94()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1DB07BFB4()
{
  if (qword_1EE301828 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE301830;
  *(v0 + 40) = qword_1EE301830;

  return MEMORY[0x1EEE6DFA0](sub_1DB07C04C, v1, 0);
}

uint64_t sub_1DB07C04C()
{
  v1 = v0[5];
  v2 = *(v1 + 184);
  v0[6] = v2;
  v3 = *(v1 + 192);
  v0[7] = v3;
  if (v3 >> 60 == 15)
  {
    v4 = sub_1DB08E648(&qword_1EE301820, 255, type metadata accessor for DIPODNHelper, &protocol conformance descriptor for DIPODNHelper);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1DB07C1CC;
    v6 = v0[5];
    v7 = MEMORY[0x1E6969080];

    return MEMORY[0x1EEE6DE38](v0 + 2, v1, v4, 0xD000000000000013, 0x80000001DB0C2B70, sub_1DAF628BC, v6, v7);
  }

  else
  {
    v0[10] = v2;
    v0[11] = v3;
    sub_1DAF4ED88(v2, v3);

    return MEMORY[0x1EEE6DFA0](sub_1DB07C2F8, 0, 0);
  }
}

uint64_t sub_1DB07C1CC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1DB07C3B8;
  }

  else
  {
    v4 = sub_1DB07C31C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DB07C31C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *(v1 + 184) = v3;
  *(v1 + 192) = v2;
  sub_1DAF40674(v3, v2);
  sub_1DAF4AC40(v4, v5);
  v0[10] = v3;
  v0[11] = v2;
  sub_1DAF4ED88(v0[6], v0[7]);

  return MEMORY[0x1EEE6DFA0](sub_1DB07C2F8, 0, 0);
}

uint64_t sub_1DB07C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for ODISignpost(0);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07C474, 0, 0);
}

uint64_t sub_1DB07C474()
{
  if (qword_1EE301368 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1EE309F20;
  v3 = *algn_1EE309F28;
  v5 = byte_1EE309F30;
  v6 = qword_1EE309F38;
  v7 = byte_1EE309F40;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[6];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);

  if (v11 == -1)
  {
    if (qword_1EE3039A0 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE3039B0;
    v0[16] = qword_1EE3039B0;

    return MEMORY[0x1EEE6DFA0](sub_1DB07C878, v17, 0);
  }

  else
  {
    v13 = v0[6];
    v12 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = v13;
    v14[3] = &unk_1DB0BB330;
    v14[4] = v12;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1DB07C750;
    v16 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v16);
  }
}

uint64_t sub_1DB07C750()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1DB07CCFC;
  }

  else
  {

    v2 = sub_1DB07CC40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB07C878()
{
  if (*(v0[16] + 168))
  {
    v1 = swift_task_alloc();
    v0[18] = v1;
    *v1 = v0;
    v1[1] = sub_1DB07CADC;
    v2 = v0[16];

    return sub_1DB06D570(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_1DB07C984;

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DB07C984()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 144) = v3;
  *v3 = v2;
  v3[1] = sub_1DB07CADC;
  v4 = *(v1 + 128);

  return sub_1DB06D570(v4);
}

uint64_t sub_1DB07CADC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB07CBD8, 0, 0);
}

uint64_t sub_1DB07CBD8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB07CC40, 0, 0);
}

uint64_t sub_1DB07CC40(uint64_t a1)
{
  v2 = *(v1 + 96);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DB07CCFC()
{
  v6 = v0;
  v1 = v0[15];

  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBF10);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB07CE84()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 24) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DB07CF1C, v1, 0);
}

uint64_t sub_1DB07CF1C()
{
  if (*(v0[3] + 168))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_1DB07D17C;
    v2 = v0[3];

    return sub_1DB06D570(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_1DB07D024;

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DB07D024()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1DB07D17C;
  v4 = *(v1 + 24);

  return sub_1DB06D570(v4);
}

uint64_t sub_1DB07D17C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB07D274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for ODISignpost(0);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07D318, 0, 0);
}

uint64_t sub_1DB07D318()
{
  if (qword_1ECC0E0D0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1ECC25D98;
  v3 = unk_1ECC25DA0;
  v5 = byte_1ECC25DA8;
  v6 = qword_1ECC25DB0;
  v7 = byte_1ECC25DB8;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[6];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);

  if (v11 == -1)
  {
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_1DB07D714;

    return sub_1DB06A938();
  }

  else
  {
    v13 = v0[6];
    v12 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = v13;
    v14[3] = &unk_1DB0BB340;
    v14[4] = v12;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1DB07D5EC;
    v16 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v16);
  }
}

uint64_t sub_1DB07D5EC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1DB07D810;
  }

  else
  {

    v2 = sub_1DB09549C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB07D714()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB0782D8, 0, 0);
}

uint64_t sub_1DB07D810()
{
  v6 = v0;
  v1 = v0[15];

  v5[0] = 5;
  v5[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBF40);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v5);

  v2 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB07D978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DE8;

  return sub_1DB06A938();
}

uint64_t sub_1DB07DA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v11;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  v8[23] = type metadata accessor for ODISignpost(0);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07DAB8, 0, 0);
}

uint64_t sub_1DB07DAB8()
{
  v28 = v0;
  if (qword_1ECC0E0B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = qword_1ECC25CF8;
  v3 = unk_1ECC25D00;
  v5 = byte_1ECC25D08;
  v6 = qword_1ECC25D10;
  v7 = byte_1ECC25D18;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = *(v0 + 152);
  v14 = *(v0 + 160);
  sub_1DB08E91C(*(v0 + 192), *(v0 + 200), type metadata accessor for ODISignpost);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBF70);
  v15 = MEMORY[0x1E1280010](v13, MEMORY[0x1E69E6158]);
  MEMORY[0x1E127FE90](v15);

  MEMORY[0x1E127FE90](0x6974206874697720, 0xEE002074756F656DLL);
  *(v0 + 120) = v14;
  v16 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v16);

  v17 = v26;
  LOBYTE(v26) = 5;
  CoreODILogger.info(_:category:)(v17, v27, &v26);

  sub_1DAF3523C(v12, v0 + 16);
  sub_1DAF3523C(v0 + 16, v0 + 56);
  v18 = swift_allocObject();
  *(v0 + 208) = v18;
  *(v18 + 16) = v11;
  *(v18 + 24) = v13;
  sub_1DAF332B8((v0 + 16), v18 + 32);

  if (v14 == -1)
  {
    v23 = swift_task_alloc();
    *(v0 + 240) = v23;
    *v23 = v0;
    v23[1] = sub_1DB07E008;
    v24 = *(v0 + 152);

    return sub_1DB06ACF0(v24, v0 + 56);
  }

  else
  {
    v19 = *(v0 + 160);
    v20 = swift_task_alloc();
    *(v0 + 216) = v20;
    v20[2] = v19;
    v20[3] = &unk_1DB0BB350;
    v20[4] = v18;
    v20[5] = &unk_1DB0BB2B8;
    v20[6] = 0;
    v21 = swift_task_alloc();
    *(v0 + 224) = v21;
    *v21 = v0;
    v21[1] = sub_1DB07DED0;
    v22 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v21, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v20, v22);
  }
}

uint64_t sub_1DB07DED0()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1DB07E334;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));

    v3 = sub_1DB07E4E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB07E008()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1DB07E18C;
  }

  else
  {
    v2 = sub_1DB07E11C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB07E11C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DB07E4E4, 0, 0);
}

uint64_t sub_1DB07E18C()
{
  v8 = v0;

  v1 = v0[31];
  v2 = v0[19];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v7[0] = 5;
  v7[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001FLL, 0x80000001DB0CBFA0);
  v3 = MEMORY[0x1E1280010](v2, MEMORY[0x1E69E6158]);
  MEMORY[0x1E127FE90](v3);

  MEMORY[0x1E127FE90](0x20726F72726520, 0xE700000000000000);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v7);

  v4 = v0[25];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v4, type metadata accessor for ODISignpost);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB07E334()
{
  v8 = v0;

  v1 = v0[29];
  v2 = v0[19];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v7[0] = 5;
  v7[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001FLL, 0x80000001DB0CBFA0);
  v3 = MEMORY[0x1E1280010](v2, MEMORY[0x1E69E6158]);
  MEMORY[0x1E127FE90](v3);

  MEMORY[0x1E127FE90](0x20726F72726520, 0xE700000000000000);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v7);

  v4 = v0[25];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v4, type metadata accessor for ODISignpost);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB07E4E4(uint64_t a1)
{
  v2 = *(v1 + 200);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DB07E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1DAF62CC4;

  return sub_1DB06ACF0(a3, a4);
}

uint64_t sub_1DB07E64C(char *a1)
{
  LOBYTE(v2) = *a1;
  ODIBindingsDict.subscript.getter(v3);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1DAF40AEC(v3, &qword_1ECC0E178, &qword_1DB09FFB0);
    return 0;
  }
}

uint64_t sub_1DB07E6FC()
{
  v1 = *(v0 + 1224);
  v4 = *(v0 + 1216);
  v5 = v1;
  v3 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000015, 0x80000001DB0CB4C0, &v3);

  *(v0 + 1147) = 1;
  return result;
}

void *ArmandDataFiller.deinit()
{
  memcpy(v2, (v0 + 112), 0x40AuLL);
  sub_1DAF40988(v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ArmandDataFiller.__deallocating_deinit()
{
  ArmandDataFiller.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DB07E820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1DB08E6B0(v13, v10, type metadata accessor for AnyODIKnownBinding);
        sub_1DB08E6B0(v14, v7, type metadata accessor for AnyODIKnownBinding);
        v16 = sub_1DB0857B0(v10, v7);
        sub_1DB08E718(v7, type metadata accessor for AnyODIKnownBinding);
        sub_1DB08E718(v10, type metadata accessor for AnyODIKnownBinding);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1DB07E9D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DB09E254() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DB07EA68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = 0xEC0000006E6F6973;
  v33 = v4 - 1;
  while (1)
  {
    v8 = v5[2];
    v36 = v5[1];
    *v37 = v8;
    v35 = *v5;
    *&v37[10] = *(v5 + 42);
    v9 = v6[2];
    v39 = v6[1];
    v40[0] = v9;
    v38 = *v6;
    *(v40 + 10) = *(v6 + 42);
    v10 = v36;
    v11 = v37[0];
    v12 = v39;
    if ((v37[0] & 1) == 0)
    {
      if (v9)
      {
        goto LABEL_117;
      }

      v13 = v7;
      v14 = 0x726556646C697542;
      switch(v36)
      {
        case 1:
          v13 = 0xE400000000000000;
          v14 = 1684628851;
          break;
        case 2:
          v14 = 0x754E6C6169726553;
          v13 = 0xEC0000007265626DLL;
          break;
        case 3:
          v14 = 0x6544657571696E55;
          v17 = 1701013878;
          goto LABEL_25;
        case 4:
          v14 = 0x6843657571696E55;
          v13 = 0xEC00000044497069;
          break;
        case 5:
          v13 = 0xE90000000000006ELL;
          v14 = 0x6F6973726556736FLL;
          break;
        case 6:
          v13 = 0xE600000000000000;
          v14 = 0x7265626D756ELL;
          break;
        case 7:
          v14 = 0xD000000000000018;
          v13 = 0x80000001DB0C0F40;
          break;
        case 8:
          v14 = 0x746E6564494D4953;
          v16 = 7959657;
          goto LABEL_32;
        case 9:
          v14 = 0xD000000000000018;
          v13 = 0x80000001DB0C0F70;
          break;
        case 10:
          v13 = 0xE800000000000000;
          v14 = 0x6E6F697461636F6CLL;
          break;
        case 11:
          v14 = 0xD000000000000017;
          v13 = 0x80000001DB0C0F90;
          break;
        case 12:
          v14 = 0x6E69726168537369;
          v13 = 0xEF6E656572635367;
          break;
        case 13:
          v14 = 0xD000000000000012;
          v13 = 0x80000001DB0C0FC0;
          break;
        case 14:
          v13 = 0xEA00000000007265;
          v14 = 0x696669746E656469;
          break;
        case 15:
          v14 = 0x736572705F6D6973;
          v16 = 7630437;
          goto LABEL_32;
        case 16:
          v14 = 0x6F737265705F6161;
          v16 = 4475246;
LABEL_32:
          v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 17:
          v14 = 0x7A696C616D726F6ELL;
          v17 = 1396991077;
LABEL_25:
          v13 = v17 | 0xEE00444900000000;
          break;
        case 18:
          v13 = 0xE700000000000000;
          v14 = 0x6469656C707061;
          break;
        default:
          break;
      }

      v18 = 0x726556646C697542;
      v19 = v7;
      switch(v39)
      {
        case 1:
          v7 = 0xE400000000000000;
          v18 = 1684628851;
          break;
        case 2:
          v18 = 0x754E6C6169726553;
          v7 = 0xEC0000007265626DLL;
          break;
        case 3:
          v18 = 0x6544657571696E55;
          v21 = 1701013878;
          goto LABEL_46;
        case 4:
          v18 = 0x6843657571696E55;
          v7 = 0xEC00000044497069;
          break;
        case 5:
          v7 = 0xE90000000000006ELL;
          v18 = 0x6F6973726556736FLL;
          break;
        case 6:
          v7 = 0xE600000000000000;
          v18 = 0x7265626D756ELL;
          break;
        case 7:
          v18 = 0xD000000000000018;
          v7 = 0x80000001DB0C0F40;
          break;
        case 8:
          v18 = 0x746E6564494D4953;
          v20 = 7959657;
          goto LABEL_53;
        case 9:
          v18 = 0xD000000000000018;
          v7 = 0x80000001DB0C0F70;
          break;
        case 10:
          v7 = 0xE800000000000000;
          v18 = 0x6E6F697461636F6CLL;
          break;
        case 11:
          v18 = 0xD000000000000017;
          v7 = 0x80000001DB0C0F90;
          break;
        case 12:
          v18 = 0x6E69726168537369;
          v7 = 0xEF6E656572635367;
          break;
        case 13:
          v18 = 0xD000000000000012;
          v7 = 0x80000001DB0C0FC0;
          break;
        case 14:
          v7 = 0xEA00000000007265;
          v18 = 0x696669746E656469;
          break;
        case 15:
          v18 = 0x736572705F6D6973;
          v20 = 7630437;
          goto LABEL_53;
        case 16:
          v18 = 0x6F737265705F6161;
          v20 = 4475246;
LABEL_53:
          v7 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 17:
          v18 = 0x7A696C616D726F6ELL;
          v21 = 1396991077;
LABEL_46:
          v7 = v21 | 0xEE00444900000000;
          break;
        case 18:
          v7 = 0xE700000000000000;
          v18 = 0x6469656C707061;
          break;
        default:
          break;
      }

      if (v14 == v18 && v13 == v7)
      {
        sub_1DB042BD4(&v35, v34);
        sub_1DB042BD4(&v38, v34);
        sub_1DB041AD8(v10, *(&v10 + 1), 0);
        sub_1DB041AD8(v12, *(&v12 + 1), 0);

        v7 = v19;
      }

      else
      {
        v22 = sub_1DB09E254();
        sub_1DB042BD4(&v35, v34);
        sub_1DB042BD4(&v38, v34);
        sub_1DB041AD8(v10, *(&v10 + 1), 0);
        sub_1DB041AD8(v12, *(&v12 + 1), 0);

        v7 = v19;
        if ((v22 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_58;
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

    if (v36 == v39)
    {
      sub_1DB042BD4(&v35, v34);
      sub_1DB042BD4(&v38, v34);
      sub_1DB042B1C(v10, *(&v10 + 1), 1);
      sub_1DB042B1C(v10, *(&v10 + 1), 1);
      sub_1DB041AD8(v10, *(&v10 + 1), 1);
      sub_1DB041AD8(v10, *(&v10 + 1), 1);
    }

    else
    {
      v15 = sub_1DB09E254();
      sub_1DB042BD4(&v35, v34);
      sub_1DB042BD4(&v38, v34);
      sub_1DB042B1C(v12, *(&v12 + 1), 1);
      sub_1DB042B1C(v10, *(&v10 + 1), 1);
      sub_1DB041AD8(v10, *(&v10 + 1), 1);
      sub_1DB041AD8(v12, *(&v12 + 1), 1);
      if ((v15 & 1) == 0)
      {
        goto LABEL_118;
      }
    }

LABEL_58:
    if (v35 != v38 && (sub_1DB09E254() & 1) == 0 || *&v37[8] != *(&v40[0] + 1) || v37[25] != BYTE9(v40[1]))
    {
      goto LABEL_118;
    }

    v23 = 0xE800000000000000;
    v24 = 0x73746E756F636341;
    switch(v37[1])
    {
      case 1:
        v24 = 0x6547656C69626F4DLL;
        v23 = 0xED0000746C617473;
        break;
      case 2:
        v24 = 0x6974726543616162;
        v23 = 0xEE00657461636966;
        break;
      case 3:
        v23 = 0xE900000000000064;
        v24 = 0x6C6569467261654ELL;
        break;
      case 4:
        v23 = 0xE300000000000000;
        v24 = 5456969;
        break;
      case 5:
        v24 = 0x656C655465726F43;
        v23 = 0xED0000796E6F6870;
        break;
      case 6:
        v23 = v7 + 1;
        v24 = 0x61636F4C65726F43;
        break;
      case 7:
        v24 = 0xD000000000000012;
        v23 = 0x80000001DB0C0E80;
        break;
      case 8:
        v24 = 0x656E6F5A656D6954;
        break;
      case 9:
        v24 = 0x6C4372656C6C6143;
        v23 = 0xEC000000746E6569;
        break;
      case 0xA:
        v23 = 0xEA0000000000656DLL;
        v24 = 0x614E646573726150;
        break;
      case 0xB:
        v24 = 0x7265646F636F6547;
        break;
      case 0xC:
        v24 = 0x657474616D726F46;
        v23 = 0xEE00656E6F685064;
        break;
      case 0xD:
        v24 = 0x6553656369766544;
        v23 = 0xEE0073676E697474;
        break;
      case 0xE:
        v24 = 0x72756769666E6F43;
        v23 = 0xED00006E6F697461;
        break;
      default:
        break;
    }

    v25 = 0xE800000000000000;
    v26 = 0x73746E756F636341;
    switch(BYTE1(v40[0]))
    {
      case 1:
        v27 = 0x6547656C69626F4DLL;
        v28 = 0x746C617473;
        goto LABEL_93;
      case 2:
        v29 = 0x6974726543616162;
        v30 = 0x657461636966;
        goto LABEL_96;
      case 3:
        v25 = 0xE900000000000064;
        if (v24 != 0x6C6569467261654ELL)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 4:
        v25 = 0xE300000000000000;
        if (v24 != 5456969)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 5:
        v27 = 0x656C655465726F43;
        v28 = 0x796E6F6870;
        goto LABEL_93;
      case 6:
        v25 = v7 + 1;
        if (v24 != 0x61636F4C65726F43)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 7:
        v25 = 0x80000001DB0C0E80;
        if (v24 != 0xD000000000000012)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 8:
        if (v24 != 0x656E6F5A656D6954)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 9:
        v25 = 0xEC000000746E6569;
        if (v24 != 0x6C4372656C6C6143)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 0xA:
        v25 = 0xEA0000000000656DLL;
        v26 = 0x614E646573726150;
        goto LABEL_101;
      case 0xB:
        if (v24 != 0x7265646F636F6547)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 0xC:
        v29 = 0x657474616D726F46;
        v30 = 0x656E6F685064;
        goto LABEL_96;
      case 0xD:
        v29 = 0x6553656369766544;
        v30 = 0x73676E697474;
LABEL_96:
        v25 = v30 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v24 != v29)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 0xE:
        v27 = 0x72756769666E6F43;
        v28 = 0x6E6F697461;
LABEL_93:
        v25 = v28 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v24 != v27)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      default:
LABEL_101:
        if (v24 != v26)
        {
          goto LABEL_105;
        }

LABEL_102:
        if (v23 == v25)
        {

          sub_1DB042C0C(&v38);
          sub_1DB042C0C(&v35);
        }

        else
        {
LABEL_105:
          v31 = sub_1DB09E254();

          sub_1DB042C0C(&v38);
          sub_1DB042C0C(&v35);
          if ((v31 & 1) == 0)
          {
            return 0;
          }
        }

        if (v37[24])
        {
          if ((BYTE8(v40[1]) & 1) == 0)
          {
            return 0;
          }
        }

        else if ((BYTE8(v40[1]) & 1) != 0 || *&v37[16] != *&v40[1])
        {
          return 0;
        }

        if (!v33)
        {
          return 1;
        }

        --v33;
        v5 += 4;
        v6 += 4;
        break;
    }
  }

  sub_1DB042B1C(v36, *(&v36 + 1), 1);

LABEL_117:
  sub_1DB042BD4(&v35, v34);
  sub_1DB042BD4(&v38, v34);
  sub_1DB042B1C(v12, *(&v12 + 1), v11 ^ 1);
  sub_1DB041AD8(v10, *(&v10 + 1), v11);
  sub_1DB041AD8(v12, *(&v12 + 1), v11 ^ 1);
  sub_1DB041AD8(v10, *(&v10 + 1), v11);
LABEL_118:
  sub_1DB042C0C(&v38);
  sub_1DB042C0C(&v35);
  return 0;
}

void *sub_1DB07F6C8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E768, &qword_1DB0A4690);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

double sub_1DB07F73C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1DAF35210(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DAF3C3E8();
      v10 = v12;
    }

    sub_1DAF332B8((*(v10 + 56) + 40 * v8), a3);
    sub_1DB07FBA0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB07F7E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1DAF355A0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v17 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DAF3CDC4();
      v9 = v17;
    }

    memcpy(v16, (*(v9 + 48) + 1048 * v7), 0x414uLL);
    sub_1DAF407D4(v16);
    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
    v12 = *(v11 - 8);
    sub_1DAF624E8(v10 + *(v12 + 72) * v7, a2, &qword_1ECC0E2F8, &qword_1DB0A0280);
    sub_1DB080970(v7, v9);
    *v3 = v9;
    return (*(v12 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t sub_1DB07F9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1DAF35210(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DAF3D308();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for AnyODIKnownBinding(0);
    v19 = *(v12 - 8);
    sub_1DB08E91C(v11 + *(v19 + 72) * v8, a3, type metadata accessor for AnyODIKnownBinding);
    sub_1DB080BC0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for AnyODIKnownBinding(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1DB07FB18(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DAF356DC(a1);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DAF3D958();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1DB080F40(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1DB07FBA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      sub_1DB09E3A4();

      sub_1DB09D794();
      v11 = sub_1DB09E3E4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB07FD5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      sub_1DB09E3A4();
      sub_1DB09D794();

      result = sub_1DB09E3E4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB080100(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      sub_1DB09E3A4();
      sub_1DB09D794();

      result = sub_1DB09E3E4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB08060C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      sub_1DB09E3A4();

      sub_1DB09D794();
      v9 = sub_1DB09E3E4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}