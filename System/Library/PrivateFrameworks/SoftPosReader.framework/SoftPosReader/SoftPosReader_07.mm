uint64_t sub_26AA1B68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20 = STACK[0x1D48] ^ STACK[0x1CF8];
  v21 = STACK[0x1D60] ^ STACK[0x2298] ^ STACK[0x1D90];
  v22 = a2 ^ STACK[0x1D00] ^ a7;
  v23 = v9 ^ a4 ^ v19;
  v24 = STACK[0x2190];
  v25 = (STACK[0x1E70] ^ STACK[0x2180]) & STACK[0x1DF8] ^ STACK[0x2280] & (STACK[0x2190] ^ STACK[0x2290]);
  v26 = STACK[0x2188];
  STACK[0x2288] = (STACK[0x2188] + 102) | 0x2A0;
  v27 = (v26 + 2168);
  STACK[0x2298] = v27;
  v28 = (v25 + a5 - ((v25 << (((v26 + 102) | 0xA0) + 9)) & (v27 ^ (v13 + 3414)))) ^ v24;
  v29 = ((v28 ^ v11) - v11) ^ ((v28 ^ v8) - v8) ^ ((v28 ^ v20) - v20);
  v30 = (LODWORD(STACK[0x1D98]) + 19017) % 0x14Cu;
  v31 = (*(v16 + 8 * (BYTE1(a6) ^ 0xBALL) + 199784) ^ 0xDD631273DDBEB52BLL) + 0x5E2B66FA7E2B43AFLL;
  v32 = BYTE2(a6) ^ 0xBLL ^ ((BYTE2(a6) ^ 0xBLL) - ((2 * (BYTE2(a6) ^ 0xBLL) + 0x203BCAE92EC65348) & 0x200200E12A444256) + 0xD80F7E87521DECFLL) ^ *(v16 + 8 * (BYTE3(a6) ^ 0x44) + 290832) ^ *(v16 + 8 * (BYTE2(a6) ^ 0x12) + 297272) ^ ((*(v16 + 8 * (a6 ^ 0x71) + 132936) ^ 0xDD631273DDBEB52BLL) - 0x29900ECA449C0E6FLL) ^ v31 ^ (4 * v31) ^ 0xF9F95167D2740BEALL;
  v33 = *(v16 + 8 * (BYTE5(a6) ^ 0xA8) + 146248) ^ 0xAF92BD4628A752CCLL;
  v34 = v33 ^ *(v16 + 8 * (v14 ^ 0xEBu) + 271864) ^ (v33 >> 1) ^ (v33 >> 5) ^ (v32 - 0x229CED8C22414AD5 - ((2 * v32) & 0xBAC624E7BB7D6A56));
  STACK[0x1F80] = a6;
  v35 = (v10 - 0x229CED8C22414AD5 - ((2 * v10) & 0x56)) ^ *(v16 + 8 * (BYTE6(a6) ^ 0xCCLL) + 216544) ^ *(v16 + 8 * (v12 ^ 9) + 240000) ^ 0x49E80009CC4541E5 ^ (v34 - 0x229CED8C22414AD5 - ((2 * v34) & 0xBAC624E7BB7D6A56));
  v36 = (STACK[0x1E30] ^ 0x97537B18A4FBB33ELL) - STACK[0x2198] - STACK[0x1D10] + (*(v16 + 8 * (LODWORD(STACK[0x22B8]) ^ 0xAu) + 156744) ^ 0x4A9AAE90F5A6298BLL) + v29 + (*(STACK[0x22F0] + 8 * v30) ^ 0x280E51FCEFE0F70) + (((v35 ^ v21 ^ 0x6CEDB81AC5095929) - (v21 ^ 0xB6EA366845AB3592)) ^ ((v35 ^ a1 ^ 0xDA078E7280A26CBBLL) - a1) ^ ((v35 ^ STACK[0x22C0] ^ (((v35 ^ v21 ^ 0x6CEDB81AC5095929) & 0xAE214DA5F0F9313 | (v35 ^ v21) & 0xAE214DA5F0F9313 ^ 0x20204C01A068212) - ((((v35 ^ a1) & 0xFE1 ^ 0x340) + (((v35 ^ a1) ^ 0x6CBB) & 0xFE1)) & 0x1000) - 0x30DA8667DE6D2658)) - STACK[0x22C0]));
  v37 = STACK[0x1D68] & STACK[0x1E88] ^ a3 & STACK[0x1E80] ^ STACK[0x1D50] & a3 ^ STACK[0x1D50] & STACK[0x1E80] ^ STACK[0x1D58] & STACK[0x1D68] ^ STACK[0x1D58] & STACK[0x1E88];
  v38 = STACK[0x2178];
  v39 = STACK[0x2178];
  v40 = *(v16 + 8 * BYTE1(STACK[0x2178]) + 88672) ^ *(v16 + 8 * (v39 ^ 0xE9) + 265392);
  v41 = STACK[0x1DD0];
  v42 = v17 ^ ((STACK[0x1E90] & 0xD ^ 1) + (STACK[0x1E90] & 0xD ^ 0xC));
  v43 = STACK[0x1E08];
  v44 = STACK[0x1F70];
  v45 = ((BYTE2(v38) ^ 0x18) - 0x540C3A9FF8D2678) ^ v39 ^ ((v18 ^ 0xEA) + (v18 ^ 0x19F2E13B881F5FE4) - 0x229CED8C22414AD5 - ((2 * ((v18 ^ 0xEA) + (v18 ^ 0x19F2E13B881F5FE4))) & 0x32C40067103C6A56)) ^ *(v16 + 8 * (BYTE2(v38) ^ 0xD0) + 191368) ^ (v42 - ((2 * v42 + 3160376490) & 0x1BB7D6A56) - 0xA15FE66C4118880) ^ (v40 - 0x229CED8C22414AD5 - ((2 * v40) & 0xBAC624E7BB7D6A56)) ^ *(v16 + 8 * (v42 ^ ((v41 | 0x6AC40D42) - (v41 & 0x953BF2BD) - 1791233179)) + 75960) ^ (0x461AA5014A401085 * (*(v16 + 8 * (BYTE3(v38) ^ 0x16) + 59184) ^ 0xDD631273DDBEB52BLL)) ^ *(v16 + 8 * (v18 ^ 0xE7) + 178528) ^ BYTE6(v38) ^ 0x63481825u ^ *(v43 + 4 * (BYTE6(v38) ^ 0xFFLL) + 1104) ^ v44 ^ 0x52F587E3u ^ *(v43 + 4 * (v44 ^ 0xE3u) + 3216);
  v46 = (((STACK[0x1D18] ^ v37) - STACK[0x1D18]) ^ ((STACK[0x1D08] ^ v37) - STACK[0x1D08]) ^ ((v22 ^ v37) - v22)) - (STACK[0x1DD0] + STACK[0x1DB0]) + STACK[0x1E18] + (((STACK[0x1DB8] ^ 0x320097F2BD672A98 ^ v45 ^ 0x8E39D9FB8266BE60) - STACK[0x1DB8]) ^ ((v23 ^ 0xBC394E093F0194F8 ^ v45) - v23) ^ ((STACK[0x1DA8] ^ 0x320097F2BD672A98 ^ v45 ^ 0x8E39D9FB8266BE60) - STACK[0x1DA8]));
  v47 = ((STACK[0x1D28] + STACK[0x1E00]) ^ STACK[0x1D28]) - v15;
  v48 = (STACK[0x1E38] ^ 0x73348041C076AFCDLL) - STACK[0x1D20] - v36;
  v49 = ((STACK[0x1D70] | 0x7B520CA68DBA7910) + (STACK[0x1D70] | 0x84ADF359724586EFLL) - ((v7 ^ 0x76E26576BF1986BFLL) - STACK[0x1F78]) + 1) ^ STACK[0x1F78];
  v50 = STACK[0x1D40] ^ STACK[0x1E38] ^ (STACK[0x1D38] - 0x73348041C076AFCELL - 2 * (STACK[0x1D38] & 0xCCB7FBE3F89503BLL ^ STACK[0x1D30] & 9));
  v51 = (STACK[0x2050] ^ 0x68AC84E75B044CC1) - v36 + 1;
  v52 = STACK[0x1DA0] - 0x4A223649E3BE61E5;
  v53 = v47 + 0x1C9AFB1CDCF70EDCLL - STACK[0x1F78] - 0x31CBA03236C5B23;
  v54 = ((((STACK[0x1D78] + 0x751425C83E333C38 - ((2 * STACK[0x1D78]) & 0xEA284B907C667870)) ^ STACK[0x1E40]) - STACK[0x1D78]) ^ (((STACK[0x1D88] + 0x751425C83E333C38 - ((2 * STACK[0x1D88]) & 0xEA284B907C667870)) ^ STACK[0x1E40]) - STACK[0x1D88]) ^ (((v50 + 0x751425C83E333C38 - ((2 * v50) & 0xEA284B907C667870)) ^ STACK[0x1E40]) - v50)) - STACK[0x1DC0] + STACK[0x1E18];
  v55 = ((v54 ^ STACK[0x1D70] ^ (v48 + 1)) - STACK[0x1DD8]) ^ STACK[0x1DE0] ^ ((v54 ^ (v47 + 0x1C9AFB1CDCF70EDCLL) ^ (v48 + 1)) - STACK[0x1DC8]);
  STACK[0x1F70] = STACK[0x1E10] + STACK[0x2180];
  STACK[0x2050] = ((v51 ^ v46 ^ v49) - STACK[0x1DE8]) ^ v52 ^ ((v46 ^ v53 ^ v51) - STACK[0x2148]) ^ 0x751425C83E333C38;
  STACK[0x1F78] = v55 ^ 0x64599B32CBDEC00FLL;
  v56 = *(STACK[0x22F8] + 8 * (STACK[0x2188] | (LODWORD(STACK[0x22B8]) == 79)));
  STACK[0x2280] = v55;
  return v56();
}

void sub_26AA1C1D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  STACK[0x2298] = a2;
  STACK[0x1E98] = v12;
  STACK[0x22C0] = a7;
  STACK[0x2198] = v8;
  STACK[0x22E0] = v11;
  STACK[0x1F90] = v7 ^ v9;
  STACK[0x1E90] = v10 ^ 0x193A5A8FC78115BFLL;
  STACK[0x22C8] = STACK[0x2148] ^ 0x23279723EC0987ECLL;
  ++LODWORD(STACK[0x22B8]);
  STACK[0x1E40] = STACK[0x21A8];
  STACK[0x21A8] = STACK[0x21A0];
  STACK[0x1E38] = STACK[0x2250];
  STACK[0x2250] = STACK[0x1E20];
  STACK[0x1E30] = STACK[0x2010];
  STACK[0x21A0] = STACK[0x2178];
  STACK[0x2178] = STACK[0x2140];
  STACK[0x2190] = STACK[0x2290];
  JUMPOUT(0x26AA1A988);
}

uint64_t sub_26AA1C284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = STACK[0x2298];
  v20 = STACK[0x2298] - 343;
  STACK[0x2198] = v20;
  v21 = v9;
  STACK[0x2180] = v18;
  v23 = v18 ^ (a8 - 0xA1942E5B8EE82EALL);
  v24 = v23 - (v18 - 0xE8B410EB35B68B4);
  v25 = v24 + 0x445FCE20A19C00D3 - (((v20 ^ 0x45B0220808C0CD3) & v10 | 0x4004CC0021100013) ^ (v19 ^ 0x45B0220808C0DAALL) & (0x5B974C517528216 - a8));
  v26 = (a8 - ((2 * v10 + 0x774063BEBCC7FE5ALL) & 0xEA284B907C667870) + 0x6AFAE2E28544B94ELL) ^ a2 ^ STACK[0x2050];
  v27 = v25 ^ (v18 - 0xE8B410EB35B68B4 + a2);
  v28 = v24 ^ STACK[0x2018] ^ (v27 - 0x73348041C076AFCELL - ((2 * v27) & 0x1996FF7C7F12A064));
  v29 = a7 ^ v21;
  STACK[0x22E0] = (((v12 ^ (v13 - ((2 * a7) & 0x1996FF7C7F12A064) - 0x38EDF506D7C931E5)) - a7) ^ ((v12 ^ (v16 - 0x73348041C076AFCELL - ((2 * v16) & 0x1996FF7C7F12A064))) - v16) ^ (((v26 - 0x73348041C076AFCELL - ((2 * v26) & 0x1996FF7C7F12A064)) ^ v12) - v26)) - v21;
  v30 = v21 - 0xE8B410EB35B68B4;
  v31 = v16 + v21 - 0xE8B410EB35B68B4;
  v32 = v29 - (v21 - 0xE8B410EB35B68B4);
  v33 = v14;
  v34 = STACK[0x2178];
  v35 = (v15 ^ 0xBFE148BF532EEC53 ^ v24) - v24;
  v36 = v18 - 0xE8B410EB35B68B4 + (v15 ^ 0xBFE148BF532EEC53);
  STACK[0x22C8] = v36;
  v37 = v23 + (v15 ^ 0xBFE148BF532EEC53) - ((((v27 + 0x7B520CA68DBA7911) & 0x9B8010DF5E61FC21) + (((v25 ^ ~(v18 - 0xE8B410EB35B68B4 + a2)) + v14) & 0x9B8010DF5E61FC21)) | 0x202021000002872DLL);
  v38 = STACK[0x2148] ^ 0xBFE148BF532EEC53;
  v39 = (v32 ^ v38) - v32;
  v40 = v30 + v38;
  v41 = v29 + v38;
  v42 = ((((v35 + 125) & (-126 - v35)) - 0x51500CA68C2A2101) & v33) + v27 - 0x404E2538D0A9861CLL - v37;
  v43 = v37 + a1;
  v44 = v42 ^ v43;
  v45 = (v42 ^ v43) - 0x73348041C076AFCELL - ((2 * (v42 ^ v43)) & 0x1996FF7C7F12A064);
  v46 = v43 ^ (v35 + 0x253FC9257D5E547DLL);
  v47 = STACK[0x21A0];
  v48 = (((v46 ^ STACK[0x1E20] ^ v45) + v17 - ((2 * (v46 ^ STACK[0x1E20] ^ v45)) & 0xEA284B907C667870)) ^ STACK[0x21A0]) - (v46 ^ STACK[0x1E20] ^ v45);
  v49 = v27 + v36;
  STACK[0x2148] = ((2 * (v49 + STACK[0x1E80])) & 0xFFF57F9F9E35FFD4) + ((v49 + STACK[0x1E80]) ^ 0x7FFABFCFCF1AFFEALL);
  STACK[0x22B8] = (((((v31 ^ v32) + v17 - ((2 * (v31 ^ v32)) & 0xEA284B907C667870)) ^ v34) - (v31 ^ v32)) ^ (((v32 + v17 - ((2 * v32) & 0xEA284B907C667870)) ^ v34) - v32) ^ (((v28 + v17 - ((2 * v28) & 0xEA284B907C667870)) ^ v34) - v28)) - v40;
  v50 = (v31 ^ v32) + v40;
  v51 = ((v31 ^ v32) - v41) ^ v41;
  v52 = (v39 + 0x253FC9257D5E547DLL) ^ v41;
  v53 = (((v51 + v17 - ((2 * v51) & 0xEA284B907C667870)) ^ v47) - v51) ^ (((v52 + v17 - ((2 * v52) & 0xEA284B907C667870)) ^ v47) - v52) ^ v48;
  v54 = v35 + v44;
  v55 = v35 + 0x253FC9257D5E547DLL + (v50 & 0x9ABF9C9A0CD6320DLL) + (v50 & 0x9ABF9C9A0CD6320DLL ^ 0x9ABF9C9A0CD6320DLL);
  v56 = v51 + v39 + 0x253FC9257D5E547DLL;
  STACK[0x22C0] = v53 - v50;
  v39 -= 0x40009A4075CB7976;
  v57 = v39 - 0x58A4A958DE2D2CDELL + v50;
  v54 += 0x6EE19A6F2B27322ALL;
  v58 = v49 + v55;
  v59 = v54 ^ ((v46 ^ v55) - v55);
  v60 = v54 ^ ((v55 ^ 0xB5FE16B54AED074ALL) - 0x5729605B641B1B6);
  v61 = (v56 + 0x49A1D149ADC8DDADLL) ^ ((v52 ^ v39) - v39);
  v62 = v57 - v61 + 0x6412A0647EF70C7FLL;
  v63 = (v39 ^ 0xB5FE16B54AED074ALL) + 0x6B2815ADBB7AE4BALL * (((v59 + 0x2E9FEB0AE07DAD11) ^ (0x116014F51F8252EELL - v59)) & 0x3C24D2A411B24B69);
  STACK[0x2188] = v63 ^ (v56 + 0x49A1D149ADC8DDADLL);
  v64 = (v63 ^ (v56 + 0x49A1D149ADC8DDADLL)) - 0x680319687C2D917DLL;
  STACK[0x2178] = v64;
  v65 = v64 ^ (v63 + 0x7864C578FAEF69FBLL);
  STACK[0x2068] = v61 - 0x15BFE315C11E53C2;
  v66 = v62 - (v61 - 0x15BFE315C11E53C2);
  v67 = v58 - v59 + 0xB6DF70BA0C9DFA1;
  STACK[0x2250] = v60;
  v68 = v67 + (v55 ^ 0xB5FE16B54AED074ALL) + 0x72F22F7344ADB845;
  STACK[0x2070] = v60 - 0x680319687C2D917DLL;
  v69 = (v60 - 0x680319687C2D917DLL) ^ ((v55 ^ 0xB5FE16B54AED074ALL) + 0x72F22F7344ADB845);
  v70 = v59 - 0x15BFE315C11E53C2;
  v59 -= 0x2D43C62CCDFA83CFLL;
  v71 = v68 ^ v59;
  STACK[0x2060] = v70;
  STACK[0x2058] = v67;
  v72 = v67 - v70;
  v73 = v72 ^ v69 ^ v59;
  v74 = v72 ^ v69 ^ STACK[0x1F80] ^ (v73 + 0x64599B32CBDEC00FLL - ((2 * v73) & 0xC8B3366597BD801ELL));
  STACK[0x21A8] = v62;
  v75 = (v63 + 0x7864C578FAEF69FBLL + v62) ^ (v61 - 0x2D43C62CCDFA83CFLL);
  v76 = v65 ^ v66 ^ (v61 - 0x2D43C62CCDFA83CFLL);
  v77 = v71 ^ v72;
  v78 = v71 ^ v69;
  v79 = (v78 + v71) ^ v78;
  v80 = v78 - 0x1EFEC61E6B236C6CLL;
  v81 = v75 ^ v66;
  v82 = ((((v74 - 0x73348041C076AFCELL - ((2 * v74) & 0x1996FF7C7F12A064)) ^ STACK[0x1E28]) - v74) ^ ((((v65 ^ v66) - 0x73348041C076AFCELL - ((2 * (v65 ^ v66)) & 0x1996FF7C7F12A064)) ^ STACK[0x1E28]) - (v65 ^ v66)) ^ (((v76 - 0x73348041C076AFCELL - ((2 * v76) & 0x1996FF7C7F12A064)) ^ STACK[0x1E28]) - v76)) - (v75 ^ v66);
  v83 = v75 ^ v65;
  v84 = ((v75 ^ v65) + v75) ^ v75 ^ v65;
  v85 = (v76 ^ 0xEF2F6CEF75F46075) - v84;
  v86 = v73 ^ 0xEF2F6CEF75F46075;
  v87 = (v73 ^ 0xEF2F6CEF75F46075) - v79;
  v88 = v87 ^ STACK[0x2140] ^ (v78 - ((2 * (v78 - 0x1EFEC61E6B236C6CLL)) & 0x1996FF7C7F12A064) + 0x6DCCB99FD465E3C6);
  v89 = v83 - 0x1EFEC61E6B236C6CLL;
  v90 = (((v83 - ((2 * (v83 - 0x1EFEC61E6B236C6CLL)) & 0xC8B3366597BD801ELL) + 0x455AD51460BB53A3) ^ STACK[0x2290]) - (v83 - 0x1EFEC61E6B236C6CLL)) ^ (((v88 + 0x64599B32CBDEC00FLL - ((2 * v88) & 0xC8B3366597BD801ELL)) ^ STACK[0x2290]) - v88) ^ (((v85 + 0x64599B32CBDEC00FLL - ((2 * v85) & 0xC8B3366597BD801ELL)) ^ STACK[0x2290]) - v85);
  v91 = STACK[0x2180] + STACK[0x17B8] + v11;
  STACK[0x1828] += STACK[0x22B8];
  v92 = (v76 ^ 0xEF2F6CEF75F46075) + v81 + v85;
  v93 = (v85 ^ v89) + v84;
  v94 = v90 - v92;
  v95 = v92 - 0x1AAFC81A822ABB83;
  v96 = v89 + v92 - 0x1AAFC81A822ABB83 + ((v92 - 0x1AAFC81A822ABB83) ^ 0xB1C531B134F18134) + 1;
  v97 = v96 + 0x31F5130B5ED440E7 - ((2 * v96) & 0x63EA2616BDA881CELL);
  STACK[0x1818] += v82;
  STACK[0x1810] += v94;
  STACK[0x1840] += (STACK[0x2018] ^ 0x8CCB7FBE3F895032) + STACK[0x22C8];
  v98 = v86 + v77 + v87;
  STACK[0x1F90] = STACK[0x1E88] - 0x58A4A958DE2D2CDELL + (v8 ^ 0x381C0F4C9BBE127BLL) + v58 + 0x313CB7B0FD2EE45FLL - ((2 * (STACK[0x1E88] - 0x58A4A958DE2D2CDELL + (v8 ^ 0x381C0F4C9BBE127BLL) + v58)) & 0x62796F61FA5DC8BELL);
  STACK[0x1E30] = v98;
  STACK[0x2158] = STACK[0x22C0] + (STACK[0x2158] ^ 0x8F1D47B06B1BCEE3) - 0x70E2B84F94E4311DLL - ((2 * (STACK[0x22C0] + (STACK[0x2158] ^ 0x8F1D47B06B1BCEE3))) & 0x1E3A8F60D6379DC6);
  STACK[0x22C0] = (v98 - 0x1AAFC81A822ABB83) ^ 0x6FCA88BC5B1F82D7;
  STACK[0x22B8] = v98 - 0x1AAFC81A822ABB83 + v80 - ((v98 - 0x1AAFC81A822ABB83) ^ 0x4E3ACE4ECB0E7ECBLL);
  LODWORD(v96) = STACK[0x2298] | (LODWORD(STACK[0x1C00]) != 0);
  LODWORD(STACK[0x2078]) = LODWORD(STACK[0x1C00]) + 128;
  v99 = *(STACK[0x22F8] + 8 * v96);
  STACK[0x2298] = v93 + 0x67DB86E650507092;
  STACK[0x22C8] = v95 ^ 0xD969B5566FF5CDF5;
  STACK[0x17B8] = v91;
  STACK[0x21A0] = v97;
  STACK[0x2190] = (v79 - 0x6E7B106BDDB00BDLL + (v87 ^ v80)) ^ 0xF197F7828883B84DLL;
  return v99();
}

uint64_t sub_26AA1CD9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x2288] = a4;
  LODWORD(STACK[0x2290]) = a4 + 13;
  v23 = STACK[0x22C0] ^ (a8 - 0x5D0CFC5C59407721 - ((2 * a8) & 0x45E607474D7F11BELL));
  v24 = (((0xB37220F27C2817AELL - v13) ^ 0x8303455136AE74C3 ^ v23) - (v10 ^ v20)) ^ (((v18 - ((2 * (0xB37220F27C2817AELL - v13)) & 0x9714745D4616543CLL) + 0x7EFC5B211F3341CCLL) ^ 0x3A1DCDAC2B889253 ^ v9 ^ a8) + 0x6E7B106BDDB00BDLL + v16);
  STACK[0x2180] = (v24 - 0x70C54E5DE79844FLL - (a3 & (2 * v24))) ^ v22;
  v25 = a6 ^ 0x48897F7F95A55EDDLL ^ (v23 - 0x3475C5D15CF4D5E2 - ((2 * v23) & 0x9714745D4616543CLL));
  v26 = a1 + a2;
  STACK[0x17A8] = v19;
  v27 = v19 & 0xBBA031DF5E63FF2DLL;
  v28 = (v25 - ((a1 + a2) ^ (v18 - ((2 * (0xB37220F27C2817AELL - v13)) & 0x2EA6F63149F7667CLL) + 0x4AC59C0B2123CAECLL) ^ v11)) ^ (v8 - 0x23C24B236D09A76ELL);
  v29 = v27 + (v27 ^ 0xBBA031DF5E63FF2DLL) + v8 + 0x209D82FD34925965 + v17;
  v30 = v15 + 0x65368A65AC119CACLL + (v15 ^ a6);
  v31 = ((STACK[0x22B8] - a6) ^ 0xC74767C7D2537BD2) + v29;
  v32 = v15 + 0x65368A65AC119CACLL - v31;
  STACK[0x22E0] = v22;
  v33 = (v22 ^ 0xF8F3AB1A21867BB1) - (v10 ^ v20);
  v34 = (v10 ^ v20) + 0x65368A65AC119CACLL;
  v35 = ((v16 + 0x6E7B106BDDB00BDLL + (a7 ^ 0x31F5130B5ED440E7)) ^ 0xC74767C7D2537BD2) + v33;
  v36 = v34 - v35;
  v37 = (v10 ^ v20 ^ v26) + v34;
  v38 = 0xF15C0632206864AELL - STACK[0x1828];
  v39 = ((v32 ^ STACK[0x1840] ^ v30) - (v37 ^ v38 ^ v36)) ^ v31;
  v40 = v35 ^ ((v38 ^ STACK[0x1840] ^ v30) - v37) ^ ((v32 ^ STACK[0x1840] ^ v38) - v36);
  v41 = v35 - v37 - 0x68AC84E75B044CC2 - ((2 * (v35 - v37)) & 0x2EA6F63149F7667CLL);
  v42 = v31 - v30;
  v43 = v32 - (v30 - 0x485A73487007BE71);
  v44 = v30 - 0x485A73487007BE71 - (v43 + 0xFB4002893F729) - 0x5D0CFC5C59407721 - ((2 * (v30 - 0x485A73487007BE71 - (v43 + 0xFB4002893F729))) & 0x45E607474D7F11BELL);
  v45 = v43 + 0xFB4002893F729 - v29;
  STACK[0x22E8] = v45 - ((2 * v45 + 0x16A4194D1B74F222) & 0x1996FF7C7F12A064);
  v46 = (v10 & 0xB7A58CB78FF8418FLL ^ 0x6208C068B08408BLL | v10 & 0xB7A58CB78FF8418FLL ^ 0xB18500B104F00104) + v37;
  v47 = v36 - v46;
  v48 = v36 - v46 + 0xFB4002893F729;
  v49 = (v43 - ((2 * (v43 + 0xFB4002893F729)) & 0x1E3A8F60D6379DC6) - 0x70D3044F6C5039F4) ^ STACK[0x2158];
  v50 = STACK[0x2158] ^ (v12 - 0x70E2B84F94E4311DLL - ((2 * v12) & 0x1E3A8F60D6379DC6));
  v51 = v46 - v48;
  STACK[0x1F80] = v41 ^ (((((v43 + 0xFB4002893F729) ^ v12) - 0x70E2B84F94E4311DLL - ((2 * ((v43 + 0xFB4002893F729) ^ v12)) & 0x1E3A8F60D6379DC6)) ^ STACK[0x2158]) - v48) ^ ((v44 ^ (v50 - 0x5D0CFC5C59407721 - ((2 * v50) & 0x45E607474D7F11BELL))) - v51);
  STACK[0x1F70] = (((v49 - 0x5D0CFC5C59407721 - ((2 * v49) & 0x45E607474D7F11BELL)) ^ v44) - (v48 ^ v12 ^ v51)) ^ v42 ^ 0x26A0D826359CA535;
  v52 = v43 + (v42 ^ 0x26A0D826359CA535);
  STACK[0x22B8] = v52;
  STACK[0x22C0] = v44;
  v53 = (v45 - 0x5D0CFC5C59407721 - ((2 * v45) & 0x45E607474D7F11BELL)) ^ v44;
  v54 = v52 + 0x39D8353964922865;
  v55 = v47 + 0x39D8353964922865 + (v41 ^ 0xB1F3A33E9167160BLL);
  v56 = (STACK[0x1F90] ^ 0xCEC3484F02D11BA0) + 1;
  STACK[0x1D80] = v42 ^ 0xE51099E5FDD665FDLL;
  v57 = v53 + (v42 ^ 0xE51099E5FDD665FDLL);
  v58 = (v41 ^ 0x7243E2FD592DD6C3) + (v51 ^ (v48 - v33));
  STACK[0x17B0] = v14;
  STACK[0x1770] = v56;
  STACK[0x11C8] = v41;
  v59 = ((v57 ^ v14 ^ v56) - v58) ^ v41 ^ 0x7243E2FD592DD6C3 ^ ((v54 ^ v14 ^ v56) - v55) ^ (v41 & 0x1ECB891E586BAE58 ^ 0xC88090200422818 | (v41 ^ 0x7243E2FD592DD6C3) & 0x1ECB891E586BAE58);
  v60 = STACK[0x2270];
  LODWORD(v30) = *(STACK[0x2270] + (BYTE6(v28) ^ 0x59));
  v61 = v42 ^ 0xFBDB10FBA5BDCBA5 ^ ((v54 ^ v14 ^ v57) - (v55 ^ v56 ^ v58));
  HIDWORD(v62) = v30 ^ 0x11;
  LODWORD(v62) = v30 << 24;
  LODWORD(STACK[0x2280]) = HIWORD(v39) - ((2 * HIWORD(v39)) & 0x1FF8A);
  LODWORD(STACK[0x2250]) = (v28 >> 40) - ((2 * (v28 >> 40)) & 0x22);
  LODWORD(v42) = (v62 >> 31) ^ 0x3D ^ ((v62 >> 31) >> 2) & 9;
  v63 = STACK[0x2180];
  LODWORD(v30) = *(v60 + (BYTE4(STACK[0x2180]) ^ 0x59));
  HIDWORD(v62) = v30 ^ 0x11;
  LODWORD(v62) = v30 << 24;
  LODWORD(STACK[0x21A8]) = -127 * v42 - ((2 * v42) & 0x22);
  LODWORD(STACK[0x2198]) = (v63 >> 24) - ((2 * (v63 >> 24)) & 0x22);
  HIDWORD(v62) = (v62 >> 31) ^ 0x3D ^ ((v62 >> 31) >> 2) & 9;
  LODWORD(v62) = -2130706432 * HIDWORD(v62);
  LODWORD(STACK[0x2188]) = HIDWORD(v59) + (~(2 * HIDWORD(v59)) | 0xFFFFFFDD);
  v64 = STACK[0x2160];
  LODWORD(v42) = (*(STACK[0x2160] + ((v62 >> 30) ^ 0xB4)) ^ 0x11) - 77;
  LODWORD(STACK[0x2178]) = (v40 >> 24) - ((2 * (v40 >> 24)) & 0x22);
  v65 = STACK[0x2278];
  LODWORD(v58) = *(STACK[0x2278] + (BYTE4(v28) ^ 0xB0));
  LODWORD(STACK[0x2158]) = HIDWORD(v39) - ((2 * HIDWORD(v39)) & 0x1A);
  v66 = (v42 ^ 0xFFFFFFF5) + ((-2 * (v42 ^ 0xFFFFFFF5)) | 0xFFFFFFDD);
  v67 = -127 * (v58 ^ 0xFFFFFFBC) - ((2 * (v58 ^ 0xFFFFFFBC)) & 0xFFFFFFF7);
  LODWORD(v58) = ~(v62 >> 30) & 0x18 | (v62 >> 30) & (67 * ((STACK[0x2290] & 8) + ((2 - STACK[0x2288]) & 8)));
  STACK[0x1D98] = v59;
  LODWORD(v30) = *(v65 + (BYTE3(v59) ^ 0xB0)) ^ 0xFFFFFFBC;
  v68 = ((v40 >> 11) & 0x12 ^ 0x12) + ((v40 >> 11) & 0x12);
  v69 = STACK[0x2168];
  v70 = (v68 - ((2 * v68) & 0x20) + 17) ^ *(STACK[0x2168] + (((v40 >> 3) & 0xE0 | (v40 >> 11)) ^ 0x64)) ^ 0xFFFFFFFE;
  v71 = v70 - ((2 * v70 + 38) & 0x22) - 60;
  STACK[0xE40] = v71;
  LODWORD(v65) = *(v60 + (v71 ^ 0x48));
  HIDWORD(v62) = v65 ^ 0x11;
  LODWORD(v62) = v65 << 24;
  STACK[0x1E20] = v61;
  LODWORD(v65) = (v61 >> 8) - ((2 * (v61 >> 8)) & 0x22);
  LODWORD(v59) = (v62 >> 31) ^ 0x3D ^ ((v62 >> 31) >> 2) & 9;
  v72 = *(STACK[0x2268] + (((32 * (v40 & 7)) | (v40 >> 3)) ^ 0xD3)) ^ 0x7C;
  LODWORD(v60) = ((*(v64 + (((4 * (v28 & 0x3F)) | (v28 >> 6)) ^ 0xB4)) ^ 0x11) - 77) ^ 0xFFFFFFF5;
  v73 = *(v69 + (((v39 << (((v40 >> 3) & 5 ^ 1) + ((v40 >> 3) & 5 ^ 4))) | (v39 >> 3)) ^ 0x64)) ^ 0xFFFFFFFD;
  STACK[0x1238] = STACK[0x22E8] + 0x81D8C64CD43C943;
  STACK[0x1768] = STACK[0x22B8] + 0xFB4002893F729;
  STACK[0x2068] = HIBYTE(v28);
  LODWORD(STACK[0xE4C]) = HIBYTE(v28) - ((2 * HIBYTE(v28)) & 0x22) + 17;
  STACK[0x2060] = v40;
  STACK[0x2048] = HIBYTE(v40);
  LODWORD(STACK[0xDF4]) = HIBYTE(v40) + (~(2 * HIBYTE(v40)) | 0xFFFFFFDD) + 18;
  LODWORD(STACK[0xE34]) = LODWORD(STACK[0x2280]) - 59;
  LODWORD(STACK[0xE6C]) = LODWORD(STACK[0x2250]) + 17;
  LODWORD(v61) = *(STACK[0x1CD8] + (((v39 >> 38) & 0xFC | (v39 >> 46) & 3) ^ 0x2A));
  STACK[0x1150] = (LODWORD(STACK[0x21A8]) + 17);
  STACK[0x2058] = (v61 ^ 0xFFFFFFA9) + 95;
  LODWORD(STACK[0xE64]) = LODWORD(STACK[0x2198]) + 17;
  LODWORD(STACK[0xE54]) = LODWORD(STACK[0x2188]) + 18;
  LODWORD(STACK[0x117C]) = LODWORD(STACK[0x2178]) + 17;
  LODWORD(STACK[0x1090]) = LODWORD(STACK[0x2158]) - 115;
  STACK[0x1070] = (v66 + 113);
  STACK[0x1058] = (v67 - 5);
  LODWORD(STACK[0x1044]) = (v63 >> 16) - ((2 * (v63 >> 16)) & 0x22) + 17;
  v74 = v28 >> (v58 & 0xF8);
  LODWORD(STACK[0x2020]) = 2 * v74;
  STACK[0x2028] = v74;
  LODWORD(STACK[0xB30]) = v74 - ((2 * v74) & 0x58) - 84;
  LODWORD(STACK[0x10C4]) = (v39 >> 24) - ((2 * (v39 >> 24)) & 0x22) + 17;
  STACK[0xE70] = -127 * v30 - ((2 * v30) & 0xFFFFFFD6) + 107;
  STACK[0x2178] = v28;
  STACK[0x2030] = v28 >> 16;
  LODWORD(STACK[0xE3C]) = (v28 >> 16) + (~(2 * (v28 >> 16)) | 0xFFFFFFDD) - 110;
  LODWORD(STACK[0x1104]) = (v39 >> 8) - ((2 * (v39 >> 8)) & 0x22) + 17;
  LODWORD(STACK[0xE38]) = (v28 >> 8) + (~(2 * (v28 >> 8)) | 0x69) - 52;
  LODWORD(STACK[0xE58]) = v65 + 17;
  STACK[0x1048] = -127 * v59 - ((2 * v59) & 0x7Au) + 61;
  LODWORD(STACK[0xE50]) = STACK[0x1F70] - ((2 * STACK[0x1F70]) & 0x22) + 17;
  STACK[0x1038] = v72 + ((24 - 2 * v72) | 0xFFFFFFDD) - 59;
  STACK[0x1050] = v60 - ((2 * v60 - 66) & 0xFFFFFFD6) - 54;
  STACK[0x1060] = v73 - ((2 * v73 + 102) & 0xFFFFFFE7) - 90;
  STACK[0x1E98] = v39 ^ 0x71D24B5E3903EBA7;
  STACK[0x22B8] = STACK[0x1F80] ^ 0x3A7C5270B8797118;
  STACK[0x2140] = v39;
  STACK[0x2070] = HIBYTE(v39);
  STACK[0x2018] = HIBYTE(v63);
  v75 = STACK[0x1B80];
  LODWORD(v69) = *(STACK[0x1B80] + ((a5 + 1467) ^ 0xFFFFFFFFAA6F9C23) + 1435527281);
  LODWORD(v57) = (v69 + 334761197 + (~(2 * v69) | 0xFFFFFE25) + 1) ^ 0x13F40CED;
  v76 = v57 + 334761197 - ((2 * v57) & 0x27E819DA);
  LOBYTE(v58) = (v57 - 19 - ((2 * v57) & 0xDA)) ^ 0xFC;
  v77 = STACK[0x2170];
  *v77 = v58 ^ v69;
  v77[0x3DB8 % (((v76 & 0x14046375 ^ 0x10040065) + ((0x1FFFFFFF - v57) & 0x14046375)) & 0x280885F6u)] = v58;
  LODWORD(v57) = v76 ^ v75[1];
  v77[79] = v58;
  LOBYTE(v76) = v57 ^ 0xFC;
  v77[255] = v57 ^ 0xFC;
  LODWORD(v57) = v57 ^ v75[2];
  v77[158] = v76;
  LOBYTE(v76) = v57 ^ 0xFC;
  v77[334] = v57 ^ 0xFC;
  LODWORD(v57) = v75[3] ^ v57;
  v77[237] = v76;
  v77[41] = v57 ^ 0xFC;
  v78 = v75[4];
  LODWORD(v57) = (v78 + 334761197 - ((2 * v78) & 0x1DA)) ^ v57;
  LODWORD(v58) = v57 & 0x26E4BE29 ^ 0x26E4BE29;
  LOBYTE(v54) = v57 - 114 * (v58 + (v57 & 0x29)) + 66;
  LOBYTE(v54) = v54 - 19 - ((2 * v54) & 0xDA);
  v77[316] = v54 ^ 0xFC ^ v78;
  v77[120] = v54 ^ 0xFC;
  LOBYTE(v78) = v54 ^ v75[5];
  v77[23] = v54 ^ 0xFC;
  LOBYTE(v54) = v78 ^ 0xFC;
  v77[199] = v78 ^ 0xFC;
  LOBYTE(v78) = v78 ^ v75[6];
  v77[102] = v54;
  v77[79 * (6 - (v58 & 0x26E4BE28 ^ (v57 & 0x26E4BE28 | 0xD91B4110))) % 0x174] = v78 ^ 0xFC;
  LOBYTE(v69) = v78 ^ v75[7];
  v77[181] = v78 ^ 0xFC;
  LOBYTE(v30) = v69 ^ 0xFC;
  v77[357] = v69 ^ 0xFC;
  LOBYTE(v69) = v69 ^ v75[8];
  v77[260] = v30;
  LOBYTE(v30) = v69 ^ 0xFC;
  v77[64] = v69 ^ 0xFC;
  LOBYTE(v69) = v69 ^ v75[9];
  v77[339] = v30;
  LOBYTE(v30) = v69 ^ 0xFC;
  v77[143] = v69 ^ 0xFC;
  LOBYTE(v69) = v69 ^ v75[10];
  v77[46] = v30;
  v77[222] = v69 ^ 0xFC;
  v79 = *(STACK[0x1FD0] + (v75[11] ^ 0xB7)) ^ (v75[11] + (~(2 * v75[11]) | 0xFFFFFFDD) + 18) ^ 0xFFFFFFAF;
  LOBYTE(v69) = v69 ^ 0xF6;
  STACK[0x1BE8] = v79 - ((2 * v79 + 42) & 0x22) - 90;
  LOBYTE(v30) = (v79 - ((2 * v79 + 42) & 0x22) - 90) ^ v69;
  v77[125] = (v69 ^ 0x1B) - ((2 * (v69 ^ 0x1B)) & 0x22) + 17;
  LOBYTE(v57) = v30 ^ 0x1B;
  v77[301] = v30 ^ 0x1B;
  LOBYTE(v30) = v75[12] ^ v30;
  v77[204] = v57;
  v77[8] = v30 ^ 0x1B;
  LOBYTE(v57) = v75[13];
  LOBYTE(v30) = v30 ^ (v57 - 19 - ((2 * v57) & 0xDA)) ^ 0xE7;
  LOBYTE(v30) = v30 - 19 - ((2 * v30) & 0xDA);
  v77[283] = v30 ^ 0xFC ^ v57;
  v77[87] = v30 ^ 0xFC;
  LOBYTE(v57) = *(STACK[0x2278] + (v75[14] ^ 0xB0));
  LOBYTE(v57) = v30 ^ ((v57 ^ 0xBC) - (v57 << 7));
  v77[362] = v30 ^ 0xFC;
  v77[166] = v57 ^ 0xFC;
  LOBYTE(v63) = v57 ^ v75[15];
  v77[69] = v57 ^ 0xFC;
  v77[245] = v63 ^ 0xFC;
  return (*(v21 + 8 * a5))();
}

uint64_t sub_26AA1DF14(int a1, int a2)
{
  v8 = (v2 ^ 0x1F) * v6;
  v9 = *(v5 + (v8 - ((((v8 >> 2) * v7) >> 16) >> 5) * v4));
  v10 = *(v5 + (v8 + 15800 - (((((v8 + 15800) >> 2) * v7) >> 16) >> 5) * v4));
  v11 = ((a1 + 884) | 0x5D) ^ 0x6C ^ v10;
  LODWORD(STACK[0x22E8]) = v2;
  LOBYTE(v10) = v10 ^ v9;
  STACK[0x2290] = v11;
  v12 = (((a1 + 884) ^ 0xE46) + (v2 ^ 0x1F) + (a2 ^ 0xEC0BF312) + v11) * v6 - 28203;
  *(v5 + v12 - v12 / 0x174 * v4) = v10 - ((2 * v10) & 0x22) + 17;
  LODWORD(STACK[0x1B90]) = v10;
  return (*(v3 + 8 * ((1568 * (v2 != 31)) ^ a1)))();
}

uint64_t sub_26AA1DFFC(uint64_t a1, int a2)
{
  v8 = STACK[0x22E8];
  v9 = (((v2 - 8679) & 0x2FFD) - 3886) * (30 - LODWORD(STACK[0x22E8]));
  v10 = *(v5 + (v9 - ((((v9 >> 2) * v7) >> 16) >> 5) * v4));
  v11 = (LODWORD(STACK[0x1B90]) + 334761197 - ((2 * LODWORD(STACK[0x1B90])) & 0x1DA)) ^ a2;
  LOBYTE(v10) = *(STACK[0x2258] + (v10 ^ 0xD7)) ^ ((v10 ^ 0x99) + (v10 ^ 0xFA) - ((2 * ((v10 ^ 0x99) + (v10 ^ 0xFA))) & 0x22) + 17) ^ 0x4A;
  v12 = *(v5 + (v9 + 15800 - (((((v9 + 15800) >> 2) * v7) >> 16) >> 5) * v4));
  STACK[0x2288] = v12 ^ 0x11;
  LOBYTE(v12) = (v12 ^ 0x11) - v11 + ((v10 - ((2 * v10 + 42) & 0x22) - 90) ^ v12);
  *(v5 + ((30 - v8) * v6 - (((2819 * ((30 - v8) * v6)) >> 16) >> 4) * v4)) = v12 - ((2 * v12) & 0x22) + 17;
  return (*(v3 + 8 * (v2 ^ (2383 * (v8 < 0x1E)))))();
}

uint64_t sub_26AA1E144@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1CA0]) = 0;
  v8 = STACK[0x22E8];
  v9 = (956558245 - v8 - ((v1 - 280) & (64 - 2 * (v8 + 2))) + 32) ^ (v1 + 956557889);
  v10 = v9 - 1;
  v11 = ((-5211 - v8 - ((v1 - 280) & (64 - 2 * (v8 + 2))) + 32) ^ (v1 - 5567)) * v6;
  STACK[0x1E98] = 0x71D24B5E3903EBA7 - (LODWORD(STACK[0x22E8]) + 2) - ((v1 - 280) & (64 - 2 * (LODWORD(STACK[0x22E8]) + 2))) + 32;
  v12 = *(v5 + v9 * v6 - 79 - (v9 * v6 - 79) / 0x174u * v4);
  v13 = ((((v9 - 1) & 0x605F) + ((((956558245 - v8 - ((v1 - 280) & (64 - 2 * (v8 + 2))) + 32) ^ 0x1458) + 1) & 0x605F)) & 0x80EF) * (v9 + 199);
  v14 = *(v5 + v13 - v13 / 0x174 * v4);
  v15 = *(v5 + (v11 + 15721 - (((((v11 + 15721) >> 2) * v7) >> 16) >> 5) * v4));
  LODWORD(STACK[0x117C]) = v15 ^ v12 ^ 0x11;
  STACK[0x11B0] = v15;
  STACK[0x2280] = v15 ^ 0x11;
  v16 = (v2 ^ a1) - (v15 ^ 0x11) + v10;
  LODWORD(STACK[0x11A8]) = v14;
  LOBYTE(v10) = *(STACK[0x2160] + ((((v14 ^ v12) >> 6) | (4 * (v14 ^ v12))) ^ 0xB4));
  *(v5 + v16 * v6 - v16 * v6 / 0x174u * v4) = (((v10 ^ 0x11) - 77) ^ 0xF5) - ((2 * (((v10 ^ 0x11) - 77) ^ 0xF5) + 62) & 0x22) + 112;
  return (*(v3 + 8 * (v1 ^ (31 * (v8 != 29)))))(17);
}

uint64_t sub_26AA1E2C0@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v9 = STACK[0x22E8];
  v10 = (((v2 + 979) & 0xFFFD) - 3886) * (28 - LODWORD(STACK[0x22E8]));
  v11 = *(v6 + (v10 + 15800) % (v2 ^ 0xAD8u));
  v12 = v11 ^ a1;
  v13 = ((((((655881353 * v12) ^ (28 - v9)) & 0x2717F489 ^ 0x2717F489) + (((655881353 * v12) ^ (28 - v9)) & 0x2717F489)) * v12) ^ (655881353 * v12) ^ (28 - v9)) * v7;
  v14 = v13 - v13 / 0x174 * v5;
  v15 = v3 ^ 0x11 ^ a2;
  v16 = v11 ^ *(v6 + (v10 - ((((v10 >> 2) * v8) >> 16) >> 5) * v5));
  STACK[0x2250] = v12;
  *(v6 + v14) = v12 - v15 + v16 - ((2 * (v12 - v15 + v16)) & 0x22) + 17;
  v17 = *(v4 + 8 * ((1322 * (v9 + (v14 & 1) + !(v14 & 1) + 3 < 0x20)) ^ v2));
  LODWORD(STACK[0x1CA0]) = 1;
  return v17();
}

uint64_t sub_26AA1E3E4()
{
  v9 = v1 ^ 0x913;
  v10 = ((v1 ^ 0x913) + 781696296) & 0xD16842FE;
  v11 = v3 ^ v2;
  v12 = *(v6 + (((((v9 - 17112) & 0x42FE ^ 0x2F9) - v0 - 15834 - ((2 * (((v9 - 17112) & 0x42FE ^ 0x2F9) - v0)) & 0xC)) ^ 0xC226) * v7 + 15800 - (((((((((v9 - 17112) & 0x42FE ^ 0x2F9) - v0 - 15834 - ((2 * (((v9 - 17112) & 0x42FE ^ 0x2F9) - v0)) & 0xC)) ^ 0xC226) * v7 + 15800) >> 2) * v8) >> 16) >> 5) * v5));
  v13 = -1302908449 * (v12 ^ 0x11);
  v14 = v12 ^ *(v6 + (((((v9 - 17112) & 0x42FE ^ 0x2F9) - v0 - 15834 - ((2 * (((v9 - 17112) & 0x42FE ^ 0x2F9) - v0)) & 0xC)) ^ 0xC226) * v7) % (v9 - 331));
  STACK[0x22B8] = (v10 ^ 0x2F9) - v0 - 0x52D0D697E37D3DDALL - ((2 * ((v10 ^ 0x2F9) - v0)) & 0xC);
  v15 = (((v13 ^ (-1302908449 * v11)) - ((2 * (v13 ^ (-1302908449 * v11))) & 0x3905844C) + 478331430) ^ ((v10 ^ 0x2F9) - v0 + 478331430 - ((2 * ((v10 ^ 0x2F9) - v0)) & 0xC))) * v7;
  STACK[0x1170] = v14 ^ 0x11u;
  *(v6 + v15 - v15 / 0x174 * v5) = v14 ^ 0x11;
  v16 = *(v4 + 8 * (v9 ^ (89 * (v0 == 31))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v16();
}

uint64_t sub_26AA1E50C@<X0>(char a1@<W4>, int a2@<W8>)
{
  v10 = v4 ^ v3;
  v11 = *(v7 + (((a2 + 3223) ^ 0xF32) * (30 - v2) - (((((((a2 + 3223) ^ 0xF32) * (30 - v2)) >> 2) * v9) >> 16) >> 5) * v6));
  v12 = *(v7 + (((a2 ^ 0x22E) + 30 - v2) * v8 - (((((((a2 ^ 0x22E) + 30 - v2) * v8) >> 2) * v9) >> 16) >> 5) * v6));
  STACK[0x10C8] = v12;
  *(v7 + (30 - v2) * v8 - (30 - v2) * v8 / 0x174 * v6) = v10 + (v12 ^ v11) - (v12 ^ a1) - ((2 * (v10 + (v12 ^ v11) - (v12 ^ a1))) & 0x22) + 17;
  v13 = *(v5 + 8 * (a2 ^ (1847 * (v2 < 0x1E))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v13();
}

uint64_t sub_26AA1E5D8@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v11 = a2 ^ 0x380;
  v12 = 13 * (a2 ^ 0x3D7) - v2 - 3936;
  v13 = v5 ^ v4;
  v14 = (7 * (a2 ^ 0x3DF) + 13 * (a2 ^ 0x3D7) - v2 - 3936) * v9 - 26217;
  v15 = *(v8 + (v14 - ((((v14 >> 2) * v10) >> 16) >> 5) * v7));
  v16 = v15 ^ *(v8 + ((13 * (a2 ^ 0x3D7) - v2 - 3936) * v9 - ((((((13 * (a2 ^ 0x3D7) - v2 - 3936) * v9) >> 2) * v10) >> 16) >> 5) * v7));
  STACK[0x21A8] = v15 ^ a1;
  LODWORD(v15) = (v12 + 144818733 * (v13 - (v15 ^ a1))) * v9;
  *(v8 + v15 - v15 / 0x174 * v7) = v16 - ((2 * v16) & 0x22) + 17;
  v17 = *(v6 + 8 * (v11 ^ (1141 * (!(v3 & 1) + (v3 & 1u) + v2 < 0x1E))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v17();
}

uint64_t sub_26AA1E6C8@<X0>(char a1@<W4>, char a2@<W8>)
{
  v10 = *(v6 + ((29 - v7) * v8 - (((2819 * ((29 - v7) * v8)) >> 16) >> 4) * v5));
  HIDWORD(v11) = v10 ^ 0x11111111;
  LODWORD(v11) = v10 << 24;
  LOBYTE(v10) = ((*(STACK[0x2160] + ((((v2 - 119) | 0x65) + 55) ^ (v11 >> 30))) ^ a1) - 77) ^ 0xF5;
  STACK[0x2198] = *(v6 + ((29 - v7) * v8 + 15800 - (((45101 * ((29 - v7) * v8 + 15800)) >> 16) >> 8) * v5));
  *(v6 + (29 - v7) * v8 - (29 - v7) * v8 / 0x174u * v5) = (a2 ^ v3 ^ (v10 + 95)) - ((2 * (a2 ^ v3 ^ (v10 + 95))) & 0x22) + 17;
  v12 = *(v4 + 8 * (v2 ^ (77 * (v7 == 29))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v12();
}

uint64_t sub_26AA1E7B4()
{
  v9 = ((v2 + 1059688450) & 0xC0D66FFD ^ 0xFFFFFFFFFFFFF082) + v1;
  v10 = (((v2 - 28670) & 0x6FFD ^ 0xF082) + v1) * ((v2 - 1348) ^ 0xA76);
  v11 = *(v5 + (v10 - ((((v10 >> 2) * v8) >> 16) >> 5) * v4));
  v12 = *(v5 + (v10 + 15800 - (((((v10 + 15800) >> 2) * v8) >> 16) >> 5) * v4));
  STACK[0x2188] = v12 ^ 0x11;
  v13 = v12 ^ 0x11 ^ v9 ^ v0;
  STACK[0x22E0] = v13 ^ 0xF8F3AB1A21867BB1;
  STACK[0x1030] = v12;
  *(v5 + (v13 * v7 - (((((v13 * v7) >> 2) * v8) >> 16) >> 5) * v4)) = v12 ^ v11 ^ 0x11;
  v14 = *(v3 + 8 * ((v2 - 1348) ^ (82 * (v6 == 28))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v14();
}

uint64_t sub_26AA1E8B0@<X0>(char a1@<W8>)
{
  v11 = (((((27 - v8) & 4 | 0xF79) ^ ((v2 ^ 0x2FB) + 1723)) + ((27 - v8) & 4)) ^ ((v1 & 0x4B ^ 0x4B) + (v1 & 0x4B))) * (27 - v8);
  LOBYTE(v11) = *(v7 + (v11 - ((((v11 >> 2) * v10) >> 16) >> 5) * v6));
  STACK[0x1BE8] = *(v7 + ((27 - v8) * v9 + 15800 - ((((((27 - v8) * v9 + 15800) >> 2) * v10) >> 16) >> 5) * v6));
  *(v7 + (27 - v8) * v9 - (27 - v8) * v9 / 0x174 * v6) = v11 ^ v4 ^ (a1 - ((v3 << (((v2 ^ 0xFB) + 107) ^ 0x2C)) & 0x22) + 112);
  v12 = *(v5 + 8 * (v2 ^ 0x2FB | (301 * (v8 < 0x1B))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v12();
}

uint64_t sub_26AA1E994()
{
  v9 = v2 - 1;
  v10 = *(v5 + (v9 * v6 + 15800 - (((((v9 * v6 + 15800) >> 2) * v8) >> 16) >> 5) * v4));
  v11 = *(STACK[0x2270] + (*(v5 + (v9 * v6 - (((((v9 * v6) >> 2) * v8) >> 16) >> 5) * v4)) ^ (65 * (v1 ^ 0x10)) ^ 0x1B ^ v10 ^ 0x3Fu));
  v12 = ((2 * (v10 ^ 0x11 ^ v9)) & 0x16CE367F5FDBDBBALL) + (v10 ^ 0x11 ^ v9 ^ 0x4B671B3FAFEDEDDDLL);
  STACK[0x1818] = v12 - 0xB312A802090;
  HIDWORD(v13) = v11 ^ 0x11;
  LODWORD(v13) = v11 << 24;
  LODWORD(v10) = (v13 >> 31) ^ 0x3D ^ ((v13 >> 31) >> 2) & 9;
  *(v5 + (v0 ^ (v12 + 1343361571) ^ 0x11) * v6 - (v0 ^ (v12 + 1343361571) ^ 0x11u) * v6 / 0x174 * v4) = -127 * v10 - ((2 * v10) & 0x22) + 17;
  v14 = *(v3 + 8 * (v1 | (2 * (v7 == 1788921181))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v14();
}

uint64_t sub_26AA1EADC@<X0>(int a1@<W8>)
{
  v8 = v2 ^ v1;
  v9 = *(v5 + ((25 - v6) * v7) % ((a1 ^ 0xE1B) - 3593));
  v10 = *(v5 + ((25 - v6) * v7 + 15800) % ((a1 + 2630) ^ 0xAD8u));
  HIDWORD(v11) = v10 ^ 1;
  LODWORD(v11) = (v10 ^ 0x10) << 24;
  STACK[0x1120] = v10;
  v12 = *(STACK[0x2268] + ((v11 >> 27) ^ 0xD3)) ^ 0x7C;
  v13 = v12 - ((2 * v12 + 38) & 0x22) - 60;
  LODWORD(STACK[0xDB4]) = v13;
  *(v5 + (25 - v6 - (v10 ^ 0x11) + (v13 ^ 0x11)) * v7 - (25 - v6 - (v10 ^ 0x11) + (v13 ^ 0x11)) * v7 / 0x174 * v4) = v8 - (v10 ^ 0x11) + (v10 ^ v9) - ((2 * (v8 - (v10 ^ 0x11) + (v10 ^ v9))) & 0x22) + 17;
  v14 = *(v3 + 8 * (a1 ^ (1393 * (v6 < 0x19))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v14();
}

uint64_t sub_26AA1EBF4()
{
  v9 = v2 - 1;
  v10 = *(v6 + (v9 * v7 + 15800) % (((v1 - 1133148397) & 0x438A7D6F ^ 0x115B) & 0x1FFFFu));
  v11 = v3 ^ v0;
  v12 = v9 - (v10 ^ 0x11);
  v13 = v10 ^ *(v6 + (v9 * v7) % (793 * (v1 ^ 0xBA9) - 3593)) ^ 0x11;
  STACK[0x22B8] = v12 + v11 - 0x52D0D697E37D3DDALL - ((2 * (v12 + v11)) & 0x5A5E52D03905844CLL);
  LODWORD(v9) = ((v12 + v11 + 478331430 - ((2 * (v12 + v11)) & 0x3905844C)) ^ 0x1C82C226) * v7;
  *(v6 + v9 - v9 / 0x174 * v5) = v13;
  v14 = *(v4 + 8 * (v1 ^ (2 * (v8 != 1788921179))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v14();
}

uint64_t sub_26AA1ED00@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = ((23 - v6) * v8 - (((222701 * (23 - v6)) >> 16) >> 4) * v4);
  v10 = *(v5 + v9);
  v11 = ((((a2 - 12466) & 0x2FFF) + 7598) ^ ((a2 + 82) | 0x12)) + (23 - v6) * v8;
  LODWORD(STACK[0x1164]) = *(v5 + (v11 - v11 / 0x174u * v4));
  *(v5 + v9) = v7 ^ v10 ^ (v2 - ((2 * v2) & 0x22) + 17);
  v12 = *(v3 + 8 * (a2 ^ (147 * (v6 < 0x17))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v12(a1, 22551);
}

uint64_t sub_26AA1EDCC(uint64_t a1, int a2)
{
  LODWORD(STACK[0x1A74]) = 0;
  v10 = *(v7 + ((((v3 - 12566) & 0x2FFF) - 3886) * (v4 - 1) + 15800 - ((((((((v3 - 12566) & 0x2FFF) - 3886) * (v4 - 1) + 15800) >> 2) * a2) >> 16) >> 5) * v6));
  HIDWORD(v11) = v10 ^ 0x11;
  LODWORD(v11) = v10 << 24;
  v12 = ((*(STACK[0x1CD8] + ((v11 >> 30) ^ 0x2ALL)) ^ 0xA9) + 95) ^ *(v7 + ((v4 - 1) * v8 - ((((((v4 - 1) * v8) >> 2) * a2) >> 16) >> 5) * v6));
  STACK[0x1810] = 0x48D71DA3C0259C73 * (v10 ^ 0x11) + 0x78BFC184265A2;
  v13 = (v4 - 1071276941 * (v2 ^ 0x11) - -1071276941 * (v10 ^ 0x11)) * v8 - 79;
  *(v7 + v13 - v13 / 0x174 * v6) = v12;
  v14 = *(v5 + 8 * (v3 ^ (11 * (v9 == 1788921177))));
  LODWORD(STACK[0x1CA0]) = 1;
  return v14(a1);
}

uint64_t sub_26AA1EF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = v9 - 3885;
  v19 = v9 - 1415;
  v20 = v16 ^ v8;
  v21 = (((21 - v15) ^ (v15 + 1002)) & 0x2DF & ((v7 & 0x394F ^ v18 ^ 0xC29) + (v7 & 0x394F))) * (21 - v15);
  v22 = *(v14 + (v21 - ((((v21 >> 2) * v11) >> 16) >> 5) * v13));
  v23 = *(v14 + ((21 - v15) * v17 + 15800 - ((((((21 - v15) * v17 + 15800) >> 2) * v11) >> 16) >> 5) * v13));
  v24 = (21 - v15 - (((v19 - v15 - 2967) ^ (v15 + 10)) & 0x16)) * v17 + 17538;
  v25 = v24 - v24 / 0x174u * v13;
  v26 = v23 ^ 0x11;
  v27 = (21 - v15 + 2051652815 * (v23 ^ 0x11) - 2051652815 * (*(v14 + v25) ^ 0x11)) * v17;
  LODWORD(v23) = (v23 ^ v22) + v20 - (v23 ^ 0x11);
  *(v14 + v27 - v27 / 0x174 * v13) = v23 + (~(2 * v23) | 0xDD) + 18;
  v28 = (a5 << 16) ^ a3 ^ ((LODWORD(STACK[0x1164]) ^ 0x11u) << 40) ^ (a4 << 32) ^ ((a7 << 24) | (v10 << 48) | (v26 << 56) | ((STACK[0x1BE8] ^ 0x11) << 8) | STACK[0x2188]);
  v29 = *(v12 + 8 * (v18 ^ (1654 * (v15 < 0x15))));
  LODWORD(STACK[0x1CA0]) = 1;
  LODWORD(STACK[0x1A74]) = 1;
  return v29(v19 | 0xA0u, v20 ^ 0x13F40CED ^ v23, v28);
}

uint64_t sub_26AA1F164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v11 = ((v8 & 0xD55976CC31F0F40ALL ^ 0xD55976CC31F0F40ALL) + (v8 & 0xD55976CC31F0F40ALL) - ((2 * ((v8 & 0xD55976CC31F0F40ALL ^ 0xD55976CC31F0F40ALL) + (v8 & 0xD55976CC31F0F40ALL))) & 0x9AA05A38C4C2701CLL) - 0x32AFD2C29998C6B2) ^ a3;
  v12 = ((v8 & 0x31F0F40A ^ 0x31F0F40A) + (v8 & 0x31F0F40A) - ((2 * ((v8 & 0x31F0F40A ^ 0x31F0F40A) + (v8 & 0x31F0F40A))) & 0xC4C2701C) + 1718040910) ^ a3 ^ 0x5797CD44;
  v13 = a6 ^ (a6 << 23) ^ ((a6 ^ (a6 << 23)) >> 17) ^ v11 ^ ((v11 ^ 0x18095BF15797CD44) >> 26);
  v14 = v13 ^ 0x94C2244F681E9D76 ^ v11 ^ 0x18095BF15797CD44 ^ ((v11 ^ 0x18095BF15797CD44) << 23) ^ ((((v11 ^ 0x18095BF15797CD44 ^ ((v11 ^ 0x18095BF15797CD44) << 23)) >> 17) ^ (v13 >> 26) ^ 0x60256FC55) - 0x73348041C076AFCELL - ((2 * (((v11 ^ 0x18095BF15797CD44 ^ ((v11 ^ 0x18095BF15797CD44) << 23)) >> 17) ^ (v13 >> 26) ^ 0x60256FC55)) & 0xFF7C7F12A064));
  STACK[0x1228] = v13 ^ 0x94C2244F681E9D76;
  v15 = (v14 >> 26) ^ (((((v13 << 23) ^ 0xF8ABCBE6A2000000) - 0x73348041C076AFCELL - ((2 * ((v13 << 23) ^ 0xF8ABCBE6A2000000)) & 0x1996FF7C7F000000)) ^ v13 ^ 0x94C2244F681E9D76) >> 17);
  v16 = a8 ^ (a8 >> 26) ^ v8 ^ (v8 << 23) ^ ((v8 ^ (v8 << 23)) >> 17);
  v17 = a8 ^ (a8 << 23) ^ ((a8 ^ (a8 << 23)) >> 17) ^ v16 ^ (v16 >> 26);
  v18 = v16 ^ (v16 << 23) ^ ((v16 ^ (v16 << 23)) >> 17) ^ v17 ^ (v17 >> 26);
  v19 = v14 ^ 0xA4FBB33E ^ (((v13 << 23) ^ 0xA2000000) + 1065963570 - ((2 * ((v13 << 23) ^ 0xA2000000)) & 0x7F000000)) ^ v13 ^ 0x681E9D76 ^ (v15 - ((2 * v15) & 0x49F7667C) - 1527008450);
  STACK[0x2050] = v14 ^ 0x97537B18A4FBB33ELL;
  v20 = ((v14 << 23) - 0x68AC84E75B044CC2 - ((v14 << 24) & 0x2EA6F63149000000)) ^ v14 ^ 0x97537B18A4FBB33ELL;
  v21 = ((v18 >> 25) & 0x7AFFFFFD6ELL) + ((v18 >> 26) ^ 0x7FDBA9FD7FFFFEB7);
  STACK[0x1E58] = v21;
  v22 = v21 - 0x7FDBA9FD7FFFFEB7;
  v23 = v22 ^ v18 ^ v20 ^ (v20 >> ((((a8 ^ (a8 >> 26) ^ v8 ^ ((v8 ^ (v8 << 23)) >> 17)) & 0x65 ^ 0x65) + ((a8 ^ (a8 >> 26) ^ v8 ^ ((v8 ^ (v8 << 23)) >> 17)) & 0x65)) ^ 0x74));
  v24 = v18 ^ 0x313CB7B0FD2EE45FLL;
  v25 = ((v18 << 23) + 0x313CB7B0FD2EE45FLL - ((v18 << 24) & 0x62796F61FA000000)) ^ v18 ^ 0x313CB7B0FD2EE45FLL;
  STACK[0x1828] = v25;
  v26 = v25 ^ (v25 >> 17);
  v27 = v23 ^ 0x8F1D47B06B1BCEE3 ^ v26 ^ ((v23 >> 26) - 0x70E2B84F94E4311DLL - ((v23 >> 25) & 0x60D6379DC6));
  LODWORD(v25) = v27 ^ ((((v23 << 23) - 0x70E2B84F94E4311DLL) ^ v23 ^ 0x8F1D47B06B1BCEE3) >> 17) ^ (v27 >> 26);
  STACK[0x2158] = v23 ^ 0x8F1D47B06B1BCEE3;
  v28 = v19 ^ v18 ^ (((v25 - ((2 * v25) & 0xC7) - 29) ^ v23 ^ 0xE3) + v27);
  v29 = -v28 & 7;
  LODWORD(STACK[0x2250]) = v29;
  if ((v28 & 7) != 0)
  {
    v30 = -1;
  }

  else
  {
    v30 = 0;
  }

  v31 = ((v30 << v29) >> 3) | (32 * (v30 << v29));
  v32 = *(STACK[0x2168] + (v31 ^ 0x64)) ^ 0xFFFFFFFD;
  LODWORD(STACK[0x2188]) = v28 & 7;
  if ((v28 & 7) != 0)
  {
    v33 = -80 - v32;
  }

  else
  {
    v33 = 100;
  }

  LODWORD(STACK[0x11AC]) = v10 + ((LODWORD(STACK[0x22E8]) != 31) ^ 0x7FFB7FBF);
  v34 = 1304466429 * (v14 - v17) + ((*(STACK[0x1CD8] + (((4 * ((v27 + v23) & 0x3F)) | ((v27 + v23) >> 6)) ^ 0x2A)) ^ 0xA9) + 95);
  STACK[0x1F90] = v24;
  v35 = v22 ^ v24 ^ ((v20 ^ (v20 >> 17)) + 0x313CB7B0FD2EE45FLL - ((2 * (v20 ^ (v20 >> 17))) & 0x62796F61FA5DC8BELL));
  STACK[0x1790] = v35 >> 26;
  v36 = ((2 * (v35 ^ v26 ^ (v35 >> 26))) & 0x7BBDDBCBB75FFBEELL) + (v35 ^ v26 ^ (v35 >> 26) ^ 0xBDDEEDE5DBAFFDF7);
  v37 = (v36 + 0x4221121A24500209) ^ ((v36 + 0x4221121A24500209) >> 26);
  v38 = v35 ^ (v35 << 23) ^ ((v35 ^ (v35 << 23)) >> 17) ^ v37;
  STACK[0x1840] = v38;
  v39 = v38 + v36 + 0x4221121A24500209 - 0x73348041C076AFCELL - ((2 * (v38 + v36 + 0x4221121A24500209)) & 0x1996FF7C7F12A064);
  v40 = v14 + (v13 ^ 0x5797CD44);
  LODWORD(STACK[0x21A8]) = v40;
  v40 *= 2;
  LODWORD(STACK[0x2198]) = v40;
  LODWORD(STACK[0x1E08]) = v16 + a8;
  v41 = v16 + a8 + v16 + 2 * v17 + v18;
  LODWORD(v38) = (v40 + v12 + v19) ^ v41 ^ (v23 + v18);
  v42 = 1416481883 * (v40 + v12 + v19) + 330766563;
  LODWORD(STACK[0x102C]) = v42;
  v43 = v42 - 1416481883 * v41 + (v35 + v18);
  STACK[0x1E40] = v36;
  STACK[0x2000] = v17;
  v44 = 1086773557 * (v17 - v14) + (v35 + v36 + 9);
  v45 = (v39 ^ 0x32) + 1246214463 * (v18 - v19);
  LODWORD(v35) = (v37 & 7 ^ 7) + (v37 & 7);
  v46 = v43 - 330766563;
  v47 = 16843009 * ((v43 + 29) & 0xFE) - 692598888 - ((33686018 * ((v43 + 29) & 0xFE)) & 0xAD6F8F30);
  LODWORD(STACK[0x1FC8]) = 653899960 * (v38 & 0xFE) + 1510438090 - 670742969 * ((v43 - 330766563) & 0xFE);
  LODWORD(STACK[0x1F98]) = v38;
  v48 = (v38 + 926693100) | v34;
  LODWORD(STACK[0x1FC0]) = v48;
  v49 = (((v38 - 20) | v34) ^ (((v38 + 14060) | v34) >> 8) ^ BYTE2(v48)) ^ HIBYTE(v48);
  v50 = 16843009 * (((v44 | (v43 + 595926537)) >> 16) ^ ((v44 | (v43 + 595926537)) >> 24) ^ ((v44 | (v43 + 9)) ^ ((v44 | (v43 + 7689)) >> 8)) ^ 0x81);
  LODWORD(STACK[0x2290]) = v50;
  v51 = 16843009 * (v49 ^ 0x42);
  LODWORD(STACK[0x1E18]) = v51;
  v52 = v51 ^ 0x42424242;
  LODWORD(STACK[0x1F58]) = v51 ^ 0x42424242;
  LODWORD(STACK[0x2280]) = (-1864232831 * (v51 ^ 0x42424242)) ^ ((v50 ^ 0x81818181) * ((v49 & 0xFFFFFF81 ^ 0x90E21081) + (v49 & 0xFFFFFF81))) ^ 0x5A0774CA;
  LODWORD(STACK[0x1AA8]) = v47;
  LODWORD(STACK[0x1F78]) = v47 >> 1;
  LODWORD(STACK[0x1FB0]) = ((v47 >> 1) ^ 0x6B5BE3CC) - 692598888 - ((2 * ((v47 >> 1) ^ 0x6B5BE3CC)) & 0xAD6F8F30);
  v53 = 16843009 * (v38 & 0xFE);
  v54 = (v32 - 77);
  v55 = (956301312 * v54) & v34;
  LODWORD(STACK[0xE2C]) = v33;
  v56 = v38 & (v33 - 100) ^ (16843009 * v54);
  STACK[0x1BD8] = v55;
  LODWORD(v55) = v55 ^ (16843009 * v54) ^ v38;
  v57 = v53;
  LODWORD(STACK[0x1930]) = v53;
  v58 = v53 & 0xFE | v38 & 1;
  LODWORD(STACK[0x1FA8]) = v58;
  v59 = v38;
  LODWORD(STACK[0x1F50]) = v38;
  LODWORD(STACK[0x1E38]) = v55;
  LODWORD(STACK[0x1994]) = v55 ^ v58 ^ ~((v58 ^ v38) << 8);
  STACK[0x1F60] = (v23 & 7 ^ 7) + (v23 & 7);
  v61 = v45 & v35;
  v60 = (v45 & v35) == 0;
  LODWORD(STACK[0x2288]) = -v45;
  v62 = -v45 & 7;
  if ((v45 & v35) != 0)
  {
    v63 = 255;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63 << (-v45 & 7);
  v65 = (v31 & 0xF8 ^ 0xFFFFFF60 | (v31 ^ 0x9F) & 0xF8) & v45;
  v66 = v64;
  if (v60)
  {
    v67 = 0;
  }

  else
  {
    v67 = ~v64;
  }

  v68 = v46;
  LODWORD(STACK[0x1434]) = v46;
  LODWORD(STACK[0x1F88]) = 16843009 * v64;
  v69 = -1999335889 * (v65 ^ v61);
  STACK[0x1B48] = v69;
  v70 = ((16843009 * v66) ^ (v46 & v67)) - v69;
  v71 = (v45 + LODWORD(STACK[0x2250]));
  LODWORD(STACK[0x1738]) = v70;
  LODWORD(STACK[0xFE4]) = v65;
  LODWORD(STACK[0x1BF8]) = v65 + v61;
  v72 = (v70 - 1999335889 * v45) ^ (((v65 + v61) ^ v45) >> 4);
  v73 = LODWORD(STACK[0x2188]) - 171849367 * v34;
  v74 = STACK[0xB10];
  v75 = *(STACK[0xB10] + (STACK[0x2018] ^ 0x63)) ^ 0x63;
  v76 = STACK[0x1FD0];
  v77 = (*(STACK[0x1FD0] + ((v75 ^ (2 * v75 * v75)) ^ 0x8ALL)) ^ ((v75 ^ (2 * v75 * v75)) - ((2 * (v75 ^ (2 * v75 * v75))) & 0x22) + 17) ^ 0xFFFFFF92) - 107;
  v78 = v47 ^ 0xFFFFFF98;
  v79 = STACK[0x2268];
  v80 = v77 ^ ((((*(STACK[0x2268] + (((((v47 ^ 0x98) & v77) >> 3) | (32 * ((v47 ^ 0x98) & v77))) ^ 0xD3)) ^ 0x7C) - 77) & 0xFE) >> 1);
  LODWORD(STACK[0x2018]) = (1224736768 * v66) & v44;
  v81 = (v73 + 171849367 * v44);
  LODWORD(STACK[0x1928]) = v56;
  v82 = v56;
  STACK[0xF98] = v71;
  LODWORD(STACK[0xFCC]) = v28;
  v83 = (((v56 & v80) >> (-v45 & 7)) | (v80 << (v73 - 105 * v44))) ^ v52;
  v84 = v71 - v28 - 653314079 - ((2 * (v71 - v28)) & 0xB21E6FC2);
  v85 = *(v76 + (v83 ^ 0xB7)) ^ v83 ^ 0x30BE;
  v86 = *(v74 + (STACK[0x2068] ^ 0xC)) ^ (2 * (*(v74 + (STACK[0x2068] ^ 0xC)) ^ 0x63) * (*(v74 + (STACK[0x2068] ^ 0xC)) ^ 0x63)) ^ 0x14;
  v87 = STACK[0x2168];
  v88 = ((*(STACK[0x2168] + (((v86 >> 3) | (32 * v86)) ^ 0x64)) ^ 0xFD) - 77) ^ 0xFA;
  LODWORD(STACK[0x1D78]) = v68 ^ v57;
  LODWORD(v76) = v68 ^ v57 ^ v59;
  v89 = v88 ^ (((v68 ^ v57 ^ v59) & v88 & 0xFE) >> 1);
  LODWORD(STACK[0x1720]) = v84;
  v90 = v84 ^ 0xE1u;
  v91 = (v72 & v89) >> (v84 ^ 0xE1u);
  STACK[0x1F48] = v91;
  LODWORD(STACK[0x2250]) = (v85 + 149) ^ (v89 << v61) ^ v91;
  v92 = *(v74 + (STACK[0x1150] ^ 0x18));
  v93 = v92 ^ 0xFFFFFF9A ^ (2 * (v92 ^ 0x63) * (v92 ^ 0x63) - ((4 * (v92 ^ 0x63) * (v92 ^ 0x63)) & 0x20) + 17);
  v94 = v93 ^ ((v78 & v93 & 0xFE) >> 1);
  v95 = STACK[0x2180];
  v96 = STACK[0xB08];
  LODWORD(v91) = (HIWORD(v95) - ((2 * HIWORD(v95)) & 0x22) + 17) ^ 0xFFFFFFA1 ^ *(STACK[0xB08] + (BYTE6(v95) ^ 0xF4));
  LOBYTE(v73) = ((*(v79 + ((((v76 & ((BYTE6(v95) - ((2 * BYTE6(v95)) & 0x22) + 17) ^ 0xA1 ^ *(STACK[0xB08] + (BYTE6(v95) ^ 0xF4)))) >> (((v73 & 4 ^ 4) + (v73 & 4)) | 4)) | (16 * (v76 & v91))) & 0xEFLL ^ 0xD3)) ^ 0x7C) - 77) ^ v91;
  v97 = STACK[0x2290];
  v98 = STACK[0x2150];
  LOBYTE(v85) = (BYTE5(v95) + (~(2 * BYTE5(v95)) | 0xDD) + 18) ^ 0x72 ^ *(STACK[0x2150] + 0x3206A64668D47D6FLL * ((v39 & 0x67CA96D7F9A5E44ELL ^ 0x63008041C024A44CLL) + (v39 & 0x67CA96D7F9A5E44ELL ^ 0x4CA169639814002)) + (BYTE5(v95) ^ 0x28));
  v99 = ((*(v87 + (((v94 >> 3) | (32 * v94)) ^ 0x64)) ^ 0xFD) - 77);
  v100 = (((v99 & v72) >> (-v45 & 7)) | (v99 << v61)) ^ (v73 << v81) ^ (((*(v87 + ((((v56 & v73) >> (v97 & 3 ^ 2 | v97 & 3 ^ 1)) + 32 * (v56 & v73)) ^ 0x64)) ^ 0xFD) - 77) >> (v84 ^ 0xE1u));
  LODWORD(STACK[0x1F20]) = v100 + 8086465 - ((2 * v100) & 0xF6C782);
  v101 = ((v72 & (v85 ^ ((v76 & v85 & 0xFE) >> 1))) >> (v84 ^ 0xE1u)) ^ ((v85 ^ ((v76 & v85 & 0xFE) >> 1)) << v81);
  v102 = (WORD2(STACK[0x2178]) >> 8) ^ 0x51;
  LOBYTE(v102) = *(STACK[0x1CD8] + (((v102 >> 6) & 0xFFFFFF03 | (4 * (v102 & 0x3F))) ^ 0x2ALL)) ^ 0xA9;
  LOBYTE(v102) = *(v96 + ((v102 + 95) ^ 0x4ALL)) ^ (v102 - ((2 * (v102 + 95)) & 0x22) + 112) ^ 0xEC;
  v103 = (*(STACK[0x1CD8] + (((v102 >> 6) | (4 * v102)) ^ 0x2ALL)) ^ 0xFFFFFFA9) + 95;
  v104 = STACK[0x2160];
  v105 = v103 ^ ((((((*(STACK[0x2160] + ((((v78 & v103) >> 6) | (4 * (v78 & v103))) ^ 0xB4)) ^ 0x11) - 77) ^ 0xF5) + 95) & 0xFE) >> 1);
  v106 = ((v56 & v105) >> (-v45 & 7)) ^ (v105 << v61) ^ v101;
  LODWORD(STACK[0x2188]) = v97 ^ 0x81FAE240;
  LOBYTE(v106) = (v106 - 63 - ((2 * v106) & 0x82)) ^ v97 ^ 0x40;
  STACK[0x1F18] = (4 * (v106 & 0x3F)) | (v106 >> 6);
  v107 = *(v98 + (v23 & 0x590) + (v23 & 0x590 ^ 0x590) + ((*(v74 + (STACK[0x1070] ^ 0x72)) ^ (2 * (*(v74 + (STACK[0x1070] ^ 0x72)) ^ 0x63) * (*(v74 + (STACK[0x1070] ^ 0x72)) ^ 0x63))) ^ 0x4Du));
  HIDWORD(v108) = v107 ^ 0x11;
  LODWORD(v108) = v107 << 24;
  v109 = (v108 >> 31) ^ ((v108 >> 31) >> 2) & 9 ^ ((STACK[0x1840] & 0x3D ^ 0x3D) + (STACK[0x1840] & 0x3D));
  v110 = LODWORD(STACK[0x2280]) >> 5;
  LODWORD(STACK[0x1F28]) = v110;
  v111 = (-127 * v109) ^ 0x4A;
  v112 = STACK[0x2270];
  v113 = *(STACK[0x2270] + ((-19878 - (((v110 & 0x2240 ^ 0x2240) + (v110 & 0x2240)) | 0xB048)) & 0xFFFE ^ (v111 & v78) ^ 0x4Bu));
  HIDWORD(v108) = v113 ^ 0x11;
  LODWORD(v108) = v113 << 24;
  v114 = v111 ^ (((-127 * ((v108 >> 31) ^ 0x3D ^ ((v108 >> 31) >> 2) & 9)) & 0xFE) >> 1);
  LOBYTE(v113) = STACK[0x1058] ^ *(v96 + (STACK[0x1058] ^ 0x81)) ^ 7;
  v115 = *(STACK[0x2270] + (((v113 & v76) >> 1) ^ 0x59));
  HIDWORD(v108) = v115 ^ 0x11;
  LODWORD(v108) = v115 << 24;
  LOBYTE(v113) = (-127 * ((v108 >> 31) ^ 0x3D ^ ((v108 >> 31) >> 2) & 9)) ^ v113;
  LODWORD(STACK[0x2068]) = (v114 << v81) ^ LODWORD(STACK[0x1F58]) ^ (v113 << v61) ^ ((v56 & v114) >> (-v45 & 7)) ^ ((v72 & v113) >> (v84 ^ 0xE1u));
  LOBYTE(v113) = !(STACK[0x1434] & 1) + (STACK[0x1434] & 1);
  LOBYTE(v114) = *(v74 + (BYTE3(v95) ^ 0xE8)) ^ (2 * (*(v74 + (BYTE3(v95) ^ 0xE8)) ^ 0x63) * (*(v74 + (BYTE3(v95) ^ 0xE8)) ^ 0x63)) ^ 0xF9;
  v116 = STACK[0x1928];
  LOBYTE(v115) = (STACK[0x2028] - (STACK[0x2020] & 0x22) + 17) ^ 0x5D ^ *(v96 + (STACK[0x2028] ^ 0x87));
  v117 = v104;
  LODWORD(v87) = v72;
  v118 = ((((v114 & v76) >> v113) ^ v114) << v81) ^ (((((*(v104 + ((((v116 & (((v114 & v76) >> v113) ^ v114)) >> 6) | (4 * (v116 & (((v114 & v76) >> v113) ^ v114)))) ^ 0xB4)) ^ 0x11) - 77) ^ 0xF5) + 95) >> v62) ^ (((-127 * (*(STACK[0x2278] + (v72 & (v115 ^ ((v115 & v78 & 0xFE) >> 1)) ^ 0xB0)) ^ 0xBC)) >> (v84 ^ 0xE1u)) | ((v115 ^ ((v115 & v78 & 0xFE) >> 1)) << v61));
  LODWORD(STACK[0x2028]) = v118 + 8086465 - ((2 * v118) & 0xF6C782);
  v119 = LODWORD(STACK[0x1044]) ^ 0xFFFFFFB5 ^ *(v96 + BYTE2(v95));
  v120 = v119 ^ ((v119 & v78 & 0xFE) >> 1);
  v121 = *(v112 + ((v120 << v81) ^ 0x59));
  HIDWORD(v108) = v121 ^ 0x11;
  LODWORD(v108) = v121 << 24;
  v122 = *(STACK[0x2268] + ((((STACK[0x2030] ^ 0x8F) >> 3) | (32 * (STACK[0x2030] ^ 0x8F))) ^ 0xD3)) ^ 0x7C;
  v123 = *(v96 + ((v122 - 77) ^ 0x4ALL)) ^ (v122 - ((2 * (v122 - 77)) & 0x22) - 60) ^ 0xFFFFFFAA;
  v124 = STACK[0x2268];
  v125 = v123 ^ ((((*(STACK[0x2268] + ((((v123 & v76) >> 3) | (32 * (v123 & v76))) ^ 0xD3)) ^ 0x7C) - 77) & 0xFE) >> 1);
  v126 = STACK[0x1FD0];
  v127 = (v125 << v61) ^ v97 ^ (((v72 & v120) >> (v84 ^ 0xE1u)) | (-127 * ((v108 >> 31) ^ 0x3D ^ ((v108 >> 31) >> 2) & 9))) ^ (((*(STACK[0x1FD0] + ((v125 & v116) ^ 0xB7)) ^ v125 & v116 ^ (v125 & v116 & 0x82 ^ 2 | v125 & v116 & 0x82 ^ 0x80 | 0x11) ^ 0x2D) - 107) >> v62);
  LODWORD(STACK[0x2020]) = *(STACK[0x1FD0] + (v127 ^ 0x36)) ^ ((v127 ^ 0xFFFFFF81) - 2 * ((v127 ^ 0xFFFFFF81) & 0x17 ^ v127 & 6) + 17) ^ 0xFFFFFFAF;
  LOBYTE(v127) = *(v74 + (BYTE1(v95) ^ 0xDLL)) ^ (2 * (*(v74 + (BYTE1(v95) ^ 0xDLL)) ^ 0x63) * (*(v74 + (BYTE1(v95) ^ 0xDLL)) ^ 0x63)) ^ 0xA1;
  v128 = BYTE1(STACK[0x2178]) ^ 0x7ALL;
  LOBYTE(v128) = *(v74 + v128) ^ (2 * (*(v74 + v128) ^ 0x63) * (*(v74 + v128) ^ 0x63)) ^ 4;
  v129 = (v128 ^ ((v128 & v76 & 0xFE) >> 1));
  v130 = v129 << v81;
  LODWORD(v129) = (v129 & v72) >> v62;
  v131 = v62;
  v132 = (v129 + v130) ^ ((((v127 ^ ((v127 & v78 & 0xFE) >> 1)) & v116) >> (v84 ^ 0xE1u)) + ((v127 ^ ((v127 & v78 & 0xFE) >> 1)) << v61));
  LODWORD(STACK[0x2178]) = v132 + 8086465 - ((2 * v132) & 0xF6C782);
  LOBYTE(v132) = *(v124 + ((((v95 ^ 0xF9) >> 3) | (32 * (v95 ^ 0xF9))) ^ 0xD3)) ^ 0x7C;
  LOBYTE(v132) = (v132 - ((2 * (v132 - 77)) & 0x22) - 60) ^ *(v96 + ((v132 - 77) ^ 0x4ALL));
  v133 = (((*(v104 + (((v132 >> 6) | (4 * v132)) ^ 0xB5)) ^ 0x11) - 77) ^ 0xFFFFFFF5) + 95;
  v134 = v133 ^ ((v133 & v78 & 0xFE) >> 1);
  STACK[0x22E8] = v134;
  v135 = v134 << v81;
  v136 = STACK[0x2258];
  LODWORD(STACK[0x2030]) = *(STACK[0x2258] + (v135 ^ 0xC6)) ^ ((v135 ^ 0xFFFFFFEB) + (v135 ^ 0xFFFFFF88) - ((2 * ((v135 ^ 0xFFFFFFEB) + (v135 ^ 0xFFFFFF88))) & 0x22) + 17) ^ 0x4A;
  LOBYTE(v135) = STACK[0x1050] ^ *(v96 + (STACK[0x1050] ^ 0x43)) ^ 8 ^ (((STACK[0x1050] ^ *(v96 + (STACK[0x1050] ^ 0x43)) ^ 8) & v76 & 0xFE) >> 1);
  LODWORD(STACK[0x1F10]) = ((v135 & v116) >> (v84 ^ 0xE1u)) + (*(v136 + ((v135 << v61) ^ 0xC6)) ^ (((v135 << v61) ^ 0x88) + ((v135 << v61) ^ 0xEB) - ((2 * (((v135 << v61) ^ 0x88) + ((v135 << v61) ^ 0xEB))) & 0x22) + 17) ^ 0x4A);
  LODWORD(v135) = LODWORD(STACK[0xDF4]) ^ 0xFFFFFFAB ^ *(v96 + (STACK[0x2048] ^ 0x60));
  LOBYTE(v135) = ((((*(v117 + ((((v135 & v78 & 0x80) != 0) | (2 * (v135 & v78))) ^ 0xB4)) ^ 0x11) - 77) ^ 0xF5) + 95) ^ v135;
  LODWORD(v129) = *(v74 + (STACK[0x2070] ^ 0xBC)) ^ 0x63 ^ (2 * (*(v74 + (STACK[0x2070] ^ 0xBC)) ^ 0x63) * (*(v74 + (STACK[0x2070] ^ 0xBC)) ^ 0x63));
  v137 = STACK[0x2278];
  v138 = *(STACK[0x2278] + ((((v129 ^ 0x34) & v76) >> 1) ^ 0xB0));
  LODWORD(STACK[0x1F00]) = ((v135 & v87) >> (v84 ^ 0xE1u)) | (v135 << v81);
  LODWORD(STACK[0x2180]) = v129 ^ (-127 * (v138 ^ 0xFFFFFFBC));
  v139 = STACK[0x2060];
  LOBYTE(v129) = (*(STACK[0x1E78] + ((((((BYTE6(v139) + (~(2 * BYTE6(v139)) | 0xDD) + 18) ^ 0x79 ^ *(v96 + (BYTE6(v139) ^ 0x17))) & v78) >> 3) | (32 * (((BYTE6(v139) + (~(2 * BYTE6(v139)) | 0xDD) + 18) ^ 0x79 ^ *(v96 + (BYTE6(v139) ^ 0x17))) & v78))) ^ 0x64)) ^ 0xFD) - 77;
  LODWORD(v135) = (((*(v126 + ((v129 >> 1) ^ 0xB7)) ^ ((v129 >> 1) - (v129 & 0x22) + 17) ^ 0xAF) - 107) ^ (BYTE6(v139) + (~(2 * BYTE6(v139)) | 0xDD) + 18) ^ 0x79 ^ *(v96 + (BYTE6(v139) ^ 0x17)));
  LODWORD(STACK[0x1EF0]) = v135;
  LODWORD(STACK[0x2048]) = *(v136 + ((v135 << v61) ^ 0xC6)) ^ (((v135 << v61) ^ 0xEB) + ((v135 << v61) ^ 0x88) - ((2 * (((v135 << v61) ^ 0xEB) + ((v135 << v61) ^ 0x88))) & 0x22) + 17) ^ 0x4A;
  v140 = STACK[0x2140];
  v141 = v137;
  LODWORD(v135) = *(v137 + ((*(v74 + (BYTE6(v140) ^ 0x18)) ^ (2 * (*(v74 + (BYTE6(v140) ^ 0x18)) ^ 0x63) * (*(v74 + (BYTE6(v140) ^ 0x18)) ^ 0x63))) ^ 0x83u)) ^ 0xFFFFFFBC;
  LODWORD(v130) = (((-127 * v135) & v76) >> 1) - ((-127 * v135) & v76 & 0x5A);
  LODWORD(STACK[0xB2C]) = v130 + 45;
  LOBYTE(v135) = (v130 + 45) ^ (-127 * v135 - ((2 * v135) & 0x5A) + 45);
  LODWORD(STACK[0x1F08]) = ((v135 & v116) >> v90) ^ (v135 << v81);
  LODWORD(v135) = *(v112 + (BYTE5(v139) ^ 0x31));
  HIDWORD(v108) = v135 ^ 0x11;
  LODWORD(v108) = v135 << 24;
  LODWORD(v135) = *(v74 + ((-127 * ((v108 >> 31) ^ 0x3D ^ ((v108 >> 31) >> 2) & 9)) ^ 0x3CLL));
  LODWORD(v135) = v135 ^ 0xFFFFFF99 ^ ((~(4 * (v135 ^ 0x63) * (v135 ^ 0x63)) | 0xFFFFFFDF) + 2 * (v135 ^ 0x63) * (v135 ^ 0x63) + 18);
  LODWORD(STACK[0x1EE8]) = v135 ^ ((v135 & v76 & 0xFE) >> 1);
  LODWORD(v135) = STACK[0x2058] ^ *(v96 + (STACK[0x2058] ^ 0x3ALL)) ^ 0xFFFFFFCF;
  LODWORD(v135) = v135 ^ ((v135 & v78 & 0xFE) >> 1);
  LOBYTE(v135) = (((*(v117 + (((v135 >> 6) | (4 * v135)) ^ 0xB4)) ^ 0x11) - 77) ^ 0xF5) + 95;
  LODWORD(v137) = v116;
  LODWORD(STACK[0x1EF8]) = ((v135 & v116) >> v90) + (v135 << v61);
  LODWORD(v135) = STACK[0x2288] & 2;
  STACK[0x1DF8] = ~v131;
  LOBYTE(v135) = (~v131 & 0x9A | v135) ^ (BYTE4(v139) - ((2 * BYTE4(v139)) & 0x22) + 17) ^ *(v96 + (BYTE4(v139) ^ 0xCBLL));
  v142 = v124;
  LOBYTE(v135) = (*(v124 + (((v135 >> 3) | (32 * v135)) ^ 0xD5)) ^ 0x7C) - 77;
  LODWORD(v135) = (v135 ^ ((v135 & v76 & 0xFE) >> 1));
  LODWORD(v124) = v87;
  LOBYTE(v129) = *(v74 + (BYTE4(v140) ^ 0xAFLL));
  LOBYTE(v129) = v129 ^ 0xB7 ^ (2 * (v129 ^ 0x63) * (v129 ^ 0x63) - ((4 * (v129 ^ 0x63) * (v129 ^ 0x63)) & 0x20) + 17);
  LOBYTE(v129) = v129 ^ ((v129 & v78 & 0xFE) >> 1);
  v143 = v129 << v81;
  STACK[0x1EE0] = v143;
  LODWORD(v79) = STACK[0x1F58];
  LODWORD(STACK[0x2288]) = (((v135 & v87) >> v131) | (v135 << v61)) ^ LODWORD(STACK[0x1F58]) ^ (((v129 & v137) >> v90) + v143);
  LODWORD(v135) = -127 * (*(v141 + ((-127 * (*(v141 + ((*(v74 + (BYTE3(v139) ^ 0xEDLL)) ^ (2 * (*(v74 + (BYTE3(v139) ^ 0xEDLL)) ^ 0x63) * (*(v74 + (BYTE3(v139) ^ 0xEDLL)) ^ 0x63))) ^ 0xA4u)) ^ 0xBC)) ^ 0x38)) ^ 0xFFFFFFBC);
  LODWORD(v135) = v135 ^ ((v135 & v78 & 0xFE) >> 1);
  LOBYTE(v143) = (v135 & v124 ^ 0x88) + (v135 & v124 ^ 0xEB);
  LOBYTE(v129) = *(v136 + (v135 & v87 ^ 0xC6)) ^ (v143 - ((2 * v143) & 0x22) + 17) ^ 0x4A;
  LODWORD(v143) = *(v74 + (BYTE3(v140) ^ 0x1CLL));
  v144 = ((v129 - 107) >> v131) ^ (v135 << v81);
  LODWORD(v135) = v143 ^ (2 * (v143 ^ 0x63) * (v143 ^ 0x63)) ^ 0x19;
  LOBYTE(v129) = (*(STACK[0x2168] + ((((v135 & v76) >> 3) | (32 * (v135 & v76))) ^ 0x64)) ^ 0xFD) - 77;
  v145 = (v129 >> 1) - (v129 & 0x5E) - 81;
  STACK[0x1080] = v145;
  LODWORD(v135) = v145 ^ v135;
  LODWORD(STACK[0x2058]) = v135;
  LOBYTE(v135) = v135 ^ 0xAF;
  LODWORD(v135) = ((v135 & v137) >> v90) ^ v79 ^ ((*(v136 + ((v135 << v61) ^ 0xC6)) ^ (((v135 << v61) ^ 0xEB) + ((v135 << v61) ^ 0x88) - ((2 * (((v135 << v61) ^ 0xEB) + ((v135 << v61) ^ 0x88))) & 0x22) + 17) ^ 0x4A) - 107);
  LOBYTE(v145) = *(v96 + (BYTE2(v139) ^ 0xB3));
  LODWORD(STACK[0x2060]) = WORD1(v139);
  LODWORD(STACK[0x1ED0]) = 2 * WORD1(v139);
  LOBYTE(v145) = (BYTE2(v139) - ((2 * BYTE2(v139)) & 0x22) + 17) ^ 0xB9 ^ v145;
  STACK[0x1DF0] = v144;
  LODWORD(STACK[0x1EC8]) = *(STACK[0x1FD0] + ((v144 ^ v135) ^ 0xB7)) ^ ((v144 ^ v135) - ((2 * (v144 ^ v135)) & 0x22) + 17) ^ 0xFFFFFFAF;
  LODWORD(v135) = (v145 ^ ((v145 & v76 & 0xFE) >> 1));
  LODWORD(v145) = *(v74 + (BYTE2(v140) ^ 0x20));
  LODWORD(STACK[0x1EC0]) = (((v135 & v137) >> v131) ^ (v135 << v61)) - ((2 * (((v135 & v137) >> v131) ^ (v135 << v61))) & 0x82);
  LODWORD(v135) = v145 ^ 0x3A ^ (2 * (v145 ^ 0x63) * (v145 ^ 0x63) - ((4 * (v145 ^ 0x63) * (v145 ^ 0x63)) & 0x20) + 17);
  LODWORD(v120) = ((v135 & v78) >> 1) - (v135 & v78 & 0x22) + 17;
  LODWORD(STACK[0x1FA0]) = v120;
  LODWORD(v135) = v120 ^ v135;
  LODWORD(STACK[0x1E10]) = v135;
  LODWORD(v135) = (((v135 ^ 0x11u) & v87) >> v90) | (-127 * (*(v141 + (((v135 ^ 0x11) << v81) ^ 0xB0)) ^ 0xFFFFFFBC));
  LODWORD(STACK[0x1EB8]) = v135 - ((2 * v135) & 0x22);
  LODWORD(v135) = -127 * (*(v141 + ((*(v74 + (STACK[0x1048] ^ 0xD0)) ^ (2 * (*(v74 + (STACK[0x1048] ^ 0xD0)) ^ 0x63) * (*(v74 + (STACK[0x1048] ^ 0xD0)) ^ 0x63))) ^ 0x2Cu)) ^ 0xFFFFFFBC);
  LODWORD(v135) = v135 ^ ((v135 & v76 & 0xFE) >> 1);
  v146 = v135 << v81;
  LODWORD(v135) = ((((*(v117 + ((((v135 & v137) >> 6) | (4 * (v135 & v137))) ^ 0xB4)) ^ 0x11) - 77) ^ 0xF5) + 95) >> v131;
  STACK[0x1DE8] = v146;
  v147 = ((v146 | v135) >> 3) & 0xFFFFFF1F | (32 * (v146 & 7 | v135 & 7));
  LOBYTE(v135) = LODWORD(STACK[0x1104]) ^ 0x66 ^ *(v96 + (BYTE1(v140) ^ 0xDCLL));
  LODWORD(v144) = (*(v142 + (((32 * (((v135 ^ ((v135 & v78 & 0xFE) >> 1)) << v61) & 7)) | (((v135 ^ ((v135 & v78 & 0xFE) >> 1)) << v61) >> 3)) ^ 0xD3)) ^ 0x7C) + (((v135 ^ ((v135 & v78 & 0xFE) >> 1)) & v87) >> v90);
  LODWORD(v135) = *(v74 + (STACK[0x1038] ^ 0xDDLL)) ^ 0x63 ^ (2 * (*(v74 + (STACK[0x1038] ^ 0xDDLL)) ^ 0x63) * (*(v74 + (STACK[0x1038] ^ 0xDDLL)) ^ 0x63));
  LODWORD(v135) = (*(v136 + (v135 ^ 0x7BLL)) ^ ((v135 ^ 0x56) + (v135 ^ 0x35) - ((2 * ((v135 ^ 0x56) + (v135 ^ 0x35))) & 0x22) + 17) ^ 0x4A) - 107;
  LODWORD(v87) = v76;
  LODWORD(v135) = v135 ^ ((v135 & v76 & 0xFE) >> 1);
  LODWORD(v139) = ((v82 & v135) >> v131) | (v135 << v81);
  LODWORD(v135) = STACK[0x1060] ^ 0x41 ^ ((*(v96 + (STACK[0x1060] ^ 0x67)) ^ 0xFFFFFFEF) - ((2 * (*(v96 + (STACK[0x1060] ^ 0x67)) ^ 0xFFFFFFEF)) & 0xFFFFFFE7) - 13);
  LODWORD(v135) = (((*(v117 + (((v135 >> 6) | (4 * v135)) ^ 0xB4)) ^ 0x11) - 77) ^ 0xFFFFFFF5) + 95;
  LODWORD(v135) = v135 ^ ((v135 & v78 & 0xFE) >> 1);
  LODWORD(v145) = *(v142 + (((((v135 & v124) >> v90) >> 3) | (32 * ((v135 & v124) >> v90))) ^ 0xD3)) ^ 0x7C;
  LODWORD(v146) = v145 - ((2 * v145 + 102) & 0xFFFFFFE0) + 35;
  LODWORD(STACK[0x107C]) = v146;
  LODWORD(STACK[0x1DE0]) = v139;
  LODWORD(v135) = v139 ^ (((v135 << v61) - ((2 * (v135 << v61)) & 0xE0) + 112) ^ v146);
  LODWORD(STACK[0x1ED8]) = v135 + 8086465 - ((2 * v135) & 0xF6C782);
  LODWORD(v136) = STACK[0x1AA8];
  LODWORD(v145) = STACK[0x1AA8] & 0xFE ^ 0x98;
  LOBYTE(v143) = (v145 << (STACK[0x1F60] & 0xD)) + (v145 >> 3);
  LODWORD(v142) = STACK[0x1434] & 0xFFFFFF01;
  LODWORD(v145) = v145 | v142;
  LODWORD(v76) = 1661815157 * v145;
  LODWORD(v145) = v145 ^ LODWORD(STACK[0x1434]);
  LODWORD(v135) = v145 ^ (1661815157 * LODWORD(STACK[0x1434])) ^ (773245741 * LODWORD(STACK[0x1434])) ^ v76;
  v148 = STACK[0x2168];
  LODWORD(v143) = ((*(STACK[0x2168] + (v143 ^ 0x64)) ^ 0xFD) - 77);
  LODWORD(STACK[0x1988]) = v142;
  v149 = 773245741 * (v142 | v143);
  STACK[0x19C8] = v149;
  LODWORD(STACK[0x1CC8]) = v135 ^ v149 ^ (v145 >> 3) ^ LODWORD(STACK[0x1F88]) ^ ~LODWORD(STACK[0x2018]);
  LODWORD(STACK[0x1EB0]) = STACK[0x2198] & 0x22;
  LODWORD(STACK[0x1EA8]) = LODWORD(STACK[0x21A8]) + 17;
  LODWORD(STACK[0x1A98]) = STACK[0x1F98] & 1;
  LODWORD(STACK[0x1E00]) = v136 ^ 0xD6B7C798;
  LODWORD(STACK[0x2018]) = LODWORD(STACK[0x1FC8]) + (v136 ^ 0xD6B7C798);
  LODWORD(v135) = -736813698 * LODWORD(STACK[0x1F50]) - LODWORD(STACK[0x1FA8]);
  LODWORD(v149) = 736813699 * LODWORD(STACK[0x1FA8]);
  LODWORD(STACK[0x17D0]) = v149;
  LODWORD(STACK[0x1FC8]) = v135 + v149 + LODWORD(STACK[0x1994]);
  v150 = STACK[0x1F48];
  LODWORD(STACK[0x1F50]) = (2 * STACK[0x1F48]) & 0x22222222;
  LODWORD(STACK[0x1F48]) = v150 + 17;
  LODWORD(v142) = STACK[0x2188];
  v151 = LODWORD(STACK[0x1F20]) ^ LODWORD(STACK[0x2188]);
  LODWORD(v135) = *(STACK[0x1CD8] + (STACK[0x1F18] ^ 0x2A)) ^ 0xFFFFFFA9;
  LODWORD(STACK[0x1F20]) = (2 * v135 + 14) & 0xC;
  LODWORD(STACK[0x1F18]) = v135 - 27;
  LODWORD(v150) = STACK[0x2020];
  LODWORD(STACK[0x1EA0]) = (2 * LODWORD(STACK[0x2020]) + 42) & 0x22;
  LODWORD(STACK[0x1E90]) = v150 - 90;
  LODWORD(v139) = LODWORD(STACK[0x2178]) ^ v142;
  LODWORD(STACK[0x1E88]) = (STACK[0x22E8] & v124) >> v131;
  LODWORD(STACK[0x2020]) = -127 * (*(STACK[0x2278] + ((LODWORD(STACK[0x1F10]) - 107) ^ 0xB0)) ^ 0xFFFFFFBC);
  LODWORD(v150) = LODWORD(STACK[0x1F00]) ^ LODWORD(STACK[0x1F58]);
  LODWORD(STACK[0x1F10]) = (2 * (v140 >> 16)) & 0xFFFFFFA6;
  LODWORD(STACK[0x1F00]) = (v140 >> 16) + 83;
  LOBYTE(v145) = (LODWORD(STACK[0x2180]) ^ 0x34) & v137;
  LODWORD(v135) = LODWORD(STACK[0x2180]) ^ 0x34;
  STACK[0x1C60] = v61;
  v152 = v145 >> v131;
  v153 = v131;
  LODWORD(STACK[0x1E80]) = v152 | (v135 << v61);
  LODWORD(STACK[0x1E78]) = (2 * v152) & 0x1BC;
  LODWORD(STACK[0x1E68]) = v152 + 94;
  LODWORD(STACK[0x1EF0]) = ((STACK[0x1EF0] & v124) >> v131) ^ LODWORD(STACK[0x2290]);
  v154 = LODWORD(STACK[0x1EE8]);
  LODWORD(STACK[0x1CAC]) = v124;
  LODWORD(STACK[0x1F88]) = v154 & v124;
  STACK[0x1F60] = v154 << v81;
  v155 = STACK[0x1EE0];
  LODWORD(STACK[0x1EE8]) = (2 * STACK[0x1EE0]) & 0x22;
  LODWORD(STACK[0x1EE0]) = v155 + 17;
  LODWORD(v152) = STACK[0x1EC8];
  LODWORD(STACK[0x1E60]) = (2 * LODWORD(STACK[0x1EC8]) + 42) & 0x3E;
  LODWORD(STACK[0x1EC8]) = v152 + 52;
  LODWORD(v131) = (LODWORD(STACK[0x1EC0]) + 193) ^ v142;
  LODWORD(STACK[0x1FA8]) = *(v148 + (v147 ^ 0x64));
  LODWORD(v148) = LODWORD(STACK[0x1EB8]) + 17;
  LODWORD(STACK[0x1F98]) = v144 - 77;
  LODWORD(STACK[0x2060]) = LODWORD(STACK[0x1930]) >> 1;
  STACK[0x2178] = v81;
  LODWORD(STACK[0x21A8]) = v151;
  LODWORD(v152) = (2 * v151) & 0x4C;
  LODWORD(STACK[0x1DD0]) = v152;
  LODWORD(STACK[0x1ED0]) = ~v152;
  LODWORD(STACK[0x2140]) = v139;
  v156 = (LODWORD(STACK[0x2288]) + 17);
  LODWORD(STACK[0xFF4]) = v148;
  LODWORD(STACK[0x1DD8]) = v131;
  LODWORD(STACK[0x2198]) = v148 ^ v131;
  STACK[0x1CD0] = v153;
  LODWORD(v148) = *(*(&off_279CA5FD0 + v9 - 3836) + ((v9 - 3863) | 0x610u) - 1635) ^ 0x93FF;
  LODWORD(v148) = (((((v148 & v87) >> 1) ^ v148) & STACK[0x1FC8]) << STACK[0x1C60]) | (((((v148 & v87) >> 1) ^ v148) & STACK[0x1CAC]) >> v153);
  *(STACK[0x1B78] + 4 * LODWORD(STACK[0x1F58])) = (v148 + 8086465 - ((2 * v148) & 0xF6C782)) ^ v142;
  return (*(STACK[0x22F8] + 8 * v9))(v156, v90, (2 * v139) & 0x4C, (2 * v150) & 0x22, 0, v81);
}

uint64_t sub_26AA2111C@<X0>(int a1@<W0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char a5@<W5>, int a6@<W7>, int a7@<W8>)
{
  STACK[0x1A30] = v9;
  STACK[0x1AC8] = v8;
  LODWORD(STACK[0xE30]) = LODWORD(STACK[0x1EA8]) - LODWORD(STACK[0x1EB0]);
  LODWORD(STACK[0xE5C]) = LODWORD(STACK[0x1F48]) - LODWORD(STACK[0x1F50]);
  LODWORD(STACK[0x10B0]) = v13 - a7;
  v19 = LODWORD(STACK[0x1F18]) - LODWORD(STACK[0x1F20]);
  v20 = LODWORD(STACK[0x1E90]) - LODWORD(STACK[0x1EA0]);
  LODWORD(STACK[0xE28]) = v16 - a3;
  v21 = LODWORD(STACK[0x1E88]) + LODWORD(STACK[0x2030]);
  LODWORD(STACK[0x108C]) = v17 - a4;
  LODWORD(STACK[0xE60]) = LODWORD(STACK[0x1F00]) - LODWORD(STACK[0x1F10]);
  LODWORD(STACK[0xE24]) = LODWORD(STACK[0x1E68]) - LODWORD(STACK[0x1E78]);
  v22 = LODWORD(STACK[0x1E80]) ^ v7;
  v23 = LODWORD(STACK[0x1EF0]) ^ LODWORD(STACK[0x1F08]);
  LODWORD(STACK[0xB24]) = LODWORD(STACK[0x1EE0]) - LODWORD(STACK[0x1EE8]);
  LODWORD(STACK[0x1160]) = a1 - v15;
  v24 = LODWORD(STACK[0x1EC8]) - LODWORD(STACK[0x1E60]);
  LODWORD(STACK[0xB28]) = v11 - v12;
  v25 = LODWORD(STACK[0x1FC0]) ^ LODWORD(STACK[0x2280]) ^ LODWORD(STACK[0x1F28]);
  v26 = STACK[0x1AA8];
  v27 = LODWORD(STACK[0x2060]) ^ LODWORD(STACK[0x1930]) ^ LODWORD(STACK[0x1AA8]) ^ LODWORD(STACK[0x2018]) ^ LODWORD(STACK[0x1FB0]);
  v28 = LODWORD(STACK[0x2020]) ^ LODWORD(STACK[0x2290]) ^ (v21 - 107);
  v29 = v23 ^ (LODWORD(STACK[0x2048]) - 107);
  v30 = STACK[0x1CD0];
  v31 = LODWORD(STACK[0x1EF8]) ^ LODWORD(STACK[0x1F58]) ^ ((LODWORD(STACK[0x1F88]) >> STACK[0x1CD0]) + STACK[0x1F60]);
  v32 = (LODWORD(STACK[0x1FA8]) ^ 0xFFFFFFFD) - 77;
  v33 = LODWORD(STACK[0x2290]) ^ LODWORD(STACK[0x1F98]);
  v34 = v32 ^ v33;
  LODWORD(STACK[0xB20]) = v20;
  v35 = ((v20 ^ 0x11) << 16) - 1650284495 - ((v20 << 17) & 0x1440000);
  v36 = ((v31 << 8) ^ 0xC5B5BDFF) + ((v31 << 9) & 0x17A00);
  v37 = v27 ^ v25 ^ (v27 >> (v10 - 113));
  LODWORD(STACK[0xE68]) = v19;
  v38 = ((v19 ^ 0x86) << 8) | (LODWORD(STACK[0x21A8]) << 16) | (LODWORD(STACK[0x2250]) << 24);
  LODWORD(STACK[0x1F28]) = v28;
  LODWORD(STACK[0x2018]) = v35;
  v39 = v35 ^ 0x9DA2A831 | v28 ^ 0x81;
  LODWORD(STACK[0x1088]) = v24;
  v40 = (((v32 ^ v33) ^ 0x81) << 8) | ((v24 ^ 0xFFFFFF9F) << 24);
  LODWORD(STACK[0x2250]) = v26 & 0xE1F84508;
  v41 = STACK[0x1CAC];
  v42 = STACK[0x1CC8];
  LOBYTE(v19) = STACK[0x1C60];
  v43 = ((STACK[0x1CAC] & (((v26 & 0xE1F84508) >> 1) ^ 0x81A0678C)) >> v30) | ((STACK[0x1CC8] & (((v26 & 0xE1F84508) >> 1) ^ 0x81A0678C)) << v19);
  LODWORD(STACK[0x2060]) = v31 - ((2 * v31) & 0x22);
  v44 = STACK[0x1FD0];
  LOBYTE(v32) = *(STACK[0x1FD0] + ((v32 ^ v33) ^ 0x36));
  STACK[0x1F00] = v34;
  v45 = STACK[0x1B78];
  v46 = *(STACK[0x1B78] + 4 * ((v34 ^ v32 ^ 0x3F) - 107));
  v47 = v46 << 8;
  LOBYTE(v46) = (((v31 & 0x82 ^ 0x82) + (v31 & 0x82)) ^ (BYTE3(v46) - ((2 * BYTE3(v46)) & 0x22) + 17) ^ 0x2D ^ *(v44 + ((v46 >> 24) ^ 0xB7))) - 107;
  LODWORD(STACK[0x1A38]) = v47;
  v48 = v47 & 0xFFFFFF00 | v46;
  LODWORD(STACK[0x1F08]) = v14;
  v49 = v14 >> 1;
  LODWORD(v46) = (v14 >> 1) & 0x577C2284 ^ 0xAEF84508;
  LODWORD(v34) = STACK[0x1928];
  v51 = (STACK[0x1928] & v46) >> a2;
  v52 = STACK[0x1FC8];
  v53 = STACK[0x1FC8];
  LOBYTE(v35) = a5;
  STACK[0x1A20] = v51;
  v54 = v43 ^ (v51 | ((v52 & v46) << a5));
  v55 = LODWORD(STACK[0x1ED8]) ^ a6;
  v56 = v38 & 0xFFFFFF00 | LODWORD(STACK[0x2068]);
  LODWORD(v51) = LODWORD(STACK[0x2198]) ^ 0x11111111;
  LODWORD(STACK[0x1EF0]) = v51;
  v57 = v40 & 0xFF00FFFF | (v51 << 16);
  LODWORD(STACK[0x1D90]) = v57;
  v58 = v57 & 0xFFFFFF00 | v55;
  LODWORD(STACK[0x1970]) = v56;
  STACK[0x1DA8] = BYTE2(v58);
  v59 = __ROR4__(*(v45 + 4 * BYTE2(v58)), 16);
  LODWORD(STACK[0x1E78]) = v55;
  STACK[0x1DC0] = v55;
  LODWORD(v46) = *(v45 + 4 * v55);
  STACK[0x1DB8] = v58 >> 24;
  LODWORD(v51) = *(v45 + 4 * (v58 >> 24));
  LODWORD(STACK[0x16F0]) = v51;
  v60 = v54 ^ v56 ^ v59 ^ v46 ^ __ROR4__(v51, 8) ^ v48;
  LODWORD(v51) = LODWORD(STACK[0x2028]) ^ a6;
  LOBYTE(v46) = STACK[0x2140];
  LODWORD(STACK[0x1E68]) = v51;
  LODWORD(v51) = v39 + (v51 << 24);
  LODWORD(STACK[0x1B30]) = v51;
  LODWORD(v51) = v51 | (v46 << 8);
  LODWORD(STACK[0x1D70]) = v37;
  v37 ^= 0x40FA863Cu;
  LODWORD(STACK[0x1F10]) = v51;
  LODWORD(v46) = (v37 ^ v51 ^ v60) + 8086465 - ((2 * (v37 ^ v51 ^ v60)) & 0xF6C782);
  LODWORD(STACK[0x1F18]) = v22;
  LODWORD(STACK[0x1EF8]) = v36;
  LODWORD(STACK[0x1944]) = v22 << 24;
  LODWORD(STACK[0x1DA0]) = (v29 ^ 0x81) << 16;
  LODWORD(STACK[0x1EE8]) = v36 + 977945089;
  LODWORD(v51) = (v36 + 977945089) & 0xFFFFFF00 | (v22 << 24) | ((v29 ^ 0x81) << 16) | LODWORD(STACK[0x2288]);
  LODWORD(STACK[0x2048]) = v46 ^ a6;
  v61 = STACK[0x1F58];
  v62 = v46 ^ a6 ^ LODWORD(STACK[0x1F58]);
  STACK[0x1F20] = v58;
  LODWORD(STACK[0x1ED8]) = v62 ^ v51;
  v63 = STACK[0x1F78];
  v64 = v53;
  v65 = ((v58 ^ v62 ^ v51) + 8086465 - ((2 * (v58 ^ v62 ^ v51)) & 0xF6C782)) ^ a6;
  v66 = v37 ^ v65;
  v67 = (((v42 & (v49 & 0x4641BB2B ^ 0x8C837656)) << v35) | ((v41 & (v49 & 0x4641BB2B ^ 0x8C837656)) >> v30)) ^ (((v34 & (v63 & 0x62C1BB2B ^ 0xA7C2D55E)) >> a2) + (((v63 & 0x62C1BB2B ^ 0xA7C2D55E) & v53) << v19)) ^ __ROR4__(*(v45 + 4 * BYTE1(v66)), 24) ^ __ROR4__(*(v45 + 4 * BYTE2(v66)), 16) ^ *(v45 + 4 * (v37 ^ v65));
  LODWORD(v46) = v67 - 1586696193 - ((2 * v67) & 0x42D9DFFE);
  v68 = v60 ^ 0xA16CEFFF;
  STACK[0x1EC8] = v66;
  v69 = *(v45 + ((v66 >> 22) & 0x3FC));
  LODWORD(STACK[0x2030]) = v69;
  LODWORD(STACK[0x16C0]) = v68;
  v70 = v46 ^ v68;
  HIDWORD(v72) = v69;
  LODWORD(v72) = v69;
  v71 = v72 >> 8;
  LODWORD(STACK[0x1424]) = v71;
  LODWORD(STACK[0x1E88]) = v70;
  v73 = v71 ^ v37 ^ v70;
  LODWORD(STACK[0x1980]) = v51;
  v74 = ((v73 ^ v51) + 8086465 - ((2 * (v73 ^ v51)) & 0xF6C782)) ^ a6;
  v75 = v61;
  v76 = v65 ^ v61 ^ v74;
  v77 = v74;
  LODWORD(STACK[0x1BC0]) = v74;
  LOBYTE(v46) = *(v44 + (((v65 ^ v61 ^ v74) >> 24) ^ 0xB7)) ^ (((v65 ^ v61 ^ v74) >> 24) - (((v65 ^ v61 ^ v74) >> 23) & 0x22) + 17) ^ 0xAF;
  v78 = v63 & 0x6BFC7F8D ^ 0xBCA09C96;
  v79 = v49 & 0x7EFC7F8D ^ 0xFDF8FF1A;
  v80 = (v78 & v64) << v19;
  LOBYTE(v44) = v19;
  v81 = v42;
  v82 = (v34 & v78) >> a2;
  LODWORD(v66) = (v41 & v79) >> v30;
  LOBYTE(v61) = v30;
  STACK[0x12D0] = v82;
  LODWORD(STACK[0x1AA0]) = v66;
  v83 = v62 ^ v73;
  v84 = *(v45 + 4 * BYTE2(v76));
  v85 = v66 ^ ((v42 & v79) << v35) ^ (v82 + v80) ^ *(v45 + 4 * ((*(STACK[0x2168] + (((32 * (v76 & 7)) | (v76 >> 3)) ^ 0x64)) ^ 0xFD) - 77)) ^ __ROR4__(*(v45 + 4 * BYTE1(v76)), 24) ^ __ROR4__(*(v45 + 4 * (v46 - 107)), 8) ^ v73;
  LODWORD(STACK[0x1760]) = v84;
  LODWORD(STACK[0x1E80]) = v83;
  v86 = v85 ^ __ROR4__(v84, 16);
  LODWORD(STACK[0x2020]) = v86;
  LODWORD(v30) = ((v86 ^ v83) + 8086465 - ((2 * (v86 ^ v83)) & 0xF6C782)) ^ a6;
  v87 = v77 ^ v37;
  LODWORD(STACK[0x2028]) = v30 ^ v75;
  STACK[0x1A18] = v76;
  LODWORD(v46) = v49 & 0x7556D99F ^ 0xEAADB33F;
  v88 = (v42 & v46) << v35;
  LODWORD(v66) = v41;
  LODWORD(v46) = v41 & v46;
  LOBYTE(v41) = v61;
  LODWORD(v88) = v88 + (v46 >> v61);
  LODWORD(v46) = v63 & 0x456D99F ^ 0x8FF72B3;
  v89 = v64;
  LODWORD(v82) = (v46 & v64) << v44;
  LOBYTE(v64) = v44;
  LODWORD(v82) = ((v34 & v46) >> a2) | v82;
  LODWORD(v46) = ((v76 ^ v77 ^ v37 ^ v30 ^ v75) + 8086465 - ((2 * (v76 ^ v77 ^ v37 ^ v30 ^ v75)) & 0xF6C782)) ^ a6;
  v90 = v46 ^ v37;
  v91 = v88 ^ v82;
  v92 = *(v45 + 4 * ((((*(STACK[0x2160] + ((((v46 ^ v37) >> 22) & 0xFC | ((v46 ^ v37) >> 30)) ^ 0xB4)) ^ 0x11) - 77) ^ 0xF5) + 95));
  LODWORD(v88) = *(v45 + 4 * (v46 ^ v37)) ^ __ROR4__(*(v45 + 4 * ((((*(STACK[0x2160] + ((((v46 ^ v37) >> 14) & 0xFC | ((v46 ^ v37) >> 22) & 3) ^ 0xB4)) ^ 0x11) - 77) ^ 0xF5) + 95)), 16);
  LODWORD(STACK[0x1F60]) = v91;
  LODWORD(v76) = v91 ^ __ROR4__(v92, 8) ^ v86;
  v93 = *(v45 + 4 * ((v46 ^ v37) >> 8));
  LODWORD(STACK[0x1710]) = v76;
  LODWORD(v44) = v88 ^ v76 ^ __ROR4__(v93, 24);
  LODWORD(STACK[0x1EB8]) = v87;
  LODWORD(STACK[0x2140]) = v44 ^ v87;
  v94 = (v44 ^ v87) + 8086465 - ((2 * (v44 ^ v87)) & 0xF6C782);
  LODWORD(STACK[0x1F50]) = v63 & 0xB773156;
  v95 = v66;
  LOBYTE(v91) = v35;
  LODWORD(v88) = ((v81 & (v63 & 0xB773156 ^ 0x1DBD43E9u)) << v35) + ((v66 & (v63 & 0xB773156 ^ 0x1DBD43E9)) >> v41);
  LODWORD(v82) = v49 & 0x70F73156 ^ 0xE1EE62AD;
  v96 = v34 & v82;
  LODWORD(v66) = v89;
  STACK[0x1A10] = v96;
  v97 = v94 ^ a6;
  v98 = v94 ^ a6 ^ v75;
  v99 = v46 ^ v98;
  LODWORD(STACK[0x1FB0]) = ((v46 ^ v98) >> 16) - ((2 * ((v46 ^ v98) >> 16)) & 0x1FFE8);
  LODWORD(v46) = v88 ^ ((v96 >> a2) | ((v89 & v82) << v64)) ^ *(v45 + 4 * (v46 ^ v98)) ^ __ROR4__(*(v45 + ((v99 >> 22) & 0x3FC)), 8);
  HIDWORD(v72) = *(v45 + 4 * BYTE2(v99));
  LODWORD(v72) = HIDWORD(v72);
  LODWORD(v96) = v72 >> 16;
  LODWORD(STACK[0x1798]) = v96;
  LODWORD(v82) = v46 ^ v44 ^ v96;
  v100 = *(STACK[0x1CD8] + (((v99 >> 6) & 0xFC | (v99 >> 14)) ^ 0x2ALL)) ^ 0xFFFFFFA9;
  LODWORD(STACK[0x1F98]) = 2 * v100;
  LODWORD(v46) = *(v45 + 4 * ((v100 + ((64 - 2 * v100) | 0x1D) + 81) ^ 0xF1u));
  LODWORD(STACK[0x1718]) = v82;
  v101 = v82 ^ __ROR4__(v46, 24);
  LODWORD(STACK[0x1EE0]) = v44;
  LODWORD(STACK[0x1EC0]) = v30;
  LODWORD(STACK[0x1FA8]) = v30 ^ v44;
  v102 = v101 ^ v30 ^ v44;
  LODWORD(STACK[0x1F88]) = v101;
  LODWORD(STACK[0x16B8]) = v97 ^ v37;
  LODWORD(v30) = v97 ^ v37 ^ v102;
  LODWORD(STACK[0x2280]) = v49;
  LODWORD(STACK[0x1FC0]) = v49 & 0x7A109B04;
  v103 = v95;
  LODWORD(v88) = ((v95 & (v49 & 0x7A109B04 ^ 0xF4213609)) >> a2) | ((v81 & (v49 & 0x7A109B04 ^ 0xF4213609)) << v64);
  LODWORD(v96) = v63 & 0x7C909B04 ^ 0x9131B50D;
  v104 = STACK[0x1CD0];
  LODWORD(v82) = (v34 & v96) >> STACK[0x1CD0];
  LODWORD(STACK[0x1A00]) = v96;
  v105 = v66;
  LODWORD(STACK[0x16C8]) = v90;
  LODWORD(STACK[0x1B28]) = v30;
  v106 = v30 ^ v98 ^ v90;
  v107 = *(STACK[0x2270] + (v106 ^ 0x59));
  HIDWORD(v72) = v107 ^ 0x11;
  LODWORD(v72) = v107 << 24;
  v108 = (v72 >> 31) ^ 0x3D ^ ((v72 >> 31) >> 2) & 9;
  LODWORD(v88) = v88 ^ (v82 + ((v96 & v66) << v91)) ^ __ROR4__(*(v45 + 4 * BYTE1(v106)), 24) ^ v101 ^ __ROR4__(*(v45 + 4 * BYTE2(v106)), 16);
  LODWORD(STACK[0x1EB0]) = v37 ^ a6;
  LODWORD(v66) = v37 ^ a6 ^ (v30 + 8086465 - ((2 * v30) & 0xF6C782));
  STACK[0x1728] = v106;
  LODWORD(v72) = __ROR4__(*(v45 + ((v106 >> 22) & 0x3FC)), 8);
  v109 = *(v45 + 4 * (-127 * v108));
  LODWORD(STACK[0x1A70]) = v88 ^ v72;
  LODWORD(v88) = v88 ^ v72 ^ v109;
  LODWORD(STACK[0x1B3C]) = v102;
  LODWORD(STACK[0x1EA8]) = v102 ^ v37;
  LODWORD(v46) = v88 ^ v102 ^ v37;
  LODWORD(STACK[0x1E90]) = v66;
  LODWORD(v96) = v46 ^ v66 ^ 0xA21F326B;
  LODWORD(STACK[0x1708]) = v96;
  v110 = (v106 - 1575013781 - ((2 * v106) & 0x443E64D6)) ^ v96;
  v111 = ((v103 & (v49 & 0xAD77BFB ^ 0x15AEF7F7)) >> v104) | ((v81 & (v49 & 0xAD77BFB ^ 0x15AEF7F7)) << v64);
  LODWORD(v30) = v63 & 0x33577BFB ^ 0x45FD943F;
  v112 = v105;
  v113 = (v30 & v105) << v91;
  LOBYTE(v105) = v91;
  LODWORD(v30) = ((v34 & v30) >> a2) + v113;
  LODWORD(v113) = v30 - 943770897 - ((2 * v30) & 0x8F7E65DE);
  v114 = (v110 + 8086465 - ((2 * v110) & 0xF6C782)) ^ a6;
  v115 = v114 ^ v37;
  v116 = v111 ^ __ROR4__(*(v45 + 4 * BYTE1(v115)), 24);
  LODWORD(v72) = __ROR4__(*(v45 + 4 * BYTE2(v115)), 16);
  LODWORD(v30) = v88 ^ LODWORD(STACK[0x2140]);
  v117 = v88 ^ v37;
  LODWORD(v88) = *(v45 + 4 * (v114 ^ v37));
  LODWORD(STACK[0x1750]) = v117;
  LODWORD(v88) = (v116 ^ v72 ^ v88 ^ v117) - 943770897 - ((2 * (v116 ^ v72 ^ v88 ^ v117)) & 0x8F7E65DE);
  v118 = STACK[0x1F58];
  v119 = v46 ^ v37 ^ LODWORD(STACK[0x1F58]);
  STACK[0x1F48] = v115;
  LODWORD(v46) = *(v45 + ((v115 >> 22) & 0x3FC));
  LODWORD(STACK[0x1758]) = v113;
  LODWORD(v88) = v88 ^ v113;
  HIDWORD(v72) = v46;
  LODWORD(v72) = v46;
  v120 = v72 >> 8;
  LODWORD(STACK[0x1EA0]) = v119;
  LODWORD(STACK[0x1748]) = v88 ^ v37;
  STACK[0x1C80] = v34 & (v63 & 0x29341207 ^ 0x7B78260B);
  STACK[0x1E28] = a2;
  LODWORD(v96) = STACK[0x1F98];
  STACK[0x1F98] = v99;
  STACK[0x2140] = STACK[0x2000] ^ 0x8CCB7FBE3F895032;
  LODWORD(STACK[0x1B38]) = STACK[0x2178] + 1677284587;
  LODWORD(STACK[0xE20]) = STACK[0x22E8] ^ 0x11;
  LODWORD(STACK[0x10C0]) = LODWORD(STACK[0x2058]) ^ 0xFFFFFFBE;
  LODWORD(STACK[0xB1C]) = LODWORD(STACK[0x2198]) ^ 0xFFFFFFD4;
  LODWORD(STACK[0xB18]) = LODWORD(STACK[0x2060]) + 17;
  LODWORD(STACK[0x22E8]) = LODWORD(STACK[0x2250]) ^ 0xC0B04508;
  LODWORD(STACK[0x16A8]) = LODWORD(STACK[0x2048]) ^ v37;
  LODWORD(STACK[0x1ADC]) = LODWORD(STACK[0x2030]) >> 8;
  LODWORD(STACK[0x19D8]) = LODWORD(STACK[0x2028]) ^ LODWORD(STACK[0x1BC0]);
  LODWORD(STACK[0xD5C]) = LODWORD(STACK[0x1FA8]) ^ v118;
  STACK[0x1A90] = LODWORD(STACK[0x1F88]) ^ v37;
  LODWORD(v46) = ((v119 ^ v120 ^ v88 ^ v37) + 8086465 - ((2 * (v119 ^ v120 ^ v88 ^ v37)) & 0xF6C782)) ^ a6 ^ v30;
  v121 = v46 ^ v114;
  v122 = STACK[0x2280] & 0x8B41207 ^ 0x1168240F;
  v123 = (v112 & v122) << v105;
  v124 = (STACK[0x1CAC] & v122) >> STACK[0x1CD0];
  STACK[0x1978] = v121;
  STACK[0x1B98] = v123;
  LODWORD(STACK[0x11F4]) = v124 ^ v123;
  LODWORD(STACK[0x1878]) = v88 ^ v120;
  v125 = *(v18 + 8 * ((248 * ((v99 | (-123 * ((v100 - ((v96 + 42) & 0xE3) - 122) ^ (v100 + ((64 - 2 * v100) | 0x1D) + 81)))) != 0)) ^ v10));
  LODWORD(STACK[0x12CC]) = v34 ^ LODWORD(STACK[0xFCC]);
  LODWORD(STACK[0x1B54]) = v46 ^ v118;
  LODWORD(STACK[0x121C]) = v30;
  LODWORD(STACK[0x1CC0]) = v37;
  return v125();
}

void sub_26AA21F0C(int a1@<W2>, int a2@<W6>, int a3@<W8>)
{
  LODWORD(STACK[0x2148]) = v4 - 515;
  STACK[0x2288] = STACK[0x1E58] - 0x260200251C805C92;
  STACK[0x2198] = STACK[0x1E40] + 0x7F27BFDFFE7EE3EFLL;
  LODWORD(STACK[0xE90]) = LODWORD(STACK[0x1ED0]) + LODWORD(STACK[0x21A8]) + (v7 ^ 9);
  LODWORD(STACK[0x1730]) = ~LODWORD(STACK[0x1E38]);
  LODWORD(STACK[0x1B18]) = a3 ^ LODWORD(STACK[0x1F60]);
  LODWORD(STACK[0xDCC]) = LODWORD(STACK[0x1F50]) ^ 0xB532144;
  LODWORD(STACK[0x1028]) = v5 >> 8;
  LODWORD(STACK[0x16E8]) = a2 << 8;
  LODWORD(STACK[0x19F8]) = v6;
  LODWORD(STACK[0x1740]) = v6 >> 8;
  LODWORD(STACK[0x1608]) = v3 ^ v8;
  LODWORD(STACK[0xE84]) = 58;
  LODWORD(STACK[0xE80]) = 143;
  LODWORD(STACK[0xE8C]) = 233;
  LODWORD(STACK[0x1C68]) = 1;
  LODWORD(STACK[0x17C8]) = 1118912687;
  LODWORD(STACK[0x1C00]) = STACK[0x2078];
  LODWORD(STACK[0x1F88]) = a1;
  LODWORD(STACK[0xE88]) = STACK[0x1160];
  JUMPOUT(0x26AA10A10);
}

void sub_26AA2205C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0x1790] = a8;
  v11 = ((v10 - ((2 * STACK[0x2068]) & 0x1996FF7C7F12A064) + (STACK[0x2198] ^ 0x74D) + 0x770B9CA87E6AF112) ^ v8) - STACK[0x2068];
  v12 = STACK[0x1E30] + STACK[0x1E70];
  STACK[0x1E98] = (STACK[0x2010] ^ 0x97537B18A4FBB33ELL) + STACK[0x1568] + 0x71D24B5E3903EBA7 - ((2 * ((STACK[0x2010] ^ 0x97537B18A4FBB33ELL) + STACK[0x1568])) & 0xE3A496BC7207D74ELL);
  STACK[0x1770] += STACK[0x2280] + STACK[0x2058];
  STACK[0x1238] = (STACK[0x1238] ^ 0x8CCB7FBE3F895032) + (v12 ^ 0xEF7EEDEBBDEF74FDLL) + ((2 * v12) & 0xDEFDDBD77BDEE9FALL) - 0x62B36E2D7E6624CBLL - ((2 * ((STACK[0x1238] ^ 0x8CCB7FBE3F895032) + (v12 ^ 0xEF7EEDEBBDEF74FDLL) + ((2 * v12) & 0xDEFDDBD77BDEE9FALL) + 0x1081121442108B03)) & 0x1996FF7C7F12A064);
  STACK[0x1768] += STACK[0x1F70];
  v13 = STACK[0x2060] ^ STACK[0x1F78] ^ (STACK[0x2250] - ((2 * STACK[0x2070]) & 0xC8B3366597BD801ELL) - 0x3A97E35B04ED16ELL);
  v14 = ((((STACK[0x2188] - ((2 * STACK[0x2178]) & 0x1996FF7C7F12A064) + 0x24C86655C35BBEB5) ^ v8) - STACK[0x2178]) ^ (((v13 - 0x73348041C076AFCELL - ((2 * v13) & 0x1996FF7C7F12A064)) ^ v8) - v13) ^ v11) - STACK[0x21A8] + (STACK[0x1228] ^ 0x8CCB7FBE3F895032);
  STACK[0x1228] = v14 - 0x73348041C076AFCELL - ((2 * v14) & 0x1996FF7C7F12A064);
  v15 = (STACK[0x1F80] ^ 0x64599B32CBDEC00FLL) + (STACK[0x11C8] ^ 0x97537B18A4FBB33ELL) + a4;
  STACK[0x11C8] = v15 - 0x68AC84E75B044CC2 - ((2 * v15) & 0x2EA6F63149F7667CLL);
  STACK[0x2198] = v9 + 0x5DA430C30EC13B4BLL;
  JUMPOUT(0x26AA0C660);
}

uint64_t sub_26AA22410@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W8>)
{
  LODWORD(STACK[0x21A0]) = 0;
  LODWORD(STACK[0x22B0]) = 0;
  LODWORD(STACK[0x21A8]) = 0;
  LODWORD(STACK[0x21B8]) = 0;
  *(a1 + 2310) = v4 ^ (((a3 - 123) ^ 0xD9) + 105);
  v6 = *(v5 + 8 * ((23 * ((a2 + 56) < 8)) ^ (a3 - 1080)));
  LODWORD(STACK[0x22E0]) = 1;
  STACK[0x2050] = v3 ^ 0x979E880BD9E4D773;
  LODWORD(STACK[0x22B8]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  LODWORD(STACK[0x21C0]) = 1;
  LODWORD(STACK[0x1DF0]) = 1;
  LODWORD(STACK[0x21C8]) = 1;
  LODWORD(STACK[0x1DF8]) = 1;
  LODWORD(STACK[0x1E00]) = 1;
  LODWORD(STACK[0x22C0]) = 1;
  LODWORD(STACK[0x22A0]) = 1;
  LODWORD(STACK[0x21D0]) = 1;
  LODWORD(STACK[0x1E08]) = 1;
  LODWORD(STACK[0x1E10]) = 1;
  LODWORD(STACK[0x21D8]) = 1;
  LODWORD(STACK[0x1E20]) = 1;
  LODWORD(STACK[0x21F0]) = 1;
  LODWORD(STACK[0x1F90]) = 1;
  return v6();
}

uint64_t sub_26AA224D8()
{
  LODWORD(STACK[0x22E0]) = 0;
  LODWORD(STACK[0x1DE8]) = 0;
  LODWORD(STACK[0x1920]) = 0;
  LODWORD(STACK[0x1908]) = 0;
  LODWORD(STACK[0x1DB8]) = 0;
  LODWORD(STACK[0x1910]) = 0;
  LODWORD(STACK[0x1918]) = 0;
  LODWORD(STACK[0x22A0]) = 0;
  LODWORD(STACK[0x21D8]) = 0;
  LODWORD(STACK[0x21B8]) = 0;
  LODWORD(STACK[0x18C8]) = 0;
  LODWORD(STACK[0x18D0]) = 0;
  LODWORD(STACK[0x21C0]) = 0;
  LODWORD(STACK[0x1E00]) = 0;
  LODWORD(STACK[0x1E08]) = 0;
  LODWORD(STACK[0x21F8]) = 0;
  LODWORD(STACK[0x21D0]) = 0;
  LODWORD(STACK[0x1E10]) = 0;
  LODWORD(STACK[0x21C8]) = 0;
  LODWORD(STACK[0x1F90]) = 0;
  LODWORD(STACK[0x21A0]) = 0;
  LODWORD(STACK[0x21A8]) = 0;
  v2 = *(v1 + 8 * (((((v0 + 1955974602) & 0x8B6A247F) + 7250) * (STACK[0x1DF0] & 1)) ^ v0));
  LODWORD(STACK[0x22E8]) = 1;
  STACK[0x1660] = STACK[0x1228];
  STACK[0x1670] = STACK[0x1238];
  LODWORD(STACK[0x1994]) = STACK[0x22D0];
  LODWORD(STACK[0x1900]) = 1;
  return v2();
}

uint64_t sub_26AA22598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x828];
  *(a7 + 0x67FF % ((2 * v7) ^ 0x14Au)) = 17;
  *(v9 - 26412) = 16;
  return (*(v8 + 8 * (v7 + 734)))();
}

uint64_t sub_26AA2279C@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W8>)
{
  v8 = (a3 + 1250167421) & 0xB57BEDDF;
  STACK[0x2050] = v3 + ((v6 | (STACK[0x2050] << 56)) ^ 0x3ECDF3137D1F644DLL) - (v5 & (2 * ((v6 | (STACK[0x2050] << 56)) ^ 0x3ECDF3137D1F644DLL))) + v8 - 31;
  LODWORD(STACK[0x22C0]) = 0;
  LODWORD(STACK[0x22A0]) = 0;
  LODWORD(STACK[0x21D8]) = 0;
  LODWORD(STACK[0x1E20]) = 0;
  LODWORD(STACK[0x22B0]) = 0;
  LODWORD(STACK[0x21F0]) = 0;
  LODWORD(STACK[0x1F90]) = 0;
  LODWORD(STACK[0x21A8]) = 0;
  LODWORD(STACK[0x21B8]) = 0;
  *(a1 + 2491) = v4 ^ 0x2F;
  LODWORD(STACK[0x22E0]) = 1;
  v9 = *(v7 + 8 * ((11 * ((((v8 - 1067378729) ^ ((a2 + 56) < 8)) & 1) == 0)) ^ (v8 + 4533)));
  LODWORD(STACK[0x22B8]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  LODWORD(STACK[0x21C0]) = 1;
  LODWORD(STACK[0x1DF0]) = 1;
  LODWORD(STACK[0x21C8]) = 1;
  LODWORD(STACK[0x1DF8]) = 1;
  LODWORD(STACK[0x1E00]) = 1;
  LODWORD(STACK[0x21D0]) = 1;
  LODWORD(STACK[0x1E08]) = 1;
  LODWORD(STACK[0x1E10]) = 1;
  LODWORD(STACK[0x21A0]) = 1;
  return v9();
}

void sub_26AA227F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x1D88]) = v9;
  LODWORD(STACK[0x1958]) = v12;
  STACK[0x1008] = v10;
  LODWORD(STACK[0x134C]) = v8;
  v13 = (STACK[0x1F38] ^ 0xFFFFFF92) - ((2 * (STACK[0x1F38] ^ 0xFFFFFF92)) & 0xFFFFFF87);
  v15 = STACK[0x1F30] - ((2 * STACK[0x1F30]) & 0xDDDDDDDD);
  v16 = STACK[0x15F0] - ((2 * STACK[0x15F0]) & 0x22);
  v17 = (STACK[0x1600] >> 8) - ((2 * (STACK[0x1600] >> 8)) & 0x22);
  v18 = STACK[0x15E8] - ((2 * STACK[0x15E8]) & 0x34);
  LODWORD(STACK[0x1768]) = ((LODWORD(STACK[0x158C]) ^ 0x11111111) << 24) | ((LODWORD(STACK[0x1588]) ^ 0x11) << 16) | (LODWORD(STACK[0x15D8]) << 8) | STACK[0x1570];
  v19 = v11;
  v20 = STACK[0x1590] + (~(2 * STACK[0x1590]) | 0xFFFFFFDD);
  v21 = (STACK[0x15D0] >> 8) - ((2 * (STACK[0x15D0] >> 8)) & 0x22);
  v22 = STACK[0x1580] + (~LODWORD(STACK[0x157C]) | 0x25);
  v23 = (STACK[0x16E0] >> 16) - ((2 * (STACK[0x16E0] >> 16)) & 0x1A);
  LODWORD(STACK[0xDAC]) = HIDWORD(STACK[0x17C0]) | STACK[0x1668];
  LODWORD(STACK[0xDB0]) = STACK[0x1660] - 139998513 - ((2 * STACK[0x1660]) & 0x14F959E);
  v24 = STACK[0x16A0] - ((2 * STACK[0x16A0]) & 0x22);
  v25 = STACK[0x16D8] - 2 * (STACK[0x16D8] & 0xF);
  v26 = STACK[0x16D0] - ((2 * STACK[0x16D0]) & 0x22222222);
  v27 = (STACK[0x1680] >> 16) - ((2 * (STACK[0x1680] >> 16)) & 0x22);
  v28 = STACK[0x1670] - 2 * (STACK[0x1670] & 0x1F);
  LODWORD(STACK[0x22E0]) = (HIBYTE(STACK[0x1EC0]) ^ 0x44) - ((2 * HIBYTE(STACK[0x1EC0])) & 0x22);
  LODWORD(STACK[0x22D0]) = STACK[0x1EC8] - ((2 * STACK[0x1EC8]) & 0x22222222);
  LODWORD(STACK[0x22C0]) = STACK[0x1EB8] - ((2 * STACK[0x1EB8]) & 0x22222222);
  LODWORD(STACK[0x22B8]) = STACK[0x1EB0] - ((2 * STACK[0x1EB0]) & 0x22222222);
  LODWORD(STACK[0x2018]) = STACK[0x1628] ^ 0x9DA2A824;
  v29 = (STACK[0x1630] ^ 0x5B) - ((2 * (STACK[0x1630] ^ 0x5B)) & 0x22222222);
  LODWORD(STACK[0x1770]) = HIDWORD(STACK[0x1658]) - 1575013781 - ((2 * HIDWORD(STACK[0x1658])) & 0x443E64D6);
  v30 = (STACK[0x1EA8] ^ 2) - ((2 * STACK[0x1EA8]) & 0x22222222);
  v31 = (STACK[0x1EA0] ^ 2) - ((2 * STACK[0x1EA0]) & 0x22222222);
  *(&v32 + 1) = v7;
  *&v32 = STACK[0x2280];
  v33 = (HIBYTE(STACK[0x1610]) ^ 2) - ((2 * HIBYTE(STACK[0x1610])) & 0x1E8);
  v34 = *(STACK[0x12A0] + ((v32 >> 62) ^ 0x2ALL)) ^ 0xFFFFFFA9;
  v35 = v34 - ((2 * v34 + 62) & 0x22);
  v36 = ((*(STACK[0x2160] + (STACK[0x1E90] ^ 0xB4)) ^ 0x11) - 77) ^ 0xFFFFFFF5;
  STACK[0x1830] = HIDWORD(STACK[0x1650]);
  STACK[0x1D68] = HIDWORD(STACK[0x1F00]);
  STACK[0x1D60] = STACK[0x1F20] >> 40;
  STACK[0x17F0] = STACK[0x1688] >> 40;
  v37 = 11 * (STACK[0x1BA8] ^ 0x8C3);
  LODWORD(STACK[0xC2C]) = v13 + 67;
  LODWORD(STACK[0xF0C]) = LODWORD(STACK[0x1F40]) ^ 0x63;
  LODWORD(STACK[0xED8]) = v15 + v37 - 25;
  LODWORD(STACK[0xF04]) = v16 + 17;
  LODWORD(STACK[0xED0]) = v17 + 17;
  LODWORD(STACK[0xC30]) = v18 - 102;
  LODWORD(STACK[0xEC0]) = v20 + 18;
  LODWORD(STACK[0xEC4]) = v21 + 17;
  LODWORD(STACK[0xC28]) = v22 + 110;
  LODWORD(STACK[0xC20]) = v23 - 115;
  LODWORD(STACK[0xEBC]) = v24 + 17;
  LODWORD(STACK[0xED4]) = LODWORD(STACK[0x1700]) ^ 0x63;
  LODWORD(STACK[0xEB8]) = LODWORD(STACK[0x16F8]) - 34;
  LODWORD(STACK[0xC18]) = LODWORD(STACK[0x1690]) ^ 0x63;
  LODWORD(STACK[0xC1C]) = v25 - 113;
  LODWORD(STACK[0xEB4]) = v26 + 17;
  LODWORD(STACK[0xC14]) = v27 + 17;
  LODWORD(STACK[0x1088]) = v28 - 97;
  LODWORD(STACK[0xF18]) = LODWORD(STACK[0x1F28]) ^ 0x16;
  LODWORD(STACK[0x1960]) = LODWORD(STACK[0x1F10]) - 141034674;
  LODWORD(STACK[0x13F0]) = STACK[0x1F08] ^ 0xCB;
  LODWORD(STACK[0x1F30]) = STACK[0x1BF8];
  v38 = STACK[0x1F18] ^ 0x13;
  LODWORD(STACK[0x1DB0]) = STACK[0x1EE8] ^ 0xE4;
  LODWORD(STACK[0x1404]) = STACK[0x1EF0] ^ 0xE1;
  STACK[0xEF8] = (LODWORD(STACK[0x22E0]) + 17);
  LODWORD(STACK[0xF08]) = LODWORD(STACK[0x22D0]) + 17;
  LODWORD(STACK[0xEA8]) = LODWORD(STACK[0x1EE0]) ^ 0x31;
  LODWORD(STACK[0xEAC]) = LODWORD(STACK[0x1ED8]) ^ 0x62;
  LODWORD(STACK[0xECC]) = LODWORD(STACK[0x1ED0]) ^ 0x63;
  LODWORD(STACK[0xC10]) = LODWORD(STACK[0x22C0]) + 17;
  LODWORD(STACK[0xC24]) = LODWORD(STACK[0x22B8]) + 17;
  v39 = STACK[0x1648] ^ 0x5B326D15;
  LODWORD(STACK[0xCEC]) = v29 + 17;
  LODWORD(STACK[0xEF4]) = v30 + 17;
  LODWORD(STACK[0xEB0]) = v31 + 17;
  LODWORD(STACK[0xC34]) = v33 + 116;
  LODWORD(STACK[0xEA4]) = v7 - ((2 * v7) & 0x1F4) - 6;
  LODWORD(STACK[0xCFC]) = v35 + 112;
  LODWORD(STACK[0x1F18]) = LODWORD(STACK[0x1BB0]) + 1012136935;
  LODWORD(STACK[0xF10]) = a7 - ((2 * a7) & 0x16) - 117;
  LODWORD(STACK[0xCE8]) = v36 - ((2 * v36 + 62) & 0x22) + 112;
  v40 = (v19 ^ 0x75) - ((2 * (v19 ^ 0x75)) & 0x22222222) + 17;
  STACK[0x10D8] = STACK[0x2288] - 0x21330D6E34E212AELL;
  STACK[0x10E0] = STACK[0x1F78] + 0x7E1A39C58D188722;
  LODWORD(STACK[0x2098]) = v39;
  LODWORD(STACK[0x1F28]) = STACK[0x1F70];
  LODWORD(STACK[0x1BF8]) = v38;
  STACK[0x1DC8] = LODWORD(STACK[0x16B8]);
  LODWORD(STACK[0xFF0]) = STACK[0x16C0];
  LODWORD(STACK[0x18F8]) = STACK[0x16A8];
  LODWORD(STACK[0x1850]) = STACK[0x1944];
  LODWORD(STACK[0xCE4]) = STACK[0x1678];
  LODWORD(STACK[0xF24]) = STACK[0x1428];
  LODWORD(STACK[0x107C]) = LODWORD(STACK[0x115C]) ^ 2;
  LODWORD(STACK[0xF34]) = LODWORD(STACK[0x1FA0]) ^ 0x63;
  STACK[0x1080] = 175;
  LODWORD(STACK[0xEF0]) = 16;
  LODWORD(STACK[0xF20]) = STACK[0xF2C];
  LODWORD(STACK[0xF28]) = v40;
  LODWORD(STACK[0xEC8]) = v40;
  STACK[0xCF0] = STACK[0x1C90];
  LODWORD(STACK[0xF1C]) = STACK[0xF30];
  JUMPOUT(0x26AA22DE4);
}

uint64_t sub_26AA22F78(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = ((v6 | (STACK[0x2050] << 56)) ^ 0x3ECDF3137D1F644DLL) - 0x68AC84E75B044CC2 - ((((v6 | (STACK[0x2050] << 56)) ^ 0x3ECDF3137D1F644DLL) << ((v4 + 20) ^ 0x1Eu)) & v5);
  LODWORD(STACK[0x21A0]) = 0;
  *(a1 + 2366) = v7 ^ 0x2F;
  v10 = *(v8 + 8 * ((((a4 + 56) < 8) * (((v4 - 259) | 0xA1) + 1791)) ^ (v4 + 2792)));
  LODWORD(STACK[0x22E0]) = 1;
  STACK[0x2050] = v9;
  LODWORD(STACK[0x22B8]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  LODWORD(STACK[0x21C0]) = 1;
  LODWORD(STACK[0x1DF0]) = 1;
  LODWORD(STACK[0x21C8]) = 1;
  LODWORD(STACK[0x1DF8]) = 1;
  LODWORD(STACK[0x1E00]) = 1;
  LODWORD(STACK[0x22C0]) = 1;
  LODWORD(STACK[0x22A0]) = 1;
  LODWORD(STACK[0x21D0]) = 1;
  LODWORD(STACK[0x1E08]) = 1;
  LODWORD(STACK[0x1E10]) = 1;
  LODWORD(STACK[0x21D8]) = 1;
  LODWORD(STACK[0x1E20]) = 1;
  LODWORD(STACK[0x22B0]) = 1;
  LODWORD(STACK[0x21F0]) = 1;
  LODWORD(STACK[0x1F90]) = 1;
  LODWORD(STACK[0x21A8]) = 1;
  LODWORD(STACK[0x21B8]) = 1;
  return v10();
}

uint64_t sub_26AA23010(uint64_t a1)
{
  v4 = (v1 - 569);
  STACK[0x21F8] = v4;
  v5 = *(v3 + 8 * ((((v4 ^ 0x447) - 1073) * (STACK[0x1E00] & 1)) ^ v1));
  LODWORD(STACK[0x21D8]) = 1970035400;
  v6 = STACK[0xAA0];
  STACK[0x21D0] = STACK[0x1C18];
  STACK[0x21F0] = STACK[0xA68];
  STACK[0x2050] = v2;
  LODWORD(STACK[0x1994]) = STACK[0x22D0];
  LODWORD(STACK[0xFF4]) = STACK[0x1678];
  LODWORD(STACK[0x1104]) = STACK[0x1428];
  return v5(a1, v6);
}

uint64_t sub_26AA23088@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x22E0]) = 0;
  LODWORD(STACK[0x1DB8]) = 0;
  LODWORD(STACK[0x1918]) = 0;
  LODWORD(STACK[0x22A0]) = 0;
  LODWORD(STACK[0x21D8]) = 0;
  LODWORD(STACK[0x21B8]) = 0;
  LODWORD(STACK[0x18C8]) = 0;
  LODWORD(STACK[0x18D0]) = 0;
  LODWORD(STACK[0x21C0]) = 0;
  LODWORD(STACK[0x1E00]) = 0;
  LODWORD(STACK[0x1E08]) = 0;
  LODWORD(STACK[0x21F8]) = 0;
  LODWORD(STACK[0x21D0]) = 0;
  LODWORD(STACK[0x1E10]) = 0;
  LODWORD(STACK[0x21C8]) = 0;
  LODWORD(STACK[0x1F90]) = 0;
  LODWORD(STACK[0x21A0]) = 0;
  LODWORD(STACK[0x21A8]) = 0;
  v237 = (v235 - 1081);
  LODWORD(STACK[0xFF0]) = a1 ^ 0xBE08A25D;
  STACK[0x2050] = v236 ^ v237 ^ 0x97537B186908A05CLL;
  LODWORD(STACK[0x22E8]) = 1;
  v238 = v237;
  STACK[0x1660] = STACK[0x1228];
  STACK[0x1680] = STACK[0x2010];
  STACK[0x1670] = STACK[0x1238];
  LODWORD(STACK[0x1994]) = STACK[0x22D0];
  LODWORD(STACK[0x1DE8]) = 1;
  LODWORD(STACK[0x1920]) = 1;
  LODWORD(STACK[0x1900]) = 1;
  LODWORD(STACK[0x1908]) = 1;
  LODWORD(STACK[0x1910]) = 1;
  v239 = STACK[0x22D8];
  v240 = STACK[0x2038];
  v241 = STACK[0x2040];
  v242 = STACK[0x2028];
  v243 = STACK[0x1FA8];
  v244 = STACK[0x1FB0];
  v245 = STACK[0x2030];
  STACK[0x1C90] = STACK[0x1C90];
  LODWORD(STACK[0x2030]) = v245;
  STACK[0x1FB0] = v244;
  LODWORD(STACK[0x1FA8]) = v243;
  STACK[0x2028] = v242;
  LODWORD(STACK[0x2040]) = v241;
  LODWORD(STACK[0x2038]) = v240;
  v1 = (v235 - 1046) | 0x101u;
  v2 = 5 * (v237 ^ 0x31E);
  v3 = *(v239 + 4);
  v4 = *STACK[0x1280];
  v5 = *STACK[0x11F8];
  v6 = *STACK[0x1350];
  v7 = *(v239 + 39);
  v8 = *v5;
  v9 = v238;
  STACK[0x22C0] = v238;
  v10 = *(v239 + 48);
  v11 = *(v239 + 18);
  v12 = *(v239 + 17);
  LODWORD(v239) = *STACK[0x1370];
  LOBYTE(v244) = v11 + 18;
  v13 = v4[55];
  STACK[0x2010] = v1;
  STACK[0x21F0] = v2;
  v14 = v13 << ((v1 - 14) ^ v2);
  v15 = STACK[0x1200];
  v16 = *STACK[0x1200];
  v17 = *(STACK[0x22D8] + 37);
  v18 = *(&off_279CA5FD0 + (v9 | 0x80));
  v19 = v18 + 272;
  v20 = (v7 << 16) | ((*STACK[0x1398] ^ 0x5BLL) << 24) | v6 ^ 0x49;
  v21 = (*(v18 + 272 + (v244 ^ 0xC3)) + (v244 ^ 0xC6)) ^ 0x52;
  v22 = v18 + 534;
  v23 = *(v18 + 534 + (*(STACK[0x22D8] + 16) ^ 0x64));
  v24 = *(STACK[0x22D8] + 30);
  v25 = v20 + ((v10 << 40) | ((v239 ^ 0x5B) << 32)) + v14 + ((v16 ^ 0x49) << 8);
  v26 = v5[2];
  v27 = v25 ^ ((*STACK[0x1368] ^ 0x49u) << 56);
  v28 = v5[1];
  v29 = *STACK[0x13A8];
  v30 = *STACK[0x1360];
  v31 = (v8 << 24) | (v12 << 8) | (*(STACK[0x22D8] + 25) << 16) | v17;
  v32 = v17 & 0x20;
  v33 = (*STACK[0x1390] ^ 0x5BLL) << (v17 & 0x20);
  v34 = *STACK[0x1378] ^ 0x49 | ((*STACK[0x1380] ^ 0x49) << 8);
  v35 = v18 + 5;
  v36 = *(v18 + 5 + (*STACK[0x1388] ^ 0xE9));
  STACK[0x22B0] = v18 + 5;
  v37 = ((v21 >> 5) | (8 * v21)) | (v31 << 32);
  v38 = v33 << (v32 ^ 0x20u);
  v39 = *v4 << 40;
  STACK[0x22D0] = v18 + 805;
  v40 = STACK[0x1208];
  LOBYTE(v18) = v30 ^ 0x51 ^ (*(v18 + 805 + (v30 ^ 0x9F)) - ((2 * *(v18 + 805 + (v30 ^ 0x9F))) & 0x92) + 73);
  v41 = v34 & 0xFFFFFFFFFF00FFFFLL | ((45 * (((v23 >> 4) | (16 * v23)) ^ 0x1B)) << 16);
  v42 = v4[26];
  v43 = v39 | ((61 * (v36 ^ 0xE8)) << 48) | ((*STACK[0x1358] ^ 0x5Bu) << 56);
  v44 = v42 | (v42 << 8);
  v42 = 0x8F686EAF10541EC9 - v42;
  v45 = v41 | ((*STACK[0x1208] ^ 0x5BLL) << 24);
  v46 = v44 + 0x70979150EFABE137;
  v47 = (v44 + 0x70979150EFABE137) & v42;
  v48 = v46 ^ v42;
  LODWORD(v46) = *STACK[0x13B8];
  v49 = (v29 ^ 0x49) & 0xFFFFFFFFFFFF00FFLL | (((v18 >> 1) | (v18 << 7)) << 8);
  v50 = v48 + 2 * v47;
  v51 = v4[50];
  v52 = v49 | (*(STACK[0x22D8] + 53) << 16);
  v53 = v4[30];
  STACK[0x22B8] = v3;
  v54 = (v3 | (v28 << 56) | (v24 << 40)) ^ __ROR8__(v37 ^ 0xE4DAF4DFED6519CLL, 32) ^ (v26 << 48);
  v55 = (v43 | v45) ^ v38;
  v56 = (*(STACK[0x22D8] + 38) << 40) | (v53 << 32) | *STACK[0x13C8] ^ 0x49 | (v4[47] << 16) | (*(STACK[0x22D8] + 1) << 24) | (v4[5] << 48) | (*(STACK[0x22D8] + 28) << 56);
  v57 = ((v46 ^ 0x49) << 56) | ((*STACK[0x13B0] ^ 0x49u) << 48) | ((*STACK[0x13C0] ^ 0x5Bu) << 32) | ((*STACK[0x13A0] ^ 0x5Bu) << 40) | v52 | (v51 << 24);
  v58 = v57 ^ v56 ^ v50;
  v59 = v27 ^ v56 ^ v50;
  v60 = v55 ^ v54 ^ 0xBDFEF69B2C9569DELL;
  v61 = (v55 ^ 0x7626AF9A9F2FC3F6 ^ v60 & (v54 ^ 0xCBD85901B3BAAA28)) - (v55 ^ 0x7626AF9A9F2FC3F6);
  v62 = (v58 ^ 0xC5E40C8A7B97C2A0) & (v57 ^ 0x3E3A8872C2249489) ^ v60;
  v63 = v59 ^ 0xD373D5F8E0D38863;
  v59 ^= 0x2C8C2A071F2C779CuLL;
  v64 = v59 & (v54 ^ 0x3427A6FE4C4555D7) ^ v58 ^ 0xC5E40C8A7B97C2A0;
  v65 = v63 ^ v61;
  v66 = v54 ^ (v57 ^ 0xC1C5778D3DDB6B76) & (v55 ^ v54 ^ 0x42010964D36A9621) ^ 0x557DD43D7F05DC95 ^ v65;
  LOBYTE(v59) = v59 & 0x24;
  v67 = v64 ^ 0x5D8C518A7E9F70FFLL ^ v65;
  v68 = v57 ^ (v58 ^ 0x3A1BF37584683D5FLL) & v63 ^ v62 ^ 0x7480353816493051;
  v69 = v66 ^ (v66 >> 39) ^ (8 * v66);
  v70 = v68 - ((2 * v68) & 0xF8AC269E81D4E22CLL);
  v71 = v67 << v59;
  *(&v72 + 1) = v62;
  *&v72 = v62 ^ 0x89971FD9F7ECB95CLL;
  v73 = v69 + (v66 >> 61) - 2 * (v69 & (v66 >> 61)) + (v66 << 25) - 2 * ((v69 + (v66 >> 61) - 2 * (v69 & (v66 >> 61))) & (v66 << 25));
  v74 = v64 ^ 0x2FEB0EC9DEF008EFLL ^ __ROR8__(v64 ^ 0x2FEB0EC9DEF008EFLL, 7) ^ ((v64 ^ 0x2FEB0EC9DEF008EFLL) >> 41) ^ ((v64 ^ 0x2FEB0EC9DEF008EFLL) << 23);
  v75 = (v72 >> 1) ^ v62 ^ 0x89971FD9F7ECB95CLL ^ ((v62 ^ 0x89971FD9F7ECB95CLL) >> 6) ^ ((v62 ^ 0x89971FD9F7ECB95CLL) << 58) ^ v73;
  v76 = (v70 + 0x7C56134F40EA7116) ^ __ROR8__(v70 + 0x7C56134F40EA7116, 10) ^ ((v70 + 0x7C56134F40EA7116) >> 17) ^ ((v70 + 0x7C56134F40EA7116) << 47);
  v77 = (v67 << v59 << (v59 ^ 0x24u)) ^ v67 ^ v74 ^ ((v67 >> 19) ^ (v67 >> 28) | (v67 << 45));
  v78 = (__ROR8__(__ROR8__(v73, 47) ^ 0xA98E6E502048877ELL, 17) ^ 0xBC40AB38C8D7EFDBLL) & v75 ^ v77;
  v79 = (v76 ^ -v76 ^ (v74 - (v76 ^ v74))) + v74;
  v80 = v79 ^ v73 & ~v77;
  v81 = v78 ^ v80;
  v82 = v73 ^ (~(4 * v75) + 3 * v75) & v76 ^ v78;
  v83 = v79 & ~v76;
  v84 = v77 & ~v79;
  v85 = v81 ^ 0xA2E5699D9BE030ALL;
  v81 >>= 19;
  v86 = v83 ^ v75;
  v87 = v81 ^ 0x145CAD33B37;
  v88 = v71 == 0;
  v89 = (v81 ^ 0x145CAD33B37) & 0x1633E749E935;
  v90 = v82 ^ 0x3BC490A591944AD2;
  v91 = v81 ^ 0x14408921202;
  if (v88)
  {
    v91 = v87;
  }

  v92 = v89 | v91 & 0x9CC18B616CALL;
  v93 = (v80 ^ -v80 ^ (0x9E3D752AB2FC9EF7 - (v80 ^ 0x9E3D752AB2FC9EF7))) - 0x61C28AD54D036109;
  v94 = v76 ^ 0x70CB13AC1B1AF137 ^ v84 ^ v86;
  v95 = (((v86 ^ 0xC9E996FD05D8CD0ELL) >> 6) | (v86 << 63)) ^ ((v86 ^ 0xC9E996FD05D8CD0ELL) << 58) ^ ((v86 ^ 0xC9E996FD05D8CD0ELL ^ -(v86 ^ 0xC9E996FD05D8CD0ELL) ^ (((v86 ^ 0xC9E996FD05D8CD0ELL) >> 1) - (((v86 ^ 0xC9E996FD05D8CD0ELL) >> 1) ^ v86 ^ 0xC9E996FD05D8CD0ELL))) + ((v86 ^ 0xC9E996FD05D8CD0ELL) >> 1));
  v96 = v93 ^ __ROR8__(v93, 7) ^ (v93 >> 41) ^ (v93 << 23);
  v97 = v85 ^ __ROR8__(v85, 28) ^ (v92 | (v85 << 45)) ^ v96;
  v98 = v94 ^ __ROR8__(v94, 10) ^ (v94 >> 17) ^ (v94 << 47);
  v99 = ((v90 ^ (v90 >> 61)) + 8 * v90 - 2 * ((8 * v90) & v90)) ^ __ROR8__(v90, 39);
  v100 = v95 ^ v99;
  v101 = v98 & ~(v95 ^ v99);
  v102 = v96 ^ v98;
  v103 = v95 & ~v99;
  v104 = v96 & ~v98;
  v105 = v99 & ~v97 ^ v102;
  v106 = v97 & ~v102;
  v107 = (v101 ^ -v101 ^ (v99 - (v101 ^ v99))) + v99;
  v108 = v97 ^ v103;
  if ((v105 & 0x8000 & v108) != 0)
  {
    v109 = -(v105 & 0x8000);
  }

  else
  {
    v109 = v105 & 0x8000;
  }

  v110 = v105 & 0xFFFFFFFFFFFF7FFFLL ^ 0xB3CD70A87575A12CLL ^ (v109 + v108);
  v111 = v100 ^ v104;
  v112 = v108 ^ 0xB940CCFFD8670107 ^ v107;
  v114 = (v110 << 36) & 0x4000000000000000;
  v115 = ((v110 << 45) ^ (0xFFFFE00000000000 * v110) ^ ((v110 ^ (v110 >> 19)) - (v110 ^ (v110 >> 19) ^ (v110 << 45)))) + (v110 ^ (v110 >> 19));
  v116 = v98 ^ 0x116FD9285FA9D531 ^ v111 ^ v106;
  v117 = v115 ^ (v110 >> 28);
  v118 = (v110 << 36) & 0xBFFFFFFFFFFFFFFFLL;
  v119 = STACK[0x22F8];
  if ((v115 & v114) != 0)
  {
    v120 = -v114;
  }

  else
  {
    v120 = v114;
  }

  v121 = v116 ^ __ROR8__(v116, 10);
  v122 = v118 ^ 0xFD6C7BDF04BE56B0 ^ (v120 + v117);
  v88 = v38 == 0;
  v123 = v121 ^ 0xD118516294FBDE3ALL;
  if (v88)
  {
    v123 = 0x2EE7AE9D6B0421C5;
  }

  v88 = v56 == v50;
  v124 = v112 ^ __ROR8__(v112, 61) ^ (v112 >> 39) ^ (v112 << 25);
  v125 = __ROR8__(v122, 23) ^ 0x7CAD61FAD8F7BE09;
  v126 = v123 & v121;
  if (v88)
  {
    v126 = 0x2EE7AE9D6B0421C5;
  }

  v127 = v111 ^ 0xEC00EC1CB6415635 ^ (v111 >> 1) ^ ((v111 ^ 0xEC00EC1CB6415635) << 58) ^ ((v111 >> 6) | ((v111 ^ 0xEC00EC1CB6415635) << 63)) ^ 0x75B075BE29F9AE42;
  v128 = v124 ^ v127;
  v113 = v105 ^ 0xAFEBBBB6D0323ED7;
  v129 = v113 & 0xC9FDEB4879E1CB8 ^ (v113 << 57) ^ (v113 >> 41) ^ (v113 << 23) ^ ((v113 >> 7) & 0x160214B7861E347 ^ v113 & 0xF360214B7861E347 | (v113 >> 7) & 0x9FDEB4879E1CB8);
  v130 = (v126 & v121 ^ (v116 >> 17) & 0x2E9D6B0421C5 | v121 & 0xD118516294FBDE3ALL ^ (v116 >> 17) & 0x516294FBDE3ALL) ^ (v116 << 47);
  v131 = v130 ^ v129;
  v132 = v129 ^ __ROR8__(v125, 41);
  v133 = v129 & ~v130 ^ v124 ^ v127;
  v134 = v130 & ~(v124 ^ v127);
  if (v16 == 73)
  {
    v135 = ~v124;
  }

  else
  {
    v135 = v127;
  }

  v136 = v124 & ~v132 ^ v131;
  v137 = v132 ^ v135 & v128;
  v138 = v133 ^ v130 ^ v132 & ~v131;
  v139 = __ROR8__(v138, 1);
  v140 = v139 >> 63;
  v141 = v137 ^ (v134 + v124 - 2 * (v134 & v124));
  v142 = v138 ^ 0xAC5AE21324C36A14;
  v143 = v137 ^ 0xB88B4A5AA1A6D7A1 ^ v136 ^ __ROR8__(v137 ^ 0xB88B4A5AA1A6D7A1 ^ v136, 19) ^ ((v137 ^ 0xB88B4A5AA1A6D7A1 ^ v136) >> 28) ^ ((v137 ^ 0xB88B4A5AA1A6D7A1 ^ v136) << 36);
  v144 = v141 ^ 0x27DBA4A183F200E2 ^ (v141 >> 39) ^ __ROR8__(v141 ^ 0x27DBA4A183F200E2, 61) ^ ((v141 ^ 0x27DBA4A183F200E2) << 25);
  v145 = v144 ^ 0x4FB749;
  v146 = v142 ^ (v142 >> 10);
  v147 = (v146 & 0x400000 | (v142 << 54)) ^ v146 & 0xFFFFFFFFFFBFFFFFLL;
  v148 = v143 & 0x8000;
  *(&v149 + 1) = v133;
  *&v149 = v133 ^ 0x4E7E63312C1E4854;
  v150 = ((v136 ^ 0xBB31CE1870C9BE1FLL) >> 41) ^ ((v136 ^ 0xBB31CE1870C9BE1FLL) >> 7) ^ ((v136 ^ 0xBB31CE1870C9BE1FLL) << 23) ^ (0x200000000000001 * (v136 ^ 0xBB31CE1870C9BE1FLL) - (((v136 ^ 0xBB31CE1870C9BE1FLL) << 58) & (2 * (v136 ^ 0xBB31CE1870C9BE1FLL))));
  v151 = (v149 >> 1) ^ v133 ^ 0x4E7E63312C1E4854 ^ ((v133 ^ 0x4E7E63312C1E4854) >> 6) ^ ((v133 ^ 0x4E7E63312C1E4854) << 58);
  v152 = (v142 >> 17) & 0x20000000000;
  v88 = (v146 & v152) == 0;
  v153 = v144 ^ 0x4FB749 ^ v151;
  v154 = v144 ^ 0xFFFFFFFFFFB048B6;
  if (!v88)
  {
    v152 = -v152;
  }

  v155 = v152 + v147;
  v156 = v155 ^ (v142 >> 17) & 0xFFFFFDFFFFFFFFFFLL;
  v157 = v154 & v151;
  v158 = v143 & 0xFFFFFFFFFFFF7FFFLL;
  v159 = v157 & 0x80000000;
  v88 = (v139 & 0x10) == 0;
  v160 = 0x40000000000000;
  if (!v88)
  {
    v160 = 0xFFC0000000000000;
  }

  v161 = (v160 + (v142 << 49)) | (v142 >> 15) & 3;
  if ((v148 & v150) != 0)
  {
    v162 = -v148;
  }

  else
  {
    v162 = v148;
  }

  *(&v163 + 1) = v156;
  *&v163 = v155;
  *&v163 = __ROR8__((v163 >> 62) ^ v161, 2);
  v164 = (v162 + v150) ^ v158;
  v165 = v163 ^ 0x10000000000000 ^ v150;
  v166 = v157 & 0xFFFFFFFF7FFFFFFFLL;
  v167 = (v163 ^ 0xFFEFFFFFFFFFFFFFLL) & v150;
  v168 = v164 & ~v165 ^ v163 ^ 0x10000000000000;
  v169 = (v163 ^ 0x10000000000000) & ~v153 ^ v145;
  v170 = v165 ^ v145 & ~v164;
  if ((v164 & v159) != 0)
  {
    v159 = -v159;
  }

  v171 = (v159 + v164) ^ v166;
  v172 = v169 & v171;
  v173 = v169 + v171;
  v174 = v171 ^ 0xC3C338A519B417ABLL ^ v170;
  v175 = v167 ^ v153;
  v176 = v168 ^ v167 ^ v153;
  v177 = v173 - 2 * v172;
  v178 = (v176 ^ v174 ^ v177) + (v176 ^ v174) - 2 * ((v176 ^ v174 ^ v177) & (v176 ^ v174));
  v179 = v178 ^ 0x26B1EDB0B8DB53B6;
  v180 = (0x3BD788B7E063D7ECLL - (v176 & 0x200000000000000)) ^ v176 & 0xFDFFFFFFFFFFFFFFLL;
  v181 = 61 * (*(v35 + ((v178 ^ 0x26B1EDB0B8DB53B6uLL) >> 61) + 160) ^ 0xE8);
  v182 = v170 ^ 0x95C040BE0E8C6D39;
  v183 = v174 ^ __ROR8__(v174, 19) ^ ((v177 ^ v174 ^ v178) >> 28) ^ ((v177 ^ v174 ^ v178) << 36);
  v184 = (v179 << (v3 & 3) << (v3 & 3 ^ 3)) ^ v179 ^ (v181 ^ (v179 >> 39) | (v179 << 25));
  v185 = ((v182 >> 7) + v182 + 2 * ((v182 >> 7) & v182) - 4 * ((v182 >> 7) & v182)) ^ ((v182 >> 41) | (v182 << 57));
  v186 = v185 ^ (v182 << 23);
  v187 = v185 & 0x10;
  v188 = ((v175 ^ 0x49D9953DCC577F31 ^ ((v175 ^ 0x49D9953DCC577F31) >> 1)) & 0x8E079E6BE32573ECLL ^ ((v175 ^ 0x49D9953DCC577F31) << 63) | (v175 ^ 0x49D9953DCC577F31 ^ ((v175 ^ 0x49D9953DCC577F31) >> 1)) & 0x71F861941CDA8C13) ^ __ROR8__(v175 ^ 0x49D9953DCC577F31, 6);
  v189 = __ROR8__(((v180 & 0x1FFFF) << 25) ^ __ROR8__((((v180 >> 10) & 0x638F937F89CB7 ^ v180 & 0x9F8638F937F89CB7 | v180 & 0x6079C706C8076348) + ((v180 >> 10) & 0x39C706C8076348 ^ -((v180 >> 10) & 0x39C706C8076348) ^ ((v180 & 0x6079C706C8076348) - ((v180 >> 10) & 0x39C706C8076348 ^ v180 & 0x6079C706C8076348)))) ^ ((v180 >> 17) | (v180 << 54)), 22) ^ 0x43D248BCC6D53132, 42);
  v190 = v189 ^ 0x2F31B54C4C90F492;
  v191 = v189 ^ 0x2F31B54C4C90F492 ^ v186;
  v192 = v186 & 0xFFFFFFFFFFFFFFEFLL;
  v193 = (v189 ^ 0xD0CE4AB3B36F0B6DLL) & v186;
  v194 = (v184 ^ -v184 ^ (v188 - (v184 ^ v188))) + v188;
  if ((v183 & v187) != 0)
  {
    v195 = -v187;
  }

  else
  {
    v195 = v187;
  }

  v196 = v194 & 0x40;
  v197 = (v195 + v183) ^ v192;
  v198 = v184 & ~v197;
  v199 = v194 & ~v184 ^ v197;
  v200 = v197 & ~v191;
  v201 = v191 ^ v198;
  v202 = v184 ^ v190 & ~v194 ^ v199 ^ 0xECAFA2B5AAC1CF9ELL;
  v203 = v201 ^ 0x3F9CF9767135669BLL ^ v199;
  v204 = v194 & 0xFFFFFFFFFFFFFFBFLL;
  v205 = v200 ^ v190;
  if ((v196 | v193) + (v196 ^ v193) == 2 * (v196 ^ v193))
  {
    v206 = v196;
  }

  else
  {
    v206 = -v196;
  }

  v207 = (v206 + v193) ^ v204;
  v208 = v205 ^ v207 ^ 0x656E43080BCE80E4;
  v209 = v203 ^ __ROR8__(v203, 19) ^ (v203 >> 28);
  v210 = v209 ^ (v203 << 36);
  *(&v212 + 1) = v208 ^ (v208 >> 10);
  *&v212 = v205 ^ v207;
  v211 = v212 >> 63;
  v213 = v201 ^ 0x7C17C2B42D2A021ELL;
  v214 = ((v209 + 18) ^ 0xC6) + *(v19 + ((v209 + 18) ^ 0xC3));
  *(&v212 + 1) = v208;
  *&v212 = v205 ^ v207;
  v215 = v207 ^ 0xE3A40DCDC0F5ED9BLL ^ ((v207 ^ 0xE3A40DCDC0F5ED9BLL) << 58) ^ (((v207 ^ 0xE3A40DCDC0F5ED9BLL) >> 6) ^ ((v207 ^ 0xE3A40DCDC0F5ED9BLL) >> 1) | ((v207 ^ 0xE3A40DCDC0F5ED9BLL) << 63));
  v216 = __ROR8__(v211 ^ (v212 >> 9) & 0xFF80000000000001 ^ 0xB2436C8423C569F8, 7) & 0xFDFFFFFFFFFFFFFFLL ^ ((((v211 ^ (v212 >> 9) & 0xFF80000000000001) & 1) << 57) | 0x7DB6B9076B7E599ELL);
  *v15 = BYTE1(v210) + (~(2 * BYTE1(v210)) | 0x6D) + 74;
  v217 = (((((v214 >> 3) | (32 * v214)) ^ 0xA9) >> 5) | (8 * (((v214 >> 3) | (32 * v214)) ^ 0xA9))) ^ 0x1F;
  *STACK[0x1398] = BYTE3(v209) - ((2 * BYTE3(v209)) & 0xB6) + 91;
  *STACK[0x1370] = BYTE4(v210) + (~(2 * BYTE4(v210)) | 0x49) + 92;
  *(STACK[0x22D8] + 48) = BYTE5(v210);
  v218 = v213 ^ __ROR8__(v213, 7);
  *&v212 = __ROR8__(v213, 41);
  *STACK[0x1368] = HIBYTE(v210) - ((2 * HIBYTE(v210)) & 0x92) + 73;
  v219 = v202 ^ __ROR8__(v202, 61) ^ (v202 >> 39);
  v220 = v219 ^ (v202 << 25);
  v221 = (4 * (v217 & 0x1F)) ^ 0xFFFFFFE4 ^ (((v217 >> v140) >> (v140 ^ 5) >> 1) | ((v217 >> v140) >> (v140 ^ 5) << 7));
  *(STACK[0x22D8] + 25) = BYTE2(v219);
  v4[55] = BYTE6(v210);
  v5[2] = BYTE6(v220);
  *(STACK[0x22D8] + 18) = BYTE4(v220);
  *STACK[0x1350] = (((v221 & 0x80) != 0) | (2 * v221)) ^ 0x80;
  *(STACK[0x22D8] + 30) = BYTE5(v220);
  *(STACK[0x22D8] + 39) = BYTE2(v209);
  *(STACK[0x22D8] + 37) = v219;
  *(STACK[0x22D8] + 17) = BYTE1(v219);
  *v5 = BYTE3(v220);
  LODWORD(v220) = *(v22 + (HIBYTE(v220) ^ 0x64));
  *STACK[0x1378] = v215 - ((2 * v215) & 0x92) + 73;
  *STACK[0x1390] = BYTE4(v215) - ((2 * BYTE4(v215)) & 0xB6) + 91;
  *v40 = BYTE3(v215) + (~(2 * BYTE3(v215)) | 0x49) + 92;
  v222 = __ROR8__(v216, 58) ^ (v208 >> 17);
  v223 = v222 ^ (v208 << 47);
  *STACK[0x1380] = BYTE1(v215) - ((2 * BYTE1(v215)) & 0x92) + 73;
  *(STACK[0x22D8] + 16) = (v207 ^ 0xC0F5ED9B ^ ((v207 ^ 0xE3A40DCDC0F5ED9BLL) >> 6) ^ ((v207 ^ 0xE3A40DCDC0F5ED9BLL) >> 1)) >> 16;
  v5[1] = 45 * (((v220 >> 4) | (16 * v220)) ^ 0x1B);
  v224 = ((((v215 >> 40) + 18) ^ 0xFFFFFFC6) + *(v19 + ((BYTE5(v215) + 18) ^ 0xC3))) ^ 0x52;
  *STACK[0x13A8] = (v222 ^ 0x63) - ((2 * (v222 ^ 0x63)) & 0x92) + 73;
  *STACK[0x1388] = BYTE6(v215) - ((2 * BYTE6(v215)) & 0x92) + 73;
  *STACK[0x1358] = HIBYTE(v215) - ((2 * HIBYTE(v215)) & 0xB6) + 91;
  *v4 = (v224 >> 5) | (8 * v224);
  v225 = STACK[0x22D0];
  LOBYTE(v224) = *(STACK[0x22D0] + (((v222 ^ 0xD363) >> 8) ^ 0xD6)) ^ ((v222 ^ 0xD363) >> 8) ^ 0x51;
  *(STACK[0x22D8] + 53) = (v222 ^ 0xCE74D363) >> 16;
  v4[50] = (v222 ^ 0xCE74D363) >> 24;
  *STACK[0x1360] = ((v224 >> 1) | (v224 << 7)) - (v224 & 0x92) + 73;
  v226 = *(v22 + (BYTE4(v222) ^ 0xFCLL));
  v227 = v218 + v212 - 2 * (v218 & v212);
  LOBYTE(v226) = (((((v226 >> 6) | (4 * v226)) ^ 0xC3) >> 6) | (4 * (((v226 >> 6) | (4 * v226)) ^ 0xC3))) ^ 0x14;
  *STACK[0x13C0] = 45 * v226 - ((90 * v226) & 0xB6) + 91;
  v228 = *(v22 + (BYTE5(v223) ^ 0x93));
  v229 = ((v228 >> (((v222 ^ 0xD363) >> 8) & 4) >> (~((v222 ^ 0xD363) >> 8) & 4)) + 16 * v228) ^ 0x1B;
  *STACK[0x13A0] = 45 * v229 - ((90 * v229) & 0xB6) + 91;
  v230 = *(STACK[0x22B0] + (BYTE6(v223) ^ 0x2FLL));
  v231 = STACK[0x22D8];
  *STACK[0x13C8] = v227 - ((2 * v227) & 0x92) + 73;
  *STACK[0x13B8] = ((v223 ^ 0x348FF798CE74D363) >> 56) + (~(2 * ((v223 ^ 0x348FF798CE74D363) >> 56)) | 0x6D) + 74;
  *STACK[0x13B0] = 61 * (v230 ^ 0xE8) - ((122 * (v230 ^ 0xE8)) & 0x92) + 73;
  v232 = *(v225 + (BYTE1(v227) ^ 0xD6)) ^ (v227 >> 8) ^ 0x51;
  *(v231 + 28) = HIBYTE(v227);
  v4[26] = (v232 >> 1) | (v232 << 7);
  v4[30] = BYTE4(v227);
  *(v231 + 1) = (v218 + v212 - 2 * (v218 & v212)) >> 24;
  v4[5] = BYTE6(v227);
  *(v231 + 38) = BYTE5(v227);
  v4[47] = BYTE2(v227);
  v233 = STACK[0x22B8];
  LODWORD(STACK[0x232C]) = STACK[0x22B8];
  *(v231 + 4) = v233 + 1;
  return (*(v119 + 8 * ((62 * (STACK[0x22E0] & 1)) ^ (STACK[0x22C0] + 2342))))();
}

uint64_t sub_26AA24D00@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W3>, unint64_t a4@<X5>, unsigned int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  LODWORD(STACK[0x1D38]) = v10;
  STACK[0xCF0] = v9;
  LODWORD(STACK[0xC34]) = a2;
  v15 = STACK[0x1E30] + STACK[0x1E70];
  LODWORD(STACK[0x2218]) = LODWORD(STACK[0x21A8]) - LODWORD(STACK[0x1DD0]);
  LODWORD(STACK[0x2210]) = (STACK[0x1F38] ^ 0xFFFFFF92) - ((2 * (STACK[0x1F38] ^ 0xFFFFFF92)) & 0xFFFFFF87);
  v16 = (v11 - 3438) | 0xA8;
  LODWORD(STACK[0x2248]) = v16;
  v17 = STACK[0x1F30];
  LODWORD(STACK[0x2220]) = v11 - 2665;
  LODWORD(STACK[0xED8]) = ((v11 - 2665) ^ 0xFFFFFFAB) + v17 - ((v17 << (v16 + 25)) & 0xFFFFFFDC);
  LODWORD(STACK[0x2208]) = (STACK[0x1E20] >> 40) - ((2 * (STACK[0x1E20] >> 40)) & 0x1FFFFC8);
  LODWORD(STACK[0x2200]) = LODWORD(STACK[0x2068]) - ((2 * LODWORD(STACK[0x2068])) & 0x22);
  LODWORD(STACK[0x21F8]) = LODWORD(STACK[0x1DD8]) - ((2 * LODWORD(STACK[0x1DD8])) & 0x22);
  v18 = ((LODWORD(STACK[0x158C]) ^ 0x11111111) << 24) | ((LODWORD(STACK[0x1588]) ^ 0x11) << 16);
  v19 = STACK[0x1978];
  v20 = STACK[0x1B78];
  v21 = *(STACK[0x1B78] + 4 * BYTE2(STACK[0x1978]));
  LODWORD(STACK[0x21F0]) = (~(a5 >> 23) | 0xFFFFFFDD) + HIBYTE(a5);
  v22 = *(v20 + 4 * v19);
  STACK[0x1A40] = v21;
  v23 = v22 ^ __ROR4__(v21, 16);
  LODWORD(STACK[0x1D40]) = a1;
  v24 = ((a1 ^ v7 ^ v23) + 8086465 - ((2 * (a1 ^ v7 ^ v23)) & 0xF6C782)) ^ a6;
  v25 = v8 ^ v12 ^ v24;
  v26 = ((v25 ^ v19) + 8086465 - ((2 * (v25 ^ v19)) & 0xF6C782)) ^ a6;
  v27 = v26 ^ v12;
  HIDWORD(v28) = *(v20 + 4 * BYTE2(v27));
  LODWORD(v28) = HIDWORD(v28);
  v29 = (v28 >> 16) ^ __ROR4__(*(v20 + ((v27 >> 22) & 0x3FC)), 8);
  LODWORD(STACK[0x21D0]) = LODWORD(STACK[0x1E08]) + (~(2 * LODWORD(STACK[0x1E08])) | 0xFFFFFFDD);
  LODWORD(STACK[0x21E8]) = STACK[0x15F0] - ((2 * STACK[0x15F0]) & 0x22);
  LODWORD(STACK[0x21D8]) = (STACK[0x1600] >> 8) - ((2 * (STACK[0x1600] >> 8)) & 0x22);
  LODWORD(STACK[0x21C8]) = STACK[0x15E8] - ((2 * STACK[0x15E8]) & 0x34);
  LODWORD(STACK[0x1768]) = v18 & 0xFFFF00FF | (LODWORD(STACK[0x15D8]) << 8) | STACK[0x1570];
  LODWORD(STACK[0x21C0]) = STACK[0x1590] + (~(2 * STACK[0x1590]) | 0xFFFFFFDD);
  LODWORD(STACK[0x21B8]) = (STACK[0x15D0] >> 8) - ((2 * (STACK[0x15D0] >> 8)) & 0x22);
  LODWORD(STACK[0x21B0]) = STACK[0x1580] + (~LODWORD(STACK[0x157C]) | 0x25);
  LODWORD(STACK[0x21A0]) = (STACK[0x16E0] >> 16) - ((2 * (STACK[0x16E0] >> 16)) & 0x1A);
  LODWORD(STACK[0x21A8]) = STACK[0x16D8] - 2 * (STACK[0x16D8] & 0xF);
  LODWORD(STACK[0x2198]) = STACK[0x16D0] - ((2 * STACK[0x16D0]) & 0x22222222);
  STACK[0x10D8] = (v15 ^ 0xEF7EEDEBBDEF74FDLL) + 0x73FBF7FF7F73FF44 + ((2 * v15) & 0xDEFDDBD77BDEE9FALL);
  LODWORD(STACK[0x2190]) = STACK[0x2070] + (~(2 * STACK[0x2070]) | 0xFFFFFFDD);
  v30 = STACK[0x1F80] ^ 0xB1F3A33E9167160BLL;
  STACK[0x1D30] = v30;
  LODWORD(STACK[0x2128]) = HIDWORD(v30) + (~(2 * HIDWORD(v30)) | 0xFFFFFFA5);
  LODWORD(STACK[0x2118]) = LODWORD(STACK[0x1E68]) - ((2 * LODWORD(STACK[0x1E68])) & 0x22);
  LODWORD(STACK[0x2120]) = STACK[0x1DF0] - ((2 * STACK[0x1DF0]) & 0x22);
  LODWORD(STACK[0x2110]) = STACK[0x1DE8] - ((2 * STACK[0x1DE8]) & 0x20);
  LODWORD(STACK[0x2108]) = LODWORD(STACK[0x1DE0]) + (~(2 * LODWORD(STACK[0x1DE0])) | 0xFFFFFFDD);
  LODWORD(STACK[0x2100]) = LODWORD(STACK[0x1E78]) - ((2 * LODWORD(STACK[0x1E78])) & 0x22);
  v31 = STACK[0x1728];
  LODWORD(STACK[0x20F8]) = (STACK[0x1728] >> 16) - ((2 * (STACK[0x1728] >> 16)) & 0x22);
  LODWORD(STACK[0x20F0]) = (v31 >> 8) - ((2 * (v31 >> 8)) & 0x22);
  v32 = STACK[0x1F48];
  LODWORD(STACK[0x20E8]) = (STACK[0x1F48] >> 16) - ((2 * (STACK[0x1F48] >> 16)) & 0x22);
  LODWORD(STACK[0x20E0]) = (v32 >> 24) - ((2 * (v32 >> 24)) & 0x22222222);
  v33 = v23 ^ v7;
  LODWORD(STACK[0x22D0]) = v23 ^ v7;
  LODWORD(STACK[0x20D8]) = v11;
  v34 = STACK[0x2280];
  v35 = ((v25 & 0xDD2071D2 ^ 0xDD2071D2) + (v25 & 0xDD2071D2)) ^ STACK[0x2280] & 0x6E9038E9;
  v36 = STACK[0x1CAC];
  LODWORD(v32) = STACK[0x1FC8];
  v37 = STACK[0x1E28];
  v38 = STACK[0x1CC8];
  v39 = STACK[0x1C60];
  v40 = STACK[0x1CD0];
  LODWORD(v30) = v33 ^ ((STACK[0x1CAC] & (v13 & 0x671038E9 ^ 0xAD30511A)) >> STACK[0x1E28]) ^ (((v13 & 0x671038E9 ^ 0xAD30511A) & STACK[0x1FC8]) << a4) ^ (((v35 & STACK[0x1CC8]) << STACK[0x1C60]) + ((v35 & a3) >> STACK[0x1CD0]));
  v41 = *(STACK[0x2278] + (BYTE1(v27) ^ 0xB0)) ^ 0xFFFFFFBC;
  STACK[0x22A0] = v27;
  v42 = v29 ^ *(v20 + 4 * (v26 ^ v12));
  LODWORD(STACK[0x1A98]) = v24 ^ v8;
  LODWORD(STACK[0x2238]) = v24 ^ v12;
  v43 = -127 * v41 - ((2 * v41) & 0x22) + 17;
  LODWORD(STACK[0x1E68]) = v43;
  v44 = *(v20 + 4 * (v43 ^ 0x11u));
  v45 = v42 ^ __ROR4__(v44, 24);
  v46 = v24 ^ v12 ^ LODWORD(STACK[0x1F58]) ^ v45;
  LODWORD(STACK[0x15A8]) = v30 ^ v12;
  v47 = v46 ^ v24 ^ v8 ^ v30 ^ v12;
  v48 = v47 ^ v26;
  v49 = *(v20 + 4 * BYTE1(v48));
  v50 = v48 >> 8;
  v51 = v49 >> ((BYTE1(v48) & 0x18 ^ 0x18) + (BYTE1(v48) & 0x18u));
  LODWORD(STACK[0x20D0]) = v51 - ((2 * v51) & 0x22);
  LODWORD(v51) = v51 | (v49 << 8);
  STACK[0x22B0] = v48;
  v52 = v30 ^ v45;
  v53 = v48 >> 24;
  LODWORD(v48) = (((v36 & (v34 & 0x37AA7DE8 ^ 0x6F54FBD0)) >> v40) + ((v38 & (v34 & 0x37AA7DE8 ^ 0x6F54FBD0)) << v39)) ^ (((a3 & (v13 & 0x7B2A7DE8 ^ 0x9D5E9A18)) >> v37) | (((v13 & 0x7B2A7DE8 ^ 0x9D5E9A18) & v32) << a4)) ^ __ROR4__(*(v20 + 4 * BYTE2(v48)), 16) ^ *(v20 + 4 * v48) ^ v52 ^ v51 ^ __ROR4__(*(v20 + 4 * (v48 >> 24)), 8);
  LODWORD(STACK[0x1D88]) = v48;
  LODWORD(STACK[0x20C8]) = (v19 >> 24) - ((2 * (v19 >> 24)) & 0x1F4);
  LODWORD(STACK[0x20C0]) = (STACK[0x1F98] >> 24) - ((2 * (STACK[0x1F98] >> 24)) & 0x22222222);
  LODWORD(STACK[0x20B8]) = (v27 >> 16) + (~(2 * (v27 >> 16)) | 0xFFFFFFDD);
  LODWORD(STACK[0x1438]) = v44;
  LODWORD(STACK[0x20B0]) = HIBYTE(v44) - ((v44 >> 23) & 0x22222222);
  LODWORD(STACK[0x22C0]) = v47 + 8086465 - ((2 * v47) & 0xF6C782);
  LODWORD(v20) = v30 ^ v46;
  LODWORD(STACK[0x1D58]) = v30 ^ v46;
  LODWORD(STACK[0x20A8]) = v53 - ((2 * v53) & 0x22222222);
  LODWORD(STACK[0x20A0]) = v50 - ((2 * v50) & 0x22);
  LODWORD(STACK[0x2138]) = ((v36 & (v34 & 0x36FDE389 ^ 0x6DFBC713)) >> v37) | ((v32 & (v34 & 0x36FDE389 ^ 0x6DFBC713)) << a4);
  LODWORD(STACK[0x2058]) = ((v38 & (v13 & 0x559E80EA ^ 0xEA27811D)) << v39) | ((a3 & (v13 & 0x559E80EA ^ 0xEA27811D)) >> v40);
  LODWORD(STACK[0x2250]) = (((v36 & (v13 & 0x5BDECD1E ^ 0xFCE75B31)) >> v37) | ((v38 & (v13 & 0x5BDECD1E ^ 0xFCE75B31)) << a4)) ^ (((a3 & (v34 & 0x38BDAE7D ^ 0x717B5CFB)) >> v40) + ((v32 & (v34 & 0x38BDAE7D ^ 0x717B5CFB)) << v39));
  v54 = ((v36 & (v34 & 0x5807A799 ^ 0xB00F4F32)) >> v40) ^ ((v32 & (v34 & 0x5807A799 ^ 0xB00F4F32)) << a4) ^ (((v38 & (v13 & 0x3B64C4FA ^ 0x5D89493C)) << v39) + ((a3 & (v13 & 0x3B64C4FA ^ 0x5D89493C)) >> v37)) ^ LODWORD(STACK[0x1980]);
  LODWORD(STACK[0x1DE8]) = v54;
  LODWORD(STACK[0x22A8]) = (((v36 & (v13 & 0x3BFE5531 ^ 0x5CA6EB63)) >> v37) + ((v38 & (v13 & 0x3BFE5531 ^ 0x5CA6EB63)) << v39)) ^ (((a3 & (v34 & 0x589D3652 ^ 0xB13A6CA5)) >> v40) | ((v32 & (v34 & 0x589D3652 ^ 0xB13A6CA5)) << a4));
  LODWORD(STACK[0x2260]) = ((v38 & (v34 & 0x334021ED ^ 0x668043DB)) << v39) ^ ((a3 & (v34 & 0x334021ED ^ 0x668043DB)) >> v40) ^ ((v36 & (v13 & 0x7B0869A5 ^ 0x9D18B2CF)) >> v37) ^ (((v13 & 0x7B0869A5 ^ 0x9D18B2CF) & v32) << a4);
  v55 = v34 & 0x690A16C ^ 0xD2142D8;
  v56 = v38 & v55;
  STACK[0x1D68] = v56;
  LODWORD(STACK[0x2298]) = (v56 << v39) | ((a3 & v55) >> v37);
  LODWORD(STACK[0x17C8]) = v34 & 0x75C997BB;
  LODWORD(STACK[0x2240]) = ((a3 & (v34 & 0x75C997BB ^ 0xEB932F76)) >> v37) | ((v32 & (v34 & 0x75C997BB ^ 0xEB932F76)) << a4);
  LODWORD(STACK[0x2228]) = ((v36 & (v13 & 0x3D81DFF3 ^ 0x52027C26)) >> v40) + ((v38 & (v13 & 0x3D81DFF3 ^ 0x52027C26)) << v39);
  LODWORD(STACK[0x21E0]) = ((v38 & (v34 & 0x61978D63 ^ 0xC32F1AC7)) << a4) | ((a3 & (v34 & 0x61978D63 ^ 0xC32F1AC7)) >> v40);
  LODWORD(v27) = ((a3 & (v34 & 0x6EC03D1C ^ 0xDD807A38)) >> v40) ^ ((v32 & (v34 & 0x6EC03D1C ^ 0xDD807A38)) << v39) ^ ((v36 & (v13 & 0x123CC1E0 ^ 0x26614201)) >> v37) ^ ((v38 & (v13 & 0x123CC1E0 ^ 0x26614201u)) << a4) ^ LODWORD(STACK[0x1424]) ^ LODWORD(STACK[0x1E88]);
  LODWORD(STACK[0x2070]) = ((v38 & (v13 & 0x1B2F285E ^ (v40 | STACK[0x1DF8]) & 0x365E50BD ^ 0xB0B204C)) << v39) ^ ((v36 & (v13 & 0x1B2F285E ^ (v40 | STACK[0x1DF8]) & 0x365E50BD ^ 0xB0B204C)) >> v40) ^ (((a3 & (v34 & 0x67D3D4A2 ^ 0xCFA7A944)) >> v37) | ((v32 & (v34 & 0x67D3D4A2 ^ 0xCFA7A944)) << a4)) ^ LODWORD(STACK[0x1E80]);
  LODWORD(STACK[0x2178]) = (((v36 & (v13 & 0x62FE9E2C ^ 0xA7A7BE54)) >> v40) + (((v13 & 0x62FE9E2C ^ 0xA7A7BE54) & v32) << a4)) ^ (((v38 & (v34 & 0x1E0262D0 ^ 0x3C04C5A1)) << v39) + ((a3 & (v34 & 0x1E0262D0 ^ 0x3C04C5A1)) >> v37));
  v57 = ((v38 & (v34 & 0x7A06E7B9 ^ 0xF40DCF72)) << a4) | ((a3 & (v34 & 0x7A06E7B9 ^ 0xF40DCF72)) >> v40);
  LODWORD(STACK[0x1BB8]) = (((v36 & (v13 & 0x49ADA1A8 ^ 0xDA52E2D9)) >> v40) | ((v38 & (v13 & 0x49ADA1A8 ^ 0xDA52E2D9)) << v39)) ^ (((a3 & (v34 & 0x72161A13 ^ 0xE42C3426)) >> v37) | ((v32 & (v34 & 0x72161A13 ^ 0xE42C3426)) << a4)) ^ a7;
  LODWORD(STACK[0x2130]) = ((v36 & (v13 & 0x3CC44A7A ^ 0x51C8D6BC)) >> v37) | (((v13 & 0x3CC44A7A ^ 0x51C8D6BC) & v32) << v39);
  LODWORD(STACK[0x2098]) = ((v38 & (v34 & 0x77FF1C1 ^ 0xEFFE383u)) << a4) + ((a3 & (v34 & 0x77FF1C1 ^ 0xEFFE383)) >> v40);
  LODWORD(STACK[0x2088]) = ((v38 & (v34 & 0x71E8E0F ^ 0xE3D1C1E)) << v39) + ((a3 & (v34 & 0x71E8E0F ^ 0xE3D1C1E)) >> v37);
  LODWORD(v56) = v13 & 0x645C903 ^ 0xECA5306;
  LODWORD(STACK[0x1738]) = v56;
  LODWORD(STACK[0x2230]) = (((v38 & v56) << a4) | ((v36 & v56) >> v40)) ^ (((a3 & (v34 & 0x77B438F2 ^ 0xEF6871E5)) >> v37) | ((v32 & (v34 & 0x77B438F2 ^ 0xEF6871E5)) << v39));
  LODWORD(STACK[0x2048]) = (((v36 & (v34 & 0x2ED56371 ^ 0x5DAAC6E2)) >> v37) + ((v38 & (v34 & 0x2ED56371 ^ 0x5DAAC6E2u)) << a4)) ^ (((a3 & (v13 & 0x5F249280 ^ 0xF549A781)) >> v40) | (((v13 & 0x5F249280 ^ 0xF549A781) & v32) << v39));
  LODWORD(STACK[0x2060]) = ((v38 & (v34 & 0x34CAAB6D ^ 0x699556DBu)) << a4) + ((a3 & (v34 & 0x34CAAB6D ^ 0x699556DB)) >> v40);
  LODWORD(STACK[0x2068]) = ((v36 & (v34 & 0x5FA5143A ^ 0xBF4A2874)) >> v40) + ((v32 & (v34 & 0x5FA5143A ^ 0xBF4A2874)) << a4);
  LODWORD(STACK[0x2078]) = ((v36 & (v34 & 0x3E97C79E ^ 0x7D2F8F3D)) >> v37) | ((v38 & (v34 & 0x3E97C79E ^ 0x7D2F8F3Du)) << a4);
  LODWORD(STACK[0x2080]) = ((a3 & (v34 & 0x3410CF70 ^ 0x68219EE0)) >> v37) + ((v32 & (v34 & 0x3410CF70 ^ 0x68219EE0)) << v39);
  LODWORD(v51) = STACK[0x1F08];
  LODWORD(STACK[0x1710]) = STACK[0x1F08] & 0xF75F5586;
  LODWORD(v56) = ((v51 & 0xF75F5586) >> 1) ^ 0xF75F5586;
  LODWORD(v53) = (v32 & v56) - 1575013781 - ((2 * (v32 & v56)) & 0x443E6486);
  LODWORD(STACK[0x2030]) = ((v38 & (v34 & 0x42810572 ^ 0x85020AE4)) << v39) ^ ((v36 & (v34 & 0x42810572 ^ 0x85020AE4)) >> v40) ^ (((a3 & (v13 & 0x793ABEC9 ^ 0x9B6FDF5B)) >> v37) | (((v13 & 0x793ABEC9 ^ 0x9B6FDF5B) & v32) << a4)) ^ LODWORD(STACK[0x19D8]);
  LODWORD(STACK[0x22E0]) = (((v36 & (v34 & 0x57EC4D61 ^ 0xAFD89AC3)) >> v40) | ((v38 & (v34 & 0x57EC4D61 ^ 0xAFD89AC3)) << v39)) ^ (((v13 & 0x219A3B17 ^ 0x622E552B) & v32) << a4) ^ ((a3 & (v13 & 0x219A3B17 ^ 0x622E552B)) >> v37) ^ LODWORD(STACK[0x1E90]);
  LODWORD(STACK[0x1708]) = v53;
  LODWORD(STACK[0x1FB0]) = ((a3 & v56) >> v40) + ((v53 ^ 0xA21F326B) << v39);
  v58 = v13 & 0xDD9DCB5 ^ 0x12EA79EE;
  v59 = v38 & v58;
  STACK[0x2090] = v59;
  LODWORD(STACK[0x1F88]) = ((v36 & v58) >> v37) ^ (v59 << a4);
  LODWORD(STACK[0x2028]) = ((v38 & (v34 & 0x10B27866 ^ 0x2164F0CD)) << v39) ^ ((a3 & (v34 & 0x10B27866 ^ 0x2164F0CD)) >> v40) ^ (((v36 & (v13 & 0x795B918F ^ 0x9BECA292)) >> v37) + (((v13 & 0x795B918F ^ 0x9BECA292) & v32) << a4));
  LODWORD(STACK[0x1F60]) = ((v36 & (v13 & 0x3CB90B9A ^ 0x516B14BC)) >> v37) | ((v38 & (v13 & 0x3CB90B9A ^ 0x516B14BC)) << v39);
  LODWORD(v53) = v13 & 0x2E54E5CB ^ 0x76F92A5F;
  LODWORD(STACK[0x1DF8]) = v53;
  v60 = v13 & 0x48E1B1E8 ^ 0xD982C219;
  LODWORD(STACK[0x1E40]) = v60;
  STACK[0x1E08] = a3 & v53;
  LODWORD(STACK[0x1E70]) = a3 & v60;
  LODWORD(v50) = ((v51 & 0x1EC2A780 ^ 0x1EC2A780) + (v51 & 0x1EC2A780)) ^ a3 ^ 0x1EC2A780;
  LODWORD(STACK[0x1FF8]) = v51 & 0xEC3CF413;
  LODWORD(v56) = v34 & 0x49E6D765 ^ 0x93CDAECA;
  LODWORD(STACK[0x1FC0]) = v56;
  v61 = (((v38 & (v13 & 0x200F3E8C ^ 0x60155F95u)) << a4) | ((v50 & (v13 & 0x200F3E8C ^ 0x60155F95)) >> v37)) ^ (((v36 & v56) >> v40) | ((v32 & v56) << v39)) ^ STACK[0x1F48];
  v62 = ((2 * v61) & 0xDB6E5E9A) + (v61 ^ 0x6DB72F4D);
  LODWORD(STACK[0x22B8]) = v62;
  v63 = v13 & 0x323477FE ^ 0x46788C31;
  LODWORD(STACK[0x1CA4]) = v38 & v63;
  LODWORD(STACK[0x1E80]) = (((v36 & v63) >> v37) | ((v38 & v63) << v39)) ^ (((v50 & (v34 & 0x21A7E46D ^ 0x434FC8DA)) >> v40) | ((v32 & (v34 & 0x21A7E46D ^ 0x434FC8DA)) << a4));
  LODWORD(STACK[0x1620]) = v34 & 0x9E47893;
  LODWORD(STACK[0x1F48]) = ((v36 & (v34 & 0x9E47893 ^ 0x13C8F126)) >> v37) | ((v32 & (v34 & 0x9E47893 ^ 0x13C8F126)) << a4);
  LODWORD(STACK[0x1F30]) = ((v38 & (v34 & 0x49C3C6B6 ^ 0x93878D6D)) << v39) + ((v50 & (v34 & 0x49C3C6B6 ^ 0x93878D6D)) >> v40);
  LODWORD(STACK[0x1E78]) = ((v36 & (v13 & 0x5A505525 ^ 0xFEF0EB4E)) >> v37) | (((v13 & 0x5A505525 ^ 0xFEF0EB4E) & v32) << a4);
  v64 = v34 & 0x31486C94 ^ 0x6290D929;
  v65 = v13 & 0x22DBFF07 ^ 0x67EC1D0A;
  v66 = (v38 & v65) << a4;
  STACK[0x15B8] = v66;
  LODWORD(STACK[0x1E38]) = ((v50 & v64) >> v40) ^ ((v32 & v64) << v39) ^ ((v36 & v65) >> v37) ^ v66;
  v67 = ((((v64 & 0x1486810 ^ 0x96B6812) + (v64 & 0x41486939)) & v51) >> 1) ^ 0x496B693B;
  v68 = v13 & 0x312133A ^ 0x536257C;
  LODWORD(STACK[0xA5C]) = v68;
  LODWORD(STACK[0xFF0]) = (((v50 & v68) >> v37) | ((v68 & v32) << v39)) ^ 0xA16CEFFF ^ (((v38 & v67) << a4) | ((v36 & v67) >> v40)) ^ LODWORD(STACK[0x22D0]);
  LODWORD(v56) = v13 & 0x4064C6E2 ^ 0xC0894F04;
  v69 = (v36 & v56) >> v37;
  STACK[0xF98] = v69;
  LODWORD(STACK[0x1DF0]) = (v69 + ((v38 & v56) << v39)) ^ (((v50 & (v34 & 0x67C36145 ^ 0xCF86C28B)) >> v40) | ((v32 & (v34 & 0x67C36145 ^ 0xCF86C28B)) << a4));
  LODWORD(STACK[0x13E8]) = v34 & 0x3DF9E123;
  LODWORD(STACK[0x2020]) = (((v36 & (v34 & 0x3DF9E123 ^ 0x7BF3C246)) >> v37) | ((v32 & (v34 & 0x3DF9E123 ^ 0x7BF3C246)) << a4)) ^ (((v38 & (v13 & 0x1A5E4684 ^ 0x3EE6CF8D)) << v39) | ((v50 & (v13 & 0x1A5E4684 ^ 0x3EE6CF8D)) >> v40));
  LODWORD(STACK[0x1F90]) = v13 & 0x3322AC9A;
  LODWORD(STACK[0x1FA8]) = (((v36 & (v34 & 0x14850B3D ^ 0x290A167B)) >> v40) | ((v38 & (v34 & 0x14850B3D ^ 0x290A167B)) << v39)) ^ (((v50 & (v13 & 0x3322AC9A ^ 0x4547F9BC)) >> v37) + (((v13 & 0x3322AC9A ^ 0x4547F9BC) & v32) << a4));
  LODWORD(STACK[0x1F38]) = v13 & 0x19F33CE4;
  LODWORD(STACK[0x1DE0]) = ((v50 & (v13 & 0x19F33CE4 ^ 0x3AB5590C)) >> v37) | (((v13 & 0x19F33CE4 ^ 0x3AB5590C) & v32) << v39);
  LODWORD(v69) = STACK[0x1AA8] & 0x63D68D86;
  LODWORD(STACK[0x1ED0]) = v69;
  LODWORD(STACK[0x22D0]) = ((v50 & ((v69 >> 1) ^ 0x429DCF47)) >> v37) ^ ((((v69 >> 1) ^ 0x429DCF47) & v32) << v39) ^ ((v36 & (v34 & 0x3D67CA4F ^ 0x7ACF949E)) >> v40) ^ ((v38 & (v34 & 0x3D67CA4F ^ 0x7ACF949Eu)) << a4) ^ v52;
  LODWORD(STACK[0x1DC8]) = ((v38 & (v34 & 0x157FB068 ^ 0x2AFF60D1u)) << a4) + ((v36 & (v34 & 0x157FB068 ^ 0x2AFF60D1)) >> v40);
  v70 = v13 & 0x6CDC46EB ^ 0xB1E0CF1F;
  STACK[0x1A20] = v70;
  LODWORD(STACK[0x12B4]) = v51 & 0xC0A194CE;
  LODWORD(STACK[0x1DB0]) = (((v36 & v70) >> v40) | ((v38 & v70) << v39)) ^ ((v32 & (((v51 & 0xC0A194CE) >> 1) ^ 0xC0A194CE)) << a4) ^ ((v50 & (((v51 & 0xC0A194CE) >> 1) ^ 0xC0A194CE)) >> v37);
  v71 = v37;
  LODWORD(STACK[0x1DD8]) = ((v36 & (v13 & 0x66DA31F2 ^ 0xAFEE4225)) >> v37) ^ (((v13 & 0x66DA31F2 ^ 0xAFEE4225) & v32) << a4);
  LODWORD(STACK[0x1DD0]) = ((v38 & (v34 & 0x78C42FEC ^ 0xF1885FD9)) << v39) + ((v50 & (v34 & 0x78C42FEC ^ 0xF1885FD9)) >> v40);
  v72 = ((v38 & (((v51 & 0xEC3CF413) >> 1) ^ 0xEC3CF413)) << v39) ^ (((v50 & (v13 & 0x1FF793E0 ^ 0x34BCA400)) >> v40) | (((v13 & 0x1FF793E0 ^ 0x34BCA400) & v32) << a4)) ^ ((v36 & (((v51 & 0xEC3CF413) >> 1) ^ 0xEC3CF413)) >> v37) ^ LODWORD(STACK[0x121C]);
  LODWORD(STACK[0x1F50]) = v72;
  LODWORD(STACK[0x1E58]) = LODWORD(STACK[0x2070]) + (v72 & 0xA3C74F55) + (v72 & 0xA3C74F55 ^ 0xA3C74F55);
  LODWORD(STACK[0x19E8]) = v34 & 0x78B2001D;
  v73 = ((v38 & (v13 & 0x66AC1E03 ^ 0xAF503E06)) << v39) ^ (((v50 & (v34 & 0x78B2001D ^ 0xF164003A)) >> v40) | ((v32 & (v34 & 0x78B2001D ^ 0xF164003A)) << a4)) ^ ((v36 & (v13 & 0x66AC1E03 ^ 0xAF503E06)) >> v37);
  LODWORD(STACK[0x1E30]) = v73 + 925089734 - ((2 * v73) & 0x6E477F8C);
  LODWORD(v70) = LODWORD(STACK[0x22C0]) ^ LODWORD(STACK[0x2188]);
  LODWORD(v19) = STACK[0x1CC0];
  LODWORD(v59) = v48 ^ LODWORD(STACK[0x1CC0]) ^ v20;
  v74 = (((v38 & (v13 & 0x6454C9CB ^ 0xA8F9525F)) << a4) | ((v50 & (v13 & 0x6454C9CB ^ 0xA8F9525F)) >> v37)) ^ (((v36 & (v34 & 0x7A4AD7D5 ^ 0xF495AFAB)) >> v40) | ((v32 & (v34 & 0x7A4AD7D5 ^ 0xF495AFAB)) << v39)) ^ v70 ^ v59;
  LODWORD(STACK[0x22C0]) = ((2 * v74) & 0xFACFBEEC) + (v74 ^ 0x7D67DF76);
  LODWORD(STACK[0x1E98]) = v34 & 0x51933924;
  LODWORD(v56) = v54 - v62 + 77 - ((2 * (v54 - v62 + 77) + 20) & 0x22);
  LODWORD(v20) = v19;
  LODWORD(STACK[0x2070]) = v70 ^ v19;
  LODWORD(STACK[0x15E0]) = LODWORD(STACK[0x1E18]) ^ v19 ^ 0x7561FD84 ^ v59;
  v75 = (((v36 & (v13 & 0x4F8D273A ^ 0xD4136D7C)) >> v40) | ((v38 & (v13 & 0x4F8D273A ^ 0xD4136D7C)) << v39)) ^ (((v50 & (v34 & 0x51933924 ^ 0xA3267248)) >> v37) + ((v32 & (v34 & 0x51933924 ^ 0xA3267248)) << a4)) ^ STACK[0x22B0] ^ v70 ^ v19 ^ v59;
  LODWORD(STACK[0x1D60]) = v75 + 8086465 - ((2 * v75) & 0xF6C782);
  LODWORD(STACK[0x2138]) ^= LODWORD(STACK[0x2058]);
  LODWORD(STACK[0x1E60]) = v56 + 59;
  v76 = 16843009 * ((v56 + 59) ^ 0x11u);
  LODWORD(v70) = v76 & LODWORD(STACK[0x1E00]);
  v77 = LODWORD(STACK[0x22A8]) ^ STACK[0x1F20];
  LODWORD(STACK[0x2058]) = v70;
  LODWORD(STACK[0x1E90]) = v70 >> 1;
  LODWORD(v59) = (v70 >> 1) ^ v76;
  v78 = v59 & v50;
  v79 = v59 & v32;
  STACK[0x1D48] = v79;
  LODWORD(v69) = v59;
  LODWORD(STACK[0x1C00]) = v59;
  v80 = v78 >> v37;
  LODWORD(v48) = v79 << v39;
  LODWORD(STACK[0x11F4]) = v77 ^ ((v78 >> v37) | (v79 << v39));
  v81 = v76 & v51;
  STACK[0x1E88] = v81;
  LODWORD(STACK[0x15B0]) = v81 >> 1;
  LODWORD(v59) = (v81 >> 1) ^ v76;
  v82 = v59 & v36;
  v83 = v59 & v38;
  LODWORD(v66) = v59;
  LODWORD(v51) = v83 << v39;
  STACK[0xFB0] = v83;
  LODWORD(STACK[0x15F8]) = v82 >> v40;
  LODWORD(v59) = LODWORD(STACK[0x2260]) ^ ((v82 >> v40) + (v83 << v39));
  STACK[0x2000] = (v59 - 1586696193 - ((2 * v59) & 0x42D9DFFEu)) ^ LODWORD(STACK[0x16C0]);
  v84 = ((v36 & (v13 & 0x4ED8E924 ^ 0xD7E9334C)) >> v40) ^ (((v13 & 0x4ED8E924 ^ 0xD7E9334C) & v32) << a4) ^ LODWORD(STACK[0x2298]) ^ LODWORD(STACK[0x16A8]);
  v85 = v69 & v38;
  STACK[0x1E00] = v85;
  LODWORD(v85) = v85 << v39;
  LODWORD(STACK[0x1D28]) = v85;
  v86 = v85 - 139998513 - ((2 * v85) & 0xEF4F959E);
  LODWORD(STACK[0x1ED8]) ^= LODWORD(STACK[0x2228]) ^ LODWORD(STACK[0x2240]) ^ v19;
  LODWORD(STACK[0x1A58]) = v27;
  LODWORD(STACK[0x2228]) = v86 ^ v27 ^ ((v78 >> v37) - 139998513 - ((2 * (v78 >> v37)) & 0xEF4F959E));
  LODWORD(v56) = ((v36 & (v13 & 0x29DFC52B ^ 0x7AE44B5F)) >> v37) ^ (((v13 & 0x29DFC52B ^ 0x7AE44B5F) & v32) << v39) ^ LODWORD(STACK[0x21E0]) ^ STACK[0x1EC8];
  LODWORD(STACK[0x1D50]) = v86 ^ 0xF7A7CACF;
  LODWORD(v27) = v78 >> v40;
  LODWORD(STACK[0x2240]) = v78 >> v40;
  LODWORD(STACK[0x1C58]) = v56 ^ (v86 ^ 0xF7A7CACF | (v78 >> v40));
  LODWORD(STACK[0x2178]) ^= LODWORD(STACK[0x1EB8]);
  STACK[0x1C38] = v57;
  LODWORD(STACK[0x2298]) = ((v36 & (v13 & 0x6FA1B45 ^ 0xFAE35CF)) >> v37) ^ (((v13 & 0x6FA1B45 ^ 0xFAE35CF) & v32) << v39) ^ v57 ^ STACK[0x1A18];
  LODWORD(STACK[0x2130]) ^= LODWORD(STACK[0x2098]) ^ v19 ^ LODWORD(STACK[0x1EC0]);
  v87 = v66 & v50;
  STACK[0x21E0] = v87;
  LODWORD(v56) = (v81 >> 1) ^ v76;
  LODWORD(STACK[0x16E8]) = v66;
  LODWORD(v85) = (v87 >> v40) - 943770897 - ((2 * (v87 >> v40)) & 0x8F7E65DE);
  LODWORD(STACK[0x2048]) ^= LODWORD(STACK[0xD5C]);
  LODWORD(STACK[0x1EC8]) = ((v36 & (v13 & 0x3CA535B4 ^ 0x514B4AED)) >> v40) ^ (((v13 & 0x3CA535B4 ^ 0x514B4AED) & v32) << a4) ^ LODWORD(STACK[0x2088]) ^ LODWORD(STACK[0x16C8]);
  LODWORD(v69) = ((v36 & (v13 & 0x453B5A9C ^ 0xCB6DF7B4)) >> v37) ^ (((v13 & 0x453B5A9C ^ 0xCB6DF7B4) & v32) << v39) ^ LODWORD(STACK[0x2060]) ^ LODWORD(STACK[0x16B8]);
  LODWORD(v37) = v48;
  LODWORD(STACK[0x22A8]) = v69 ^ (v27 + v48);
  v88 = v82 >> v71;
  LOBYTE(v48) = v71;
  LODWORD(v87) = v83 << a4;
  LODWORD(v82) = (v82 >> v71) | v87;
  LODWORD(v66) = (v38 & STACK[0x1DF8]) << v39;
  v89 = STACK[0x1E08] >> v71;
  LODWORD(STACK[0x1638]) = v66;
  LODWORD(v89) = v66 ^ LODWORD(STACK[0x2068]) ^ v89;
  v90 = STACK[0x1F98];
  LODWORD(STACK[0x2098]) = STACK[0x1F98] - ((2 * STACK[0x1F98]) & 0x16);
  LODWORD(STACK[0x1698]) = v89 ^ v90 ^ v82;
  STACK[0x19C8] = v76;
  LODWORD(v89) = (v81 >> ((((v82 & 0x98 ^ 0x98) + (v82 & 0x98)) | 0x20) + 73)) ^ v76;
  LODWORD(STACK[0x2260]) = (LODWORD(STACK[0x1E70]) >> v40) ^ ((STACK[0x1E40] & v32) << v39) ^ LODWORD(STACK[0x2078]) ^ STACK[0x1A90] ^ (((v89 & v36) >> v71) | ((v89 & v32) << v39));
  LODWORD(STACK[0x1F98]) = ((v36 & (v13 & 0x4266B906 ^ 0xC68FD308)) >> v40) ^ ((v38 & (v13 & 0x4266B906 ^ 0xC68FD308)) << a4) ^ LODWORD(STACK[0x2080]) ^ LODWORD(STACK[0x1EA8]);
  LODWORD(STACK[0x1FB0]) ^= LODWORD(STACK[0x1F88]) ^ STACK[0x1728] ^ (v51 - 943770897 - ((2 * v51) & 0x8F7E65DE));
  LODWORD(v89) = v34 & 0x5550E273 ^ 0xAAA1C4E7;
  v91 = (v32 & v89) << a4;
  STACK[0x19E0] = v91;
  LODWORD(STACK[0x1EC0]) = ((v50 & v89) >> v40) ^ v91 ^ LODWORD(STACK[0x1F60]) ^ LODWORD(STACK[0x1EA0]);
  LODWORD(v91) = LODWORD(STACK[0x22B8]) - 1840721741;
  LODWORD(STACK[0x1758]) = v85;
  LODWORD(STACK[0x1BA0]) = v85 ^ v91 ^ (v87 - 943770897 - ((2 * v87) & 0x8F7E65DE));
  LODWORD(v91) = LODWORD(STACK[0x1E80]) ^ LODWORD(STACK[0x1878]);
  LODWORD(v69) = v80 ^ (STACK[0x1D48] << a4);
  v92 = STACK[0x1D48] << a4;
  LODWORD(STACK[0x1F60]) = v84 ^ v69;
  LODWORD(STACK[0x1EB8]) = LODWORD(STACK[0x2298]) ^ v69;
  LODWORD(STACK[0x1988]) = v91 ^ v69;
  LODWORD(v91) = v13 & 0x1A77EB00 ^ 0x3EBC3501;
  LODWORD(STACK[0x2068]) = (v38 & v91) << v39;
  LODWORD(STACK[0x1F48]) ^= ((v38 & v91) << v39) ^ ((v50 & v91) >> v40) ^ v20 ^ LODWORD(STACK[0x1D40]);
  v93 = v37;
  LODWORD(STACK[0x1EA8]) = LODWORD(STACK[0x1E78]) ^ LODWORD(STACK[0x1F30]) ^ v20 ^ v37 ^ LODWORD(STACK[0x1B54]);
  v94 = STACK[0x1978];
  LODWORD(STACK[0x2080]) = STACK[0x1978] - ((2 * STACK[0x1978]) & 0xFFFFFF87);
  LODWORD(STACK[0x1EA0]) = LODWORD(STACK[0x1E38]) ^ v87 ^ v94;
  v95 = v56 & v32;
  STACK[0x2298] = v95;
  LODWORD(v91) = LODWORD(STACK[0x1DF0]) ^ (v95 << a4) ^ LODWORD(STACK[0x2238]);
  LODWORD(STACK[0x2238]) = v91 - 943770897 - ((2 * v91) & 0x8F7E65DE);
  LODWORD(v69) = STACK[0x1C00];
  v96 = STACK[0x1C00] & v36;
  LODWORD(STACK[0x1E40]) = v96 >> v40;
  LODWORD(v91) = LODWORD(STACK[0x1DC8]) ^ LODWORD(STACK[0x1DE0]) ^ ((v96 >> v40) - 139998513 - ((2 * (v96 >> v40)) & 0xEF4F959E));
  LODWORD(STACK[0xDB0]) = v86;
  STACK[0x1B20] = v91 ^ v86 ^ LODWORD(STACK[0x1D58]);
  v97 = v85 ^ 0xC7BF32EF;
  v98 = (v85 ^ 0xC7BF32EF) + v51;
  LODWORD(STACK[0x1930]) = LODWORD(STACK[0x1DB0]) ^ v98 ^ LODWORD(STACK[0x2070]);
  LODWORD(v91) = v34 & 0x14CAB407 ^ 0x2995680F;
  LODWORD(STACK[0x1928]) = v50;
  v99 = (v50 & v91) >> v48;
  LODWORD(v91) = (v38 & v91) << v39;
  LODWORD(STACK[0x1250]) = v91;
  LODWORD(v91) = v91 + v99;
  LODWORD(v99) = v13 & 0x1846388B ^ 0x38CE519E;
  STACK[0x1B60] = v96;
  v100 = v96 >> v48;
  LODWORD(v91) = v91 ^ ((v36 & v99) >> v40) ^ (((v69 ^ v99) & v32) << a4) ^ (v96 >> v48);
  v101 = STACK[0x22B0];
  LODWORD(STACK[0x2078]) = STACK[0x22B0] - ((2 * STACK[0x22B0]) & 0x22);
  LODWORD(STACK[0x2070]) = v91 ^ v101;
  LODWORD(v91) = LODWORD(STACK[0x1DD0]) ^ LODWORD(STACK[0x1DD8]);
  LODWORD(STACK[0x2088]) = v88 | v51;
  LODWORD(STACK[0x17E8]) = LODWORD(STACK[0x1D88]) ^ v91 ^ (v88 | v51);
  LODWORD(v48) = STACK[0x1D50];
  STACK[0x1830] = LODWORD(STACK[0x1EB0]) ^ (LODWORD(STACK[0x1D50]) + v100) ^ LODWORD(STACK[0x1D60]);
  LODWORD(STACK[0x1EB0]) = v48 + v100 - 1586696193 - ((2 * (v48 + v100)) & 0x42D9DFFE);
  v102 = v95 << a4;
  LODWORD(STACK[0x1D88]) = LODWORD(STACK[0x1ED8]) ^ ((v95 << a4) | v88);
  LODWORD(v91) = LODWORD(STACK[0x1FA8]) ^ ((v95 << a4) | v88);
  v103 = STACK[0x22A0];
  LODWORD(STACK[0x1ED8]) = STACK[0x22A0] + (~(2 * STACK[0x22A0]) | 0xFFFFFFDD);
  LODWORD(STACK[0x1E80]) = v91 ^ v103;
  LODWORD(v99) = LODWORD(STACK[0x1EE0]) ^ v20;
  LODWORD(STACK[0x2060]) = v99;
  LODWORD(v66) = LODWORD(STACK[0x2250]) ^ LODWORD(STACK[0x1F10]);
  LODWORD(STACK[0x1F30]) = v66;
  LODWORD(v91) = LODWORD(STACK[0x2230]) ^ v99;
  LODWORD(v50) = LODWORD(STACK[0x2028]) ^ LODWORD(STACK[0x1750]);
  v104 = (LODWORD(STACK[0x2020]) ^ LODWORD(STACK[0x1A98]));
  LODWORD(v99) = LODWORD(STACK[0x1E58]) + 1547219115;
  LODWORD(STACK[0x2250]) = LODWORD(STACK[0x15E0]) ^ LODWORD(STACK[0x1E30]);
  v105 = LODWORD(STACK[0x2138]) ^ LODWORD(STACK[0x1970]) ^ v51 ^ v88;
  LODWORD(v69) = STACK[0x2240];
  STACK[0x1BD0] = v92;
  LODWORD(STACK[0x1740]) = (v92 | v69) ^ v66;
  LODWORD(v103) = STACK[0x15F8];
  LODWORD(STACK[0x13FC]) = LODWORD(STACK[0x15F8]) ^ LODWORD(STACK[0x1DE8]) ^ v87;
  LODWORD(STACK[0x1DE0]) = v103 | v51;
  LODWORD(STACK[0x113C]) = LODWORD(STACK[0x2178]) ^ (v103 | v51);
  LODWORD(STACK[0x18F8]) = v99;
  v106 = (v102 | v103) ^ v99;
  STACK[0x1E70] = v80;
  LODWORD(v66) = v93;
  v107 = LODWORD(STACK[0x2030]) ^ v80 ^ v93;
  LODWORD(STACK[0x22B0]) = v80 ^ v93 ^ LODWORD(STACK[0x1BB8]);
  LODWORD(STACK[0x1DF0]) = v87 + v103;
  v108 = LODWORD(STACK[0x2130]) ^ (v87 + v103);
  LODWORD(STACK[0x1E38]) = v98;
  LODWORD(STACK[0x1980]) = v91 ^ v98;
  v109 = LODWORD(STACK[0x2048]) ^ v92 ^ v100;
  LODWORD(STACK[0x1DD0]) = v87;
  LODWORD(v101) = v103;
  LODWORD(STACK[0x1E30]) = v87 | v103;
  v110 = LODWORD(STACK[0x1EC8]) ^ (v87 | v103);
  STACK[0x1EC8] = a4;
  v111 = STACK[0x1E00] << a4;
  v112 = v69;
  LODWORD(STACK[0x1D58]) = v111 | v69;
  v113 = LODWORD(STACK[0x1F98]) ^ (v111 | v69);
  LODWORD(v103) = STACK[0x1758];
  v114 = LODWORD(STACK[0x1FB0]) ^ LODWORD(STACK[0x1758]);
  STACK[0x1E00] = v111;
  LODWORD(STACK[0x1F88]) = v50;
  v115 = (v100 + v111) ^ v50;
  LODWORD(v111) = STACK[0x2298] << v39;
  LODWORD(STACK[0x1DF8]) = v111;
  LODWORD(v111) = v97 | v111;
  LODWORD(STACK[0x1DD8]) = v111;
  LODWORD(STACK[0x22A0]) = LODWORD(STACK[0x1EC0]) ^ v111;
  LODWORD(STACK[0x1E78]) = v66;
  v116 = v66 ^ LODWORD(STACK[0x1F50]) ^ v100;
  STACK[0x1DC8] = v100;
  LODWORD(STACK[0x1EC0]) = v51;
  v117 = LODWORD(STACK[0x1F48]) ^ v51 ^ v101;
  v118 = LODWORD(STACK[0x1EA8]) ^ v69;
  STACK[0x1EA8] = v88;
  v119 = LODWORD(STACK[0x1EA0]) ^ v88;
  v120 = LODWORD(STACK[0x2238]) ^ v103;
  STACK[0x1A68] = v104;
  v121 = v104 ^ (v48 + v69);
  v122 = STACK[0x21E0] >> STACK[0x1E28];
  LODWORD(STACK[0x1EA0]) = v97;
  v123 = v102;
  LODWORD(v111) = LODWORD(STACK[0x22C0]) - 2103959414;
  LODWORD(STACK[0x1E08]) = v97 | v102;
  v124 = v111 ^ (v97 | v102);
  v125 = (LODWORD(STACK[0x1930]) ^ STACK[0x1B78] ^ STACK[0x1830]) - 1472968169;
  STACK[0x1A10] = v125;
  v126 = STACK[0x1EB8];
  LODWORD(v125) = v125 + LODWORD(STACK[0x1EB8]);
  LODWORD(STACK[0x1F50]) = v125;
  v128 = v125 & 1;
  v127 = v128 == 0;
  STACK[0x1168] = v128;
  v129 = STACK[0x11F4];
  if (v128)
  {
    v130 = v105;
  }

  else
  {
    v130 = STACK[0x11F4];
  }

  LODWORD(STACK[0x21E0]) = v130;
  v131 = STACK[0x1740];
  if (v127)
  {
    v132 = v105;
  }

  else
  {
    v132 = v131;
  }

  STACK[0x1B88] = v132;
  v133 = STACK[0x2000];
  v134 = STACK[0x1F60];
  if (v127)
  {
    v135 = STACK[0x2000];
  }

  else
  {
    v135 = STACK[0x1F60];
  }

  LODWORD(STACK[0x1F48]) = v135;
  v136 = STACK[0x1D88];
  if (!v127)
  {
    v134 = STACK[0x1D88];
  }

  LODWORD(STACK[0x2138]) = v134;
  v137 = STACK[0x2228];
  if (v127)
  {
    v138 = STACK[0x2228];
  }

  else
  {
    v138 = v106;
  }

  LODWORD(STACK[0x1CE0]) = v138;
  if (v127)
  {
    v137 = v126;
  }

  LODWORD(STACK[0x2130]) = v137;
  v139 = STACK[0x113C];
  if (v127)
  {
    v140 = STACK[0x113C];
  }

  else
  {
    v140 = v126;
  }

  LODWORD(STACK[0x2048]) = v140;
  if (v127)
  {
    v141 = v107;
  }

  else
  {
    v141 = v110;
  }

  LODWORD(STACK[0x2238]) = v141;
  v142 = STACK[0x22B0];
  if (v127)
  {
    v143 = v110;
  }

  else
  {
    v143 = STACK[0x22B0];
  }

  LODWORD(STACK[0x2178]) = v143;
  v144 = STACK[0x1BD0];
  LODWORD(STACK[0x1DE8]) = v100 + STACK[0x1BD0];
  LODWORD(v145) = (v100 + v144) ^ LODWORD(STACK[0x22E0]);
  v146 = STACK[0x2260];
  if (v127)
  {
    v147 = STACK[0x2260];
  }

  else
  {
    v147 = v113;
  }

  LODWORD(STACK[0x2030]) = v147;
  if (v127)
  {
    v145 = v145;
  }

  else
  {
    v113 = v145;
    v145 = v114;
  }

  STACK[0x1B48] = v145;
  if (!v127)
  {
    v114 = v146;
  }

  v148 = STACK[0x22A0];
  if (v127)
  {
    v149 = v115;
  }

  else
  {
    v149 = STACK[0x22A0];
  }

  LODWORD(STACK[0x1F60]) = v149;
  v150 = STACK[0x1BA0];
  if (v127)
  {
    v151 = STACK[0x1BA0];
  }

  else
  {
    v151 = v115;
  }

  LODWORD(STACK[0x1F98]) = v151;
  if (v127)
  {
    v152 = v117;
  }

  else
  {
    v152 = v118;
  }

  LODWORD(STACK[0x1FA8]) = v152;
  if (v127)
  {
    v153 = v118;
  }

  else
  {
    v153 = v119;
  }

  LODWORD(STACK[0x134C]) = v153;
  v154 = LODWORD(STACK[0xFF0]) ^ LODWORD(STACK[0x1EB0]);
  if (v127)
  {
    v155 = LODWORD(STACK[0xFF0]) ^ LODWORD(STACK[0x1EB0]);
  }

  else
  {
    v155 = v120;
  }

  LODWORD(STACK[0x1EE0]) = v155;
  v156 = STACK[0x1E80];
  if (v127)
  {
    v157 = STACK[0x1E80];
  }

  else
  {
    v157 = v154;
  }

  LODWORD(STACK[0x1958]) = v157;
  if (v127)
  {
    v158 = v121;
  }

  else
  {
    v158 = v156;
  }

  LODWORD(STACK[0x2020]) = v158;
  STACK[0x1EB8] = v122;
  STACK[0x1EB0] = v123;
  LODWORD(STACK[0xDAC]) = v123 ^ v122;
  v159 = LODWORD(STACK[0x22D0]) ^ v123 ^ v122;
  v160 = STACK[0x1B20];
  if (v127)
  {
    v161 = v159;
  }

  else
  {
    v161 = STACK[0x1B20];
  }

  LODWORD(STACK[0x16B0]) = v161;
  v162 = STACK[0x2070];
  if (v127)
  {
    v163 = STACK[0x2070];
  }

  else
  {
    v163 = v159;
  }

  LODWORD(STACK[0x1FB0]) = v163;
  LODWORD(STACK[0x1E80]) = v144 + v112;
  v164 = LODWORD(STACK[0x2250]) ^ (v144 + v112);
  LODWORD(v165) = STACK[0x1C58];
  if (v127)
  {
    v166 = v136;
  }

  else
  {
    v166 = STACK[0x1C58];
  }

  v167 = STACK[0x13FC];
  if (v127)
  {
    v168 = STACK[0x13FC];
  }

  else
  {
    v168 = v129;
  }

  LODWORD(STACK[0x2230]) = v168;
  if (v127)
  {
    v169 = v131;
  }

  else
  {
    v169 = v167;
  }

  if (v127)
  {
    v170 = v142;
  }

  else
  {
    v170 = v108;
  }

  LODWORD(STACK[0x2228]) = v170;
  LODWORD(STACK[0x17E0]) = v106;
  if (v127)
  {
    v171 = v106;
  }

  else
  {
    v171 = v139;
  }

  if (v127)
  {
    v165 = v165;
  }

  else
  {
    v165 = v133;
  }

  v172 = STACK[0x1980];
  if (v127)
  {
    v173 = STACK[0x1980];
  }

  else
  {
    v173 = v109;
  }

  LODWORD(STACK[0xDCC]) = v173;
  v174 = STACK[0x22A8];
  v175 = STACK[0x1698];
  if (v127)
  {
    v176 = STACK[0x22A8];
  }

  else
  {
    v176 = STACK[0x1698];
  }

  STACK[0x9F8] = v107;
  LODWORD(STACK[0x1DB0]) = v108;
  if (v127)
  {
    v177 = v108;
  }

  else
  {
    v177 = v107;
  }

  STACK[0x2028] = v109;
  if (v127)
  {
    v174 = v109;
    v178 = v175;
  }

  else
  {
    v178 = v172;
  }

  if (v127)
  {
    v179 = v116;
  }

  else
  {
    v179 = v150;
  }

  LODWORD(STACK[0x1404]) = v117;
  v180 = STACK[0x1988];
  if (v127)
  {
    v181 = STACK[0x1988];
  }

  else
  {
    v181 = v117;
  }

  LODWORD(STACK[0x1CA0]) = v116;
  if (v127)
  {
    v116 = v148;
  }

  LODWORD(STACK[0xFCC]) = v119;
  if (v127)
  {
    v182 = v119;
  }

  else
  {
    v182 = v180;
  }

  LODWORD(STACK[0x1B3C]) = v121;
  LODWORD(STACK[0x1878]) = v120;
  if (v127)
  {
    v183 = v120;
  }

  else
  {
    v183 = v121;
  }

  v184 = STACK[0x1930];
  if (v127)
  {
    v185 = v160;
  }

  else
  {
    v185 = v184;
  }

  v186 = STACK[0x1830];
  if (v127)
  {
    v187 = STACK[0x1830];
  }

  else
  {
    v187 = STACK[0x17E8];
  }

  if (v127)
  {
    v188 = v184;
  }

  else
  {
    v188 = v162;
  }

  if (v127)
  {
    v189 = STACK[0x17E8];
  }

  else
  {
    v189 = v164;
  }

  LODWORD(STACK[0x1748]) = v164;
  if (v127)
  {
    v190 = v164;
  }

  else
  {
    v190 = v124;
  }

  LODWORD(STACK[0x19F8]) = v124;
  if (v127)
  {
    v191 = v124;
  }

  else
  {
    v191 = v186;
  }

  v192 = (STACK[0x1F50] & 2) == 0;
  STACK[0x17F0] = STACK[0x1F50] & 2;
  v193 = STACK[0x1F48];
  if (v192)
  {
    v194 = v166;
  }

  else
  {
    v194 = STACK[0x1F48];
  }

  LODWORD(STACK[0x1850]) = v194;
  if (v192)
  {
    v166 = v193;
  }

  LODWORD(STACK[0xFE4]) = v166;
  v195 = STACK[0x2130];
  if (v192)
  {
    v196 = v171;
  }

  else
  {
    v196 = v195;
  }

  STACK[0x1A18] = v196;
  if (v192)
  {
    v197 = v195;
  }

  else
  {
    v197 = v171;
  }

  LODWORD(STACK[0x2130]) = v197;
  if (v192)
  {
    v198 = v174;
  }

  else
  {
    v198 = v178;
  }

  LODWORD(STACK[0x1640]) = v198;
  if (v192)
  {
    v199 = v178;
  }

  else
  {
    v199 = v174;
  }

  LODWORD(STACK[0x1BF0]) = v199;
  v200 = STACK[0x22F8];
  if (v192)
  {
    v201 = v114;
  }

  else
  {
    v201 = v113;
  }

  LODWORD(STACK[0x1994]) = v201;
  if (v192)
  {
    v202 = v113;
  }

  else
  {
    v202 = v114;
  }

  LODWORD(STACK[0x1778]) = v202;
  v203 = STACK[0x1F60];
  if (v192)
  {
    v204 = STACK[0x1F60];
  }

  else
  {
    v204 = v179;
  }

  LODWORD(STACK[0x1B18]) = v204;
  if (v192)
  {
    v205 = v179;
  }

  else
  {
    v205 = v203;
  }

  LODWORD(STACK[0x16F0]) = v205;
  v206 = STACK[0x2178];
  if (v192)
  {
    v207 = v177;
  }

  else
  {
    v207 = STACK[0x2178];
  }

  LODWORD(STACK[0x1028]) = v207;
  if (v192)
  {
    v208 = v206;
  }

  else
  {
    v208 = v177;
  }

  LODWORD(STACK[0x2178]) = v208;
  v209 = STACK[0x1F98];
  if (v192)
  {
    v210 = STACK[0x1F98];
  }

  else
  {
    v210 = v116;
  }

  LODWORD(STACK[0x17A0]) = v210;
  if (v192)
  {
    v211 = v116;
  }

  else
  {
    v211 = v209;
  }

  LODWORD(STACK[0x12BC]) = v211;
  v212 = STACK[0x1FA8];
  if (v192)
  {
    v213 = STACK[0x1FA8];
  }

  else
  {
    v213 = v182;
  }

  LODWORD(STACK[0x1AD4]) = v213;
  if (v192)
  {
    v214 = v182;
  }

  else
  {
    v214 = v212;
  }

  LODWORD(STACK[0x1344]) = v214;
  v215 = STACK[0x1944];
  LODWORD(STACK[0x1770]) = (LODWORD(STACK[0x1EE8]) | LODWORD(STACK[0x1944])) - 1575013781 - ((2 * (LODWORD(STACK[0x1EE8]) | LODWORD(STACK[0x1944]))) & 0x443E6400);
  v216 = STACK[0x1F18];
  v217 = v216 - ((2 * v216) & 0x22);
  v218 = STACK[0x21E0];
  if (v192)
  {
    v219 = STACK[0x21E0];
  }

  else
  {
    v219 = v169;
  }

  LODWORD(STACK[0x15C0]) = v219;
  STACK[0x1AB0] = v169;
  if (v192)
  {
    v220 = v169;
  }

  else
  {
    v220 = v218;
  }

  LODWORD(STACK[0x1CB8]) = v220;
  if (v192)
  {
    v221 = v165;
  }

  else
  {
    v221 = STACK[0x2138];
  }

  LODWORD(STACK[0x1798]) = v221;
  STACK[0x1A90] = v165;
  v222 = STACK[0x1CE0];
  v223 = STACK[0x2048];
  if (v192)
  {
    v224 = STACK[0x1CE0];
  }

  else
  {
    v224 = STACK[0x2048];
  }

  LODWORD(STACK[0x21E0]) = v224;
  if (v192)
  {
    v225 = v223;
  }

  else
  {
    v225 = v222;
  }

  LODWORD(STACK[0x12C0]) = v225;
  v226 = STACK[0x2030];
  v227 = STACK[0x1B48];
  if (v192)
  {
    v228 = STACK[0x1B48];
  }

  else
  {
    v228 = STACK[0x2030];
  }

  LODWORD(STACK[0x1BC0]) = v228;
  if (v192)
  {
    v229 = v226;
  }

  else
  {
    v229 = v227;
  }

  LODWORD(STACK[0x1954]) = v229;
  v230 = STACK[0x1FB0];
  if (v192)
  {
    v231 = STACK[0x1FB0];
  }

  else
  {
    v231 = v185;
  }

  LODWORD(STACK[0x17D0]) = v231;
  STACK[0x1D60] = v185;
  if (v192)
  {
    v232 = v185;
  }

  else
  {
    v232 = v230;
  }

  if (v192)
  {
    v233 = v187;
  }

  else
  {
    v233 = v190;
  }

  LODWORD(STACK[0xD5C]) = v233;
  STACK[0x1008] = v190;
  if (v192)
  {
    v234 = v190;
  }

  else
  {
    v234 = v187;
  }

  LODWORD(STACK[0x1718]) = v234;
  v235 = (27 * (v216 & 0x39));
  v236 = STACK[0x1B88];
  if (v192)
  {
    LODWORD(v236) = STACK[0x2230];
  }

  LODWORD(STACK[0x1760]) = v236;
  LODWORD(STACK[0x1D50]) = v176;
  v237 = STACK[0xDCC];
  if (!v192)
  {
    v237 = v176;
  }

  LODWORD(STACK[0x2138]) = v237;
  v238 = STACK[0x2238];
  if (v192)
  {
    v238 = STACK[0x2228];
  }

  LODWORD(STACK[0x1A74]) = v238;
  LODWORD(STACK[0x1B54]) = v181;
  v239 = STACK[0x134C];
  if (!v192)
  {
    v239 = v181;
  }

  LODWORD(STACK[0x1BA4]) = v239;
  v240 = STACK[0x1EE0];
  v241 = STACK[0x2020];
  if (v192)
  {
    v242 = STACK[0x1EE0];
  }

  else
  {
    v242 = STACK[0x2020];
  }

  LODWORD(STACK[0x1618]) = v242;
  if (v192)
  {
    v243 = v241;
  }

  else
  {
    v243 = v240;
  }

  LODWORD(STACK[0x19D4]) = v243;
  v244 = STACK[0x16B0];
  if (v192)
  {
    v245 = STACK[0x16B0];
  }

  else
  {
    v245 = v188;
  }

  LODWORD(STACK[0x1B10]) = v245;
  LODWORD(STACK[0x1C08]) = v189;
  LODWORD(STACK[0x1004]) = v191;
  if (v192)
  {
    v246 = v191;
  }

  else
  {
    v246 = v189;
  }

  LODWORD(STACK[0x1AD8]) = v246;
  STACK[0x1CB0] = v183;
  v247 = STACK[0x1958];
  if (!v192)
  {
    v247 = v183;
  }

  LODWORD(STACK[0x1B70]) = v247;
  STACK[0x1F60] = v188;
  if (v192)
  {
    v248 = v188;
  }

  else
  {
    v248 = v244;
  }

  LODWORD(STACK[0x1A2C]) = v248;
  v249 = LODWORD(STACK[0x20D8]) ^ (73 * (v235 == 30));
  v250 = LODWORD(STACK[0x1EF0]) << 16;
  LODWORD(STACK[0xC2C]) = LODWORD(STACK[0x2210]) + 67;
  LODWORD(STACK[0xF0C]) = LODWORD(STACK[0x1F40]) ^ 0x63;
  LODWORD(STACK[0xF18]) = LODWORD(STACK[0x2208]) + 100;
  LODWORD(STACK[0x1FA8]) = LODWORD(STACK[0x21D0]) + 18;
  LODWORD(STACK[0x2030]) = LODWORD(STACK[0x2200]) + 17;
  LODWORD(STACK[0x1F50]) = LODWORD(STACK[0x2180]) ^ 0x25;
  LODWORD(STACK[0xECC]) = LODWORD(STACK[0x21F8]) + 17;
  LODWORD(STACK[0x2048]) = STACK[0x2060];
  LODWORD(STACK[0xF04]) = LODWORD(STACK[0x21E8]) + 17;
  LODWORD(STACK[0xED0]) = LODWORD(STACK[0x21D8]) + 17;
  LODWORD(STACK[0xC30]) = LODWORD(STACK[0x21C8]) - 102;
  LODWORD(STACK[0xEC0]) = LODWORD(STACK[0x21C0]) + 18;
  LODWORD(STACK[0xEC4]) = LODWORD(STACK[0x21B8]) + 17;
  LODWORD(STACK[0xC28]) = LODWORD(STACK[0x21B0]) + 110;
  LODWORD(STACK[0xC20]) = LODWORD(STACK[0x21A0]) - 115;
  LODWORD(STACK[0xED4]) = LODWORD(STACK[0x1700]) ^ 0x63;
  LODWORD(STACK[0xEB8]) = LODWORD(STACK[0x16F8]) - 34;
  LODWORD(STACK[0xC1C]) = LODWORD(STACK[0x21A8]) - 113;
  LODWORD(STACK[0xEB4]) = LODWORD(STACK[0x2198]) + 17;
  STACK[0x10E0] = STACK[0x2148] - 0x1E0860A420278C8;
  LODWORD(STACK[0xEBC]) = LODWORD(STACK[0x2190]) + 18;
  LODWORD(STACK[0x10BC]) = LODWORD(STACK[0x2128]) + 46;
  LODWORD(STACK[0x1F98]) = LODWORD(STACK[0x2118]) + 17;
  LODWORD(STACK[0xC14]) = LODWORD(STACK[0x1F28]) ^ 0xFFFFFF90;
  LODWORD(STACK[0xF08]) = v217 + 17;
  LODWORD(STACK[0xC18]) = LODWORD(STACK[0x2120]) + 17;
  STACK[0x1C90] = LODWORD(STACK[0x1E10]) ^ 0xFFFFFFE0;
  LODWORD(STACK[0xEAC]) = LODWORD(STACK[0x2110]) + 16;
  LODWORD(STACK[0xEF0]) = STACK[0x1F00] ^ 0xFFFFFF90;
  LODWORD(STACK[0xC24]) = LODWORD(STACK[0x2108]) + 18;
  LODWORD(STACK[0xF34]) = LODWORD(STACK[0x2100]) + 17;
  LODWORD(STACK[0xF10]) = LODWORD(STACK[0x2098]) - 117;
  LODWORD(STACK[0xEB0]) = LODWORD(STACK[0x20F8]) + 17;
  STACK[0x1FB0] = (LODWORD(STACK[0x20F0]) + 17);
  LODWORD(STACK[0x1F48]) = LODWORD(STACK[0x20E8]) + 17;
  LODWORD(STACK[0x10B8]) = LODWORD(STACK[0x20E0]) + 17;
  LODWORD(STACK[0xEA4]) = LODWORD(STACK[0x20C8]) - 6;
  LODWORD(STACK[0xCEC]) = LODWORD(STACK[0x21F0]) + 18;
  LODWORD(STACK[0xCE8]) = LODWORD(STACK[0x20C0]) + 17;
  LODWORD(STACK[0x2060]) = LODWORD(STACK[0x1EF8]) + 2063487871;
  LODWORD(STACK[0xEA8]) = LODWORD(STACK[0x2080]) + 67;
  LODWORD(STACK[0xCFC]) = LODWORD(STACK[0x20B8]) + 18;
  STACK[0xEF8] = (LODWORD(STACK[0x1ED8]) + 18);
  LODWORD(STACK[0xEF4]) = LODWORD(STACK[0x20B0]) + 17;
  LODWORD(STACK[0xC10]) = LODWORD(STACK[0x20A8]) + 17;
  LODWORD(STACK[0xF28]) = LODWORD(STACK[0x2078]) + 17;
  LODWORD(STACK[0xEC8]) = LODWORD(STACK[0x20A0]) + 17;
  LODWORD(STACK[0x1E58]) = LODWORD(STACK[0x20D0]) + 17;
  LODWORD(STACK[0x2148]) = STACK[0x1FF8];
  LODWORD(STACK[0x1AE0]) = STACK[0x1FC0];
  LODWORD(STACK[0x1960]) = LODWORD(STACK[0x22B8]) - 203490304;
  LODWORD(STACK[0x1ABC]) = LODWORD(STACK[0x1F90]) ^ 0xB7C9C0F3;
  LODWORD(STACK[0x1444]) = LODWORD(STACK[0x1ED0]) ^ 0x42968580;
  LODWORD(STACK[0x1FC0]) = LODWORD(STACK[0x1F38]) ^ 0x95320C4;
  LODWORD(STACK[0x21E8]) = STACK[0x2250];
  LODWORD(STACK[0x1F18]) = LODWORD(STACK[0x22C0]) - 1097171986;
  LODWORD(STACK[0x1244]) = LODWORD(STACK[0x1E98]) ^ 0x413655B3;
  v251 = STACK[0x1E88];
  v252 = STACK[0x1E90];
  LODWORD(STACK[0x1A70]) = STACK[0x2298];
  LODWORD(STACK[0x1B90]) = STACK[0x22A8];
  LODWORD(STACK[0x21B0]) = STACK[0x2260];
  LODWORD(STACK[0xE90]) = LODWORD(STACK[0x2218]) - 90;
  v253 = *(v200 + 8 * v249);
  LODWORD(STACK[0x19D8]) = STACK[0x22E0];
  STACK[0x1978] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x2098]) = STACK[0x2088];
  LODWORD(STACK[0x2218]) = STACK[0x22A0];
  LODWORD(STACK[0x2078]) = STACK[0x22D0];
  LODWORD(STACK[0x1F28]) = v250;
  LODWORD(STACK[0x2260]) = v240;
  LODWORD(STACK[0x1AEC]) = STACK[0x2090];
  LODWORD(STACK[0xE84]) = 58;
  LODWORD(STACK[0xE80]) = 143;
  LODWORD(STACK[0xE8C]) = 233;
  STACK[0x2118] = STACK[0x1C78];
  LODWORD(STACK[0x1A38]) = v232;
  v254 = STACK[0x1C00];
  LODWORD(STACK[0x15A0]) = STACK[0x1C00];
  LODWORD(STACK[0x1FF8]) = STACK[0xFB0];
  LODWORD(STACK[0x1598]) = v254;
  LODWORD(STACK[0x1A08]) = STACK[0x1DC8];
  LODWORD(STACK[0x2210]) = v254;
  LODWORD(STACK[0x1730]) = v252;
  LODWORD(STACK[0x1B00]) = v252;
  LODWORD(STACK[0x13F0]) = v252;
  LODWORD(STACK[0x18D8]) = STACK[0x16E8];
  LODWORD(STACK[0x1C68]) = v251;
  LODWORD(STACK[0x1820]) = v215;
  LODWORD(STACK[0x2108]) = v251;
  LODWORD(STACK[0x1434]) = v251;
  LODWORD(STACK[0xF20]) = STACK[0xF2C];
  LODWORD(STACK[0xCE4]) = STACK[0x1678];
  LODWORD(STACK[0xF24]) = STACK[0x1428];
  LODWORD(STACK[0xE88]) = STACK[0x1160];
  LODWORD(STACK[0x10D4]) = STACK[0x1070];
  LODWORD(STACK[0xF1C]) = STACK[0xF30];
  return v253(4294967178);
}

uint64_t sub_26AA27560()
{
  LODWORD(STACK[0x2008]) = v1;
  LODWORD(STACK[0x1FE0]) = v0;
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  v4 = STACK[0x2210];
  v5 = STACK[0x1FC8];
  v6 = STACK[0x2218];
  v7 = STACK[0x2148];
  v8 = STACK[0x21E8];
  v9 = STACK[0x21E0];
  v10 = STACK[0x2130];
  v11 = STACK[0x1CC8];
  v12 = STACK[0x21B0];
  LODWORD(STACK[0x1970]) = STACK[0x11F4];
  v13 = STACK[0x2118];
  v14 = *(STACK[0x2270] + ((STACK[0x1FD8] < 0xC0) ^ 0x59));
  HIDWORD(v15) = v14 ^ 0x11;
  LODWORD(v15) = v14 << 24;
  v16 = *(v3 + 8 * ((226 * ((v2 ^ ((((v15 >> 31) >> 2) & 9 ^ (v15 >> 31)) == 61)) & 1)) ^ v2));
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2230]) = v11;
  LODWORD(STACK[0x2128]) = v12;
  LODWORD(STACK[0x1C88]) = v10;
  LODWORD(STACK[0x1CA8]) = v9;
  LODWORD(STACK[0x2228]) = v8;
  LODWORD(STACK[0x1C9C]) = v7;
  LODWORD(STACK[0x2220]) = v6;
  LODWORD(STACK[0x2238]) = v5;
  LODWORD(STACK[0x2200]) = v4;
  STACK[0x1C78] = v13;
  return v16();
}

uint64_t sub_26AA27674(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v14 = *(v10 + (v13 ^ 0x60) + 768);
  *(v4 + v13) = v14 ^ (16 * (v14 ^ a1) * (v14 ^ a1)) ^ v11;
  v15 = *(a4 + ((!(v14 & 1) + (v14 & 1) + v13 < ((v7 - 806) ^ v8)) ^ v9));
  HIDWORD(v16) = v15 ^ v6;
  LODWORD(v16) = v15 << 24;
  return (*(v12 + 8 * ((((v5 & ((v16 >> 31) >> 2) ^ (v16 >> 31)) != 61) * a2) ^ v7)))();
}

uint64_t sub_26AA276F0(uint64_t a1)
{
  STACK[0x1FD8] = v3;
  STACK[0x21F8] = v1;
  v4 = *(STACK[0x1B08] + 1013) ^ 0xA4;
  v5 = STACK[0x1018];
  *v5 = *(STACK[0x1B08] + 1012) ^ 0xA5;
  v5[1] = v4;
  v6 = *(v2 + 8 * (v1 + 750));
  LODWORD(STACK[0x21D8]) = 1970035156;
  v7 = STACK[0x1010];
  STACK[0x21D0] = STACK[0x1C18];
  STACK[0x21F0] = STACK[0x1188];
  return v6(a1, v7);
}

uint64_t sub_26AA277DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x21C8]) = a5;
  LODWORD(STACK[0x1EE8]) = v5;
  v6 = LODWORD(STACK[0x2288]);
  v7 = STACK[0x2248];
  LODWORD(STACK[0x21D0]) = LODWORD(STACK[0x2248]) + 78;
  v8 = v6 | LODWORD(STACK[0x1DA0]) | (v7 - 1575014013) ^ LODWORD(STACK[0x1770]);
  v9 = STACK[0x2280];
  v10 = (v7 ^ 0x56677C20) & STACK[0x2280] ^ 0xACCEF991;
  v11 = STACK[0x1AA8] & 0xE3CEF990;
  v12 = STACK[0x1CC8];
  v13 = STACK[0x1928];
  v14 = STACK[0x1EC8];
  LODWORD(STACK[0x21F0]) = v11;
  v15 = (v11 >> 1) ^ 0x828D9959;
  v16 = STACK[0x1FC8];
  v17 = STACK[0x1CD0];
  v18 = STACK[0x1CAC];
  v19 = STACK[0x1E28];
  v20 = ((v10 & v12) << v14) ^ ((v10 & v13) >> STACK[0x1CD0]);
  v21 = STACK[0x1C60];
  v22 = STACK[0x1F20];
  v23 = STACK[0x1B78];
  v24 = *(STACK[0x1B78] + 4 * BYTE1(STACK[0x1F20]));
  v25 = *(STACK[0x1B78] + 4 * STACK[0x1DA8]);
  v26 = *(STACK[0x2168] + (((v24 >> 19) & 0xE0 | (v24 >> 27)) ^ 0x64));
  v27 = ((STACK[0x1CAC] & v15) >> STACK[0x1E28]) ^ ((v15 & STACK[0x1FC8]) << STACK[0x1C60]);
  v28 = (v26 ^ 0xFFFFFFFD) - ((2 * (v26 ^ 0xFFFFFFFD) + 38) & 0x22) - 60;
  LODWORD(STACK[0x62C]) = v28;
  v29 = v28 ^ 0x11 | (v24 << 8);
  v30 = LODWORD(STACK[0x1CC0]);
  v31 = LODWORD(STACK[0x1970]) ^ v30;
  LODWORD(STACK[0x2250]) = v27;
  LODWORD(STACK[0xDA8]) = v20;
  v32 = v31 ^ v27 ^ __ROR4__(v25, 16) ^ v20 ^ v29;
  HIDWORD(v34) = *(v23 + 4 * STACK[0x1DB8]);
  LODWORD(v34) = HIDWORD(v34);
  v33 = v34 >> 8;
  LODWORD(STACK[0x2218]) = v32;
  LODWORD(STACK[0x2208]) = v33;
  v35 = v32 ^ v33;
  v36 = *(v23 + 4 * STACK[0x1DC0]);
  LODWORD(STACK[0x2260]) = v35;
  v37 = v35 ^ v36;
  v38 = v37 ^ LODWORD(STACK[0x1F10]);
  LODWORD(STACK[0x2070]) = v38;
  v39 = STACK[0x2188];
  v40 = (v38 + 8086465 - ((2 * v38) & 0xF6C782)) ^ LODWORD(STACK[0x2188]);
  v41 = v40 ^ v30;
  LODWORD(STACK[0x22E0]) = v8;
  v42 = v40 ^ v8;
  v43 = v37 ^ v30;
  v44 = STACK[0x1F78];
  v45 = STACK[0x1F78] & 0x20E7C618 ^ 0x618C4E38;
  LODWORD(STACK[0x2210]) = v18 & v45;
  v46 = v30 ^ v22 ^ v42;
  v47 = *(STACK[0x2278] + (BYTE2(v46) ^ 0xB0)) ^ 0xFFFFFFBC;
  v48 = -127 * v47 - ((2 * v47) & 0x22) + 17;
  LODWORD(STACK[0xF34]) = v48;
  v49 = *(v23 + 4 * BYTE1(v46));
  HIDWORD(v34) = *(v23 + 4 * (v48 ^ 0x11u));
  LODWORD(v34) = HIDWORD(v34);
  v50 = (v34 >> 16);
  v51 = *(v23 + 4 * (v30 ^ v22 ^ v42));
  v52 = ((v12 & (v9 & 0x467C618 ^ 0x8CF8C30u)) << v14) | ((v13 & (v9 & 0x467C618 ^ 0x8CF8C30u)) >> v19);
  LODWORD(STACK[0x2220]) = v52;
  LODWORD(STACK[0x22C0]) = v43;
  v53 = v52 ^ (((v18 & v45) >> v17) + ((v45 & v16) << v21)) ^ v30 ^ v43;
  HIDWORD(v34) = v49;
  LODWORD(v34) = v49;
  v54 = v34 >> 24;
  STACK[0x22D0] = v46;
  HIDWORD(v34) = *(v23 + ((v46 >> 22) & 0x3FC));
  LODWORD(v34) = HIDWORD(v34);
  v55 = v34 >> 8;
  LODWORD(STACK[0x2200]) = v54;
  LODWORD(STACK[0x21F8]) = v55;
  LODWORD(STACK[0x1218]) = v53;
  STACK[0x1C80] = v50;
  v56 = v51 ^ v54 ^ v55 ^ v53 ^ v50;
  LODWORD(STACK[0x21C0]) = v41;
  LODWORD(v46) = ((v41 ^ v56) + 8086465 - ((2 * (v41 ^ v56)) & 0xF6C782)) ^ v39;
  v57 = (v46 ^ v22) + 8086465 - ((2 * (v46 ^ v22)) & 0xF6C782);
  v58 = ((v13 & (((STACK[0x1F08] & 0xEBDD94A0) >> 1) ^ 0xEBDD94A0)) >> v19) + ((v16 & (((STACK[0x1F08] & 0xEBDD94A0) >> 1) ^ 0xEBDD94A0)) << v14);
  v59 = ((v18 & (v44 & 0x60EECA50 ^ 0xA19756E0)) >> v17) + ((v12 & (v44 & 0x60EECA50 ^ 0xA19756E0)) << v21);
  v60 = STACK[0x1F08] & 0xA56A0C08 ^ 0x6C461A10;
  LODWORD(v50) = STACK[0x1F08] & 0xB76B8D08;
  LODWORD(STACK[0x21D8]) = v50;
  LODWORD(v21) = ((v50 >> 1) ^ 0xC1DCB277) + v60 - 1991720831;
  LODWORD(v50) = v57 ^ v39;
  v61 = v57 ^ v39 ^ v30;
  v62 = *(STACK[0x1CD8] + (((4 * (v57 ^ v39 ^ v30)) & 0xFC | ((v57 ^ v39 ^ v30) >> 6)) ^ 0x2ALL)) ^ 0xFFFFFFA9;
  v63 = v62 - ((2 * v62 + 62) & 0x22) + 112;
  LODWORD(STACK[0xCFC]) = v63;
  LOBYTE(v13) = v63 ^ 0x11;
  v64 = ((4 * (((v46 ^ v22) - 63 - ((2 * (v46 ^ v22)) & 0x82)) ^ v39 ^ v30)) | (71 * (v63 ^ 0x11 | (v62 - 87)))) == 0;
  v65 = (4 * v64) | (16 * v64);
  v66 = v56 ^ v30;
  LODWORD(STACK[0x1980]) = v66;
  v67 = v66 ^ v58;
  v68 = *(v23 + ((v61 >> 22) & 0x3FC));
  v69 = *(v23 + 4 * BYTE1(v61));
  STACK[0x2298] = v61;
  v70 = *(v23 + 4 * BYTE2(v61));
  STACK[0x1978] = v67;
  LODWORD(v67) = v67 ^ v59;
  HIDWORD(v34) = v69;
  LODWORD(v34) = v69;
  LODWORD(STACK[0x1BA8]) = v67;
  LODWORD(v67) = v30 ^ __ROR4__(v68, 8) ^ (v34 >> 24) ^ __ROR4__(v70, 16) ^ v67;
  v71 = *(v23 + 4 * v13);
  LODWORD(STACK[0x1430]) = v67;
  LODWORD(STACK[0x22A8]) = v46 ^ v30;
  LODWORD(v67) = v46 ^ v30 ^ v67 ^ v71;
  v72 = LODWORD(STACK[0x2290]) ^ 0x81818181 ^ v67;
  LODWORD(STACK[0x2288]) = v67 ^ 0xA21F326B;
  LODWORD(STACK[0x22B8]) = v46 ^ v42;
  LODWORD(STACK[0x22B0]) = v72 ^ v30;
  v73 = v44 & 0x2AB5C684 ^ 0x7F7A4F8C;
  LODWORD(STACK[0x113C]) = v50;
  LODWORD(STACK[0x2278]) = *(v23 + (((v50 ^ v72 ^ v46 ^ v42) >> 22) & 0x3FC));
  LODWORD(STACK[0x1264]) = v12 & v21;
  v74 = v73 & v16;
  STACK[0x1858] = v74;
  LODWORD(v21) = ((v18 & v73) >> v19) ^ (v74 << v14);
  v75 = *(STACK[0x22F8] + 8 * (v65 ^ LODWORD(STACK[0x2248])));
  LODWORD(v14) = v42 ^ LODWORD(STACK[0x1F58]);
  LODWORD(STACK[0x19C0]) = v14;
  LODWORD(STACK[0x22A0]) = v14 ^ v30;
  LODWORD(STACK[0xFCC]) = v21;
  return v75(v30);
}

uint64_t sub_26AA27D2C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  STACK[0x1008] = v20;
  LODWORD(STACK[0x1BA0]) = v16;
  v27 = v22 ^ a1 ^ a8;
  v28 = v13 ^ 0xC7BF32F0;
  v29 = STACK[0x2298];
  LODWORD(STACK[0x1958]) = STACK[0x2298] ^ v19;
  v30 = LODWORD(STACK[0x2248]) ^ 0xA8C;
  STACK[0x1F60] = a4 >> 8;
  STACK[0x1168] = (v18 << 16);
  v31 = (v30 - 2649) | 0x14;
  v32 = LODWORD(STACK[0x21F0]) ^ 0xC286C190;
  LODWORD(STACK[0x2060]) = a2 - 906178049;
  LODWORD(STACK[0x2018]) = v26 ^ 0x3C35FED1;
  LODWORD(STACK[0x1CF8]) = a7 ^ 0x16CFA1C5;
  LODWORD(STACK[0xCE8]) = (v15 >> 8) - ((2 * (v15 >> 8)) & 0x22) + 17;
  LODWORD(STACK[0xF28]) = (v15 >> 24) - ((2 * (v15 >> 24)) & 0x22222222) + 17;
  LODWORD(STACK[0xCEC]) = HIBYTE(a6) - ((a6 >> 23) & 0x22222222) + 17;
  STACK[0xCF0] = (v29 >> 16) - ((2 * (v29 >> 16)) & 0xFFFFFFE3) - 15;
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x12F0];
  STACK[0x1600] = STACK[0x12F8];
  STACK[0x15F0] = STACK[0x1320];
  STACK[0x14F0] = STACK[0x1330];
  STACK[0x1568] = STACK[0x1300];
  STACK[0x14E8] = STACK[0x1308];
  STACK[0x1560] = STACK[0x1338];
  STACK[0x1580] = STACK[0x1310];
  STACK[0x1548] = STACK[0x1318];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x2118] = STACK[0x1C78];
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x11F4]) = STACK[0x1EE8];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1F90]) = STACK[0x1BC0];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = v14;
  LODWORD(STACK[0x14E4]) = STACK[0x22A8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x2208];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  LODWORD(STACK[0x19B0]) = STACK[0x1A2C];
  LODWORD(STACK[0x14DC]) = STACK[0x22A0];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x22D0];
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x14D4]) = STACK[0x22B0];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = STACK[0x1CE8];
  LODWORD(STACK[0x14C8]) = v17 << 24;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  STACK[0x2028] = LODWORD(STACK[0x1970]);
  STACK[0x17F0] = LODWORD(STACK[0x21D8]);
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = STACK[0x21F8];
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = a4 << 24;
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x1C08]) = STACK[0x2278];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x22D0]) = STACK[0x1CA4];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x21A0]) = STACK[0x1994];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1BB0]) = STACK[0x19D4];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = STACK[0x12E4];
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = a5;
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1558]) = STACK[0x12EC];
  LODWORD(STACK[0x14B0]) = STACK[0x22B8];
  LODWORD(STACK[0x155C]) = STACK[0x12E8];
  v33 = STACK[0x1C00];
  LODWORD(STACK[0x16B8]) = STACK[0x1C00];
  LODWORD(STACK[0x1840]) = v33;
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x1E28]) = STACK[0x1ADC];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x1F20];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  v34 = STACK[0x1DC8];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1E30]) = v34;
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = STACK[0x1344];
  LODWORD(STACK[0x19B8]) = STACK[0x13FC];
  LODWORD(STACK[0xDCC]) = v15;
  LODWORD(STACK[0x16D0]) = v32;
  LODWORD(STACK[0x1490]) = STACK[0x22E0];
  LODWORD(STACK[0x16A8]) = v28 ^ v31;
  LODWORD(STACK[0x18D8]) = STACK[0x16E8];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x134C]) = STACK[0x1D90];
  LODWORD(STACK[0x1EF0]) = STACK[0x22C0];
  LODWORD(v34) = STACK[0x22E8];
  LODWORD(STACK[0x2198]) = STACK[0x22E8];
  LODWORD(STACK[0x20E0]) = v34;
  LODWORD(STACK[0x2208]) = v34;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x158C]) = v23;
  LODWORD(STACK[0x1588]) = STACK[0x1348];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x13F4]) = STACK[0x2260];
  LODWORD(STACK[0x1EB8]) = v24;
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = a3;
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x2260]) = v27;
  LODWORD(STACK[0x1780]) = STACK[0x2288];
  LODWORD(STACK[0x18E8]) = a9;
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = STACK[0x2200];
  LODWORD(STACK[0x19A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x2180]) = a6 << 8;
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x2250];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1004]) = v21;
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(STACK[0x1544]) = STACK[0x132C];
  LODWORD(STACK[0x16D8]) = STACK[0x1CE4];
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1DD8]) = STACK[0x1A74];
  LODWORD(STACK[0x20B0]) = STACK[0x1BF0];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x2220];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = STACK[0x1768];
  LODWORD(STACK[0x1F40]) = v25;
  LODWORD(STACK[0x2250]) = STACK[0x1BB8];
  LODWORD(STACK[0x1998]) = STACK[0x19A0];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  LODWORD(STACK[0xCE4]) = STACK[0x1678];
  LODWORD(STACK[0xF24]) = STACK[0x1428];
  LODWORD(STACK[0x20C0]) = 1637231454;
  LODWORD(STACK[0xE84]) = 58;
  LODWORD(STACK[0xE80]) = 143;
  LODWORD(STACK[0xE8C]) = 233;
  v35 = STACK[0x1C28];
  STACK[0x20F0] = STACK[0x1C28];
  v36 = STACK[0x990];
  STACK[0x20E8] = STACK[0x990];
  STACK[0x2290] = v35;
  STACK[0x2298] = v36;
  v37 = STACK[0x2138];
  LODWORD(STACK[0x1FF8]) = STACK[0xFB0];
  LODWORD(STACK[0x1F38]) = v37;
  LODWORD(STACK[0x1C68]) = STACK[0x2108];
  LODWORD(STACK[0x2110]) = 922064384;
  LODWORD(STACK[0x2288]) = v37;
  LODWORD(STACK[0xF20]) = STACK[0xF2C];
  LODWORD(STACK[0xE88]) = STACK[0x1160];
  LODWORD(STACK[0x10D4]) = STACK[0x1070];
  LODWORD(STACK[0xF1C]) = STACK[0xF30];
  v9 = STACK[0x1FF8];
  LODWORD(v35) = STACK[0x22D0];
  v10 = STACK[0x2298];
  LODWORD(STACK[0x1F88]) = STACK[0x2288];
  STACK[0x1AC0] = v10;
  LODWORD(STACK[0x1CA4]) = v35;
  v11 = STACK[0x22F8];
  LODWORD(STACK[0x1FF8]) = v9;
  return (*(v11 + 8 * ((37 * (v37 != ((22 * ((((v31 + 1891039136) & 0x8F490A7D) - 223) ^ 0x125) + 877591597) & 0xCBB0F95F) - 31)) ^ (22 * ((((v31 + 1891039136) & 0x8F490A7D) - 223) ^ 0x125)))))();
}

void sub_26AA292B8()
{
  STACK[0x2050] = (v0 >> 8) ^ 0x97C42863BC5F488DLL;
  v2 = STACK[0x20D8];
  LODWORD(STACK[0x18A0]) = STACK[0x20D8];
  v3 = STACK[0x2250];
  LODWORD(STACK[0x17C0]) = STACK[0x2250];
  v4 = STACK[0x18C0];
  LODWORD(STACK[0x16C8]) = STACK[0x18C0];
  STACK[0x13E0] = STACK[0x1408];
  STACK[0x13D0] = STACK[0x1410];
  STACK[0x13D8] = STACK[0x1418];
  STACK[0x12F0] = STACK[0x1608];
  STACK[0x12F8] = STACK[0x1600];
  STACK[0x1320] = STACK[0x15F0];
  STACK[0x1330] = STACK[0x14F0];
  STACK[0x1300] = STACK[0x1568];
  STACK[0x1308] = STACK[0x14E8];
  STACK[0x1338] = STACK[0x1560];
  STACK[0x1310] = STACK[0x1580];
  STACK[0x1318] = STACK[0x1548];
  STACK[0x1530] = STACK[0x1860];
  STACK[0x1538] = STACK[0x1808];
  STACK[0x1518] = STACK[0x1828];
  STACK[0x1508] = STACK[0x1788];
  STACK[0x1510] = STACK[0x16E0];
  STACK[0x1520] = STACK[0x1848];
  STACK[0x1528] = STACK[0x1700];
  STACK[0x15C8] = STACK[0x1728];
  STACK[0x1448] = STACK[0x15E8];
  STACK[0x1450] = STACK[0x1570];
  STACK[0x1460] = STACK[0x1800];
  STACK[0x1458] = STACK[0x15D8];
  STACK[0x1C40] = STACK[0x18B8];
  STACK[0x1A50] = STACK[0x20F0];
  STACK[0x1A48] = STACK[0x20E8];
  STACK[0x1AC0] = STACK[0x2298];
  STACK[0x1C78] = STACK[0x2118];
  STACK[0x2158] = STACK[0x17B8];
  LODWORD(STACK[0x2020]) = STACK[0x20F8];
  LODWORD(STACK[0x1AF0]) = STACK[0x1EB0];
  LODWORD(STACK[0x19D8]) = v1;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2058]) = STACK[0x13F8];
  LODWORD(STACK[0x1DB0]) = STACK[0x1BA8];
  LODWORD(STACK[0x1960]) = STACK[0x20C0];
  LODWORD(STACK[0x1B54]) = STACK[0x20A0];
  LODWORD(STACK[0x17C8]) = STACK[0x14E4];
  LODWORD(STACK[0x1718]) = STACK[0x14FC];
  LODWORD(STACK[0x15C0]) = STACK[0x1690];
  LODWORD(STACK[0x19F8]) = STACK[0x2120];
  LODWORD(STACK[0x17D0]) = STACK[0x14E0];
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  LODWORD(STACK[0x1AF8]) = STACK[0x1F08];
  LODWORD(STACK[0x13E8]) = STACK[0x1420];
  LODWORD(STACK[0x1A2C]) = STACK[0x19B0];
  LODWORD(STACK[0x1A98]) = STACK[0x14DC];
  STACK[0x1A68] = LODWORD(STACK[0x1D30]);
  LODWORD(STACK[0x1970]) = STACK[0x14D8];
  STACK[0x1D68] = LODWORD(STACK[0x1D18]);
  LODWORD(STACK[0x1748]) = STACK[0x1968];
  LODWORD(STACK[0x15A8]) = STACK[0x14F8];
  STACK[0x1B20] = LODWORD(STACK[0x20A8]);
  LODWORD(STACK[0x19E8]) = STACK[0x1D78];
  LODWORD(STACK[0x1438]) = STACK[0x1628];
  LODWORD(STACK[0x1750]) = STACK[0x1500];
  STACK[0x1BD8] = LODWORD(STACK[0x20C8]);
  LODWORD(STACK[0x1400]) = STACK[0x142C];
  LODWORD(STACK[0x1878]) = STACK[0x14D4];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x1618]) = STACK[0x14D0];
  LODWORD(STACK[0x1DD0]) = STACK[0x14CC];
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  STACK[0x1B48] = LODWORD(STACK[0x1DA8]);
  STACK[0x1CE8] = LODWORD(STACK[0x1E90]);
  LODWORD(STACK[0x1404]) = STACK[0x14C8];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  STACK[0x1830] = STACK[0x1858];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x2068]) = STACK[0x1790];
  LODWORD(STACK[0x1B00]) = STACK[0x1EA0];
  LODWORD(STACK[0x1B30]) = STACK[0x1E98];
  STACK[0x1B88] = LODWORD(STACK[0x1D08]);
  STACK[0x1A20] = LODWORD(STACK[0x1D48]);
  LODWORD(STACK[0x1A38]) = STACK[0x2138];
  LODWORD(STACK[0x1B68]) = STACK[0x1F78];
  LODWORD(STACK[0x1640]) = STACK[0x14C4];
  LODWORD(STACK[0x2098]) = STACK[0x2100];
  STACK[0x1A18] = LODWORD(STACK[0x1DE0]);
  LODWORD(STACK[0x16F0]) = STACK[0x17A8];
  STACK[0x1DC8] = LODWORD(STACK[0x1D00]);
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  STACK[0x1A40] = LODWORD(STACK[0x1DC0]);
  LODWORD(STACK[0x12BC]) = STACK[0x1254];
  LODWORD(STACK[0x1444]) = STACK[0x15D0];
  LODWORD(STACK[0x15A0]) = STACK[0x16B8];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  STACK[0x1D60] = LODWORD(STACK[0x1D98]);
  LODWORD(STACK[0x1698]) = STACK[0x1688];
  LODWORD(STACK[0x1738]) = STACK[0x1554];
  LODWORD(STACK[0x1760]) = STACK[0x1590];
  STACK[0x1AC8] = LODWORD(STACK[0x1E88]);
  LODWORD(STACK[0x1928]) = STACK[0x1504];
  LODWORD(STACK[0x1468]) = STACK[0x1CF8];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x19D4]) = STACK[0x1BB0];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x12C0]) = STACK[0x1268];
  LODWORD(STACK[0x1B10]) = STACK[0x1EF8];
  LODWORD(STACK[0x1B58]) = STACK[0x22A8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x1708]) = STACK[0x143C];
  LODWORD(STACK[0x12B0]) = STACK[0x12B8];
  LODWORD(STACK[0x1740]) = STACK[0x14C0];
  LODWORD(STACK[0x18F8]) = STACK[0x14BC];
  LODWORD(STACK[0x12E4]) = STACK[0x157C];
  LODWORD(STACK[0x1470]) = STACK[0x14B8];
  STACK[0x1CD0] = LODWORD(STACK[0x1D40]);
  LODWORD(STACK[0x12B4]) = STACK[0x1264];
  LODWORD(STACK[0x17E0]) = STACK[0x14B4];
  LODWORD(STACK[0x1930]) = STACK[0x1818];
  LODWORD(STACK[0x1CE0]) = STACK[0x1430];
  LODWORD(STACK[0x12EC]) = STACK[0x1558];
  LODWORD(STACK[0x17E8]) = STACK[0x14B0];
  LODWORD(STACK[0x12E8]) = STACK[0x155C];
  LODWORD(STACK[0x1FF8]) = v4;
  LODWORD(STACK[0x1598]) = STACK[0x1840];
  LODWORD(STACK[0x1B90]) = STACK[0x1EE8];
  STACK[0x12D0] = LODWORD(STACK[0x1260]);
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x1AE4]) = STACK[0x1EC0];
  LODWORD(STACK[0x1ADC]) = STACK[0x1E28];
  LODWORD(STACK[0x1850]) = STACK[0x14AC];
  LODWORD(STACK[0x16E8]) = STACK[0x17B0];
  LODWORD(STACK[0x1474]) = STACK[0x14A8];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  STACK[0x1B60] = LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x1A08]) = STACK[0x1E30];
  LODWORD(STACK[0x1710]) = STACK[0x17F8];
  LODWORD(STACK[0x1A58]) = STACK[0x20E0];
  LODWORD(STACK[0x146C]) = STACK[0x14A4];
  LODWORD(STACK[0x15F8]) = STACK[0x14A0];
  LODWORD(STACK[0x17A0]) = STACK[0x149C];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x16B0]) = STACK[0x1498];
  LODWORD(STACK[0x12CC]) = STACK[0x126C];
  LODWORD(STACK[0x1344]) = STACK[0x1494];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x13FC]) = STACK[0x19B8];
  LODWORD(STACK[0x1730]) = STACK[0x16D0];
  LODWORD(STACK[0x13F0]) = STACK[0x1490];
  LODWORD(STACK[0x1758]) = STACK[0x16A8];
  LODWORD(STACK[0x1C68]) = STACK[0x18B0];
  LODWORD(STACK[0x1B18]) = STACK[0x1E78];
  LODWORD(STACK[0x2078]) = STACK[0x1EF0];
  LODWORD(STACK[0x2248]) = STACK[0x2208];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x1F30]) = STACK[0x1EC8];
  LODWORD(STACK[0x15B0]) = STACK[0x16F8];
  LODWORD(STACK[0x2018]) = STACK[0x18A8];
  LODWORD(STACK[0x1C10]) = v2;
  LODWORD(STACK[0x1AE8]) = STACK[0x1F00];
  LODWORD(STACK[0x1820]) = STACK[0x1944];
  LODWORD(STACK[0x15E0]) = STACK[0x158C];
  LODWORD(STACK[0x1348]) = STACK[0x1588];
  LODWORD(STACK[0x1798]) = STACK[0x148C];
  LODWORD(STACK[0x1938]) = STACK[0x2110];
  LODWORD(STACK[0x1778]) = STACK[0x16C0];
  STACK[0x1A90] = LODWORD(STACK[0x1D28]);
  STACK[0x19C8] = LODWORD(STACK[0x18F0]);
  LODWORD(STACK[0x1424]) = STACK[0x19C0];
  LODWORD(STACK[0x1434]) = STACK[0x13F4];
  LODWORD(STACK[0x1F28]) = STACK[0x1EB8];
  LODWORD(STACK[0x1720]) = STACK[0x16A0];
  LODWORD(STACK[0x1F88]) = STACK[0x2288];
  LODWORD(STACK[0x1A00]) = STACK[0x1D70];
  LODWORD(STACK[0x1CAC]) = STACK[0x1488];
  STACK[0x1AB0] = LODWORD(STACK[0x1D50]);
  LODWORD(STACK[0x1ABC]) = STACK[0x1E40];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x1770]) = STACK[0x1780];
  STACK[0x1CB0] = LODWORD(STACK[0x18E8]);
  LODWORD(STACK[0x1638]) = STACK[0x1484];
  LODWORD(STACK[0x17D8]) = STACK[0x1DA0];
  LODWORD(STACK[0x1AA0]) = STACK[0x1480];
  LODWORD(STACK[0x1AA8]) = STACK[0x19A8];
  STACK[0x1A30] = LODWORD(STACK[0x1D38]);
  LODWORD(STACK[0x1BF8]) = STACK[0x2080];
  LODWORD(STACK[0x1B38]) = STACK[0x2090];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  STACK[0x1A10] = LODWORD(STACK[0x2180]);
  LODWORD(STACK[0x1A70]) = STACK[0x1D90];
  LODWORD(STACK[0x1B70]) = STACK[0x1F70];
  LODWORD(STACK[0x1F58]) = STACK[0x1E80];
  LODWORD(STACK[0x1AEC]) = STACK[0x1EA8];
  LODWORD(STACK[0x1478]) = STACK[0x147C];
  LODWORD(STACK[0x1AD8]) = STACK[0x1F20];
  LODWORD(STACK[0x132C]) = STACK[0x1544];
  LODWORD(STACK[0x1CE4]) = STACK[0x16D8];
  STACK[0x1838] = LODWORD(STACK[0x1ED0]);
  LODWORD(STACK[0x1A74]) = STACK[0x1DD8];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1AE0]) = STACK[0x1ED8];
  LODWORD(STACK[0x1C58]) = STACK[0x1D58];
  LODWORD(STACK[0x1AD4]) = STACK[0x1E70];
  LODWORD(STACK[0x1CB8]) = STACK[0x1610];
  STACK[0x19E0] = LODWORD(STACK[0x1D20]);
  LODWORD(STACK[0x1B28]) = STACK[0x1EE0];
  LODWORD(STACK[0x1768]) = STACK[0x1810];
  LODWORD(STACK[0x1B3C]) = STACK[0x1F40];
  LODWORD(STACK[0x1BB8]) = v3;
  LODWORD(STACK[0x19A0]) = STACK[0x1998];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  STACK[0x15B8] = LODWORD(STACK[0x1E38]);
  LODWORD(STACK[0x1440]) = STACK[0x1540];
  LODWORD(STACK[0x19F0]) = STACK[0x1D80];
  LODWORD(STACK[0x2048]) = STACK[0x1F10];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  JUMPOUT(0x26AA2999CLL);
}

void sub_26AA29B10(int a1@<W3>, unint64_t a2@<X4>, unint64_t a3@<X8>)
{
  STACK[0x1C30] = v6;
  LODWORD(STACK[0x2280]) = v5;
  STACK[0x1BD0] = v4;
  STACK[0x1B98] = a2;
  LODWORD(STACK[0x134C]) = a1 + v3 - 3435 - 39;
  STACK[0x2050] = (a3 >> 8) ^ 0x97C42863BC5F488DLL;
  JUMPOUT(0x26AA29B94);
}

uint64_t sub_26AA29CC8(uint64_t a1)
{
  STACK[0xDE0] = v2;
  v4 = STACK[0x121C];
  *(a1 + 2582) = LODWORD(STACK[0xDB0]) ^ 0xDE;
  LODWORD(STACK[0x1E10]) = 8 * v4 + 1624074135 - ((16 * v4) & 0xC19ACFE0) + v1 - 677 + 65;
  LODWORD(STACK[0x22C0]) = 912620060;
  LODWORD(STACK[0x22B8]) = -498746022;
  LODWORD(STACK[0x22E0]) = 1709699563;
  LODWORD(STACK[0x22E8]) = -1219514069;
  LODWORD(STACK[0x22B0]) = -1096220778;
  v5 = *(v3 + 8 * (((v4 < 0x10) * (((v1 - 316) | 0x820) ^ 0x9A1)) ^ (v1 - 367)));
  LODWORD(STACK[0x22A0]) = 1220755453;
  LODWORD(STACK[0x2248]) = -1961687423;
  LODWORD(STACK[0x21F8]) = -1970930037;
  LODWORD(STACK[0x21F0]) = 498501751;
  LODWORD(STACK[0x21D8]) = -375620524;
  return v5(429756393, 4183994078);
}

uint64_t sub_26AA29DEC(uint64_t a1, uint64_t a2)
{
  v5 = *(v4 + 8 * (((((v2 == 0) ^ (2 * (v3 ^ 0xC8)) ^ 0xB1) & 1) * ((2 * (v3 ^ 0x2C8) + 1952) ^ 0xD27)) ^ (2 * (v3 ^ 0x2C8))));
  LODWORD(STACK[0x121C]) = v2;
  return v5(a1, a2, 183);
}

void sub_26AA2A234()
{
  LODWORD(STACK[0x1E10]) = HIBYTE(LODWORD(STACK[0x1E10])) ^ 0x60CD6797;
  LODWORD(STACK[0x21D0]) = 1;
  JUMPOUT(0x26AA2A31CLL);
}

void sub_26AA2C324(unsigned int a1, unsigned int a2, uint64_t a3, int a4, unsigned __int8 a5, int a6, int a7, unsigned int a8)
{
  LOBYTE(v231) = *(v219 + (v221 + v222 - 1761) % 0x174u);
  LODWORD(STACK[0x1E08]) += 15;
  v232 = -111;
  LODWORD(STACK[0x21D0]) = 2;
  LODWORD(STACK[0x121C]) = 15;
  LODWORD(STACK[0x21A8]) = -256 * (a7 ^ 0x11 | ((LODWORD(STACK[0x21C8]) ^ 0x11) << 8) | ((v223 ^ 0x11111111) << 16));
  LODWORD(STACK[0x21A0]) = v224 ^ 0x11;
  LODWORD(STACK[0x21C0]) = v228 ^ 0x11 | ((((a6 ^ 0x11111111) << 16) | ((v226 ^ 0x11) << 8) | a5 ^ 0x11) << 8);
  v8 = ((a4 ^ 0x11) << 8) | ((v229 ^ 0x11) << 16);
  v9 = v225 ^ 0x11;
  v10 = v230 ^ 0x11;
  while (1)
  {
    v11 = v227 ^ 0x11;
    v12 = a8 ^ 0x11;
    v13 = v8 | v9;
    v14 = v10 + (v13 << 8);
    HIDWORD(v16) = v220 ^ 0x34;
    LODWORD(v16) = v220 ^ 0x45606900;
    v15 = v16 >> 7;
    HIDWORD(v16) = v220 ^ 0x6934;
    LODWORD(v16) = v220 ^ 0x45600000;
    v17 = v16 >> 18;
    HIDWORD(v16) = v217 ^ 0x16;
    LODWORD(v16) = v217 ^ 0xBEA8FF80;
    v18 = v16 >> 7;
    HIDWORD(v16) = v217 ^ 0xFF96;
    LODWORD(v16) = v217 ^ 0xBEA80000;
    v19 = v16 >> 18;
    v20 = v18 ^ (v217 >> 3);
    v21 = (v12 << 8) & 0xFF00FFFF | (v11 << 16);
    v22 = (v21 >> 9) + (v21 >> 11);
    v23 = v21 & 0xFFFFFF00 | v231 ^ 0x11;
    v24 = v232 ^ 0x11 | (v23 << 8);
    v25 = v15 - v17 + ((v220 >> 3) ^ 0x8AC0D26) - 2 * ((v15 - v17) & ((v220 >> 3) ^ 0x8AC0D26)) + (v8 >> 9) - (v8 >> 11) - v24 - (v13 >> 2) + v14 + (v14 << 15) - (v14 << 13);
    HIDWORD(v16) = a1 ^ 0x18FE9;
    LODWORD(v16) = a1 ^ 0x199C0000;
    v26 = v16 >> 18;
    v27 = v25 + 1163946292 - ((2 * v25) & 0x8AC0D268);
    LODWORD(STACK[0x1FD8]) = v27 ^ 0x45606934;
    v28 = (v27 ^ 0x45606934) + ((((v22 + 40960 * v24) ^ (v23 >> 2)) + (v20 ^ v19 ^ 0x17D51FF2)) ^ v24);
    HIDWORD(v16) = v27 ^ 0x6934;
    LODWORD(v16) = v27 ^ 0x45600000;
    v29 = v16 >> 17;
    v30 = (a1 >> 3) ^ 0x333B1FD;
    v31 = v26 ^ (a1 >> 7) ^ ((a1 ^ 0x199D8FE9) << 25);
    HIDWORD(v16) = v27 ^ 0x6934;
    LODWORD(v16) = v27 ^ 0x45600000;
    v32 = v16 >> 19;
    HIDWORD(v16) = a2 ^ 0x5E;
    LODWORD(v16) = a2 ^ 0xF962AE80;
    v33 = v16 >> 7;
    v34 = (a2 >> 3) ^ 0x1F2C55DB;
    v35 = v28 - 1096220778 - ((2 * v28) & 0x7D51FF2C);
    HIDWORD(v16) = v35 ^ 0xFF96;
    LODWORD(v16) = v35 ^ 0xBEA80000;
    v36 = v16 >> 17;
    v37 = v33 ^ __ROR4__(a2, 18);
    LODWORD(STACK[0x1F90]) = v27;
    v38 = v35 ^ 0x41570069;
    v39 = (v27 ^ 0xBA9F96CB) + ((v29 - v32 + ((v27 >> 10) ^ 0x11581A)) ^ ((v31 ^ 0x333B1F) - v30)) + (v35 ^ 0x41570069) + 2;
    HIDWORD(v16) = v35 ^ 0xFF96;
    LODWORD(v16) = v35 ^ 0xBEA80000;
    v40 = v16 >> 19;
    LODWORD(STACK[0x22B0]) = v35;
    HIDWORD(v16) = LODWORD(STACK[0x22B8]) ^ 0x5A;
    LODWORD(v16) = LODWORD(STACK[0x22B8]) ^ 0xE245BD00;
    v41 = v16 >> 7;
    HIDWORD(v16) = LODWORD(STACK[0x22B8]) ^ 0x1BD5A;
    LODWORD(v16) = LODWORD(STACK[0x22B8]) ^ 0xE2440000;
    v42 = v16 >> 18;
    v43 = v39 + 429756393 - ((2 * v39) & 0x333B1FD2);
    HIDWORD(v16) = v43 ^ 0x18FE9;
    LODWORD(v16) = v43 ^ 0x199C0000;
    v44 = v16 >> 17;
    v45 = (v35 ^ 0x41570069) + (((v37 ^ 0xABB7BE58) - v34) ^ (v35 >> 10) ^ 0x2FAA3F ^ (v36 + v40)) + (v43 ^ 0xE6627016) + 2;
    HIDWORD(v16) = v43 ^ 0x58FE9;
    LODWORD(v16) = v43 ^ 0x19980000;
    v46 = v16 >> 19;
    v47 = STACK[0x2248];
    HIDWORD(v16) = LODWORD(STACK[0x2248]) ^ 1;
    LODWORD(v16) = LODWORD(STACK[0x2248]) ^ 0x8B130680;
    v48 = v16 >> 7;
    v49 = v45 - 110973218 - ((2 * v45) & 0xF2C55DBC);
    v50 = v46 ^ v44;
    v51 = v49 ^ 0xF962AEDE;
    v52 = ((LODWORD(STACK[0x22B8]) >> 3) ^ 0xE3B74854) + v42 + v41 + (v43 ^ 0xE6627016) + ((v43 >> 10) ^ 0x66763) + v50 + (v49 ^ 0xF962AEDE) + 2;
    v53 = v52 - 498746022 - ((2 * v52) & 0xC48B7AB4);
    HIDWORD(v16) = v49 ^ 0xAEDE;
    LODWORD(v16) = v49 ^ 0xF9620000;
    v54 = v16 >> 17;
    HIDWORD(v16) = LODWORD(STACK[0x2248]) ^ 0x30681;
    LODWORD(v16) = LODWORD(STACK[0x2248]) ^ 0x8B100000;
    v55 = v16 >> 18;
    HIDWORD(v16) = v49 ^ 0x2AEDE;
    LODWORD(v16) = v49 ^ 0xF9600000;
    LODWORD(STACK[0x1E20]) = v49;
    v56 = v48 + ((v47 >> 3) ^ 0x116260D0) + v55 + (v49 ^ 0xF962AEDE) + ((v54 + (v16 >> 19)) ^ (v49 >> 10) ^ 0x3E58AB);
    HIDWORD(v16) = LODWORD(STACK[0x21D8]) ^ 0x54;
    LODWORD(v16) = LODWORD(STACK[0x21D8]) ^ 0xE99C7C00;
    v57 = v16 >> 7;
    HIDWORD(v16) = LODWORD(STACK[0x21D8]) ^ 0x7C54;
    LODWORD(v16) = LODWORD(STACK[0x21D8]) ^ 0xE99C0000;
    v58 = v16 >> 18;
    HIDWORD(v16) = v53 ^ 0x1BD5A;
    LODWORD(v16) = v53 ^ 0xE2440000;
    v59 = v16 >> 17;
    v60 = v53 ^ v56;
    HIDWORD(v16) = v53 ^ 0x5BD5A;
    LODWORD(v16) = v53 ^ 0xE2400000;
    v61 = ((v53 >> 10) ^ 0x38916F) + (v58 ^ (LODWORD(STACK[0x21D8]) >> 3) ^ v57 ^ 0x1D338F8A) - (v16 >> 19) - v59;
    v62 = (v218 >> 3) ^ 0xF925089F;
    HIDWORD(v16) = v218 ^ 3;
    LODWORD(v16) = v218 ^ 0x36D7BB00;
    v63 = v16 >> 7;
    HIDWORD(v16) = v218 ^ 0x3BB03;
    LODWORD(v16) = v218 ^ 0x36D40000;
    v64 = v61 ^ v56;
    v65 = v63 ^ (v16 >> 18);
    HIDWORD(v16) = v60 ^ 0x1BD5A;
    LODWORD(v16) = v60 ^ 0xE2440000;
    v66 = v16 >> 17;
    HIDWORD(v16) = v60 ^ 0x5BD5A;
    LODWORD(v16) = v60 ^ 0xE2400000;
    v67 = v62 + v65 + (v60 ^ 0xE245BD5A) + ((v66 - (v16 >> 19)) ^ (v60 >> 10) ^ 0xFFC76E90) - v64 + 2;
    v68 = v67 + 920107779 - ((2 * v67) & 0x6DAF7606);
    HIDWORD(v16) = LODWORD(STACK[0x22E0]) ^ 0x6B;
    LODWORD(v16) = LODWORD(STACK[0x22E0]) ^ 0x65E7F180;
    v69 = v16 >> 7;
    HIDWORD(v16) = LODWORD(STACK[0x22E0]) ^ 0x3F1EB;
    LODWORD(v16) = LODWORD(STACK[0x22E0]) ^ 0x65E40000;
    v70 = v69 - (v16 >> 18) + ((LODWORD(STACK[0x22E0]) >> 3) ^ 0xCBCFE3D) + ((v64 >> 19) ^ __ROR4__(v64, 17) ^ (v64 << 13) ^ (v64 >> 10));
    v71 = STACK[0x22C0];
    HIDWORD(v16) = LODWORD(STACK[0x22C0]) ^ 0x1C;
    LODWORD(v16) = LODWORD(STACK[0x22C0]) ^ 0x36657A00;
    v72 = v16 >> 7;
    v73 = v68 ^ v64 ^ (v70 + 920107779 - ((2 * v70) & 0x6DAF7606));
    HIDWORD(v16) = v68 ^ 0x1BB03;
    LODWORD(v16) = v68 ^ 0x36D60000;
    v74 = v72 + ((v71 >> 3) ^ 0x6CCAF43) + (((v71 >> 18) ^ 0xD99 | (v71 << 14)) ^ 0xA178FFFF) + ((v68 >> 10) ^ 0xFFF24A11) + (v16 >> 17) + (((v68 ^ 0x36D7BB03) >> ((((v71 >> 18) ^ 0x99) & 0x71) + (((v71 >> 18) ^ 0x99) & 0x71 ^ 0x71) - 94)) ^ (v68 << 13) ^ 0xF7606000) + 2;
    v75 = ((v74 + 920107779 - ((2 * v74) & 0x6DAF7606)) ^ v68) - v73;
    HIDWORD(v16) = LODWORD(STACK[0x22E8]) ^ 0x2B;
    LODWORD(v16) = LODWORD(STACK[0x22E8]) ^ 0xB74FB100;
    v76 = v16 >> 7;
    v77 = v75 + 912620060 - ((2 * v75) & 0x6CCAF438);
    HIDWORD(v16) = LODWORD(STACK[0x22E8]) ^ 0x3B12B;
    LODWORD(v16) = LODWORD(STACK[0x22E8]) ^ 0xB74C0000;
    v78 = v16 >> 18;
    HIDWORD(v16) = v73;
    LODWORD(v16) = v73;
    v79 = v78 + ((LODWORD(STACK[0x22E8]) >> 3) ^ 0x16E9F625) + v76 - (v16 >> 19) + (v73 >> 10) + ((v73 >> 17) | (v73 << 15));
    LODWORD(STACK[0x22E0]) = v73 ^ 0x65E7F1EB;
    LODWORD(STACK[0x21C8]) = v77 ^ 0x36657A1C;
    v80 = (v77 ^ 0x36657A1C) + ((v79 + 1709699563 - ((2 * v79) & 0xCBCFE3D6)) ^ v73 ^ 0x65E7F1EB);
    LODWORD(STACK[0x22E8]) = v80 - 1219514069 - ((2 * v80) & 0x6E9F6256);
    HIDWORD(v16) = v77 ^ 0x17A1C;
    LODWORD(v16) = v77 ^ 0x36640000;
    LODWORD(STACK[0x21D8]) = v16 >> 17;
    v81 = STACK[0x21F0];
    HIDWORD(v16) = LODWORD(STACK[0x21F0]) ^ 0x28877;
    LODWORD(v16) = LODWORD(STACK[0x21F0]) ^ 0x1DB40000;
    v82 = v16 >> 18;
    HIDWORD(v16) = LODWORD(STACK[0x21F0]) ^ 0xFFFFFFF7;
    LODWORD(v16) = LODWORD(STACK[0x21F0]) ^ 0x1DB68800;
    v83 = v16 >> 7;
    HIDWORD(v16) = v77 ^ 0x57A1C;
    LODWORD(v16) = v77 ^ 0x36600000;
    LODWORD(STACK[0x21B8]) = v16 >> 19;
    v84 = v83 ^ (v81 >> 3);
    v85 = STACK[0x22A0];
    HIDWORD(v16) = LODWORD(STACK[0x22A0]) ^ 0x1CF9F6A;
    LODWORD(v16) = LODWORD(STACK[0x22A0]) ^ 0x6000000;
    v86 = v16 >> 25;
    v87 = v84 ^ v82 ^ 0x3B6D10E;
    HIDWORD(v16) = LODWORD(STACK[0x22A0]) ^ 0x76A;
    LODWORD(v16) = LODWORD(STACK[0x22A0]) ^ 0x7CF9800;
    v88 = v16 >> 11;
    HIDWORD(v16) = LODWORD(STACK[0x22A0]) ^ 0xAAAAAAAA;
    LODWORD(v16) = LODWORD(STACK[0x22A0]) ^ 0x7CF9F40;
    v89 = LODWORD(STACK[0x21F8]) ^ 0x86CD6EAC;
    LODWORD(STACK[0x2248]) = v89;
    v90 = v89 - ((v88 + (v16 >> 6)) ^ v86);
    HIDWORD(v16) = v85 ^ 0xF9F6A;
    LODWORD(v16) = v85 ^ 0x7C00000;
    v91 = v16 >> 22;
    HIDWORD(v16) = v85 ^ 2;
    LODWORD(v16) = v85 ^ 0x7CF9F68;
    v92 = v16 >> 2;
    HIDWORD(v16) = v85 ^ 0x1F6A;
    LODWORD(v16) = v85 ^ 0x7CF8000;
    v93 = ((2 * v85) ^ 0xF9F3ED4 ^ (v92 - (v16 >> 13) + v91)) + 1537391886 + ((((2 * v85) ^ 0xF9F3ED4 ^ ((v85 ^ 0x7CF9F6A) - v89)) + (v85 ^ 0x7CF9F6A)) ^ v90) - LODWORD(STACK[0x21A0]) + LODWORD(STACK[0x21A8]);
    v94 = v93 - 376039243 - ((2 * v93) & 0xD32C316A);
    HIDWORD(v16) = v94 ^ 0x18B5;
    LODWORD(v16) = v94 ^ 0xE9960000;
    v95 = v16 >> 13;
    HIDWORD(v16) = v94 ^ 1;
    LODWORD(v16) = v94 ^ 0xE99618B4;
    v96 = v16 >> 2;
    v97 = v87 + (v77 ^ 0xC99A85E3);
    HIDWORD(v16) = v94 ^ 0x1618B5;
    LODWORD(v16) = v94 ^ 0xE9800000;
    v98 = v16 >> 22;
    HIDWORD(v16) = v94 ^ 0xB5;
    LODWORD(v16) = v94 ^ 0xE9961800;
    v99 = v16 >> 11;
    HIDWORD(v16) = v94 ^ 0x35;
    LODWORD(v16) = v94 ^ 0xE9961880;
    v100 = v99 ^ (v16 >> 6);
    HIDWORD(v16) = v94 ^ 0x19618B5;
    LODWORD(v16) = v94 ^ 0xE8000000;
    v101 = (2 * v94) ^ 0xD32C316A;
    v102 = (v100 - (v16 >> 25)) ^ ((v94 ^ 0xE99618B5) + (v85 ^ 0xEE5987DF ^ v94) + v101);
    v103 = v96 + LODWORD(STACK[0x21C0]) + v95 - v98 + v101 + ((v102 + 131047274 - ((2 * v102) & 0xF9F3ED4)) ^ v85);
    v104 = v103 - ((2 * v103 + 99631760) & 0x149DEB88) - 1387849972;
    HIDWORD(v16) = v104 ^ 0x15C4;
    LODWORD(v16) = v104 ^ 0xA4EE000;
    v105 = v16 >> 13;
    v106 = (2 * v104) ^ 0x149DEB88;
    v107 = (v106 - 376039243 - 2 * (v106 & 0x699618B6 ^ (2 * v104) & 2)) ^ v94;
    HIDWORD(v16) = v104 ^ 0x5C4;
    LODWORD(v16) = v104 ^ 0xA4EF000;
    v108 = v16 >> 11;
    HIDWORD(v16) = v104 ^ 4;
    LODWORD(v16) = v104 ^ 0xA4EF5C0;
    v109 = v16 >> 6;
    HIDWORD(v16) = v104 ^ 0x4EF5C4;
    LODWORD(v16) = v104 ^ 0xA000000;
    v110 = v108 ^ v104 ^ v109 ^ (v16 >> 25) ^ (v106 + (v94 ^ 0xE3D8ED71 ^ v104) + 172946885 + ~(2 * ((v106 + (v94 ^ 0xE3D8ED71 ^ v104)) & 0xA4EF5C5 ^ (v94 ^ 0xE3D8ED71 ^ v104) & 1)));
    HIDWORD(v16) = v103;
    LODWORD(v16) = v104 ^ 0xA4EF5C4;
    LODWORD(STACK[0x22C0]) = v77;
    v111 = (v104 >> 22) ^ 0x29;
    v112 = (v94 ^ 0x1669E74A) + v14 + (v104 ^ 0xF5B10A3B) + (v16 >> 2) - v105 + ((v111 | (v104 << 10)) ^ 0x3BD71000) - ((v107 + 172946884 - ((2 * v107) & 0x149DEB88)) ^ v104) + 67799332 + ((v110 - 376039243 - ((2 * v110) & 0xD32C316A)) ^ v94);
    HIDWORD(v16) = v112;
    LODWORD(v16) = v112;
    v113 = v16 >> 6;
    HIDWORD(v16) = v112;
    LODWORD(v16) = v112;
    v114 = v16 >> 11;
    HIDWORD(v16) = v112;
    LODWORD(v16) = v112;
    v115 = ((v112 >> ((v85 & 2 ^ 2) + (v85 & 2))) ^ (v112 >> 13) ^ (v112 << 19) ^ (v112 << ((v111 & 0x1E ^ 0x1E) + (v111 & 0x1Eu)))) - (v16 >> 22);
    HIDWORD(v16) = v112;
    LODWORD(v16) = v112;
    v116 = v103 - v24 - v114 - v113 - (v16 >> 25) - ((v112 + (v104 ^ 0xA4EF5C4)) ^ v112) - 1328611605 + v115;
    v117 = v116 - 1078941345 - ((2 * v116) & 0x7F6152BE);
    HIDWORD(v16) = v117 ^ 0x30A95F;
    LODWORD(v16) = v117 ^ 0xBFBFBFBF;
    v118 = v16 >> 22;
    HIDWORD(v16) = -21 - v117;
    LODWORD(v16) = v117 ^ 0xBFB0A95C;
    v119 = v16 >> 2;
    HIDWORD(v16) = v117 ^ 0x95F;
    LODWORD(v16) = v117 ^ 0xBFB0A000;
    v120 = v16 >> 13;
    HIDWORD(v16) = v117 ^ 0x1B0A95F;
    LODWORD(v16) = v117 ^ 0xBFFFFFFF;
    v121 = v16 >> 25;
    HIDWORD(v16) = v117 ^ 0x15F;
    LODWORD(v16) = v117 ^ 0xBFB0A800;
    v122 = v16 >> 11;
    HIDWORD(v16) = v117;
    LODWORD(v16) = v117 ^ 0xBFB0A95F;
    v123 = LODWORD(STACK[0x1FD8]) - 666149003 + v112 + (v117 ^ (v112 - 1078941345 - ((2 * v112) & 0x7F6152BE))) + (v117 ^ 0xBFB0A95F) - v120 + v119 + v118 + ((((v16 >> 6) ^ 0x7C000000) + v122) ^ v121);
    v124 = v123 + 1433589632 - ((2 * v123) & 0xAAE5AF36);
    v125 = v124 + 27;
    v126 = 2 * (v124 + 27);
    LODWORD(v112) = (v124 + 27) ^ 0x5572D79B;
    HIDWORD(v16) = (v124 + 27) ^ 0x1B;
    LODWORD(v16) = (v124 + 27) ^ 0x5572D780;
    v127 = (v16 >> 6) ^ __ROR4__(v124 + 27, 11);
    v128 = (v124 + 27) ^ 0x172D79B;
    HIDWORD(v16) = -32 - v124;
    LODWORD(v16) = (v124 + 27) ^ 0x5572D798;
    v129 = v16 >> 2;
    HIDWORD(v16) = v125 ^ 0x179B;
    LODWORD(v16) = v125 ^ 0x5572C000;
    v130 = v38 + 1274277307 + (v117 ^ 0x404F56A0) + v112 + (v126 ^ 0x551A50C9) + (__PAIR64__(v125 ^ 0x32D79B, v125 ^ 0x55555555) >> 22) + v129 - (v126 ^ 0xAAE5AF36) - (v16 >> 13) - (__PAIR64__(v128, v125 ^ 0x55555555) >> 25) + (v127 ^ 0xC9551A5) - (v126 ^ 0xAAE5AF36 ^ (v112 - (v117 ^ 0xBFB0A95F)));
    v131 = v130 + 797898752 - ((2 * v130) & 0x5F1DFE6A);
    v132 = v131 + 1877;
    v131 += 1845;
    HIDWORD(v16) = v132 ^ 1;
    LODWORD(v16) = v131 ^ 0x2F8EFF34;
    v133 = v16 >> 2;
    HIDWORD(v16) = v131 ^ 0x1F35;
    LODWORD(v16) = v131 ^ 0x2F8EE000;
    v134 = v133 - (v16 >> 13);
    HIDWORD(v16) = v131 ^ 0xEFF35;
    LODWORD(v16) = v131 ^ 0x2F800000;
    v135 = v134 + (v16 >> 22);
    HIDWORD(v16) = v131 ^ 0x35;
    LODWORD(v16) = v131 ^ 0x2F8EFF00;
    v136 = v16 >> 6;
    HIDWORD(v16) = v131 ^ 0x735;
    LODWORD(v16) = v131 ^ 0x2F8EF800;
    v137 = v16 >> 11;
    v138 = v131 ^ 0x2F8EFF35;
    HIDWORD(v16) = v131 ^ 0x18EFF35;
    LODWORD(v16) = v131 ^ 0x2E000000;
    v139 = (v43 ^ 0x199D8FE9) - 15512779 + v137 + v136 + (v16 >> 25) + ((((2 * v131) ^ 0xA0E20195) + 2 * ((v131 ^ 0x2F8EFF35) + v112) + 1) ^ v135);
    v140 = v139 + 1575737344 - ((2 * v139) & 0xBBD7B712);
    LODWORD(v112) = v140 + 905;
    v141 = (v140 + 905) ^ 0x5DEBDB89;
    HIDWORD(v16) = (v140 + 917) ^ 1;
    LODWORD(v16) = (v140 + 905) ^ 0x5DEBDB88;
    v142 = v16 >> 2;
    HIDWORD(v16) = (v140 + 905) ^ 0x1B89;
    LODWORD(v16) = (v140 + 905) ^ 0x5DEBC000;
    v143 = v16 >> 13;
    HIDWORD(v16) = (v140 + 905) ^ 0x2BDB89;
    LODWORD(v16) = (v140 + 905) ^ 0x5DC00000;
    v144 = v16 >> 22;
    HIDWORD(v16) = (v140 + 905) ^ 0x389;
    LODWORD(v16) = (v140 + 905) ^ 0x5DEBD800;
    v145 = v16 >> 11;
    LODWORD(v16) = __ROR4__(v140 + 905, 6);
    v146 = v51 + 391702393 + 2 * v138 - v143 - v144 + v142 + ((2 * v112) ^ 0xBBD7B712) + ((v141 + v138 - ((2 * v112) ^ 0xBBD7B712)) ^ (v138 - v141)) + ((v112 << 7) ^ v16 ^ v145 ^ (v112 >> 25) ^ 0x2F65943F) - 12896191 - ((2 * (v51 + 391702393 + 2 * v138 - v143 - v144 + v142 + ((2 * v112) ^ 0xBBD7B712) + ((v141 + v138 - ((2 * v112) ^ 0xBBD7B712)) ^ (v138 - v141)) + ((v112 << 7) ^ v16 ^ v145 ^ (v112 >> 25) ^ 0x2F65943F) + 1)) & 0xFE7670D2);
    v147 = v146 + 41;
    v148 = (v146 + 41) ^ 0xFF3B3869;
    HIDWORD(v16) = (v146 + 65) ^ 1;
    LODWORD(v16) = (v146 + 41) ^ 0xFF3B3868;
    v149 = v16 >> 2;
    HIDWORD(v16) = (v146 + 41) ^ 0x1869;
    LODWORD(v16) = (v146 + 41) ^ 0xFF3B2000;
    v150 = (v149 ^ (v16 >> 13)) - ((v148 >> ((((v112 >> 25) ^ 0x2E) & 0x16 ^ 0x16) + (((v112 >> 25) ^ 0x2E) & 0x16))) ^ ((v146 + 41) << 10) ^ 0xECE1A400);
    LOBYTE(v146) = *(STACK[0x2278] + (((-42 - v146) >> 25) ^ 0xB0));
    v151 = (v147 ^ 0xC4C796) + 1;
    HIDWORD(v16) = v147 ^ 0x29;
    LODWORD(v16) = v147 ^ 0xFF3B3840;
    LODWORD(STACK[0x22B8]) = v53;
    v152 = (v53 ^ 0xE245BD5A) - 122110792 + v141 + (v112 ^ 0x5D2F1C1F ^ v147) + ((2 * v147) ^ 0x1898F2D) + v151 + 2 * (v147 ^ 0xC4C796) + v150 + (((v146 ^ 0xBC) - (v146 << 7)) ^ (v147 << 7) ^ (v147 >> 11) ^ (v16 >> 6) ^ (v148 << ((v150 & 0x15 ^ 0x15) + (v150 & 0x15u))) ^ 0x627C2C18) + 3;
    v153 = v152 + 1255628800 - ((2 * v152) & 0x95AED322);
    v154 = v153 + 2477;
    v153 += 2449;
    HIDWORD(v16) = v154 ^ 1;
    LODWORD(v16) = v153 ^ 0x4AD76990;
    v155 = v16 >> 2;
    HIDWORD(v16) = v153 ^ 0x176991;
    LODWORD(v16) = v153 ^ 0x4AC00000;
    v156 = v16 >> 22;
    HIDWORD(v16) = v153 ^ 0x991;
    LODWORD(v16) = v153 ^ 0x4AD76000;
    v157 = (v155 - (v16 >> 13)) ^ v156;
    HIDWORD(v16) = v153 ^ 0x191;
    LODWORD(v16) = v153 ^ 0x4AD76800;
    v158 = v16 >> 11;
    HIDWORD(v16) = v153 ^ 0xD76991;
    LODWORD(v16) = v153 ^ 0x4A000000;
    v159 = v153 ^ 0x4AD76991;
    v160 = v158 ^ (v153 << 26) ^ ((v153 ^ 0x4AD76991) >> 6) ^ 0xBBFFFFFF;
    v161 = (2 * v153) ^ 0x6A512CDD;
    v162 = v147 ^ 0xB5EC51F8 ^ v153;
    v163 = v148 + v159 - v162 - (v16 >> 25) + v160 + 1;
    v164 = v151 + v159 + v162 + v161 + v157 + ((v163 - ((2 * v163 + 120298948) & 0x16260D02) + 245945699) ^ v60 ^ 0x6956BBDB) + 1;
    v165 = v164 + 1287297024 - ((2 * v164) & 0x997535CE);
    v166 = v165 + 743;
    HIDWORD(v16) = -772 - v165;
    LODWORD(v16) = (v165 + 743) ^ 0x4CBA9AE4;
    v167 = v16 >> 2;
    HIDWORD(v16) = v166 ^ 0x1AE7;
    LODWORD(v16) = v166 ^ 0x4CBA8000;
    v168 = v16 >> 13;
    HIDWORD(v16) = v166 ^ 0x3A9AE7;
    LODWORD(v16) = v166 ^ 0x4C800000;
    v169 = v16 >> 22;
    v170 = v168 ^ v167;
    HIDWORD(v16) = v166 ^ 0xFFFFFFE7;
    LODWORD(v16) = v166 ^ 0x4CBA9AC0;
    v171 = v16 >> 6;
    HIDWORD(v16) = v166 ^ 0x2E7;
    LODWORD(v16) = v166 ^ 0x4CBA9800;
    v172 = v16 >> 11;
    HIDWORD(v16) = v166 ^ 0xBA9AE7;
    LODWORD(v16) = v166 ^ 0x4C000000;
    v173 = v64 + 714498376 - v169 - 2 * (v166 ^ 0x4CBA9AE7) - v172 + v171 + (v16 >> 25) + v170 - ((((2 * v166) ^ 0x997535CE) + (v166 ^ 0x4CBA9AE7) - v159) ^ (v159 - (v166 ^ 0x4CBA9AE7)));
    LODWORD(v112) = v173 - 772007079 - ((2 * v173) & 0xA3F836B2);
    HIDWORD(v16) = v112 ^ 1;
    LODWORD(v16) = v112 ^ 0xD1FC1B58;
    v174 = v16 >> 2;
    HIDWORD(v16) = v112 ^ 0x1B59;
    LODWORD(v16) = v112 ^ 0xD1FC0000;
    v175 = v97 + ((v77 >> 10) ^ 0xFFF266A1) + LODWORD(STACK[0x21B8]);
    v176 = (v16 >> 13) + v174;
    HIDWORD(v16) = v112 ^ 0x3C1B59;
    LODWORD(v16) = v112 ^ 0xD1C00000;
    v177 = v176 - (v16 >> 22);
    HIDWORD(v16) = v112 ^ 0x99999999;
    LODWORD(v16) = v112 ^ 0xD1FC1B40;
    v178 = v16 >> 6;
    HIDWORD(v16) = v112 ^ 0x359;
    LODWORD(v16) = v112 ^ 0xD1FC1800;
    v179 = v16 >> 11;
    HIDWORD(v16) = v112 ^ 0x1FC1B59;
    LODWORD(v16) = v112 ^ 0xD0000000;
    v180 = (v68 ^ 0xC92844FC) + 849692808 + (((v112 ^ 0xD1FC1B59) + (v166 ^ 0x9D4681BE ^ v112) + (v166 ^ 0x4CBA9AE7) + ((2 * v112) ^ 0xA3F836B2)) ^ v177) + (((v166 ^ 0x4CBA9AE7) - v179 + v178 + (v16 >> 25)) ^ ((v112 ^ 0xD1FC1B59) + (v166 ^ 0x9D4681BE ^ v112)));
    v181 = v180 + 336498337 - ((2 * v180) & 0x281D1D42);
    HIDWORD(v16) = (v181 + 16) ^ 1;
    LODWORD(v16) = v181 ^ 0x140E8EA0;
    v182 = v16 >> 2;
    HIDWORD(v16) = v181 ^ 0xEA1;
    LODWORD(v16) = v181 ^ 0x140E8000;
    v183 = v182 - (v16 >> 13);
    HIDWORD(v16) = v181 ^ 0xE8EA1;
    LODWORD(v16) = v181 ^ 0x14000000;
    v184 = v183 + (v16 >> 22);
    HIDWORD(v16) = v181 ^ 0xE8EA1;
    LODWORD(v16) = v181 ^ 0x14000000;
    v185 = v16 >> 25;
    HIDWORD(v16) = v181 ^ 0xFFFFFFE1;
    LODWORD(v16) = v181 ^ 0x140E8E80;
    v186 = v16 >> 6;
    HIDWORD(v16) = v181 ^ 0x6A1;
    LODWORD(v16) = v181 ^ 0x140E8800;
    v187 = (2 * v181) ^ 0x281D1D42 ^ ((v181 ^ 0x140E8EA1) - (v112 ^ 0xD1FC1B59));
    v188 = 176750499 - v73 + (v112 ^ 0xD1FC1B59) + v185 - ((v16 >> 11) ^ v186) + (v184 ^ ((v112 ^ 0xC5F295F8 ^ v181) + (v112 ^ 0xD1FC1B59) + (v181 ^ 0x140E8EA1))) - ((v187 + 336498337 - ((2 * v187) & 0x281D1D42)) ^ v181);
    v189 = v188 + 534532736 - ((2 * v188) & 0x3FB8A536);
    v190 = v189 + 27;
    HIDWORD(v16) = -v189;
    LODWORD(v16) = (v189 + 27) ^ 0x1FDC5298;
    v191 = v16 >> 2;
    HIDWORD(v16) = v190 ^ 0x129B;
    LODWORD(v16) = v190 ^ 0x1FDC4000;
    v192 = v16 >> 13;
    HIDWORD(v16) = v190 ^ 0x1C529B;
    LODWORD(v16) = v190 ^ 0x1FC00000;
    v193 = v16 >> 22;
    HIDWORD(v16) = v190 ^ 0x1B;
    LODWORD(v16) = v190 ^ 0x1FDC5280;
    v194 = v16 >> 6;
    HIDWORD(v16) = v190 ^ 0x29B;
    LODWORD(v16) = v190 ^ 0x1FDC5000;
    LODWORD(v112) = v16 >> 11;
    HIDWORD(v16) = v190 ^ 0x1DC529B;
    LODWORD(v16) = v190 ^ 0x1E000000;
    v195 = (2 * v190) ^ 0x3FB8A536;
    v196 = LODWORD(STACK[0x21C8]) - 1136841679 + (v181 ^ 0xEBF1715E) - v195 + (v181 ^ v190 ^ v192 ^ v191 ^ v193 ^ ((v190 ^ 0x1FDC529B) + (v181 ^ 0x140E8EA1)) ^ v195 ^ 0xBD2DC3A) + (((v112 ^ v194 ^ (v16 >> 25)) + 336498337 - ((2 * (v112 ^ v194 ^ (v16 >> 25))) & 0x281D1D42)) ^ v181);
    v197 = (2 * v196) & 0x784A494C;
    v196 -= 1138416474;
    LODWORD(v112) = v196 - v197;
    HIDWORD(v16) = v196 ^ 2;
    LODWORD(v16) = (v196 - v197) ^ 0xBC2524A4;
    v198 = v16 >> 2;
    HIDWORD(v16) = v112 ^ 0x4A6;
    LODWORD(v16) = v112 ^ 0xBC252000;
    v199 = v16 >> 13;
    HIDWORD(v16) = v112 ^ 0x66666666;
    LODWORD(v16) = v112 ^ 0xBC252480;
    v200 = v16 >> 6;
    HIDWORD(v16) = v112 ^ 0x4A6;
    LODWORD(v16) = v112 ^ 0xBC252000;
    v201 = v16 >> 11;
    HIDWORD(v16) = v112 ^ 0x2524A6;
    LODWORD(v16) = v112 ^ 0xBC000000;
    v202 = v16 >> 22;
    HIDWORD(v16) = v112 ^ 0x2524A6;
    LODWORD(v16) = v112 ^ 0xBC000000;
    v203 = (v190 ^ 0xE023AD64) + (v190 ^ 0x5C0689C2 ^ v112) + (v112 ^ 0xBC2524A6) + ((2 * v112) ^ 0x87B5B6B3) - v202 + v198 + v199 + ((v195 - v200 - v201 + (v16 >> 25) - ((2 * (v195 - v200 - v201 + (v16 >> 25)) + 970690670) & 0x6E9F6256) + 1413314914) ^ LODWORD(STACK[0x22E8])) + 3;
    v204 = v203 + 1141210304 - ((2 * v203) & 0x880AF996);
    v205 = v204 + 11;
    HIDWORD(v16) = (v204 + 11) ^ 0x1CCB;
    LODWORD(v16) = (v204 + 11) ^ 0x44056000;
    v206 = v16 >> 13;
    HIDWORD(v16) = -28 - v204;
    LODWORD(v16) = (v204 + 11) ^ 0x44057CC8;
    v207 = v206 + (v16 >> 2);
    HIDWORD(v16) = v205 ^ 0x57CCB;
    LODWORD(v16) = v205 ^ 0x44000000;
    v208 = (v207 - (v16 >> 22)) ^ ((v112 ^ 0xBC2524A6) + (v205 ^ 0xBBFA8334) + (v112 ^ 0xF820586D ^ v205) + 1);
    HIDWORD(v16) = v205 ^ 0xB;
    LODWORD(v16) = v205 ^ 0x44057CC0;
    v209 = v16 >> 6;
    v210 = v205 >> 25;
    v211 = LODWORD(STACK[0x22E8]) ^ (v175 - LODWORD(STACK[0x21D8]) + 2);
    v212 = (v85 ^ 0xF8306095) + 1774286128 + (v211 ^ 0x48B04ED4) + 2 * (v112 ^ 0xBC2524A6) + ((4 * v205) ^ 0x1015F32C) + (__ROR4__(v205, 11) ^ 0x996880AF) - v209 + v208 + (((((v210 ^ 0xC9) + (v210 ^ 0xAA) + (~(2 * ((v210 ^ 0xC9) + (v210 ^ 0xAA))) | 0xDD) + 18) ^ (((v209 & 0x4A ^ 0x4A) + (v209 & 0x4A)) | 0x48) ^ *(STACK[0x2258] + (v210 ^ 0xE4))) - 107) ^ (v205 << 7) ^ 0x2BE6580) + 1;
    v213 = v64 ^ 0xE99C7C54;
    v214 = (v205 ^ 0x44057CCB) - LODWORD(STACK[0x2248]) - 2033357140 + (~(2 * ((v205 ^ 0x44057CCB) - LODWORD(STACK[0x2248]))) | 0xF26522A7) + 1;
    v215 = LODWORD(STACK[0x21D0]);
    if (v215 != 2)
    {
      break;
    }

    LODWORD(STACK[0x21D8]) = v213;
    LODWORD(STACK[0x21F0]) = v211 ^ 0xAAF9395C;
    LODWORD(STACK[0x21F8]) = v214;
    LODWORD(STACK[0x2248]) = v60 ^ 0x6956BBDB;
    LODWORD(STACK[0x22A0]) = v212 + 131047274 - ((2 * v212) & 0xF9F3ED4);
    v10 = 0;
    LODWORD(STACK[0x21A0]) = 0;
    v9 = 0;
    LODWORD(STACK[0x21A8]) = 0;
    LODWORD(STACK[0x21C0]) = 0;
    v8 = 0;
    v216 = STACK[0x1E10];
    v232 = LODWORD(STACK[0x1E10]) ^ 0xE6;
    v231 = ((v216 >> 8) ^ 0x67) - ((2 * ((v216 >> 8) ^ 0x67)) & 0x22) + 17;
    a8 = (HIWORD(v216) ^ 0xFFFFFFCD) - ((2 * (HIWORD(v216) ^ 0xFFFFFFCD)) & 0x22) + 17;
    LODWORD(STACK[0x1E10]) = HIBYTE(LODWORD(STACK[0x1E10])) ^ 0x60CD6797;
    v227 = HIBYTE(v216) ^ 0x71;
    LODWORD(STACK[0x21D0]) = 1;
    v220 = STACK[0x1F90];
    a1 = v60 ^ 0x6956BBDB;
    v218 = v68;
    a2 = STACK[0x1E20];
    v217 = STACK[0x22B0];
  }

  if (v215 == 1)
  {
    JUMPOUT(0x26AA2C39CLL);
  }

  JUMPOUT(0x26AA29DA4);
}

void sub_26AA2C63C(char a1@<W8>)
{
  STACK[0x1FD8] = 0;
  *(STACK[0xA50] + 1758) = a1;
  LODWORD(STACK[0xDB0]) = -139998485;
  LODWORD(STACK[0x1004]) = 36;
  LODWORD(STACK[0x2248]) = STACK[0x1DE8];
  JUMPOUT(0x26AA2DDC8);
}

void sub_26AA2DEF4()
{
  LODWORD(STACK[0x121C]) = 161;
  STACK[0xA90] = STACK[0x1B80];
  STACK[0xA88] = STACK[0x1668];
  STACK[0xDE0] = STACK[0xFA8];
  JUMPOUT(0x26AA2DF48);
}

uint64_t sub_26AA2E2C0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = (a2 - 1031) | 0x14u;
  v7 = (v6 - 0x683BD79C43A0B792) ^ (STACK[0x2050] >> 8);
  v8 = STACK[0x2050];
  LODWORD(STACK[0x21A0]) = 0;
  LODWORD(STACK[0x22B0]) = 0;
  LODWORD(STACK[0x21A8]) = 0;
  LODWORD(STACK[0x21B8]) = 0;
  *(a1 + 2310) = v8 ^ ((v6 ^ 0xD9) + 105);
  v2 = *(v5 + 8 * ((23 * (v4 < 8)) ^ (v6 + 2627)));
  LODWORD(STACK[0x22E0]) = 1;
  STACK[0x2050] = v7;
  LODWORD(STACK[0x22B8]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  LODWORD(STACK[0x21C0]) = 1;
  LODWORD(STACK[0x1DF0]) = 1;
  LODWORD(STACK[0x21C8]) = 1;
  LODWORD(STACK[0x1DF8]) = 1;
  LODWORD(STACK[0x1E00]) = 1;
  LODWORD(STACK[0x22C0]) = 1;
  LODWORD(STACK[0x22A0]) = 1;
  LODWORD(STACK[0x21D0]) = 1;
  LODWORD(STACK[0x1E08]) = 1;
  LODWORD(STACK[0x1E10]) = 1;
  LODWORD(STACK[0x21D8]) = 1;
  LODWORD(STACK[0x1E20]) = 1;
  LODWORD(STACK[0x21F0]) = 1;
  LODWORD(STACK[0x1F90]) = 1;
  return v2();
}

void sub_26AA2EBB4()
{
  v0 = STACK[0x20D8];
  LODWORD(STACK[0x18A0]) = STACK[0x20D8];
  v1 = STACK[0x2250];
  LODWORD(STACK[0x17C0]) = STACK[0x2250];
  v2 = STACK[0x18C0];
  LODWORD(STACK[0x16C8]) = STACK[0x18C0];
  STACK[0x13E0] = STACK[0x1408];
  STACK[0x13D0] = STACK[0x1410];
  STACK[0x13D8] = STACK[0x1418];
  STACK[0x12F0] = STACK[0x1608];
  STACK[0x12F8] = STACK[0x1600];
  STACK[0x1320] = STACK[0x15F0];
  STACK[0x1330] = STACK[0x14F0];
  STACK[0x1300] = STACK[0x1568];
  STACK[0x1308] = STACK[0x14E8];
  STACK[0x1338] = STACK[0x1560];
  STACK[0x1310] = STACK[0x1580];
  STACK[0x1318] = STACK[0x1548];
  STACK[0x1530] = STACK[0x1860];
  STACK[0x1538] = STACK[0x1808];
  STACK[0x1518] = STACK[0x1828];
  STACK[0x1508] = STACK[0x1788];
  STACK[0x1510] = STACK[0x16E0];
  STACK[0x1520] = STACK[0x1848];
  STACK[0x1528] = STACK[0x1700];
  STACK[0x15C8] = STACK[0x1728];
  STACK[0x1448] = STACK[0x15E8];
  STACK[0x1450] = STACK[0x1570];
  STACK[0x1460] = STACK[0x1800];
  STACK[0x1458] = STACK[0x15D8];
  STACK[0x1C40] = STACK[0x18B8];
  STACK[0x1A50] = STACK[0x20F0];
  STACK[0x1A48] = STACK[0x20E8];
  STACK[0x1C30] = STACK[0x2290];
  STACK[0x1AC0] = STACK[0x2298];
  STACK[0x1C78] = STACK[0x2118];
  STACK[0x2158] = STACK[0x17B8];
  LODWORD(STACK[0x2020]) = STACK[0x20F8];
  LODWORD(STACK[0x1AF0]) = STACK[0x1EB0];
  LODWORD(STACK[0x19D8]) = STACK[0x2198];
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2058]) = STACK[0x13F8];
  LODWORD(STACK[0x1DB0]) = STACK[0x1BA8];
  STACK[0x1BD0] = LODWORD(STACK[0x1D10]);
  LODWORD(STACK[0x1960]) = STACK[0x20C0];
  LODWORD(STACK[0x1B54]) = STACK[0x20A0];
  LODWORD(STACK[0x17C8]) = STACK[0x14E4];
  LODWORD(STACK[0x1718]) = STACK[0x14FC];
  LODWORD(STACK[0x15C0]) = STACK[0x1690];
  LODWORD(STACK[0x19F8]) = STACK[0x2120];
  LODWORD(STACK[0x17D0]) = STACK[0x14E0];
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  LODWORD(STACK[0x1AF8]) = STACK[0x1F08];
  LODWORD(STACK[0x13E8]) = STACK[0x1420];
  LODWORD(STACK[0x1A2C]) = STACK[0x19B0];
  LODWORD(STACK[0x1A98]) = STACK[0x14DC];
  STACK[0x1A68] = LODWORD(STACK[0x1D30]);
  LODWORD(STACK[0x1970]) = STACK[0x14D8];
  STACK[0x1D68] = LODWORD(STACK[0x1D18]);
  LODWORD(STACK[0x1748]) = STACK[0x1968];
  LODWORD(STACK[0x15A8]) = STACK[0x14F8];
  STACK[0x1B20] = LODWORD(STACK[0x20A8]);
  LODWORD(STACK[0x19E8]) = STACK[0x1D78];
  LODWORD(STACK[0x1438]) = STACK[0x1628];
  LODWORD(STACK[0x1750]) = STACK[0x1500];
  STACK[0x1BD8] = LODWORD(STACK[0x20C8]);
  LODWORD(STACK[0x1400]) = STACK[0x142C];
  LODWORD(STACK[0x1878]) = STACK[0x14D4];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x1618]) = STACK[0x14D0];
  LODWORD(STACK[0x1DD0]) = STACK[0x14CC];
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  STACK[0x1B48] = LODWORD(STACK[0x1DA8]);
  STACK[0x1CE8] = LODWORD(STACK[0x1E90]);
  LODWORD(STACK[0x1404]) = STACK[0x14C8];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  STACK[0x1830] = STACK[0x1858];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x2068]) = STACK[0x1790];
  LODWORD(STACK[0x1B00]) = STACK[0x1EA0];
  LODWORD(STACK[0x1B30]) = STACK[0x1E98];
  STACK[0x1B88] = LODWORD(STACK[0x1D08]);
  STACK[0x1A20] = LODWORD(STACK[0x1D48]);
  LODWORD(STACK[0x1A38]) = STACK[0x2138];
  LODWORD(STACK[0x1B68]) = STACK[0x1F78];
  LODWORD(STACK[0x1640]) = STACK[0x14C4];
  LODWORD(STACK[0x2098]) = STACK[0x2100];
  STACK[0x1A18] = LODWORD(STACK[0x1DE0]);
  LODWORD(STACK[0x16F0]) = STACK[0x17A8];
  STACK[0x1DC8] = LODWORD(STACK[0x1D00]);
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  STACK[0x1A40] = LODWORD(STACK[0x1DC0]);
  LODWORD(STACK[0x12BC]) = STACK[0x1254];
  LODWORD(STACK[0x1444]) = STACK[0x15D0];
  LODWORD(STACK[0x15A0]) = STACK[0x16B8];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  STACK[0x1D60] = LODWORD(STACK[0x1D98]);
  LODWORD(STACK[0x1698]) = STACK[0x1688];
  LODWORD(STACK[0x1738]) = STACK[0x1554];
  LODWORD(STACK[0x1760]) = STACK[0x1590];
  STACK[0x1AC8] = LODWORD(STACK[0x1E88]);
  LODWORD(STACK[0x1928]) = STACK[0x1504];
  LODWORD(STACK[0x1468]) = STACK[0x1CF8];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x19D4]) = STACK[0x1BB0];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x12C0]) = STACK[0x1268];
  LODWORD(STACK[0x1B10]) = STACK[0x1EF8];
  LODWORD(STACK[0x1B58]) = STACK[0x22A8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x1708]) = STACK[0x143C];
  LODWORD(STACK[0x12B0]) = STACK[0x12B8];
  LODWORD(STACK[0x1740]) = STACK[0x14C0];
  LODWORD(STACK[0x18F8]) = STACK[0x14BC];
  LODWORD(STACK[0x12E4]) = STACK[0x157C];
  LODWORD(STACK[0x1470]) = STACK[0x14B8];
  STACK[0x1CD0] = LODWORD(STACK[0x1D40]);
  LODWORD(STACK[0x12B4]) = STACK[0x1264];
  LODWORD(STACK[0x17E0]) = STACK[0x14B4];
  LODWORD(STACK[0x1930]) = STACK[0x1818];
  LODWORD(STACK[0x1CE0]) = STACK[0x1430];
  LODWORD(STACK[0x12EC]) = STACK[0x1558];
  LODWORD(STACK[0x17E8]) = STACK[0x14B0];
  LODWORD(STACK[0x12E8]) = STACK[0x155C];
  LODWORD(STACK[0x1FF8]) = v2;
  LODWORD(STACK[0x1598]) = STACK[0x1840];
  LODWORD(STACK[0x1B90]) = STACK[0x1EE8];
  STACK[0x12D0] = LODWORD(STACK[0x1260]);
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x1AE4]) = STACK[0x1EC0];
  LODWORD(STACK[0x1ADC]) = STACK[0x1E28];
  LODWORD(STACK[0x1850]) = STACK[0x14AC];
  LODWORD(STACK[0x16E8]) = STACK[0x17B0];
  LODWORD(STACK[0x1474]) = STACK[0x14A8];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  STACK[0x1B60] = LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x1A08]) = STACK[0x1E30];
  LODWORD(STACK[0x1710]) = STACK[0x17F8];
  LODWORD(STACK[0x1A58]) = STACK[0x20E0];
  LODWORD(STACK[0x146C]) = STACK[0x14A4];
  LODWORD(STACK[0x15F8]) = STACK[0x14A0];
  LODWORD(STACK[0x17A0]) = STACK[0x149C];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x16B0]) = STACK[0x1498];
  STACK[0x1B98] = LODWORD(STACK[0x1E18]);
  LODWORD(STACK[0x12CC]) = STACK[0x126C];
  LODWORD(STACK[0x1344]) = STACK[0x1494];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x13FC]) = STACK[0x19B8];
  LODWORD(STACK[0x1730]) = STACK[0x16D0];
  LODWORD(STACK[0x13F0]) = STACK[0x1490];
  LODWORD(STACK[0x1758]) = STACK[0x16A8];
  LODWORD(STACK[0x1C68]) = STACK[0x18B0];
  LODWORD(STACK[0x1B18]) = STACK[0x1E78];
  LODWORD(STACK[0x2078]) = STACK[0x1EF0];
  LODWORD(STACK[0x2248]) = STACK[0x2208];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x1F30]) = STACK[0x1EC8];
  LODWORD(STACK[0x15B0]) = STACK[0x16F8];
  LODWORD(STACK[0x2018]) = STACK[0x18A8];
  LODWORD(STACK[0x1C10]) = v0;
  LODWORD(STACK[0x1AE8]) = STACK[0x1F00];
  LODWORD(STACK[0x1820]) = STACK[0x1944];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x15E0]) = STACK[0x158C];
  LODWORD(STACK[0x1348]) = STACK[0x1588];
  LODWORD(STACK[0x1798]) = STACK[0x148C];
  LODWORD(STACK[0x1938]) = STACK[0x2110];
  LODWORD(STACK[0x1778]) = STACK[0x16C0];
  STACK[0x1A90] = LODWORD(STACK[0x1D28]);
  STACK[0x19C8] = LODWORD(STACK[0x18F0]);
  LODWORD(STACK[0x1424]) = STACK[0x19C0];
  LODWORD(STACK[0x1434]) = STACK[0x13F4];
  LODWORD(STACK[0x1F28]) = STACK[0x1EB8];
  LODWORD(STACK[0x1720]) = STACK[0x16A0];
  LODWORD(STACK[0x1F88]) = STACK[0x2288];
  LODWORD(STACK[0x1A00]) = STACK[0x1D70];
  LODWORD(STACK[0x1CAC]) = STACK[0x1488];
  STACK[0x1AB0] = LODWORD(STACK[0x1D50]);
  LODWORD(STACK[0x1ABC]) = STACK[0x1E40];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x1770]) = STACK[0x1780];
  STACK[0x1CB0] = LODWORD(STACK[0x18E8]);
  LODWORD(STACK[0x1638]) = STACK[0x1484];
  LODWORD(STACK[0x17D8]) = STACK[0x1DA0];
  LODWORD(STACK[0x1AA0]) = STACK[0x1480];
  LODWORD(STACK[0x1AA8]) = STACK[0x19A8];
  STACK[0x1A30] = LODWORD(STACK[0x1D38]);
  LODWORD(STACK[0x1BF8]) = STACK[0x2080];
  LODWORD(STACK[0x1B38]) = STACK[0x2090];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  STACK[0x1A10] = LODWORD(STACK[0x2180]);
  LODWORD(STACK[0x1A70]) = STACK[0x1D90];
  LODWORD(STACK[0x1B70]) = STACK[0x1F70];
  LODWORD(STACK[0x1F58]) = STACK[0x1E80];
  LODWORD(STACK[0x1AEC]) = STACK[0x1EA8];
  LODWORD(STACK[0x1478]) = STACK[0x147C];
  LODWORD(STACK[0x1AD8]) = STACK[0x1F20];
  LODWORD(STACK[0x132C]) = STACK[0x1544];
  LODWORD(STACK[0x1CE4]) = STACK[0x16D8];
  STACK[0x1838] = LODWORD(STACK[0x1ED0]);
  LODWORD(STACK[0x1A74]) = STACK[0x1DD8];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1AE0]) = STACK[0x1ED8];
  LODWORD(STACK[0x1C58]) = STACK[0x1D58];
  LODWORD(STACK[0x1AD4]) = STACK[0x1E70];
  LODWORD(STACK[0x1CB8]) = STACK[0x1610];
  STACK[0x19E0] = LODWORD(STACK[0x1D20]);
  LODWORD(STACK[0x1B28]) = STACK[0x1EE0];
  LODWORD(STACK[0x1768]) = STACK[0x1810];
  LODWORD(STACK[0x1B3C]) = STACK[0x1F40];
  LODWORD(STACK[0x1BB8]) = v1;
  LODWORD(STACK[0x19A0]) = STACK[0x1998];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  STACK[0x15B8] = LODWORD(STACK[0x1E38]);
  LODWORD(STACK[0x1440]) = STACK[0x1540];
  LODWORD(STACK[0x19F0]) = STACK[0x1D80];
  LODWORD(STACK[0x2048]) = STACK[0x1F10];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  JUMPOUT(0x26AA2F2CCLL);
}

void sub_26AA2F384(unint64_t a1@<X3>, unint64_t a2@<X8>)
{
  LODWORD(STACK[0x2030]) = v4;
  STACK[0x1FB0] = a1;
  STACK[0x1C90] = v3;
  LODWORD(STACK[0x1FA8]) = v5;
  LODWORD(STACK[0x2040]) = v2;
  STACK[0x2140] = (a2 >> 8) ^ 0x8C47B4C181B6D962;
  JUMPOUT(0x26AA2F45CLL);
}

uint64_t sub_26AA2F5A8(unint64_t a1, uint64_t a2, int a3)
{
  STACK[0x1020] = v6;
  STACK[0x2028] = a1;
  LODWORD(STACK[0x2038]) = v4;
  LODWORD(STACK[0x22A0]) = 0;
  LODWORD(STACK[0x21F8]) = 0;
  *(v7 + 2582) = STACK[0x1F60] - ((((v3 - 26) & 0xBF) + 3) & (2 * STACK[0x1F60])) + 17;
  v8 = STACK[0x121C];
  LODWORD(STACK[0x21A0]) = 8 * LODWORD(STACK[0x121C]) - 48956131 - ((16 * LODWORD(STACK[0x121C])) & 0xFA29FBC0) + 195;
  LODWORD(STACK[0x22B0]) = -1125205229;
  LODWORD(STACK[0x22E0]) = 206082087;
  LODWORD(STACK[0x22E8]) = -887048796;
  LODWORD(STACK[0x22D0]) = -1561309704;
  LODWORD(STACK[0x21F0]) = 80574309;
  LODWORD(STACK[0x22C0]) = 1981206739;
  LODWORD(STACK[0x22B8]) = -830097662;
  LODWORD(STACK[0x2010]) = 17;
  LODWORD(STACK[0x1DB8]) = 17;
  LODWORD(STACK[0x1F98]) = a3;
  LODWORD(STACK[0x2060]) = v5;
  v9 = *(STACK[0x22F8] + 8 * (((v8 > 0xF) * ((187 * ((v3 + 1679977446) & 0x9BDD8FBF ^ 0xB)) ^ 0xEEE)) ^ (((v3 + 1679977446) & 0x9BDD8FBF) + 4128)));
  LODWORD(STACK[0x21D8]) = 304967078;
  return v9(34, 0);
}

uint64_t sub_26AA2F728(int a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x21D0]) = a5;
  v14 = 79 * v9 + v10;
  v15 = STACK[0x2170];
  LODWORD(STACK[0x21C0]) = *(STACK[0x2170] + (v14 + 158) % 0x174);
  LODWORD(STACK[0x21C8]) = *(v15 + (v14 + 79) % 0x174);
  v16 = *(v15 + v14 % 0x174);
  v17 = *(v15 + (v14 - 79) % 0x174);
  v18 = *(v15 + (((((v11 ^ 0xEDC) - 36) | 3) ^ (v10 + 210)) + 79 * v9) % 0x174);
  v19 = (v14 + 316) % 0x174;
  v21 = *(v15 + v19);
  v22 = *(v15 + (79 * (v9 - 952335470) + 2765) % 0x174u);
  LODWORD(STACK[0x2010]) = *(v15 + ((v19 & v8 ^ v8) + (v19 & v8) - 1098524202) * (905754217 * v9 + 312306086) % 0x174);
  v23 = *(v15 + (v14 + 553) % 0x174);
  v24 = *(v15 + (79 * v9 + 2074912279) % 0x174u);
  HIDWORD(v25) = v24 ^ 0x11111111;
  LODWORD(v25) = v24 << 24;
  v26 = *(STACK[0x1CD8] + ((v25 >> 30) ^ 0x2ALL)) ^ 0xFFFFFFA9;
  v27 = *(v15 + (79 * v9 + 2074912516) % 0x174u);
  HIDWORD(v25) = v27 ^ 1;
  LODWORD(v25) = (v27 ^ 0x10) << 24;
  v28 = *(v15 + (79 * v9 + 2074912595) % 0x174u);
  v29 = *(STACK[0x2168] + ((v25 >> 27) ^ 0x64)) ^ 0xFFFFFFFD;
  LODWORD(v28) = (v28 ^ 0xFFFFFFAF ^ *(a6 + (v28 ^ 0xA6))) - ((2 * (v28 ^ 0xFFFFFFAF ^ *(a6 + (v28 ^ 0xA6))) + 42) & a1);
  v30 = *(v15 + (79 * v9 + 2074912358) % 0x174u);
  v31 = v26 - ((2 * v26 + 30) & 0x12) + 104;
  v32 = *(v15 + (79 * v9 + 2074912437) % 0x174u);
  v33 = v29 - ((2 * v29 + 38) & a1) - 60;
  v34 = *(v15 + (v14 + 632) % 0x174);
  LOBYTE(v35) = *(v15 + (79 * v9 + 2074912674) % 0x174u);
  v36 = v28 - 90;
  LODWORD(v28) = STACK[0x21C8];
  v37 = v13;
  v38 = STACK[0x22E8];
  v39 = STACK[0x22B8];
  LODWORD(STACK[0x1920]) = v9 + 16;
  LODWORD(STACK[0x121C]) = a7 - 16;
  v40 = STACK[0x2010];
  LODWORD(STACK[0x21B8]) = v12;
  v41 = (v18 ^ 0x11) << 16;
  LODWORD(STACK[0x21C8]) = -256 * (v28 ^ 0x11 | ((v16 ^ 0x11) << 8) | ((v17 ^ 0x11111111) << 16));
  LODWORD(STACK[0x21C0]) ^= 0x11u;
  v42 = v36;
  while (1)
  {
    LODWORD(STACK[0x2010]) = v40;
    LODWORD(STACK[0x1DE8]) = v33;
    LODWORD(STACK[0x1DF0]) = v21;
    LODWORD(STACK[0x1E00]) = v32;
    LODWORD(STACK[0x1E08]) = v23;
    LODWORD(STACK[0x1E10]) = v30;
    LODWORD(STACK[0x1E20]) = v42;
    LODWORD(STACK[0x1F90]) = v22;
    LODWORD(STACK[0x1DB8]) = v34;
    HIDWORD(v44) = a2;
    LODWORD(v44) = a2;
    v43 = v44 >> 7;
    v45 = v41 + ((v21 ^ 0x11) << 8) + (v22 ^ 0x11);
    HIDWORD(v44) = a2;
    LODWORD(v44) = a2;
    v46 = (v43 - (v44 >> 18)) ^ (a2 >> 3);
    HIDWORD(v44) = a8 ^ 0xAC4A;
    LODWORD(v44) = a8 ^ 0xBDE40000;
    v47 = v44 >> 18;
    v48 = ((v23 ^ 0x11) << 16) | ((v34 ^ 0x11) << 8);
    v49 = ((v33 ^ 0x11) << 8) | ((v32 ^ 0x11) << 16);
    v50 = (v49 >> 11) + (v49 >> 9);
    v51 = v49 | v42 ^ 0x11;
    v52 = v35 ^ 0x11 | (v51 << 8);
    v53 = v46 + (v48 >> 9) - v52 - (v48 >> 11);
    v54 = v48 & 0xFFFFFF00 | v31 ^ 9;
    v55 = v30 ^ 0x11 | (v54 << 8);
    v56 = v53 - (v54 >> 2) + v55 + (v55 << 15);
    HIDWORD(v44) = a8 ^ 0x4A;
    LODWORD(v44) = a8 ^ 0xBDE4AC00;
    v57 = v44 >> 7;
    v58 = (v56 - (v55 << 13));
    v59 = (v50 + 40960 * v52) ^ (v51 >> 2);
    HIDWORD(v44) = v38 ^ 0x24;
    LODWORD(v44) = v38 ^ 0xCB20B580;
    v60 = v44 >> 7;
    HIDWORD(v44) = v38 ^ 0xB5A4;
    LODWORD(v44) = v38 ^ 0xCB200000;
    v61 = v44 >> 18;
    HIDWORD(v44) = v58;
    LODWORD(v44) = v58;
    v62 = v44 >> 17;
    v63 = (v38 >> 3) ^ 0x196416B4;
    HIDWORD(v44) = v58;
    LODWORD(v44) = v58;
    v64 = v62 - (v44 >> 19) + (v58 >> 10);
    v65 = v31;
    v66 = ((v59 + (v47 ^ v57 ^ ((a8 ^ 0xBDE4AC4A) >> ((v21 & 3 ^ 1) + (v21 & 3 ^ 2))))) ^ v52) + v58;
    STACK[0x1FD8] = v58;
    HIDWORD(v44) = v39 ^ 0x1B702;
    LODWORD(v44) = v39 ^ 0xCE840000;
    v67 = v44 >> 18;
    HIDWORD(v44) = v39 ^ 2;
    LODWORD(v44) = v39 ^ 0xCE85B700;
    v68 = v44 >> 7;
    v69 = v66 - 1109087158 - ((2 * v66) & 0x7BC95894);
    HIDWORD(v44) = v69 ^ 0xAC4A;
    LODWORD(v44) = v69 ^ 0xBDE40000;
    v70 = v44 >> 17;
    HIDWORD(v44) = v69 ^ 0x4AC4A;
    LODWORD(v44) = v69 ^ 0xBDE00000;
    v71 = v44 >> 19;
    v72 = v64 ^ ((v61 ^ v60) - v63);
    v73 = v69 ^ 0x421B53B5;
    LODWORD(STACK[0x21A8]) = v69;
    v74 = ((v68 ^ v67) - ((v39 >> 3) ^ 0x19D0B6E0)) ^ (v69 >> 10);
    v75 = (v69 ^ 0x421B53B5) + v72 - v58 - 887048795 - ((2 * ((v69 ^ 0x421B53B5) + v72 - v58 + 1)) & 0x96416B48);
    v76 = (v75 >> 10) ^ 0x32C82D;
    HIDWORD(v44) = v37 ^ 0x59;
    LODWORD(v44) = v37 ^ 0x7CAF6680;
    v77 = v44 >> 7;
    v78 = (v37 >> 3) ^ 0xF06A1324;
    HIDWORD(v44) = v37 ^ 0x366D9;
    LODWORD(v44) = v37 ^ 0x7CAC0000;
    v79 = v44 >> 18;
    LODWORD(STACK[0x22E8]) = v75;
    HIDWORD(v44) = v75 ^ 0xB5A4;
    LODWORD(v44) = v75 ^ 0xCB200000;
    v80 = v44 >> 17;
    HIDWORD(v44) = v75 ^ 0xB5A4;
    LODWORD(v44) = v75 ^ 0xCB200000;
    LOBYTE(v62) = v40 ^ 0x11;
    v81 = v74 ^ 0x2F792B ^ (v70 + v71);
    v82 = v75 ^ 0x34DF4A5B;
    v83 = v73 + v81 + (v75 ^ 0x34DF4A5B) - 830097660 - ((2 * (v73 + v81 + (v75 ^ 0x34DF4A5B) + 2)) & 0x9D0B6E04);
    v84 = STACK[0x22B0];
    v85 = v83 ^ 0xCE85B702;
    v86 = v77 + v79 + v78 + v82 + v76 + (v80 ^ (v44 >> 19)) + (v83 ^ 0xCE85B702) + 2;
    v87 = v86 + 2091869913 - ((2 * v86) & 0xF95ECDB2);
    HIDWORD(v44) = LODWORD(STACK[0x22B0]) ^ 0x13;
    LODWORD(v44) = LODWORD(STACK[0x22B0]) ^ 0xBCEEBB00;
    v88 = v44 >> 7;
    HIDWORD(v44) = LODWORD(STACK[0x22B0]) ^ 0x2BB13;
    LODWORD(v44) = LODWORD(STACK[0x22B0]) ^ 0xBCEC0000;
    v89 = v44 >> 18;
    HIDWORD(v44) = v83 ^ 0x1B702;
    LODWORD(v44) = v83 ^ 0xCE840000;
    v90 = v44 >> 17;
    HIDWORD(v44) = v83 ^ 0x5B702;
    LODWORD(v44) = v83 ^ 0xCE800000;
    LODWORD(STACK[0x22B8]) = v83;
    v91 = v88 + ((v84 >> 3) ^ 0x179DD762) + v89 + (v83 ^ 0xCE85B702) + ((v83 >> 10) ^ 0x33A16D ^ (v90 + (v44 >> 19)));
    v92 = v87 ^ v91;
    v93 = STACK[0x21F0];
    HIDWORD(v44) = LODWORD(STACK[0x21F0]) ^ 0x65;
    LODWORD(v44) = LODWORD(STACK[0x21F0]) ^ 0x4CD7700;
    v94 = v44 >> 7;
    LODWORD(STACK[0x1DF8]) = v65;
    LOBYTE(v81) = v65 & 0xBC ^ 0xB4;
    HIDWORD(v44) = v93 ^ 0x17765;
    LODWORD(v44) = v93 ^ 0x4CC0000;
    v95 = v44 >> 18;
    HIDWORD(v44) = v87 ^ 0x166D9;
    LODWORD(v44) = v87 ^ 0x7CAE0000;
    v96 = v44 >> 17;
    HIDWORD(v44) = v87 ^ 0x766D9;
    LODWORD(v44) = v87 ^ 0x7CA80000;
    v97 = STACK[0x22D0];
    v98 = ((v94 ^ (v93 >> 3) ^ v95 ^ 0x99AEEC) - (v44 >> 19) - v96 + ((v87 >> 10) ^ 0x1F2BD9)) ^ v91;
    HIDWORD(v44) = LODWORD(STACK[0x22D0]) ^ 0x78;
    LODWORD(v44) = LODWORD(STACK[0x22D0]) ^ 0xA2F04D80;
    v99 = (v44 >> 7) ^ __ROR4__(STACK[0x22D0], 18) ^ 0x137E28BC;
    LODWORD(STACK[0x22B0]) = v92;
    HIDWORD(v44) = v92 ^ 0x166D9;
    LODWORD(v44) = v92 ^ 0x7CAE0000;
    v100 = v44 >> 17;
    HIDWORD(v44) = v92 ^ 0x7CAF66D9;
    LODWORD(v44) = v92;
    v101 = (v100 - ((v44 >> 19) ^ 0xF95)) ^ (v92 >> 10) ^ 0xFFE0D426;
    HIDWORD(v44) = LODWORD(STACK[0x21B8]) ^ 0x58;
    LODWORD(v44) = LODWORD(STACK[0x21B8]) ^ 0xD3AD2E00;
    v102 = v44 >> 7;
    HIDWORD(v44) = LODWORD(STACK[0x21B8]) ^ 0x12E58;
    LODWORD(v44) = LODWORD(STACK[0x21B8]) ^ 0xD3AC0000;
    v103 = ((v97 >> 3) ^ 0xEBA1F640) + v99 + (v92 ^ 0x7CAF66D9) + v98 + v101 - 2 * v98 + 2;
    v104 = v103 - 1561309704 - ((2 * v103) & 0x45E09BF0);
    v105 = v102 - (v44 >> 18) + ((LODWORD(STACK[0x21B8]) >> 3) ^ 0x1A75A5CB);
    LODWORD(STACK[0x21F0]) = v98;
    v106 = v105 + ((v98 >> 10) ^ __ROR4__(v98, 17) ^ __ROR4__(v98, 19));
    v107 = STACK[0x22C0];
    HIDWORD(v44) = LODWORD(STACK[0x22C0]) ^ 0x2D0D3;
    LODWORD(v44) = LODWORD(STACK[0x22C0]) ^ 0x76140000;
    v108 = v44 >> 18;
    v109 = v104 ^ v98 ^ (v106 - 1561309704 - ((2 * v106) & 0x45E09BF0));
    HIDWORD(v44) = v104 ^ 0x4DF8;
    LODWORD(v44) = v104 ^ 0xA2F00000;
    LODWORD(v58) = v44 >> 17;
    HIDWORD(v44) = v104 ^ 0x4DF8;
    LODWORD(v44) = v104 ^ 0xA2F00000;
    v110 = ((((v107 >> 3) ^ 0xEC2DA1A) - v108 + (((v107 ^ 0x7616D0D3) >> ((v81 | 0x97) - (v81 & 0x28u) + 112)) ^ (v107 << 25) ^ 0xA6000000) + ((v104 >> 10) ^ 0xFFD743EC) + v58 + (v44 >> 19) - 1561309703 - ((2 * (((v107 >> 3) ^ 0xEC2DA1A) - v108 + (((v107 ^ 0x7616D0D3) >> ((v81 | 0x97) - (v81 & 0x28u) + 112)) ^ (v107 << 25) ^ 0xA6000000) + ((v104 >> 10) ^ 0xFFD743EC) + v58 + (v44 >> 19) + 1)) & 0x45E09BF0)) ^ v104) - v109;
    HIDWORD(v44) = v109;
    LODWORD(v44) = v109;
    v111 = v44 >> 17;
    HIDWORD(v44) = v109;
    LODWORD(v44) = v109;
    v112 = v44 >> 19;
    HIDWORD(v44) = STACK[0x22A0];
    LODWORD(v44) = STACK[0x22A0];
    v113 = v44 >> 18;
    HIDWORD(v44) = STACK[0x22A0];
    LODWORD(v44) = STACK[0x22A0];
    v114 = v110 + 1981206739 - ((2 * v110) & 0xEC2DA1A6);
    v115 = v113 + (v44 >> 7) + (LODWORD(STACK[0x22A0]) >> 3) - v112 + v111 + (v109 >> 10);
    v116 = STACK[0x21F8];
    LODWORD(v44) = __ROR4__(STACK[0x21F8], 18);
    LODWORD(STACK[0x22C0]) = v115 - 743625128 - ((2 * v115) & 0xA75A5CB0);
    v117 = (v116 << 25) ^ v44 ^ (v116 >> 7);
    HIDWORD(v44) = v114 ^ 0xD0D3;
    LODWORD(v44) = v114 ^ 0x76160000;
    v118 = v44 >> 17;
    HIDWORD(v44) = v114 ^ 0x6D0D3;
    LODWORD(v44) = v114 ^ 0x76100000;
    LODWORD(v58) = v44 >> 19;
    v119 = (v117 ^ (v116 >> 3)) + (v114 ^ 0x89E92F2C);
    v120 = STACK[0x21D8];
    v121 = STACK[0x22E0];
    HIDWORD(v44) = LODWORD(STACK[0x21D8]) ^ 0x531;
    LODWORD(v44) = LODWORD(STACK[0x21D8]) ^ 0x5D21C800;
    v122 = v44 >> 11;
    HIDWORD(v44) = LODWORD(STACK[0x21D8]) ^ 0xFFFFFFF1;
    LODWORD(v44) = LODWORD(STACK[0x21D8]) ^ 0x5D21CD00;
    v123 = LODWORD(STACK[0x22E0]) - (((v120 >> 25) ^ 0x2E | ((v120 ^ 0x5D21CD31) << 7)) ^ (v122 + (v44 >> 6)));
    HIDWORD(v44) = LODWORD(STACK[0x21D8]) ^ 1;
    LODWORD(v44) = LODWORD(STACK[0x21D8]) ^ 0x5D21CD30;
    v124 = v44 >> 2;
    HIDWORD(v44) = LODWORD(STACK[0x21D8]) ^ 0xD31;
    LODWORD(v44) = LODWORD(STACK[0x21D8]) ^ 0x5D21C000;
    v125 = v124 - (v44 >> 13);
    HIDWORD(v44) = LODWORD(STACK[0x21D8]) ^ 0x21CD31;
    LODWORD(v44) = LODWORD(STACK[0x21D8]) ^ 0x5D000000;
    v126 = ((2 * v120) ^ 0xBA439A62 ^ (v125 + (v44 >> 22))) + 1537391886 + ((((2 * v120) ^ 0xBA439A62 ^ ((v120 ^ 0x5D21CD31) - LODWORD(STACK[0x22E0]))) + (v120 ^ 0x5D21CD31)) ^ v123) - LODWORD(STACK[0x21C0]) + LODWORD(STACK[0x21C8]);
    v127 = v126 - 517799185 - ((2 * v126) & 0xC24605DE);
    HIDWORD(v44) = v127 ^ 0x2EF;
    LODWORD(v44) = v127 ^ 0xE1230000;
    v128 = v44 >> 11;
    HIDWORD(v44) = v127 ^ 0xFFFFFFEF;
    LODWORD(v44) = v127 ^ 0xE12302C0;
    v129 = v128 ^ (v44 >> 6);
    HIDWORD(v44) = v127 ^ 0x12302EF;
    LODWORD(v44) = v127 ^ 0xE0000000;
    v130 = v44 >> 25;
    HIDWORD(v44) = -17 - v127;
    LODWORD(v44) = v127 ^ 0xE12302EC;
    v131 = v44 >> 2;
    v132 = (2 * v127) ^ 0xC24605DE;
    HIDWORD(v44) = v127 ^ 0x2EF;
    LODWORD(v44) = v127 ^ 0xE1230000;
    v133 = v44 >> 13;
    HIDWORD(v44) = v127 ^ 0x2302EF;
    LODWORD(v44) = v127 ^ 0xE1000000;
    v134 = (v129 - v130) ^ ((LODWORD(STACK[0x21D8]) ^ 0xBC02CFDE ^ v127) + (v127 ^ 0xE12302EF) + v132);
    v135 = (v62 | (v45 << 8)) + v133 + v131 - (v44 >> 22) + v132 - 1560796856 + ((v134 + 1562496305 - ((2 * v134) & 0xBA439A62)) ^ LODWORD(STACK[0x21D8]));
    v136 = v135 - 842302940 - ((2 * v135) & 0x9B96F448);
    HIDWORD(v44) = v136 ^ 0x1A24;
    LODWORD(v44) = v136 ^ 0xCDCB6000;
    v137 = v44 >> 13;
    HIDWORD(v44) = v136 ^ 0xB7A24;
    LODWORD(v44) = v136 ^ 0xCDC00000;
    v138 = v44 >> 22;
    HIDWORD(v44) = v136 ^ 0x24;
    LODWORD(v44) = v136 ^ 0xCDCB7A00;
    v139 = v44 >> 6;
    HIDWORD(v44) = v136 ^ 0x224;
    LODWORD(v44) = v136 ^ 0xCDCB7800;
    v140 = (v44 >> 11) ^ v139;
    v141 = v136 ^ v127 ^ 0x2CE878CB;
    HIDWORD(v44) = v136 ^ 0x1CB7A24;
    LODWORD(v44) = v136 ^ 0xCCCCCCCC;
    v142 = (2 * v136) ^ 0x9B96F448;
    v143 = v142 ^ v141;
    v144 = v136 ^ v127 ^ (v142 + v141 - 842302940 - ((2 * (v142 + v141)) & 0x9B96F448));
    v145 = v136 ^ 0x323485DB;
    v136 ^= 0xCDCB7A24;
    v146 = (v127 ^ 0x1EDCFD10) + v55 + v145 + v138 + (__PAIR64__(v135, v136) >> 2) - v137 - v143 + (v144 ^ ((v140 ^ (v44 >> 25)) - 517799185 - ((2 * (v140 ^ (v44 >> 25))) & 0xC24605DE))) + 2;
    v147 = v146 - ((2 * v146 + 135598660) & 0x37C82FE4) + 535732500;
    HIDWORD(v44) = v146 ^ 2;
    LODWORD(v44) = v147 ^ 0x1BE417F0;
    v148 = v44 >> 2;
    HIDWORD(v44) = v147 ^ 0x17F2;
    LODWORD(v44) = v147 ^ 0x1BE40000;
    v149 = v44 >> 13;
    HIDWORD(v44) = v147 ^ 0x2417F2;
    LODWORD(v44) = v147 ^ 0x1BC00000;
    v150 = v44 >> 22;
    v151 = v119 + ((v114 >> 10) ^ 0xFFE27A4B);
    HIDWORD(v44) = v147 ^ 0x32;
    LODWORD(v44) = v147 ^ 0x1BE417C0;
    v152 = v44 >> 6;
    HIDWORD(v44) = v147 ^ 0x7F2;
    LODWORD(v44) = v147 ^ 0x1BE41000;
    v153 = v136 - v52 - (v44 >> 11) - v152 - ((((*(STACK[0x1CD8] + (((v147 >> 23) & 0xFC | (v147 >> 31)) ^ 0x1ELL)) ^ 0xA9) + 95) | 0xF20BF900) ^ (v147 << 7)) - v150 + (v149 ^ v148) - (((v147 ^ 0x1BE417F2) + v136 + 467933170 - ((2 * ((v147 ^ 0x1BE417F2) + v136)) & 0x37C82FE4)) ^ v147);
    v154 = v153 - ((2 * v153 + 464370502) & 0x63A8381A);
    v155 = v154 - 1079314000;
    HIDWORD(v44) = (v154 - 1079313976) ^ 1;
    LODWORD(v44) = (v154 - 1079314000) ^ 0xB1D41C0C;
    v156 = v44 >> 2;
    HIDWORD(v44) = v155 ^ 0x141C0D;
    LODWORD(v44) = v155 ^ 0xB1C00000;
    v157 = v44 >> 22;
    HIDWORD(v44) = v155 ^ 0x1D41C0D;
    LODWORD(v44) = v155 ^ 0xB0000000;
    v158 = v44 >> 25;
    HIDWORD(v44) = v155 ^ 0x40D;
    LODWORD(v44) = v155 ^ 0xB1D41800;
    v159 = v44 >> 11;
    HIDWORD(v44) = v155 ^ 0xD;
    LODWORD(v44) = v155 ^ 0xB1D41C00;
    v160 = STACK[0x1FD8] - 666149003 + (v147 ^ 0x1BE417F2) + (v147 ^ 0xAA300BFF ^ v155) + (v155 ^ 0xB1D41C0D) + ((v155 >> 13) ^ 0xFFFA715F) + ((v155 << 19) ^ 0x1F97FFFF) + v156 + v157 + (((v44 >> 6) + v159) ^ v158) + 2;
    v161 = v160 + 573489820 - ((2 * v160) & 0x445D8538);
    HIDWORD(v44) = v161 ^ 0x1C;
    LODWORD(v44) = v161 ^ 0x222EC280;
    v162 = v44 >> 6;
    HIDWORD(v44) = v161 ^ 0x29C;
    LODWORD(v44) = v161 ^ 0x222EC000;
    v163 = v44 >> 13;
    HIDWORD(v44) = v161 ^ 0x29C;
    LODWORD(v44) = v161 ^ 0x222EC000;
    v164 = v44 >> 11;
    HIDWORD(v44) = v161 ^ 0x2EC29C;
    LODWORD(v44) = v161 ^ 0x22000000;
    v165 = v44 >> 22;
    v166 = v164 ^ v162;
    v167 = v161 ^ 0x222EC29C;
    HIDWORD(v44) = v160;
    LODWORD(v44) = v161 ^ 0x222EC29C;
    v168 = v44 >> 2;
    HIDWORD(v44) = v161 ^ 0x2EC29C;
    LODWORD(v44) = v161 ^ 0x22000000;
    v169 = v73 + 1274277307 + (v155 ^ 0x4E2BE3F2) + v167 + ((2 * v161) ^ 0xBBA27AC6) + v165 + v168 - (v44 >> 25) - v163 - ((2 * v161) ^ 0x445D8538) - ((2 * v161) ^ 0x445D8538 ^ (v167 - (v155 ^ 0xB1D41C0D))) - v166;
    v170 = v169 + 1869848892 - ((2 * v169) & 0xDEE74278);
    v171 = v170 ^ 0x6F73A13C;
    HIDWORD(v44) = v169;
    LODWORD(v44) = v170 ^ 0x6F73A13C;
    v172 = v44 >> 2;
    HIDWORD(v44) = v170 ^ 0x13C;
    LODWORD(v44) = v170 ^ 0x6F73A000;
    v173 = v44 >> 13;
    HIDWORD(v44) = v170 ^ 0x33A13C;
    LODWORD(v44) = v170 ^ 0x6F400000;
    v174 = v172 - v173 + (v44 >> 22);
    HIDWORD(v44) = v170 ^ 0x3C;
    LODWORD(v44) = v170 ^ 0x6F73A100;
    v175 = v44 >> 6;
    HIDWORD(v44) = v170 ^ 0x173A13C;
    LODWORD(v44) = v170 ^ 0x6E000000;
    v176 = (LODWORD(STACK[0x22E8]) ^ 0xCB20B5A4) - 15512779 + v175 + (v44 >> 25) + (v174 ^ (((2 * v170) ^ 0x2118BD87) + 2 * ((v170 ^ 0x6F73A13C) + v167) + 1)) + (((v170 ^ 0x6F73A13C) << 21) ^ (v170 >> 11) ^ 0xDEE74);
    v177 = v176 + 1538703044 - ((2 * v176) & 0xB76D7D88);
    HIDWORD(v44) = v177 ^ 0x1EC4;
    LODWORD(v44) = v177 ^ 0x5BB6A000;
    v178 = v44 >> 13;
    HIDWORD(v44) = v177 ^ 0x36BEC4;
    LODWORD(v44) = v177 ^ 0x5B800000;
    v179 = v44 >> 22;
    HIDWORD(v44) = v177 ^ 4;
    LODWORD(v44) = v177 ^ 0x5BB6BEC0;
    v180 = v44 >> 6;
    HIDWORD(v44) = v177 ^ 0x1B6BEC4;
    LODWORD(v44) = v177 ^ 0x5A000000;
    v181 = v44 >> 25;
    HIDWORD(v44) = v177 ^ 0x6C4;
    LODWORD(v44) = v177 ^ 0x5BB6B800;
    v182 = v180 ^ (v44 >> 11) ^ v181;
    HIDWORD(v44) = v176;
    LODWORD(v44) = v177 ^ 0x5BB6BEC4;
    v183 = v85 + 391702393 + 2 * v171 - v178 - v179 + (v44 >> 2) + ((2 * v177) ^ 0xB76D7D88) + (((v177 ^ 0x5BB6BEC4) + v171 - ((2 * v177) ^ 0xB76D7D88)) ^ (v171 - (v177 ^ 0x5BB6BEC4))) - v182;
    v184 = v183 - 1972470823 - ((2 * v183) & 0x14DCF7B2);
    HIDWORD(v44) = v184 ^ 0x2E7BD9;
    LODWORD(v44) = v184 ^ 0x8A400000;
    v185 = v44 >> 22;
    HIDWORD(v44) = v184 ^ 0x1BD9;
    LODWORD(v44) = v184 ^ 0x8A6E6000;
    v186 = v44 >> 13;
    HIDWORD(v44) = v184 ^ 1;
    LODWORD(v44) = v184 ^ 0x8A6E7BD8;
    v187 = (v44 >> 2) ^ v186;
    HIDWORD(v44) = v184 ^ 0x99999999;
    LODWORD(v44) = v184 ^ 0x8A6E7BC0;
    v188 = v44 >> 6;
    HIDWORD(v44) = v184 ^ 0x3D9;
    LODWORD(v44) = v184 ^ 0x8A6E7800;
    v189 = v44 >> 11;
    HIDWORD(v44) = v184 ^ 0x6E7BD9;
    LODWORD(v44) = v184 ^ 0x8A000000;
    v190 = v189 ^ v188 ^ (v44 >> 25);
    v191 = (v184 ^ 0x75918426) + 1;
    v192 = v87;
    v193 = (v87 ^ 0x7CAF66D9) - 122110792 + (v177 ^ 0x5BB6BEC4) + (v177 ^ 0x2E273AE2 ^ v184) + ((2 * v184) ^ 0xEB23084D) + v191 - v185 + 2 * v191 + v187 - v190;
    v194 = v193 + 268484608 - ((2 * v193) & 0x20018D06);
    v195 = v194 + 1667;
    v196 = (v194 + 1667) ^ 0x683;
    v197 = (v194 + 1667) ^ 0x1000C000;
    v198 = v151 + v58;
    HIDWORD(v44) = -1696 - v194;
    LODWORD(v44) = (v194 + 1667) ^ 0x1000C680;
    v199 = (v44 >> 2) - (__PAIR64__(v196, v197) >> 13);
    HIDWORD(v44) = v195 ^ 0xC683;
    LODWORD(v44) = v195 ^ 0x10000000;
    v200 = v199 ^ (v44 >> 22);
    HIDWORD(v44) = v195 ^ 3;
    LODWORD(v44) = v195 ^ 0x1000C680;
    LODWORD(v58) = v44 >> 6;
    v201 = LODWORD(STACK[0x22B0]) ^ 0xC041DDCA;
    HIDWORD(v44) = v195 ^ 0xC683;
    LODWORD(v44) = v195 ^ 0x10000000;
    v202 = __PAIR64__(v196, v197) >> 11;
    v203 = v184 ^ 0x9A6EBD5A ^ v195;
    v204 = v58 ^ v202;
    LODWORD(v58) = v195 ^ 0x1000C683;
    v205 = (v195 ^ 0x1000C683) + (v184 ^ 0x8A6E7BD9) - v203 - (v44 >> 25) - v204;
    LODWORD(STACK[0x22B0]) = v201;
    v206 = v191 + (v195 ^ 0x1000C683) + v203 + ((2 * v195) ^ 0xDFFE72F9) + v200 + ((v205 - ((2 * v205 + 120298948) & 0x79DD7626) + 1082427893) ^ v201) + 1;
    v207 = v206 - 1423288128 - ((2 * v206) & 0x5654B18E);
    v208 = v207 + 7;
    HIDWORD(v44) = (v207 + 7) ^ 0x18C7;
    LODWORD(v44) = (v207 + 7) ^ 0xAB2A4000;
    v209 = (v44 >> 13) ^ (((v207 + 7) >> 2) - (v207 << 30));
    HIDWORD(v44) = v208 ^ 0x2A58C7;
    LODWORD(v44) = v208 ^ 0xAB000000;
    v210 = v44 >> 22;
    LOBYTE(v205) = (~v173 & 0x9D | v173 & 0xDD) & (v127 & 0x37 ^ 0x27 | v127 & 0x37 ^ 0x10);
    HIDWORD(v44) = v208 ^ 7;
    LODWORD(v44) = v208 ^ 0xAB2A58C0;
    v211 = v44 >> 6;
    HIDWORD(v44) = v208 ^ 0x12A58C7;
    LODWORD(v44) = v208 ^ 0xAAAAAAAA;
    v212 = STACK[0x21F0];
    v213 = LODWORD(STACK[0x21F0]) + 714498376 - v210 - 2 * (v208 ^ 0xAB2A58C7) + v211 + (v44 >> 25) + (((v208 ^ 0xAB2A58C7) << v205) ^ (v208 >> 11) ^ 0xFFEA9AB4) - ((((2 * v208) ^ 0x5654B18E) + (v208 ^ 0xAB2A58C7) - v58) ^ (v58 - (v208 ^ 0xAB2A58C7))) + (v209 ^ 0x2ACA9631) + 1;
    v214 = v213 + 55865808 - ((2 * v213) & 0x6A8E3A0);
    v215 = v214 ^ 0x35471D0;
    HIDWORD(v44) = v214 ^ 0x11D0;
    LODWORD(v44) = v214 ^ 0x3546000;
    v216 = v44 >> 13;
    HIDWORD(v44) = v213;
    LODWORD(v44) = v214 ^ 0x35471D0;
    v217 = v44 >> 2;
    HIDWORD(v44) = v214 ^ 0x1471D0;
    LODWORD(v44) = v214 ^ 0x3400000;
    v218 = v217 - (v44 >> 22) + v216;
    HIDWORD(v44) = v214 ^ 0x10;
    LODWORD(v44) = v214 ^ 0x35471C0;
    v219 = v44 >> 6;
    HIDWORD(v44) = v214 ^ 0x1D0;
    LODWORD(v44) = v214 ^ 0x3547000;
    v220 = v44 >> 11;
    HIDWORD(v44) = v214 ^ 0x15471D0;
    LODWORD(v44) = v214 ^ 0x2000000;
    LODWORD(STACK[0x22D0]) = v104;
    v221 = (v104 ^ 0x5D0FB207) + 849692808 + (v218 ^ ((v208 ^ 0xA87E2917 ^ v214) + (v214 ^ 0x35471D0) + (v208 ^ 0xAB2A58C7) + ((2 * v214) ^ 0x6A8E3A0))) + (((v208 ^ 0xAB2A58C7) - v220 + v219 + (v44 >> 25)) ^ ((v208 ^ 0xA87E2917 ^ v214) + (v214 ^ 0x35471D0)));
    v222 = v221 - 1256988295 - ((2 * v221) & 0x6A27C2F2);
    HIDWORD(v44) = v222 ^ 0x113E179;
    LODWORD(v44) = v222 ^ 0xB4000000;
    v223 = v44 >> 25;
    HIDWORD(v44) = v222 ^ 0xFFFFFFF9;
    LODWORD(v44) = v222 ^ 0xB513E140;
    v224 = v44 >> 6;
    v225 = (2 * v222) ^ 0x6A27C2F2 ^ ((v222 ^ 0xB513E179) - (v214 ^ 0x35471D0));
    HIDWORD(v44) = v222 ^ 1;
    LODWORD(v44) = v222 ^ 0xB513E178;
    v226 = v44 >> 2;
    v227 = (v222 ^ 0xB513E179) + (v214 ^ 0x35471D0) + (v214 ^ 0xB64790A9 ^ v222);
    HIDWORD(v44) = v222 ^ 0x179;
    LODWORD(v44) = v222 ^ 0xB513E000;
    v228 = v226 - (v44 >> 13);
    HIDWORD(v44) = v222 ^ 0x13E179;
    LODWORD(v44) = v222 ^ 0xB5000000;
    v229 = v109 ^ 0xD3AD2E58;
    v230 = LODWORD(STACK[0x22C0]) ^ v109 ^ 0xD3AD2E58;
    LODWORD(STACK[0x22C0]) = v114;
    v231 = (v114 ^ 0x7616D0D3) + v230;
    v232 = 176750499 - v109 + v215 + v223 + (v224 ^ __ROR4__(v222, 11) ^ 0xD0C95D83) + ((v228 + (v44 >> 22)) ^ v227) - ((v225 - 1256988295 - ((2 * v225) & 0x6A27C2F2)) ^ v222) + 1;
    v233 = v232 - 593864907 - ((2 * v232) & 0xB934AE6A);
    HIDWORD(v44) = v233 ^ 0x9A5735;
    LODWORD(v44) = v233 ^ 0xDDDDDDDD;
    v234 = v44 >> 25;
    HIDWORD(v44) = v233 ^ 0x735;
    LODWORD(v44) = v233 ^ 0xDC9A5000;
    v235 = v44 >> 11;
    HIDWORD(v44) = v233 ^ 0x35;
    LODWORD(v44) = v233 ^ 0xDC9A5700;
    v236 = ((v235 ^ (v44 >> 6) ^ v234) - 1256988295 - ((2 * (v235 ^ (v44 >> 6) ^ v234)) & 0x6A27C2F2)) ^ v222;
    v237 = (v233 ^ 0xDC9A5735) + (v222 ^ 0xB513E179);
    HIDWORD(v44) = v233 ^ 0x1A5735;
    LODWORD(v44) = v233 ^ 0xDC800000;
    v238 = v44 >> 22;
    HIDWORD(v44) = v233 ^ 0x1735;
    LODWORD(v44) = v233 ^ 0xDC9A4000;
    v239 = v44 >> 13;
    HIDWORD(v44) = v233 ^ 1;
    LODWORD(v44) = v233 ^ 0xDC9A5734;
    v240 = v239 ^ (2 * v233) ^ (v44 >> 2) ^ v238 ^ v237;
    v241 = ((v240 ^ 0xB934AE6A) - 1256988295 - 2 * ((v240 ^ 0xB934AE6A) & 0x3513E17D ^ v240 & 4)) ^ v222;
    v242 = (v114 ^ 0x7616D0D3) - 1136841679 + (v233 ^ 0x2365A8CA) - v237 + v236 + ((v241 - 593864907 - ((2 * v241) & 0xB934AE6A)) ^ v233);
    v243 = v242 + 2086799360 - ((2 * v242) & 0xF8C41E92);
    v244 = v243 + 1881;
    v245 = v243 + 1865;
    HIDWORD(v44) = (v243 + 1865) ^ 0x749;
    LODWORD(v44) = (v243 + 1865) ^ 0x7C620800;
    v246 = v44 >> 11;
    HIDWORD(v44) = v245 ^ 9;
    LODWORD(v44) = v245 ^ 0x7C620F40;
    v247 = v44 >> 6;
    HIDWORD(v44) = v244 ^ 1;
    LODWORD(v44) = v245 ^ 0x7C620F48;
    v248 = v44 >> 2;
    HIDWORD(v44) = v245 ^ 0xF49;
    LODWORD(v44) = v245 ^ 0x7C620000;
    v249 = v44 >> 13;
    HIDWORD(v44) = v245 ^ 0x220F49;
    LODWORD(v44) = v245 ^ 0x7C7C7C7C;
    v250 = v44 >> 22;
    v251 = v198 - v118;
    HIDWORD(v44) = v245 ^ 0x620F49;
    LODWORD(v44) = v245 ^ 0x7C000000;
    v252 = (v233 ^ 0x2365A8CA) + (v233 ^ 0x5F07A783 ^ v245) + (v245 ^ 0x7C620F49) + ((2 * v245) ^ 0x73BE16D) + v249 + v248 - v250 + ((((2 * v233) ^ 0xB934AE6A) - v246 - v247 + (v44 >> 25) - 1662138313) ^ v231) + 3;
    v253 = (2 * v252) & 0x37FC36F4;
    v252 -= 1677845638;
    v254 = v252 - v253;
    HIDWORD(v44) = v252 ^ 2;
    LODWORD(v44) = v254 ^ 0x9BFE1B78;
    v255 = v44 >> 2;
    HIDWORD(v44) = v254 ^ 0x3E1B7A;
    LODWORD(v44) = v254 ^ 0x9BC00000;
    v256 = v44 >> 22;
    HIDWORD(v44) = v254 ^ 0x1B7A;
    LODWORD(v44) = v254 ^ 0x9BFE0000;
    v257 = v255 + (v44 >> 13) - v256;
    HIDWORD(v44) = v254 ^ 0x3A;
    LODWORD(v44) = v254 ^ 0x9BFE1B40;
    v258 = v44 >> 6;
    HIDWORD(v44) = v254 ^ 0x37A;
    LODWORD(v44) = v254 ^ 0x9BFE1800;
    v259 = v44 >> 11;
    HIDWORD(v44) = v254 ^ 0x1FE1B7A;
    LODWORD(v44) = v254 ^ 0x9A000000;
    v260 = v257 ^ ((v245 ^ 0x7C620F49) + (v254 ^ 0x6401E485) + (v245 ^ 0xE79C1433 ^ v254) + 1);
    LODWORD(STACK[0x22E0]) = (v254 ^ 0x9BFE1B7A) - v121;
    v261 = (v251 + 2) ^ v231;
    v262 = (v120 ^ 0xA2DE32CE) + 1774286128 - v261 + ((2 * v254) ^ 0x37FC36F4) + (v44 >> 25) + v259 - v258 + 2 * ((v254 ^ 0x9BFE1B7A) + (v245 ^ 0x7C620F49));
    v263 = v262 + v260 + 1562496305 - ((2 * (v262 + v260)) & 0xBA439A62);
    v264 = LODWORD(STACK[0x21D0]);
    LODWORD(STACK[0x22A0]) = v231;
    LODWORD(STACK[0x21F8]) = v261;
    LODWORD(STACK[0x21F0]) = v212 ^ 0x4CD7765;
    if (v264 != 2)
    {
      break;
    }

    LODWORD(STACK[0x21B8]) = v229;
    LODWORD(STACK[0x21D8]) = v263;
    v41 = 0;
    LODWORD(STACK[0x21C0]) = 0;
    LODWORD(STACK[0x21C8]) = 0;
    v265 = STACK[0x21A0];
    v42 = ((v265 >> 8) ^ 0xFFFFFFFD) - 2 * (((v265 >> 8) ^ 0xFFFFFFFD) & 0x13 ^ (v265 >> 8) & 2) + 17;
    v33 = (HIWORD(v265) ^ 0x14) - ((2 * (HIWORD(v265) ^ 0x14)) & 0x22) + 17;
    v35 = LODWORD(STACK[0x21A0]) ^ 0xFFFFFFF1;
    HIDWORD(v266) = HIBYTE(LODWORD(STACK[0x21A0])) ^ 0xFFFFFFFD;
    LODWORD(v266) = ~LODWORD(STACK[0x21A0]);
    v267 = *(STACK[0x2168] + ((v266 >> 27) ^ 0x64)) ^ 0xFFFFFFFD;
    v32 = v267 + ((24 - 2 * v267) | 0xFFFFFFDD) - 59;
    v23 = 17;
    v31 = 9;
    LODWORD(STACK[0x21D0]) = 1;
    LODWORD(STACK[0x21A0]) = HIBYTE(v265) ^ 0xFD14FD1D;
    v30 = 17;
    v40 = 17;
    v22 = 17;
    v21 = 17;
    v34 = 17;
    a2 = STACK[0x1FD8];
    v37 = v192;
    a8 = STACK[0x21A8];
    v38 = STACK[0x22E8];
    v39 = STACK[0x22B8];
  }

  if (v264 != 1)
  {
    JUMPOUT(0x26AA2F6E0);
  }

  v268 = (LODWORD(STACK[0xADC]) + 1671768103) | 0x10B;
  v269 = STACK[0xADC] & 0x63A52EDF;
  v270 = LODWORD(STACK[0xE94]) + 3692;
  v271 = STACK[0x1210];
  v271[2455] = v263 ^ 0x20;
  v272 = STACK[0x22E0];
  v271[2376] = (BYTE1(v263) ^ 0xCD) - ((((v263 >> 8) ^ 0xFFFFFFCD) << ((v268 ^ 3) + v269)) & 0x22) + 17;
  v271[2399] = v272 - ((2 * v272) & 0x22) + 17;
  v271[2297] = (BYTE2(v263) ^ 0x21) + ~(2 * ((BYTE2(v263) ^ 0x21) & 0x15 ^ BYTE2(v263) & 4)) + 18;
  v271[2241] = (~(v272 >> 15) | 0xDD) + BYTE2(v272) + 18;
  v271[2534] = HIBYTE(v272) - ((v272 >> 23) & 0x22) + 17;
  v273 = LODWORD(STACK[0xFE4]) > 0x1F;
  v271[2218] = (HIBYTE(v263) ^ 0x5D) - 2 * ((HIBYTE(v263) ^ 0x5D) & 0x13 ^ HIBYTE(v263) & 2) + 17;
  v271[2320] = BYTE1(v272) + (~(v272 >> 7) | 0xDD) + 18;
  return (*(STACK[0x22F8] + 8 * (v270 ^ (v273 | (4 * v273)))))();
}

uint64_t sub_26AA320F8@<X0>(_BYTE *a1@<X0>, int a2@<W7>, char a3@<W8>)
{
  *(STACK[0xA50] + 1781) = a3;
  LODWORD(STACK[0xFE4]) = 59;
  STACK[0x1F60] = 59;
  v5 = STACK[0x1668];
  a1[2376] = 49;
  a1[2478] = 88;
  a1[2501] = -7;
  a1[2399] = 118;
  a1[2241] = 7;
  LODWORD(STACK[0x2060]) = a2;
  a1[2422] = 80;
  a1[2557] = -80;
  a1[2320] = -29;
  a1[2580] = -125;
  a1[2218] = -85;
  a1[2534] = -88;
  a1[2343] = -5;
  a1[2455] = 38;
  a1[2287] = 64;
  a1[2264] = -112;
  a1[2297] = 35;
  v6 = *(v4 + 8 * ((28 * ((a2 - 1085542782 + v3 + 2694 - 2725) > 7)) ^ (v3 + 3880)));
  LODWORD(STACK[0x22E0]) = 1;
  LODWORD(STACK[0x121C]) = 161;
  STACK[0x1020] = STACK[0x1B80];
  STACK[0x1668] = v5;
  STACK[0x1A88] = v5;
  STACK[0x1A80] = STACK[0xFA8];
  LODWORD(STACK[0x22E8]) = 1;
  LODWORD(STACK[0x1DE8]) = 1;
  LODWORD(STACK[0x1920]) = 1;
  LODWORD(STACK[0x1900]) = 1;
  LODWORD(STACK[0x1908]) = 1;
  LODWORD(STACK[0x1DB8]) = 1;
  LODWORD(STACK[0x1910]) = 1;
  LODWORD(STACK[0x1918]) = 1;
  LODWORD(STACK[0x22A0]) = 1;
  LODWORD(STACK[0x21D8]) = 1;
  LODWORD(STACK[0x21B8]) = 1;
  LODWORD(STACK[0x18C8]) = 1;
  LODWORD(STACK[0x18D0]) = 1;
  LODWORD(STACK[0x21C0]) = 1;
  LODWORD(STACK[0x1E00]) = 1;
  LODWORD(STACK[0x1E08]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  LODWORD(STACK[0x21D0]) = 1;
  LODWORD(STACK[0x1E10]) = 1;
  LODWORD(STACK[0x21C8]) = 1;
  LODWORD(STACK[0x1F90]) = 1;
  LODWORD(STACK[0x21A0]) = 1;
  LODWORD(STACK[0x21A8]) = 1;
  return v6();
}

uint64_t sub_26AA32188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = *(v9 + 8 * ((95 * (((v7 + 61) ^ (v8 < ((v7 - 629703512) & 0x25887F9B ^ 0x8Au))) & 1)) ^ (v7 + 1857)));
  LODWORD(STACK[0x1FA0]) = a7;
  return v10(a1, a2, a3, a4, a5, a6);
}

void sub_26AA32290(char a1@<W8>)
{
  LOBYTE(STACK[0x23BD]) = a1;
  LODWORD(STACK[0xFE4]) = 30;
  STACK[0x1F60] = 30;
  JUMPOUT(0x26AA33760);
}

void sub_26AA3389C()
{
  LODWORD(STACK[0x121C]) = 161;
  STACK[0x1020] = STACK[0x1B80];
  STACK[0x1A88] = STACK[0x1668];
  STACK[0x1A80] = STACK[0xFA8];
  JUMPOUT(0x26AA338ECLL);
}

uint64_t sub_26AA33C8C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  LODWORD(STACK[0x21F8]) = 0;
  LODWORD(STACK[0x21C8]) = 0;
  LODWORD(STACK[0x1F90]) = 0;
  LODWORD(STACK[0x21A0]) = 0;
  LODWORD(STACK[0x21A8]) = 0;
  v4 = (v2 - 862) | 0xC9;
  v5 = LODWORD(STACK[0x2060]) - 8;
  STACK[0x2140] = (a2 >> (v4 + 15)) ^ 0x8C47B4C181B6D962;
  LODWORD(STACK[0x2060]) = v5;
  *(a1 + 2310) = a2 ^ 0x23;
  v6 = *(v3 + 8 * ((((v5 - 1085542782) > 7) * (((v4 - 223) | 5) + 443)) ^ v4));
  LODWORD(STACK[0x22E0]) = 1;
  LODWORD(STACK[0x22E8]) = 1;
  LODWORD(STACK[0x1DE8]) = 1;
  LODWORD(STACK[0x1920]) = 1;
  LODWORD(STACK[0x1900]) = 1;
  LODWORD(STACK[0x1908]) = 1;
  LODWORD(STACK[0x1DB8]) = 1;
  LODWORD(STACK[0x1910]) = 1;
  LODWORD(STACK[0x1918]) = 1;
  LODWORD(STACK[0x22A0]) = 1;
  LODWORD(STACK[0x21D8]) = 1;
  LODWORD(STACK[0x21B8]) = 1;
  LODWORD(STACK[0x18C8]) = 1;
  LODWORD(STACK[0x18D0]) = 1;
  LODWORD(STACK[0x21C0]) = 1;
  LODWORD(STACK[0x1E00]) = 1;
  LODWORD(STACK[0x1E08]) = 1;
  LODWORD(STACK[0x21D0]) = 1;
  LODWORD(STACK[0x1E10]) = 1;
  return v6();
}

uint64_t sub_26AA33D74@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x21F8]) = 0;
  LODWORD(STACK[0x21D0]) = 0;
  LODWORD(STACK[0x21C8]) = 0;
  LODWORD(STACK[0x1F90]) = 0;
  LODWORD(STACK[0x21A0]) = 0;
  LODWORD(STACK[0x21A8]) = 0;
  v3 = (a2 - 1315) | 0xC10;
  v4 = v3 - 127 * (*(STACK[0x2278] + (STACK[0x2140] ^ 0x82)) ^ 0xBC) - ((2 * (*(STACK[0x2278] + (STACK[0x2140] ^ 0x82)) ^ 0xBC)) & 0x22) - 65;
  STACK[0x2140] = (STACK[0x2140] >> 8) ^ 0x8C47B4C181B6D962;
  v5 = LODWORD(STACK[0x2060]) - 8;
  LODWORD(STACK[0x2060]) = v5;
  *(a1 + 2389) = v4;
  v6 = *(v2 + 8 * (v3 ^ (4 * (v5 - 1085542782 >= ((v3 - 723) ^ 0xA60u) - 23))));
  LODWORD(STACK[0x22E0]) = 1;
  LODWORD(STACK[0x22E8]) = 1;
  LODWORD(STACK[0x1DE8]) = 1;
  LODWORD(STACK[0x1920]) = 1;
  LODWORD(STACK[0x1900]) = 1;
  LODWORD(STACK[0x1908]) = 1;
  LODWORD(STACK[0x1DB8]) = 1;
  LODWORD(STACK[0x1910]) = 1;
  LODWORD(STACK[0x1918]) = 1;
  LODWORD(STACK[0x22A0]) = 1;
  LODWORD(STACK[0x21D8]) = 1;
  LODWORD(STACK[0x21B8]) = 1;
  LODWORD(STACK[0x18C8]) = 1;
  LODWORD(STACK[0x18D0]) = 1;
  LODWORD(STACK[0x21C0]) = 1;
  LODWORD(STACK[0x1E00]) = 1;
  LODWORD(STACK[0x1E08]) = 1;
  LODWORD(STACK[0x1E10]) = 1;
  return v6();
}

void sub_26AA33E78(char a1@<W8>)
{
  v1 = a1 ^ 0x60;
  v2 = (STACK[0x2140] ^ 0x8CCB7FBE3F895032) >> ((STACK[0x2140] & 8 ^ 8) + (STACK[0x2140] & 8));
  STACK[0x2140] = v2 - 0x73348041C076AFCELL - ((v2 << (v1 ^ 0x1Eu)) & 0x1996FF7C7F12A064);
  JUMPOUT(0x26AA33ED8);
}

uint64_t sub_26AA34410@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v6 = (v4 ^ 0xFFFFFFE7) + LODWORD(STACK[0x2060]);
  STACK[0x2140] = (a2 >> 8) ^ 0x8C47B4C181B6D962;
  LODWORD(STACK[0x22A0]) = 0;
  LODWORD(STACK[0x21D8]) = 0;
  LODWORD(STACK[0x18D0]) = 0;
  LODWORD(STACK[0x21C0]) = 0;
  LODWORD(STACK[0x1E00]) = 0;
  LODWORD(STACK[0x1E08]) = 0;
  LODWORD(STACK[0x21F8]) = 0;
  LODWORD(STACK[0x21D0]) = 0;
  LODWORD(STACK[0x1E10]) = 0;
  LODWORD(STACK[0x21C8]) = 0;
  LODWORD(STACK[0x1F90]) = 0;
  LODWORD(STACK[0x21A0]) = 0;
  LODWORD(STACK[0x21A8]) = 0;
  LODWORD(STACK[0x2060]) = v6;
  *(a1 + 2570) = a2 ^ ((v4 ^ 0xD5) + 89);
  v2 = *(v5 + 8 * ((1199 * (v6 - 1085542790 < 0xFFFFFFF8)) ^ (v4 + 218)));
  LODWORD(STACK[0x22E0]) = 1;
  LODWORD(STACK[0x22E8]) = 1;
  LODWORD(STACK[0x1DE8]) = 1;
  LODWORD(STACK[0x1920]) = 1;
  LODWORD(STACK[0x1900]) = 1;
  LODWORD(STACK[0x1908]) = 1;
  LODWORD(STACK[0x1DB8]) = 1;
  LODWORD(STACK[0x1910]) = 1;
  LODWORD(STACK[0x1918]) = 1;
  LODWORD(STACK[0x21B8]) = 1;
  LODWORD(STACK[0x18C8]) = 1;
  return v2();
}

void sub_26AA34444(uint64_t a1, unint64_t a2)
{
  LODWORD(STACK[0x22E8]) = STACK[0x1F10];
  LODWORD(STACK[0x22E0]) = STACK[0x1EE0];
  STACK[0x19E0] = LODWORD(STACK[0x1D20]);
  v3 = STACK[0x1ED8];
  v4 = STACK[0x1F20];
  v5 = STACK[0x1EA8];
  STACK[0x1A30] = LODWORD(STACK[0x1D38]);
  STACK[0x1CB0] = LODWORD(STACK[0x18E8]);
  v6 = STACK[0x1EB8];
  STACK[0x19C8] = LODWORD(STACK[0x18F0]);
  v7 = STACK[0x1F00];
  v8 = STACK[0x1EC8];
  v9 = STACK[0x1EF0];
  STACK[0x1B98] = LODWORD(STACK[0x1E18]);
  v10 = STACK[0x1EC0];
  v11 = STACK[0x22A8];
  v12 = STACK[0x1EF8];
  v13 = STACK[0x1FE0];
  STACK[0x1AC8] = LODWORD(STACK[0x1E88]);
  STACK[0x1A40] = LODWORD(STACK[0x1DC0]);
  STACK[0x1A18] = LODWORD(STACK[0x1DE0]);
  v14 = STACK[0x2100];
  STACK[0x1A20] = LODWORD(STACK[0x1D48]);
  v15 = STACK[0x1E98];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  STACK[0x1CE8] = LODWORD(STACK[0x1E90]);
  STACK[0x1B48] = LODWORD(STACK[0x1DA8]);
  STACK[0x1BD8] = LODWORD(STACK[0x20C8]);
  STACK[0x1D68] = LODWORD(STACK[0x1D18]);
  STACK[0x1BD0] = LODWORD(STACK[0x1D10]);
  STACK[0x1A68] = LODWORD(STACK[0x1D30]);
  STACK[0x1830] = STACK[0x1858];
  LODWORD(STACK[0x1B30]) = v15;
  STACK[0x1B88] = LODWORD(STACK[0x1D08]);
  LODWORD(STACK[0x1A38]) = STACK[0x2138];
  LODWORD(STACK[0x2098]) = v14;
  STACK[0xFB0] = a2;
  STACK[0x1DC8] = LODWORD(STACK[0x1D00]);
  STACK[0x1D60] = LODWORD(STACK[0x1D98]);
  LODWORD(STACK[0x1B10]) = v12;
  LODWORD(STACK[0x1B58]) = v11;
  STACK[0x1CD0] = LODWORD(STACK[0x1D40]);
  LODWORD(STACK[0x1AE4]) = v10;
  STACK[0x1B60] = LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x2078]) = v9;
  LODWORD(STACK[0x1F30]) = v8;
  LODWORD(STACK[0x1AE8]) = v7;
  STACK[0x1A90] = LODWORD(STACK[0x1D28]);
  LODWORD(STACK[0x1F28]) = v6;
  STACK[0x1AB0] = LODWORD(STACK[0x1D50]);
  STACK[0x1A10] = LODWORD(STACK[0x2180]);
  LODWORD(STACK[0x1AEC]) = v5;
  LODWORD(STACK[0x1AD8]) = v4;
  LODWORD(STACK[0x1AE0]) = v3;
  LODWORD(STACK[0x1B28]) = STACK[0x22E0];
  LODWORD(STACK[0x2048]) = STACK[0x22E8];
  LODWORD(STACK[0x1B68]) = STACK[0x1F78];
  LODWORD(STACK[0x1FE0]) = v13;
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x1A70]) = STACK[0x1D90];
  LODWORD(STACK[0x1B70]) = STACK[0x1F70];
  LODWORD(STACK[0x19F0]) = STACK[0x1D80];
  LODWORD(STACK[0x1BB8]) = STACK[0x2250];
  LODWORD(STACK[0x1BF8]) = STACK[0x2080];
  LODWORD(STACK[0x1A00]) = STACK[0x1D70];
  LODWORD(STACK[0x1234]) = STACK[0x22D0];
  LODWORD(STACK[0x18C0]) = v2;
  LODWORD(STACK[0x1FF8]) = v2;
  LODWORD(STACK[0x19E8]) = STACK[0x1D78];
  STACK[0x1A50] = STACK[0x20F0];
  STACK[0x1A48] = STACK[0x20E8];
  STACK[0x1C30] = STACK[0x2290];
  STACK[0x1AC0] = STACK[0x2298];
  LODWORD(STACK[0x19D8]) = STACK[0x2198];
  LODWORD(STACK[0x1960]) = STACK[0x20C0];
  LODWORD(STACK[0x1ADC]) = STACK[0x1E28];
  LODWORD(STACK[0x1A08]) = STACK[0x1E30];
  LODWORD(STACK[0x1A58]) = STACK[0x20E0];
  LODWORD(STACK[0x1938]) = STACK[0x2110];
  LODWORD(STACK[0x1F88]) = STACK[0x2288];
  LODWORD(STACK[0x1B38]) = STACK[0x2090];
  LODWORD(STACK[0x1A74]) = STACK[0x1DD8];
  LODWORD(STACK[0x2008]) = STACK[0x12E0];
  JUMPOUT(0x26AA34704);
}

uint64_t sub_26AA34BF4()
{
  STACK[0x21A8] = (4 * v0) ^ 0x27Bu;
  v4 = *(v3 + 8 * ((((4 * v0) ^ 0x7A1) * (v2 & 1)) ^ v0));
  LODWORD(STACK[0x2120]) = v1;
  return v4();
}

uint64_t sub_26AA34C44(uint64_t a1)
{
  LODWORD(STACK[0x22E8]) = 0;
  LODWORD(STACK[0x22B8]) = 0;
  LODWORD(STACK[0x22B0]) = 0;
  LODWORD(STACK[0x22C0]) = 0;
  return (*(STACK[0x22F8] + 8 * ((((v1 ^ ((v2 ^ 0xE8) - 109)) & 1) * ((v2 ^ 0x13E8) - 4429)) ^ v2 ^ 0x13E8)))(a1, 1, 0, 0, 0, 0, 0);
}

uint64_t sub_26AA34E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  LODWORD(STACK[0x22E8]) = 0;
  LODWORD(STACK[0x22B8]) = 0;
  LODWORD(STACK[0x22B0]) = 0;
  LODWORD(STACK[0x22C0]) = 0;
  return (*(v9 + 8 * ((504 * ((a8 ^ ((v8 ^ 0x30) + 87)) & 1)) ^ v8)))();
}

uint64_t sub_26AA34EE8(uint64_t a1, unsigned int a2)
{
  v6 = STACK[0x2258];
  v7 = 6 * (v5 ^ 0x24E) - 3557;
  *(v4 + 4 * v2) = *v3;
  v8 = (v7 < a2) ^ 0x6B;
  if (v7 >= a2)
  {
    v9 = v6;
  }

  else
  {
    v9 = v6 + 1;
  }

  v10 = *(v9 + 198);
  if (v7 < a2)
  {
    ++v8;
  }

  return (*(STACK[0x22F8] + 8 * ((63 * (((v8 + 8 - ((2 * (v8 + 8)) & 0x22222222) + 17) ^ v10) != 33)) ^ (v5 + 1468))))(a1);
}

uint64_t sub_26AA35034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 - 1) = v10;
  *v8 = v10;
  return (*(v9 + 8 * (((((a7 + 1) & 0x1FFFFFFF8) != 8) * (((((v7 + 442341585) & 0xE5A266F4) + 416) | 0x103) - 953)) ^ (v7 + 442341585) & 0xE5A266F4)))(a1);
}

uint64_t sub_26AA3508C()
{
  *(v1 - 1) = v5;
  *v1 = v5;
  return (*(v4 + 8 * (((v3 != 0) * v2) ^ v0)))();
}

uint64_t sub_26AA351E8(int a1)
{
  *(v1 - 12) = v3;
  *(v1 - 28) = v3;
  return (*(STACK[0x22F8] + 8 * ((124 * (((v2 + 2098625778) & 0x82E97FFF) - 1455 != (a1 & 0x7FFFFF8))) ^ (v2 - 12))))();
}

uint64_t sub_26AA3534C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W4>, int a4@<W6>, int a5@<W8>)
{
  if (v13)
  {
    v15 = 1637231440;
  }

  else
  {
    v15 = 1637231441;
  }

  LODWORD(STACK[0x20C0]) = v15;
  v16 = (a5 - 1573554170) & 0x5DCA86FF;
  if (v13)
  {
    v17 = v14;
  }

  else
  {
    v17 = STACK[0x17A8];
  }

  v18 = STACK[0x17B0];
  if ((v13 & 1) == 0)
  {
    v18 = v14;
  }

  STACK[0x1880] = STACK[0x1E08];
  STACK[0x1868] = STACK[0x1E00];
  STACK[0x1870] = STACK[0x1DF8];
  STACK[0x1948] = STACK[0x1DF0];
  STACK[0x18E0] = STACK[0x1DE8];
  STACK[0x1898] = STACK[0x18D0];
  STACK[0x1890] = STACK[0x1E10];
  STACK[0x1FB8] = STACK[0x18C8];
  STACK[0x1888] = STACK[0x18C0];
  LODWORD(STACK[0x1F90]) = STACK[0x1BC0];
  LODWORD(STACK[0x20A0]) = a3;
  LODWORD(STACK[0x1988]) = STACK[0x1DB8];
  LODWORD(STACK[0x2120]) = v9;
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x20C8]) = a2;
  LODWORD(STACK[0x20B8]) = v12;
  LODWORD(STACK[0x20D0]) = v11;
  STACK[0x1978] = LODWORD(STACK[0x1918]);
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x2100]) = STACK[0x1428];
  LODWORD(STACK[0x17A8]) = v17;
  LODWORD(STACK[0x1CA0]) = STACK[0x18B8];
  LODWORD(STACK[0x22D0]) = STACK[0x1CA4];
  LODWORD(STACK[0x21A0]) = STACK[0x1920];
  LODWORD(STACK[0x1954]) = STACK[0x1910];
  LODWORD(STACK[0x1FF8]) = STACK[0x2160];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x17B0]) = v18;
  LODWORD(STACK[0x18D8]) = STACK[0x18A8];
  LODWORD(STACK[0x20D8]) = v10;
  LODWORD(STACK[0x1D88]) = STACK[0x18A0];
  LODWORD(STACK[0x1FC0]) = STACK[0x18B0];
  LODWORD(STACK[0x2138]) = v14;
  LODWORD(STACK[0x2288]) = v14;
  LODWORD(STACK[0x2080]) = a4;
  LODWORD(STACK[0x2008]) = STACK[0x12E0];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x2070]) = STACK[0x1900];
  LODWORD(STACK[0x20B0]) = STACK[0x1BF0];
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x2250]) = a1;
  LODWORD(STACK[0x1980]) = STACK[0x1908];
  if (v13)
  {
    v19 = STACK[0xB38];
  }

  else
  {
    v19 = STACK[0xCD8];
  }

  v20 = STACK[0x1270];
  STACK[0x20F0] = STACK[0x1270];
  STACK[0x2290] = v20;
  STACK[0x2298] = v19;
  STACK[0x20E8] = v19;
  v21 = STACK[0x1C60];
  LODWORD(STACK[0x2198]) = STACK[0x1C60];
  LODWORD(STACK[0x20E0]) = v21;
  LODWORD(STACK[0x2110]) = 922064384;
  v5 = STACK[0x1FF8];
  LODWORD(v21) = STACK[0x22D0];
  v6 = STACK[0x2298];
  LODWORD(STACK[0x1F88]) = STACK[0x2288];
  STACK[0x1AC0] = v6;
  LODWORD(STACK[0x1CA4]) = v21;
  v7 = STACK[0x22F8];
  LODWORD(STACK[0x1FF8]) = v5;
  return (*(v7 + 8 * ((37 * (v14 != ((22 * ((((v16 + 1891039136) & 0x8F490A7D) - 223) ^ 0x125) + 877591597) & 0xCBB0F95F) - 31)) ^ (22 * ((((v16 + 1891039136) & 0x8F490A7D) - 223) ^ 0x125)))))();
}

uint64_t sub_26AA367BC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W6>, int a6@<W8>)
{
  v12 = (a6 + 1612051554) & 0x9FE9FB9F;
  v13 = STACK[0x22B0] & 1;
  STACK[0x21A8] = v12;
  v14 = *(v11 + 8 * (((v12 + 443) * v13) ^ a6));
  STACK[0x1880] = STACK[0x1E08];
  STACK[0x1868] = STACK[0x1E00];
  STACK[0x1870] = STACK[0x1DF8];
  STACK[0x1948] = STACK[0x1DF0];
  STACK[0x18E0] = STACK[0x1DE8];
  STACK[0x1898] = STACK[0x18D0];
  STACK[0x1890] = STACK[0x1E10];
  STACK[0x1FB8] = STACK[0x18C8];
  STACK[0x1888] = STACK[0x18C0];
  STACK[0x20F0] = STACK[0x1A50];
  STACK[0x20E8] = STACK[0x1A48];
  STACK[0x2290] = STACK[0x1C30];
  STACK[0x2298] = STACK[0x1AC0];
  LODWORD(STACK[0x2198]) = STACK[0x19D8];
  LODWORD(STACK[0x1F90]) = STACK[0x1BC0];
  LODWORD(STACK[0x20C0]) = STACK[0x17C0];
  LODWORD(STACK[0x20A0]) = a4;
  LODWORD(STACK[0x1988]) = STACK[0x1DB8];
  LODWORD(STACK[0x2120]) = v6;
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x20C8]) = a2;
  LODWORD(STACK[0x20B8]) = v9;
  LODWORD(STACK[0x20D0]) = v8;
  LODWORD(STACK[0x22D0]) = v10;
  LODWORD(STACK[0x2160]) = v10;
  STACK[0x1978] = LODWORD(STACK[0x1918]);
  LODWORD(STACK[0x2138]) = a3;
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x2100]) = STACK[0x1428];
  LODWORD(STACK[0x1CA0]) = STACK[0x18B8];
  LODWORD(STACK[0x21A0]) = STACK[0x1920];
  LODWORD(STACK[0x1954]) = STACK[0x1910];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x20E0]) = STACK[0x1A58];
  LODWORD(STACK[0x18D8]) = STACK[0x18A8];
  LODWORD(STACK[0x20D8]) = v7;
  LODWORD(STACK[0x1D88]) = STACK[0x18A0];
  LODWORD(STACK[0x2110]) = STACK[0x1938];
  LODWORD(STACK[0x1FC0]) = STACK[0x18B0];
  LODWORD(STACK[0x2288]) = STACK[0x1F88];
  LODWORD(STACK[0x2080]) = a5;
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x2070]) = STACK[0x1900];
  LODWORD(STACK[0x20B0]) = STACK[0x1BF0];
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x2250]) = a1;
  LODWORD(STACK[0x1980]) = STACK[0x1908];
  return v14();
}

uint64_t sub_26AA36AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = v8 - v6 - 4 * v7;
  v14 = v12 > 0x1F;
  v13 = v12 + v9 - 4354;
  v14 = v14 && v13 > 0x1F;
  v15 = v14;
  return (*(v11 + 8 * ((v15 * ((v10 + 751869575) & 0xD32F55EF ^ 0x5C4)) ^ v10)))(a1, a2, 2900, a4, a5, a6, 0);
}

uint64_t sub_26AA36B10(uint64_t a1, unint64_t a2)
{
  v7 = vdupq_n_s64(a2);
  v8 = v5 + 1;
  v9 = vnegq_s32(vdupq_n_s32(v4));
  v10 = *(v3 + 4);
  v11 = *(v3 + 20);
  v12.i64[0] = v10;
  v12.i64[1] = DWORD1(v10);
  v13 = v12;
  v12.i64[0] = DWORD2(v10);
  v12.i64[1] = HIDWORD(v10);
  v14 = v12;
  v12.i64[0] = v11;
  v12.i64[1] = DWORD1(v11);
  v15 = v12;
  v12.i64[0] = DWORD2(v11);
  v12.i64[1] = HIDWORD(v11);
  v16 = vorrq_s8(vuzp1q_s32(vshlq_u64(v15, v7), vshlq_u64(v12, v7)), vshlq_u32(*(v3 + 16), v9));
  v8[-1] = vorrq_s8(vuzp1q_s32(vshlq_u64(v13, v7), vshlq_u64(v14, v7)), vshlq_u32(*v3, v9));
  *v8 = v16;
  return (*(STACK[0x22F8] + 8 * ((3185 * (((v6 + 1) & 0x1FFFFFFF8) == 8)) ^ v2)))(a1);
}

uint64_t sub_26AA36C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *(v7 + 4 * v8 + 16);
  *v9 = *(v7 + 4 * v8);
  v9[1] = v11;
  return (*(v10 + 8 * (((((a2 + 1) & 0x1FFFFFFF8) != 8) * ((a7 ^ 0x134) - 1399)) ^ a7 ^ 0x134)))();
}

uint64_t sub_26AA36CDC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *v7;
  *(v8 - 1) = *(v7 - 1);
  *v8 = v11;
  return (*(v10 + 8 * (((v9 != 0) * a7) ^ a2)))(a1);
}

void sub_26AA36F6C()
{
  LODWORD(STACK[0x22E8]) = 0;
  LODWORD(STACK[0x22E0]) = 0;
  LODWORD(STACK[0x22B8]) = 0;
  LODWORD(STACK[0x22C0]) = 0;
  LODWORD(STACK[0x22A8]) = v0;
  JUMPOUT(0x26AA3699CLL);
}

uint64_t sub_26AA36FD0()
{
  v4 = *(v3 + 8 * (((((v0 - 1552807794) & 0x5C8DF17F) + ((v0 - 1522) ^ 0x35)) * (v1 & 1)) ^ v0));
  STACK[0x12F0] = STACK[0x1608];
  STACK[0x12F8] = STACK[0x1600];
  STACK[0x1320] = STACK[0x15F0];
  STACK[0x1330] = STACK[0x14F0];
  STACK[0x1300] = STACK[0x1568];
  STACK[0x1308] = STACK[0x14E8];
  STACK[0x1338] = STACK[0x1560];
  STACK[0x1310] = STACK[0x1580];
  STACK[0x1318] = STACK[0x1548];
  STACK[0x1530] = STACK[0x1860];
  STACK[0x1538] = STACK[0x1808];
  STACK[0x1518] = STACK[0x1828];
  STACK[0x1508] = STACK[0x1788];
  STACK[0x1510] = STACK[0x16E0];
  STACK[0x1520] = STACK[0x1848];
  STACK[0x1528] = STACK[0x1700];
  STACK[0x15C8] = STACK[0x1728];
  STACK[0x1448] = STACK[0x15E8];
  STACK[0x1450] = STACK[0x1570];
  STACK[0x1460] = STACK[0x1800];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  STACK[0x1458] = STACK[0x15D8];
  STACK[0x2158] = STACK[0x17B8];
  LODWORD(STACK[0x2020]) = STACK[0x20F8];
  LODWORD(STACK[0x1AF0]) = STACK[0x1EB0];
  LODWORD(STACK[0x1BC0]) = STACK[0x1F90];
  STACK[0x1BD0] = LODWORD(STACK[0x1D10]);
  LODWORD(STACK[0x1B54]) = STACK[0x20A0];
  LODWORD(STACK[0x17C8]) = STACK[0x14E4];
  LODWORD(STACK[0x1718]) = STACK[0x14FC];
  LODWORD(STACK[0x15C0]) = STACK[0x1690];
  LODWORD(STACK[0x19F8]) = STACK[0x2120];
  LODWORD(STACK[0x17D0]) = STACK[0x14E0];
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  LODWORD(STACK[0x1AF8]) = STACK[0x1F08];
  LODWORD(STACK[0x1A98]) = STACK[0x14DC];
  STACK[0x1A68] = LODWORD(STACK[0x1D30]);
  LODWORD(STACK[0x1970]) = STACK[0x14D8];
  STACK[0x1D68] = LODWORD(STACK[0x1D18]);
  LODWORD(STACK[0x1748]) = STACK[0x1968];
  LODWORD(STACK[0x15A8]) = STACK[0x14F8];
  STACK[0x1B20] = LODWORD(STACK[0x20A8]);
  LODWORD(STACK[0x19E8]) = STACK[0x1D78];
  LODWORD(STACK[0x1438]) = STACK[0x1628];
  LODWORD(STACK[0x1750]) = STACK[0x1500];
  STACK[0x1BD8] = LODWORD(STACK[0x20C8]);
  LODWORD(STACK[0x1878]) = STACK[0x14D4];
  LODWORD(STACK[0x1618]) = STACK[0x14D0];
  LODWORD(STACK[0x1DD0]) = STACK[0x14CC];
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  STACK[0x1B48] = LODWORD(STACK[0x1DA8]);
  STACK[0x1CE8] = LODWORD(STACK[0x1E90]);
  LODWORD(STACK[0x1404]) = STACK[0x14C8];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x2068]) = STACK[0x1790];
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x1B00]) = STACK[0x1EA0];
  LODWORD(STACK[0x1B30]) = STACK[0x1E98];
  STACK[0x1B88] = LODWORD(STACK[0x1D08]);
  STACK[0x1A20] = LODWORD(STACK[0x1D48]);
  LODWORD(STACK[0x1640]) = STACK[0x14C4];
  LODWORD(STACK[0x2098]) = STACK[0x2100];
  STACK[0x1A18] = LODWORD(STACK[0x1DE0]);
  LODWORD(STACK[0x16F0]) = STACK[0x17A8];
  STACK[0x1DC8] = LODWORD(STACK[0x1D00]);
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  STACK[0x1A40] = LODWORD(STACK[0x1DC0]);
  LODWORD(STACK[0x1444]) = STACK[0x15D0];
  LODWORD(STACK[0x15A0]) = STACK[0x16B8];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  STACK[0x1D60] = LODWORD(STACK[0x1D98]);
  LODWORD(STACK[0x1994]) = STACK[0x21A0];
  LODWORD(STACK[0x1698]) = STACK[0x1688];
  LODWORD(STACK[0x1738]) = STACK[0x1554];
  LODWORD(STACK[0x1760]) = STACK[0x1590];
  STACK[0x1AC8] = LODWORD(STACK[0x1E88]);
  LODWORD(STACK[0x1928]) = STACK[0x1504];
  LODWORD(STACK[0x1468]) = STACK[0x1CF8];
  LODWORD(STACK[0x19D4]) = STACK[0x1BB0];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1B10]) = STACK[0x1EF8];
  LODWORD(STACK[0x1B58]) = STACK[0x22A8];
  LODWORD(STACK[0x1708]) = STACK[0x143C];
  LODWORD(STACK[0x1740]) = STACK[0x14C0];
  LODWORD(STACK[0x18F8]) = STACK[0x14BC];
  LODWORD(STACK[0x12E4]) = STACK[0x157C];
  LODWORD(STACK[0x1470]) = STACK[0x14B8];
  STACK[0x1CD0] = LODWORD(STACK[0x1D40]);
  LODWORD(STACK[0x17E0]) = STACK[0x14B4];
  LODWORD(STACK[0x1930]) = STACK[0x1818];
  LODWORD(STACK[0x1CE0]) = v2;
  LODWORD(STACK[0x12EC]) = STACK[0x1558];
  LODWORD(STACK[0x17E8]) = STACK[0x14B0];
  LODWORD(STACK[0x12E8]) = STACK[0x155C];
  LODWORD(STACK[0x1FF8]) = STACK[0x2160];
  LODWORD(STACK[0x1598]) = STACK[0x1840];
  LODWORD(STACK[0x1B90]) = STACK[0x1EE8];
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x1AE4]) = STACK[0x1EC0];
  LODWORD(STACK[0x1ADC]) = STACK[0x1E28];
  LODWORD(STACK[0x1850]) = STACK[0x14AC];
  LODWORD(STACK[0x16E8]) = STACK[0x17B0];
  LODWORD(STACK[0x1474]) = STACK[0x14A8];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  STACK[0x1B60] = LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x1A08]) = STACK[0x1E30];
  LODWORD(STACK[0x1710]) = STACK[0x17F8];
  LODWORD(STACK[0x146C]) = STACK[0x14A4];
  LODWORD(STACK[0x15F8]) = STACK[0x14A0];
  LODWORD(STACK[0x17A0]) = STACK[0x149C];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x16B0]) = STACK[0x1498];
  STACK[0x1B98] = LODWORD(STACK[0x1E18]);
  LODWORD(STACK[0x1344]) = STACK[0x1494];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x1730]) = STACK[0x16D0];
  LODWORD(STACK[0x13F0]) = STACK[0x1490];
  LODWORD(STACK[0x1758]) = STACK[0x16A8];
  LODWORD(STACK[0x1B18]) = STACK[0x1E78];
  LODWORD(STACK[0x2078]) = STACK[0x1EF0];
  LODWORD(STACK[0x2248]) = STACK[0x2208];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x1F30]) = STACK[0x1EC8];
  LODWORD(STACK[0x15B0]) = STACK[0x16F8];
  LODWORD(STACK[0x1C10]) = STACK[0x20D8];
  LODWORD(STACK[0x1AE8]) = STACK[0x1F00];
  LODWORD(STACK[0x1820]) = STACK[0x1944];
  LODWORD(STACK[0x15E0]) = STACK[0x158C];
  LODWORD(STACK[0x1348]) = STACK[0x1588];
  LODWORD(STACK[0x1798]) = STACK[0x148C];
  LODWORD(STACK[0x1778]) = STACK[0x16C0];
  STACK[0x1A90] = LODWORD(STACK[0x1D28]);
  LODWORD(STACK[0x1F28]) = STACK[0x1EB8];
  LODWORD(STACK[0x1720]) = STACK[0x16A0];
  LODWORD(STACK[0x1A00]) = STACK[0x1D70];
  LODWORD(STACK[0x1CAC]) = STACK[0x1488];
  STACK[0x1AB0] = LODWORD(STACK[0x1D50]);
  LODWORD(STACK[0x1ABC]) = STACK[0x1E40];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x1770]) = STACK[0x1780];
  LODWORD(STACK[0x1638]) = STACK[0x1484];
  LODWORD(STACK[0x17D8]) = STACK[0x1DA0];
  LODWORD(STACK[0x1AA0]) = STACK[0x1480];
  LODWORD(STACK[0x1AA8]) = STACK[0x19A8];
  STACK[0x1A30] = LODWORD(STACK[0x1D38]);
  LODWORD(STACK[0x1BF8]) = STACK[0x2080];
  STACK[0x1A10] = LODWORD(STACK[0x2180]);
  LODWORD(STACK[0x1A70]) = STACK[0x1D90];
  LODWORD(STACK[0x1F58]) = STACK[0x1E80];
  LODWORD(STACK[0x1AEC]) = STACK[0x1EA8];
  LODWORD(STACK[0x1478]) = STACK[0x147C];
  LODWORD(STACK[0x1AD8]) = STACK[0x1F20];
  LODWORD(STACK[0x132C]) = STACK[0x1544];
  LODWORD(STACK[0x1CE4]) = STACK[0x16D8];
  STACK[0x1838] = LODWORD(STACK[0x1ED0]);
  LODWORD(STACK[0x1A74]) = STACK[0x1DD8];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1AE0]) = STACK[0x1ED8];
  LODWORD(STACK[0x1AD4]) = STACK[0x1E70];
  LODWORD(STACK[0x1CB8]) = STACK[0x1610];
  STACK[0x19E0] = LODWORD(STACK[0x1D20]);
  LODWORD(STACK[0x1B28]) = STACK[0x1EE0];
  LODWORD(STACK[0x1768]) = STACK[0x1810];
  LODWORD(STACK[0x1B3C]) = STACK[0x1F40];
  LODWORD(STACK[0x1BB8]) = STACK[0x2250];
  LODWORD(STACK[0x19A0]) = STACK[0x1998];
  STACK[0x15B8] = LODWORD(STACK[0x1E38]);
  LODWORD(STACK[0x1440]) = STACK[0x1540];
  LODWORD(STACK[0x19F0]) = STACK[0x1D80];
  LODWORD(STACK[0x2048]) = STACK[0x1F10];
  return v4();
}

void sub_26AA375A8()
{
  STACK[0x12F0] = STACK[0x1608];
  STACK[0x12F8] = STACK[0x1600];
  STACK[0x1320] = STACK[0x15F0];
  STACK[0x1330] = STACK[0x14F0];
  STACK[0x1300] = STACK[0x1568];
  STACK[0x1308] = STACK[0x14E8];
  STACK[0x1338] = STACK[0x1560];
  STACK[0x1310] = STACK[0x1580];
  STACK[0x1318] = STACK[0x1548];
  STACK[0x1530] = STACK[0x1860];
  STACK[0x1538] = STACK[0x1808];
  STACK[0x1518] = STACK[0x1828];
  STACK[0x1508] = STACK[0x1788];
  STACK[0x1510] = STACK[0x16E0];
  STACK[0x1520] = STACK[0x1848];
  STACK[0x1528] = STACK[0x1700];
  STACK[0x15C8] = STACK[0x1728];
  STACK[0x1448] = STACK[0x15E8];
  STACK[0x1450] = STACK[0x1570];
  STACK[0x1460] = STACK[0x1800];
  STACK[0x1458] = STACK[0x15D8];
  STACK[0x2158] = STACK[0x17B8];
  LODWORD(STACK[0x2020]) = STACK[0x20F8];
  LODWORD(STACK[0x1AF0]) = STACK[0x1EB0];
  LODWORD(STACK[0x1BC0]) = STACK[0x1F90];
  STACK[0x1BD0] = LODWORD(STACK[0x1D10]);
  LODWORD(STACK[0x1B54]) = STACK[0x20A0];
  LODWORD(STACK[0x1718]) = STACK[0x14FC];
  LODWORD(STACK[0x15C0]) = STACK[0x1690];
  LODWORD(STACK[0x19F8]) = STACK[0x2120];
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  LODWORD(STACK[0x1AF8]) = STACK[0x1F08];
  LODWORD(STACK[0x1A98]) = STACK[0x14DC];
  STACK[0x1A68] = LODWORD(STACK[0x1D30]);
  LODWORD(STACK[0x1970]) = STACK[0x14D8];
  STACK[0x1D68] = LODWORD(STACK[0x1D18]);
  LODWORD(STACK[0x1748]) = STACK[0x1968];
  LODWORD(STACK[0x15A8]) = STACK[0x14F8];
  STACK[0x1B20] = LODWORD(STACK[0x20A8]);
  LODWORD(STACK[0x19E8]) = STACK[0x1D78];
  LODWORD(STACK[0x1438]) = STACK[0x1628];
  LODWORD(STACK[0x1750]) = STACK[0x1500];
  STACK[0x1BD8] = LODWORD(STACK[0x20C8]);
  LODWORD(STACK[0x1878]) = STACK[0x14D4];
  LODWORD(STACK[0x2128]) = v0;
  LODWORD(STACK[0x1618]) = STACK[0x14D0];
  LODWORD(STACK[0x1DD0]) = STACK[0x14CC];
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  STACK[0x1B48] = LODWORD(STACK[0x1DA8]);
  STACK[0x1CE8] = LODWORD(STACK[0x1E90]);
  LODWORD(STACK[0x1404]) = STACK[0x14C8];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x2068]) = STACK[0x1790];
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x1B00]) = STACK[0x1EA0];
  LODWORD(STACK[0x1B30]) = STACK[0x1E98];
  STACK[0x1B88] = LODWORD(STACK[0x1D08]);
  STACK[0x1A20] = LODWORD(STACK[0x1D48]);
  LODWORD(STACK[0x1640]) = STACK[0x14C4];
  LODWORD(STACK[0x2098]) = STACK[0x2100];
  STACK[0x1A18] = LODWORD(STACK[0x1DE0]);
  LODWORD(STACK[0x16F0]) = STACK[0x17A8];
  STACK[0x1DC8] = LODWORD(STACK[0x1D00]);
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  STACK[0x1A40] = LODWORD(STACK[0x1DC0]);
  LODWORD(STACK[0x1444]) = STACK[0x15D0];
  LODWORD(STACK[0x15A0]) = STACK[0x16B8];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  STACK[0x1D60] = LODWORD(STACK[0x1D98]);
  LODWORD(STACK[0x1994]) = STACK[0x21A0];
  LODWORD(STACK[0x1698]) = STACK[0x1688];
  LODWORD(STACK[0x1738]) = STACK[0x1554];
  LODWORD(STACK[0x1760]) = STACK[0x1590];
  STACK[0x1AC8] = LODWORD(STACK[0x1E88]);
  LODWORD(STACK[0x1928]) = STACK[0x1504];
  LODWORD(STACK[0x1468]) = STACK[0x1CF8];
  LODWORD(STACK[0x19D4]) = STACK[0x1BB0];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1B10]) = STACK[0x1EF8];
  LODWORD(STACK[0x1B58]) = STACK[0x22A8];
  LODWORD(STACK[0x1708]) = STACK[0x143C];
  LODWORD(STACK[0x1740]) = STACK[0x14C0];
  LODWORD(STACK[0x18F8]) = STACK[0x14BC];
  LODWORD(STACK[0x12E4]) = STACK[0x157C];
  LODWORD(STACK[0x1470]) = STACK[0x14B8];
  STACK[0x1CD0] = LODWORD(STACK[0x1D40]);
  LODWORD(STACK[0x17E0]) = STACK[0x14B4];
  LODWORD(STACK[0x1930]) = STACK[0x1818];
  LODWORD(STACK[0x1CE0]) = STACK[0x1430];
  LODWORD(STACK[0x12EC]) = STACK[0x1558];
  LODWORD(STACK[0x17E8]) = STACK[0x14B0];
  LODWORD(STACK[0x12E8]) = STACK[0x155C];
  LODWORD(STACK[0x1FF8]) = STACK[0x2160];
  LODWORD(STACK[0x1598]) = STACK[0x1840];
  LODWORD(STACK[0x1B90]) = STACK[0x1EE8];
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x1AE4]) = STACK[0x1EC0];
  LODWORD(STACK[0x1ADC]) = STACK[0x1E28];
  v1 = LODWORD(STACK[0x14E4]);
  LODWORD(STACK[0x17C8]) = v1;
  v2 = v1;
  v3 = v1;
  LODWORD(STACK[0x1850]) = STACK[0x14AC];
  LODWORD(STACK[0x16E8]) = STACK[0x17B0];
  LODWORD(STACK[0x1474]) = STACK[0x14A8];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  STACK[0x1B60] = LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x1A08]) = STACK[0x1E30];
  LODWORD(STACK[0x1710]) = STACK[0x17F8];
  LODWORD(STACK[0x146C]) = STACK[0x14A4];
  LODWORD(STACK[0x15F8]) = STACK[0x14A0];
  LODWORD(STACK[0x17A0]) = STACK[0x149C];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  STACK[0x1B98] = LODWORD(STACK[0x1E18]);
  LODWORD(STACK[0x1344]) = STACK[0x1494];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x1730]) = STACK[0x16D0];
  LODWORD(STACK[0x13F0]) = STACK[0x1490];
  LODWORD(STACK[0x1758]) = STACK[0x16A8];
  LODWORD(STACK[0x1B18]) = STACK[0x1E78];
  LODWORD(STACK[0x2078]) = STACK[0x1EF0];
  LODWORD(STACK[0x2248]) = STACK[0x2208];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x1F30]) = STACK[0x1EC8];
  LODWORD(STACK[0x15B0]) = STACK[0x16F8];
  LODWORD(STACK[0x1C10]) = STACK[0x20D8];
  LODWORD(STACK[0x1AE8]) = STACK[0x1F00];
  LODWORD(STACK[0x1820]) = STACK[0x1944];
  LODWORD(STACK[0x15E0]) = STACK[0x158C];
  LODWORD(STACK[0x1348]) = STACK[0x1588];
  LODWORD(STACK[0x1798]) = STACK[0x148C];
  LODWORD(STACK[0x1778]) = STACK[0x16C0];
  STACK[0x1A90] = LODWORD(STACK[0x1D28]);
  LODWORD(STACK[0x1F28]) = STACK[0x1EB8];
  LODWORD(STACK[0x1720]) = STACK[0x16A0];
  v4 = LODWORD(STACK[0x14E0]);
  LODWORD(STACK[0x17D0]) = v4;
  LODWORD(STACK[0x1A00]) = STACK[0x1D70];
  LODWORD(STACK[0x1CAC]) = STACK[0x1488];
  STACK[0x1AB0] = LODWORD(STACK[0x1D50]);
  LODWORD(STACK[0x1ABC]) = STACK[0x1E40];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x1770]) = STACK[0x1780];
  v5 = STACK[0x1498];
  LODWORD(STACK[0x16B0]) = STACK[0x1498];
  LODWORD(STACK[0x1638]) = STACK[0x1484];
  LODWORD(STACK[0x17D8]) = STACK[0x1DA0];
  LODWORD(STACK[0x1AA0]) = STACK[0x1480];
  LODWORD(STACK[0x1AA8]) = STACK[0x19A8];
  STACK[0x1A30] = LODWORD(STACK[0x1D38]);
  LODWORD(STACK[0x1BF8]) = STACK[0x2080];
  STACK[0x1A10] = LODWORD(STACK[0x2180]);
  LODWORD(STACK[0x1A70]) = STACK[0x1D90];
  LODWORD(STACK[0x1F58]) = STACK[0x1E80];
  LODWORD(STACK[0x1AEC]) = STACK[0x1EA8];
  LODWORD(STACK[0x1478]) = STACK[0x147C];
  LODWORD(STACK[0x1AD8]) = STACK[0x1F20];
  LODWORD(STACK[0x132C]) = STACK[0x1544];
  LODWORD(STACK[0x1CE4]) = STACK[0x16D8];
  STACK[0x1838] = LODWORD(STACK[0x1ED0]);
  LODWORD(STACK[0x1A74]) = STACK[0x1DD8];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1AE0]) = STACK[0x1ED8];
  LODWORD(STACK[0x1AD4]) = STACK[0x1E70];
  LODWORD(STACK[0x1CB8]) = STACK[0x1610];
  STACK[0x19E0] = LODWORD(STACK[0x1D20]);
  LODWORD(STACK[0x1B28]) = STACK[0x1EE0];
  LODWORD(STACK[0x1768]) = STACK[0x1810];
  LODWORD(STACK[0x1B3C]) = STACK[0x1F40];
  LODWORD(STACK[0x1BB8]) = STACK[0x2250];
  LODWORD(STACK[0x19A0]) = STACK[0x1998];
  STACK[0x15B8] = LODWORD(STACK[0x1E38]);
  LODWORD(STACK[0x1440]) = STACK[0x1540];
  LODWORD(STACK[0x19F0]) = STACK[0x1D80];
  LODWORD(STACK[0x2048]) = STACK[0x1F10];
  LODWORD(v1) = STACK[0x13EC];
  v6 = STACK[0xD28];
  v7 = STACK[0xD28];
  v8 = STACK[0xD30];
  v9 = STACK[0xD30];
  v10 = STACK[0xD38];
  v11 = STACK[0xD38];
  LODWORD(STACK[0x22D0]) = STACK[0x2048];
  LODWORD(STACK[0x22E0]) = STACK[0x1AEC];
  LODWORD(STACK[0x22B8]) = STACK[0x1F58];
  LODWORD(STACK[0x22B0]) = STACK[0x1A70];
  LODWORD(STACK[0x22A0]) = STACK[0x2240];
  LODWORD(STACK[0x2298]) = STACK[0x1C10];
  LODWORD(STACK[0x2290]) = STACK[0x1F30];
  v12 = STACK[0x2188];
  v13 = STACK[0x2248];
  v14 = STACK[0x2078];
  v15 = STACK[0x2200];
  LODWORD(STACK[0x1FC8]) = STACK[0x2238];
  v16 = STACK[0x2220];
  v17 = STACK[0x1BC8];
  v18 = STACK[0x1B90];
  v19 = STACK[0x2228];
  v20 = STACK[0x1CA8];
  LODWORD(STACK[0x2130]) = STACK[0x1C88];
  v21 = STACK[0x2098];
  v22 = STACK[0x1B30];
  v23 = v1;
  LODWORD(v1) = STACK[0x1B00];
  LODWORD(STACK[0x1CC8]) = STACK[0x2230];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  v24 = STACK[0x2128];
  STACK[0xDA0] = v7;
  STACK[0xD88] = v9;
  STACK[0x1408] = v6;
  STACK[0x1410] = v8;
  STACK[0x1608] = STACK[0x12F0];
  STACK[0x1600] = STACK[0x12F8];
  STACK[0x15F0] = STACK[0x1320];
  STACK[0x14F0] = STACK[0x1330];
  STACK[0x1568] = STACK[0x1300];
  STACK[0x14E8] = STACK[0x1308];
  STACK[0x1560] = STACK[0x1338];
  STACK[0x1580] = STACK[0x1310];
  STACK[0x1548] = STACK[0x1318];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0xD98] = v11;
  STACK[0x2278] = v11;
  STACK[0x1418] = v10;
  STACK[0x22C0] = v10;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x2208]) = v13;
  LODWORD(STACK[0x22E8]) = v13;
  LODWORD(STACK[0x1DB0]) = STACK[0x1BA8];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = v5;
  LODWORD(STACK[0x1A2C]) = STACK[0x19B0];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x21B0]) = v24;
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = STACK[0x1CE8];
  LODWORD(STACK[0x14C8]) = STACK[0x1404];
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = v2;
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = v1;
  LODWORD(STACK[0x1E98]) = v22;
  LODWORD(STACK[0x1D08]) = STACK[0x1B88];
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = v3;
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x2100]) = v21;
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x21E0]) = v20;
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0xDA8]) = v5;
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x21E8]) = v19;
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = 846174540;
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = STACK[0x12E4];
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = STACK[0x1CE0];
  LODWORD(STACK[0x1558]) = STACK[0x12EC];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = STACK[0x12E8];
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = v18;
  LODWORD(STACK[0x2088]) = v17;
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x2218]) = v16;
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x1494]) = STACK[0x1344];
  LODWORD(STACK[0x2210]) = v15;
  LODWORD(STACK[0x1668]) = STACK[0x19B8];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(STACK[0x1490]) = STACK[0x13F0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = v14;
  LODWORD(STACK[0x1CC0]) = v12;
  LODWORD(STACK[0x1EC8]) = STACK[0x2290];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x2298];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x1588]) = STACK[0x1348];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x1660]) = STACK[0x19C0];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x2260]) = STACK[0x22A0];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = STACK[0x1AA0];
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x22B0];
  LODWORD(STACK[0x1E80]) = STACK[0x22B8];
  LODWORD(STACK[0x1EA8]) = STACK[0x22E0];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(STACK[0x1544]) = STACK[0x132C];
  LODWORD(STACK[0x16D8]) = STACK[0x1CE4];
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  v25 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1810]) = v25;
  STACK[0x1008] = v4;
  LODWORD(STACK[0x22E0]) = v4;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x1F70]) = v4;
  LODWORD(STACK[0x22B8]) = v4;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x22D0];
  LODWORD(STACK[0x13EC]) = v23;
  LODWORD(STACK[0x1680]) = 1006787447;
  STACK[0x1678] = STACK[0xDC0];
  STACK[0x22A0] = STACK[0x1C28];
  JUMPOUT(0x26AA38EFCLL);
}

uint64_t sub_26AA37BC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, int a3@<W8>)
{
  LODWORD(STACK[0x22A0]) = 0;
  LODWORD(STACK[0x16C8]) = a3 ^ 0x9CE;
  v6 = *(v5 + 8 * ((4 * ((LODWORD(STACK[0x22C0]) ^ a3) & 1)) & 0xF7 | (8 * ((LODWORD(STACK[0x22C0]) ^ a3) & 1)) | a3));
  LODWORD(STACK[0x22E0]) = 1;
  STACK[0x20F0] = STACK[0x1A50];
  STACK[0x20E8] = STACK[0x1A48];
  STACK[0x2290] = v3;
  STACK[0x2298] = STACK[0x1AC0];
  LODWORD(STACK[0x2198]) = STACK[0x19D8];
  LODWORD(STACK[0x20C0]) = STACK[0x1960];
  LODWORD(STACK[0x22D0]) = STACK[0x17A8];
  LODWORD(STACK[0x1678]) = 1;
  LODWORD(STACK[0x22C0]) = 1;
  LODWORD(STACK[0x1680]) = 1;
  STACK[0x17F0] = v4;
  LODWORD(STACK[0x2138]) = STACK[0x1630];
  LODWORD(STACK[0x20E0]) = STACK[0x1A58];
  LODWORD(STACK[0x2110]) = STACK[0x1938];
  LODWORD(STACK[0x2288]) = STACK[0x1F88];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x12E0]) = STACK[0x2008];
  return v6(LODWORD(STACK[0x2070]), a1, 1, 1, 0, 1, a2, 1);
}

uint64_t sub_26AA37CBC@<X0>(int a1@<W2>, int a2@<W7>, int a3@<W8>)
{
  LODWORD(STACK[0x1680]) = 0;
  LODWORD(STACK[0x22A0]) = 0;
  LODWORD(STACK[0x22E0]) = a3;
  STACK[0x20F0] = STACK[0x1A50];
  STACK[0x20E8] = STACK[0x1A48];
  STACK[0x2290] = STACK[0x1C30];
  STACK[0x2298] = STACK[0x1AC0];
  LODWORD(STACK[0x2198]) = STACK[0x19D8];
  LODWORD(STACK[0xA5C]) = v7;
  LODWORD(STACK[0x20C0]) = STACK[0x1960];
  LODWORD(STACK[0x22D0]) = STACK[0x17B0];
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x2138]) = STACK[0x1630];
  v9 = STACK[0x2160];
  LODWORD(STACK[0x20E0]) = STACK[0x1A58];
  LODWORD(STACK[0x2110]) = STACK[0x1938];
  LODWORD(STACK[0x2288]) = STACK[0x1F88];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x12E0]) = STACK[0x2008];
  v10 = STACK[0x2070];
  LODWORD(STACK[0x1678]) = 1;
  LODWORD(STACK[0x22C0]) = 1;
  LODWORD(STACK[0x22B8]) = a1;
  LODWORD(STACK[0x22B0]) = v8;
  LODWORD(STACK[0x22E8]) = a2;
  LODWORD(STACK[0x1908]) = STACK[0x1980];
  LODWORD(STACK[0x1BB8]) = STACK[0x2250];
  LODWORD(STACK[0x1B3C]) = STACK[0x1F40];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1900]) = v10;
  LODWORD(STACK[0x1B70]) = STACK[0x1F70];
  LODWORD(STACK[0x1BF8]) = STACK[0x2080];
  LODWORD(STACK[0x1F88]) = STACK[0x2288];
  LODWORD(STACK[0x18B0]) = STACK[0x1FC0];
  LODWORD(STACK[0x1938]) = STACK[0x2110];
  LODWORD(STACK[0x18A0]) = STACK[0x1D88];
  LODWORD(STACK[0x1C10]) = STACK[0x20D8];
  LODWORD(STACK[0x18A8]) = STACK[0x18D8];
  LODWORD(STACK[0x1A58]) = STACK[0x20E0];
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x2160]) = v9;
  LODWORD(STACK[0x1910]) = STACK[0x1954];
  LODWORD(STACK[0x1920]) = STACK[0x21A0];
  LODWORD(STACK[0x18B8]) = STACK[0x1CA0];
  LODWORD(STACK[0x1428]) = STACK[0x2100];
  LODWORD(STACK[0x1B68]) = STACK[0x1F78];
  LODWORD(STACK[0x1A38]) = STACK[0x2138];
  LODWORD(STACK[0x1918]) = STACK[0x1978];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  STACK[0x1BD8] = LODWORD(STACK[0x20C8]);
  v3 = STACK[0x22D0];
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  LODWORD(STACK[0x19F8]) = STACK[0x2120];
  LODWORD(STACK[0x1DB8]) = STACK[0x1988];
  LODWORD(STACK[0x1B54]) = STACK[0x20A0];
  LODWORD(STACK[0x17C0]) = STACK[0x20C0];
  LODWORD(STACK[0x1BC0]) = STACK[0x1F90];
  LODWORD(STACK[0x19D8]) = STACK[0x2198];
  STACK[0x1AC0] = STACK[0x2298];
  STACK[0x1C30] = STACK[0x2290];
  STACK[0x1A48] = STACK[0x20E8];
  STACK[0x1A50] = STACK[0x20F0];
  STACK[0x18C0] = STACK[0x1888];
  STACK[0x18C8] = STACK[0x1FB8];
  STACK[0x1E10] = STACK[0x1890];
  STACK[0x18D0] = STACK[0x1898];
  STACK[0x1DE8] = STACK[0x18E0];
  STACK[0x1DF0] = STACK[0x1948];
  STACK[0x1DF8] = STACK[0x1870];
  STACK[0x1E00] = STACK[0x1868];
  STACK[0x1E08] = STACK[0x1880];
  v4 = STACK[0x22F8];
  v5 = STACK[0x16C8];
  LODWORD(STACK[0x22D0]) = 0;
  return (*(v4 + 8 * ((229 * (v3 == (((v5 ^ 0xAF3) - 1283) ^ 0x5E9))) ^ (v5 + 3162))))();
}

uint64_t sub_26AA37D94()
{
  v4 = *(v3 + 8 * ((((((v0 + 573) | 0x14) + 3825) ^ (((v0 + 573) | 0x14) - 887)) * (v1 & 1)) ^ ((v0 + 573) | 0x14)));
  STACK[0x12F0] = STACK[0x1608];
  STACK[0x12F8] = STACK[0x1600];
  STACK[0x1320] = STACK[0x15F0];
  STACK[0x1330] = STACK[0x14F0];
  STACK[0x1300] = STACK[0x1568];
  STACK[0x1308] = STACK[0x14E8];
  STACK[0x1338] = STACK[0x1560];
  STACK[0x1310] = STACK[0x1580];
  STACK[0x1318] = STACK[0x1548];
  STACK[0x1530] = STACK[0x1860];
  STACK[0x1538] = STACK[0x1808];
  STACK[0x1518] = STACK[0x1828];
  STACK[0x1508] = STACK[0x1788];
  STACK[0x1510] = STACK[0x16E0];
  STACK[0x1520] = STACK[0x1848];
  STACK[0x1528] = STACK[0x1700];
  STACK[0x15C8] = STACK[0x1728];
  STACK[0x1448] = STACK[0x15E8];
  STACK[0x1450] = STACK[0x1570];
  STACK[0x1460] = STACK[0x1800];
  STACK[0x1458] = STACK[0x15D8];
  LODWORD(STACK[0x1CE0]) = STACK[0x1430];
  STACK[0x2158] = STACK[0x17B8];
  LODWORD(STACK[0x2020]) = STACK[0x20F8];
  LODWORD(STACK[0x1AF0]) = STACK[0x1EB0];
  LODWORD(STACK[0x1BC0]) = STACK[0x1F90];
  STACK[0x1BD0] = LODWORD(STACK[0x1D10]);
  LODWORD(STACK[0x1B54]) = STACK[0x20A0];
  LODWORD(STACK[0x17C8]) = STACK[0x14E4];
  LODWORD(STACK[0x1718]) = STACK[0x14FC];
  LODWORD(STACK[0x15C0]) = STACK[0x1690];
  LODWORD(STACK[0x19F8]) = STACK[0x2120];
  LODWORD(STACK[0x17D0]) = STACK[0x14E0];
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  LODWORD(STACK[0x1AF8]) = STACK[0x1F08];
  LODWORD(STACK[0x1A98]) = STACK[0x14DC];
  STACK[0x1A68] = LODWORD(STACK[0x1D30]);
  LODWORD(STACK[0x1970]) = STACK[0x14D8];
  STACK[0x1D68] = LODWORD(STACK[0x1D18]);
  LODWORD(STACK[0x1748]) = STACK[0x1968];
  LODWORD(STACK[0x15A8]) = STACK[0x14F8];
  STACK[0x1B20] = LODWORD(STACK[0x20A8]);
  LODWORD(STACK[0x19E8]) = STACK[0x1D78];
  LODWORD(STACK[0x1438]) = STACK[0x1628];
  LODWORD(STACK[0x1750]) = STACK[0x1500];
  STACK[0x1BD8] = LODWORD(STACK[0x20C8]);
  LODWORD(STACK[0x1878]) = STACK[0x14D4];
  LODWORD(STACK[0x2128]) = v2;
  LODWORD(STACK[0x1618]) = STACK[0x14D0];
  LODWORD(STACK[0x1DD0]) = STACK[0x14CC];
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  STACK[0x1B48] = LODWORD(STACK[0x1DA8]);
  STACK[0x1CE8] = LODWORD(STACK[0x1E90]);
  LODWORD(STACK[0x1404]) = STACK[0x14C8];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x2068]) = STACK[0x1790];
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x1B00]) = STACK[0x1EA0];
  LODWORD(STACK[0x1B30]) = STACK[0x1E98];
  STACK[0x1B88] = LODWORD(STACK[0x1D08]);
  STACK[0x1A20] = LODWORD(STACK[0x1D48]);
  LODWORD(STACK[0x1640]) = STACK[0x14C4];
  LODWORD(STACK[0x2098]) = STACK[0x2100];
  STACK[0x1A18] = LODWORD(STACK[0x1DE0]);
  LODWORD(STACK[0x16F0]) = STACK[0x17A8];
  STACK[0x1DC8] = LODWORD(STACK[0x1D00]);
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  v5 = STACK[0x1498];
  STACK[0x1A40] = LODWORD(STACK[0x1DC0]);
  LODWORD(STACK[0x1444]) = STACK[0x15D0];
  LODWORD(STACK[0x15A0]) = STACK[0x16B8];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  STACK[0x1D60] = LODWORD(STACK[0x1D98]);
  LODWORD(STACK[0x1994]) = STACK[0x21A0];
  LODWORD(STACK[0x1698]) = STACK[0x1688];
  LODWORD(STACK[0x1738]) = STACK[0x1554];
  LODWORD(STACK[0x1760]) = STACK[0x1590];
  STACK[0x1AC8] = LODWORD(STACK[0x1E88]);
  LODWORD(STACK[0x1928]) = STACK[0x1504];
  LODWORD(STACK[0x1468]) = STACK[0x1CF8];
  LODWORD(STACK[0x19D4]) = STACK[0x1BB0];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1B10]) = STACK[0x1EF8];
  LODWORD(STACK[0x1B58]) = STACK[0x22A8];
  LODWORD(STACK[0x1708]) = STACK[0x143C];
  LODWORD(STACK[0x1740]) = STACK[0x14C0];
  LODWORD(STACK[0x18F8]) = STACK[0x14BC];
  LODWORD(STACK[0x12E4]) = STACK[0x157C];
  LODWORD(STACK[0x1470]) = STACK[0x14B8];
  STACK[0x1CD0] = LODWORD(STACK[0x1D40]);
  LODWORD(STACK[0x17E0]) = STACK[0x14B4];
  LODWORD(STACK[0x1930]) = STACK[0x1818];
  LODWORD(STACK[0x12EC]) = STACK[0x1558];
  LODWORD(STACK[0x17E8]) = STACK[0x14B0];
  LODWORD(STACK[0x12E8]) = STACK[0x155C];
  LODWORD(STACK[0x1FF8]) = STACK[0x2160];
  LODWORD(STACK[0x1598]) = STACK[0x1840];
  LODWORD(STACK[0x1B90]) = STACK[0x1EE8];
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x1AE4]) = STACK[0x1EC0];
  LODWORD(STACK[0x1ADC]) = STACK[0x1E28];
  LODWORD(STACK[0x1850]) = STACK[0x14AC];
  LODWORD(STACK[0x16E8]) = STACK[0x17B0];
  LODWORD(STACK[0x1474]) = STACK[0x14A8];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  STACK[0x1B60] = LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x1A08]) = STACK[0x1E30];
  LODWORD(STACK[0x1710]) = STACK[0x17F8];
  LODWORD(STACK[0x146C]) = STACK[0x14A4];
  LODWORD(STACK[0x15F8]) = STACK[0x14A0];
  LODWORD(STACK[0x17A0]) = STACK[0x149C];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x16B0]) = v5;
  STACK[0x1B98] = LODWORD(STACK[0x1E18]);
  LODWORD(STACK[0x1344]) = STACK[0x1494];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x1730]) = STACK[0x16D0];
  LODWORD(STACK[0x13F0]) = STACK[0x1490];
  LODWORD(STACK[0x1758]) = STACK[0x16A8];
  LODWORD(STACK[0x1B18]) = STACK[0x1E78];
  LODWORD(STACK[0x2078]) = STACK[0x1EF0];
  LODWORD(STACK[0x2248]) = STACK[0x2208];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x1F30]) = STACK[0x1EC8];
  LODWORD(STACK[0x15B0]) = STACK[0x16F8];
  LODWORD(STACK[0x1C10]) = STACK[0x20D8];
  LODWORD(STACK[0x1AE8]) = STACK[0x1F00];
  LODWORD(STACK[0x1820]) = STACK[0x1944];
  LODWORD(STACK[0x15E0]) = STACK[0x158C];
  LODWORD(STACK[0x1348]) = STACK[0x1588];
  LODWORD(STACK[0x1798]) = STACK[0x148C];
  LODWORD(STACK[0x1778]) = STACK[0x16C0];
  STACK[0x1A90] = LODWORD(STACK[0x1D28]);
  LODWORD(STACK[0x1F28]) = STACK[0x1EB8];
  LODWORD(STACK[0x1720]) = STACK[0x16A0];
  LODWORD(STACK[0x1A00]) = STACK[0x1D70];
  LODWORD(STACK[0x1CAC]) = STACK[0x1488];
  STACK[0x1AB0] = LODWORD(STACK[0x1D50]);
  LODWORD(STACK[0x1ABC]) = STACK[0x1E40];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x1770]) = STACK[0x1780];
  LODWORD(STACK[0x1638]) = STACK[0x1484];
  LODWORD(STACK[0x17D8]) = STACK[0x1DA0];
  LODWORD(STACK[0x1AA0]) = STACK[0x1480];
  LODWORD(STACK[0x1AA8]) = STACK[0x19A8];
  STACK[0x1A30] = LODWORD(STACK[0x1D38]);
  LODWORD(STACK[0x1BF8]) = STACK[0x2080];
  STACK[0x1A10] = LODWORD(STACK[0x2180]);
  LODWORD(STACK[0x1A70]) = STACK[0x1D90];
  LODWORD(STACK[0x1F58]) = STACK[0x1E80];
  LODWORD(STACK[0x1AEC]) = STACK[0x1EA8];
  LODWORD(STACK[0x1478]) = STACK[0x147C];
  LODWORD(STACK[0x1AD8]) = STACK[0x1F20];
  LODWORD(STACK[0x132C]) = STACK[0x1544];
  LODWORD(STACK[0x1CE4]) = STACK[0x16D8];
  STACK[0x1838] = LODWORD(STACK[0x1ED0]);
  LODWORD(STACK[0x1A74]) = STACK[0x1DD8];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1AE0]) = STACK[0x1ED8];
  LODWORD(STACK[0x1AD4]) = STACK[0x1E70];
  LODWORD(STACK[0x1CB8]) = STACK[0x1610];
  STACK[0x19E0] = LODWORD(STACK[0x1D20]);
  LODWORD(STACK[0x1B28]) = STACK[0x1EE0];
  LODWORD(STACK[0x1768]) = STACK[0x1810];
  LODWORD(STACK[0x1B3C]) = STACK[0x1F40];
  LODWORD(STACK[0x1BB8]) = STACK[0x2250];
  LODWORD(STACK[0x19A0]) = STACK[0x1998];
  STACK[0x15B8] = LODWORD(STACK[0x1E38]);
  LODWORD(STACK[0x1440]) = STACK[0x1540];
  LODWORD(STACK[0x19F0]) = STACK[0x1D80];
  LODWORD(STACK[0x2048]) = STACK[0x1F10];
  return v4();
}

void sub_26AA38350()
{
  STACK[0x12F0] = STACK[0x1608];
  STACK[0x12F8] = STACK[0x1600];
  STACK[0x1320] = STACK[0x15F0];
  STACK[0x1330] = STACK[0x14F0];
  STACK[0x1300] = STACK[0x1568];
  STACK[0x1308] = STACK[0x14E8];
  STACK[0x1338] = STACK[0x1560];
  STACK[0x1310] = STACK[0x1580];
  STACK[0x1318] = STACK[0x1548];
  STACK[0x1530] = STACK[0x1860];
  STACK[0x1538] = STACK[0x1808];
  STACK[0x1518] = STACK[0x1828];
  STACK[0x1508] = STACK[0x1788];
  STACK[0x1510] = STACK[0x16E0];
  STACK[0x1520] = STACK[0x1848];
  STACK[0x1528] = STACK[0x1700];
  STACK[0x15C8] = STACK[0x1728];
  STACK[0x1448] = STACK[0x15E8];
  STACK[0x1450] = STACK[0x1570];
  STACK[0x1460] = STACK[0x1800];
  STACK[0x1458] = STACK[0x15D8];
  STACK[0x2158] = STACK[0x17B8];
  LODWORD(STACK[0x2020]) = STACK[0x20F8];
  LODWORD(STACK[0x1AF0]) = STACK[0x1EB0];
  LODWORD(STACK[0x1BC0]) = STACK[0x1F90];
  STACK[0x1BD0] = LODWORD(STACK[0x1D10]);
  LODWORD(STACK[0x1B54]) = STACK[0x20A0];
  LODWORD(STACK[0x17C8]) = STACK[0x14E4];
  LODWORD(STACK[0x1718]) = STACK[0x14FC];
  LODWORD(STACK[0x15C0]) = STACK[0x1690];
  LODWORD(STACK[0x19F8]) = STACK[0x2120];
  LODWORD(STACK[0x17D0]) = STACK[0x14E0];
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  LODWORD(STACK[0x1AF8]) = STACK[0x1F08];
  LODWORD(STACK[0x1A98]) = STACK[0x14DC];
  STACK[0x1A68] = LODWORD(STACK[0x1D30]);
  LODWORD(STACK[0x1970]) = STACK[0x14D8];
  STACK[0x1D68] = LODWORD(STACK[0x1D18]);
  LODWORD(STACK[0x1748]) = STACK[0x1968];
  LODWORD(STACK[0x15A8]) = STACK[0x14F8];
  STACK[0x1B20] = LODWORD(STACK[0x20A8]);
  LODWORD(STACK[0x19E8]) = STACK[0x1D78];
  LODWORD(STACK[0x1438]) = STACK[0x1628];
  LODWORD(STACK[0x1750]) = STACK[0x1500];
  STACK[0x1BD8] = LODWORD(STACK[0x20C8]);
  LODWORD(STACK[0x1878]) = STACK[0x14D4];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x1618]) = STACK[0x14D0];
  LODWORD(STACK[0x1DD0]) = STACK[0x14CC];
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  STACK[0x1B48] = LODWORD(STACK[0x1DA8]);
  STACK[0x1CE8] = LODWORD(STACK[0x1E90]);
  LODWORD(STACK[0x1404]) = STACK[0x14C8];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x2068]) = STACK[0x1790];
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x1B00]) = STACK[0x1EA0];
  LODWORD(STACK[0x1B30]) = STACK[0x1E98];
  STACK[0x1B88] = LODWORD(STACK[0x1D08]);
  STACK[0x1A20] = LODWORD(STACK[0x1D48]);
  LODWORD(STACK[0x1640]) = STACK[0x14C4];
  LODWORD(STACK[0x2098]) = STACK[0x2100];
  STACK[0x1A18] = LODWORD(STACK[0x1DE0]);
  LODWORD(STACK[0x16F0]) = STACK[0x17A8];
  STACK[0x1DC8] = LODWORD(STACK[0x1D00]);
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  STACK[0x1A40] = LODWORD(STACK[0x1DC0]);
  LODWORD(STACK[0x1444]) = STACK[0x15D0];
  LODWORD(STACK[0x15A0]) = STACK[0x16B8];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  STACK[0x1D60] = LODWORD(STACK[0x1D98]);
  LODWORD(STACK[0x1994]) = STACK[0x21A0];
  LODWORD(STACK[0x1698]) = STACK[0x1688];
  LODWORD(STACK[0x1738]) = STACK[0x1554];
  LODWORD(STACK[0x1760]) = STACK[0x1590];
  STACK[0x1AC8] = LODWORD(STACK[0x1E88]);
  LODWORD(STACK[0x1928]) = STACK[0x1504];
  LODWORD(STACK[0x1468]) = STACK[0x1CF8];
  LODWORD(STACK[0x19D4]) = STACK[0x1BB0];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1B10]) = STACK[0x1EF8];
  LODWORD(STACK[0x1B58]) = STACK[0x22A8];
  LODWORD(STACK[0x1708]) = STACK[0x143C];
  LODWORD(STACK[0x1740]) = STACK[0x14C0];
  LODWORD(STACK[0x18F8]) = STACK[0x14BC];
  LODWORD(STACK[0x12E4]) = STACK[0x157C];
  LODWORD(STACK[0x1470]) = STACK[0x14B8];
  STACK[0x1CD0] = LODWORD(STACK[0x1D40]);
  LODWORD(STACK[0x17E0]) = STACK[0x14B4];
  LODWORD(STACK[0x1930]) = STACK[0x1818];
  LODWORD(STACK[0x1CE0]) = v0;
  LODWORD(STACK[0x12EC]) = STACK[0x1558];
  LODWORD(STACK[0x17E8]) = STACK[0x14B0];
  LODWORD(STACK[0x12E8]) = STACK[0x155C];
  LODWORD(STACK[0x1FF8]) = STACK[0x2160];
  LODWORD(STACK[0x1598]) = STACK[0x1840];
  LODWORD(STACK[0x1B90]) = STACK[0x1EE8];
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x1AE4]) = STACK[0x1EC0];
  LODWORD(STACK[0x1ADC]) = STACK[0x1E28];
  LODWORD(STACK[0x1850]) = STACK[0x14AC];
  LODWORD(STACK[0x16E8]) = STACK[0x17B0];
  LODWORD(STACK[0x1474]) = STACK[0x14A8];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  STACK[0x1B60] = LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x1A08]) = STACK[0x1E30];
  LODWORD(STACK[0x1710]) = STACK[0x17F8];
  LODWORD(STACK[0x146C]) = STACK[0x14A4];
  LODWORD(STACK[0x15F8]) = STACK[0x14A0];
  LODWORD(STACK[0x17A0]) = STACK[0x149C];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x16B0]) = STACK[0x1498];
  STACK[0x1B98] = LODWORD(STACK[0x1E18]);
  LODWORD(STACK[0x1344]) = STACK[0x1494];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x1730]) = STACK[0x16D0];
  LODWORD(STACK[0x13F0]) = STACK[0x1490];
  LODWORD(STACK[0x1758]) = STACK[0x16A8];
  LODWORD(STACK[0x1B18]) = STACK[0x1E78];
  LODWORD(STACK[0x2078]) = STACK[0x1EF0];
  LODWORD(STACK[0x2248]) = STACK[0x2208];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x1F30]) = STACK[0x1EC8];
  LODWORD(STACK[0x15B0]) = STACK[0x16F8];
  LODWORD(STACK[0x1C10]) = STACK[0x20D8];
  LODWORD(STACK[0x1AE8]) = STACK[0x1F00];
  LODWORD(STACK[0x1820]) = STACK[0x1944];
  LODWORD(STACK[0x15E0]) = STACK[0x158C];
  LODWORD(STACK[0x1348]) = STACK[0x1588];
  LODWORD(STACK[0x1798]) = STACK[0x148C];
  LODWORD(STACK[0x1778]) = STACK[0x16C0];
  STACK[0x1A90] = LODWORD(STACK[0x1D28]);
  LODWORD(STACK[0x1F28]) = STACK[0x1EB8];
  LODWORD(STACK[0x1720]) = STACK[0x16A0];
  LODWORD(STACK[0x1A00]) = STACK[0x1D70];
  LODWORD(STACK[0x1CAC]) = STACK[0x1488];
  STACK[0x1AB0] = LODWORD(STACK[0x1D50]);
  LODWORD(STACK[0x1ABC]) = STACK[0x1E40];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x1770]) = STACK[0x1780];
  LODWORD(STACK[0x1638]) = STACK[0x1484];
  LODWORD(STACK[0x17D8]) = STACK[0x1DA0];
  LODWORD(STACK[0x1AA0]) = STACK[0x1480];
  LODWORD(STACK[0x1AA8]) = STACK[0x19A8];
  STACK[0x1A30] = LODWORD(STACK[0x1D38]);
  LODWORD(STACK[0x1BF8]) = STACK[0x2080];
  STACK[0x1A10] = LODWORD(STACK[0x2180]);
  LODWORD(STACK[0x1A70]) = STACK[0x1D90];
  LODWORD(STACK[0x1F58]) = STACK[0x1E80];
  LODWORD(STACK[0x1AEC]) = STACK[0x1EA8];
  LODWORD(STACK[0x1478]) = STACK[0x147C];
  LODWORD(STACK[0x1AD8]) = STACK[0x1F20];
  LODWORD(STACK[0x132C]) = STACK[0x1544];
  LODWORD(STACK[0x1CE4]) = STACK[0x16D8];
  STACK[0x1838] = LODWORD(STACK[0x1ED0]);
  LODWORD(STACK[0x1A74]) = STACK[0x1DD8];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1AE0]) = STACK[0x1ED8];
  LODWORD(STACK[0x1AD4]) = STACK[0x1E70];
  LODWORD(STACK[0x1CB8]) = STACK[0x1610];
  STACK[0x19E0] = LODWORD(STACK[0x1D20]);
  LODWORD(STACK[0x1B28]) = STACK[0x1EE0];
  LODWORD(STACK[0x1768]) = STACK[0x1810];
  LODWORD(STACK[0x1B3C]) = STACK[0x1F40];
  LODWORD(STACK[0x1BB8]) = STACK[0x2250];
  LODWORD(STACK[0x19A0]) = STACK[0x1998];
  STACK[0x15B8] = LODWORD(STACK[0x1E38]);
  LODWORD(STACK[0x1440]) = STACK[0x1540];
  LODWORD(STACK[0x19F0]) = STACK[0x1D80];
  LODWORD(STACK[0x2048]) = STACK[0x1F10];
  JUMPOUT(0x26AA388E8);
}

uint64_t sub_26AA38F60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W8>, uint64_t a5@<X0>)
{
  *v7 = 0;
  if (v6 <= a4 + 1)
  {
    a2 = a1;
  }

  return (*(v10 + 8 * ((28 * (*(a3 + a2) == (((v5 - 13) | v9) ^ v8))) ^ v5)))(a5, a1);
}

uint64_t sub_26AA39014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = STACK[0x22E8];
  v10 = *(v7 + 8 * ((((59 * ((a5 - 1521857027) & 0x5AB5ACDF ^ 0xC)) ^ 0xEF7) * (LODWORD(STACK[0x22E8]) > LODWORD(STACK[0x22B8]))) ^ a5));
  LODWORD(STACK[0x20C0]) = 1637231437;
  STACK[0x1C40] = STACK[0x21C8];
  STACK[0x1220] = STACK[0x1678];
  STACK[0x20F0] = v5;
  STACK[0x20E8] = v8;
  STACK[0x2290] = v5;
  STACK[0x2298] = v8;
  LODWORD(STACK[0x2198]) = v9;
  LODWORD(STACK[0x1BA8]) = STACK[0x1DB0];
  LODWORD(STACK[0x1F90]) = STACK[0x1BC0];
  LODWORD(STACK[0x19B0]) = STACK[0x1A2C];
  LODWORD(STACK[0x1F18]) = STACK[0x1680];
  LODWORD(STACK[0x1958]) = STACK[0x1670];
  LODWORD(STACK[0x22D0]) = STACK[0x1CA4];
  LODWORD(STACK[0x21A0]) = STACK[0x1994];
  LODWORD(STACK[0x1BB0]) = STACK[0x19D4];
  LODWORD(STACK[0x1E28]) = STACK[0x1ADC];
  LODWORD(STACK[0x1F38]) = STACK[0x1B60];
  LODWORD(STACK[0x1E30]) = STACK[0x1A08];
  LODWORD(STACK[0x20E0]) = v9;
  LODWORD(STACK[0x19B8]) = STACK[0x1668];
  LODWORD(STACK[0x1C68]) = STACK[0x21C0];
  LODWORD(STACK[0x2018]) = STACK[0x21B8];
  LODWORD(STACK[0x2110]) = 922064384;
  LODWORD(STACK[0x19C0]) = STACK[0x1660];
  LODWORD(STACK[0x2138]) = v6;
  LODWORD(STACK[0x2288]) = v6;
  LODWORD(STACK[0x19A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x1DD8]) = STACK[0x1658];
  LODWORD(STACK[0x20B0]) = STACK[0x1BF0];
  LODWORD(STACK[0x2250]) = STACK[0x1650];
  LODWORD(STACK[0x1998]) = STACK[0x19A0];
  LODWORD(STACK[0x1620]) = STACK[0x1648];
  return v10(a1, 3, a3, a4);
}

uint64_t sub_26AA392FC()
{
  v2 = *(v1 + 8 * (((((LODWORD(STACK[0x22E0]) == ((v0 + 848) ^ 0x525)) ^ (3 * ((v0 + 80) ^ 0x9E))) & 1) * (57 * ((v0 + 848) ^ 0x519) - 3390)) ^ (v0 + 848)));
  STACK[0x22C0] += 4;
  return v2();
}

uint64_t sub_26AA39434(uint64_t a1, _DWORD *a2, int a3, int a4, int a5, uint64_t a6, int a7, _DWORD *a8)
{
  v15 = STACK[0x22E0];
  *v8 = *a2 + a7 + v9 + *(v13 + 4) * v11 + a5 + *a8 * a3;
  return (*(v14 + 8 * (((((v12 + 1 == v15) ^ (v10 - 48)) & 1) * a4) ^ v10)))(a1, a2 + 1);
}

uint64_t sub_26AA394FC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a7 + a5 + ((*a2 + v8 + a4 - (((v9 + 286) + 2131926671) & (2 * (*a2 + v8)))) ^ a4);
  v13 = v12 + a4 - ((2 * v12) & 0x1996FF7C7F12A064);
  *v7 = v13 ^ 0x3F895032;
  return (*(v11 + 8 * ((124 * ((v13 ^ v10) >> 32 == 0)) ^ v9)))(a1);
}

uint64_t sub_26AA3973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = *(a2 + 4) + (v11 ^ HIDWORD(a5)) + a4 - (((*(a2 + 4) + (v11 ^ HIDWORD(a5))) << (((v10 - 34) | a8) + 44)) & v13);
  *(v8 + 4) = v15 ^ v9;
  return (*(v14 + 8 * ((124 * ((v15 ^ v12) >> 32 == 0)) ^ v10)))(a1, a2 + 4);
}

uint64_t sub_26AA397E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = HIDWORD(a5);
  v12 = ((5 * (v6 ^ v8)) ^ 0xEE6) + v7;
  if (v12 < LODWORD(STACK[0x22E8]))
  {
    v13 = 16;
  }

  else
  {
    v13 = 17;
  }

  return (*(v10 + 8 * ((((v13 ^ *(a6 + ((v12 < LODWORD(STACK[0x22E8])) ^ v9))) != 196) * ((v6 ^ v8) - 752)) ^ (v6 + 3059))))(a1, a2, a3, a4, v11);
}

uint64_t sub_26AA398A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = *(v8 + 8 * (((v6 + 1186 + (v6 ^ 0x8EA) - 3161) * (a6 & 1)) ^ v6));
  STACK[0x1E08] = STACK[0x1880];
  STACK[0x1E00] = STACK[0x1868];
  STACK[0x1DF8] = STACK[0x1870];
  STACK[0x1DF0] = STACK[0x1948];
  STACK[0x1DE8] = STACK[0x18E0];
  STACK[0x18D0] = STACK[0x1898];
  STACK[0x1E10] = STACK[0x1890];
  STACK[0x18C8] = STACK[0x1FB8];
  STACK[0x18C0] = STACK[0x1888];
  STACK[0x20F0] = STACK[0x1A50];
  STACK[0x20E8] = STACK[0x1A48];
  LODWORD(STACK[0x1BC0]) = STACK[0x1F90];
  LODWORD(STACK[0x20C0]) = STACK[0x1960];
  LODWORD(STACK[0x1DB8]) = STACK[0x1988];
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  LODWORD(STACK[0x1918]) = STACK[0x1978];
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x2138]) = STACK[0x1630];
  LODWORD(STACK[0x18B8]) = STACK[0x1CA0];
  LODWORD(STACK[0x1920]) = STACK[0x21A0];
  LODWORD(STACK[0x1910]) = STACK[0x1954];
  LODWORD(STACK[0x2160]) = v7;
  LODWORD(STACK[0x20E0]) = STACK[0x1A58];
  LODWORD(STACK[0x18A8]) = STACK[0x18D8];
  LODWORD(STACK[0x18A0]) = STACK[0x1D88];
  LODWORD(STACK[0x18B0]) = STACK[0x1FC0];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x1900]) = STACK[0x2070];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1908]) = STACK[0x1980];
  return v9(a1, a2, a3, a4, a5);
}

uint64_t sub_26AA399C8(uint64_t a1)
{
  LODWORD(STACK[0x1E18]) += v1 - 250 + ((v1 - 286118428) & 0x110DDF97 ^ 0xFFFFF177);
  v3 = STACK[0x1CA4];
  v4 = *(STACK[0x22F8] + 8 * (v1 ^ (43 * (v2 > LODWORD(STACK[0x1CA4])))));
  LODWORD(STACK[0x2110]) = 922064387;
  STACK[0x20F0] = STACK[0x1A50];
  STACK[0x20E8] = STACK[0x1A48];
  STACK[0x2290] = STACK[0x1CF0];
  STACK[0x2298] = STACK[0x1F68];
  LODWORD(STACK[0x2198]) = v3;
  LODWORD(STACK[0x20C0]) = STACK[0x1960];
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x2138]) = STACK[0x1630];
  LODWORD(STACK[0x22D0]) = v3;
  LODWORD(STACK[0x1FF8]) = v2;
  LODWORD(STACK[0x20E0]) = STACK[0x1A58];
  LODWORD(STACK[0x2288]) = v2;
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  STACK[0x1E08] = STACK[0x1880];
  STACK[0x1E00] = STACK[0x1868];
  STACK[0x1DF8] = STACK[0x1870];
  STACK[0x1DF0] = STACK[0x1948];
  STACK[0x1DE8] = STACK[0x18E0];
  STACK[0x18D0] = STACK[0x1898];
  STACK[0x1E10] = STACK[0x1890];
  STACK[0x18C8] = STACK[0x1FB8];
  LODWORD(STACK[0x2160]) = v2;
  STACK[0x18C0] = STACK[0x1888];
  LODWORD(STACK[0x1BC0]) = STACK[0x1F90];
  LODWORD(STACK[0x1DB8]) = STACK[0x1988];
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  LODWORD(STACK[0x1918]) = STACK[0x1978];
  LODWORD(STACK[0x18B8]) = STACK[0x1CA0];
  LODWORD(STACK[0x1920]) = STACK[0x21A0];
  LODWORD(STACK[0x1910]) = STACK[0x1954];
  LODWORD(STACK[0x18A8]) = STACK[0x18D8];
  LODWORD(STACK[0x18A0]) = STACK[0x1D88];
  LODWORD(STACK[0x18B0]) = STACK[0x1FC0];
  LODWORD(STACK[0x1900]) = STACK[0x2070];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1908]) = STACK[0x1980];
  return v4(a1, 3);
}

uint64_t sub_26AA39B54@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v3 = (v2 - 3702);
  STACK[0x21A8] = v3;
  v4 = *(STACK[0x22F8] + 8 * (((a2 < 2) * ((v2 + 4227) ^ v3)) ^ v2));
  STACK[0x2290] = STACK[0x1C30];
  STACK[0x2298] = STACK[0x1AC0];
  LODWORD(STACK[0x2198]) = STACK[0x19D8];
  LODWORD(STACK[0x2110]) = STACK[0x1938];
  LODWORD(STACK[0x2288]) = STACK[0x1F88];
  return v4(a1, 23);
}

uint64_t sub_26AA39BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x22E8]) = 0;
  LODWORD(STACK[0x22E0]) = 0;
  LODWORD(STACK[0x22B8]) = 0;
  LODWORD(STACK[0x22C0]) = 0;
  v8 = v7 - 2032;
  v9 = (v8 - 1670);
  v10 = *(STACK[0x22F8] + 8 * ((((*STACK[0x1F68] & 1) == (v9 ^ 0x1F)) * (v8 + 3942)) ^ v8));
  STACK[0x1880] = STACK[0x1E08];
  STACK[0x1868] = STACK[0x1E00];
  STACK[0x1870] = STACK[0x1DF8];
  STACK[0x1948] = STACK[0x1DF0];
  STACK[0x18E0] = STACK[0x1DE8];
  STACK[0x1898] = STACK[0x18D0];
  STACK[0x1890] = STACK[0x1E10];
  STACK[0x1FB8] = STACK[0x18C8];
  STACK[0x1888] = STACK[0x18C0];
  STACK[0x1A50] = STACK[0x20F0];
  STACK[0x1A48] = STACK[0x20E8];
  v11 = STACK[0x20C0];
  LODWORD(STACK[0x1960]) = STACK[0x20C0];
  v12 = STACK[0x2138];
  LODWORD(STACK[0x1630]) = STACK[0x2138];
  LODWORD(STACK[0x1A58]) = STACK[0x20E0];
  LODWORD(STACK[0x1B38]) = STACK[0x2090];
  LODWORD(STACK[0x17C0]) = v11;
  LODWORD(STACK[0x1A38]) = v12;
  LODWORD(STACK[0x1F90]) = STACK[0x1BC0];
  LODWORD(STACK[0x1988]) = STACK[0x1DB8];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1234]) = STACK[0x2160];
  STACK[0x1978] = LODWORD(STACK[0x1918]);
  LODWORD(STACK[0x22B0]) = STACK[0x17F0];
  LODWORD(STACK[0x1CA0]) = STACK[0x18B8];
  LODWORD(STACK[0x21A0]) = STACK[0x1920];
  LODWORD(STACK[0x1954]) = STACK[0x1910];
  LODWORD(STACK[0x1B58]) = STACK[0x22A8];
  LODWORD(STACK[0x18D8]) = STACK[0x18A8];
  LODWORD(STACK[0x1D88]) = STACK[0x18A0];
  LODWORD(STACK[0x1FC0]) = STACK[0x18B0];
  LODWORD(STACK[0x2070]) = STACK[0x1900];
  LODWORD(STACK[0x20B0]) = STACK[0x1BF0];
  LODWORD(STACK[0x1980]) = STACK[0x1908];
  STACK[0x21F8] = v9;
  STACK[0x21A8] = v9;
  LODWORD(STACK[0x1B54]) = STACK[0x20A0];
  STACK[0x1BD8] = LODWORD(STACK[0x20C8]);
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x1B68]) = STACK[0x1F78];
  LODWORD(STACK[0x1428]) = STACK[0x2100];
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x1C10]) = STACK[0x20D8];
  LODWORD(STACK[0x1BF8]) = STACK[0x2080];
  LODWORD(STACK[0x12E0]) = STACK[0x2008];
  LODWORD(STACK[0x1B70]) = STACK[0x1F70];
  LODWORD(STACK[0x1B3C]) = STACK[0x1F40];
  LODWORD(STACK[0x1BB8]) = STACK[0x2250];
  return v10(1, a2, a3, 0, 0, 0, a7, 1);
}

uint64_t sub_26AA39E0C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = LODWORD(STACK[0x1D98]) + 1;
  v7 = *(v5 + 8 * ((1221 * ((LODWORD(STACK[0x1780]) ^ ((a3 ^ 0x1BC) - 1575014200)) > v6)) ^ (a3 + 661)));
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  v8 = LODWORD(STACK[0x2008]);
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x2288]) = STACK[0x1F88];
  LODWORD(STACK[0x2110]) = STACK[0x1938];
  LODWORD(STACK[0x20E0]) = STACK[0x1A58];
  LODWORD(STACK[0x2138]) = STACK[0x1630];
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x20C0]) = v4;
  LODWORD(STACK[0x2198]) = STACK[0x19D8];
  STACK[0x2298] = STACK[0x1AC0];
  STACK[0x2290] = v3;
  STACK[0x20E8] = STACK[0x1A48];
  STACK[0x20F0] = STACK[0x1A50];
  STACK[0x1E08] = STACK[0x1880];
  STACK[0x1E00] = STACK[0x1868];
  STACK[0x1DF8] = STACK[0x1870];
  STACK[0x1DF0] = STACK[0x1948];
  STACK[0x1DE8] = STACK[0x18E0];
  STACK[0x18D0] = STACK[0x1898];
  STACK[0x1E10] = STACK[0x1890];
  STACK[0x18C8] = STACK[0x1FB8];
  STACK[0x18C0] = STACK[0x1888];
  LODWORD(STACK[0x1BC0]) = STACK[0x1F90];
  LODWORD(STACK[0x1DB8]) = STACK[0x1988];
  LODWORD(STACK[0x1918]) = STACK[0x1978];
  LODWORD(STACK[0x18B8]) = STACK[0x1CA0];
  LODWORD(STACK[0x1D98]) = v6;
  LODWORD(STACK[0x1920]) = STACK[0x21A0];
  LODWORD(STACK[0x1910]) = STACK[0x1954];
  LODWORD(STACK[0x18A8]) = STACK[0x18D8];
  LODWORD(STACK[0x18A0]) = STACK[0x1D88];
  LODWORD(STACK[0x18B0]) = STACK[0x1FC0];
  LODWORD(STACK[0x1900]) = STACK[0x2070];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1908]) = STACK[0x1980];
  STACK[0x21A8] = a3;
  return v7(v8, 20);
}

uint64_t sub_26AA39F90@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1678]) = 0;
  LODWORD(STACK[0x22C0]) = 0;
  LODWORD(STACK[0x1680]) = 0;
  LODWORD(STACK[0x22A0]) = 0;
  v5 = a1 ^ 0x2C0;
  LODWORD(STACK[0x16C8]) = v5 - 43;
  v6 = *(v4 + 8 * (((((v5 + 1535) ^ 0x15) + v5 - 43) * (v1 & 1)) ^ v5));
  LODWORD(STACK[0x22E0]) = 1;
  STACK[0x20F0] = STACK[0x1A50];
  STACK[0x20E8] = STACK[0x1A48];
  STACK[0x2290] = v2;
  STACK[0x2298] = STACK[0x1AC0];
  LODWORD(STACK[0x20F8]) = v3;
  LODWORD(STACK[0x2198]) = STACK[0x19D8];
  LODWORD(STACK[0x20C0]) = STACK[0x1960];
  LODWORD(STACK[0x22D0]) = STACK[0x1DA0];
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x2138]) = STACK[0x1630];
  LODWORD(STACK[0x20E0]) = STACK[0x1A58];
  LODWORD(STACK[0x2110]) = STACK[0x1938];
  LODWORD(STACK[0x2288]) = STACK[0x1F88];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x12E0]) = STACK[0x2008];
  return v6(LODWORD(STACK[0x2070]));
}

uint64_t sub_26AA3A090(uint64_t a1, int a2)
{
  v3 = (a2 ^ 0xEFEu) - 2200;
  v4 = *(STACK[0x8D8] + 4 * LODWORD(STACK[0x22A8])) < LODWORD(STACK[0x16F8]);
  STACK[0x21A8] = v3;
  v5 = *(STACK[0x22F8] + 8 * ((v4 * (v3 ^ 0x1A)) ^ a2));
  STACK[0x21C8] = STACK[0x1C40];
  LODWORD(STACK[0x20F8]) = v2;
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x2098]) = STACK[0x2100];
  LODWORD(STACK[0x1FF8]) = STACK[0x2160];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x1ABC]) = STACK[0x1E40];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x1AD4]) = STACK[0x1E70];
  return v5(a1);
}

void sub_26AA3A1AC(int a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x22E8]) = 0;
  LODWORD(STACK[0x22E0]) = 0;
  LODWORD(STACK[0x22B8]) = 0;
  LODWORD(STACK[0x22C0]) = 0;
  v4 = a1 ^ 0x10B1u;
  v5 = STACK[0x20F8];
  v6 = ((LODWORD(STACK[0x20F8]) - v3) << (a1 ^ 0xAB)) + 32;
  STACK[0x21F8] = v4;
  STACK[0x1C40] = STACK[0x21C8];
  LODWORD(STACK[0x1234]) = v5;
  LODWORD(STACK[0x22B0]) = STACK[0x17F0];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1B58]) = v3;
  LODWORD(STACK[0x2160]) = STACK[0x1FF8];
  LODWORD(STACK[0x1C68]) = STACK[0x21C0];
  LODWORD(STACK[0x2018]) = STACK[0x21B8];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1DA0]) = a3;
  LODWORD(STACK[0x1B38]) = STACK[0x2090];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x2180]) = v6;
  JUMPOUT(0x26AA36970);
}

uint64_t sub_26AA3A264()
{
  v3 = STACK[0x22B8] & 1;
  LODWORD(STACK[0x16C8]) = v0 - 3564;
  v4 = *(v2 + 8 * (((((v0 + 964411348) & 0xC684323F ^ 0xFFFFFFE7) + v0 - 3564) * v3) ^ v0));
  LODWORD(STACK[0x2280]) = 951254818;
  v5 = STACK[0xCD8];
  STACK[0x12D0] = STACK[0xB38];
  STACK[0x12C0] = v5;
  LODWORD(STACK[0x1AF0]) = STACK[0x1EB0];
  LODWORD(STACK[0x1FD8]) = STACK[0x20A0];
  LODWORD(STACK[0x1AF8]) = STACK[0x1F08];
  LODWORD(STACK[0x21D8]) = STACK[0x1F18];
  STACK[0x1B20] = LODWORD(STACK[0x20A8]);
  LODWORD(STACK[0x1C78]) = STACK[0x1D78];
  LODWORD(STACK[0x21D0]) = STACK[0x20C8];
  LODWORD(STACK[0x129C]) = STACK[0x1E90];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  STACK[0x17F0] = v1;
  LODWORD(STACK[0x1B00]) = STACK[0x1EA0];
  LODWORD(STACK[0x1B30]) = STACK[0x1E98];
  LODWORD(STACK[0x1B68]) = STACK[0x1F78];
  LODWORD(STACK[0x12CC]) = STACK[0x1E20];
  LODWORD(STACK[0x2098]) = STACK[0x2100];
  LODWORD(STACK[0x128C]) = STACK[0x1E88];
  LODWORD(STACK[0x1B10]) = STACK[0x1EF8];
  LODWORD(STACK[0x1B58]) = STACK[0x22A8];
  LODWORD(STACK[0x1FF8]) = STACK[0x2160];
  LODWORD(STACK[0x1B90]) = STACK[0x1EE8];
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x1AE4]) = STACK[0x1EC0];
  LODWORD(STACK[0x1ADC]) = STACK[0x1E28];
  STACK[0x1B60] = LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x21F0]) = STACK[0x1E30];
  LODWORD(STACK[0x1B18]) = STACK[0x1E78];
  LODWORD(STACK[0x2078]) = STACK[0x1EF0];
  LODWORD(STACK[0x1F30]) = STACK[0x1EC8];
  LODWORD(STACK[0x1C10]) = STACK[0x20D8];
  LODWORD(STACK[0x1AE8]) = STACK[0x1F00];
  LODWORD(STACK[0x1F28]) = STACK[0x1EB8];
  LODWORD(STACK[0x1298]) = STACK[0x1D70];
  LODWORD(STACK[0x1C58]) = STACK[0x17A8];
  LODWORD(STACK[0x1290]) = STACK[0x2080];
  LODWORD(STACK[0x12B0]) = STACK[0x1B38];
  LODWORD(STACK[0x1234]) = STACK[0x17B0];
  LODWORD(STACK[0x1A70]) = STACK[0x1D90];
  LODWORD(STACK[0x1B70]) = STACK[0x1F70];
  LODWORD(STACK[0x1F58]) = STACK[0x1E80];
  LODWORD(STACK[0x1AEC]) = STACK[0x1EA8];
  LODWORD(STACK[0x1AD8]) = STACK[0x1F20];
  LODWORD(STACK[0x12A8]) = STACK[0x1ED0];
  LODWORD(STACK[0x12BC]) = STACK[0x1DD8];
  LODWORD(STACK[0x1AE0]) = STACK[0x1ED8];
  LODWORD(STACK[0x127C]) = STACK[0x1D58];
  LODWORD(STACK[0x1B28]) = STACK[0x1EE0];
  LODWORD(STACK[0x12B4]) = STACK[0x2250];
  LODWORD(STACK[0x12A0]) = STACK[0x1E38];
  LODWORD(STACK[0x1294]) = STACK[0x1D80];
  LODWORD(STACK[0x2048]) = STACK[0x1F10];
  return v4();
}

uint64_t sub_26AA3A464@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x16C8]) = a1;
  LODWORD(STACK[0x1AF0]) = STACK[0x1EB0];
  LODWORD(STACK[0xA5C]) = v9;
  LODWORD(STACK[0x1FD8]) = STACK[0x20A0];
  LODWORD(STACK[0x1AF8]) = STACK[0x1F08];
  LODWORD(STACK[0x21D8]) = STACK[0x1F18];
  STACK[0x1B20] = LODWORD(STACK[0x20A8]);
  LODWORD(STACK[0x1C78]) = STACK[0x1D78];
  LODWORD(STACK[0x21D0]) = STACK[0x20C8];
  LODWORD(STACK[0x129C]) = STACK[0x1E90];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x1B00]) = STACK[0x1EA0];
  LODWORD(STACK[0x1B30]) = STACK[0x1E98];
  LODWORD(STACK[0x1B68]) = STACK[0x1F78];
  LODWORD(STACK[0x12CC]) = STACK[0x1E20];
  LODWORD(STACK[0x2098]) = STACK[0x2100];
  LODWORD(STACK[0x128C]) = STACK[0x1E88];
  LODWORD(STACK[0x1B10]) = STACK[0x1EF8];
  LODWORD(STACK[0x1B58]) = STACK[0x22A8];
  LODWORD(STACK[0x1FF8]) = STACK[0x2160];
  LODWORD(STACK[0x1B90]) = STACK[0x1EE8];
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x1AE4]) = STACK[0x1EC0];
  LODWORD(STACK[0x1ADC]) = STACK[0x1E28];
  STACK[0x1B60] = LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x21F0]) = STACK[0x1E30];
  LODWORD(STACK[0x1B18]) = STACK[0x1E78];
  LODWORD(STACK[0x2078]) = STACK[0x1EF0];
  LODWORD(STACK[0x1F30]) = STACK[0x1EC8];
  LODWORD(STACK[0x1C10]) = STACK[0x20D8];
  LODWORD(STACK[0x1AE8]) = STACK[0x1F00];
  LODWORD(STACK[0x1F28]) = STACK[0x1EB8];
  LODWORD(STACK[0x1298]) = STACK[0x1D70];
  LODWORD(STACK[0x1290]) = STACK[0x2080];
  LODWORD(STACK[0x12B0]) = STACK[0x1B38];
  LODWORD(STACK[0x1A70]) = STACK[0x1D90];
  LODWORD(STACK[0x1B70]) = STACK[0x1F70];
  LODWORD(STACK[0x1F58]) = STACK[0x1E80];
  LODWORD(STACK[0x1AEC]) = STACK[0x1EA8];
  LODWORD(STACK[0x1AD8]) = STACK[0x1F20];
  LODWORD(STACK[0x12A8]) = STACK[0x1ED0];
  LODWORD(STACK[0x12BC]) = STACK[0x1DD8];
  LODWORD(STACK[0x1AE0]) = STACK[0x1ED8];
  LODWORD(STACK[0x127C]) = STACK[0x1D58];
  LODWORD(STACK[0x1B28]) = STACK[0x1EE0];
  LODWORD(STACK[0x12B4]) = STACK[0x2250];
  LODWORD(STACK[0x12A0]) = STACK[0x1E38];
  LODWORD(STACK[0x1294]) = STACK[0x1D80];
  LODWORD(STACK[0x2048]) = STACK[0x1F10];
  LODWORD(STACK[0x2280]) = 951254819;
  v10 = STACK[0xB38];
  STACK[0x12D0] = STACK[0xB38];
  STACK[0x12C0] = STACK[0xCD8];
  LODWORD(STACK[0x1C58]) = STACK[0x17A8];
  LODWORD(STACK[0x1234]) = STACK[0x17B0];
  v1 = LODWORD(STACK[0x16C8]) + 1982;
  v2 = STACK[0x1234];
  v3 = STACK[0x1C58];
  v4 = STACK[0x12D0];
  if (LODWORD(STACK[0x1C58]) >= LODWORD(STACK[0x1234]))
  {
    v5 = STACK[0x12D0];
  }

  else
  {
    v5 = STACK[0x12C0];
  }

  if (v3 < v2)
  {
    v6 = STACK[0x1C58];
  }

  else
  {
    v4 = STACK[0x12C0];
    v6 = STACK[0x1234];
  }

  if (v3 > v2)
  {
    v2 = STACK[0x1C58];
  }

  v7 = *v4;
  if (!v6)
  {
    v7 = 0;
  }

  *v10 = ((*v5 + 1065963570 - ((*v5 << (((LODWORD(STACK[0x16C8]) - 94) | 0x1C) ^ 0xDC)) & 0x7F12A064)) ^ 0x3F895032) + v7;
  return (*(STACK[0x22F8] + 8 * ((61 * (v2 < 2)) ^ v1)))();
}

uint64_t sub_26AA3A628(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  LODWORD(STACK[0x1678]) = 0;
  LODWORD(STACK[0x22C0]) = 0;
  LODWORD(STACK[0x1680]) = 0;
  LODWORD(STACK[0x22A0]) = 0;
  v9 = (v4 - 2011) | 0x16;
  LODWORD(STACK[0x16C8]) = v9 - 536;
  v10 = *(v8 + 8 * ((((v9 - 536) ^ 0x582) * (a4 & 1)) ^ v4));
  LODWORD(STACK[0x22E0]) = 1;
  STACK[0x20F0] = STACK[0x1A50];
  STACK[0x20E8] = STACK[0x1A48];
  STACK[0x2290] = v5;
  STACK[0x2298] = STACK[0x1AC0];
  LODWORD(STACK[0x2198]) = STACK[0x19D8];
  LODWORD(STACK[0x20C0]) = v6;
  LODWORD(STACK[0x22D0]) = v7;
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x2138]) = STACK[0x1630];
  LODWORD(STACK[0x20E0]) = STACK[0x1A58];
  LODWORD(STACK[0x2110]) = STACK[0x1938];
  LODWORD(STACK[0x2288]) = STACK[0x1F88];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x12E0]) = STACK[0x2008];
  return v10(LODWORD(STACK[0x2070]));
}

uint64_t sub_26AA3A7B0(uint64_t a1)
{
  *STACK[0x1860] = 1;
  STACK[0x1E08] = STACK[0x1880];
  STACK[0x1E00] = STACK[0x1868];
  STACK[0x1DF8] = STACK[0x1870];
  STACK[0x1DF0] = STACK[0x1948];
  STACK[0x1DE8] = STACK[0x18E0];
  STACK[0x18D0] = STACK[0x1898];
  STACK[0x1E10] = STACK[0x1890];
  STACK[0x18C8] = STACK[0x1FB8];
  STACK[0x18C0] = STACK[0x1888];
  LODWORD(STACK[0x1BC0]) = STACK[0x1F90];
  LODWORD(STACK[0x17C0]) = STACK[0x1960];
  LODWORD(STACK[0x1B54]) = STACK[0x20A0];
  LODWORD(STACK[0x1DB8]) = STACK[0x1988];
  LODWORD(STACK[0x1C00]) = STACK[0x1F80];
  STACK[0x1BD8] = LODWORD(STACK[0x20C8]);
  LODWORD(STACK[0x1BA4]) = STACK[0x20B8];
  STACK[0x1C38] = LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x1918]) = STACK[0x1978];
  STACK[0x17F0] = LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x1A38]) = STACK[0x1630];
  LODWORD(STACK[0x1B68]) = STACK[0x1F78];
  LODWORD(STACK[0x1428]) = STACK[0x2100];
  LODWORD(STACK[0x18B8]) = STACK[0x1CA0];
  LODWORD(STACK[0x1920]) = STACK[0x21A0];
  LODWORD(STACK[0x1910]) = STACK[0x1954];
  LODWORD(STACK[0x1BC8]) = STACK[0x2088];
  LODWORD(STACK[0x18A8]) = STACK[0x18D8];
  LODWORD(STACK[0x1C10]) = STACK[0x20D8];
  LODWORD(STACK[0x18A0]) = STACK[0x1D88];
  LODWORD(STACK[0x18B0]) = STACK[0x1FC0];
  LODWORD(STACK[0x1BF8]) = STACK[0x2080];
  LODWORD(STACK[0x12E0]) = STACK[0x2008];
  LODWORD(STACK[0x1B70]) = STACK[0x1F70];
  LODWORD(STACK[0x1900]) = STACK[0x2070];
  LODWORD(STACK[0x1BF0]) = STACK[0x20B0];
  LODWORD(STACK[0x1B3C]) = STACK[0x1F40];
  LODWORD(STACK[0x1BB8]) = STACK[0x2250];
  LODWORD(STACK[0x1908]) = STACK[0x1980];
  LODWORD(STACK[0x20F8]) = v3;
  LODWORD(STACK[0x1DA0]) = 1;
  v1 = *(STACK[0x22F8] + 8 * ((3099 * (v3 == ((STACK[0x21A8] - 125642850) & 0x77D2EDE) - 1692)) ^ (STACK[0x21A8] + 1662)));
  STACK[0x20F0] = STACK[0x1A50];
  STACK[0x20E8] = STACK[0x1A48];
  STACK[0x2290] = STACK[0x1C30];
  STACK[0x2298] = STACK[0x1AC0];
  LODWORD(STACK[0x2198]) = STACK[0x19D8];
  LODWORD(STACK[0x20C0]) = STACK[0x17C0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  LODWORD(STACK[0x2138]) = STACK[0x1A38];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x2100]) = STACK[0x1428];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x20E0]) = STACK[0x1A58];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x2110]) = STACK[0x1938];
  LODWORD(STACK[0x2288]) = STACK[0x1F88];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2090]) = 1677284594;
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x2250]) = STACK[0x1BB8];
  return v1(a1, 11);
}

uint64_t sub_26AA3AA3C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v11 + v10 + *v9 + a4 - (((v11 + v10 + *v9) << (a2 ^ 0x32u)) & 0x47F12A064);
  *v8 = v14 ^ v12;
  return (*(a8 + 8 * (((32 * (((a2 - 84) ^ (v13 == HIDWORD(v14))) & 1)) & 0xBF | ((((a2 - 84) ^ (v13 == HIDWORD(v14))) & 1) << 6)) ^ a2)))(a1);
}

uint64_t sub_26AA3AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v13 = ((v11 & 0xFB85D63F) - 969571234) & 0x39CA7FE3;
  LODWORD(v10) = (v11 & 0xFB85D63F) + 2324;
  v14 = *(v9 + 4);
  *(v8 + 4) = v14 + (HIDWORD(v10) ^ v12);
  v15 = __CFADD__(v14, HIDWORD(v10) ^ v12);
  return (*(a8 + 8 * ((v15 * (v13 ^ 0x2C6)) ^ v10)))(a1, a2, a3, a4, a5, (a6 + 1), a7);
}

uint64_t sub_26AA3AB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v12 = *(v9 + 4);
  *(v8 + 4) = v12 + a7;
  v13 = __CFADD__(v12, a7);
  return (*(a8 + 8 * ((v13 * v11) ^ v10)))(a1, a2, a3, a4, a5, (a6 + 1));
}

uint64_t sub_26AA3AB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 4) = 0;
  v11 = LODWORD(STACK[0x22B8]) + ((v8 - 1101) | 0xB) - 30;
  v12 = STACK[0x22E8];
  LODWORD(STACK[0x22B8]) = v11;
  v13 = *(a8 + 8 * ((586 * (v11 == v12)) ^ v8));
  STACK[0x1C40] = STACK[0x21C8];
  STACK[0x1220] = STACK[0x1678];
  v14 = STACK[0x22A0];
  STACK[0x20F0] = STACK[0x22A0];
  STACK[0x20E8] = v10;
  STACK[0x2290] = v14;
  STACK[0x2298] = v10;
  LODWORD(STACK[0x2198]) = v12;
  LODWORD(STACK[0x1BA8]) = STACK[0x1DB0];
  LODWORD(STACK[0x1F90]) = STACK[0x1BC0];
  LODWORD(STACK[0x19B0]) = STACK[0x1A2C];
  LODWORD(STACK[0x1F18]) = STACK[0x1680];
  LODWORD(STACK[0x1958]) = STACK[0x1670];
  LODWORD(STACK[0x22D0]) = STACK[0x1CA4];
  LODWORD(STACK[0x21A0]) = STACK[0x1994];
  LODWORD(STACK[0x1BB0]) = STACK[0x19D4];
  LODWORD(STACK[0x1E28]) = STACK[0x1ADC];
  LODWORD(STACK[0x1F38]) = STACK[0x1B60];
  LODWORD(STACK[0x1E30]) = STACK[0x1A08];
  LODWORD(STACK[0x20E0]) = v12;
  LODWORD(STACK[0x19B8]) = STACK[0x1668];
  LODWORD(STACK[0x1C68]) = STACK[0x21C0];
  LODWORD(STACK[0x2018]) = STACK[0x21B8];
  LODWORD(STACK[0x2110]) = 922064384;
  LODWORD(STACK[0x19C0]) = STACK[0x1660];
  LODWORD(STACK[0x2138]) = a6;
  LODWORD(STACK[0x2288]) = a6;
  LODWORD(STACK[0x19A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x1DD8]) = STACK[0x1658];
  LODWORD(STACK[0x20B0]) = STACK[0x1BF0];
  LODWORD(STACK[0x2250]) = STACK[0x1650];
  LODWORD(STACK[0x1998]) = STACK[0x19A0];
  LODWORD(STACK[0x1620]) = STACK[0x1648];
  return v13(a1, 3, a3, a4, a5);
}

uint64_t sub_26AA3ACE4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _BYTE *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, _DWORD *a49)
{
  v57 = v53;
  v58 = STACK[0x17F0] == 0;
  v59 = STACK[0x1B88];
  if (STACK[0x17F0])
  {
    LODWORD(v59) = STACK[0x2230];
  }

  LODWORD(STACK[0x2230]) = v59;
  v60 = STACK[0x2238];
  if (!v58)
  {
    v60 = STACK[0x2228];
  }

  LODWORD(STACK[0x2250]) = v60;
  v61 = STACK[0xDCC];
  if (v58)
  {
    v61 = STACK[0x1D50];
  }

  LODWORD(STACK[0x2248]) = v61;
  v62 = STACK[0x134C];
  if (v58)
  {
    v62 = STACK[0x1B54];
  }

  LODWORD(STACK[0x2260]) = v62;
  v63 = STACK[0x1958];
  if (v58)
  {
    v63 = STACK[0x1CB0];
  }

  LODWORD(STACK[0x22C8]) = v63;
  STACK[0x22F0] = 0;
  v64 = STACK[0x1C08];
  if (!v58)
  {
    v64 = STACK[0x1004];
  }

  LODWORD(STACK[0x22E8]) = v64;
  v65 = (LODWORD(STACK[0x21D0]) - 1448553828) & 0x56572CFF;
  STACK[0x2158] = v65;
  LODWORD(STACK[0x2140]) = *(STACK[0x2160] + (((STACK[0x1D30] >> 54) & 0xFC | (STACK[0x1F80] >> 62)) ^ 0x64 ^ v65));
  v66 = *(STACK[0x2270] + (BYTE2(STACK[0x1F70]) ^ 0x59));
  HIDWORD(v67) = v66 ^ 0x11;
  LODWORD(v67) = v66 << 24;
  LODWORD(STACK[0x2148]) = v67 >> 31;
  v68 = STACK[0x1C60];
  v69 = ((LODWORD(STACK[0x1264]) << STACK[0x1C60]) + v50) ^ __ROR4__(STACK[0x2278], 8) ^ v52;
  LODWORD(STACK[0x2270]) = v54;
  v70 = STACK[0x1B78];
  v71 = v69 ^ __ROR4__(*(STACK[0x1B78] + 4 * BYTE1(v49)), 24) ^ *(STACK[0x1B78] + 4 * v49);
  LODWORD(v67) = __ROR4__(*(STACK[0x1B78] + 4 * BYTE2(v49)), 16);
  STACK[0x21B8] = v49;
  v72 = v71 ^ v67;
  LODWORD(STACK[0x21F0]) = v71 ^ v67;
  v73 = STACK[0x2288];
  v74 = ((v71 ^ v67) - 1575013781 - ((2 * (v71 ^ v67)) & 0x443E64D6)) ^ LODWORD(STACK[0x2288]);
  LODWORD(STACK[0x2238]) = v74;
  v76 = STACK[0x2280];
  v77 = STACK[0x2280] & 0x73C4F19F ^ 0xE789E33E;
  v78 = STACK[0x1CAC];
  LODWORD(v65) = (STACK[0x1CAC] & v77) >> a5;
  v80 = STACK[0x1CC8];
  v81 = STACK[0x1EC8];
  v82 = STACK[0x1F78];
  LODWORD(STACK[0x2228]) = v55;
  v83 = STACK[0x1FC8];
  v84 = STACK[0x1928];
  v85 = ((v51 ^ a1 ^ v49 ^ v74) + 8086465 - ((2 * (v51 ^ a1 ^ v49 ^ v74)) & 0xF6C782)) ^ LODWORD(STACK[0x2188]);
  v86 = STACK[0x2188];
  v87 = v85 ^ a1;
  STACK[0x2278] = v87;
  v88 = (((v80 & v77) << v81) + v65) ^ (((v84 & (v82 & 0x844F19F ^ 0x18C902B2u)) >> v57) + (((v82 & 0x844F19F ^ 0x18C902B2) & v83) << v68)) ^ __ROR4__(*(v70 + 4 * BYTE1(v87)), 24) ^ *(v70 + 4 * (v85 ^ a1)) ^ __ROR4__(*(v70 + 4 * BYTE2(v87)), 16) ^ __ROR4__(*(v70 + ((v87 >> 22) & 0x3FC)), 8);
  v89 = STACK[0x1F58];
  v90 = v73 ^ LODWORD(STACK[0x1F58]) ^ (v88 - 1575013781 - ((2 * v88) & 0x443E64D6));
  LODWORD(STACK[0x2288]) = v74 ^ v51;
  LODWORD(v87) = (((LODWORD(STACK[0x1AA8]) ^ 0x16978598) & ((v76 & 0x1284909E ^ 0x1696949E) + (v76 & 0x1284909Eu))) >> 1) ^ 0x1696949E;
  LODWORD(v65) = ((v74 ^ v51) + 8086465 - ((2 * (v74 ^ v51)) & 0xF6C782)) ^ v86 ^ v90;
  v91 = v85 ^ v89 ^ v65;
  v92 = ((v78 & v87) >> v57) ^ ((v80 & v87) << v81) ^ (((v84 & (v76 & 0xDCB4A4F ^ 0x1B96949Eu)) >> a5) + ((v83 & (v76 & 0xDCB4A4F ^ 0x1B96949E)) << v68)) ^ __ROR4__(*(v70 + 4 * BYTE1(v91)), 24);
  LODWORD(v67) = __ROR4__(*(v70 + 4 * BYTE2(v91)), 16);
  v93 = v88 ^ v72;
  LODWORD(STACK[0x2208]) = v88 ^ v72;
  v94 = *(v70 + ((v91 >> 22) & 0x3FC));
  STACK[0x2210] = v91;
  v95 = v92 ^ v67 ^ v93 ^ __ROR4__(v94, 8) ^ *(v70 + 4 * v91);
  LODWORD(STACK[0x21A8]) = v95;
  LODWORD(STACK[0x21B0]) = v90;
  v96 = (LODWORD(STACK[0x1D78]) >> 1) & 0x4EAA9300 ^ 0x9D552600;
  LODWORD(v65) = v65 ^ a1;
  LODWORD(STACK[0x2200]) = v65;
  v97 = ((v95 ^ v90) + 8086465 - ((2 * (v95 ^ v90)) & 0xF6C782)) ^ v86;
  LODWORD(STACK[0x2218]) = v97;
  LODWORD(v65) = v97 ^ v65;
  v98 = a1 ^ v86;
  v99 = a1 ^ v86 ^ ((v65 ^ v89 ^ v91) + 8086465 - ((2 * (v65 ^ v89 ^ v91)) & 0xF6C782));
  v100 = (((v80 & v96) << v81) + ((v78 & v96) >> a5)) ^ (((v84 & (v82 & 0x772A9300 ^ 0x8D5FA500)) >> v57) | (((v82 & 0x772A9300 ^ 0x8D5FA500) & v83) << v68)) ^ __ROR4__(*(v70 + 4 * BYTE1(v99)), 24) ^ __ROR4__(*(v70 + ((v99 >> 22) & 0x3FC)), 8) ^ *(v70 + 4 * v99);
  STACK[0x21E8] = v99;
  LODWORD(v87) = v100 ^ __ROR4__(*(v70 + 4 * BYTE2(v99)), 16);
  LODWORD(v91) = v65 ^ v89 ^ a1;
  LODWORD(STACK[0x21D8]) = v91;
  LODWORD(STACK[0x21F8]) = v87 ^ v90;
  v101 = v87 ^ v90 ^ v89;
  LODWORD(v91) = v91 ^ v101;
  LODWORD(STACK[0x2220]) = v91;
  v102 = STACK[0x2258];
  LODWORD(STACK[0x2150]) = *(STACK[0x2258] + (STACK[0x1E20] ^ 0xC6));
  v103 = v98 ^ ((v99 ^ v91) + 8086465 - ((2 * (v99 ^ v91)) & 0xF6C782));
  LOBYTE(v91) = *(v102 + (BYTE3(v103) ^ 0xC6)) ^ ((BYTE3(v103) ^ 0x88) + (BYTE3(v103) ^ 0xEB) - ((2 * ((BYTE3(v103) ^ 0x88) + (BYTE3(v103) ^ 0xEB))) & 0x22) + 17) ^ 0x4A;
  LODWORD(STACK[0x2258]) = v87 ^ v95;
  LODWORD(v87) = ((v84 & (v82 & 0x4A8A62D9 ^ 0xDF1EA77B)) >> v57) ^ (((v82 & 0x4A8A62D9 ^ 0xDF1EA77B) & v83) << v68) ^ ((v78 & (v76 & 0x6B0A62D9 ^ 0xD614C5B3)) >> a5) ^ ((v80 & (v76 & 0x6B0A62D9 ^ 0xD614C5B3)) << v81) ^ v87 ^ v95 ^ *(v70 + 4 * v103) ^ __ROR4__(*(v70 + 4 * BYTE1(v103)), 24) ^ __ROR4__(*(v70 + 4 * (v91 - 107)), 8);
  STACK[0x21A0] = v103;
  v104 = __PAIR64__(a1, __ROR4__(*(v70 + 4 * BYTE2(v103)), 16));
  LODWORD(v87) = v87 ^ v104;
  LODWORD(v104) = a1;
  v105 = (v104 >> 5) ^ ((v87 ^ v101) >> 5) ^ 0xD43133AA ^ ((v87 ^ v101) << (((v87 ^ v101) & 0x1B ^ 0x1B) + ((v87 ^ v101) & 0x1B)));
  LODWORD(v65) = v87 ^ v65;
  LODWORD(STACK[0x2170]) = v87;
  v106 = v98 ^ ((v103 ^ v65) + 8086465 - ((2 * (v103 ^ v65)) & 0xF6C782));
  LODWORD(v87) = (((v78 & (v76 & 0x7F7F85AF ^ 0xFEFF0B5F)) >> a5) + ((v80 & (v76 & 0x7F7F85AF ^ 0xFEFF0B5F)) << v68)) ^ (((v84 & (v82 & 0x76FF85AF ^ 0x8FA48AD3)) >> v57) + (((v82 & 0x76FF85AF ^ 0x8FA48AD3) & v83) << v81)) ^ *(v70 + 4 * (v98 ^ ((v103 ^ v65) - 63 - ((2 * (v103 ^ v65)) & 0x82)))) ^ __ROR4__(*(v70 + 4 * BYTE2(v106)), 16) ^ v87 ^ __ROR4__(*(v70 + 4 * BYTE1(v106)), 24);
  STACK[0x2190] = v106;
  v107 = __PAIR64__(v105, __ROR4__(*(v70 + ((v106 >> 22) & 0x3FC)), 8));
  LODWORD(v99) = v87 ^ v107;
  LODWORD(v87) = LODWORD(STACK[0x1D70]) ^ 0xC6DCF366;
  LODWORD(v65) = v65 ^ a1;
  LODWORD(STACK[0x2198]) = v65;
  LODWORD(v107) = v105;
  v108 = v107 >> 27;
  LODWORD(STACK[0x2180]) = v108;
  v109 = v99 ^ v56 ^ v108;
  v110 = v99;
  LODWORD(STACK[0x2128]) = v99;
  LODWORD(v99) = v87 ^ v109;
  LODWORD(STACK[0x2110]) = v87 ^ v109;
  LODWORD(v87) = LODWORD(STACK[0x2290]) ^ 0x7DC971A ^ ((v109 ^ v65) + 8086465 - ((2 * (v109 ^ v65)) & 0xF6C782));
  LODWORD(v65) = v106 ^ v87;
  LODWORD(v106) = v87;
  LODWORD(STACK[0x2290]) = v87;
  v111 = v98 ^ (v65 + 8086465 - ((2 * v65) & 0xF6C782));
  LODWORD(v65) = ((*(STACK[0x2268] + (((*(v70 + 4 * BYTE1(v111)) >> 19) & 0xE0u | (*(v70 + 4 * BYTE1(v111)) >> 27)) ^ 0xD3)) ^ 0x7C) - 77) | (*(v70 + 4 * BYTE1(v111)) << 8);
  v112 = (((v78 & (v82 & 0x536952DD ^ 0xE59BE777)) >> a5) | (((v82 & 0x536952DD ^ 0xE59BE777) & v83) << v81)) ^ (((v80 & (v76 & 0x1FE952DD ^ 0x3FD2A5BB)) << v68) | ((v84 & (v76 & 0x1FE952DD ^ 0x3FD2A5BBu)) >> v57)) ^ __ROR4__(*(v70 + 4 * (v111 >> ((BYTE1(STACK[0x2278]) & 0x18 ^ 0x18) + (BYTE1(STACK[0x2278]) & 0x18u)))), 8) ^ *(v70 + 4 * v111) ^ v110;
  STACK[0x2120] = v111;
  LODWORD(v87) = v112 ^ __ROR4__(*(v70 + 4 * BYTE2(v111)), 16) ^ v65;
  LODWORD(STACK[0x2160]) = v87;
  LODWORD(v87) = v99 ^ a1 ^ v87;
  LODWORD(STACK[0x2268]) = v87;
  LODWORD(STACK[0x2118]) = v106 ^ a1;
  LODWORD(STACK[0x2168]) = (v106 ^ a1 ^ v111 ^ v87) + 8086465 - ((2 * (v106 ^ a1 ^ v111 ^ v87)) & 0xF6C782);
  LODWORD(STACK[0x20C0]) = ((v84 & (v76 & 0x6772E751 ^ 0xCEE5CEA2)) >> a5) | ((v83 & (v76 & 0x6772E751 ^ 0xCEE5CEA2)) << v68);
  LODWORD(STACK[0x20B8]) = ((v78 & (v82 & 0x4118432 ^ 0x8328864)) >> v57) | ((v80 & (v82 & 0x4118432 ^ 0x8328864)) << v81);
  LODWORD(STACK[0x2000]) = v76 & 0x32ED7904 ^ 0x65DAF209;
  LODWORD(STACK[0x2100]) = ((v80 & (v76 & 0x6B7C75CF ^ 0xD6F8EB9F)) << v68) | ((v84 & (v76 & 0x6B7C75CF ^ 0xD6F8EB9F)) >> a5);
  LODWORD(STACK[0x1E48]) = v82 & 0x3B4B8A3E ^ 0x5DDC9671;
  LODWORD(STACK[0x20F8]) = ((v78 & (v82 & 0x81F16AC ^ 0x18252FD5)) >> v57) + (((v82 & 0x81F16AC ^ 0x18252FD5) & v83) << v81);
  LODWORD(STACK[0x20F0]) = ((v78 & (v76 & 0x5828E95D ^ 0xB051D2BB)) >> v57) + ((v80 & (v76 & 0x5828E95D ^ 0xB051D2BB)) << v68);
  LODWORD(STACK[0x20E8]) = ((v78 & (v82 & 0x2742F071 ^ 0x6DC700A2)) >> v57) | ((v80 & (v82 & 0x2742F071 ^ 0x6DC700A2)) << v81);
  v113 = v76 & 0x6F0AB839 ^ 0xDE157072;
  LODWORD(STACK[0x20E0]) = ((v84 & v113) >> a5) | ((v83 & v113) << v68);
  LODWORD(STACK[0x20D8]) = ((v78 & (v76 & 0x49884DDA ^ 0x93109BB5)) >> a5) + ((v80 & (v76 & 0x49884DDA ^ 0x93109BB5)) << v68);
  LODWORD(STACK[0x20D0]) = ((v78 & (v82 & 0x26DA8922 ^ 0x6FEF9345)) >> v57) + ((v80 & (v82 & 0x26DA8922 ^ 0x6FEF9345)) << v68);
  LODWORD(STACK[0x20C8]) = ((v84 & (v76 & 0x6E92C16A ^ 0xDD2582D5)) >> a5) | ((v83 & (v76 & 0x6E92C16A ^ 0xDD2582D5)) << v81);
  LODWORD(STACK[0x2090]) = v76 & 0x3EE9E870 ^ 0x7DD3D0E0;
  LODWORD(STACK[0x2050]) = (v113 & 0x440AB020 ^ 0x440AB3A4 | v113 & 0x541EF022) ^ v76 & 0x2A0F79D3;
  LODWORD(STACK[0x2108]) = (((v80 & (v82 & 0x35CD0B38 ^ 0x4AD31578)) << v81) + ((v78 & (v82 & 0x35CD0B38 ^ 0x4AD31578)) >> a5)) ^ (((v84 & (v76 & 0x4931F7C4 ^ 0x9263EF89)) >> v57) | ((v83 & (v76 & 0x4931F7C4 ^ 0x9263EF89)) << v68));
  LODWORD(STACK[0x20A8]) = ((v78 & (v82 & 0x56F3852F ^ 0xEFB48B53)) >> v57) ^ (((v82 & 0x56F3852F ^ 0xEFB48B53) & v83) << v81);
  LODWORD(STACK[0x20B0]) = ((v84 & (v82 & 0x8A9CC02 ^ 0x195A5805u)) >> v57) | (((v82 & 0x8A9CC02 ^ 0x195A5805) & v83) << v68);
  LODWORD(v65) = v76 & 0x745530FE ^ 0xE8AA61FC;
  LODWORD(STACK[0x2080]) = v65;
  v114 = v76 & 0x19BFE213 ^ 0x337FC426;
  v115 = (v80 & v65) << v81;
  STACK[0x20A0] = v115;
  LODWORD(v70) = v82 & 0x65431EEF ^ 0x614302CC ^ ((v115 & 0xCA863DDE) - (v115 | 0x3579C221));
  v116 = v82 & 0x4C25B058 ^ 0xD04AC0F9;
  v117 = ((((v76 & 0x37000142 ^ 0xB720054E) + (v76 & 0x37000142)) & STACK[0x1F08]) >> 1) ^ 0xB720054E;
  LODWORD(STACK[0x2098]) = (((v78 & v117) >> v57) + ((v117 & v83) << v68)) ^ (((v80 & (v82 & 0x602BB91C ^ 0xA05CD335)) << v81) + ((v84 & (v82 & 0x602BB91C ^ 0xA05CD335)) >> a5));
  LODWORD(STACK[0x2088]) = ((v78 & (v76 & 0x3A30B901 ^ 0x74617202)) >> a5) | ((v83 & (v76 & 0x3A30B901 ^ 0x74617202)) << v68);
  LODWORD(STACK[0x2078]) = ((v80 & (v82 & 0x18B02BA ^ 0x21D07FD)) << v81) + ((v84 & (v82 & 0x18B02BA ^ 0x21D07FDu)) >> v57);
  LODWORD(STACK[0x2070]) = ((v78 & (v76 & 0x1C5B3638 ^ 0x38B66C70)) >> a5) + ((v83 & (v76 & 0x1C5B3638 ^ 0x38B66C70)) << v68);
  LODWORD(STACK[0x2068]) = ((v80 & (v82 & 0x27E08D83 ^ 0x6C819A87)) << v81) + ((v84 & (v82 & 0x27E08D83 ^ 0x6C819A87u)) >> v57);
  v118 = v82 & 0x21342E20 ^ 0x63787E41;
  LODWORD(STACK[0x2060]) = ((v78 & (v76 & 0x50C5DFD1 ^ 0xA18BBFA2)) >> a5) | ((v83 & (v76 & 0x50C5DFD1 ^ 0xA18BBFA2)) << v68);
  v119 = (v80 & v118) << v81;
  v120 = (v84 & v118) >> v57;
  LODWORD(STACK[0x2058]) = v119 | v120;
  v121 = v82 & 0x1DDDE1D5 ^ 0x959E1C4 ^ ((v120 & 0x3BBBC3AA ^ 0x3BBBC3AA) + (v120 & 0x3BBBC3AA));
  LODWORD(STACK[0x2048]) = ((v80 & (v76 & 0x6C2C1024 ^ 0xD8582049)) << v68) + ((v84 & (v76 & 0x6C2C1024 ^ 0xD8582049)) >> v57);
  LODWORD(STACK[0x2040]) = ((v78 & (v82 & 0x57E7521D ^ 0xEC8DE636)) >> v57) | (((v82 & 0x57E7521D ^ 0xEC8DE636) & v83) << v68);
  LODWORD(STACK[0x2038]) = ((v80 & (v76 & 0x2616A3EC ^ 0x4C2D47D9)) << v81) + ((v84 & (v76 & 0x2616A3EC ^ 0x4C2D47D9u)) >> a5);
  LODWORD(STACK[0x2030]) = ((v78 & (v82 & 0x423ECE4 ^ 0x844390D)) >> v57) + (((v82 & 0x423ECE4 ^ 0x844390D) & v83) << v81);
  LODWORD(STACK[0x2028]) = ((v80 & (v76 & 0x75D21D15 ^ 0xEBA43A2A)) << v68) + ((v84 & (v76 & 0x75D21D15 ^ 0xEBA43A2A)) >> a5);
  LODWORD(STACK[0x1F98]) = v76 & 0x7090CAF ^ 0xE12195E;
  LODWORD(STACK[0x2020]) = ((v84 & (v82 & 0x5D37E188 ^ 0xF37C2299)) >> v57) + (((v82 & 0x5D37E188 ^ 0xF37C2299) & v83) << v68);
  LODWORD(STACK[0x2018]) = ((v80 & (v76 & 0x2B4197FE ^ 0x56832FFD)) << v81) + ((v78 & (v76 & 0x2B4197FE ^ 0x56832FFD)) >> a5);
  LODWORD(STACK[0x2010]) = ((v78 & (v82 & 0x717F7AD9 ^ 0x83A5977A)) >> v57) + (((v82 & 0x717F7AD9 ^ 0x83A5977A) & v83) << v81);
  LODWORD(STACK[0x2008]) = ((v78 & (v76 & 0x56396AEA ^ 0xAC72D5D5)) >> v57) ^ ((v83 & (v76 & 0x56396AEA ^ 0xAC72D5D5)) << v81);
  LODWORD(STACK[0x1FF8]) = ((v80 & (v82 & 0x204F1C9C ^ 0x60D539B5)) << v68) | ((v84 & (v82 & 0x204F1C9C ^ 0x60D539B5u)) >> a5);
  v122 = v76 & 0x3A94E135 ^ 0x7529C26B;
  LODWORD(STACK[0x1FF0]) = ((v84 & (v82 & 0x4CE29743 ^ 0xD187ADC7)) >> a5) + (((v82 & 0x4CE29743 ^ 0xD187ADC7) & v83) << v81);
  LODWORD(STACK[0x1FE8]) = ((v84 & (v82 & 0x66D329F ^ 0xE9347B3u)) >> a5) + (((v82 & 0x66D329F ^ 0xE9347B3) & v83) << v81);
  LODWORD(STACK[0x1FE0]) = ((v78 & (v76 & 0x6F84DB76 ^ 0xDF09B6EC)) >> v57) + ((v80 & (v76 & 0x6F84DB76 ^ 0xDF09B6EC)) << v68);
  LODWORD(STACK[0x1FD8]) = ((v80 & (v82 & 0x33048FEE ^ 0x45099C11)) << v68) + ((v84 & (v82 & 0x33048FEE ^ 0x45099C11u)) >> a5);
  LODWORD(STACK[0x1FD0]) = ((v78 & (v76 & 0x5AED6607 ^ 0xB5DACC0E)) >> v57) | ((v83 & (v76 & 0x5AED6607 ^ 0xB5DACC0E)) << v81);
  LODWORD(STACK[0x1F40]) = v76 & 0x3AA121F5 ^ 0x754243EA;
  LODWORD(STACK[0x1FC0]) = ((v80 & (v82 & 0x5348C81C ^ 0xE5D95035)) << v81) + ((v84 & (v82 & 0x5348C81C ^ 0xE5D95035)) >> v57);
  LODWORD(STACK[0x1F28]) = v76 & 0x55DD34D0 ^ 0xABBA69A1;
  LODWORD(STACK[0x1FB8]) = ((v78 & (v82 & 0x3C34DD39 ^ 0x50797B7A)) >> v57) | ((v80 & (v82 & 0x3C34DD39 ^ 0x50797B7A)) << v81);
  LODWORD(STACK[0x1FB0]) = ((v78 & (v76 & 0x286A2387 ^ 0x50D4470E)) >> a5) | ((v83 & (v76 & 0x286A2387 ^ 0x50D4470E)) << v68);
  LODWORD(STACK[0x1EF8]) = v76 & 0x26084D30 ^ 0x4C109A61;
  LODWORD(STACK[0x1FA8]) = ((v80 & (v82 & 0x3BF9B014 ^ 0x5CAAC02D)) << v81) | ((v84 & (v82 & 0x3BF9B014 ^ 0x5CAAC02Du)) >> v57);
  LODWORD(STACK[0x1FA0]) = ((v80 & (v82 & 0x359BDEA3 ^ 0x4A2C7FC6)) << v81) | ((v84 & (v82 & 0x359BDEA3 ^ 0x4A2C7FC6u)) >> v57);
  LODWORD(STACK[0x1ED0]) = v82 & 0x4C4E5C0E ^ 0xD0D6F810;
  LODWORD(STACK[0x1F90]) = ((v78 & (v76 & 0x5FDDCF9D ^ 0xBFBB9F3B)) >> v57) + ((v83 & (v76 & 0x5FDDCF9D ^ 0xBFBB9F3B)) << v81);
  LODWORD(STACK[0x1E90]) = v76 & 0x54DFC3C6 ^ 0xA9BF878D;
  v123 = v82 & 0x1FD72E9D ^ 0x34FD7FB6;
  LODWORD(STACK[0x1F88]) = ((v84 & (v82 & 0x474C5055 ^ 0xCDD0E0EE)) >> v57) + (((v82 & 0x474C5055 ^ 0xCDD0E0EE) & v83) << v81);
  LODWORD(STACK[0x1F80]) = ((v78 & (v76 & 0x3870893A ^ 0x70E11275)) >> a5) + ((v83 & (v76 & 0x3870893A ^ 0x70E11275)) << v68);
  LODWORD(STACK[0x1F68]) = ((v78 & (v76 & 0x12A83136 ^ 0x2550626C)) >> a5) + ((v80 & (v76 & 0x12A83136 ^ 0x2550626C)) << v68);
  LODWORD(STACK[0x1F60]) = ((v84 & (v82 & 0x350F9691 ^ 0x4B14AFA3u)) >> v57) + (((v82 & 0x350F9691 ^ 0x4B14AFA3) & v83) << v81);
  LODWORD(STACK[0x1F58]) = ((v84 & (v76 & 0x332AD95 ^ 0x6655B2Bu)) >> v57) + ((v83 & (v76 & 0x332AD95 ^ 0x6655B2B)) << v68);
  LODWORD(STACK[0x1F50]) = ((v80 & (v82 & 0x24950A32 ^ 0x693B1664)) << v81) + ((v78 & (v82 & 0x24950A32 ^ 0x693B1664)) >> a5);
  LODWORD(STACK[0x1F48]) = ((v78 & (v82 & 0x4E30086E ^ 0xD6701091)) >> v57) + ((v80 & (v82 & 0x4E30086E ^ 0xD6701091)) << v68);
  LODWORD(STACK[0x1F38]) = ((v84 & (v82 & 0x3E9D76FA ^ 0x57238F3Du)) >> v57) | (((v82 & 0x3E9D76FA ^ 0x57238F3D) & v83) << v68);
  LODWORD(STACK[0x1F30]) = ((v80 & (v76 & 0x3211FA76 ^ 0x6423F4EC)) << v81) + ((v78 & (v76 & 0x3211FA76 ^ 0x6423F4EC)) >> a5);
  LODWORD(STACK[0x1F18]) = ((v80 & (v82 & 0x54A72D69 ^ 0xE94D7B9A)) << v81) ^ (((v78 & (v76 & 0x582BA1E5 ^ 0xB05743CB)) >> a5) | ((v83 & (v76 & 0x582BA1E5 ^ 0xB05743CB)) << v68)) ^ ((v84 & (v82 & 0x54A72D69 ^ 0xE94D7B9A)) >> v57);
  LODWORD(STACK[0x1F08]) = ((v80 & (v76 & 0x5C6D8AD5 ^ 0xB8DB15AB)) << v81) | ((v78 & (v76 & 0x5C6D8AD5 ^ 0xB8DB15AB)) >> a5);
  LODWORD(STACK[0x1F00]) = ((v84 & (v82 & 0x50E10659 ^ 0xE1830EFA)) >> v57) + (((v82 & 0x50E10659 ^ 0xE1830EFA) & v83) << v68);
  LODWORD(v115) = v76 & 0x4A8434EB ^ 0x950869D7;
  LODWORD(STACK[0x1DA8]) = v82 & 0x549A2AF5 ^ 0xE92E772F;
  LODWORD(STACK[0x1EF0]) = ((v78 & (v76 & 0x9107C66 ^ 0x1220F8CD)) >> v57) | ((v83 & (v76 & 0x9107C66 ^ 0x1220F8CD)) << v81);
  LODWORD(STACK[0x1EE0]) = ((v80 & (v82 & 0x170E6278 ^ 0x2D16A6B9)) << v68) + ((v84 & (v82 & 0x170E6278 ^ 0x2D16A6B9u)) >> a5);
  LODWORD(STACK[0x1E88]) = ((v84 & (v76 & 0x2748B737 ^ 0x4E916E6Eu)) >> v57) | ((v83 & (v76 & 0x2748B737 ^ 0x4E916E6E)) << v81);
  LODWORD(v120) = (LODWORD(STACK[0x1AA8]) >> 1) & 0x6A01E2E4;
  LODWORD(STACK[0x1ED8]) = ((v80 & (v76 & 0x741FFCFA ^ 0xE83FF9F5)) << v81) + ((v78 & (v76 & 0x741FFCFA ^ 0xE83FF9F5)) >> a5);
  LODWORD(STACK[0x1E98]) = ((v84 & (v120 ^ 0xBE02270D)) >> v57) | (((v120 ^ 0xBE02270D) & v83) << v68);
  LODWORD(v119) = v82 & 0x1C00592 ^ 0x2C00AA5;
  STACK[0x1D88] = (v84 & v119) >> v57;
  LODWORD(v87) = v82 & 0x76A1A038 ^ 0x8F42E078;
  STACK[0x1D90] = (v84 & v87) >> v57;
  STACK[0x1DC0] = (v84 & v114) >> v57;
  LODWORD(v102) = v76 & 0x779E0BE3 ^ 0xEF3C17C6;
  STACK[0x1DB0] = (v84 & v102) >> v57;
  STACK[0x1E10] = (v78 & v122) >> v57;
  STACK[0x1E58] = (v84 & v123) >> v57;
  STACK[0x1E68] = (v84 & v115) >> v57;
  LODWORD(v111) = v76 & 0x37373CB0 ^ 0x6E6E7960;
  LODWORD(STACK[0x2280]) = ((v78 & (v82 & 0x292922AE ^ 0x7B5B67D0)) >> v57) | ((v80 & (v82 & 0x292922AE ^ 0x7B5B67D0)) << v68);
  LODWORD(v99) = STACK[0x2000];
  v124 = STACK[0x1E48];
  STACK[0x1D48] = (STACK[0x1E48] & v83) << v81;
  STACK[0x1D50] = (v119 & v83) << v81;
  LODWORD(v119) = STACK[0x2090];
  STACK[0x1D60] = (v80 & STACK[0x2090]) << v81;
  STACK[0x1DA0] = (v70 & v83) << v81;
  STACK[0x1D78] = (v116 & v83) << v81;
  STACK[0x1DB8] = (v121 & v83) << v81;
  STACK[0x1E28] = (v80 & v123) << v81;
  v125 = v76 & 0x6997AFC9 ^ 0xD32F5F92;
  STACK[0x1E50] = (v83 & v125) << v81;
  STACK[0x1E60] = (v83 & v115) << v81;
  STACK[0x1EC8] = (v83 & v111) << v81;
  LODWORD(STACK[0x1D70]) = LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x20B8]) ^ LODWORD(STACK[0x1970]);
  LODWORD(STACK[0x1D68]) = (((v82 & 0x518E1A67 ^ 0xE216368B) & v83) << v68) ^ ((v78 & v99) >> a5) ^ ((v80 & v99) << v81) ^ ((v84 & (v82 & 0x518E1A67 ^ 0xE216368B)) >> v57) ^ LODWORD(STACK[0x1F10]);
  v126 = v82 & 0x2BC43BBB ^ 0x7CC854FF;
  v127 = v84 & v124;
  v128 = (v87 & v83) << v68;
  LODWORD(v120) = STACK[0x2050];
  LODWORD(STACK[0x1D40]) = (v80 & STACK[0x2050]) << v68;
  LODWORD(v81) = (v80 & v114) << v68;
  LODWORD(v103) = (v80 & v102) << v68;
  v129 = v84 & STACK[0x1F98];
  LODWORD(STACK[0x1E48]) = (v80 & STACK[0x1F98]) << v68;
  LODWORD(STACK[0x1F10]) = (v80 & v122) << v68;
  LODWORD(v87) = STACK[0x1F40];
  LODWORD(STACK[0x1F78]) = (v83 & STACK[0x1F40]) << v68;
  LODWORD(v115) = STACK[0x1F28];
  LODWORD(STACK[0x1F98]) = (v83 & STACK[0x1F28]) << v68;
  v130 = v84 & v115;
  LODWORD(v106) = STACK[0x1EF8];
  LODWORD(STACK[0x2050]) = (v83 & STACK[0x1EF8]) << v68;
  v131 = v84 & v125;
  v132 = v84 & v111;
  LODWORD(v102) = v84 & STACK[0x1ED0];
  v133 = (v80 & STACK[0x1ED0]) << v68;
  LODWORD(v99) = STACK[0x1E90];
  LODWORD(STACK[0x2000]) = (v80 & STACK[0x1E90]) << v68;
  v134 = STACK[0x1DA8];
  LODWORD(STACK[0x20C0]) = (v80 & STACK[0x1DA8]) << v68;
  v135 = (v80 & v126) << v68;
  LODWORD(v111) = v78 & v106;
  LODWORD(v106) = v78 & v99;
  LODWORD(v99) = v127 >> a5;
  v136 = (v78 & v119) >> a5;
  v137 = (v84 & v120) >> a5;
  v138 = (v78 & STACK[0x2080]) >> a5;
  LODWORD(v68) = (v70 & v78) >> a5;
  LODWORD(v119) = (v121 & v78) >> a5;
  LODWORD(v115) = v129 >> a5;
  LODWORD(v87) = (v78 & v87) >> a5;
  v139 = v130 >> a5;
  LODWORD(STACK[0x1FC8]) = v111 >> a5;
  LODWORD(STACK[0x2080]) = v102 >> a5;
  LODWORD(v111) = v106 >> a5;
  LODWORD(STACK[0x2090]) = v131 >> a5;
  v140 = (v78 & v134) >> a5;
  LODWORD(v70) = v132 >> a5;
  LODWORD(STACK[0x20B8]) = ((v78 & v126) >> a5) | v135;
  LODWORD(STACK[0x2100]) ^= LODWORD(STACK[0x20F8]) ^ LODWORD(STACK[0x22E0]);
  LODWORD(v120) = STACK[0x1D48] ^ v99 ^ LODWORD(STACK[0x20F0]) ^ STACK[0x1F20];
  v141 = STACK[0x1E78];
  v142 = STACK[0x2240];
  LODWORD(STACK[0x22E0]) = LODWORD(STACK[0x20E0]) ^ LODWORD(STACK[0x20E8]) ^ LODWORD(STACK[0x22C0]) ^ 0xA09D1275 ^ (LODWORD(STACK[0x2240]) | LODWORD(STACK[0x1E78]));
  v143 = STACK[0x1DD0];
  v144 = STACK[0x1EA8];
  LODWORD(STACK[0x22C0]) = STACK[0x1D88] ^ STACK[0x1D50] ^ LODWORD(STACK[0x20D8]) ^ LODWORD(STACK[0x21C0]) ^ 0xA09D1275 ^ (STACK[0x1EA8] + LODWORD(STACK[0x1DD0]));
  LODWORD(STACK[0x22D0]) = v128 ^ v136 ^ STACK[0x1D60] ^ STACK[0x1D90] ^ STACK[0x22D0] ^ 0xA09D1275 ^ LODWORD(STACK[0x1D58]);
  LODWORD(v102) = LODWORD(STACK[0x20C8]) ^ LODWORD(STACK[0x20D0]) ^ LODWORD(STACK[0x22A0]);
  LODWORD(v106) = v137 ^ LODWORD(STACK[0x1D40]) ^ LODWORD(STACK[0x20A8]) ^ LODWORD(STACK[0x22A8]);
  v145 = STACK[0x1EA0];
  LODWORD(v99) = LODWORD(STACK[0x1EA0]) + STACK[0x1EB0];
  LODWORD(STACK[0x22A0]) = v120 ^ 0x9A481321 ^ v99;
  LODWORD(STACK[0x22A8]) = v106 ^ 0xD1566531 ^ v99;
  LODWORD(v120) = STACK[0x1DB0] ^ STACK[0x1D78] ^ v103 ^ ((v78 & v116) >> a5) ^ LODWORD(STACK[0x2228]);
  LODWORD(v106) = LODWORD(STACK[0x20B0]) ^ v138 ^ STACK[0x20A0] ^ LODWORD(STACK[0x22B8]);
  v146 = STACK[0x1DC8];
  v147 = STACK[0x1E00];
  LODWORD(STACK[0x21C0]) = LODWORD(STACK[0x1D70]) ^ 0x9A481321 ^ (STACK[0x1E00] | STACK[0x1DC8]);
  LODWORD(STACK[0x2228]) = v106 ^ 0xD1566531 ^ (v147 | v146);
  LODWORD(v106) = v81 ^ STACK[0x1DC0] ^ v68 ^ STACK[0x1DA0] ^ STACK[0x2298];
  v148 = STACK[0x1DD8];
  LODWORD(STACK[0x20F8]) = LODWORD(STACK[0x1D68]) ^ 0x9A481321 ^ LODWORD(STACK[0x1DD8]);
  LODWORD(STACK[0x20F0]) = v106 ^ v148;
  v149 = STACK[0x1DF8];
  LODWORD(STACK[0x22B8]) = LODWORD(STACK[0x2098]) ^ LODWORD(STACK[0x22B0]) ^ 0x768710FD ^ (v144 | LODWORD(STACK[0x1DF8]));
  v150 = STACK[0x1E70];
  LODWORD(STACK[0x22B0]) = LODWORD(STACK[0x2088]) ^ LODWORD(STACK[0x2078]) ^ LODWORD(STACK[0x2270]) ^ 0x768710FD ^ (v147 + STACK[0x1E70]);
  LODWORD(STACK[0x2298]) = LODWORD(STACK[0x2070]) ^ LODWORD(STACK[0x2068]) ^ STACK[0x21B8] ^ 0x768710FD ^ (v149 + LODWORD(STACK[0x15F8]));
  v151 = STACK[0x1E40];
  LODWORD(STACK[0x2270]) = LODWORD(STACK[0x2060]) ^ LODWORD(STACK[0x2058]) ^ LODWORD(STACK[0x1E40]) ^ v141 ^ LODWORD(STACK[0x21F0]);
  LODWORD(v99) = STACK[0x1CC0];
  v152 = STACK[0x1EB8];
  LODWORD(STACK[0x2238]) ^= v119 ^ LODWORD(STACK[0x2048]) ^ STACK[0x1DB8] ^ LODWORD(STACK[0x1CC0]) ^ 0x6F118876 ^ (v143 | STACK[0x1EB8]);
  LODWORD(STACK[0x2288]) ^= LODWORD(STACK[0x2040]) ^ LODWORD(STACK[0x2038]) ^ 0x6F118876 ^ LODWORD(STACK[0x1DE0]);
  v153 = STACK[0x1BD0];
  LODWORD(STACK[0x21F0]) = LODWORD(STACK[0x2028]) ^ LODWORD(STACK[0x2030]) ^ STACK[0x2278] ^ 0x6F118876 ^ (STACK[0x1BD0] | v150);
  LODWORD(v119) = LODWORD(STACK[0x2020]) ^ LODWORD(STACK[0x2018]) ^ LODWORD(STACK[0x2208]);
  LODWORD(STACK[0x2240]) = v120 ^ 0x768710FD ^ v147 ^ v142;
  LODWORD(STACK[0x2278]) = v119 ^ 0xA47FDA3B ^ v147 ^ v142;
  v154 = v99;
  v155 = v102 ^ 0xA09D1275 ^ v144 ^ v149;
  LODWORD(STACK[0x2208]) = v115 ^ LODWORD(STACK[0x1E48]) ^ v99 ^ LODWORD(STACK[0x2010]) ^ LODWORD(STACK[0x21B0]) ^ 0xA47FDA3B ^ v144 ^ v149;
  LODWORD(v106) = LODWORD(STACK[0x1FF8]) ^ LODWORD(STACK[0x2008]) ^ LODWORD(STACK[0x2200]);
  LODWORD(v99) = LODWORD(STACK[0x1FF0]) ^ LODWORD(STACK[0x1F10]) ^ STACK[0x1E10] ^ v153 ^ STACK[0x2210];
  LODWORD(v120) = LODWORD(STACK[0x1FD8]) ^ v154 ^ LODWORD(STACK[0x1FD0]) ^ v141 ^ LODWORD(STACK[0x2218]);
  LODWORD(STACK[0x2218]) = LODWORD(STACK[0x1FE8]) ^ LODWORD(STACK[0x1FE0]) ^ LODWORD(STACK[0x21A8]) ^ 0x8F08348C ^ LODWORD(STACK[0x1DF0]);
  LODWORD(v87) = LODWORD(STACK[0x1F78]) ^ v87 ^ LODWORD(STACK[0x1FC0]) ^ LODWORD(STACK[0x21D8]);
  LODWORD(v115) = v146 + LODWORD(STACK[0x1D28]);
  LODWORD(STACK[0x2200]) = v99 ^ v146;
  LODWORD(STACK[0x2210]) = v87 ^ 0x8F08348C ^ (v153 | v146);
  LODWORD(v102) = STACK[0x1EC0];
  LODWORD(STACK[0x21E8]) = LODWORD(STACK[0x1F98]) ^ v139 ^ LODWORD(STACK[0x1FB8]) ^ STACK[0x21E8] ^ 0x8F08348C ^ (v145 | LODWORD(STACK[0x1EC0]));
  LODWORD(STACK[0x2258]) ^= LODWORD(STACK[0x1FB0]) ^ LODWORD(STACK[0x1FA8]) ^ 0xB749AA18 ^ LODWORD(STACK[0x1DE8]);
  LODWORD(STACK[0x21D8]) = LODWORD(STACK[0x1F88]) ^ LODWORD(STACK[0x2000]) ^ v111 ^ STACK[0x21A0] ^ 0xB749AA18 ^ (v144 + v102);
  v156 = v106 ^ 0xA47FDA3B ^ LODWORD(STACK[0x1E38]);
  LODWORD(STACK[0x21F8]) ^= LODWORD(STACK[0x2050]) ^ LODWORD(STACK[0x1FC8]) ^ v154 ^ LODWORD(STACK[0x1FA0]) ^ 0xB749AA18 ^ LODWORD(STACK[0x1E38]);
  LODWORD(STACK[0x21B8]) = LODWORD(STACK[0x1F80]) ^ STACK[0x1E28] ^ STACK[0x1E58] ^ v149 ^ v152 ^ 0x683F69B4 ^ LODWORD(STACK[0x2170]);
  LODWORD(v87) = LODWORD(STACK[0x2080]) ^ v133 ^ v154 ^ LODWORD(STACK[0x1F90]) ^ LODWORD(STACK[0x2220]);
  LODWORD(STACK[0x2220]) = LODWORD(STACK[0x1F60]) ^ LODWORD(STACK[0x1F68]) ^ (v147 | v151) ^ 0xEE191CEE ^ LODWORD(STACK[0x2180]);
  LODWORD(STACK[0x21A8]) = v120 ^ v150;
  v157 = LODWORD(STACK[0x1F58]) ^ LODWORD(STACK[0x1F50]) ^ (v150 + v141) ^ 0x683F69B4 ^ LODWORD(STACK[0x2198]);
  LODWORD(STACK[0x21B0]) = LODWORD(STACK[0x1F38]) ^ LODWORD(STACK[0x1F30]) ^ (v152 | v102) ^ 0x79E546E0 ^ LODWORD(STACK[0x2128]);
  v158 = STACK[0x1E50] ^ LODWORD(STACK[0x2090]) ^ LODWORD(STACK[0x1F48]) ^ LODWORD(STACK[0x1E30]) ^ 0x683F69B4 ^ STACK[0x2190];
  LODWORD(STACK[0x21A0]) = LODWORD(STACK[0x1E88]) ^ LODWORD(STACK[0x20B8]) ^ v153 ^ v151 ^ 0x79E546E0 ^ LODWORD(STACK[0x2110]);
  v159 = v87 ^ 0xB749AA18 ^ LODWORD(STACK[0x1E80]);
  v160 = LODWORD(STACK[0x1F18]) ^ LODWORD(STACK[0x1E80]) ^ LODWORD(STACK[0x2118]);
  LODWORD(STACK[0x2198]) = LODWORD(STACK[0x1F00]) ^ LODWORD(STACK[0x1F08]) ^ v102 ^ v144 ^ 0x79E546E0 ^ STACK[0x2120];
  LODWORD(STACK[0x2190]) = STACK[0x1E68] ^ STACK[0x1E60] ^ LODWORD(STACK[0x20C0]) ^ v140 ^ LODWORD(STACK[0x1E08]) ^ 0x48786B37 ^ LODWORD(STACK[0x2160]);
  v161 = STACK[0x1EC8] ^ LODWORD(STACK[0x2188]) ^ v70 ^ v154 ^ LODWORD(STACK[0x2280]) ^ v102 ^ v152 ^ LODWORD(STACK[0x2168]);
  LODWORD(v120) = LODWORD(STACK[0x1E98]) ^ LODWORD(STACK[0x1ED8]) ^ v153 ^ v151 ^ LODWORD(STACK[0x2290]);
  LODWORD(v111) = STACK[0x2268];
  LODWORD(STACK[0x2290]) = LODWORD(STACK[0x1E18]) ^ LODWORD(STACK[0x1EE0]) ^ LODWORD(STACK[0x1EF0]) ^ v154 ^ v115 ^ 0xA3A2975 ^ LODWORD(STACK[0x2268]);
  v162 = v120 ^ 0x48786B37 ^ v111;
  v163 = STACK[0x20F0];
  v164 = LODWORD(STACK[0x20F0]) - 1472968169 + (v160 ^ STACK[0x1B78] ^ v161);
  v165 = LODWORD(STACK[0x2100]) ^ 0x9A481321 ^ v115;
  v166 = (LODWORD(STACK[0x2108]) ^ LODWORD(STACK[0x1980]) ^ v115) - ((2 * (LODWORD(STACK[0x2108]) ^ LODWORD(STACK[0x1980]) ^ v115)) & 0xA2ACCA62);
  LODWORD(STACK[0x20C0]) = v164;
  v167 = STACK[0x21C0];
  v168 = STACK[0x20F8];
  if (v164)
  {
    v169 = STACK[0x20F8];
  }

  else
  {
    v169 = STACK[0x21C0];
  }

  LODWORD(STACK[0x2268]) = v169;
  if (v164)
  {
    v168 = v165;
  }

  LODWORD(STACK[0x2170]) = v168;
  v170 = STACK[0x22A0];
  if (v164)
  {
    v171 = v167;
  }

  else
  {
    v171 = STACK[0x22A0];
  }

  if ((v164 & 1) == 0)
  {
    v170 = v165;
  }

  LODWORD(STACK[0x21C0]) = v170;
  v172 = v163 ^ 0xD1566531;
  v173 = STACK[0x22A8];
  v174 = STACK[0x2228];
  if (v164)
  {
    v175 = STACK[0x2228];
  }

  else
  {
    v175 = STACK[0x22A8];
  }

  LODWORD(STACK[0x2280]) = v175;
  if (v164)
  {
    v174 = v172;
  }

  LODWORD(STACK[0x2180]) = v174;
  v176 = v166 - 782867151;
  if ((v164 & 1) == 0)
  {
    v173 = v176;
  }

  LODWORD(STACK[0x2160]) = v173;
  if ((v164 & 1) == 0)
  {
    v176 = v172;
  }

  LODWORD(STACK[0x2188]) = v176;
  if (v164)
  {
    v177 = STACK[0x22D0];
  }

  else
  {
    v177 = v155;
  }

  if (v164)
  {
    v178 = v155;
  }

  else
  {
    v178 = STACK[0x22C0];
  }

  if (v164)
  {
    v179 = STACK[0x22C0];
  }

  else
  {
    v179 = STACK[0x22E0];
  }

  if (v164)
  {
    v180 = STACK[0x22E0];
  }

  else
  {
    v180 = STACK[0x22D0];
  }

  v181 = LODWORD(STACK[0x2270]) ^ 0x6F118876;
  v182 = STACK[0x2238];
  if (v164)
  {
    v183 = STACK[0x2238];
  }

  else
  {
    v183 = LODWORD(STACK[0x2270]) ^ 0x6F118876;
  }

  LODWORD(STACK[0x22A8]) = v183;
  v184 = STACK[0x21F0];
  if (v164)
  {
    v185 = v181;
  }

  else
  {
    v185 = STACK[0x21F0];
  }

  LODWORD(STACK[0x2270]) = v185;
  v186 = STACK[0x2288];
  if (v164)
  {
    v187 = v184;
  }

  else
  {
    v187 = STACK[0x2288];
  }

  LODWORD(STACK[0x21F0]) = v187;
  if (v164)
  {
    v188 = v186;
  }

  else
  {
    v188 = v182;
  }

  LODWORD(STACK[0x2288]) = v188;
  if (v164)
  {
    v189 = STACK[0x22B0];
  }

  else
  {
    v189 = STACK[0x22B8];
  }

  if (v164)
  {
    v190 = STACK[0x2298];
  }

  else
  {
    v190 = STACK[0x22B0];
  }

  if (v164)
  {
    v191 = STACK[0x2240];
  }

  else
  {
    v191 = STACK[0x2298];
  }

  if (v164)
  {
    v192 = STACK[0x22B8];
  }

  else
  {
    v192 = STACK[0x2240];
  }

  v193 = LODWORD(STACK[0x2200]) ^ 0xA47FDA3B;
  v194 = STACK[0x2278];
  v195 = STACK[0x2208];
  if (v164)
  {
    v196 = STACK[0x2208];
  }

  else
  {
    v196 = STACK[0x2278];
  }

  LODWORD(STACK[0x2200]) = v196;
  if (v164)
  {
    v197 = v156;
  }

  else
  {
    v197 = v195;
  }

  if (v164)
  {
    v198 = v194;
  }

  else
  {
    v198 = v193;
  }

  if (v164)
  {
    v199 = v193;
  }

  else
  {
    v199 = v156;
  }

  v200 = LODWORD(STACK[0x21A8]) ^ 0x8F08348C;
  v201 = STACK[0x2218];
  v202 = STACK[0x21E8];
  if (v164)
  {
    v203 = STACK[0x2218];
  }

  else
  {
    v203 = STACK[0x21E8];
  }

  LODWORD(STACK[0x2168]) = v203;
  if (v164)
  {
    v204 = v200;
  }

  else
  {
    v204 = v201;
  }

  if (v164)
  {
    v205 = v202;
  }

  else
  {
    v205 = STACK[0x2210];
  }

  if (v164)
  {
    v206 = STACK[0x2210];
  }

  else
  {
    v206 = v200;
  }

  if (v164)
  {
    v207 = STACK[0x21F8];
  }

  else
  {
    v207 = STACK[0x2258];
  }

  if (v164)
  {
    v208 = STACK[0x2258];
  }

  else
  {
    v208 = STACK[0x21D8];
  }

  if (v164)
  {
    v209 = v159;
  }

  else
  {
    v209 = STACK[0x21F8];
  }

  if (v164)
  {
    v210 = STACK[0x21D8];
  }

  else
  {
    v210 = v159;
  }

  if (v164)
  {
    v211 = v158;
  }

  else
  {
    v211 = v157;
  }

  LODWORD(STACK[0x2120]) = v211;
  v212 = STACK[0x2220];
  if (v164)
  {
    v213 = v157;
  }

  else
  {
    v213 = STACK[0x2220];
  }

  LODWORD(STACK[0x2218]) = v213;
  v214 = STACK[0x21B8];
  if (v164)
  {
    v215 = STACK[0x21B8];
  }

  else
  {
    v215 = v158;
  }

  LODWORD(STACK[0x2208]) = v215;
  if (v164)
  {
    v216 = v212;
  }

  else
  {
    v216 = v214;
  }

  v217 = v160 ^ 0x79E546E0;
  v218 = STACK[0x21A0];
  if (v164)
  {
    v219 = v160 ^ 0x79E546E0;
  }

  else
  {
    v219 = STACK[0x21A0];
  }

  LODWORD(STACK[0x2228]) = v219;
  v220 = STACK[0x2198];
  if (v164)
  {
    v221 = STACK[0x2198];
  }

  else
  {
    v221 = v217;
  }

  if (v164)
  {
    v222 = v218;
  }

  else
  {
    v222 = STACK[0x21B0];
  }

  if (v164)
  {
    v220 = STACK[0x21B0];
  }

  v223 = v161 ^ 0x48786B37;
  if (v164)
  {
    v224 = v161 ^ 0x48786B37;
  }

  else
  {
    v224 = v162;
  }

  if (v164)
  {
    v225 = v162;
  }

  else
  {
    v225 = STACK[0x2290];
  }

  v226 = STACK[0x2190];
  if (v164)
  {
    v223 = STACK[0x2190];
    v226 = STACK[0x2290];
  }

  v227 = (v164 & 2) == 0;
  v228 = STACK[0x2170];
  if ((v164 & 2) != 0)
  {
    v229 = v171;
  }

  else
  {
    v229 = STACK[0x2170];
  }

  LODWORD(STACK[0x2220]) = v229;
  if (v227)
  {
    v230 = v171;
  }

  else
  {
    v230 = v228;
  }

  LODWORD(STACK[0x22A0]) = v230;
  if (v227)
  {
    v231 = v179;
  }

  else
  {
    v231 = v177;
  }

  LODWORD(STACK[0x2210]) = v231;
  if (v227)
  {
    v232 = v177;
  }

  else
  {
    v232 = v179;
  }

  LODWORD(STACK[0x22D0]) = v232;
  v233 = STACK[0x2268];
  v234 = STACK[0x21C0];
  if (v227)
  {
    v235 = STACK[0x21C0];
  }

  else
  {
    v235 = STACK[0x2268];
  }

  LODWORD(STACK[0x2278]) = v235;
  if (v227)
  {
    v236 = v233;
  }

  else
  {
    v236 = v234;
  }

  LODWORD(STACK[0x22C0]) = v236;
  v237 = STACK[0x2180];
  v238 = STACK[0x2160];
  if (v227)
  {
    v239 = STACK[0x2160];
  }

  else
  {
    v239 = STACK[0x2180];
  }

  LODWORD(STACK[0x21F8]) = v239;
  if (v227)
  {
    v240 = v237;
  }

  else
  {
    v240 = v238;
  }

  LODWORD(STACK[0x2198]) = v240;
  if (v227)
  {
    v241 = v180;
  }

  else
  {
    v241 = v178;
  }

  LODWORD(STACK[0x2298]) = v241;
  if (v227)
  {
    v242 = v178;
  }

  else
  {
    v242 = v180;
  }

  LODWORD(STACK[0x2258]) = v242;
  v243 = STACK[0x2280];
  v244 = STACK[0x2188];
  if (v227)
  {
    v245 = STACK[0x2188];
  }

  else
  {
    v245 = STACK[0x2280];
  }

  LODWORD(STACK[0x2128]) = v245;
  if (!v227)
  {
    v243 = v244;
  }

  LODWORD(STACK[0x2240]) = v243;
  if (v227)
  {
    v246 = v189;
  }

  else
  {
    v246 = v191;
  }

  LODWORD(STACK[0x22B0]) = v246;
  if (v227)
  {
    v247 = v191;
  }

  else
  {
    v247 = v189;
  }

  LODWORD(STACK[0x22E0]) = v247;
  if (v227)
  {
    v248 = v190;
  }

  else
  {
    v248 = v192;
  }

  LODWORD(STACK[0x22B8]) = v248;
  if (v227)
  {
    v249 = v192;
  }

  else
  {
    v249 = v190;
  }

  LODWORD(STACK[0x21C0]) = v249;
  v250 = STACK[0x22A8];
  v251 = STACK[0x21F0];
  if (v227)
  {
    v252 = STACK[0x21F0];
  }

  else
  {
    v252 = STACK[0x22A8];
  }

  LODWORD(STACK[0x2290]) = v252;
  if (v227)
  {
    v253 = v250;
  }

  else
  {
    v253 = v251;
  }

  LODWORD(STACK[0x21F0]) = v253;
  v254 = STACK[0x2270];
  v255 = STACK[0x2288];
  if (v227)
  {
    v256 = STACK[0x2288];
  }

  else
  {
    v256 = STACK[0x2270];
  }

  LODWORD(STACK[0x22A8]) = v256;
  if (v227)
  {
    v257 = v254;
  }

  else
  {
    v257 = v255;
  }

  LODWORD(STACK[0x2238]) = v257;
  if (v227)
  {
    v258 = v197;
  }

  else
  {
    v258 = v198;
  }

  LODWORD(STACK[0x21B8]) = v258;
  if (v227)
  {
    v259 = v198;
  }

  else
  {
    v259 = v197;
  }

  LODWORD(STACK[0x2268]) = v259;
  if (v227)
  {
    v260 = v205;
  }

  else
  {
    v260 = v204;
  }

  LODWORD(STACK[0x2190]) = v260;
  if (v227)
  {
    v261 = v204;
  }

  else
  {
    v261 = v205;
  }

  LODWORD(STACK[0x21A8]) = v261;
  v262 = STACK[0x2200];
  if (v227)
  {
    v263 = v199;
  }

  else
  {
    v263 = STACK[0x2200];
  }

  LODWORD(STACK[0x21A0]) = v263;
  if (v227)
  {
    v264 = v262;
  }

  else
  {
    v264 = v199;
  }

  LODWORD(STACK[0x2170]) = v264;
  if (v227)
  {
    v265 = v209;
  }

  else
  {
    v265 = v208;
  }

  LODWORD(STACK[0x21D8]) = v265;
  if (v227)
  {
    v266 = v208;
  }

  else
  {
    v266 = v209;
  }

  LODWORD(STACK[0x2288]) = v266;
  v267 = STACK[0x2168];
  if (v227)
  {
    v268 = STACK[0x2168];
  }

  else
  {
    v268 = v206;
  }

  LODWORD(STACK[0x2270]) = v268;
  if (v227)
  {
    v269 = v206;
  }

  else
  {
    v269 = v267;
  }

  LODWORD(STACK[0x21B0]) = v269;
  if (v227)
  {
    v270 = v207;
  }

  else
  {
    v270 = v210;
  }

  LODWORD(STACK[0x2118]) = v270;
  if (v227)
  {
    v271 = v210;
  }

  else
  {
    v271 = v207;
  }

  LODWORD(STACK[0x2180]) = v271;
  v272 = STACK[0x2120];
  if (v227)
  {
    v273 = STACK[0x2120];
  }

  else
  {
    v273 = v216;
  }

  LODWORD(STACK[0x21E8]) = v273;
  if (v227)
  {
    v274 = v216;
  }

  else
  {
    v274 = v272;
  }

  LODWORD(STACK[0x20F8]) = v274;
  v275 = STACK[0x2218];
  v276 = STACK[0x2208];
  if (v227)
  {
    v277 = STACK[0x2208];
  }

  else
  {
    v277 = STACK[0x2218];
  }

  LODWORD(STACK[0x2160]) = v277;
  if (v227)
  {
    v278 = v275;
  }

  else
  {
    v278 = v276;
  }

  LODWORD(STACK[0x20F0]) = v278;
  if (v227)
  {
    v279 = v222;
  }

  else
  {
    v279 = v221;
  }

  LODWORD(STACK[0x2168]) = v279;
  if (v227)
  {
    v280 = v221;
  }

  else
  {
    v280 = v222;
  }

  LODWORD(STACK[0x2188]) = v280;
  if (v227)
  {
    v281 = v225;
  }

  else
  {
    v281 = v223;
  }

  LODWORD(STACK[0x2218]) = v281;
  if (v227)
  {
    v282 = v223;
  }

  else
  {
    v282 = v225;
  }

  LODWORD(STACK[0x2100]) = v282;
  v283 = STACK[0x2228];
  if (v227)
  {
    v284 = v220;
  }

  else
  {
    v284 = STACK[0x2228];
  }

  LODWORD(STACK[0x2208]) = v284;
  if (v227)
  {
    v285 = v283;
  }

  else
  {
    v285 = v220;
  }

  LODWORD(STACK[0x2200]) = v285;
  if (v227)
  {
    v286 = v226;
  }

  else
  {
    v286 = v224;
  }

  LODWORD(STACK[0x2280]) = v286;
  if (v227)
  {
    v287 = v224;
  }

  else
  {
    v287 = v226;
  }

  LODWORD(STACK[0x2120]) = v287;
  v288 = STACK[0x2248];
  v289 = STACK[0x12C0];
  v290 = STACK[0x1A18];
  v291 = LODWORD(STACK[0x1CB8]) ^ LODWORD(STACK[0x2230]);
  v292 = STACK[0x1760];
  v293 = STACK[0xFE4];
  v294 = STACK[0x15C0];
  v295 = STACK[0x1EE8];
  v296 = STACK[0x1850];
  v297 = STACK[0x1798];
  v298 = STACK[0x21E0];
  v299 = STACK[0x2130];
  v300 = STACK[0x1A74];
  v301 = STACK[0x1028];
  v302 = STACK[0x2178];
  v303 = STACK[0x2250];
  v304 = STACK[0x2138];
  v305 = STACK[0x1BF0];
  v306 = STACK[0x2260];
  v307 = STACK[0x1618];
  v308 = STACK[0x22C8];
  v309 = v291 ^ LODWORD(STACK[0x1760]) ^ LODWORD(STACK[0x1640]) ^ LODWORD(STACK[0x2248]) ^ v290 ^ LODWORD(STACK[0x12C0]) ^ LODWORD(STACK[0x15C0]) ^ LODWORD(STACK[0xFE4]) ^ LODWORD(STACK[0x1EE8]) ^ LODWORD(STACK[0x1850]) ^ LODWORD(STACK[0x1798]) ^ LODWORD(STACK[0x21E0]) ^ LODWORD(STACK[0x2130]) ^ LODWORD(STACK[0x1A74]) ^ LODWORD(STACK[0x1028]) ^ LODWORD(STACK[0x2250]) ^ LODWORD(STACK[0x2178]) ^ LODWORD(STACK[0x2138]) ^ LODWORD(STACK[0x1BF0]) ^ LODWORD(STACK[0x1954]) ^ LODWORD(STACK[0x1778]) ^ LODWORD(STACK[0x1BC0]) ^ LODWORD(STACK[0x1994]) ^ LODWORD(STACK[0x1B18]) ^ LODWORD(STACK[0x12BC]) ^ LODWORD(STACK[0x16F0]) ^ LODWORD(STACK[0x17A0]) ^ LODWORD(STACK[0x2260]) ^ LODWORD(STACK[0x1AD4]) ^ LODWORD(STACK[0x1BA4]) ^ LODWORD(STACK[0x1344]) ^ LODWORD(STACK[0x1618]) ^ LODWORD(STACK[0x22C8]) ^ LODWORD(STACK[0x19D4]) ^ LODWORD(STACK[0x1B70]) ^ LODWORD(STACK[0x1A2C]);
  v310 = LODWORD(STACK[0x1B10]) ^ 0x1A1ACF30;
  LODWORD(STACK[0x20E8]) = v310;
  v311 = LODWORD(STACK[0x21C8]) ^ 0x524A07B1;
  LODWORD(STACK[0x2108]) = v311;
  LODWORD(STACK[0x2228]) = v309 ^ LODWORD(STACK[0x17D0]) ^ LODWORD(STACK[0x22E8]) ^ LODWORD(STACK[0x1718]) ^ LODWORD(STACK[0x1AD8]) ^ LODWORD(STACK[0xD5C]) ^ v311 ^ v310;
  v312 = (v308 - ((2 * v308) & 0xD07ED368) + 1748986292) ^ v307 ^ v278;
  v313 = v274 ^ v299 ^ (v312 - ((2 * v312) & 0xD07ED368) + 1748986292);
  v314 = v245 ^ v298 ^ (v313 - ((2 * v313) & 0xA2ACCA62) - 782867151);
  v315 = (v314 - ((2 * v314) & 0xA2ACCA62) - 782867151) ^ LODWORD(STACK[0x21F8]);
  v316 = v291 ^ LODWORD(STACK[0x22C0]) ^ (v315 - ((2 * v315) & 0x34902642) - 1706552543);
  v317 = LODWORD(STACK[0x2220]) ^ v292 ^ (v316 - ((2 * v316) & 0x34902642) - 1706552543);
  v318 = LODWORD(STACK[0x2278]) ^ v294 ^ (v317 - ((2 * v317) & 0x34902642) - 1706552543);
  v319 = LODWORD(STACK[0x22A0]) ^ v293 ^ (v318 - ((2 * v318) & 0x34902642) - 1706552543);
  v320 = LODWORD(STACK[0x2210]) ^ v295 ^ (v319 - ((2 * v319) & 0x413A24EA) - 1600318859);
  v321 = LODWORD(STACK[0x2258]) ^ v296 ^ (v320 - ((2 * v320) & 0x413A24EA) - 1600318859);
  v322 = LODWORD(STACK[0x22D0]) ^ v297 ^ (v321 - 1600318859 + (~(2 * v321) | 0xBEC5DB15) + 1);
  v323 = STACK[0x2298];
  v324 = LODWORD(STACK[0x2298]) ^ v290 ^ (v322 - ((2 * v322) & 0x413A24EA) - 1600318859);
  v325 = LODWORD(STACK[0x2240]) ^ v289 ^ (v324 - ((2 * v324) & 0xA2ACCA62) - 782867151);
  v326 = LODWORD(STACK[0x2198]) ^ v300 ^ (v325 - ((2 * v325) & 0xA2ACCA62) - 782867151);
  v327 = LODWORD(STACK[0x21C0]) ^ v301 ^ (v326 - ((2 * v326) & 0xED0E21FA) + 1988563197);
  v328 = LODWORD(STACK[0x22B0]) ^ v303 ^ (v327 - ((2 * v327) & 0xED0E21FA) + 1988563197);
  v329 = LODWORD(STACK[0x22B8]) ^ v302 ^ (v328 - ((2 * v328) & 0xED0E21FA) + 1988563197);
  v330 = LODWORD(STACK[0x22E0]) ^ v304 ^ (v329 + 1988563197 + (~(2 * v329) | 0x12F1DE05) + 1);
  v331 = STACK[0x1640];
  v332 = LODWORD(STACK[0x21F0]) ^ LODWORD(STACK[0x1640]) ^ (v330 - ((2 * v330) & 0xDE2310EC) + 1863420022);
  v333 = LODWORD(STACK[0x22A8]) ^ v288 ^ (v332 - ((2 * v332) & 0xDE2310EC) + 1863420022);
  v334 = LODWORD(STACK[0x2290]) ^ v305 ^ (v333 - ((2 * v333) & 0xDE2310EC) + 1863420022);
  v335 = LODWORD(STACK[0x1778]) ^ LODWORD(STACK[0x1954]) ^ LODWORD(STACK[0x2238]) ^ (v334 - ((2 * v334) & 0xDE2310EC) + 1863420022);
  v336 = STACK[0x2170];
  v337 = (v335 - ((2 * v335) & 0x48FFB476) - 1535124933) ^ LODWORD(STACK[0x2170]);
  v338 = STACK[0x21B8];
  v339 = STACK[0x1BC0];
  v340 = LODWORD(STACK[0x21B8]) ^ LODWORD(STACK[0x1BC0]) ^ (v337 - 1535124933 + (~(2 * v337) | 0xB7004B89) + 1);
  v341 = LODWORD(STACK[0x21A0]) ^ LODWORD(STACK[0x1994]) ^ (v340 - ((2 * v340) & 0x48FFB476) - 1535124933);
  v342 = LODWORD(STACK[0x2268]) ^ LODWORD(STACK[0x1B18]) ^ (v341 - ((2 * v341) & 0x48FFB476) - 1535124933);
  v343 = STACK[0x12BC];
  v344 = LODWORD(STACK[0x21A8]) ^ LODWORD(STACK[0x12BC]) ^ (v342 - ((2 * v342) & 0x1E106918) - 1895287668);
  v345 = STACK[0x21B0];
  v346 = STACK[0x16F0];
  v347 = LODWORD(STACK[0x21B0]) ^ LODWORD(STACK[0x16F0]) ^ (v344 - ((2 * v344) & 0x1E106918) - 1895287668);
  v348 = STACK[0x2190];
  v349 = (v347 - ((2 * v347) & 0x1E106918) - 1895287668) ^ LODWORD(STACK[0x2190]);
  v350 = STACK[0x17A0];
  v351 = STACK[0x2270];
  v352 = v306 ^ LODWORD(STACK[0x17A0]) ^ LODWORD(STACK[0x1AD4]) ^ LODWORD(STACK[0x2270]);
  v353 = (LODWORD(STACK[0x2118]) ^ 0xB749AA18) + 1393451107;
  LODWORD(STACK[0x2110]) = v353;
  LODWORD(STACK[0x20E0]) = v353 - 1393451107;
  v354 = v352 ^ (v353 - 1393451107) ^ (v349 - ((2 * v349) & 0x1E106918) - 1895287668);
  v355 = LODWORD(STACK[0x21D8]) ^ LODWORD(STACK[0x1BA4]) ^ (v354 - ((2 * v354) & 0x6E935430) - 1219909096);
  v356 = STACK[0x2180];
  v357 = LODWORD(STACK[0x2180]) ^ LODWORD(STACK[0x1344]) ^ (v355 - ((2 * v355) & 0x6E935430) - 1219909096);
  v358 = STACK[0x19D4];
  v359 = LODWORD(STACK[0x2288]) ^ LODWORD(STACK[0x19D4]) ^ (v357 - ((2 * v357) & 0x6E935430) - 1219909096);
  v360 = STACK[0x1B70];
  v361 = LODWORD(STACK[0x21E8]) ^ LODWORD(STACK[0x1B70]) ^ (v359 - ((2 * v359) & 0xD07ED368) + 1748986292);
  v362 = STACK[0x2160];
  v363 = LODWORD(STACK[0x2160]) ^ LODWORD(STACK[0x20E8]) ^ (v361 - ((2 * v361) & 0xD07ED368) + 1748986292);
  v364 = STACK[0x2168];
  v365 = LODWORD(STACK[0x2168]) ^ LODWORD(STACK[0x2108]) ^ (v363 - ((2 * v363) & 0xF3CA8DC0) + 2045069024);
  v366 = STACK[0x1A2C];
  v367 = LODWORD(STACK[0x2200]) ^ LODWORD(STACK[0x1A2C]) ^ (v365 - ((2 * v365) & 0xF3CA8DC0) + 2045069024);
  v368 = STACK[0x17D0];
  v369 = STACK[0x2188];
  v370 = LODWORD(STACK[0x2188]) ^ LODWORD(STACK[0x17D0]) ^ (v367 - ((2 * v367) & 0xF3CA8DC0) + 2045069024);
  v371 = LODWORD(STACK[0x2208]) ^ LODWORD(STACK[0x22E8]) ^ (v370 - ((2 * v370) & 0xF3CA8DC0) + 2045069024);
  v372 = STACK[0x2280];
  v373 = STACK[0x1718];
  v374 = LODWORD(STACK[0x2280]) ^ LODWORD(STACK[0x1718]) ^ (v371 - ((2 * v371) & 0x90F0D66E) + 1215851319);
  v375 = LODWORD(STACK[0x2218]) ^ LODWORD(STACK[0x1AD8]) ^ (v374 - ((2 * v374) & 0x90F0D66E) + 1215851319);
  v376 = STACK[0x2120];
  v377 = LODWORD(STACK[0x2120]) ^ LODWORD(STACK[0xD5C]) ^ (v375 - ((2 * v375) & 0x90F0D66E) + 1215851319);
  LODWORD(STACK[0x20B0]) = v377 - ((2 * v377) & 0x90F0D66E);
  LODWORD(STACK[0x2118]) = v364 ^ 0x79E546E0;
  v378 = STACK[0x20C0];
  v379 = LODWORD(STACK[0x1EE8]) + (v338 ^ 0x5B8025C4) + ((v339 - v360 + LODWORD(STACK[0x20C0]) + (v364 ^ 0x79E546E0) + (v323 ^ 0x5F62ED8A) + 1831659714) ^ LODWORD(STACK[0x21E0])) + 1;
  v380 = LODWORD(STACK[0x22A0]) ^ LODWORD(STACK[0x1B10]) ^ (v379 - ((2 * v379) & 0x34902642) - 1706552543);
  v381 = LODWORD(STACK[0x2198]) ^ 0xD1566531;
  LODWORD(STACK[0x20E8]) = v381;
  LODWORD(STACK[0x20D0]) = v376 ^ 0x48786B37;
  v382 = v358 + LODWORD(STACK[0x1798]) + LODWORD(STACK[0x22C8]) - v350 + (v336 ^ 0x5B8025C4) + (v348 ^ 0x70F7CB73) + ((LODWORD(STACK[0x1850]) - v331 + (v372 ^ 0xB78794C8) + v381 + (v376 ^ 0x48786B37) + ((v380 - ((2 * v380) & 0xF3CA8DC0) + 2045069024) ^ v369) + 1) ^ LODWORD(STACK[0x2178])) + 2;
  v383 = LODWORD(STACK[0x21A0]) ^ 0xA47FDA3B;
  LODWORD(STACK[0x2120]) = v383;
  v384 = (((v382 - ((2 * v382) & 0x1E106918) - 1895287668) ^ v345) - v383) ^ v366;
  v385 = LODWORD(STACK[0x2228]) ^ 0x18D81A7C;
  LODWORD(STACK[0x21A0]) = v385;
  v386 = (LODWORD(STACK[0x20E0]) + v385 + ((v384 - ((2 * v384) & 0xDE2310EC) + 1863420022) ^ LODWORD(STACK[0x22A8]))) ^ v346;
  v387 = LODWORD(STACK[0x21A8]) ^ 0x8F08348C;
  LODWORD(STACK[0x20E0]) = v387;
  v388 = STACK[0x1760];
  v389 = LODWORD(STACK[0x1954]) ^ LODWORD(STACK[0x1A74]) ^ LODWORD(STACK[0x1760]) ^ (v373 + (v362 ^ 0x97C0964B) + ((v386 + v387 - ((2 * (v386 + v387)) & 0xED0E21FA) + 1988563197) ^ LODWORD(STACK[0x22B8])) + 1);
  v390 = LODWORD(STACK[0x21C0]) ^ 0x768710FD;
  LODWORD(STACK[0x2108]) = v390;
  v391 = STACK[0x1994];
  v392 = LODWORD(STACK[0x1B18]) - (LODWORD(STACK[0x1994]) + LODWORD(STACK[0x1028])) + LODWORD(STACK[0x2250]) + v390;
  v393 = STACK[0x21F8];
  v394 = LODWORD(STACK[0x2210]) ^ 0xA09D1275;
  LODWORD(STACK[0x2098]) = v394;
  v395 = (v351 ^ 0x8F08348C) - v343 + v394 + ((v392 + ((v389 - ((2 * v389) & 0xA2ACCA62) - 782867151) ^ v393)) ^ v378);
  v396 = STACK[0x2100];
  v397 = LODWORD(STACK[0x21D8]) ^ 0xB749AA18;
  LODWORD(STACK[0x20D8]) = v397;
  v398 = ((v395 - ((2 * v395) & 0x90F0D66E) + 1215851319) ^ v396) + v397;
  v399 = LODWORD(STACK[0x21F0]) ^ 0x6F118876;
  v400 = v399 + LODWORD(STACK[0x1618]) + v398 - 2 * (v398 & v399);
  v401 = LODWORD(STACK[0x22D0]) ^ 0x5F62ED8A;
  v402 = STACK[0x21C8];
  v403 = STACK[0x19C8];
  v404 = LODWORD(STACK[0x21E8]) ^ 0x683F69B4;
  LODWORD(STACK[0x20C8]) = v404;
  v405 = STACK[0x2220];
  v406 = STACK[0x2138];
  v407 = LODWORD(STACK[0x2248]) - v368 + v404 + (LODWORD(STACK[0x2220]) ^ 0x9A481321) + ((v402 - v378 + v401 + (v400 ^ v403) + 1) ^ LODWORD(STACK[0x2138]));
  v408 = (v407 - ((2 * v407) & 0x6E935430) - 1219909096) ^ v356;
  v409 = STACK[0x2200];
  v410 = LODWORD(STACK[0x12C0]) + LODWORD(STACK[0x1344]) + (LODWORD(STACK[0x22E0]) ^ 0x8978EF02) + ((v408 - ((2 * v408) & 0xF3CA8DC0) + 2045069024) ^ LODWORD(STACK[0x2200])) + 1;
  v411 = LODWORD(STACK[0x2208]) ^ 0x79E546E0;
  LODWORD(STACK[0x2088]) = v411;
  v412 = LODWORD(STACK[0x2238]) ^ 0x6F118876;
  v413 = STACK[0xD5C];
  v414 = STACK[0x2240];
  v415 = LODWORD(STACK[0x22E8]) - LODWORD(STACK[0xD5C]) + v411 + v412 + ((v410 - ((2 * v410) & 0xA2ACCA62) - 782867151) ^ LODWORD(STACK[0x2240]));
  v416 = STACK[0x2218];
  v417 = STACK[0x2230];
  v418 = STACK[0x1AD4];
  v419 = (LODWORD(STACK[0x1AD4]) - LODWORD(STACK[0x2230]) + LODWORD(STACK[0x2130]) + (LODWORD(STACK[0x2218]) ^ 0xB78794C8) + ((v415 - ((2 * v415) & 0xED0E21FA) + 1988563197) ^ LODWORD(STACK[0x22B0])) + 1) ^ LODWORD(STACK[0x1BA4]);
  v420 = LODWORD(STACK[0x20F0]) ^ 0x683F69B4;
  LODWORD(STACK[0x20B8]) = v420;
  v421 = STACK[0x2258];
  v422 = (LODWORD(STACK[0x2258]) ^ 0x5F62ED8A) - LODWORD(STACK[0x1778]) + ((v419 + v420) ^ LODWORD(STACK[0xFE4])) + 1;
  v423 = STACK[0x20F8];
  v424 = STACK[0x1BF0];
  v425 = STACK[0x1A18];
  v426 = LODWORD(STACK[0x2268]) ^ 0xA47FDA3B;
  v427 = ((LODWORD(STACK[0x1CB8]) - (LODWORD(STACK[0x2260]) + LODWORD(STACK[0x1BF0])) + (LODWORD(STACK[0x20F8]) ^ 0x97C0964B) + ((v422 - ((2 * v422) & 0x34902642) - 1706552543) ^ LODWORD(STACK[0x22C0])) + 1) ^ STACK[0x1A18]) - v426;
  v428 = LODWORD(STACK[0x2128]) ^ 0xD1566531;
  LODWORD(STACK[0x2058]) = v428;
  v429 = v427 + v428 - ((2 * (v427 + v428)) & 0xDE2310EC);
  v430 = v423 ^ 0x683F69B4;
  v431 = (STACK[0x2168] & 0x8CCCD018 ^ 0x84089018 | STACK[0x2168] & 0x8CCCD018 ^ 0x8C44000) + (v416 ^ 0x48786B37);
  v432 = v405 ^ 0x7C61C8D7;
  v433 = v393 ^ 0x40C51AAC;
  v434 = v396;
  v435 = v403 ^ v378 ^ v396 ^ LODWORD(STACK[0x2228]) ^ 0x12A547A1 ^ (LODWORD(STACK[0x20B0]) + 1215851319);
  v430 += 1447289169;
  LODWORD(STACK[0x2238]) = v430;
  v436 = v430 ^ (v378 - 941621561);
  LODWORD(STACK[0x2220]) = v436;
  v437 = v431 - v436;
  LODWORD(STACK[0x2228]) = v437;
  v438 = v418 ^ v437 ^ 0x6908C157;
  v439 = v418;
  LODWORD(STACK[0x2268]) = v438;
  LODWORD(STACK[0x2218]) = v432 - v438;
  v440 = v417 - 775234327 + v432 - v438;
  LODWORD(STACK[0x21D8]) = v440;
  v441 = v440 + v433;
  LODWORD(STACK[0x21C0]) = v441;
  v442 = v435 - v441;
  LODWORD(STACK[0x2210]) = v442;
  v443 = v403 - v442 + 260236561;
  LODWORD(STACK[0x2128]) = v443;
  v444 = LODWORD(STACK[0x21A0]) + 38287238;
  v445 = LODWORD(STACK[0x2160]) ^ 0x7C519BD1;
  v446 = v443 ^ ((v421 ^ 0xA09D1275) + 1957079364);
  LODWORD(STACK[0x2258]) = v446;
  v447 = v413 + 26715340 + v446;
  LODWORD(STACK[0x2208]) = v447;
  v448 = v445 - v447;
  LODWORD(STACK[0x21F8]) = v448;
  v449 = v448 ^ v444;
  LODWORD(STACK[0x2230]) = v449;
  v450 = v449 ^ (v412 + 1721212952);
  LODWORD(STACK[0x2198]) = v450;
  v451 = v388 - v450 + 115108809;
  LODWORD(STACK[0x21E8]) = v451;
  v452 = STACK[0x2288];
  v453 = STACK[0x15C0];
  v454 = LODWORD(STACK[0x15C0]) + 142202080;
  v455 = STACK[0x1AD8];
  v456 = STACK[0x2278];
  v457 = STACK[0x2290];
  v458 = v451 + (v424 ^ 0x950B5B63);
  LODWORD(STACK[0x21A8]) = v458;
  v459 = v458 ^ (v406 + 953586120);
  LODWORD(STACK[0x21A0]) = v459;
  v460 = (v425 ^ 0xB138DFAB) - v459;
  LODWORD(STACK[0x21F0]) = v460;
  v461 = (v452 ^ 0x48B655E7) - (v453 + v455) + (v456 ^ 0x65B7ECDE) + ((v429 + 1863420022) ^ v457) - 1471715043 + v460;
  LODWORD(STACK[0x2138]) = v461;
  v462 = v409 ^ 0x452A8C8A ^ (v461 - ((2 * v461) & 0xF3CA8DC0) + 2045069024);
  LODWORD(STACK[0x2168]) = v462;
  v463 = LODWORD(STACK[0x2178]) + 1018900343;
  v464 = LODWORD(STACK[0x22A0]) ^ 0x9A481321;
  v465 = (v391 ^ 0x59C51F6D) - v462;
  LODWORD(STACK[0x2160]) = v465;
  v466 = v463 + v465;
  LODWORD(STACK[0x22A0]) = v466;
  v467 = v464 - v466 + 397259857;
  LODWORD(STACK[0x2178]) = v467;
  v468 = LODWORD(STACK[0x21E0]) - v467 - 1898879354;
  LODWORD(STACK[0x20A8]) = v468;
  v469 = LODWORD(STACK[0x1B18]) - 134340968;
  v470 = LODWORD(STACK[0x20E0]) - 1474924459;
  v471 = (LODWORD(STACK[0x2170]) ^ 0xA47FDA3B) + 1274778126;
  v472 = LODWORD(STACK[0x2110]) + 577870980 + v468;
  LODWORD(STACK[0x2200]) = v472;
  v473 = v469 + v472;
  LODWORD(STACK[0x21E0]) = v473;
  v474 = v473 ^ ((v414 ^ 0xD1566531) - 1867428727);
  LODWORD(STACK[0x2240]) = v474;
  v475 = v470 + v474;
  LODWORD(STACK[0x2288]) = v475;
  v476 = v475 + (v402 ^ 0xF88A66C7);
  LODWORD(STACK[0x2170]) = v476 ^ v471;
  v477 = LODWORD(STACK[0x1EE8]) ^ 0x125B9DE0 ^ v476 ^ v471;
  LODWORD(STACK[0x20E0]) = v477;
  v478 = (v452 ^ 0xB749AA18) - v477 + 1537716304;
  LODWORD(STACK[0x2110]) = v478;
  v479 = LODWORD(STACK[0x1A2C]) - 1352297364;
  v480 = LODWORD(STACK[0x20E8]) - v478 - 1257114655;
  LODWORD(STACK[0x21C8]) = v480;
  v481 = LODWORD(STACK[0x2188]) ^ 0x79E546E0;
  v482 = (v439 | 0x6E4F8853) - (v439 & 0x91B077AC) + (LODWORD(STACK[0x22A8]) ^ 0x6F118876);
  v483 = LODWORD(STACK[0x2190]) ^ 0xB3D7802B;
  v484 = LODWORD(STACK[0x20C8]) + 520372085 + v480;
  LODWORD(STACK[0x20F0]) = v484;
  v485 = (v455 ^ 0xED34384B) - v484;
  LODWORD(STACK[0x1FF0]) = v485;
  v486 = v482 - v485 + 1;
  LODWORD(STACK[0x2030]) = v486;
  v487 = v486 ^ v479;
  LODWORD(STACK[0x2100]) = v487;
  v488 = (v434 ^ 0x48786B37) - 1191827488 + v487;
  LODWORD(STACK[0x2190]) = v488;
  v489 = v483 - v488;
  LODWORD(STACK[0x20E8]) = v489;
  v490 = v481 - v489 - 2038160456;
  LODWORD(STACK[0x22A8]) = v490;
  v491 = (v490 - ((2 * v490) & 0x48FFB476) - 1535124933) ^ LODWORD(STACK[0x21B8]);
  v492 = LODWORD(STACK[0x20D0]) + 1957450817;
  v493 = LODWORD(STACK[0x1BC0]) - (v491 ^ 0x4E2C8888);
  LODWORD(STACK[0x20D0]) = v491 ^ 0x4E2C8888;
  LODWORD(STACK[0x20C8]) = v493 + 1437647700;
  v494 = LODWORD(STACK[0x17A0]) - 21026845;
  v495 = (v493 + 1437647700) ^ v492;
  LODWORD(STACK[0x21B8]) = v495;
  v496 = LODWORD(STACK[0x16F0]) - v495 - 1181858190;
  LODWORD(STACK[0x20F8]) = v496;
  v497 = LODWORD(STACK[0x2248]) + 1743889709;
  v498 = LODWORD(STACK[0x19D4]) + 1566268119;
  v499 = v496 + (LODWORD(STACK[0x1798]) ^ 0xB71CE4D1);
  LODWORD(STACK[0x2188]) = v499;
  v500 = v499 + (LODWORD(STACK[0x22C8]) ^ 0x68693AE3);
  LODWORD(STACK[0x2248]) = v500;
  v501 = v500 ^ v494;
  LODWORD(STACK[0x2090]) = v501;
  v502 = v501 ^ (v399 + 1108705055);
  LODWORD(STACK[0x2060]) = v502;
  v503 = v426 - v502 - 1606483086;
  LODWORD(STACK[0x2048]) = v503;
  v504 = (LODWORD(STACK[0x21B0]) ^ 0x8F08348C) + 1515002789;
  v505 = LODWORD(STACK[0x1BA4]) - 1497626615;
  v506 = LODWORD(STACK[0x1CB8]) - 824240919;
  v507 = (LODWORD(STACK[0x2180]) ^ 0xB749AA18) - 1969936285;
  LODWORD(v425) = LODWORD(STACK[0x1B70]) + 989129669;
  v508 = LODWORD(STACK[0x1618]) - 776636435;
  v509 = LODWORD(STACK[0x20B8]) - 96865005;
  LODWORD(STACK[0x2078]) = v503 ^ v498;
  v510 = (v378 ^ 0x2FE19DD5) - (v503 ^ v498);
  LODWORD(STACK[0x20C0]) = v510;
  v511 = v510 ^ v497;
  LODWORD(STACK[0x21B0]) = v511;
  v512 = v504 + v511;
  LODWORD(STACK[0x2070]) = v512;
  v513 = v505 + v512;
  LODWORD(STACK[0x2050]) = v513;
  v514 = v506 + v513;
  LODWORD(STACK[0x2180]) = v514;
  LODWORD(STACK[0x2028]) = v507 + v514;
  v515 = v425 + v507 + v514;
  v516 = v515 ^ (LODWORD(STACK[0x17D0]) + 2035667247);
  LODWORD(STACK[0x20B8]) = v516;
  v517 = v508 + v516;
  LODWORD(STACK[0x2068]) = v517;
  v518 = v517 ^ v454;
  LODWORD(STACK[0x20B0]) = v518;
  v519 = v509 + v518;
  LODWORD(STACK[0x2080]) = v519;
  v520 = v519 + (((v491 ^ 0x4E2C8888) & 0x7C902DE8 | v491 & 0x7C902DE8 ^ 0x30902560) ^ v378);
  LODWORD(STACK[0x20A0]) = v520;
  v521 = LODWORD(STACK[0x2098]) - v520 - 2133241869;
  LODWORD(STACK[0x2098]) = v521;
  v522 = LODWORD(STACK[0x2058]) - 1892310925;
  LODWORD(v403) = (LODWORD(STACK[0x22B8]) ^ 0x768710FD) - v521 + 1703157173;
  v523 = LODWORD(STACK[0x2260]) - v403 - 323118334;
  LODWORD(STACK[0x2040]) = v523;
  v524 = LODWORD(STACK[0x1344]) - 807633568;
  v525 = LODWORD(STACK[0x12BC]) - 1663189474 + v523;
  LODWORD(STACK[0x2260]) = v525;
  v526 = v524 + v525;
  v527 = (v524 + v525) ^ v522;
  LODWORD(STACK[0x2058]) = v527;
  v528 = LODWORD(STACK[0x1B10]) - v527 + 2047599152;
  LODWORD(STACK[0x22B8]) = v528;
  v529 = LODWORD(STACK[0x22D0]) ^ 0x4FF3C65C;
  v530 = v528 ^ (LODWORD(STACK[0x2118]) + 1613028915);
  v531 = (v457 ^ 0x6F118876) - v530 - 1019125118;
  v532 = LODWORD(STACK[0x22B0]) ^ 0x768710FD;
  v533 = (LODWORD(STACK[0x1028]) ^ 0x9F54328F) - v531;
  v534 = (LODWORD(STACK[0x12C0]) ^ 0x909749B8) - v533;
  LODWORD(STACK[0x2118]) = v534;
  v535 = v532 - v534 - 1469258046;
  LODWORD(STACK[0x2038]) = v535;
  v536 = LODWORD(STACK[0x2088]) - v535 - 1587058496;
  v537 = LODWORD(STACK[0x1954]) ^ 0x239E33CD ^ v536;
  LODWORD(STACK[0x2290]) = v537;
  v538 = LODWORD(STACK[0x2130]) - v537 - 1290652205;
  LODWORD(STACK[0x2130]) = v538;
  v539 = LODWORD(STACK[0x1778]) - v538 + 790619550;
  LODWORD(v425) = LODWORD(STACK[0x20D8]) - v539 - 191030275;
  LODWORD(STACK[0x22B0]) = v425;
  v540 = LODWORD(STACK[0xFE4]) + 1176252209;
  v541 = v529 - v425;
  LODWORD(STACK[0x20D8]) = v541;
  v542 = v540 + v541;
  LODWORD(STACK[0x2278]) = v542;
  v543 = (v456 ^ 0x9A481321) + 1469370646 + v542;
  v544 = LODWORD(STACK[0x22E8]) - v543 - 2093241588;
  v545 = v544 ^ (LODWORD(STACK[0x2250]) + 301647308);
  LODWORD(STACK[0x2088]) = v545;
  LODWORD(v425) = LODWORD(STACK[0x22C0]) ^ 0xCB143F09 ^ (v545 - ((2 * v545) & 0x34902642) - 1706552543);
  LODWORD(STACK[0x2250]) = v425;
  v546 = LODWORD(STACK[0x1A74]) + 848549171;
  v547 = LODWORD(STACK[0x1718]) + 967480622;
  v548 = LODWORD(STACK[0x1640]) - 485219456;
  v549 = (LODWORD(STACK[0x22E0]) ^ 0x768710FD) + 2008393531 + v425;
  v550 = (LODWORD(STACK[0x2280]) ^ 0x48786B37) - 1540087193 + v549;
  v551 = (v550 - 1895287668 + (~(2 * v550) | 0xE1EF96E7) + 1) ^ LODWORD(STACK[0x2270]) ^ 0x5CA486F;
  LODWORD(STACK[0x22E0]) = v551;
  v552 = v551 ^ v546;
  v553 = v548 - (v551 ^ v546);
  v554 = LODWORD(STACK[0x2298]) ^ 0xB35137F1 ^ (v553 - ((2 * v553) & 0x413A24EA) - 1600318859);
  LODWORD(STACK[0x2280]) = LODWORD(STACK[0x2108]) + 483114046;
  LODWORD(STACK[0x2298]) = LODWORD(STACK[0x1850]) - 2096229667;
  v555 = LODWORD(STACK[0x2120]) - v554 + 2007523960;
  LODWORD(v425) = STACK[0x21D0];
  v556 = *(&off_279CA5FD0 + (LODWORD(STACK[0x21D0]) ^ 0x10E));
  STACK[0x22D0] = v556;
  v557 = v425;
  v558 = *(&off_279CA5FD0 + (v425 ^ 0x132));
  STACK[0x22E8] = v558;
  v559 = *v556 & 0xFFFFFFFFD8A680B0;
  STACK[0x1FC0] = v559;
  v560 = STACK[0x1210];
  STACK[0x1908] = STACK[0x1210] + 615;
  v561 = *v558;
  STACK[0x1FC8] = *v558;
  LODWORD(v561) = -812407749 * ((*(v561 + v559) ^ (v560 + 615)) & 0x7FFFFFFF);
  LODWORD(v561) = v561 ^ WORD1(v561);
  LODWORD(v559) = v557;
  v562 = *(&off_279CA5FD0 + (v557 ^ 0x1F0)) - 4;
  STACK[0x22C0] = v562;
  v563 = *(&off_279CA5FD0 + v557 - 275) - 12;
  STACK[0x1FB0] = v563;
  v564 = (-812407749 * v561) >> 24;
  LODWORD(v562) = *&v563[4 * v564] ^ *(v562 + 4 * v564);
  v565 = *(&off_279CA5FD0 + v559 - 113) - 12;
  STACK[0x22C8] = v565;
  LODWORD(STACK[0x2010]) = v562 ^ *(v565 + 4 * v564) ^ (-1539637248 * v561) ^ (-812407749 * v561) ^ (-204841783 * v564);
  LODWORD(v565) = LODWORD(STACK[0x2090]) + v485;
  LODWORD(STACK[0x2000]) = v565;
  LODWORD(v565) = v530 ^ v565;
  LODWORD(STACK[0x2018]) = v565;
  LODWORD(v565) = v565 + v526;
  LODWORD(STACK[0x2008]) = v565;
  LODWORD(STACK[0x1FB8]) = v536 + v565;
  v566 = LODWORD(STACK[0x2030]) - (v536 + v565);
  LODWORD(STACK[0x1FE8]) = v566;
  v567 = v566 ^ LODWORD(STACK[0x2138]);
  LODWORD(STACK[0x1F80]) = v567;
  LODWORD(v565) = LODWORD(STACK[0x2128]) - v567;
  LODWORD(STACK[0x2090]) = v565;
  LODWORD(STACK[0x2270]) = v565 + v476;
  LODWORD(v565) = v565 + v476 + LODWORD(STACK[0x21C0]);
  LODWORD(STACK[0x1FE0]) = v565;
  LODWORD(STACK[0x1FD0]) = v552 ^ v565;
  LODWORD(STACK[0x1FF8]) = v555 + (v552 ^ v565);
  v568 = (v555 + (v552 ^ v565)) ^ LODWORD(STACK[0x2048]);
  LODWORD(STACK[0x21C0]) = v568;
  v569 = v568 + LODWORD(STACK[0x2060]);
  LODWORD(STACK[0x2128]) = v569;
  v570 = LODWORD(STACK[0x2028]) - v569;
  LODWORD(STACK[0x2028]) = v570;
  v571 = v570 + LODWORD(STACK[0x21D8]);
  LODWORD(STACK[0x2020]) = v571;
  v572 = v571 ^ v549;
  v573 = v533 - (v571 ^ v549);
  LODWORD(STACK[0x1FA8]) = v573;
  v574 = v573 ^ LODWORD(STACK[0x2050]);
  LODWORD(STACK[0x1F58]) = v574;
  v575 = v555 ^ v547 ^ LODWORD(STACK[0x2280]);
  v576 = v574 ^ LODWORD(STACK[0x2070]);
  LODWORD(STACK[0x2070]) = v576;
  v577 = (v555 ^ v547) - v576;
  LODWORD(STACK[0x1F68]) = v577;
  v578 = v577 ^ LODWORD(STACK[0x2188]);
  LODWORD(STACK[0x1F78]) = v578;
  LODWORD(v565) = v575 ^ LODWORD(STACK[0x2298]);
  v579 = v578 ^ LODWORD(STACK[0x2218]);
  v580 = LODWORD(STACK[0x2068]) - v579;
  LODWORD(STACK[0x1FA0]) = v580;
  LODWORD(STACK[0x2298]) = v580 ^ v403;
  v581 = (v580 ^ v403) + LODWORD(STACK[0x2078]);
  LODWORD(STACK[0x1F88]) = v581;
  v582 = LODWORD(STACK[0x20A8]) - v581;
  LODWORD(STACK[0x1F50]) = v582;
  LODWORD(v403) = v582 ^ v553;
  v583 = v582 ^ v553 ^ LODWORD(STACK[0x2160]);
  LODWORD(STACK[0x2050]) = v583;
  v584 = LODWORD(STACK[0x2110]) - v583;
  LODWORD(STACK[0x2030]) = v584 + v550;
  v585 = v584;
  LODWORD(STACK[0x2188]) = v584;
  v586 = v584 + v550 + LODWORD(STACK[0x20E8]);
  LODWORD(STACK[0x2068]) = v586;
  v587 = v586 + LODWORD(STACK[0x2080]);
  LODWORD(STACK[0x2218]) = v587;
  v588 = v587 ^ LODWORD(STACK[0x20E0]);
  LODWORD(STACK[0x20E0]) = v588;
  v589 = LODWORD(STACK[0x2168]) - v588;
  v590 = v589 ^ LODWORD(STACK[0x2098]);
  LODWORD(STACK[0x2048]) = v590;
  v591 = LODWORD(STACK[0x20F0]) - v590;
  LODWORD(STACK[0x2280]) = v591;
  v592 = LODWORD(STACK[0x2040]) - v591;
  LODWORD(STACK[0x1F40]) = v592;
  LODWORD(STACK[0x20F0]) = v592 ^ v515;
  v593 = v592 ^ v515 ^ LODWORD(STACK[0x2038]);
  v594 = v593 ^ LODWORD(STACK[0x21A0]);
  LODWORD(STACK[0x1F30]) = v594;
  LODWORD(v563) = v565 ^ 0xF0B0860;
  v595 = v594 ^ v565;
  v596 = v594 ^ v565 ^ v544;
  v597 = v596 + LODWORD(STACK[0x21A8]);
  LODWORD(STACK[0x1F98]) = v597;
  v598 = LODWORD(STACK[0x2198]) - v597;
  LODWORD(STACK[0x2040]) = v598;
  v599 = LODWORD(STACK[0x20C8]) - v598;
  v600 = v599 + v543;
  LODWORD(STACK[0x20E8]) = v600 + v539;
  v601 = (v600 + v539) ^ v554;
  LODWORD(STACK[0x1F60]) = v601;
  LODWORD(v565) = LODWORD(STACK[0x20C0]) - v601;
  LODWORD(STACK[0x2138]) = v565;
  v602 = v565 ^ LODWORD(STACK[0x2100]);
  LODWORD(STACK[0x2038]) = v602;
  v603 = v602 ^ LODWORD(STACK[0x2118]);
  LODWORD(STACK[0x1F90]) = v603;
  v604 = v603 + LODWORD(STACK[0x2178]);
  v605 = v604 ^ LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x1F28]) = v605;
  LODWORD(v559) = v605 + LODWORD(STACK[0x2248]);
  LODWORD(STACK[0x2248]) = v531 - v559;
  v606 = LODWORD(STACK[0x20D8]) - (v531 - v559);
  LODWORD(STACK[0x1F10]) = v606;
  v607 = LODWORD(STACK[0x20A0]) - v606;
  v608 = v607 + LODWORD(STACK[0x20B0]);
  LODWORD(STACK[0x20B0]) = v608;
  v609 = LODWORD(STACK[0x2058]) - v608;
  v610 = v609 ^ LODWORD(STACK[0x2220]);
  LODWORD(STACK[0x1F48]) = v610;
  v611 = LODWORD(STACK[0x2180]) - v610;
  LODWORD(STACK[0x20A0]) = v611;
  v612 = LODWORD(STACK[0x2130]) - v611;
  LODWORD(STACK[0x20D8]) = v612;
  v613 = v612 ^ LODWORD(STACK[0x2210]);
  LODWORD(STACK[0x2220]) = v613;
  v614 = LODWORD(STACK[0x2190]) - v613;
  LODWORD(STACK[0x20C0]) = v614;
  v615 = v614 + LODWORD(STACK[0x2088]);
  LODWORD(STACK[0x1F38]) = v615;
  v616 = LODWORD(STACK[0x22E0]) - v615;
  v617 = v575 - v616;
  LODWORD(v562) = (v575 - v616) ^ LODWORD(STACK[0x21E0]);
  LODWORD(v558) = v562 ^ LODWORD(STACK[0x20D0]);
  LODWORD(v565) = v558 + LODWORD(STACK[0x2290]);
  LODWORD(STACK[0x2130]) = v565;
  LODWORD(v565) = LODWORD(STACK[0x21B0]) - v565;
  LODWORD(STACK[0x2078]) = v565;
  v618 = LODWORD(STACK[0x20B8]) - v565;
  LODWORD(STACK[0x20B8]) = v618;
  v619 = LODWORD(STACK[0x21F8]) - v618;
  LODWORD(v561) = v619 + v563;
  v620 = (v619 + v563) ^ LODWORD(STACK[0x21B8]);
  LODWORD(STACK[0x20D0]) = v620;
  v621 = v620 ^ LODWORD(STACK[0x2250]);
  LODWORD(STACK[0x1F20]) = v621;
  v622 = v621 ^ LODWORD(STACK[0x2278]);
  LODWORD(STACK[0x1F18]) = v622;
  v623 = LODWORD(STACK[0x2208]) - v622;
  LODWORD(STACK[0x21A0]) = v623;
  v624 = LODWORD(STACK[0x20F8]) - v623;
  v625 = LODWORD(STACK[0x2200]) - v624;
  LODWORD(v563) = LODWORD(STACK[0x22B0]) - v625;
  v626 = v563 + LODWORD(STACK[0x2260]);
  LODWORD(STACK[0x21D8]) = v572 - v585;
  v627 = v626 + LODWORD(STACK[0x2228]);
  LODWORD(STACK[0x2208]) = v627;
  v628 = (v572 - v585) ^ v579;
  LODWORD(STACK[0x2118]) = v628;
  v629 = v627 + LODWORD(STACK[0x22A0]);
  v630 = v629 ^ LODWORD(STACK[0x2238]);
  v631 = v630 ^ LODWORD(STACK[0x2240]);
  v632 = v631 + LODWORD(STACK[0x22A8]);
  LODWORD(STACK[0x2238]) = v632;
  LODWORD(v565) = v632 + LODWORD(STACK[0x21E8]);
  v633 = v625 + v628;
  LODWORD(STACK[0x2100]) = v633;
  v634 = v626 ^ v633;
  LODWORD(STACK[0x21E8]) = v634;
  v635 = v565 ^ LODWORD(STACK[0x2288]);
  LODWORD(v565) = v565 ^ v634;
  LODWORD(STACK[0x2080]) = v565;
  LODWORD(v565) = v565 + v629;
  LODWORD(STACK[0x2060]) = v565;
  LODWORD(v565) = v565 ^ LODWORD(STACK[0x1FF0]);
  LODWORD(STACK[0x2108]) = v565;
  v636 = v559 - v565;
  LODWORD(STACK[0x2110]) = v559 - v565;
  LODWORD(v559) = v635 ^ LODWORD(STACK[0x21F0]);
  v637 = v559 + LODWORD(STACK[0x2258]);
  LODWORD(v565) = v637 + LODWORD(STACK[0x2230]);
  v638 = v565 + LODWORD(STACK[0x21C8]);
  v639 = v636 ^ v595;
  LODWORD(STACK[0x21F0]) = v639;
  v640 = v639 + v609;
  LODWORD(STACK[0x2290]) = v640;
  LODWORD(STACK[0x1FF0]) = v403 - v640;
  v641 = (v403 - v640) ^ v593;
  LODWORD(STACK[0x2278]) = v641;
  v642 = v638 ^ LODWORD(STACK[0x22B8]);
  LODWORD(STACK[0x2120]) = v642;
  v643 = v641 + LODWORD(STACK[0x1FE0]);
  LODWORD(STACK[0x2240]) = v643;
  v644 = v643 + LODWORD(STACK[0x2270]);
  LODWORD(STACK[0x2250]) = v644;
  v645 = LODWORD(STACK[0x2268]) - v642;
  LODWORD(STACK[0x2098]) = v644 ^ v630;
  v646 = v600 - (v644 ^ v630);
  LODWORD(STACK[0x20A8]) = v646;
  LODWORD(STACK[0x2260]) = v617 - v646;
  LODWORD(v565) = (v617 - v646) ^ v565;
  LODWORD(STACK[0x21A8]) = v565;
  v647 = v565 ^ v638;
  LODWORD(v565) = (v565 ^ v638) + LODWORD(STACK[0x2298]);
  LODWORD(STACK[0x20C8]) = v565;
  LODWORD(v565) = v565 ^ LODWORD(STACK[0x2020]);
  LODWORD(STACK[0x1FE0]) = v565;
  LODWORD(v565) = v565 ^ v561;
  LODWORD(STACK[0x2270]) = v565;
  LODWORD(v565) = v565 ^ v624;
  LODWORD(STACK[0x1FD8]) = v565;
  LODWORD(v565) = v565 + v589;
  LODWORD(STACK[0x22A0]) = v565;
  LODWORD(v565) = v607 - v565;
  LODWORD(STACK[0x2298]) = v565;
  LODWORD(v565) = v558 - v565;
  LODWORD(STACK[0x2088]) = v565;
  LODWORD(v565) = v565 + LODWORD(STACK[0x2128]);
  LODWORD(STACK[0x22B8]) = v565;
  LODWORD(v565) = v565 ^ v562;
  LODWORD(STACK[0x2160]) = v565;
  LODWORD(v565) = v565 + v635;
  LODWORD(STACK[0x2020]) = v565;
  LODWORD(v565) = v565 ^ v604;
  LODWORD(STACK[0x21B0]) = v565;
  LODWORD(v565) = v565 + v599;
  LODWORD(STACK[0x21B8]) = v565;
  LODWORD(v565) = v565 ^ v596;
  LODWORD(STACK[0x21F8]) = v565;
  LODWORD(v565) = v565 + LODWORD(STACK[0x1F58]);
  LODWORD(STACK[0x2190]) = v565;
  LODWORD(v565) = v565 ^ LODWORD(STACK[0x1F50]);
  LODWORD(STACK[0x2058]) = v565;
  LODWORD(v565) = v565 ^ LODWORD(STACK[0x1FB8]);
  LODWORD(STACK[0x21E0]) = v565;
  LODWORD(v565) = v563 - v565;
  LODWORD(STACK[0x2128]) = v565;
  LODWORD(v565) = v565 ^ LODWORD(STACK[0x1F80]);
  LODWORD(STACK[0x2168]) = v565;
  LODWORD(v565) = LODWORD(STACK[0x1F40]) - v565;
  LODWORD(STACK[0x2230]) = v565;
  LODWORD(v565) = v616 - v565;
  LODWORD(STACK[0x2288]) = v565;
  LODWORD(v565) = v565 ^ LODWORD(STACK[0x1F30]);
  LODWORD(STACK[0x2170]) = v565;
  v648 = LODWORD(STACK[0x2000]) - v565;
  LODWORD(v565) = v648 ^ LODWORD(STACK[0x1F68]);
  v649 = LODWORD(STACK[0x1FE8]) - v565;
  LODWORD(STACK[0x2178]) = v649;
  v650 = v649 ^ LODWORD(STACK[0x1F78]);
  LODWORD(STACK[0x2198]) = v650;
  v651 = v650 ^ v645;
  LODWORD(STACK[0x2228]) = v651;
  LODWORD(STACK[0x2180]) = v651 ^ v559;
  v652 = LODWORD(STACK[0x1FD0]) - (v651 ^ v559);
  LODWORD(STACK[0x1FE8]) = v652;
  v653 = v619 - v652;
  LODWORD(STACK[0x21C8]) = v653;
  v654 = v653 ^ LODWORD(STACK[0x2090]);
  LODWORD(STACK[0x2200]) = v654;
  v655 = LODWORD(STACK[0x1F10]) - v654;
  LODWORD(STACK[0x2090]) = v655;
  v656 = v655 + LODWORD(STACK[0x2038]);
  LODWORD(STACK[0x2210]) = v656;
  v657 = v637 - v656;
  LODWORD(STACK[0x22A8]) = v657;
  v658 = v657 + LODWORD(STACK[0x1F28]);
  LODWORD(STACK[0x1FD0]) = v658;
  v659 = v631 - v658;
  LODWORD(STACK[0x20F8]) = v659;
  v660 = v659 ^ LODWORD(STACK[0x2220]);
  v661 = LODWORD(STACK[0x2070]) - v660;
  LODWORD(STACK[0x2000]) = v661;
  v662 = v661 + LODWORD(STACK[0x2068]);
  LODWORD(STACK[0x2068]) = v662;
  v663 = v662 ^ LODWORD(STACK[0x2040]);
  LODWORD(STACK[0x2220]) = v663;
  v664 = v663 ^ LODWORD(STACK[0x1FF8]);
  LODWORD(STACK[0x1FF8]) = v664;
  v665 = v664 + LODWORD(STACK[0x2008]);
  LODWORD(STACK[0x22B0]) = v665;
  v666 = v665 + LODWORD(STACK[0x21C0]);
  LODWORD(STACK[0x2040]) = v666;
  v667 = v666 ^ LODWORD(STACK[0x20A0]);
  LODWORD(STACK[0x22E0]) = v667;
  v668 = LODWORD(STACK[0x2248]) - v667;
  LODWORD(STACK[0x2038]) = v668;
  v669 = LODWORD(STACK[0x2050]) - v668;
  LODWORD(STACK[0x2268]) = v669;
  v670 = LODWORD(STACK[0x20B8]) - v669;
  LODWORD(STACK[0x20A0]) = v670;
  v671 = LODWORD(STACK[0x1F48]) - v670;
  LODWORD(STACK[0x2008]) = v671;
  v672 = v671 + LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x20B8]) = v672;
  v673 = v672 ^ LODWORD(STACK[0x1F60]);
  LODWORD(STACK[0x2050]) = v673;
  v674 = v673 ^ LODWORD(STACK[0x2048]);
  LODWORD(STACK[0x2048]) = v674;
  v675 = v674 ^ LODWORD(STACK[0x20E0]);
  LODWORD(STACK[0x1FB8]) = v675;
  v676 = v675 ^ LODWORD(STACK[0x1F18]);
  LODWORD(STACK[0x2070]) = v676;
  v677 = LODWORD(STACK[0x20C0]) - v676;
  LODWORD(STACK[0x20E0]) = v677;
  v678 = LODWORD(STACK[0x1F20]) - v677;
  LODWORD(STACK[0x20C0]) = v678;
  v679 = v678 + LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x21C0]) = v679;
  v680 = LODWORD(STACK[0x2028]) - v679;
  LODWORD(STACK[0x2248]) = v680;
  v681 = v680 ^ LODWORD(STACK[0x2208]);
  LODWORD(STACK[0x2028]) = v681;
  v682 = LODWORD(STACK[0x20B0]) - v681;
  v683 = v682 ^ LODWORD(STACK[0x1F88]);
  LODWORD(STACK[0x2208]) = v683;
  *STACK[0x1908] = LODWORD(STACK[0x2010]) ^ (-918495193 * v682 + 1775794775);
  v684 = STACK[0x1FC8];
  v685 = STACK[0x1FC0];
  v686 = -812407749 * ((*(STACK[0x1FC8] + STACK[0x1FC0]) ^ (v560 + 411)) & 0x7FFFFFFF);
  v687 = v686 ^ HIWORD(v686);
  v688 = STACK[0x22C0];
  v689 = STACK[0x1FB0];
  v690 = STACK[0x22C8];
  v691 = *(STACK[0x1FB0] + 4 * ((-812407749 * v687) >> 24)) ^ *(STACK[0x22C0] + 4 * ((-812407749 * v687) >> 24)) ^ *(STACK[0x22C8] + 4 * ((-812407749 * v687) >> 24)) ^ (-1539637248 * v687) ^ (-812407749 * v687) ^ (-204841783 * ((-812407749 * v687) >> 24));
  v692 = LODWORD(STACK[0x21A0]) - v683;
  LODWORD(STACK[0x2010]) = v692;
  v693 = v692 ^ LODWORD(STACK[0x2280]);
  LODWORD(STACK[0x21A0]) = v693;
  v694 = v693 + LODWORD(STACK[0x20F0]);
  v695 = v694 ^ LODWORD(STACK[0x1F90]);
  LODWORD(STACK[0x2280]) = v695;
  v696 = v695 + LODWORD(STACK[0x1F98]);
  LODWORD(v561) = LODWORD(STACK[0x2238]) - v696;
  LODWORD(STACK[0x2238]) = v561;
  LODWORD(v561) = v561 + LODWORD(STACK[0x2018]);
  LODWORD(STACK[0x20D0]) = v561;
  LODWORD(v561) = v561 ^ LODWORD(STACK[0x2030]);
  LODWORD(STACK[0x2030]) = v561;
  LODWORD(v561) = LODWORD(STACK[0x1FA8]) - v561;
  LODWORD(STACK[0x2018]) = v561;
  LODWORD(v561) = v561 ^ LODWORD(STACK[0x20E8]);
  LODWORD(STACK[0x20B0]) = v561;
  LODWORD(v561) = LODWORD(STACK[0x20D8]) - v561;
  LODWORD(STACK[0x2258]) = v561;
  v697 = LODWORD(STACK[0x1FA0]) - v561;
  STACK[0x18F0] = v560 + 411;
  *(v560 + 411) = v691 ^ (-918495193 * v697 + 1775794775);
  v698 = -812407749 * ((*(v684 + v685) ^ (v560 + 531)) & 0x7FFFFFFF);
  v699 = v698 ^ HIWORD(v698);
  v700 = *(v689 + 4 * ((-812407749 * v699) >> 24)) ^ *(v688 + 4 * ((-812407749 * v699) >> 24)) ^ *(v690 + 4 * ((-812407749 * v699) >> 24)) ^ (-1539637248 * v699) ^ (-812407749 * v699) ^ (-204841783 * ((-812407749 * v699) >> 24)) ^ (-918495193 * v696 + 1775794775);
  STACK[0x18E8] = v560 + 531;
  *(v560 + 531) = v700;
  v701 = (-812407749 * ((*(v684 + v685) ^ (v560 + 455)) & 0x7FFFFFFF)) ^ ((-812407749 * ((*(v684 + v685) ^ (v560 + 455)) & 0x7FFFFFFFu)) >> 16);
  v702 = *(v689 + 4 * ((-812407749 * v701) >> 24)) ^ *(v688 + 4 * ((-812407749 * v701) >> 24)) ^ *(v690 + 4 * ((-812407749 * v701) >> 24)) ^ (-1539637248 * v701) ^ (-812407749 * v701) ^ (-204841783 * ((-812407749 * v701) >> 24)) ^ (-918495193 * v648 + 1775794775);
  STACK[0x18E0] = v560 + 455;
  *(v560 + 455) = v702;
  v703 = STACK[0x22D0];
  v704 = *STACK[0x22D0] & 0xFFFFFFFFD8A680B0;
  v705 = STACK[0x22E8];
  v706 = *STACK[0x22E8];
  v707 = -812407749 * ((*(v706 + v704) ^ (v560 + 619)) & 0x7FFFFFFF);
  v708 = v707 ^ HIWORD(v707);
  v709 = *(v689 + 4 * ((-812407749 * v708) >> 24)) ^ *(v688 + 4 * ((-812407749 * v708) >> 24)) ^ *(v690 + 4 * ((-812407749 * v708) >> 24)) ^ (-1539637248 * v708) ^ (-812407749 * v708) ^ (-204841783 * ((-812407749 * v708) >> 24)) ^ (-918495193 * v660 + 1775794775);
  STACK[0x18D8] = v560 + 619;
  *(v560 + 619) = v709;
  v710 = -812407749 * ((*(v706 + v704) ^ (v560 + 659)) & 0x7FFFFFFF);
  v711 = v710 ^ HIWORD(v710);
  v712 = *(v689 + 4 * ((-812407749 * v711) >> 24)) ^ *(v688 + 4 * ((-812407749 * v711) >> 24)) ^ *(v690 + 4 * ((-812407749 * v711) >> 24)) ^ (-1539637248 * v711) ^ (-812407749 * v711) ^ (-204841783 * ((-812407749 * v711) >> 24)) ^ (-918495193 * v647 + 1775794775);
  STACK[0x18D0] = v560 + 659;
  *(v560 + 659) = v712;
  v713 = -812407749 * ((*(v706 + v704) ^ (v560 + 515)) & 0x7FFFFFFF);
  v714 = v713 ^ HIWORD(v713);
  LODWORD(v565) = *(v689 + 4 * ((-812407749 * v714) >> 24)) ^ *(v688 + 4 * ((-812407749 * v714) >> 24)) ^ *(v690 + 4 * ((-812407749 * v714) >> 24)) ^ (-1539637248 * v714) ^ (-812407749 * v714) ^ (-204841783 * ((-812407749 * v714) >> 24)) ^ (-918495193 * v565 + 1775794775);
  STACK[0x18C8] = v560 + 515;
  *(v560 + 515) = v565;
  LODWORD(v565) = -812407749 * ((*(v706 + v704) ^ (v560 + 731)) & 0x7FFFFFFF);
  LODWORD(v565) = v565 ^ WORD1(v565);
  v715 = STACK[0x21D0];
  v716 = *(&off_279CA5FD0 + (LODWORD(STACK[0x21D0]) ^ 0x175)) - 4;
  v717 = *(&off_279CA5FD0 + (LODWORD(STACK[0x21D0]) ^ 0x19F)) - 8;
  v718 = *(&off_279CA5FD0 + LODWORD(STACK[0x21D0]) - 199);
  LODWORD(v565) = *&v717[4 * ((-812407749 * v565) >> 24)] ^ *&v716[4 * ((-812407749 * v565) >> 24)] ^ *(v718 + 4 * ((-812407749 * v565) >> 24)) ^ (-1539637248 * v565) ^ (-812407749 * v565) ^ (-543087525 * ((-812407749 * v565) >> 24)) ^ (-918495193 * LODWORD(STACK[0x1FD8]) + 1775794775);
  STACK[0x18C0] = v560 + 731;
  *(v560 + 731) = v565;
  v719 = *v703 & 0xFFFFFFFFD8A680B0;
  v720 = *v705;
  LODWORD(v565) = -812407749 * ((*(*v705 + v719) ^ (v560 + 507)) & 0x7FFFFFFF);
  LODWORD(v565) = v565 ^ WORD1(v565);
  LODWORD(v704) = (-812407749 * v565) >> 24;
  LODWORD(v706) = *&v716[4 * v704];
  STACK[0x20F0] = v716;
  LODWORD(v684) = *&v717[4 * v704];
  STACK[0x20D8] = v717;
  LODWORD(v706) = v684 ^ v706;
  LODWORD(v684) = *(v718 + 4 * v704);
  STACK[0x20E8] = v718;
  v721 = STACK[0x1FD0];
  STACK[0x18B8] = v560 + 507;
  *(v560 + 507) = v706 ^ v684 ^ (-1539637248 * v565) ^ (-812407749 * v565) ^ (-543087525 * v704) ^ (-918495193 * v721 + 1775794775);
  LODWORD(v565) = -812407749 * ((*(v720 + v719) ^ (v560 + 727)) & 0x7FFFFFFF);
  LODWORD(v565) = v565 ^ WORD1(v565);
  LODWORD(v565) = *&v717[4 * ((-812407749 * v565) >> 24)] ^ *&v716[4 * ((-812407749 * v565) >> 24)] ^ *(v718 + 4 * ((-812407749 * v565) >> 24)) ^ (-1539637248 * v565) ^ (-812407749 * v565) ^ (-543087525 * ((-812407749 * v565) >> 24)) ^ (-918495193 * LODWORD(STACK[0x1FE0]) + 1775794775);
  STACK[0x18B0] = v560 + 727;
  *(v560 + 727) = v565;
  LODWORD(v565) = *(v720 + v719);
  STACK[0x18A8] = v560 + 223;
  v722 = *(&off_279CA5FD0 + (v715 ^ 0x1E1));
  LODWORD(v706) = (-812407749 * ((v565 ^ (v560 + 223)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v565 ^ (v560 + 223)) & 0x7FFFFFFF)) >> 16);
  v723 = *(&off_279CA5FD0 + v715 - 237) - 8;
  LODWORD(v688) = (-812407749 * v706) >> 24;
  v724 = *(&off_279CA5FD0 + v715 - 91);
  *(v560 + 223) = *&v723[4 * (v688 + 4)] ^ *(v722 + 4 * v688) ^ *(v724 + 4 * (v688 + 4)) ^ (-1539637248 * v706) ^ (-812407749 * v706) ^ (-2113812457 * v688) ^ (-918495193 * LODWORD(STACK[0x1FB8]) + 1775794775);
  LODWORD(v719) = -812407749 * ((*(v720 + v719) ^ (v560 + 315)) & 0x7FFFFFFF);
  LODWORD(v719) = v719 ^ WORD1(v719);
  LODWORD(v719) = *&v723[4 * ((-812407749 * v719) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v719) >> 24)) ^ *(v724 + 4 * (((-812407749 * v719) >> 24) + 4)) ^ (-1539637248 * v719) ^ (-812407749 * v719) ^ (-2113812457 * ((-812407749 * v719) >> 24)) ^ (-918495193 * LODWORD(STACK[0x1FF0]) + 1775794775);
  STACK[0x18A0] = v560 + 315;
  *(v560 + 315) = v719;
  v725 = v703;
  v726 = *v703 & 0xFFFFFFFFD8A680B0;
  v727 = *v705;
  LODWORD(v684) = -812407749 * ((*(*v705 + v726) ^ (v560 + 583)) & 0x7FFFFFFF);
  LODWORD(v684) = v684 ^ WORD1(v684);
  LODWORD(v684) = *&v723[4 * ((-812407749 * v684) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v684) >> 24)) ^ *(v724 + 4 * (((-812407749 * v684) >> 24) + 4)) ^ (-1539637248 * v684) ^ (-812407749 * v684) ^ (-2113812457 * ((-812407749 * v684) >> 24)) ^ (-918495193 * LODWORD(STACK[0x1FE8]) + 1775794775);
  STACK[0x1898] = v560 + 583;
  *(v560 + 583) = v684;
  LODWORD(v684) = -812407749 * ((*(v727 + v726) ^ (v560 + 263)) & 0x7FFFFFFF);
  LODWORD(v684) = v684 ^ WORD1(v684);
  LODWORD(v684) = *&v723[4 * ((-812407749 * v684) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v684) >> 24)) ^ *(v724 + 4 * (((-812407749 * v684) >> 24) + 4)) ^ (-1539637248 * v684) ^ (-812407749 * v684) ^ (-2113812457 * ((-812407749 * v684) >> 24)) ^ (-918495193 * LODWORD(STACK[0x1FF8]) + 1775794775);
  STACK[0x1890] = v560 + 263;
  *(v560 + 263) = v684;
  LODWORD(v726) = -812407749 * ((*(v727 + v726) ^ (v560 + 283)) & 0x7FFFFFFF);
  LODWORD(v726) = v726 ^ WORD1(v726);
  LODWORD(v726) = *&v723[4 * ((-812407749 * v726) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v726) >> 24)) ^ *(v724 + 4 * (((-812407749 * v726) >> 24) + 4)) ^ (-1539637248 * v726) ^ (-812407749 * v726) ^ (-2113812457 * ((-812407749 * v726) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2000]) + 1775794775);
  STACK[0x1888] = v560 + 283;
  *(v560 + 283) = v726;
  v728 = *v703 & 0xFFFFFFFFD8A680B0;
  v729 = *v705;
  v730 = v705;
  LODWORD(v726) = -812407749 * ((*(*v705 + v728) ^ (v560 + 387)) & 0x7FFFFFFF);
  LODWORD(v726) = v726 ^ WORD1(v726);
  v731 = *&v723[4 * ((-812407749 * v726) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v726) >> 24)) ^ *(v724 + 4 * (((-812407749 * v726) >> 24) + 4)) ^ (-1539637248 * v726) ^ (-812407749 * v726) ^ (-2113812457 * ((-812407749 * v726) >> 24)) ^ (-918495193 * v694 + 1775794775);
  STACK[0x1880] = v560 + 387;
  *(v560 + 387) = v731;
  v732 = -812407749 * ((*(v729 + v728) ^ (v560 + 675)) & 0x7FFFFFFF);
  v733 = v732 ^ HIWORD(v732);
  v734 = *&v723[4 * ((-812407749 * v733) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v733) >> 24)) ^ *(v724 + 4 * (((-812407749 * v733) >> 24) + 4)) ^ (-1539637248 * v733) ^ (-812407749 * v733) ^ (-2113812457 * ((-812407749 * v733) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2008]) + 1775794775);
  STACK[0x1878] = v560 + 675;
  *(v560 + 675) = v734;
  v735 = -812407749 * ((*(v729 + v728) ^ (v560 + 627)) & 0x7FFFFFFF);
  v736 = v735 ^ HIWORD(v735);
  LODWORD(v688) = (-812407749 * v736) >> 24;
  v737 = *(v722 + 4 * v688);
  LODWORD(v690) = *&v723[4 * (v688 + 4)];
  LODWORD(v726) = LODWORD(STACK[0x2078]) - v697;
  LODWORD(STACK[0x2078]) = v726;
  v738 = v690 ^ v737 ^ *(v724 + 4 * (v688 + 4)) ^ (-1539637248 * v736) ^ (-812407749 * v736) ^ (-2113812457 * v688) ^ (-918495193 * v726 + 1775794775);
  STACK[0x1870] = v560 + 627;
  *(v560 + 627) = v738;
  v739 = -812407749 * ((*(v729 + v728) ^ (v560 + 359)) & 0x7FFFFFFF);
  v740 = v739 ^ HIWORD(v739);
  v741 = *&v723[4 * ((-812407749 * v740) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v740) >> 24)) ^ *(v724 + 4 * (((-812407749 * v740) >> 24) + 4)) ^ (-1539637248 * v740) ^ (-812407749 * v740) ^ (-2113812457 * ((-812407749 * v740) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2010]) + 1775794775);
  STACK[0x1868] = v560 + 359;
  *(v560 + 359) = v741;
  v742 = *v703 & 0xFFFFFFFFD8A680B0;
  v743 = *v705;
  LODWORD(v727) = -812407749 * ((*(*v705 + v742) ^ (v560 + 723)) & 0x7FFFFFFF);
  LODWORD(v727) = v727 ^ WORD1(v727);
  LODWORD(v727) = *&v723[4 * ((-812407749 * v727) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v727) >> 24)) ^ *(v724 + 4 * (((-812407749 * v727) >> 24) + 4)) ^ (-1539637248 * v727) ^ (-812407749 * v727) ^ (-2113812457 * ((-812407749 * v727) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2020]) + 1775794775);
  STACK[0x1860] = v560 + 723;
  *(v560 + 723) = v727;
  LODWORD(v727) = -812407749 * ((*(v743 + v742) ^ (v560 + 715)) & 0x7FFFFFFF);
  LODWORD(v727) = v727 ^ WORD1(v727);
  LODWORD(v727) = *&v723[4 * ((-812407749 * v727) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v727) >> 24)) ^ *(v724 + 4 * (((-812407749 * v727) >> 24) + 4)) ^ (-1539637248 * v727) ^ (-812407749 * v727) ^ (-2113812457 * ((-812407749 * v727) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2018]) + 1775794775);
  STACK[0x1858] = v560 + 715;
  *(v560 + 715) = v727;
  LODWORD(v742) = -812407749 * ((*(v743 + v742) ^ (v560 + 683)) & 0x7FFFFFFF);
  LODWORD(v742) = v742 ^ WORD1(v742);
  LODWORD(v742) = *&v723[4 * ((-812407749 * v742) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v742) >> 24)) ^ *(v724 + 4 * (((-812407749 * v742) >> 24) + 4)) ^ (-1539637248 * v742) ^ (-812407749 * v742) ^ (-2113812457 * ((-812407749 * v742) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2028]) + 1775794775);
  STACK[0x1850] = v560 + 683;
  *(v560 + 683) = v742;
  v744 = *v703 & 0xFFFFFFFFD8A680B0;
  v745 = *v705;
  LODWORD(v727) = -812407749 * ((*(*v705 + v744) ^ (v560 + 687)) & 0x7FFFFFFF);
  LODWORD(v727) = v727 ^ WORD1(v727);
  LODWORD(v727) = *&v723[4 * ((-812407749 * v727) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v727) >> 24)) ^ *(v724 + 4 * (((-812407749 * v727) >> 24) + 4)) ^ (-1539637248 * v727) ^ (-812407749 * v727) ^ (-2113812457 * ((-812407749 * v727) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2038]) + 1775794775);
  STACK[0x15F0] = v560 + 687;
  *(v560 + 687) = v727;
  LODWORD(v727) = -812407749 * ((*(v745 + v744) ^ (v560 + 483)) & 0x7FFFFFFF);
  LODWORD(v727) = v727 ^ WORD1(v727);
  LODWORD(v727) = *&v723[4 * ((-812407749 * v727) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v727) >> 24)) ^ *(v724 + 4 * (((-812407749 * v727) >> 24) + 4)) ^ (-1539637248 * v727) ^ (-812407749 * v727) ^ (-2113812457 * ((-812407749 * v727) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2030]) + 1775794775);
  STACK[0x1848] = v560 + 483;
  *(v560 + 483) = v727;
  LODWORD(v727) = *(v745 + v744);
  STACK[0x1840] = v560 + 227;
  LODWORD(v727) = (-812407749 * ((v727 ^ (v560 + 227)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v727 ^ (v560 + 227)) & 0x7FFFFFFF)) >> 16);
  *(v560 + 227) = *&v723[4 * ((-812407749 * v727) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v727) >> 24)) ^ *(v724 + 4 * (((-812407749 * v727) >> 24) + 4)) ^ (-1539637248 * v727) ^ (-812407749 * v727) ^ (-2113812457 * ((-812407749 * v727) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2040]) + 1775794775);
  LODWORD(v744) = -812407749 * ((*(v745 + v744) ^ (v560 + 771)) & 0x7FFFFFFF);
  LODWORD(v744) = v744 ^ WORD1(v744);
  LODWORD(v724) = *&v723[4 * ((-812407749 * v744) >> 24) + 16] ^ *(v722 + 4 * ((-812407749 * v744) >> 24)) ^ *(v724 + 4 * (((-812407749 * v744) >> 24) + 4)) ^ (-1539637248 * v744) ^ (-812407749 * v744) ^ (-2113812457 * ((-812407749 * v744) >> 24));
  LODWORD(v723) = STACK[0x2048];
  STACK[0x1838] = v560 + 771;
  *(v560 + 771) = v724 ^ (-918495193 * v723 + 1775794775);
  v746 = *v703 & 0xFFFFFFFFD8A680B0;
  v747 = *v705;
  LODWORD(v722) = *(*v705 + v746);
  STACK[0x1830] = v560 + 231;
  LODWORD(v722) = (-812407749 * ((v722 ^ (v560 + 231)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v722 ^ (v560 + 231)) & 0x7FFFFFFF)) >> 16);
  v748 = *(&off_279CA5FD0 + v715 - 261) - 8;
  v749 = *(&off_279CA5FD0 + v715 - 211) - 4;
  v750 = *(&off_279CA5FD0 + v715 - 96);
  *(v560 + 231) = *&v749[4 * ((-812407749 * v722) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v722) >> 24)] ^ *(v750 + 4 * ((-812407749 * v722) >> 24)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (1527836167 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2050]) + 1775794775);
  LODWORD(v722) = -812407749 * ((*(v747 + v746) ^ (v560 + 311)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *&v749[4 * ((-812407749 * v722) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v722) >> 24)] ^ *(v750 + 4 * ((-812407749 * v722) >> 24)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (1527836167 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2060]) + 1775794775);
  STACK[0x1828] = v560 + 311;
  *(v560 + 311) = v722;
  LODWORD(v722) = -812407749 * ((*(v747 + v746) ^ (v560 + 435)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *&v749[4 * ((-812407749 * v722) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v722) >> 24)] ^ *(v750 + 4 * ((-812407749 * v722) >> 24)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (1527836167 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2058]) + 1775794775);
  STACK[0x1820] = v560 + 435;
  *(v560 + 435) = v722;
  LODWORD(v746) = -812407749 * ((*(v747 + v746) ^ (v560 + 275)) & 0x7FFFFFFF);
  LODWORD(v746) = v746 ^ WORD1(v746);
  LODWORD(v747) = *&v749[4 * ((-812407749 * v746) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v746) >> 24)] ^ *(v750 + 4 * ((-812407749 * v746) >> 24)) ^ (-1539637248 * v746) ^ (-812407749 * v746) ^ (1527836167 * ((-812407749 * v746) >> 24));
  LODWORD(v726) = STACK[0x2068];
  LODWORD(v746) = v726 + 778879569;
  STACK[0x1818] = v560 + 275;
  *(v560 + 275) = v747 ^ (-918495193 * (v726 + 778879569));
  v751 = *v725 & 0xFFFFFFFFD8A680B0;
  v752 = *v730;
  LODWORD(v722) = -812407749 * ((*(*v730 + v751) ^ (v560 + 563)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *&v749[4 * ((-812407749 * v722) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v722) >> 24)] ^ *(v750 + 4 * ((-812407749 * v722) >> 24)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (1527836167 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2070]) + 1775794775);
  STACK[0x1810] = v560 + 563;
  *(v560 + 563) = v722;
  LODWORD(v722) = -812407749 * ((*(v752 + v751) ^ (v560 + 775)) & 0x7FFFFFFF);
  LODWORD(v727) = v722 ^ WORD1(v722);
  v753 = STACK[0x22C0];
  LODWORD(v722) = 294862254 - v726;
  v754 = STACK[0x22C8];
  LODWORD(v727) = *(v689 + 4 * ((-812407749 * v727) >> 24)) ^ *(STACK[0x22C0] + 4 * ((-812407749 * v727) >> 24)) ^ *(STACK[0x22C8] + 4 * ((-812407749 * v727) >> 24)) ^ (-1539637248 * v727) ^ (-812407749 * v727) ^ (-204841783 * ((-812407749 * v727) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2080]) + 1775794775);
  STACK[0x1808] = v560 + 775;
  *(v560 + 775) = v727;
  LODWORD(v751) = -812407749 * ((*(v752 + v751) ^ (v560 + 371)) & 0x7FFFFFFF);
  LODWORD(v751) = v751 ^ WORD1(v751);
  LODWORD(v751) = *(v689 + 4 * ((-812407749 * v751) >> 24)) ^ *(v753 + 4 * ((-812407749 * v751) >> 24)) ^ *(v754 + 4 * ((-812407749 * v751) >> 24)) ^ (-1539637248 * v751) ^ (-812407749 * v751) ^ (-204841783 * ((-812407749 * v751) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2098]) + 1775794775);
  STACK[0x1800] = v560 + 371;
  *(v560 + 371) = v751;
  LODWORD(v752) = (v746 & 0x2E6CC251) + LODWORD(STACK[0x2088]);
  v755 = *v725 & 0xFFFFFFFFD8A680B0;
  v756 = *v730;
  LODWORD(v727) = -812407749 * ((*(*v730 + v755) ^ (v560 + 459)) & 0x7FFFFFFF);
  LODWORD(v727) = v727 ^ WORD1(v727);
  LODWORD(v727) = *(v689 + 4 * ((-812407749 * v727) >> 24)) ^ *(v753 + 4 * ((-812407749 * v727) >> 24)) ^ *(v754 + 4 * ((-812407749 * v727) >> 24)) ^ (-1539637248 * v727) ^ (-812407749 * v727) ^ (-204841783 * ((-812407749 * v727) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2090]) + 1775794775);
  STACK[0x15E8] = v560 + 459;
  *(v560 + 459) = v727;
  LODWORD(v727) = -812407749 * ((*(v756 + v755) ^ (v560 + 327)) & 0x7FFFFFFF);
  LODWORD(v727) = v727 ^ WORD1(v727);
  LODWORD(v722) = *(v689 + 4 * ((-812407749 * v727) >> 24)) ^ *(v753 + 4 * ((-812407749 * v727) >> 24)) ^ *(v754 + 4 * ((-812407749 * v727) >> 24)) ^ (-1539637248 * v727) ^ (-812407749 * v727) ^ (-204841783 * ((-812407749 * v727) >> 24)) ^ (-918495193 * (v752 + (v722 & 0x2E6CC251)));
  STACK[0x15A8] = v560 + 327;
  *(v560 + 327) = v722;
  LODWORD(v722) = *(v756 + v755);
  STACK[0x17F8] = v560 + 255;
  LODWORD(v722) = (-812407749 * ((v722 ^ (v560 + 255)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v722 ^ (v560 + 255)) & 0x7FFFFFFF)) >> 16);
  *(v560 + 255) = *(v689 + 4 * ((-812407749 * v722) >> 24)) ^ *(v753 + 4 * ((-812407749 * v722) >> 24)) ^ *(v754 + 4 * ((-812407749 * v722) >> 24)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (-204841783 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x22E0]) + 1775794775);
  LODWORD(v755) = -812407749 * ((*(v756 + v755) ^ (v560 + 303)) & 0x7FFFFFFF);
  LODWORD(v755) = v755 ^ WORD1(v755);
  LODWORD(v755) = *(v689 + 4 * ((-812407749 * v755) >> 24)) ^ *(v753 + 4 * ((-812407749 * v755) >> 24)) ^ *(v754 + 4 * ((-812407749 * v755) >> 24)) ^ (-1539637248 * v755) ^ (-812407749 * v755) ^ (-204841783 * ((-812407749 * v755) >> 24)) ^ (-918495193 * LODWORD(STACK[0x20A8]) + 1775794775);
  STACK[0x17F0] = v560 + 303;
  *(v560 + 303) = v755;
  v757 = *v725 & 0xFFFFFFFFD8A680B0;
  v758 = *v730;
  LODWORD(v722) = -812407749 * ((*(*v730 + v757) ^ (v560 + 407)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *(v689 + 4 * ((-812407749 * v722) >> 24)) ^ *(v753 + 4 * ((-812407749 * v722) >> 24)) ^ *(v754 + 4 * ((-812407749 * v722) >> 24)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (-204841783 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x20A0]) + 1775794775);
  STACK[0x17E8] = v560 + 407;
  *(v560 + 407) = v722;
  LODWORD(v722) = -812407749 * ((*(v758 + v757) ^ (v560 + 767)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *(v689 + 4 * ((-812407749 * v722) >> 24)) ^ *(v753 + 4 * ((-812407749 * v722) >> 24)) ^ *(v754 + 4 * ((-812407749 * v722) >> 24)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (-204841783 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x20B8]) + 1775794775);
  STACK[0x17E0] = v560 + 767;
  *(v560 + 767) = v722;
  LODWORD(v757) = -812407749 * ((*(v758 + v757) ^ (v560 + 719)) & 0x7FFFFFFF);
  v759 = *(&off_279CA5FD0 + LODWORD(STACK[0x21D0]) - 154);
  LODWORD(v757) = v757 ^ WORD1(v757);
  v760 = *(&off_279CA5FD0 + (LODWORD(STACK[0x21D0]) ^ 0x123)) - 12;
  v761 = *(&off_279CA5FD0 + (LODWORD(STACK[0x21D0]) ^ 0x184));
  LODWORD(v757) = *(v759 + 4 * (((-812407749 * v757) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v757) >> 24)] ^ *(v761 + 4 * (((-812407749 * v757) >> 24) + 2)) ^ (-1539637248 * v757) ^ (-812407749 * v757) ^ (-415258565 * ((-812407749 * v757) >> 24)) ^ (-918495193 * LODWORD(STACK[0x20B0]) + 1775794775);
  STACK[0x17D8] = v560 + 719;
  *(v560 + 719) = v757;
  v762 = *v725 & 0xFFFFFFFFD8A680B0;
  v763 = v730;
  v764 = *v730;
  LODWORD(v722) = -812407749 * ((*(*v730 + v762) ^ (v560 + 475)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *(v759 + 4 * (((-812407749 * v722) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v722) >> 24)] ^ *(v761 + 4 * (((-812407749 * v722) >> 24) + 2)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (-415258565 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x20C8]) + 1775794775);
  STACK[0x17D0] = v560 + 475;
  *(v560 + 475) = v722;
  LODWORD(v722) = -812407749 * ((*(v764 + v762) ^ (v560 + 567)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *(v759 + 4 * (((-812407749 * v722) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v722) >> 24)] ^ *(v761 + 4 * (((-812407749 * v722) >> 24) + 2)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (-415258565 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x20C0]) + 1775794775);
  STACK[0x17C8] = v560 + 567;
  *(v560 + 567) = v722;
  LODWORD(v762) = -812407749 * ((*(v764 + v762) ^ (v560 + 591)) & 0x7FFFFFFF);
  LODWORD(v762) = v762 ^ WORD1(v762);
  LODWORD(v762) = *(v759 + 4 * (((-812407749 * v762) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v762) >> 24)] ^ *(v761 + 4 * (((-812407749 * v762) >> 24) + 2)) ^ (-1539637248 * v762) ^ (-812407749 * v762) ^ (-415258565 * ((-812407749 * v762) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2100]) + 1775794775);
  STACK[0x17C0] = v560 + 591;
  *(v560 + 591) = v762;
  v765 = *v725 & 0xFFFFFFFFD8A680B0;
  v766 = *v730;
  LODWORD(v722) = -812407749 * ((*(*v730 + v765) ^ (v560 + 539)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *(v759 + 4 * (((-812407749 * v722) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v722) >> 24)] ^ *(v761 + 4 * (((-812407749 * v722) >> 24) + 2)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (-415258565 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x20E0]) + 1775794775);
  STACK[0x17B8] = v560 + 539;
  *(v560 + 539) = v722;
  LODWORD(v722) = -812407749 * ((*(v766 + v765) ^ (v560 + 559)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *(v759 + 4 * (((-812407749 * v722) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v722) >> 24)] ^ *(v761 + 4 * (((-812407749 * v722) >> 24) + 2)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (-415258565 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x20D0]) + 1775794775);
  STACK[0x17B0] = v560 + 559;
  *(v560 + 559) = v722;
  LODWORD(v765) = -812407749 * ((*(v766 + v765) ^ (v560 + 471)) & 0x7FFFFFFF);
  LODWORD(v765) = v765 ^ WORD1(v765);
  LODWORD(v765) = *(v759 + 4 * (((-812407749 * v765) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v765) >> 24)] ^ *(v761 + 4 * (((-812407749 * v765) >> 24) + 2)) ^ (-1539637248 * v765) ^ (-812407749 * v765) ^ (-415258565 * ((-812407749 * v765) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2108]) + 1775794775);
  STACK[0x17A8] = v560 + 471;
  *(v560 + 471) = v765;
  v767 = *v725 & 0xFFFFFFFFD8A680B0;
  v768 = *v730;
  LODWORD(v722) = -812407749 * ((*(*v730 + v767) ^ (v560 + 527)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *(v759 + 4 * (((-812407749 * v722) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v722) >> 24)] ^ *(v761 + 4 * (((-812407749 * v722) >> 24) + 2)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (-415258565 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2110]) + 1775794775);
  STACK[0x17A0] = v560 + 527;
  *(v560 + 527) = v722;
  LODWORD(v722) = -812407749 * ((*(v768 + v767) ^ (v560 + 639)) & 0x7FFFFFFF);
  LODWORD(v722) = v722 ^ WORD1(v722);
  LODWORD(v722) = *(v759 + 4 * (((-812407749 * v722) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v722) >> 24)] ^ *(v761 + 4 * (((-812407749 * v722) >> 24) + 2)) ^ (-1539637248 * v722) ^ (-812407749 * v722) ^ (-415258565 * ((-812407749 * v722) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2118]) + 1775794775);
  STACK[0x1798] = v560 + 639;
  *(v560 + 639) = v722;
  LODWORD(v767) = -812407749 * ((*(v768 + v767) ^ (v560 + 479)) & 0x7FFFFFFF);
  LODWORD(v767) = v767 ^ WORD1(v767);
  LODWORD(v767) = *(v759 + 4 * (((-812407749 * v767) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v767) >> 24)] ^ *(v761 + 4 * (((-812407749 * v767) >> 24) + 2)) ^ (-1539637248 * v767) ^ (-812407749 * v767) ^ (-415258565 * ((-812407749 * v767) >> 24)) ^ (-918495193 * LODWORD(STACK[0x20F8]) + 1775794775);
  STACK[0x1790] = v560 + 479;
  *(v560 + 479) = v767;
  v769 = v725;
  v770 = *v725 & 0xFFFFFFFFD8A680B0;
  v771 = *v730;
  LODWORD(v767) = -812407749 * ((*(*v730 + v770) ^ (v560 + 363)) & 0x7FFFFFFF);
  LODWORD(v768) = v767 ^ WORD1(v767);
  LODWORD(v767) = LODWORD(STACK[0x2138]) - LODWORD(STACK[0x2078]);
  LODWORD(v754) = *(v759 + 4 * (((-812407749 * v768) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v768) >> 24)] ^ *(v761 + 4 * (((-812407749 * v768) >> 24) + 2)) ^ (-1539637248 * v768) ^ (-812407749 * v768) ^ (-415258565 * ((-812407749 * v768) >> 24));
  LODWORD(v768) = v767 ^ LODWORD(STACK[0x2120]);
  LODWORD(v722) = LODWORD(STACK[0x2130]) - v768;
  STACK[0x1788] = v560 + 363;
  *(v560 + 363) = v754 ^ (-918495193 * v722 + 1775794775);
  LODWORD(v754) = -812407749 * ((*(v771 + v770) ^ (v560 + 535)) & 0x7FFFFFFF);
  LODWORD(v754) = v754 ^ WORD1(v754);
  LODWORD(v754) = *(v759 + 4 * (((-812407749 * v754) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v754) >> 24)] ^ *(v761 + 4 * (((-812407749 * v754) >> 24) + 2)) ^ (-1539637248 * v754) ^ (-812407749 * v754) ^ (-415258565 * ((-812407749 * v754) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2128]) + 1775794775);
  STACK[0x1780] = v560 + 535;
  *(v560 + 535) = v754;
  LODWORD(v754) = -812407749 * ((*(v771 + v770) ^ (v560 + 383)) & 0x7FFFFFFF);
  LODWORD(v754) = v754 ^ WORD1(v754);
  LODWORD(v754) = *(v759 + 4 * (((-812407749 * v754) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v754) >> 24)] ^ *(v761 + 4 * (((-812407749 * v754) >> 24) + 2)) ^ (-1539637248 * v754) ^ (-812407749 * v754) ^ (-415258565 * ((-812407749 * v754) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2160]) + 1775794775);
  STACK[0x1778] = v560 + 383;
  *(v560 + 383) = v754;
  v772 = *v725 & 0xFFFFFFFFD8A680B0;
  v773 = *v730;
  LODWORD(v771) = -812407749 * ((*(*v730 + v772) ^ (v560 + 679)) & 0x7FFFFFFF);
  LODWORD(v771) = v771 ^ WORD1(v771);
  LODWORD(v771) = *(v759 + 4 * (((-812407749 * v771) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v771) >> 24)] ^ *(v761 + 4 * (((-812407749 * v771) >> 24) + 2)) ^ (-1539637248 * v771) ^ (-812407749 * v771) ^ (-415258565 * ((-812407749 * v771) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2168]) + 1775794775);
  STACK[0x1770] = v560 + 679;
  *(v560 + 679) = v771;
  LODWORD(v771) = -812407749 * ((*(v773 + v772) ^ (v560 + 763)) & 0x7FFFFFFF);
  LODWORD(v771) = v771 ^ WORD1(v771);
  LODWORD(v771) = *(v759 + 4 * (((-812407749 * v771) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v771) >> 24)] ^ *(v761 + 4 * (((-812407749 * v771) >> 24) + 2)) ^ (-1539637248 * v771) ^ (-812407749 * v771) ^ (-415258565 * ((-812407749 * v771) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2170]) + 1775794775);
  STACK[0x1768] = v560 + 763;
  *(v560 + 763) = v771;
  LODWORD(v772) = -812407749 * ((*(v773 + v772) ^ (v560 + 335)) & 0x7FFFFFFF);
  LODWORD(v772) = v772 ^ WORD1(v772);
  LODWORD(v759) = *(v759 + 4 * (((-812407749 * v772) >> 24) + 3)) ^ *&v760[4 * ((-812407749 * v772) >> 24)] ^ *(v761 + 4 * (((-812407749 * v772) >> 24) + 2)) ^ (-1539637248 * v772) ^ (-812407749 * v772) ^ (-415258565 * ((-812407749 * v772) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2178]) + 1775794775);
  STACK[0x1760] = v560 + 335;
  *(v560 + 335) = v759;
  v774 = *v725 & 0xFFFFFFFFD8A680B0;
  v775 = *v730;
  LODWORD(v773) = -812407749 * ((*(*v730 + v774) ^ (v560 + 463)) & 0x7FFFFFFF);
  LODWORD(v773) = v773 ^ WORD1(v773);
  v776 = STACK[0x20F0];
  v777 = STACK[0x20D8];
  v778 = STACK[0x20E8];
  LODWORD(v773) = *(STACK[0x20D8] + 4 * ((-812407749 * v773) >> 24)) ^ *(STACK[0x20F0] + 4 * ((-812407749 * v773) >> 24)) ^ *(STACK[0x20E8] + 4 * ((-812407749 * v773) >> 24)) ^ (-1539637248 * v773) ^ (-812407749 * v773) ^ (-543087525 * ((-812407749 * v773) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2188]) + 1775794775);
  STACK[0x15D0] = v560 + 463;
  *(v560 + 463) = v773;
  LODWORD(v773) = -812407749 * ((*(v775 + v774) ^ (v560 + 467)) & 0x7FFFFFFF);
  LODWORD(v773) = v773 ^ WORD1(v773);
  LODWORD(v773) = *(v777 + 4 * ((-812407749 * v773) >> 24)) ^ *(v776 + 4 * ((-812407749 * v773) >> 24)) ^ *(v778 + 4 * ((-812407749 * v773) >> 24)) ^ (-1539637248 * v773) ^ (-812407749 * v773) ^ (-543087525 * ((-812407749 * v773) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2180]) + 1775794775);
  STACK[0x1758] = v560 + 467;
  *(v560 + 467) = v773;
  LODWORD(v773) = -812407749 * ((*(v775 + v774) ^ a49) & 0x7FFFFFFF);
  LODWORD(v773) = v773 ^ WORD1(v773);
  *a49 = *(v777 + 4 * ((-812407749 * v773) >> 24)) ^ *(v776 + 4 * ((-812407749 * v773) >> 24)) ^ *(v778 + 4 * ((-812407749 * v773) >> 24)) ^ (-1539637248 * v773) ^ (-812407749 * v773) ^ (-543087525 * ((-812407749 * v773) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2190]) + 1775794775);
  LODWORD(v774) = -812407749 * ((*(v775 + v774) ^ (v560 + 611)) & 0x7FFFFFFF);
  LODWORD(v774) = v774 ^ WORD1(v774);
  LODWORD(v774) = *(v777 + 4 * ((-812407749 * v774) >> 24)) ^ *(v776 + 4 * ((-812407749 * v774) >> 24)) ^ *(v778 + 4 * ((-812407749 * v774) >> 24)) ^ (-1539637248 * v774) ^ (-812407749 * v774) ^ (-543087525 * ((-812407749 * v774) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2198]) + 1775794775);
  STACK[0x1750] = v560 + 611;
  *(v560 + 611) = v774;
  v779 = *v769 & 0xFFFFFFFFD8A680B0;
  v780 = *v763;
  LODWORD(v773) = -812407749 * ((*(*v763 + v779) ^ (v560 + 579)) & 0x7FFFFFFF);
  LODWORD(v773) = v773 ^ WORD1(v773);
  LODWORD(v773) = *(v777 + 4 * ((-812407749 * v773) >> 24)) ^ *(v776 + 4 * ((-812407749 * v773) >> 24)) ^ *(v778 + 4 * ((-812407749 * v773) >> 24)) ^ (-1539637248 * v773) ^ (-812407749 * v773) ^ (-543087525 * ((-812407749 * v773) >> 24)) ^ (-918495193 * LODWORD(STACK[0x21A8]) + 1775794775);
  STACK[0x1748] = v560 + 579;
  *(v560 + 579) = v773;
  LODWORD(v773) = -812407749 * ((*(v780 + v779) ^ (v560 + 259)) & 0x7FFFFFFF);
  LODWORD(v773) = v773 ^ WORD1(v773);
  LODWORD(v773) = *(v777 + 4 * ((-812407749 * v773) >> 24)) ^ *(v776 + 4 * ((-812407749 * v773) >> 24)) ^ *(v778 + 4 * ((-812407749 * v773) >> 24)) ^ (-1539637248 * v773) ^ (-812407749 * v773) ^ (-543087525 * ((-812407749 * v773) >> 24)) ^ (-918495193 * LODWORD(STACK[0x21B0]) + 1775794775);
  STACK[0x1740] = v560 + 259;
  *(v560 + 259) = v773;
  LODWORD(v773) = -812407749 * ((*(v780 + v779) ^ (v560 + 667)) & 0x7FFFFFFF);
  LODWORD(v773) = v773 ^ WORD1(v773);
  LODWORD(v773) = *(v777 + 4 * ((-812407749 * v773) >> 24)) ^ *(v776 + 4 * ((-812407749 * v773) >> 24)) ^ *(v778 + 4 * ((-812407749 * v773) >> 24)) ^ (-1539637248 * v773) ^ (-812407749 * v773) ^ (-543087525 * ((-812407749 * v773) >> 24)) ^ (-918495193 * LODWORD(STACK[0x21B8]) + 1775794775);
  STACK[0x1738] = v560 + 667;
  *(v560 + 667) = v773;
  LODWORD(v779) = -812407749 * ((*(v780 + v779) ^ (v560 + 419)) & 0x7FFFFFFF);
  LODWORD(v779) = v779 ^ WORD1(v779);
  LODWORD(v779) = *(v777 + 4 * ((-812407749 * v779) >> 24)) ^ *(v776 + 4 * ((-812407749 * v779) >> 24)) ^ *(v778 + 4 * ((-812407749 * v779) >> 24)) ^ (-1539637248 * v779) ^ (-812407749 * v779) ^ (-543087525 * ((-812407749 * v779) >> 24)) ^ (-918495193 * LODWORD(STACK[0x21A0]) + 1775794775);
  STACK[0x15A0] = v560 + 419;
  *(v560 + 419) = v779;
  v781 = *v769 & 0xFFFFFFFFD8A680B0;
  v782 = v763;
  v783 = *v763;
  LODWORD(v778) = (-812407749 * ((*(*v763 + v781) ^ (v560 + 743)) & 0x7FFFFFFF)) ^ ((-812407749 * ((*(*v763 + v781) ^ (v560 + 743)) & 0x7FFFFFFFu)) >> 16);
  LODWORD(v778) = *&v749[4 * ((-812407749 * v778) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v778) >> 24)] ^ *(v750 + 4 * ((-812407749 * v778) >> 24)) ^ (-1539637248 * v778) ^ (-812407749 * v778) ^ (1527836167 * ((-812407749 * v778) >> 24)) ^ (-918495193 * LODWORD(STACK[0x21C0]) + 1775794775);
  STACK[0x1730] = v560 + 743;
  *(v560 + 743) = v778;
  LODWORD(v778) = -812407749 * ((*(v783 + v781) ^ (v560 + 671)) & 0x7FFFFFFF);
  LODWORD(v778) = v778 ^ WORD1(v778);
  LODWORD(v778) = *&v748[4 * ((-812407749 * v778) >> 24)] ^ *&v749[4 * ((-812407749 * v778) >> 24) + 4] ^ *(v750 + 4 * ((-812407749 * v778) >> 24)) ^ (-1539637248 * v778) ^ (-812407749 * v778) ^ (1527836167 * ((-812407749 * v778) >> 24)) ^ (-918495193 * LODWORD(STACK[0x21D8]) + 1775794775);
  STACK[0x1728] = v560 + 671;
  *(v560 + 671) = v778;
  LODWORD(v781) = -812407749 * ((*(v783 + v781) ^ (v560 + 271)) & 0x7FFFFFFF);
  LODWORD(v781) = v781 ^ WORD1(v781);
  LODWORD(v781) = *&v749[4 * ((-812407749 * v781) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v781) >> 24)] ^ *(v750 + 4 * ((-812407749 * v781) >> 24)) ^ (-1539637248 * v781) ^ (-812407749 * v781) ^ (1527836167 * ((-812407749 * v781) >> 24)) ^ (-918495193 * LODWORD(STACK[0x21C8]) + 1775794775);
  STACK[0x1720] = v560 + 271;
  *(v560 + 271) = v781;
  v784 = *v769 & 0xFFFFFFFFD8A680B0;
  v785 = *v763;
  LODWORD(v773) = -812407749 * ((*(*v763 + v784) ^ (v560 + 631)) & 0x7FFFFFFF);
  LODWORD(v773) = v773 ^ WORD1(v773);
  LODWORD(v783) = ((2 * LODWORD(STACK[0x21E8])) & 0x5CD984A2) + (LODWORD(STACK[0x21E8]) ^ 0x2E6CC251);
  LODWORD(v778) = *&v749[4 * ((-812407749 * v773) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v773) >> 24)] ^ *(v750 + 4 * ((-812407749 * v773) >> 24)) ^ (-1539637248 * v773) ^ (-812407749 * v773) ^ (1527836167 * ((-812407749 * v773) >> 24));
  LODWORD(v773) = STACK[0x21E0];
  STACK[0x1718] = v560 + 631;
  *(v560 + 631) = v778 ^ (-918495193 * v773 + 1775794775);
  LODWORD(v778) = -812407749 * ((*(v785 + v784) ^ (v560 + 711)) & 0x7FFFFFFF);
  LODWORD(v778) = v778 ^ WORD1(v778);
  LODWORD(v783) = *&v749[4 * ((-812407749 * v778) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v778) >> 24)] ^ *(v750 + 4 * ((-812407749 * v778) >> 24)) ^ (-1539637248 * v778) ^ (-812407749 * v778) ^ (1527836167 * ((-812407749 * v778) >> 24)) ^ (-918495193 * v783);
  STACK[0x1710] = v560 + 711;
  *(v560 + 711) = v783;
  LODWORD(v784) = -812407749 * ((*(v785 + v784) ^ (v560 + 575)) & 0x7FFFFFFF);
  LODWORD(v784) = v784 ^ WORD1(v784);
  LODWORD(v784) = *&v749[4 * ((-812407749 * v784) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v784) >> 24)] ^ *(v750 + 4 * ((-812407749 * v784) >> 24)) ^ (-1539637248 * v784) ^ (-812407749 * v784) ^ (1527836167 * ((-812407749 * v784) >> 24)) ^ (-918495193 * LODWORD(STACK[0x21F0]) + 1775794775);
  STACK[0x1708] = v560 + 575;
  *(v560 + 575) = v784;
  v786 = *v769 & 0xFFFFFFFFD8A680B0;
  v787 = *v763;
  LODWORD(v783) = -812407749 * ((*(*v763 + v786) ^ (v560 + 427)) & 0x7FFFFFFF);
  LODWORD(v785) = v783 ^ WORD1(v783);
  LODWORD(v783) = v722 + LODWORD(STACK[0x2218]);
  LODWORD(v768) = *&v749[4 * ((-812407749 * v785) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v785) >> 24)] ^ *(v750 + 4 * ((-812407749 * v785) >> 24)) ^ (-1539637248 * v785) ^ (-812407749 * v785) ^ (1527836167 * ((-812407749 * v785) >> 24)) ^ (-918495193 * v768 + 1775794775);
  STACK[0x1700] = v560 + 427;
  *(v560 + 427) = v768;
  LODWORD(v768) = -812407749 * ((*(v787 + v786) ^ (v560 + 375)) & 0x7FFFFFFF);
  LODWORD(v768) = v768 ^ WORD1(v768);
  LODWORD(v768) = *&v749[4 * ((-812407749 * v768) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v768) >> 24)] ^ *(v750 + 4 * ((-812407749 * v768) >> 24)) ^ (-1539637248 * v768) ^ (-812407749 * v768) ^ (1527836167 * ((-812407749 * v768) >> 24)) ^ (-918495193 * LODWORD(STACK[0x21F8]) + 1775794775);
  STACK[0x16F8] = v560 + 375;
  *(v560 + 375) = v768;
  LODWORD(v768) = -812407749 * ((*(v787 + v786) ^ (v560 + 623)) & 0x7FFFFFFF);
  LODWORD(v768) = v768 ^ WORD1(v768);
  LODWORD(v768) = *&v749[4 * ((-812407749 * v768) >> 24) + 4] ^ *&v748[4 * ((-812407749 * v768) >> 24)] ^ *(v750 + 4 * ((-812407749 * v768) >> 24)) ^ (-1539637248 * v768) ^ (-812407749 * v768) ^ (1527836167 * ((-812407749 * v768) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2200]) + 1775794775);
  STACK[0x16F0] = v560 + 623;
  *(v560 + 623) = v768;
  LODWORD(v768) = -812407749 * ((*(v787 + v786) ^ (v560 + 735)) & 0x7FFFFFFF);
  LODWORD(v753) = v768 ^ WORD1(v768);
  v788 = STACK[0x21D0];
  v789 = *(&off_279CA5FD0 + LODWORD(STACK[0x21D0]) - 137) - 8;
  v790 = *(&off_279CA5FD0 + (LODWORD(STACK[0x21D0]) ^ 0x1BF));
  v791 = *(&off_279CA5FD0 + LODWORD(STACK[0x21D0]) - 218);
  LODWORD(v776) = *(v790 + 4 * (((-812407749 * v753) >> 24) + 4)) ^ *&v789[4 * ((-812407749 * v753) >> 24)] ^ *(v791 + 4 * ((-812407749 * v753) >> 24)) ^ (-1539637248 * v753) ^ (-812407749 * v753) ^ (-1198453367 * ((-812407749 * v753) >> 24));
  LODWORD(v787) = STACK[0x2210];
  STACK[0x16E8] = v560 + 735;
  *(v560 + 735) = v776 ^ (-918495193 * v787 + 1775794775);
  v792 = *v769 & 0xFFFFFFFFD8A680B0;
  v793 = *v763;
  LODWORD(v785) = -812407749 * ((*(*v763 + v792) ^ (v560 + 587)) & 0x7FFFFFFF);
  LODWORD(v785) = v785 ^ WORD1(v785);
  LODWORD(v785) = *(v790 + 4 * (((-812407749 * v785) >> 24) + 4)) ^ *&v789[4 * ((-812407749 * v785) >> 24)] ^ *(v791 + 4 * ((-812407749 * v785) >> 24)) ^ (-1539637248 * v785) ^ (-812407749 * v785) ^ (-1198453367 * ((-812407749 * v785) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2208]) + 1775794775);
  STACK[0x16E0] = v560 + 587;
  *(v560 + 587) = v785;
  LODWORD(v785) = -812407749 * ((*(v793 + v792) ^ (v560 + 487)) & 0x7FFFFFFF);
  LODWORD(v785) = v785 ^ WORD1(v785);
  LODWORD(v785) = *(v790 + 4 * (((-812407749 * v785) >> 24) + 4)) ^ *&v789[4 * ((-812407749 * v785) >> 24)] ^ *(v791 + 4 * ((-812407749 * v785) >> 24)) ^ (-1539637248 * v785) ^ (-812407749 * v785) ^ (-1198453367 * ((-812407749 * v785) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2220]) + 1775794775);
  STACK[0x16D8] = v560 + 487;
  *(v560 + 487) = v785;
  LODWORD(v785) = ((STACK[0x22E0] & 0xC940E027 ^ 0xC940E027) + (STACK[0x22E0] & 0xC940E027)) * (LODWORD(STACK[0x2228]) + 778879569);
  LODWORD(v773) = -812407749 * ((*(v793 + v792) ^ (v560 + 519)) & 0x7FFFFFFF);
  LODWORD(v773) = v773 ^ WORD1(v773);
  LODWORD(v773) = *(v790 + 4 * (((-812407749 * v773) >> 24) + 4)) ^ *&v789[4 * ((-812407749 * v773) >> 24)] ^ *(v791 + 4 * ((-812407749 * v773) >> 24)) ^ (-1539637248 * v773) ^ (-812407749 * v773) ^ (-1198453367 * ((-812407749 * v773) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2230]) + 1775794775);
  STACK[0x16D0] = v560 + 519;
  *(v560 + 519) = v773;
  LODWORD(v792) = -812407749 * ((*(v793 + v792) ^ (v560 + 267)) & 0x7FFFFFFF);
  LODWORD(v792) = v792 ^ WORD1(v792);
  LODWORD(v783) = *(v790 + 4 * (((-812407749 * v792) >> 24) + 4)) ^ *&v789[4 * ((-812407749 * v792) >> 24)] ^ *(v791 + 4 * ((-812407749 * v792) >> 24)) ^ (-1539637248 * v792) ^ (-812407749 * v792) ^ (-1198453367 * ((-812407749 * v792) >> 24)) ^ (-918495193 * v783 + 1775794775);
  STACK[0x16C8] = v560 + 267;
  *(v560 + 267) = v783;
  v794 = *v769 & 0xFFFFFFFFD8A680B0;
  v795 = *v763;
  LODWORD(v793) = -812407749 * ((*(*v763 + v794) ^ (v560 + 379)) & 0x7FFFFFFF);
  LODWORD(v793) = v793 ^ WORD1(v793);
  LODWORD(v793) = *(v790 + 4 * (((-812407749 * v793) >> 24) + 4)) ^ *&v789[4 * ((-812407749 * v793) >> 24)] ^ *(v791 + 4 * ((-812407749 * v793) >> 24)) ^ (-1539637248 * v793) ^ (-812407749 * v793) ^ (-1198453367 * ((-812407749 * v793) >> 24)) ^ v785;
  STACK[0x16C0] = v560 + 379;
  *(v560 + 379) = v793;
  LODWORD(v793) = -812407749 * ((*(v795 + v794) ^ (v560 + 431)) & 0x7FFFFFFF);
  LODWORD(v793) = v793 ^ WORD1(v793);
  LODWORD(v793) = *&v789[4 * ((-812407749 * v793) >> 24)] ^ *(v790 + 4 * (((-812407749 * v793) >> 24) + 4)) ^ *(v791 + 4 * ((-812407749 * v793) >> 24)) ^ (-1539637248 * v793) ^ (-812407749 * v793) ^ (-1198453367 * ((-812407749 * v793) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2240]) + 1775794775);
  STACK[0x16B8] = v560 + 431;
  *(v560 + 431) = v793;
  LODWORD(v794) = -812407749 * ((*(v795 + v794) ^ (v560 + 331)) & 0x7FFFFFFF);
  LODWORD(v794) = v794 ^ WORD1(v794);
  LODWORD(v794) = *&v789[4 * ((-812407749 * v794) >> 24)] ^ *(v790 + 4 * (((-812407749 * v794) >> 24) + 4)) ^ *(v791 + 4 * ((-812407749 * v794) >> 24)) ^ (-1539637248 * v794) ^ (-812407749 * v794) ^ (-1198453367 * ((-812407749 * v794) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2250]) + 1775794775);
  STACK[0x16B0] = v560 + 331;
  *(v560 + 331) = v794;
  v796 = v769;
  v797 = *v769 & 0xFFFFFFFFD8A680B0;
  v798 = *v763;
  LODWORD(v793) = -812407749 * ((*(*v763 + v797) ^ (v560 + 571)) & 0x7FFFFFFF);
  LODWORD(v793) = v793 ^ WORD1(v793);
  LODWORD(v793) = *(v790 + 4 * (((-812407749 * v793) >> 24) + 4)) ^ *&v789[4 * ((-812407749 * v793) >> 24)] ^ *(v791 + 4 * ((-812407749 * v793) >> 24)) ^ (-1539637248 * v793) ^ (-812407749 * v793) ^ (-1198453367 * ((-812407749 * v793) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2238]) + 1775794775);
  STACK[0x16A8] = v560 + 571;
  *(v560 + 571) = v793;
  LODWORD(v793) = -812407749 * ((*(v798 + v797) ^ (v560 + 323)) & 0x7FFFFFFF);
  LODWORD(v793) = v793 ^ WORD1(v793);
  LODWORD(v793) = *(v790 + 4 * (((-812407749 * v793) >> 24) + 4)) ^ *&v789[4 * ((-812407749 * v793) >> 24)] ^ *(v791 + 4 * ((-812407749 * v793) >> 24)) ^ (-1539637248 * v793) ^ (-812407749 * v793) ^ (-1198453367 * ((-812407749 * v793) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2248]) + 1775794775);
  STACK[0x16A0] = v560 + 323;
  *(v560 + 323) = v793;
  LODWORD(v793) = -812407749 * ((*(v798 + v797) ^ (v560 + 511)) & 0x7FFFFFFF);
  LODWORD(v793) = v793 ^ WORD1(v793);
  LODWORD(v793) = *&v789[4 * ((-812407749 * v793) >> 24)] ^ *(v790 + 4 * (((-812407749 * v793) >> 24) + 4)) ^ *(v791 + 4 * ((-812407749 * v793) >> 24)) ^ (-1539637248 * v793) ^ (-812407749 * v793) ^ (-1198453367 * ((-812407749 * v793) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2260]) + 1775794775);
  STACK[0x1698] = v560 + 511;
  *(v560 + 511) = v793;
  LODWORD(v797) = -812407749 * ((*(v798 + v797) ^ (v560 + 739)) & 0x7FFFFFFF);
  LODWORD(v797) = v797 ^ WORD1(v797);
  LODWORD(v797) = *&v789[4 * ((-812407749 * v797) >> 24)] ^ *(v790 + 4 * (((-812407749 * v797) >> 24) + 4)) ^ *(v791 + 4 * ((-812407749 * v797) >> 24)) ^ (-1539637248 * v797) ^ (-812407749 * v797) ^ (-1198453367 * ((-812407749 * v797) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2270]) + 1775794775);
  STACK[0x1690] = v560 + 739;
  *(v560 + 739) = v797;
  v799 = *v769 & 0xFFFFFFFFD8A680B0;
  v800 = *v763;
  LODWORD(v793) = *(*v763 + v799);
  STACK[0x1688] = v560 + 251;
  LODWORD(v793) = (-812407749 * ((v793 ^ (v560 + 251)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v793 ^ (v560 + 251)) & 0x7FFFFFFF)) >> 16);
  *(v560 + 251) = *&v789[4 * ((-812407749 * v793) >> 24)] ^ *(v790 + 4 * (((-812407749 * v793) >> 24) + 4)) ^ *(v791 + 4 * ((-812407749 * v793) >> 24)) ^ (-1539637248 * v793) ^ (-812407749 * v793) ^ (-1198453367 * ((-812407749 * v793) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2268]) + 1775794775);
  LODWORD(v793) = -812407749 * ((*(v800 + v799) ^ (v560 + 523)) & 0x7FFFFFFF);
  LODWORD(v793) = v793 ^ WORD1(v793);
  LODWORD(v793) = *(v790 + 4 * (((-812407749 * v793) >> 24) + 4)) ^ *&v789[4 * ((-812407749 * v793) >> 24)] ^ *(v791 + 4 * ((-812407749 * v793) >> 24)) ^ (-1539637248 * v793) ^ (-812407749 * v793) ^ (-1198453367 * ((-812407749 * v793) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2258]) + 1775794775);
  STACK[0x1680] = v560 + 523;
  *(v560 + 523) = v793;
  LODWORD(v793) = -812407749 * ((*(v800 + v799) ^ (v560 + 319)) & 0x7FFFFFFF);
  LODWORD(v793) = v793 ^ WORD1(v793);
  LODWORD(v767) = *(v790 + 4 * (((-812407749 * v793) >> 24) + 4)) ^ *&v789[4 * ((-812407749 * v793) >> 24)] ^ *(v791 + 4 * ((-812407749 * v793) >> 24)) ^ (-1539637248 * v793) ^ (-812407749 * v793) ^ (-1198453367 * ((-812407749 * v793) >> 24)) ^ (-918495193 * v767 + 1775794775);
  STACK[0x1678] = v560 + 319;
  *(v560 + 319) = v767;
  LODWORD(v767) = -812407749 * ((*(v800 + v799) ^ (v560 + 423)) & 0x7FFFFFFF);
  LODWORD(v767) = v767 ^ WORD1(v767);
  LODWORD(v767) = *&v789[4 * ((-812407749 * v767) >> 24)] ^ *(v790 + 4 * (((-812407749 * v767) >> 24) + 4)) ^ *(v791 + 4 * ((-812407749 * v767) >> 24)) ^ (-1539637248 * v767) ^ (-812407749 * v767) ^ (-1198453367 * ((-812407749 * v767) >> 24));
  LODWORD(v789) = STACK[0x2278];
  STACK[0x1670] = v560 + 423;
  *(v560 + 423) = v767 ^ (-918495193 * v789 + 1775794775);
  v801 = *v769 & 0xFFFFFFFFD8A680B0;
  v802 = *v763;
  LODWORD(v790) = -812407749 * ((*(*v763 + v801) ^ (v560 + 691)) & 0x7FFFFFFF);
  LODWORD(v790) = v790 ^ WORD1(v790);
  v803 = *(&off_279CA5FD0 + v788 - 229) - 12;
  v804 = *(&off_279CA5FD0 + (v788 ^ 0x194)) - 4;
  v805 = *(&off_279CA5FD0 + v788 - 178);
  LODWORD(v790) = *&v803[4 * ((-812407749 * v790) >> 24)] ^ *(v804 + 4 * ((-812407749 * v790) >> 24)) ^ *(v805 + 4 * (((-812407749 * v790) >> 24) + 1)) ^ (-1539637248 * v790) ^ (-812407749 * v790) ^ (-2097892159 * ((-812407749 * v790) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2288]) + 1775794775);
  STACK[0x1668] = v560 + 691;
  *(v560 + 691) = v790;
  LODWORD(v790) = -812407749 * ((*(v802 + v801) ^ (v560 + 307)) & 0x7FFFFFFF);
  LODWORD(v790) = v790 ^ WORD1(v790);
  LODWORD(v790) = *&v803[4 * ((-812407749 * v790) >> 24)] ^ *(v804 + 4 * ((-812407749 * v790) >> 24)) ^ *(v805 + 4 * (((-812407749 * v790) >> 24) + 1)) ^ (-1539637248 * v790) ^ (-812407749 * v790) ^ (-2097892159 * ((-812407749 * v790) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2290]) + 1775794775);
  STACK[0x1660] = v560 + 307;
  *(v560 + 307) = v790;
  LODWORD(v790) = -812407749 * ((*(v802 + v801) ^ (v560 + 355)) & 0x7FFFFFFF);
  LODWORD(v790) = v790 ^ WORD1(v790);
  LODWORD(v790) = *&v803[4 * ((-812407749 * v790) >> 24)] ^ *(v804 + 4 * ((-812407749 * v790) >> 24)) ^ *(v805 + 4 * (((-812407749 * v790) >> 24) + 1)) ^ (-1539637248 * v790) ^ (-812407749 * v790) ^ (-2097892159 * ((-812407749 * v790) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2298]) + 1775794775);
  STACK[0x1658] = v560 + 355;
  *(v560 + 355) = v790;
  LODWORD(v790) = -918495193 * LODWORD(STACK[0x22A0]) + 1775794775;
  LODWORD(v799) = (-812407749 * ((*(v802 + v801) ^ (v560 + 635)) & 0x7FFFFFFF)) ^ ((-812407749 * ((*(v802 + v801) ^ (v560 + 635)) & 0x7FFFFFFFu)) >> 16);
  LODWORD(v802) = -918495193 * LODWORD(STACK[0x22A8]) + 1775794775;
  LODWORD(v753) = -918495193 * LODWORD(STACK[0x22B8]) + 1775794775;
  LODWORD(v801) = STACK[0x22B0];
  LODWORD(v791) = *&v803[4 * ((-812407749 * v799) >> 24)] ^ *(v804 + 4 * ((-812407749 * v799) >> 24)) ^ *(v805 + 4 * (((-812407749 * v799) >> 24) + 1)) ^ (-1539637248 * v799) ^ (-812407749 * v799) ^ (-2097892159 * ((-812407749 * v799) >> 24)) ^ (-918495193 * LODWORD(STACK[0x2280]) + 1775794775);
  STACK[0x1650] = v560 + 635;
  *(v560 + 635) = v791;
  v806 = *v769 & 0xFFFFFFFFD8A680B0;
  v807 = *v782;
  LODWORD(v769) = -812407749 * ((*(*v782 + v806) ^ (v560 + 367)) & 0x7FFFFFFF);
  LODWORD(v769) = v769 ^ (v769 >> 16);
  LODWORD(v790) = *&v803[4 * ((-812407749 * v769) >> 24)] ^ *(v804 + 4 * ((-812407749 * v769) >> 24)) ^ *(v805 + 4 * (((-812407749 * v769) >> 24) + 1)) ^ (-1539637248 * v769) ^ (-812407749 * v769) ^ (-2097892159 * ((-812407749 * v769) >> 24)) ^ v790;
  STACK[0x1648] = v560 + 367;
  *(v560 + 367) = v790;
  LODWORD(v790) = -812407749 * ((*(v807 + v806) ^ (v560 + 415)) & 0x7FFFFFFF);
  LODWORD(v790) = v790 ^ WORD1(v790);
  LOBYTE(v785) = LODWORD(STACK[0x2140]) ^ 0x11;
  LODWORD(v790) = *&v803[4 * ((-812407749 * v790) >> 24)] ^ *(v804 + 4 * ((-812407749 * v790) >> 24)) ^ *(v805 + 4 * (((-812407749 * v790) >> 24) + 1)) ^ (-1539637248 * v790) ^ (-812407749 * v790) ^ (-2097892159 * ((-812407749 * v790) >> 24)) ^ v753;
  STACK[0x1640] = v560 + 415;
  *(v560 + 415) = v790;
  LODWORD(v790) = -812407749 * ((*(v807 + v806) ^ (v560 + 279)) & 0x7FFFFFFF);
  LODWORD(v790) = v790 ^ WORD1(v790);
  LODWORD(v802) = *&v803[4 * ((-812407749 * v790) >> 24)] ^ *(v804 + 4 * ((-812407749 * v790) >> 24)) ^ *(v805 + 4 * (((-812407749 * v790) >> 24) + 1)) ^ (-1539637248 * v790) ^ (-812407749 * v790) ^ (-2097892159 * ((-812407749 * v790) >> 24)) ^ v802;
  STACK[0x1638] = v560 + 279;
  *(v560 + 279) = v802;
  LODWORD(v802) = -812407749 * ((*(v807 + v806) ^ (v560 + 663)) & 0x7FFFFFFF);
  LODWORD(v802) = v802 ^ WORD1(v802);
  LODWORD(v753) = (-812407749 * v802) >> 24;
  STACK[0x2140] = v803;
  LODWORD(v807) = *&v803[4 * v753];
  STACK[0x2138] = v804;
  LODWORD(v807) = v807 ^ *(v804 + 4 * v753);
  STACK[0x2130] = v805;
  LODWORD(v801) = v807 ^ *(v805 + 4 * (v753 + 1)) ^ (-1539637248 * v802) ^ (-812407749 * v802) ^ (-2097892159 * v753) ^ (-918495193 * v801 + 1775794775);
  STACK[0x1630] = v560 + 663;
  *(v560 + 663) = v801;
  v808 = *v796 & 0xFFFFFFFF8A6CA0E4;
  v809 = *v782;
  v810 = STACK[0x7B8];
  LODWORD(v802) = -812407749 * ((*(*v782 + v808) ^ (STACK[0x7B8] + 1634)) & 0x7FFFFFFF);
  v811 = -812407749 * (v802 ^ WORD1(v802));
  v812 = *(&off_279CA5FD0 + (v788 ^ 0x17C));
  v813 = *(&off_279CA5FD0 + v788 - 167) - 4;
  v814 = *(&off_279CA5FD0 + v788 - 235) - 8;
  v810[1634] = *(v812 + (v811 >> 24)) ^ (((v785 - 77) ^ 0xF5) + 95) ^ v813[v811 >> 24] ^ v814[(v811 >> 24) + 2] ^ v811 ^ (73 * BYTE3(v811));
  LODWORD(v811) = -812407749 * ((*(v809 + v808) ^ (v810 + 1635)) & 0x7FFFFFFF);
  v815 = -812407749 * (v811 ^ WORD1(v811));
  v816 = STACK[0x1D30];
  v810[1635] = *(v812 + (v815 >> 24)) ^ HIWORD(STACK[0x1D30]) ^ v813[v815 >> 24] ^ v814[(v815 >> 24) + 2] ^ v815 ^ (73 * BYTE3(v815));
  LODWORD(v815) = -812407749 * ((*(v809 + v808) ^ (v810 + 1637)) & 0x7FFFFFFF);
  v817 = -812407749 * (v815 ^ WORD1(v815));
  v810[1637] = LODWORD(STACK[0x10BC]) ^ *(v812 + (v817 >> 24)) ^ v813[v817 >> 24] ^ v814[(v817 >> 24) + 2] ^ v817 ^ (73 * BYTE3(v817)) ^ 0x2D;
  LODWORD(v808) = -812407749 * ((*(v809 + v808) ^ (v810 + 1636)) & 0x7FFFFFFF);
  v818 = -812407749 * (v808 ^ WORD1(v808));
  v810[1636] = *(v812 + (v818 >> 24)) ^ BYTE5(v816) ^ v813[v818 >> 24] ^ v814[(v818 >> 24) + 2] ^ v818 ^ (73 * BYTE3(v818));
  v819 = *v796 & 0xFFFFFFFF8A6CA0E4;
  v820 = *v782;
  LODWORD(v817) = -812407749 * ((*(*v782 + v819) ^ (v810 + 1648)) & 0x7FFFFFFF);
  v821 = -812407749 * (v817 ^ WORD1(v817));
  v810[1648] = LODWORD(STACK[0xE58]) ^ *(v812 + (v821 >> 24)) ^ v813[v821 >> 24] ^ v814[(v821 >> 24) + 2] ^ v821 ^ (73 * BYTE3(v821)) ^ 0x11;
  LODWORD(v821) = -812407749 * ((*(v820 + v819) ^ (v810 + 1620)) & 0x7FFFFFFF);
  v822 = -812407749 * (v821 ^ WORD1(v821));
  v823 = STACK[0x1F70];
  v810[1620] = *(v812 + (v822 >> 24)) ^ (WORD2(STACK[0x1F70]) >> 8) ^ v813[v822 >> 24] ^ v814[(v822 >> 24) + 2] ^ v822 ^ (73 * BYTE3(v822));
  LODWORD(v822) = -812407749 * ((*(v820 + v819) ^ a28) & 0x7FFFFFFF);
  v824 = -812407749 * (v822 ^ WORD1(v822));
  *a28 = *(v812 + (v824 >> 24)) ^ HIBYTE(v823) ^ v813[v824 >> 24] ^ v814[(v824 >> 24) + 2] ^ v824 ^ (73 * BYTE3(v824));
  LODWORD(v819) = -812407749 * ((*(v820 + v819) ^ (v810 + 1619)) & 0x7FFFFFFF);
  v825 = -812407749 * (v819 ^ WORD1(v819));
  v810[1619] = *(v812 + (v825 >> 24)) ^ BYTE6(v823) ^ v813[v825 >> 24] ^ v814[(v825 >> 24) + 2] ^ v825 ^ (73 * BYTE3(v825));
  v826 = *v796 & 0xFFFFFFFF8A6CA0E4;
  v827 = *v782;
  LODWORD(v825) = -812407749 * ((*(*v782 + v826) ^ (v810 + 1643)) & 0x7FFFFFFF);
  v828 = -812407749 * (v825 ^ WORD1(v825));
  v829 = STACK[0x1E20];
  v810[1643] = *(v812 + (v828 >> 24)) ^ HIWORD(STACK[0x1E20]) ^ v813[v828 >> 24] ^ v814[(v828 >> 24) + 2] ^ v828 ^ (73 * BYTE3(v828));
  LODWORD(v828) = -812407749 * ((*(v827 + v826) ^ (v810 + 1639)) & 0x7FFFFFFF);
  v830 = -812407749 * (v828 ^ WORD1(v828));
  v810[1639] = *(v812 + (v830 >> 24)) ^ BYTE2(v816) ^ v813[v830 >> 24] ^ v814[(v830 >> 24) + 2] ^ v830 ^ (73 * BYTE3(v830));
  LODWORD(v830) = -812407749 * ((*(v827 + v826) ^ (v810 + 1642)) & 0x7FFFFFFF);
  v831 = -812407749 * (v830 ^ WORD1(v830));
  v832 = *(&off_279CA5FD0 + (v788 ^ 0x129)) - 8;
  v833 = *(&off_279CA5FD0 + v788 - 256) - 8;
  v834 = *(&off_279CA5FD0 + (v788 ^ 0x16E)) - 12;
  v810[1642] = v832[v831 >> 24] ^ HIBYTE(v829) ^ v833[v831 >> 24] ^ v834[v831 >> 24] ^ v831 ^ (-107 * BYTE3(v831));
  LOBYTE(v771) = (STACK[0x1D80] & 0x20 ^ 0x20) + (STACK[0x1D80] & 0x20);
  v835 = -812407749 * ((-812407749 * ((*(v827 + v826) ^ (v810 + 1625)) & 0x7FFFFFFF)) ^ ((-812407749 * ((*(v827 + v826) ^ (v810 + 1625)) & 0x7FFFFFFFu)) >> 16));
  v810[1625] = LODWORD(STACK[0xE50]) ^ *(v812 + (v835 >> 24)) ^ v813[v835 >> 24] ^ v814[(v835 >> 24) + 2] ^ v835 ^ (73 * BYTE3(v835)) ^ 0x11;
  v836 = *v796 & 0xFFFFFFFF8A6CA0E4;
  v837 = *v782;
  LODWORD(v804) = STACK[0x2148];
  LODWORD(v827) = -812407749 * ((*(*v782 + v836) ^ (v810 + 1622)) & 0x7FFFFFFF);
  v838 = -812407749 * (v827 ^ WORD1(v827));
  v810[1622] = v832[v838 >> 24] ^ BYTE3(v823) ^ v833[v838 >> 24] ^ v834[v838 >> 24] ^ v838 ^ (-107 * BYTE3(v838));
  LODWORD(v803) = -812407749 * ((*(v837 + v836) ^ (v810 + 1621)) & 0x7FFFFFFF);
  v839 = -812407749 * (v803 ^ (v803 >> 16));
  v810[1621] = v832[v839 >> 24] ^ (v823 >> v771) ^ v833[v839 >> 24] ^ v834[v839 >> 24] ^ v839 ^ (-107 * BYTE3(v839));
  LODWORD(v771) = -812407749 * ((*(v837 + v836) ^ (v810 + 1631)) & 0x7FFFFFFF);
  v840 = -812407749 * (v771 ^ WORD1(v771));
  v841 = STACK[0x1D98];
  v810[1631] = v832[v840 >> 24] ^ WORD1(STACK[0x1D98]) ^ v833[v840 >> 24] ^ v834[v840 >> 24] ^ v840 ^ (-107 * BYTE3(v840));
  LODWORD(v836) = -812407749 * ((*(v837 + v836) ^ (v810 + 1626)) & 0x7FFFFFFF);
  v842 = -812407749 * (v836 ^ WORD1(v836));
  v810[1626] = v832[v842 >> 24] ^ HIBYTE(v841) ^ v833[v842 >> 24] ^ v834[v842 >> 24] ^ v842 ^ (-107 * BYTE3(v842));
  v843 = *v796 & 0xFFFFFFFF8A6CA0E4;
  v844 = *v782;
  LODWORD(v842) = -812407749 * ((*(*v782 + v843) ^ (v810 + 1640)) & 0x7FFFFFFF);
  v845 = -812407749 * (v842 ^ WORD1(v842));
  v810[1640] = v832[v845 >> 24] ^ BYTE1(v816) ^ v833[v845 >> 24] ^ v834[v845 >> 24] ^ v845 ^ (-107 * BYTE3(v845));
  LODWORD(v839) = -812407749 * ((*(v844 + v843) ^ (v810 + 1624)) & 0x7FFFFFFF);
  v846 = -812407749 * (v839 ^ WORD1(v839));
  v810[1624] = v832[v846 >> 24] ^ BYTE1(v823) ^ v833[v846 >> 24] ^ v834[v846 >> 24] ^ v846 ^ (-107 * BYTE3(v846));
  LODWORD(v846) = -812407749 * ((*(v844 + v843) ^ (v810 + 1623)) & 0x7FFFFFFF);
  v847 = -812407749 * (v846 ^ WORD1(v846));
  v810[1623] = v832[v847 >> 24] ^ (-127 * (v804 ^ 0x3D ^ (v804 >> 2) & 9)) ^ v833[v847 >> 24] ^ v834[v847 >> 24] ^ v847 ^ (-107 * BYTE3(v847));
  LODWORD(v827) = -812407749 * ((*(v844 + v843) ^ (v810 + 1627)) & 0x7FFFFFFF);
  v848 = -812407749 * (v827 ^ WORD1(v827));
  v810[1627] = v832[v848 >> 24] ^ BYTE6(v841) ^ v833[v848 >> 24] ^ v834[v848 >> 24] ^ v848 ^ (-107 * BYTE3(v848));
  v849 = *v796 & 0xFFFFFFFF8A6CA0E4;
  v850 = *v782;
  LODWORD(v843) = -812407749 * ((*(*v782 + v849) ^ (v810 + 1644)) & 0x7FFFFFFF);
  v851 = -812407749 * (v843 ^ WORD1(v843));
  v810[1644] = LODWORD(STACK[0xF18]) ^ *(v812 + (v851 >> 24)) ^ v813[v851 >> 24] ^ v814[(v851 >> 24) + 2] ^ v851 ^ (73 * BYTE3(v851)) ^ 0x64;
  LODWORD(v851) = -812407749 * ((*(v850 + v849) ^ (v810 + 1638)) & 0x7FFFFFFF);
  v852 = -812407749 * (v851 ^ WORD1(v851));
  v810[1638] = v832[v852 >> 24] ^ BYTE3(v816) ^ v833[v852 >> 24] ^ v834[v852 >> 24] ^ v852 ^ (-107 * BYTE3(v852));
  LODWORD(v852) = -812407749 * ((*(v850 + v849) ^ (v810 + 1633)) & 0x7FFFFFFF);
  v853 = -812407749 * (v852 ^ WORD1(v852));
  v810[1633] = (v841 - ((2 * v841) & 0x22) + 17) ^ *(v812 + (v853 >> 24)) ^ v813[v853 >> 24] ^ v814[(v853 >> 24) + 2] ^ v853 ^ (73 * BYTE3(v853)) ^ 0x11;
  LODWORD(v849) = -812407749 * ((*(v850 + v849) ^ (v810 + 1647)) & 0x7FFFFFFF);
  v854 = -812407749 * (v849 ^ WORD1(v849));
  v810[1647] = v832[v854 >> 24] ^ BYTE2(v829) ^ v833[v854 >> 24] ^ v834[v854 >> 24] ^ v854 ^ (-107 * BYTE3(v854));
  v855 = *v796 & 0xFFFFFFFF8A6CA0E4;
  v856 = *v782;
  LODWORD(v850) = -812407749 * ((*(*v782 + v855) ^ (v810 + 1629)) & 0x7FFFFFFF);
  v857 = -812407749 * (v850 ^ WORD1(v850));
  v810[1629] = LODWORD(STACK[0xE54]) ^ *(v812 + (v857 >> 24)) ^ v813[v857 >> 24] ^ v814[(v857 >> 24) + 2] ^ v857 ^ (73 * BYTE3(v857)) ^ 0x11;
  LODWORD(v857) = -812407749 * ((*(v856 + v855) ^ (v810 + 1632)) & 0x7FFFFFFF);
  v858 = -812407749 * (v857 ^ WORD1(v857));
  v810[1632] = v832[v858 >> 24] ^ BYTE1(v841) ^ v833[v858 >> 24] ^ v834[v858 >> 24] ^ v858 ^ (-107 * BYTE3(v858));
  LODWORD(v858) = -812407749 * ((*(v856 + v855) ^ (v810 + 1628)) & 0x7FFFFFFF);
  v859 = -812407749 * (v858 ^ WORD1(v858));
  v810[1628] = v832[v859 >> 24] ^ BYTE5(v841) ^ v833[v859 >> 24] ^ v834[v859 >> 24] ^ v859 ^ (-107 * BYTE3(v859));
  LODWORD(v855) = -812407749 * ((*(v856 + v855) ^ (v810 + 1646)) & 0x7FFFFFFF);
  v860 = -812407749 * (v855 ^ WORD1(v855));
  v810[1646] = v832[v860 >> 24] ^ BYTE3(v829) ^ v833[v860 >> 24] ^ v834[v860 >> 24] ^ v860 ^ (-107 * BYTE3(v860));
  v861 = *v796 & 0xFFFFFFFF8A6CA0E4;
  v862 = *v782;
  LODWORD(v856) = -812407749 * ((*(*v782 + v861) ^ (v810 + 1630)) & 0x7FFFFFFF);
  v863 = -812407749 * (v856 ^ WORD1(v856));
  v810[1630] = STACK[0xE70] ^ *(v812 + (v863 >> 24)) ^ v813[v863 >> 24] ^ v814[(v863 >> 24) + 2] ^ v863 ^ (73 * BYTE3(v863)) ^ 0x6B;
  LODWORD(v812) = -812407749 * ((*(v862 + v861) ^ (v810 + 1641)) & 0x7FFFFFFF);
  v864 = -812407749 * (v812 ^ WORD1(v812));
  v810[1641] = v832[v864 >> 24] ^ v816 ^ v833[v864 >> 24] ^ v834[v864 >> 24] ^ v864 ^ (-107 * BYTE3(v864));
  LODWORD(v864) = -812407749 * ((*(v862 + v861) ^ (v810 + 1649)) & 0x7FFFFFFF);
  v865 = -812407749 * (v864 ^ WORD1(v864));
  v810[1649] = v832[v865 >> 24] ^ ((((v829 ^ 0x88) + (v829 ^ 0xEB) - ((2 * ((v829 ^ 0x88) + (v829 ^ 0xEB))) & 0x22) + 17) ^ LODWORD(STACK[0x2150]) ^ 0x4A) - 107) ^ v833[v865 >> 24] ^ v834[v865 >> 24] ^ v865 ^ (-107 * BYTE3(v865));
  LODWORD(v861) = -812407749 * ((*(v862 + v861) ^ (v810 + 1645)) & 0x7FFFFFFF);
  v866 = -812407749 * (v861 ^ WORD1(v861));
  v867 = *(&off_279CA5FD0 + v788 - 262) - 12;
  v868 = *(&off_279CA5FD0 + v788 - 111);
  STACK[0x1FF0] = v867;
  LOBYTE(v865) = v867[v866 >> 24] ^ BYTE4(v829);
  v868 -= 12;
  STACK[0x1FE8] = v868;
  LOBYTE(v868) = *((v866 >> 24) + v868 + 1);
  v869 = *(&off_279CA5FD0 + v788 - 128) - 8;
  STACK[0x1FE0] = v869;
  v870 = STACK[0x2158];
  v810[1645] = v865 ^ v868 ^ v869[v866 >> 24] ^ v866 ^ (121 * BYTE3(v866));
  STACK[0x1DD8] = &STACK[0x3608];
  v871 = STACK[0x630];
  STACK[0x1EE0] = STACK[0x630] + 662;
  STACK[0x1FB8] = v871 + 664;
  STACK[0x1FB0] = v871 + 663;
  STACK[0x1ED8] = v871 + 661;
  STACK[0x2118] = v871 + 658;
  STACK[0x2050] = v871 + 660;
  STACK[0x2020] = v871 + 659;
  STACK[0x1FC0] = v871 + 666;
  STACK[0x1FA8] = v871 + 667;
  STACK[0x2008] = v871 + 665;
  STACK[0x1EF0] = v871 + 668;
  STACK[0x2028] = v871 + 671;
  STACK[0x2030] = v871 + 670;
  STACK[0x2018] = v871 + 669;
  STACK[0x1F00] = v871 + 672;
  STACK[0x1F50] = 58;
  STACK[0x2010] = 216;
  LODWORD(STACK[0x2200]) = 90;
  STACK[0x21F0] = 5;
  STACK[0x1F48] = 141;
  LODWORD(STACK[0x2228]) = 45987;
  LODWORD(STACK[0x22A0]) = 1088023580;
  STACK[0x2240] = 2433026638;
  LODWORD(STACK[0x1F18]) = -2118824840;
  STACK[0x2230] = 2536649266;
  LODWORD(STACK[0x21F8]) = -1208406047;
  LODWORD(STACK[0x2260]) = 351034485;
  LODWORD(STACK[0x1E70]) = 950220216;
  STACK[0x2128] = 99859110;
  LODWORD(STACK[0x2290]) = -1344135996;
  LODWORD(STACK[0x21D8]) = 1926142645;
  LODWORD(STACK[0x21C0]) = -2040158573;
  LODWORD(STACK[0x2238]) = -545001999;
  LODWORD(STACK[0x1F28]) = -1713758188;
  LODWORD(STACK[0x2288]) = 1663257785;
  LODWORD(STACK[0x2190]) = -1421856642;
  LODWORD(STACK[0x1F08]) = 1428767999;
  LODWORD(STACK[0x1E28]) = -2139903823;
  LODWORD(STACK[0x21A0]) = 1298645047;
  LODWORD(STACK[0x2178]) = 995209465;
  LODWORD(STACK[0x21A8]) = 921418732;
  LODWORD(STACK[0x21D0]) = -1885492769;
  LODWORD(STACK[0x2188]) = -171044622;
  STACK[0x2198] = 482022799;
  LODWORD(STACK[0x1F40]) = 1586309780;
  LODWORD(STACK[0x21B0]) = -1709414600;
  LODWORD(STACK[0x21E8]) = 904024395;
  LODWORD(STACK[0x1E30]) = 721463220;
  LODWORD(STACK[0x2280]) = -1416687330;
  LODWORD(STACK[0x2298]) = -814850573;
  LODWORD(STACK[0x1FC8]) = -1228787154;
  LODWORD(STACK[0x21B8]) = -1086971083;
  LODWORD(STACK[0x2038]) = -119705449;
  STACK[0x2278] = 0xA82666A1D6EE7263;
  STACK[0x2270] = 0xC7B15911F335B2D2;
  STACK[0x22E0] = 0x19A0DBEA5A00BE5BLL;
  STACK[0x22C8] = 0xDEE3B071709662C7;
  LODWORD(STACK[0x1F70]) = 205;
  LODWORD(STACK[0x1F30]) = 35;
  v872 = *(STACK[0x22F8] + 8 * ((651 * (STACK[0x22F0] < 0x20)) ^ v870));
  v873 = *(&off_279CA5FD0 + (v870 ^ 0xB7));
  STACK[0x22A8] = v873;
  STACK[0x1F10] = v873 + 1337;
  return v872();
}