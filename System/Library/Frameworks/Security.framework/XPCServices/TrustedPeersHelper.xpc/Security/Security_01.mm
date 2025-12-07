unint64_t sub_100019BD0()
{
  result = qword_100297D38;
  if (!qword_100297D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297D38);
  }

  return result;
}

uint64_t sub_100019C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019C6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001148C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100019D04(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100019D20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100019D34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100019D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100019DC0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_100019DEC()
{
  v0 = objc_allocWithZone(TPPolicyVersion);
  v1 = sub_100216964();
  v2 = [v0 initWithVersion:22 hash:v1];

  qword_1002B0318 = v2;
}

void sub_100019E60()
{
  v0 = objc_allocWithZone(TPPolicyVersion);
  v1 = sub_100216964();
  v2 = [v0 initWithVersion:5 hash:v1];

  qword_1002B0320 = v2;
}

uint64_t sub_100019ED4()
{
  sub_10001148C(&qword_100297D98, &unk_10021D9B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D860;
  v1 = objc_allocWithZone(TPPolicyVersion);
  v2 = sub_100216964();
  v3 = [v1 initWithVersion:1 hash:v2];

  *(v0 + 32) = v3;
  *(v0 + 40) = sub_10001A908;
  *(v0 + 48) = 0;
  *(v0 + 56) = sub_10001A924;
  *(v0 + 64) = 0;
  v4 = objc_allocWithZone(TPPolicyVersion);
  v5 = sub_100216964();
  v6 = [v4 initWithVersion:2 hash:v5];

  *(v0 + 72) = v6;
  *(v0 + 80) = sub_10001AFC8;
  *(v0 + 88) = 0;
  *(v0 + 96) = sub_10001AFE4;
  *(v0 + 104) = 0;
  v7 = objc_allocWithZone(TPPolicyVersion);
  v8 = sub_100216964();
  v9 = [v7 initWithVersion:3 hash:v8];

  *(v0 + 112) = v9;
  *(v0 + 120) = sub_10001B6E0;
  *(v0 + 128) = 0;
  *(v0 + 136) = sub_10001B6FC;
  *(v0 + 144) = 0;
  v10 = objc_allocWithZone(TPPolicyVersion);
  v11 = sub_100216964();
  v12 = [v10 initWithVersion:4 hash:v11];

  *(v0 + 152) = v12;
  *(v0 + 160) = sub_10001D9D8;
  *(v0 + 168) = 0;
  *(v0 + 176) = sub_10001D9F4;
  *(v0 + 184) = 0;
  v13 = objc_allocWithZone(TPPolicyVersion);
  v14 = sub_100216964();
  v15 = [v13 initWithVersion:5 hash:v14];

  *(v0 + 192) = v15;
  *(v0 + 200) = sub_10001FBE8;
  *(v0 + 208) = 0;
  *(v0 + 216) = sub_10001FC04;
  *(v0 + 224) = 0;
  v16 = objc_allocWithZone(TPPolicyVersion);
  v17 = sub_100216964();
  v18 = [v16 initWithVersion:6 hash:v17];

  *(v0 + 232) = v18;
  *(v0 + 240) = sub_100021F70;
  *(v0 + 248) = 0;
  *(v0 + 256) = sub_100021F8C;
  *(v0 + 264) = 0;
  v19 = objc_allocWithZone(TPPolicyVersion);
  v20 = sub_100216964();
  v21 = [v19 initWithVersion:7 hash:v20];

  *(v0 + 272) = v21;
  *(v0 + 280) = sub_1000242EC;
  *(v0 + 288) = 0;
  *(v0 + 296) = sub_100024308;
  *(v0 + 304) = 0;
  v22 = objc_allocWithZone(TPPolicyVersion);
  v23 = sub_100216964();
  v24 = [v22 initWithVersion:8 hash:v23];

  *(v0 + 312) = v24;
  *(v0 + 320) = sub_1000266DC;
  *(v0 + 328) = 0;
  *(v0 + 336) = sub_1000266F8;
  *(v0 + 344) = 0;
  v25 = objc_allocWithZone(TPPolicyVersion);
  v26 = sub_100216964();
  v27 = [v25 initWithVersion:9 hash:v26];

  *(v0 + 352) = v27;
  *(v0 + 360) = sub_100028D34;
  *(v0 + 368) = 0;
  *(v0 + 376) = sub_100028D50;
  *(v0 + 384) = 0;
  v28 = objc_allocWithZone(TPPolicyVersion);
  v29 = sub_100216964();
  v30 = [v28 initWithVersion:10 hash:v29];

  *(v0 + 392) = v30;
  *(v0 + 400) = sub_10002B41C;
  *(v0 + 408) = 0;
  *(v0 + 416) = sub_10002B438;
  *(v0 + 424) = 0;
  v31 = objc_allocWithZone(TPPolicyVersion);
  v32 = sub_100216964();
  v33 = [v31 initWithVersion:11 hash:v32];

  *(v0 + 432) = v33;
  *(v0 + 440) = sub_10002DB9C;
  *(v0 + 448) = 0;
  *(v0 + 456) = sub_10002DBB8;
  *(v0 + 464) = 0;
  v34 = objc_allocWithZone(TPPolicyVersion);
  v35 = sub_100216964();
  v36 = [v34 initWithVersion:12 hash:v35];

  *(v0 + 472) = v36;
  *(v0 + 480) = sub_100030414;
  *(v0 + 488) = 0;
  *(v0 + 496) = sub_100030430;
  *(v0 + 504) = 0;
  v37 = objc_allocWithZone(TPPolicyVersion);
  v38 = sub_100216964();
  v39 = [v37 initWithVersion:13 hash:v38];

  *(v0 + 512) = v39;
  *(v0 + 520) = sub_100032C8C;
  *(v0 + 528) = 0;
  *(v0 + 536) = sub_100032CA8;
  *(v0 + 544) = 0;
  v40 = objc_allocWithZone(TPPolicyVersion);
  v41 = sub_100216964();
  v42 = [v40 initWithVersion:15 hash:v41];

  *(v0 + 552) = v42;
  *(v0 + 560) = sub_1000355C8;
  *(v0 + 568) = 0;
  *(v0 + 576) = sub_1000355E4;
  *(v0 + 584) = 0;
  v43 = objc_allocWithZone(TPPolicyVersion);
  v44 = sub_100216964();
  v45 = [v43 initWithVersion:16 hash:v44];

  *(v0 + 592) = v45;
  *(v0 + 600) = sub_1000380C8;
  *(v0 + 608) = 0;
  *(v0 + 616) = sub_1000380E4;
  *(v0 + 624) = 0;
  v46 = objc_allocWithZone(TPPolicyVersion);
  v47 = sub_100216964();
  v48 = [v46 initWithVersion:17 hash:v47];

  *(v0 + 632) = v48;
  *(v0 + 640) = sub_10003AB10;
  *(v0 + 648) = 0;
  *(v0 + 656) = sub_10003AB2C;
  *(v0 + 664) = 0;
  v49 = objc_allocWithZone(TPPolicyVersion);
  v50 = sub_100216964();
  v51 = [v49 initWithVersion:18 hash:v50];

  *(v0 + 672) = v51;
  *(v0 + 680) = sub_10003D914;
  *(v0 + 688) = 0;
  *(v0 + 696) = sub_10003D930;
  *(v0 + 704) = 0;
  v52 = objc_allocWithZone(TPPolicyVersion);
  v53 = sub_100216964();
  v54 = [v52 initWithVersion:19 hash:v53];

  *(v0 + 712) = v54;
  *(v0 + 720) = sub_1000407DC;
  *(v0 + 728) = 0;
  *(v0 + 736) = sub_1000407F8;
  *(v0 + 744) = 0;
  v55 = objc_allocWithZone(TPPolicyVersion);
  v56 = sub_100216964();
  v57 = [v55 initWithVersion:20 hash:v56];

  *(v0 + 752) = v57;
  *(v0 + 760) = sub_10004370C;
  *(v0 + 768) = 0;
  *(v0 + 776) = sub_100043728;
  *(v0 + 784) = 0;
  v58 = objc_allocWithZone(TPPolicyVersion);
  v59 = sub_100216964();
  v60 = [v58 initWithVersion:21 hash:v59];

  *(v0 + 792) = v60;
  *(v0 + 800) = sub_10004663C;
  *(v0 + 808) = 0;
  *(v0 + 816) = sub_100046658;
  *(v0 + 824) = 0;
  v61 = objc_allocWithZone(TPPolicyVersion);
  v62 = sub_100216964();
  v63 = [v61 initWithVersion:22 hash:v62];

  *(v0 + 832) = v63;
  *(v0 + 840) = sub_100049654;
  *(v0 + 848) = 0;
  *(v0 + 856) = sub_100049670;
  *(v0 + 864) = 0;
  return v0;
}

id sub_10001A924()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D870;
  v1 = sub_100216964();
  v2 = sub_100216964();
  v3 = objc_opt_self();
  v4 = [v3 TPPBPolicyModelToCategoryWithPrefix:v1 category:v2];

  *(v0 + 32) = v4;
  v5 = sub_100216964();
  v6 = sub_100216964();
  v7 = [v3 TPPBPolicyModelToCategoryWithPrefix:v5 category:v6];

  *(v0 + 40) = v7;
  v8 = sub_100216964();
  v9 = sub_100216964();
  v10 = [v3 TPPBPolicyModelToCategoryWithPrefix:v8 category:v9];

  *(v0 + 48) = v10;
  v11 = sub_100216964();
  v12 = sub_100216964();
  v13 = [v3 TPPBPolicyModelToCategoryWithPrefix:v11 category:v12];

  *(v0 + 56) = v13;
  v14 = sub_100216964();
  v15 = sub_100216964();
  v16 = [v3 TPPBPolicyModelToCategoryWithPrefix:v14 category:v15];

  *(v0 + 64) = v16;
  v17 = sub_100216964();
  v18 = sub_100216964();
  v19 = [v3 TPPBPolicyModelToCategoryWithPrefix:v17 category:v18];

  *(v0 + 72) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10021D880;
  v21 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v23 = objc_opt_self();
  v24 = [v23 TPPBPolicyCategoriesByViewWithView:v21 categories:isa];

  *(v20 + 32) = v24;
  v25 = sub_100216964();
  v26 = sub_100216B14().super.isa;
  v27 = [v23 TPPBPolicyCategoriesByViewWithView:v25 categories:v26];

  *(v20 + 40) = v27;
  v28 = sub_100216964();
  v29 = sub_100216B14().super.isa;
  v30 = [v23 TPPBPolicyCategoriesByViewWithView:v28 categories:v29];

  *(v20 + 48) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10021D880;
  v32 = sub_100216964();
  v33 = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyIntroducersByCategoryWithCategory:v32 introducers:v33];

  *(v31 + 32) = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyIntroducersByCategoryWithCategory:v36 introducers:v37];

  *(v31 + 40) = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyIntroducersByCategoryWithCategory:v39 introducers:v40];

  *(v31 + 48) = v41;
  v92 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v42 = sub_100216B14().super.isa;
  v0, v43, v44, v45, v46, v47, v48, v49, v74, v77, v80, v83, v86, v89, v92, 7, v98, v101;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v50 = sub_100216B14().super.isa;
  v20, v51, v52, v53, v54, v55, v56, v57, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v58 = sub_100216B14().super.isa;
  v31, v59, v60, v61, v62, v63, v64, v65, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v66 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v67 = sub_100216B14().super.isa;
  v68 = sub_100216B14().super.isa;
  v69 = sub_100216B14().super.isa;
  v70 = sub_100216B14().super.isa;
  v71 = sub_100216B14().super.isa;
  v72 = [v95 initWithVersion:1 modelToCategory:v42 categoriesByView:v50 introducersByCategory:v58 redactions:v66 keyViewMapping:v67 userControllableViewList:v68 piggybackViews:v69 priorityViews:v70 inheritedExcludedViews:v71 hashAlgo:1];

  return v72;
}

id sub_10001AFE4()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D890;
  v1 = sub_100216964();
  v2 = sub_100216964();
  v3 = objc_opt_self();
  v4 = [v3 TPPBPolicyModelToCategoryWithPrefix:v1 category:v2];

  *(v0 + 32) = v4;
  v5 = sub_100216964();
  v6 = sub_100216964();
  v7 = [v3 TPPBPolicyModelToCategoryWithPrefix:v5 category:v6];

  *(v0 + 40) = v7;
  v8 = sub_100216964();
  v9 = sub_100216964();
  v10 = [v3 TPPBPolicyModelToCategoryWithPrefix:v8 category:v9];

  *(v0 + 48) = v10;
  v11 = sub_100216964();
  v12 = sub_100216964();
  v13 = [v3 TPPBPolicyModelToCategoryWithPrefix:v11 category:v12];

  *(v0 + 56) = v13;
  v14 = sub_100216964();
  v15 = sub_100216964();
  v16 = [v3 TPPBPolicyModelToCategoryWithPrefix:v14 category:v15];

  *(v0 + 64) = v16;
  v17 = sub_100216964();
  v18 = sub_100216964();
  v19 = [v3 TPPBPolicyModelToCategoryWithPrefix:v17 category:v18];

  *(v0 + 72) = v19;
  v20 = sub_100216964();
  v21 = sub_100216964();
  v22 = [v3 TPPBPolicyModelToCategoryWithPrefix:v20 category:v21];

  *(v0 + 80) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10021D880;
  v24 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v26 = objc_opt_self();
  v27 = [v26 TPPBPolicyCategoriesByViewWithView:v24 categories:isa];

  *(v23 + 32) = v27;
  v28 = sub_100216964();
  v29 = sub_100216B14().super.isa;
  v30 = [v26 TPPBPolicyCategoriesByViewWithView:v28 categories:v29];

  *(v23 + 40) = v30;
  v31 = sub_100216964();
  v32 = sub_100216B14().super.isa;
  v33 = [v26 TPPBPolicyCategoriesByViewWithView:v31 categories:v32];

  *(v23 + 48) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10021D880;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = objc_opt_self();
  v38 = [v37 TPPBPolicyIntroducersByCategoryWithCategory:v35 introducers:v36];

  *(v34 + 32) = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v37 TPPBPolicyIntroducersByCategoryWithCategory:v39 introducers:v40];

  *(v34 + 40) = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v37 TPPBPolicyIntroducersByCategoryWithCategory:v42 introducers:v43];

  *(v34 + 48) = v44;
  v95 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v45 = sub_100216B14().super.isa;
  v0, v46, v47, v48, v49, v50, v51, v52, v77, v80, v83, v86, v89, v92, v95, 7, v101, v104;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v53 = sub_100216B14().super.isa;
  v23, v54, v55, v56, v57, v58, v59, v60, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v61 = sub_100216B14().super.isa;
  v34, v62, v63, v64, v65, v66, v67, v68, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v69 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v70 = sub_100216B14().super.isa;
  v71 = sub_100216B14().super.isa;
  v72 = sub_100216B14().super.isa;
  v73 = sub_100216B14().super.isa;
  v74 = sub_100216B14().super.isa;
  v75 = [v98 initWithVersion:2 modelToCategory:v45 categoriesByView:v53 introducersByCategory:v61 redactions:v69 keyViewMapping:v70 userControllableViewList:v71 piggybackViews:v72 priorityViews:v73 inheritedExcludedViews:v74 hashAlgo:1];

  return v75;
}

id sub_10001B6FC()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D890;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v18 = v1;
  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v19 = sub_100216964();
  v20 = sub_100216964();
  v21 = [v4 TPPBPolicyModelToCategoryWithPrefix:v19 category:v20];

  *&v18[2]._TtCs12_SwiftObject_opaque[8] = v21;
  v477 = v18;
  v22 = sub_100216964();
  v23 = sub_100216964();
  v24 = [v4 TPPBPolicyModelToCategoryWithPrefix:v22 category:v23];

  *v18[2].endpoint = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10021D8A0;
  v26 = v25;
  v27 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v29 = objc_opt_self();
  v30 = [v29 TPPBPolicyCategoriesByViewWithView:v27 categories:isa];

  v26[4] = v30;
  v31 = sub_100216964();
  v32 = sub_100216B14().super.isa;
  v33 = [v29 TPPBPolicyCategoriesByViewWithView:v31 categories:v32];

  v26[5] = v33;
  v34 = sub_100216964();
  v35 = sub_100216B14().super.isa;
  v36 = [v29 TPPBPolicyCategoriesByViewWithView:v34 categories:v35];

  v26[6] = v36;
  v37 = sub_100216964();
  v38 = sub_100216B14().super.isa;
  v39 = [v29 TPPBPolicyCategoriesByViewWithView:v37 categories:v38];

  v26[7] = v39;
  v40 = sub_100216964();
  v41 = sub_100216B14().super.isa;
  v42 = [v29 TPPBPolicyCategoriesByViewWithView:v40 categories:v41];

  v26[8] = v42;
  v43 = sub_100216964();
  v44 = sub_100216B14().super.isa;
  v45 = [v29 TPPBPolicyCategoriesByViewWithView:v43 categories:v44];

  v26[9] = v45;
  v46 = sub_100216964();
  v47 = sub_100216B14().super.isa;
  v48 = [v29 TPPBPolicyCategoriesByViewWithView:v46 categories:v47];

  v26[10] = v48;
  v49 = sub_100216964();
  v50 = sub_100216B14().super.isa;
  v51 = [v29 TPPBPolicyCategoriesByViewWithView:v49 categories:v50];

  v26[11] = v51;
  v52 = sub_100216964();
  v53 = sub_100216B14().super.isa;
  v54 = [v29 TPPBPolicyCategoriesByViewWithView:v52 categories:v53];

  v26[12] = v54;
  v55 = sub_100216964();
  v56 = sub_100216B14().super.isa;
  v57 = [v29 TPPBPolicyCategoriesByViewWithView:v55 categories:v56];

  v26[13] = v57;
  v58 = sub_100216964();
  v59 = sub_100216B14().super.isa;
  v60 = [v29 TPPBPolicyCategoriesByViewWithView:v58 categories:v59];

  v26[14] = v60;
  v61 = sub_100216964();
  v62 = sub_100216B14().super.isa;
  v63 = [v29 TPPBPolicyCategoriesByViewWithView:v61 categories:v62];

  v26[15] = v63;
  v64 = sub_100216964();
  v65 = sub_100216B14().super.isa;
  v66 = [v29 TPPBPolicyCategoriesByViewWithView:v64 categories:v65];

  v26[16] = v66;
  v67 = sub_100216964();
  v68 = sub_100216B14().super.isa;
  v69 = [v29 TPPBPolicyCategoriesByViewWithView:v67 categories:v68];

  v26[17] = v69;
  v70 = sub_100216964();
  v71 = sub_100216B14().super.isa;
  v72 = [v29 TPPBPolicyCategoriesByViewWithView:v70 categories:v71];

  v26[18] = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_10021D8B0;
  v74 = v73;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = objc_opt_self();
  v78 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v75 introducers:v76];

  v74[4] = v78;
  v79 = sub_100216964();
  v80 = sub_100216B14().super.isa;
  v81 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v79 introducers:v80];

  v74[5] = v81;
  v82 = sub_100216964();
  v83 = sub_100216B14().super.isa;
  v84 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v82 introducers:v83];

  v443 = v74;
  v74[6] = v84;
  v85 = sub_100216964();
  v86 = sub_100216B14().super.isa;
  v87 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v85 introducers:v86];

  v74[7] = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_10021D8C0;
  v89 = v88;
  v90 = objc_opt_self();
  v91 = sub_100216964();
  v92 = sub_100216964();
  v93 = [v90 fieldMatch:v91 fieldRegex:v92];

  v94 = sub_100216964();
  v95 = objc_opt_self();
  v96 = [v95 TPPBPolicyKeyViewMappingWithView:v94 matchingRule:v93];

  v89[4] = v96;
  v97 = sub_100216964();
  v98 = sub_100216964();
  v99 = [v90 fieldMatch:v97 fieldRegex:v98];

  v100 = sub_100216964();
  v101 = [v95 TPPBPolicyKeyViewMappingWithView:v100 matchingRule:v99];

  v89[5] = v101;
  v102 = sub_100216964();
  v103 = sub_100216964();
  v104 = [v90 fieldMatch:v102 fieldRegex:v103];

  v105 = sub_100216964();
  v106 = [v95 TPPBPolicyKeyViewMappingWithView:v105 matchingRule:v104];

  v89[6] = v106;
  v107 = sub_100216964();
  v108 = sub_100216964();
  v109 = [v90 fieldMatch:v107 fieldRegex:v108];

  v110 = sub_100216964();
  v111 = [v95 TPPBPolicyKeyViewMappingWithView:v110 matchingRule:v109];

  v89[7] = v111;
  v112 = sub_100216964();
  v113 = sub_100216964();
  v114 = [v90 fieldMatch:v112 fieldRegex:v113];

  v115 = sub_100216964();
  v116 = [v95 TPPBPolicyKeyViewMappingWithView:v115 matchingRule:v114];

  v89[8] = v116;
  v117 = sub_100216964();
  v118 = sub_100216964();
  v119 = [v90 fieldMatch:v117 fieldRegex:v118];

  v120 = sub_100216964();
  v121 = [v95 TPPBPolicyKeyViewMappingWithView:v120 matchingRule:v119];

  v89[9] = v121;
  v122 = sub_100216964();
  v123 = sub_100216964();
  v124 = [v90 fieldMatch:v122 fieldRegex:v123];

  v125 = sub_100216964();
  v126 = [v95 TPPBPolicyKeyViewMappingWithView:v125 matchingRule:v124];

  v89[10] = v126;
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_10021D880;
  v128 = sub_100216964();
  v129 = sub_100216964();
  v130 = [v90 fieldMatch:v128 fieldRegex:v129];

  *(v127 + 32) = v130;
  v131 = sub_100216964();
  v132 = sub_100216964();
  v133 = [v90 fieldMatch:v131 fieldRegex:v132];

  *(v127 + 40) = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v90 fieldMatch:v134 fieldRegex:v135];

  *(v127 + 48) = v136;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v137 = sub_100216B14().super.isa;
  v127, v138, v139, v140, v141, v142, v143, v144, v361, v373, v385, v397, v409, v421, "ProtectedCloudStorage", v443, "DURldmljZVBhaXJpbmc=", v26;
  v145 = [v90 orMatch:v137];

  v146 = sub_100216964();
  v147 = [v95 TPPBPolicyKeyViewMappingWithView:v146 matchingRule:v145];

  v89[11] = v147;
  v148 = sub_100216964();
  v149 = sub_100216964();
  v150 = [v90 fieldMatch:v148 fieldRegex:v149];

  v151 = sub_100216964();
  v152 = [v95 TPPBPolicyKeyViewMappingWithView:v151 matchingRule:v150];

  v89[12] = v152;
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_10021D8B0;
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_10021D8D0;
  v155 = sub_100216964();
  v156 = sub_100216964();
  v157 = [v90 fieldMatch:v155 fieldRegex:v156];

  *(v154 + 32) = v157;
  v158 = sub_100216964();
  v159 = sub_100216964();
  v160 = [v90 fieldMatch:v158 fieldRegex:v159];

  *(v154 + 40) = v160;
  v161 = sub_100216B14().super.isa;
  v154, v162, v163, v164, v165, v166, v167, v168, v362, v374, v386, v398, v410, v89, v432, v444, v455, v466;
  v169 = [v90 andMatch:v161];

  *(v153 + 32) = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_10021D8D0;
  v171 = sub_100216964();
  v172 = sub_100216964();
  v173 = [v90 fieldMatch:v171 fieldRegex:v172];

  *(v170 + 32) = v173;
  v174 = sub_100216964();
  v175 = sub_100216964();
  v176 = [v90 fieldMatch:v174 fieldRegex:v175];

  *(v170 + 40) = v176;
  v177 = sub_100216B14().super.isa;
  v170, v178, v179, v180, v181, v182, v183, v184, v363, v375, v387, v399, v411, v422, v433, v445, v456, v467;
  v185 = [v90 andMatch:v177];

  *(v153 + 40) = v185;
  v186 = sub_100216964();
  v187 = sub_100216964();
  v188 = [v90 fieldMatch:v186 fieldRegex:v187];

  *(v153 + 48) = v188;
  v189 = sub_100216964();
  v190 = sub_100216964();
  v191 = [v90 fieldMatch:v189 fieldRegex:v190];

  *(v153 + 56) = v191;
  v192 = sub_100216B14().super.isa;
  v153, v193, v194, v195, v196, v197, v198, v199, v364, v376, v388, v400, v412, v423, v434, v446, v457, v468;
  v200 = [v90 orMatch:v192];

  v201 = sub_100216964();
  v202 = [v95 TPPBPolicyKeyViewMappingWithView:v201 matchingRule:v200];

  v203 = v424;
  *(v424 + 104) = v202;
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_10021D8D0;
  v205 = sub_100216964();
  v206 = sub_100216964();
  v207 = [v90 fieldMatch:v205 fieldRegex:v206];

  *(v204 + 32) = v207;
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_10021D880;
  v209 = sub_100216964();
  v210 = sub_100216964();
  v211 = [v90 fieldMatch:v209 fieldRegex:v210];

  *(v208 + 32) = v211;
  v212 = sub_100216964();
  v213 = sub_100216964();
  v214 = [v90 fieldMatch:v212 fieldRegex:v213];

  *(v208 + 40) = v214;
  v215 = sub_100216964();
  v216 = sub_100216964();
  v217 = [v90 fieldMatch:v215 fieldRegex:v216];

  *(v208 + 48) = v217;
  v218 = sub_100216B14().super.isa;
  v208, v219, v220, v221, v222, v223, v224, v225, v365, v377, v389, v401, v413, v424, v435, v447, v458, v469;
  v226 = [v90 andMatch:v218];

  *(v204 + 40) = v226;
  v227 = sub_100216B14().super.isa;
  v204, v228, v229, v230, v231, v232, v233, v234, v366, v378, v390, v402, v414, v425, v436, v448, v459, v470;
  v235 = [v90 orMatch:v227];

  v236 = sub_100216964();
  v237 = [v95 TPPBPolicyKeyViewMappingWithView:v236 matchingRule:v235];

  *(v203 + 112) = v237;
  v238 = swift_allocObject();
  *(v238 + 16) = xmmword_10021D8E0;
  v239 = sub_100216964();
  v240 = sub_100216964();
  v241 = [v90 fieldMatch:v239 fieldRegex:v240];

  *(v238 + 32) = v241;
  v242 = sub_100216964();
  v243 = sub_100216964();
  v244 = [v90 fieldMatch:v242 fieldRegex:v243];

  *(v238 + 40) = v244;
  v245 = sub_100216964();
  v246 = sub_100216964();
  v247 = [v90 fieldMatch:v245 fieldRegex:v246];

  *(v238 + 48) = v247;
  v248 = sub_100216964();
  v249 = sub_100216964();
  v250 = [v90 fieldMatch:v248 fieldRegex:v249];

  *(v238 + 56) = v250;
  v251 = sub_100216964();
  v252 = sub_100216964();
  v253 = [v90 fieldMatch:v251 fieldRegex:v252];

  *(v238 + 64) = v253;
  v254 = sub_100216964();
  v255 = sub_100216964();
  v256 = [v90 fieldMatch:v254 fieldRegex:v255];

  *(v238 + 72) = v256;
  v257 = sub_100216964();
  v258 = sub_100216964();
  v259 = [v90 fieldMatch:v257 fieldRegex:v258];

  *(v238 + 80) = v259;
  v260 = sub_100216964();
  v261 = sub_100216964();
  v262 = [v90 fieldMatch:v260 fieldRegex:v261];

  *(v238 + 88) = v262;
  v263 = sub_100216964();
  v264 = sub_100216964();
  v265 = [v90 fieldMatch:v263 fieldRegex:v264];

  *(v238 + 96) = v265;
  v266 = sub_100216964();
  v267 = sub_100216964();
  v268 = [v90 fieldMatch:v266 fieldRegex:v267];

  *(v238 + 104) = v268;
  v269 = sub_100216964();
  v270 = sub_100216964();
  v271 = [v90 fieldMatch:v269 fieldRegex:v270];

  *(v238 + 112) = v271;
  v272 = sub_100216964();
  v273 = sub_100216964();
  v274 = [v90 fieldMatch:v272 fieldRegex:v273];

  *(v238 + 120) = v274;
  v275 = sub_100216B14().super.isa;
  v238, v276, v277, v278, v279, v280, v281, v282, v367, v379, v391, v403, v415, v426, v437, v449, v460, v471;
  v283 = [v90 orMatch:v275];

  v284 = sub_100216964();
  v285 = [v95 TPPBPolicyKeyViewMappingWithView:v284 matchingRule:v283];

  *(v203 + 120) = v285;
  v286 = sub_100216964();
  v287 = sub_100216964();
  v288 = [v90 fieldMatch:v286 fieldRegex:v287];

  v289 = sub_100216964();
  v290 = [v95 TPPBPolicyKeyViewMappingWithView:v289 matchingRule:v288];

  *(v203 + 128) = v290;
  v291 = sub_100216964();
  v292 = sub_100216964();
  v293 = [v90 fieldMatch:v291 fieldRegex:v292];

  v294 = sub_100216964();
  v295 = [v95 TPPBPolicyKeyViewMappingWithView:v294 matchingRule:v293];

  *(v203 + 136) = v295;
  v296 = swift_allocObject();
  *(v296 + 16) = xmmword_10021D880;
  v297 = sub_100216964();
  v298 = sub_100216964();
  v299 = [v90 fieldMatch:v297 fieldRegex:v298];

  *(v296 + 32) = v299;
  v300 = sub_100216964();
  v301 = sub_100216964();
  v302 = [v90 fieldMatch:v300 fieldRegex:v301];

  *(v296 + 40) = v302;
  v303 = sub_100216964();
  v304 = sub_100216964();
  v305 = [v90 fieldMatch:v303 fieldRegex:v304];

  *(v296 + 48) = v305;
  v306 = sub_100216B14().super.isa;
  v296, v307, v308, v309, v310, v311, v312, v313, v368, v380, v392, v404, v416, v427, v438, v450, v461, v472;
  v314 = [v90 orMatch:v306];

  v315 = sub_100216964();
  v316 = [v95 TPPBPolicyKeyViewMappingWithView:v315 matchingRule:v314];

  *(v203 + 144) = v316;
  v317 = sub_100216964();
  v318 = sub_100216964();
  v319 = [v90 fieldMatch:v317 fieldRegex:v318];

  v320 = sub_100216964();
  v321 = [v95 TPPBPolicyKeyViewMappingWithView:v320 matchingRule:v319];

  *(v203 + 152) = v321;
  v478 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v322 = sub_100216B14().super.isa;
  v477, v323, v324, v325, v326, v327, v328, v329, v369, v381, v393, v405, v417, v428, v439, v451, v462, v473;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v330 = sub_100216B14().super.isa;
  v474, v331, v332, v333, v334, v335, v336, v337, v370, v382, v394, v406, v418, v429, v440, v452, v463, v474;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v338 = sub_100216B14().super.isa;
  v453, v339, v340, v341, v342, v343, v344, v345, v371, v383, v395, v407, v419, v430, v441, v453, v464, v475;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v346 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v347 = sub_100216B14().super.isa;
  v203, v348, v349, v350, v351, v352, v353, v354, v372, v384, v396, v408, v420, v431, v442, v454, v465, v476;
  v355 = sub_100216B14().super.isa;
  v356 = sub_100216B14().super.isa;
  v357 = sub_100216B14().super.isa;
  v358 = sub_100216B14().super.isa;
  v359 = [v478 initWithVersion:3 modelToCategory:v322 categoriesByView:v330 introducersByCategory:v338 redactions:v346 keyViewMapping:v347 userControllableViewList:v355 piggybackViews:v356 priorityViews:v357 inheritedExcludedViews:v358 hashAlgo:1];

  return v359;
}

id sub_10001D9F4()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D890;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v469 = v1;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021D8F0;
  v25 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v27 = objc_opt_self();
  v28 = [v27 TPPBPolicyCategoriesByViewWithView:v25 categories:isa];

  *(v24 + 32) = v28;
  v29 = sub_100216964();
  v30 = sub_100216B14().super.isa;
  v31 = [v27 TPPBPolicyCategoriesByViewWithView:v29 categories:v30];

  *(v24 + 40) = v31;
  v32 = sub_100216964();
  v33 = sub_100216B14().super.isa;
  v34 = [v27 TPPBPolicyCategoriesByViewWithView:v32 categories:v33];

  *(v24 + 48) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v27 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v24 + 56) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v27 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v24 + 64) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v27 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v24 + 72) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v27 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v24 + 80) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v27 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v24 + 88) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v27 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v24 + 96) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v27 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v24 + 104) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v27 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v24 + 112) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v27 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v24 + 120) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v27 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  v468 = v24;
  *(v24 + 128) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v27 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v24 + 136) = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_10021D8B0;
  v69 = v68;
  v70 = sub_100216964();
  v71 = sub_100216B14().super.isa;
  v72 = objc_opt_self();
  v73 = [v72 TPPBPolicyIntroducersByCategoryWithCategory:v70 introducers:v71];

  v69[4] = v73;
  v74 = sub_100216964();
  v75 = sub_100216B14().super.isa;
  v76 = [v72 TPPBPolicyIntroducersByCategoryWithCategory:v74 introducers:v75];

  v69[5] = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v72 TPPBPolicyIntroducersByCategoryWithCategory:v77 introducers:v78];

  v69[6] = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v72 TPPBPolicyIntroducersByCategoryWithCategory:v80 introducers:v81];

  v69[7] = v82;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_10021D8A0;
  v84 = v83;
  v85 = objc_opt_self();
  v86 = sub_100216964();
  v87 = sub_100216964();
  v88 = [v85 fieldMatch:v86 fieldRegex:v87];

  v89 = sub_100216964();
  v90 = objc_opt_self();
  v91 = [v90 TPPBPolicyKeyViewMappingWithView:v89 matchingRule:v88];

  v84[4] = v91;
  v92 = sub_100216964();
  v93 = sub_100216964();
  v94 = [v85 fieldMatch:v92 fieldRegex:v93];

  v95 = sub_100216964();
  v96 = [v90 TPPBPolicyKeyViewMappingWithView:v95 matchingRule:v94];

  v84[5] = v96;
  v97 = sub_100216964();
  v98 = sub_100216964();
  v99 = [v85 fieldMatch:v97 fieldRegex:v98];

  v100 = sub_100216964();
  v101 = [v90 TPPBPolicyKeyViewMappingWithView:v100 matchingRule:v99];

  v84[6] = v101;
  v102 = sub_100216964();
  v103 = sub_100216964();
  v104 = [v85 fieldMatch:v102 fieldRegex:v103];

  v105 = sub_100216964();
  v106 = [v90 TPPBPolicyKeyViewMappingWithView:v105 matchingRule:v104];

  v84[7] = v106;
  v107 = sub_100216964();
  v108 = sub_100216964();
  v109 = [v85 fieldMatch:v107 fieldRegex:v108];

  v110 = sub_100216964();
  v111 = [v90 TPPBPolicyKeyViewMappingWithView:v110 matchingRule:v109];

  v84[8] = v111;
  v112 = sub_100216964();
  v113 = sub_100216964();
  v114 = [v85 fieldMatch:v112 fieldRegex:v113];

  v115 = sub_100216964();
  v116 = [v90 TPPBPolicyKeyViewMappingWithView:v115 matchingRule:v114];

  v84[9] = v116;
  v117 = sub_100216964();
  v118 = sub_100216964();
  v119 = [v85 fieldMatch:v117 fieldRegex:v118];

  v120 = sub_100216964();
  v121 = [v90 TPPBPolicyKeyViewMappingWithView:v120 matchingRule:v119];

  v84[10] = v121;
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_10021D880;
  v123 = sub_100216964();
  v124 = sub_100216964();
  v125 = [v85 fieldMatch:v123 fieldRegex:v124];

  *(v122 + 32) = v125;
  v126 = sub_100216964();
  v127 = sub_100216964();
  v128 = [v85 fieldMatch:v126 fieldRegex:v127];

  *(v122 + 40) = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v85 fieldMatch:v129 fieldRegex:v130];

  *(v122 + 48) = v131;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v132 = sub_100216B14().super.isa;
  v122, v133, v134, v135, v136, v137, v138, v139, v352, v364, v376, v388, v400, v412, v424, "ProtectedCloudStorage", v69, "Security-61901.40.77\n";
  v140 = [v85 orMatch:v132];

  v141 = sub_100216964();
  v142 = [v90 TPPBPolicyKeyViewMappingWithView:v141 matchingRule:v140];

  v84[11] = v142;
  v143 = sub_100216964();
  v144 = sub_100216964();
  v145 = [v85 fieldMatch:v143 fieldRegex:v144];

  v146 = sub_100216964();
  v147 = [v90 TPPBPolicyKeyViewMappingWithView:v146 matchingRule:v145];

  v84[12] = v147;
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_10021D8B0;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_10021D8D0;
  v150 = sub_100216964();
  v151 = sub_100216964();
  v152 = [v85 fieldMatch:v150 fieldRegex:v151];

  *(v149 + 32) = v152;
  v153 = sub_100216964();
  v154 = sub_100216964();
  v155 = [v85 fieldMatch:v153 fieldRegex:v154];

  *(v149 + 40) = v155;
  v156 = sub_100216B14().super.isa;
  v149, v157, v158, v159, v160, v161, v162, v163, v353, v365, v377, v389, v401, v413, v84, v435, v446, v457;
  v164 = [v85 andMatch:v156];

  *(v148 + 32) = v164;
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_10021D8D0;
  v166 = sub_100216964();
  v167 = sub_100216964();
  v168 = [v85 fieldMatch:v166 fieldRegex:v167];

  *(v165 + 32) = v168;
  v169 = sub_100216964();
  v170 = sub_100216964();
  v171 = [v85 fieldMatch:v169 fieldRegex:v170];

  *(v165 + 40) = v171;
  v172 = sub_100216B14().super.isa;
  v165, v173, v174, v175, v176, v177, v178, v179, v354, v366, v378, v390, v402, v414, v425, v436, v447, v458;
  v180 = [v85 andMatch:v172];

  *(v148 + 40) = v180;
  v181 = sub_100216964();
  v182 = sub_100216964();
  v183 = [v85 fieldMatch:v181 fieldRegex:v182];

  *(v148 + 48) = v183;
  v184 = sub_100216964();
  v185 = sub_100216964();
  v186 = [v85 fieldMatch:v184 fieldRegex:v185];

  *(v148 + 56) = v186;
  v187 = sub_100216B14().super.isa;
  v148, v188, v189, v190, v191, v192, v193, v194, v355, v367, v379, v391, v403, v415, v426, v437, v448, v459;
  v195 = [v85 orMatch:v187];

  v196 = sub_100216964();
  v197 = [v90 TPPBPolicyKeyViewMappingWithView:v196 matchingRule:v195];

  v198 = v427;
  *&v427[3]._TtCs12_SwiftObject_opaque[8] = v197;
  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_10021D8D0;
  v200 = sub_100216964();
  v201 = sub_100216964();
  v202 = [v85 fieldMatch:v200 fieldRegex:v201];

  *(v199 + 32) = v202;
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_10021D880;
  v204 = sub_100216964();
  v205 = sub_100216964();
  v206 = [v85 fieldMatch:v204 fieldRegex:v205];

  *(v203 + 32) = v206;
  v207 = sub_100216964();
  v208 = sub_100216964();
  v209 = [v85 fieldMatch:v207 fieldRegex:v208];

  *(v203 + 40) = v209;
  v210 = sub_100216964();
  v211 = sub_100216964();
  v212 = [v85 fieldMatch:v210 fieldRegex:v211];

  *(v203 + 48) = v212;
  v213 = sub_100216B14().super.isa;
  v203, v214, v215, v216, v217, v218, v219, v220, v356, v368, v380, v392, v404, v416, v427, v438, v449, v460;
  v221 = [v85 andMatch:v213];

  *(v199 + 40) = v221;
  v222 = sub_100216B14().super.isa;
  v199, v223, v224, v225, v226, v227, v228, v229, v357, v369, v381, v393, v405, v417, v428, v439, v450, v461;
  v230 = [v85 orMatch:v222];

  v231 = sub_100216964();
  v232 = [v90 TPPBPolicyKeyViewMappingWithView:v231 matchingRule:v230];

  v233 = v198;
  *v198[3].endpoint = v232;
  v234 = swift_allocObject();
  *(v234 + 16) = xmmword_10021D8E0;
  v235 = sub_100216964();
  v236 = sub_100216964();
  v237 = [v85 fieldMatch:v235 fieldRegex:v236];

  *(v234 + 32) = v237;
  v238 = sub_100216964();
  v239 = sub_100216964();
  v240 = [v85 fieldMatch:v238 fieldRegex:v239];

  *(v234 + 40) = v240;
  v241 = sub_100216964();
  v242 = sub_100216964();
  v243 = [v85 fieldMatch:v241 fieldRegex:v242];

  *(v234 + 48) = v243;
  v244 = sub_100216964();
  v245 = sub_100216964();
  v246 = [v85 fieldMatch:v244 fieldRegex:v245];

  *(v234 + 56) = v246;
  v247 = sub_100216964();
  v248 = sub_100216964();
  v249 = [v85 fieldMatch:v247 fieldRegex:v248];

  *(v234 + 64) = v249;
  v250 = sub_100216964();
  v251 = sub_100216964();
  v252 = [v85 fieldMatch:v250 fieldRegex:v251];

  *(v234 + 72) = v252;
  v253 = sub_100216964();
  v254 = sub_100216964();
  v255 = [v85 fieldMatch:v253 fieldRegex:v254];

  *(v234 + 80) = v255;
  v256 = sub_100216964();
  v257 = sub_100216964();
  v258 = [v85 fieldMatch:v256 fieldRegex:v257];

  *(v234 + 88) = v258;
  v259 = sub_100216964();
  v260 = sub_100216964();
  v261 = [v85 fieldMatch:v259 fieldRegex:v260];

  *(v234 + 96) = v261;
  v262 = sub_100216964();
  v263 = sub_100216964();
  v264 = [v85 fieldMatch:v262 fieldRegex:v263];

  *(v234 + 104) = v264;
  v265 = sub_100216964();
  v266 = sub_100216964();
  v267 = [v85 fieldMatch:v265 fieldRegex:v266];

  *(v234 + 112) = v267;
  v268 = sub_100216964();
  v269 = sub_100216964();
  v270 = [v85 fieldMatch:v268 fieldRegex:v269];

  *(v234 + 120) = v270;
  v271 = sub_100216B14().super.isa;
  v234, v272, v273, v274, v275, v276, v277, v278, v358, v370, v382, v394, v406, v418, v429, v440, v451, v462;
  v279 = [v85 orMatch:v271];

  v280 = sub_100216964();
  v281 = [v90 TPPBPolicyKeyViewMappingWithView:v280 matchingRule:v279];

  *v198[3].containerMap = v281;
  v282 = sub_100216964();
  v283 = sub_100216964();
  v284 = [v85 fieldMatch:v282 fieldRegex:v283];

  v285 = sub_100216964();
  v286 = [v90 TPPBPolicyKeyViewMappingWithView:v285 matchingRule:v284];

  *v198[4]._TtCs12_SwiftObject_opaque = v286;
  v287 = sub_100216964();
  v288 = sub_100216964();
  v289 = [v85 fieldMatch:v287 fieldRegex:v288];

  v290 = sub_100216964();
  v291 = [v90 TPPBPolicyKeyViewMappingWithView:v290 matchingRule:v289];

  *&v198[4]._TtCs12_SwiftObject_opaque[8] = v291;
  v292 = swift_allocObject();
  *(v292 + 16) = xmmword_10021D880;
  v293 = sub_100216964();
  v294 = sub_100216964();
  v295 = [v85 fieldMatch:v293 fieldRegex:v294];

  *(v292 + 32) = v295;
  v296 = sub_100216964();
  v297 = sub_100216964();
  v298 = [v85 fieldMatch:v296 fieldRegex:v297];

  *(v292 + 40) = v298;
  v299 = sub_100216964();
  v300 = sub_100216964();
  v301 = [v85 fieldMatch:v299 fieldRegex:v300];

  *(v292 + 48) = v301;
  v302 = sub_100216B14().super.isa;
  v292, v303, v304, v305, v306, v307, v308, v309, v359, v371, v383, v395, v407, v419, v430, v441, v452, v463;
  v310 = [v85 orMatch:v302];

  v311 = sub_100216964();
  v312 = [v90 TPPBPolicyKeyViewMappingWithView:v311 matchingRule:v310];

  *v198[4].endpoint = v312;
  v470 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v313 = sub_100216B14().super.isa;
  v469, v314, v315, v316, v317, v318, v319, v320, v360, v372, v384, v396, v408, v420, v431, v442, v453, v464;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v321 = sub_100216B14().super.isa;
  v468, v322, v323, v324, v325, v326, v327, v328, v361, v373, v385, v397, v409, v421, v432, v443, v454, v465;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v329 = sub_100216B14().super.isa;
  v455, v330, v331, v332, v333, v334, v335, v336, v362, v374, v386, v398, v410, v422, v433, v444, v455, v466;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v337 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v338 = sub_100216B14().super.isa;
  v233, v339, v340, v341, v342, v343, v344, v345, v363, v375, v387, v399, v411, v423, v434, v445, v456, v467;
  v346 = sub_100216B14().super.isa;
  v347 = sub_100216B14().super.isa;
  v348 = sub_100216B14().super.isa;
  v349 = sub_100216B14().super.isa;
  v350 = [v470 initWithVersion:4 modelToCategory:v313 categoriesByView:v321 introducersByCategory:v329 redactions:v337 keyViewMapping:v338 userControllableViewList:v346 piggybackViews:v347 priorityViews:v348 inheritedExcludedViews:v349 hashAlgo:1];

  return v350;
}

id sub_10001FC04()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D900;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v483 = v1;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  *v1[2].containerMap = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10021D8F0;
  v28 = v27;
  v29 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v31 = objc_opt_self();
  v32 = [v31 TPPBPolicyCategoriesByViewWithView:v29 categories:isa];

  *v28[1]._TtCs12_SwiftObject_opaque = v32;
  v33 = sub_100216964();
  v34 = sub_100216B14().super.isa;
  v35 = [v31 TPPBPolicyCategoriesByViewWithView:v33 categories:v34];

  *&v28[1]._TtCs12_SwiftObject_opaque[8] = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v31 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  *v28[1].endpoint = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v31 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  *v28[1].containerMap = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v31 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  *v28[2]._TtCs12_SwiftObject_opaque = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v31 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  *&v28[2]._TtCs12_SwiftObject_opaque[8] = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v31 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  *v28[2].endpoint = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v31 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  *v28[2].containerMap = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v31 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  *v28[3]._TtCs12_SwiftObject_opaque = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v31 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  *&v28[3]._TtCs12_SwiftObject_opaque[8] = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v31 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  v63 = v28;
  *v28[3].endpoint = v62;
  v64 = sub_100216964();
  v65 = sub_100216B14().super.isa;
  v66 = [v31 TPPBPolicyCategoriesByViewWithView:v64 categories:v65];

  *v63[3].containerMap = v66;
  v67 = sub_100216964();
  v68 = sub_100216B14().super.isa;
  v69 = [v31 TPPBPolicyCategoriesByViewWithView:v67 categories:v68];

  *v63[4]._TtCs12_SwiftObject_opaque = v69;
  v482 = v63;
  v70 = sub_100216964();
  v71 = sub_100216B14().super.isa;
  v72 = [v31 TPPBPolicyCategoriesByViewWithView:v70 categories:v71];

  *&v63[4]._TtCs12_SwiftObject_opaque[8] = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_10021D8B0;
  v74 = v73;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = objc_opt_self();
  v78 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v75 introducers:v76];

  *v74[1]._TtCs12_SwiftObject_opaque = v78;
  v79 = sub_100216964();
  v80 = sub_100216B14().super.isa;
  v81 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v79 introducers:v80];

  *&v74[1]._TtCs12_SwiftObject_opaque[8] = v81;
  v82 = sub_100216964();
  v83 = sub_100216B14().super.isa;
  v84 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v82 introducers:v83];

  v481 = v74;
  *v74[1].endpoint = v84;
  v85 = sub_100216964();
  v86 = sub_100216B14().super.isa;
  v87 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v85 introducers:v86];

  *v74[1].containerMap = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_10021D8C0;
  v89 = v88;
  v90 = objc_opt_self();
  v91 = sub_100216964();
  v92 = sub_100216964();
  v93 = [v90 fieldMatch:v91 fieldRegex:v92];

  v94 = sub_100216964();
  v95 = objc_opt_self();
  v96 = [v95 TPPBPolicyKeyViewMappingWithView:v94 matchingRule:v93];

  *v89[1]._TtCs12_SwiftObject_opaque = v96;
  v97 = sub_100216964();
  v98 = sub_100216964();
  v99 = [v90 fieldMatch:v97 fieldRegex:v98];

  v100 = sub_100216964();
  v101 = [v95 TPPBPolicyKeyViewMappingWithView:v100 matchingRule:v99];

  *&v89[1]._TtCs12_SwiftObject_opaque[8] = v101;
  v102 = sub_100216964();
  v103 = sub_100216964();
  v104 = [v90 fieldMatch:v102 fieldRegex:v103];

  v105 = sub_100216964();
  v106 = [v95 TPPBPolicyKeyViewMappingWithView:v105 matchingRule:v104];

  *v89[1].endpoint = v106;
  v107 = sub_100216964();
  v108 = sub_100216964();
  v109 = [v90 fieldMatch:v107 fieldRegex:v108];

  v110 = sub_100216964();
  v111 = [v95 TPPBPolicyKeyViewMappingWithView:v110 matchingRule:v109];

  *v89[1].containerMap = v111;
  v112 = sub_100216964();
  v113 = sub_100216964();
  v114 = [v90 fieldMatch:v112 fieldRegex:v113];

  v115 = sub_100216964();
  v116 = [v95 TPPBPolicyKeyViewMappingWithView:v115 matchingRule:v114];

  *v89[2]._TtCs12_SwiftObject_opaque = v116;
  v117 = sub_100216964();
  v118 = sub_100216964();
  v119 = [v90 fieldMatch:v117 fieldRegex:v118];

  v120 = sub_100216964();
  v121 = [v95 TPPBPolicyKeyViewMappingWithView:v120 matchingRule:v119];

  *&v89[2]._TtCs12_SwiftObject_opaque[8] = v121;
  v122 = sub_100216964();
  v123 = sub_100216964();
  v124 = [v90 fieldMatch:v122 fieldRegex:v123];

  v125 = sub_100216964();
  v126 = [v95 TPPBPolicyKeyViewMappingWithView:v125 matchingRule:v124];

  *v89[2].endpoint = v126;
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_10021D880;
  v128 = sub_100216964();
  v129 = sub_100216964();
  v130 = [v90 fieldMatch:v128 fieldRegex:v129];

  *(v127 + 32) = v130;
  v131 = sub_100216964();
  v132 = sub_100216964();
  v133 = [v90 fieldMatch:v131 fieldRegex:v132];

  *(v127 + 40) = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v90 fieldMatch:v134 fieldRegex:v135];

  *(v127 + 48) = v136;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v137 = sub_100216B14().super.isa;
  v127, v138, v139, v140, v141, v142, v143, v144, v365, v377, v389, v401, v413, v425, v437, "ProtectedCloudStorage", 0xE, 0x1D;
  v145 = [v90 orMatch:v137];

  v146 = sub_100216964();
  v438 = v95;
  v147 = [v95 TPPBPolicyKeyViewMappingWithView:v146 matchingRule:v145];

  v484 = v89;
  *v89[2].containerMap = v147;
  v148 = sub_100216964();
  v149 = sub_100216964();
  v150 = [v90 fieldMatch:v148 fieldRegex:v149];

  v151 = sub_100216964();
  v152 = [v95 TPPBPolicyKeyViewMappingWithView:v151 matchingRule:v150];

  *v89[3]._TtCs12_SwiftObject_opaque = v152;
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_10021D8B0;
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_10021D8D0;
  v155 = sub_100216964();
  v156 = sub_100216964();
  v157 = [v90 fieldMatch:v155 fieldRegex:v156];

  *(v154 + 32) = v157;
  v158 = sub_100216964();
  v159 = sub_100216964();
  v160 = [v90 fieldMatch:v158 fieldRegex:v159];

  *(v154 + 40) = v160;
  v161 = sub_100216B14().super.isa;
  v154, v162, v163, v164, v165, v166, v167, v168, v366, v378, v390, v402, v414, v426, v438, v449, v460, v471;
  v169 = [v90 andMatch:v161];

  *(v153 + 32) = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_10021D8D0;
  v171 = sub_100216964();
  v172 = sub_100216964();
  v173 = [v90 fieldMatch:v171 fieldRegex:v172];

  *(v170 + 32) = v173;
  v174 = sub_100216964();
  v175 = sub_100216964();
  v176 = [v90 fieldMatch:v174 fieldRegex:v175];

  *(v170 + 40) = v176;
  v177 = sub_100216B14().super.isa;
  v170, v178, v179, v180, v181, v182, v183, v184, v367, v379, v391, v403, v415, v427, v439, v450, v461, v472;
  v185 = [v90 andMatch:v177];

  *(v153 + 40) = v185;
  v186 = sub_100216964();
  v187 = sub_100216964();
  v188 = [v90 fieldMatch:v186 fieldRegex:v187];

  *(v153 + 48) = v188;
  v189 = sub_100216964();
  v190 = sub_100216964();
  v191 = [v90 fieldMatch:v189 fieldRegex:v190];

  *(v153 + 56) = v191;
  v192 = sub_100216B14().super.isa;
  v153, v193, v194, v195, v196, v197, v198, v199, v368, v380, v392, v404, v416, v428, v440, v451, v462, v473;
  v200 = [v90 orMatch:v192];

  v201 = sub_100216964();
  v202 = v441;
  v203 = [v441 TPPBPolicyKeyViewMappingWithView:v201 matchingRule:v200];

  *&v89[3]._TtCs12_SwiftObject_opaque[8] = v203;
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_10021D8D0;
  v205 = sub_100216964();
  v206 = sub_100216964();
  v207 = [v90 fieldMatch:v205 fieldRegex:v206];

  *(v204 + 32) = v207;
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_10021D880;
  v209 = sub_100216964();
  v210 = sub_100216964();
  v211 = [v90 fieldMatch:v209 fieldRegex:v210];

  *(v208 + 32) = v211;
  v212 = sub_100216964();
  v213 = sub_100216964();
  v214 = [v90 fieldMatch:v212 fieldRegex:v213];

  *(v208 + 40) = v214;
  v215 = sub_100216964();
  v216 = sub_100216964();
  v217 = [v90 fieldMatch:v215 fieldRegex:v216];

  *(v208 + 48) = v217;
  v218 = sub_100216B14().super.isa;
  v208, v219, v220, v221, v222, v223, v224, v225, v369, v381, v393, v405, v417, v429, v441, v452, v463, v474;
  v226 = [v90 andMatch:v218];

  *(v204 + 40) = v226;
  v227 = sub_100216B14().super.isa;
  v204, v228, v229, v230, v231, v232, v233, v234, v370, v382, v394, v406, v418, v430, v442, v453, v464, v475;
  v235 = [v90 orMatch:v227];

  v236 = sub_100216964();
  v237 = [v202 TPPBPolicyKeyViewMappingWithView:v236 matchingRule:v235];

  *v89[3].endpoint = v237;
  v238 = swift_allocObject();
  *(v238 + 16) = v465;
  v239 = sub_100216964();
  v240 = sub_100216964();
  v241 = [v90 fieldMatch:v239 fieldRegex:v240];

  *(v238 + 32) = v241;
  v242 = sub_100216964();
  v243 = sub_100216964();
  v244 = [v90 fieldMatch:v242 fieldRegex:v243];

  *(v238 + 40) = v244;
  v245 = sub_100216964();
  v246 = sub_100216964();
  v247 = [v90 fieldMatch:v245 fieldRegex:v246];

  *(v238 + 48) = v247;
  v248 = sub_100216964();
  v249 = sub_100216964();
  v250 = [v90 fieldMatch:v248 fieldRegex:v249];

  *(v238 + 56) = v250;
  v251 = sub_100216964();
  v252 = sub_100216964();
  v253 = [v90 fieldMatch:v251 fieldRegex:v252];

  *(v238 + 64) = v253;
  v254 = sub_100216964();
  v255 = sub_100216964();
  v256 = [v90 fieldMatch:v254 fieldRegex:v255];

  *(v238 + 72) = v256;
  v257 = sub_100216964();
  v258 = sub_100216964();
  v259 = [v90 fieldMatch:v257 fieldRegex:v258];

  *(v238 + 80) = v259;
  v260 = sub_100216964();
  v261 = sub_100216964();
  v262 = [v90 fieldMatch:v260 fieldRegex:v261];

  *(v238 + 88) = v262;
  v263 = sub_100216964();
  v264 = sub_100216964();
  v265 = [v90 fieldMatch:v263 fieldRegex:v264];

  *(v238 + 96) = v265;
  v266 = sub_100216964();
  v267 = sub_100216964();
  v268 = [v90 fieldMatch:v266 fieldRegex:v267];

  *(v238 + 104) = v268;
  v269 = sub_100216964();
  v270 = sub_100216964();
  v271 = [v90 fieldMatch:v269 fieldRegex:v270];

  *(v238 + 112) = v271;
  v272 = sub_100216964();
  v273 = sub_100216964();
  v274 = [v90 fieldMatch:v272 fieldRegex:v273];

  *(v238 + 120) = v274;
  v275 = sub_100216964();
  v276 = sub_100216964();
  v277 = [v90 fieldMatch:v275 fieldRegex:v276];

  *(v238 + 128) = v277;
  v278 = sub_100216964();
  v279 = sub_100216964();
  v280 = [v90 fieldMatch:v278 fieldRegex:v279];

  *(v238 + 136) = v280;
  v281 = sub_100216B14().super.isa;
  v238, v282, v283, v284, v285, v286, v287, v288, v371, v383, v395, v407, v419, v431, v443, v454, v465, *(&v465 + 1);
  v289 = [v90 orMatch:v281];

  v290 = sub_100216964();
  v291 = [v202 TPPBPolicyKeyViewMappingWithView:v290 matchingRule:v289];

  *v89[3].containerMap = v291;
  v292 = sub_100216964();
  v293 = sub_100216964();
  v294 = [v90 fieldMatch:v292 fieldRegex:v293];

  v295 = sub_100216964();
  v296 = [v202 TPPBPolicyKeyViewMappingWithView:v295 matchingRule:v294];

  *v89[4]._TtCs12_SwiftObject_opaque = v296;
  v297 = sub_100216964();
  v298 = sub_100216964();
  v299 = [v90 fieldMatch:v297 fieldRegex:v298];

  v300 = sub_100216964();
  v301 = [v202 TPPBPolicyKeyViewMappingWithView:v300 matchingRule:v299];

  *&v89[4]._TtCs12_SwiftObject_opaque[8] = v301;
  v302 = swift_allocObject();
  *(v302 + 16) = xmmword_10021D880;
  v303 = sub_100216964();
  v304 = sub_100216964();
  v305 = [v90 fieldMatch:v303 fieldRegex:v304];

  *(v302 + 32) = v305;
  v306 = sub_100216964();
  v307 = sub_100216964();
  v308 = [v90 fieldMatch:v306 fieldRegex:v307];

  *(v302 + 40) = v308;
  v309 = sub_100216964();
  v310 = sub_100216964();
  v311 = [v90 fieldMatch:v309 fieldRegex:v310];

  *(v302 + 48) = v311;
  v312 = sub_100216B14().super.isa;
  v302, v313, v314, v315, v316, v317, v318, v319, v372, v384, v396, v408, v420, v432, v444, v455, v466, v476;
  v320 = [v90 orMatch:v312];

  v321 = sub_100216964();
  v322 = [v202 TPPBPolicyKeyViewMappingWithView:v321 matchingRule:v320];

  *v89[4].endpoint = v322;
  v323 = [v90 trueMatch];
  v324 = sub_100216964();
  v325 = [v202 TPPBPolicyKeyViewMappingWithView:v324 matchingRule:v323];

  *v89[4].containerMap = v325;
  v485 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v326 = sub_100216B14().super.isa;
  v483, v327, v328, v329, v330, v331, v332, v333, v373, v385, v397, v409, v421, v433, v445, v456, v467, v477;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v334 = sub_100216B14().super.isa;
  v482, v335, v336, v337, v338, v339, v340, v341, v374, v386, v398, v410, v422, v434, v446, v457, v468, v478;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v342 = sub_100216B14().super.isa;
  v481, v343, v344, v345, v346, v347, v348, v349, v375, v387, v399, v411, v423, v435, v447, v458, v469, v479;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v350 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v351 = sub_100216B14().super.isa;
  v484, v352, v353, v354, v355, v356, v357, v358, v376, v388, v400, v412, v424, v436, v448, v459, v470, v480;
  v359 = sub_100216B14().super.isa;
  v360 = sub_100216B14().super.isa;
  v361 = sub_100216B14().super.isa;
  v362 = sub_100216B14().super.isa;
  v363 = [v485 initWithVersion:5 modelToCategory:v326 categoriesByView:v334 introducersByCategory:v342 redactions:v350 keyViewMapping:v351 userControllableViewList:v359 piggybackViews:v360 priorityViews:v361 inheritedExcludedViews:v362 hashAlgo:1];

  return v363;
}

id sub_100021F8C()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D900;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v478 = v1;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  *v1[2].containerMap = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10021D8F0;
  v28 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v30 = objc_opt_self();
  v31 = [v30 TPPBPolicyCategoriesByViewWithView:v28 categories:isa];

  *(v27 + 32) = v31;
  v32 = sub_100216964();
  v33 = sub_100216B14().super.isa;
  v34 = [v30 TPPBPolicyCategoriesByViewWithView:v32 categories:v33];

  *(v27 + 40) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v30 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v27 + 48) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v30 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v27 + 56) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v30 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v27 + 64) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v30 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v27 + 72) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v30 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v27 + 80) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v30 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v27 + 88) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v30 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v27 + 96) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v30 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v27 + 104) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v30 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v27 + 112) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v30 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v27 + 120) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v30 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  v477 = v27;
  *(v27 + 128) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v30 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v27 + 136) = v70;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_10021D8B0;
  v72 = v71;
  v73 = sub_100216964();
  v74 = sub_100216B14().super.isa;
  v75 = objc_opt_self();
  v76 = [v75 TPPBPolicyIntroducersByCategoryWithCategory:v73 introducers:v74];

  v72[4] = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v75 TPPBPolicyIntroducersByCategoryWithCategory:v77 introducers:v78];

  v72[5] = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v75 TPPBPolicyIntroducersByCategoryWithCategory:v80 introducers:v81];

  v454 = v72;
  v72[6] = v82;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = [v75 TPPBPolicyIntroducersByCategoryWithCategory:v83 introducers:v84];

  v72[7] = v85;
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_10021D8C0;
  v87 = v86;
  v88 = objc_opt_self();
  v89 = sub_100216964();
  v90 = sub_100216964();
  v91 = [v88 fieldMatch:v89 fieldRegex:v90];

  v92 = sub_100216964();
  v93 = objc_opt_self();
  v94 = [v93 TPPBPolicyKeyViewMappingWithView:v92 matchingRule:v91];

  *v87[1]._TtCs12_SwiftObject_opaque = v94;
  v95 = sub_100216964();
  v96 = sub_100216964();
  v97 = [v88 fieldMatch:v95 fieldRegex:v96];

  v98 = sub_100216964();
  v99 = [v93 TPPBPolicyKeyViewMappingWithView:v98 matchingRule:v97];

  *&v87[1]._TtCs12_SwiftObject_opaque[8] = v99;
  v100 = sub_100216964();
  v101 = sub_100216964();
  v102 = [v88 fieldMatch:v100 fieldRegex:v101];

  v103 = sub_100216964();
  v104 = [v93 TPPBPolicyKeyViewMappingWithView:v103 matchingRule:v102];

  *v87[1].endpoint = v104;
  v105 = sub_100216964();
  v106 = sub_100216964();
  v107 = [v88 fieldMatch:v105 fieldRegex:v106];

  v108 = sub_100216964();
  v109 = [v93 TPPBPolicyKeyViewMappingWithView:v108 matchingRule:v107];

  *v87[1].containerMap = v109;
  v110 = sub_100216964();
  v111 = sub_100216964();
  v112 = [v88 fieldMatch:v110 fieldRegex:v111];

  v113 = sub_100216964();
  v114 = [v93 TPPBPolicyKeyViewMappingWithView:v113 matchingRule:v112];

  *v87[2]._TtCs12_SwiftObject_opaque = v114;
  v115 = sub_100216964();
  v116 = sub_100216964();
  v117 = [v88 fieldMatch:v115 fieldRegex:v116];

  v118 = sub_100216964();
  v119 = [v93 TPPBPolicyKeyViewMappingWithView:v118 matchingRule:v117];

  *&v87[2]._TtCs12_SwiftObject_opaque[8] = v119;
  v120 = sub_100216964();
  v121 = sub_100216964();
  v122 = [v88 fieldMatch:v120 fieldRegex:v121];

  v123 = sub_100216964();
  v124 = [v93 TPPBPolicyKeyViewMappingWithView:v123 matchingRule:v122];

  *v87[2].endpoint = v124;
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_10021D880;
  v126 = sub_100216964();
  v127 = sub_100216964();
  v128 = [v88 fieldMatch:v126 fieldRegex:v127];

  *(v125 + 32) = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v88 fieldMatch:v129 fieldRegex:v130];

  *(v125 + 40) = v131;
  v132 = sub_100216964();
  v133 = sub_100216964();
  v134 = [v88 fieldMatch:v132 fieldRegex:v133];

  *(v125 + 48) = v134;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v135 = sub_100216B14().super.isa;
  v125, v136, v137, v138, v139, v140, v141, v142, v362, v374, v386, v398, v410, "ProtectedCloudStorage", 0xE, 0x1D, v454, "Security-61901.40.77\n";
  v143 = [v88 orMatch:v135];

  v144 = sub_100216964();
  v145 = [v93 TPPBPolicyKeyViewMappingWithView:v144 matchingRule:v143];

  v479 = v87;
  *v87[2].containerMap = v145;
  v146 = sub_100216964();
  v147 = sub_100216964();
  v148 = [v88 fieldMatch:v146 fieldRegex:v147];

  v149 = sub_100216964();
  v150 = [v93 TPPBPolicyKeyViewMappingWithView:v149 matchingRule:v148];

  *v87[3]._TtCs12_SwiftObject_opaque = v150;
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_10021D8B0;
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_10021D8D0;
  v153 = sub_100216964();
  v154 = sub_100216964();
  v155 = [v88 fieldMatch:v153 fieldRegex:v154];

  *(v152 + 32) = v155;
  v156 = sub_100216964();
  v157 = sub_100216964();
  v158 = [v88 fieldMatch:v156 fieldRegex:v157];

  *(v152 + 40) = v158;
  v159 = sub_100216B14().super.isa;
  v152, v160, v161, v162, v163, v164, v165, v166, v363, v375, v387, v399, v411, v422, v433, v444, v455, v466;
  v167 = [v88 andMatch:v159];

  *(v151 + 32) = v167;
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_10021D8D0;
  v169 = sub_100216964();
  v170 = sub_100216964();
  v171 = [v88 fieldMatch:v169 fieldRegex:v170];

  *(v168 + 32) = v171;
  v172 = sub_100216964();
  v173 = sub_100216964();
  v174 = [v88 fieldMatch:v172 fieldRegex:v173];

  *(v168 + 40) = v174;
  v175 = sub_100216B14().super.isa;
  v168, v176, v177, v178, v179, v180, v181, v182, v364, v376, v388, v400, v412, v423, v434, v445, v456, v467;
  v183 = [v88 andMatch:v175];

  *(v151 + 40) = v183;
  v184 = sub_100216964();
  v185 = sub_100216964();
  v186 = [v88 fieldMatch:v184 fieldRegex:v185];

  *(v151 + 48) = v186;
  v187 = sub_100216964();
  v188 = sub_100216964();
  v189 = [v88 fieldMatch:v187 fieldRegex:v188];

  *(v151 + 56) = v189;
  v190 = sub_100216B14().super.isa;
  v151, v191, v192, v193, v194, v195, v196, v197, v365, v377, v389, v401, v413, v424, v435, v446, v457, v468;
  v198 = [v88 orMatch:v190];

  v199 = sub_100216964();
  v200 = [v93 TPPBPolicyKeyViewMappingWithView:v199 matchingRule:v198];

  *&v479[3]._TtCs12_SwiftObject_opaque[8] = v200;
  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_10021D8D0;
  v202 = sub_100216964();
  v203 = sub_100216964();
  v204 = [v88 fieldMatch:v202 fieldRegex:v203];

  *(v201 + 32) = v204;
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_10021D880;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v88 fieldMatch:v206 fieldRegex:v207];

  *(v205 + 32) = v208;
  v209 = sub_100216964();
  v210 = sub_100216964();
  v211 = [v88 fieldMatch:v209 fieldRegex:v210];

  *(v205 + 40) = v211;
  v212 = sub_100216964();
  v213 = sub_100216964();
  v214 = [v88 fieldMatch:v212 fieldRegex:v213];

  *(v205 + 48) = v214;
  v215 = sub_100216B14().super.isa;
  v205, v216, v217, v218, v219, v220, v221, v222, v366, v378, v390, v402, v414, v425, v436, v447, v458, v469;
  v223 = [v88 andMatch:v215];

  *(v201 + 40) = v223;
  v224 = sub_100216B14().super.isa;
  v201, v225, v226, v227, v228, v229, v230, v231, v367, v379, v391, v403, v415, v426, v437, v448, v459, v470;
  v232 = [v88 orMatch:v224];

  v233 = sub_100216964();
  v234 = [v93 TPPBPolicyKeyViewMappingWithView:v233 matchingRule:v232];

  *v479[3].endpoint = v234;
  v235 = swift_allocObject();
  *(v235 + 16) = v438;
  v236 = sub_100216964();
  v237 = sub_100216964();
  v238 = [v88 fieldMatch:v236 fieldRegex:v237];

  *(v235 + 32) = v238;
  v239 = sub_100216964();
  v240 = sub_100216964();
  v241 = [v88 fieldMatch:v239 fieldRegex:v240];

  *(v235 + 40) = v241;
  v242 = sub_100216964();
  v243 = sub_100216964();
  v244 = [v88 fieldMatch:v242 fieldRegex:v243];

  *(v235 + 48) = v244;
  v245 = sub_100216964();
  v246 = sub_100216964();
  v247 = [v88 fieldMatch:v245 fieldRegex:v246];

  *(v235 + 56) = v247;
  v248 = sub_100216964();
  v249 = sub_100216964();
  v250 = [v88 fieldMatch:v248 fieldRegex:v249];

  *(v235 + 64) = v250;
  v251 = sub_100216964();
  v252 = sub_100216964();
  v253 = [v88 fieldMatch:v251 fieldRegex:v252];

  *(v235 + 72) = v253;
  v254 = sub_100216964();
  v255 = sub_100216964();
  v256 = [v88 fieldMatch:v254 fieldRegex:v255];

  *(v235 + 80) = v256;
  v257 = sub_100216964();
  v258 = sub_100216964();
  v259 = [v88 fieldMatch:v257 fieldRegex:v258];

  *(v235 + 88) = v259;
  v260 = sub_100216964();
  v261 = sub_100216964();
  v262 = [v88 fieldMatch:v260 fieldRegex:v261];

  *(v235 + 96) = v262;
  v263 = sub_100216964();
  v264 = sub_100216964();
  v265 = [v88 fieldMatch:v263 fieldRegex:v264];

  *(v235 + 104) = v265;
  v266 = sub_100216964();
  v267 = sub_100216964();
  v268 = [v88 fieldMatch:v266 fieldRegex:v267];

  *(v235 + 112) = v268;
  v269 = sub_100216964();
  v270 = sub_100216964();
  v271 = [v88 fieldMatch:v269 fieldRegex:v270];

  *(v235 + 120) = v271;
  v272 = sub_100216964();
  v273 = sub_100216964();
  v274 = [v88 fieldMatch:v272 fieldRegex:v273];

  *(v235 + 128) = v274;
  v275 = sub_100216964();
  v276 = sub_100216964();
  v277 = [v88 fieldMatch:v275 fieldRegex:v276];

  *(v235 + 136) = v277;
  v278 = sub_100216B14().super.isa;
  v235, v279, v280, v281, v282, v283, v284, v285, v368, v380, v392, v404, v416, v427, v438, *(&v438 + 1), v460, v471;
  v286 = [v88 orMatch:v278];

  v287 = sub_100216964();
  v288 = [v93 TPPBPolicyKeyViewMappingWithView:v287 matchingRule:v286];

  *v479[3].containerMap = v288;
  v289 = sub_100216964();
  v290 = sub_100216964();
  v291 = [v88 fieldMatch:v289 fieldRegex:v290];

  v292 = sub_100216964();
  v293 = [v93 TPPBPolicyKeyViewMappingWithView:v292 matchingRule:v291];

  *v479[4]._TtCs12_SwiftObject_opaque = v293;
  v294 = sub_100216964();
  v295 = sub_100216964();
  v296 = [v88 fieldMatch:v294 fieldRegex:v295];

  v297 = sub_100216964();
  v298 = [v93 TPPBPolicyKeyViewMappingWithView:v297 matchingRule:v296];

  *&v479[4]._TtCs12_SwiftObject_opaque[8] = v298;
  v299 = swift_allocObject();
  *(v299 + 16) = xmmword_10021D880;
  v300 = sub_100216964();
  v301 = sub_100216964();
  v302 = [v88 fieldMatch:v300 fieldRegex:v301];

  *(v299 + 32) = v302;
  v303 = sub_100216964();
  v304 = sub_100216964();
  v305 = [v88 fieldMatch:v303 fieldRegex:v304];

  *(v299 + 40) = v305;
  v306 = sub_100216964();
  v307 = sub_100216964();
  v308 = [v88 fieldMatch:v306 fieldRegex:v307];

  *(v299 + 48) = v308;
  v309 = sub_100216B14().super.isa;
  v299, v310, v311, v312, v313, v314, v315, v316, v369, v381, v393, v405, v417, v428, v439, v449, v461, v472;
  v317 = [v88 orMatch:v309];

  v318 = sub_100216964();
  v319 = [v93 TPPBPolicyKeyViewMappingWithView:v318 matchingRule:v317];

  *v479[4].endpoint = v319;
  v320 = [v88 trueMatch];
  v321 = sub_100216964();
  v322 = [v93 TPPBPolicyKeyViewMappingWithView:v321 matchingRule:v320];

  *v479[4].containerMap = v322;
  v480 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v323 = sub_100216B14().super.isa;
  v478, v324, v325, v326, v327, v328, v329, v330, v370, v382, v394, v406, v418, v429, v440, v450, v462, v473;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v331 = sub_100216B14().super.isa;
  v477, v332, v333, v334, v335, v336, v337, v338, v371, v383, v395, v407, v419, v430, v441, v451, v463, v474;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v339 = sub_100216B14().super.isa;
  v464, v340, v341, v342, v343, v344, v345, v346, v372, v384, v396, v408, v420, v431, v442, v452, v464, v475;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v347 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v348 = sub_100216B14().super.isa;
  v479, v349, v350, v351, v352, v353, v354, v355, v373, v385, v397, v409, v421, v432, v443, v453, v465, v476;
  v356 = sub_100216B14().super.isa;
  v357 = sub_100216B14().super.isa;
  v358 = sub_100216B14().super.isa;
  v359 = sub_100216B14().super.isa;
  v360 = [v480 initWithVersion:6 modelToCategory:v323 categoriesByView:v331 introducersByCategory:v339 redactions:v347 keyViewMapping:v348 userControllableViewList:v356 piggybackViews:v357 priorityViews:v358 inheritedExcludedViews:v359 hashAlgo:1];

  return v360;
}

id sub_100024308()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D900;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v473 = v1;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10021D8A0;
  v28 = v27;
  v29 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v31 = objc_opt_self();
  v32 = [v31 TPPBPolicyCategoriesByViewWithView:v29 categories:isa];

  v28[4] = v32;
  v33 = sub_100216964();
  v34 = sub_100216B14().super.isa;
  v35 = [v31 TPPBPolicyCategoriesByViewWithView:v33 categories:v34];

  v28[5] = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v31 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  v28[6] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v31 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  v28[7] = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v31 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  v28[8] = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v31 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  v28[9] = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v31 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  v28[10] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v31 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  v28[11] = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v31 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  v28[12] = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v31 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  v28[13] = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v31 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  v28[14] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v31 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  v66 = v28;
  v28[15] = v65;
  v67 = sub_100216964();
  v68 = sub_100216B14().super.isa;
  v69 = [v31 TPPBPolicyCategoriesByViewWithView:v67 categories:v68];

  v66[16] = v69;
  v70 = sub_100216964();
  v71 = sub_100216B14().super.isa;
  v72 = [v31 TPPBPolicyCategoriesByViewWithView:v70 categories:v71];

  v66[17] = v72;
  v450 = v66;
  v73 = sub_100216964();
  v74 = sub_100216B14().super.isa;
  v75 = [v31 TPPBPolicyCategoriesByViewWithView:v73 categories:v74];

  v66[18] = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_10021D8B0;
  v77 = v76;
  v78 = sub_100216964();
  v79 = sub_100216B14().super.isa;
  v80 = objc_opt_self();
  v81 = [v80 TPPBPolicyIntroducersByCategoryWithCategory:v78 introducers:v79];

  v77[4] = v81;
  v82 = sub_100216964();
  v83 = sub_100216B14().super.isa;
  v84 = [v80 TPPBPolicyIntroducersByCategoryWithCategory:v82 introducers:v83];

  v77[5] = v84;
  v85 = sub_100216964();
  v86 = sub_100216B14().super.isa;
  v87 = [v80 TPPBPolicyIntroducersByCategoryWithCategory:v85 introducers:v86];

  v77[6] = v87;
  v438 = v77;
  v88 = sub_100216964();
  v89 = sub_100216B14().super.isa;
  v90 = [v80 TPPBPolicyIntroducersByCategoryWithCategory:v88 introducers:v89];

  v77[7] = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_10021D8C0;
  v92 = v91;
  v93 = objc_opt_self();
  v94 = sub_100216964();
  v95 = sub_100216964();
  v96 = [v93 fieldMatch:v94 fieldRegex:v95];

  v97 = sub_100216964();
  v98 = objc_opt_self();
  v99 = [v98 TPPBPolicyKeyViewMappingWithView:v97 matchingRule:v96];

  *(v92 + 32) = v99;
  v100 = sub_100216964();
  v101 = sub_100216964();
  v102 = [v93 fieldMatch:v100 fieldRegex:v101];

  v103 = sub_100216964();
  v104 = [v98 TPPBPolicyKeyViewMappingWithView:v103 matchingRule:v102];

  *(v92 + 40) = v104;
  v105 = sub_100216964();
  v106 = sub_100216964();
  v107 = [v93 fieldMatch:v105 fieldRegex:v106];

  v108 = sub_100216964();
  v109 = [v98 TPPBPolicyKeyViewMappingWithView:v108 matchingRule:v107];

  *(v92 + 48) = v109;
  v110 = sub_100216964();
  v111 = sub_100216964();
  v112 = [v93 fieldMatch:v110 fieldRegex:v111];

  v113 = sub_100216964();
  v114 = [v98 TPPBPolicyKeyViewMappingWithView:v113 matchingRule:v112];

  *(v92 + 56) = v114;
  v115 = sub_100216964();
  v116 = sub_100216964();
  v117 = [v93 fieldMatch:v115 fieldRegex:v116];

  v118 = sub_100216964();
  v119 = [v98 TPPBPolicyKeyViewMappingWithView:v118 matchingRule:v117];

  *(v92 + 64) = v119;
  v120 = sub_100216964();
  v121 = sub_100216964();
  v122 = [v93 fieldMatch:v120 fieldRegex:v121];

  v123 = sub_100216964();
  v124 = [v98 TPPBPolicyKeyViewMappingWithView:v123 matchingRule:v122];

  *(v92 + 72) = v124;
  v125 = sub_100216964();
  v126 = sub_100216964();
  v127 = [v93 fieldMatch:v125 fieldRegex:v126];

  v128 = sub_100216964();
  v129 = [v98 TPPBPolicyKeyViewMappingWithView:v128 matchingRule:v127];

  *(v92 + 80) = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_10021D880;
  v131 = sub_100216964();
  v132 = sub_100216964();
  v133 = [v93 fieldMatch:v131 fieldRegex:v132];

  *(v130 + 32) = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v93 fieldMatch:v134 fieldRegex:v135];

  *(v130 + 40) = v136;
  v137 = sub_100216964();
  v138 = sub_100216964();
  v139 = [v93 fieldMatch:v137 fieldRegex:v138];

  *(v130 + 48) = v139;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v140 = sub_100216B14().super.isa;
  v130, v141, v142, v143, v144, v145, v146, v147, v367, v379, v391, v403, v415, "ProtectedCloudStorage", v438, v450, "Security-61901.40.77\n", v473;
  v148 = [v93 orMatch:v140];

  v149 = sub_100216964();
  v150 = [v98 TPPBPolicyKeyViewMappingWithView:v149 matchingRule:v148];

  *(v92 + 88) = v150;
  v151 = sub_100216964();
  v152 = sub_100216964();
  v153 = [v93 fieldMatch:v151 fieldRegex:v152];

  v154 = sub_100216964();
  v155 = [v98 TPPBPolicyKeyViewMappingWithView:v154 matchingRule:v153];

  *(v92 + 96) = v155;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_10021D8B0;
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_10021D8D0;
  v158 = sub_100216964();
  v159 = sub_100216964();
  v160 = [v93 fieldMatch:v158 fieldRegex:v159];

  *(v157 + 32) = v160;
  v161 = sub_100216964();
  v162 = sub_100216964();
  v163 = [v93 fieldMatch:v161 fieldRegex:v162];

  *(v157 + 40) = v163;
  v164 = sub_100216B14().super.isa;
  v157, v165, v166, v167, v168, v169, v170, v171, v368, v380, v392, v404, v416, v427, v439, v451, v462, v474;
  v172 = [v93 andMatch:v164];

  *(v156 + 32) = v172;
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_10021D8D0;
  v174 = sub_100216964();
  v175 = sub_100216964();
  v176 = [v93 fieldMatch:v174 fieldRegex:v175];

  *(v173 + 32) = v176;
  v177 = sub_100216964();
  v178 = sub_100216964();
  v179 = [v93 fieldMatch:v177 fieldRegex:v178];

  *(v173 + 40) = v179;
  v180 = sub_100216B14().super.isa;
  v173, v181, v182, v183, v184, v185, v186, v187, v369, v381, v393, v405, v417, v428, v440, v452, v463, v475;
  v188 = [v93 andMatch:v180];

  *(v156 + 40) = v188;
  v189 = sub_100216964();
  v190 = sub_100216964();
  v191 = [v93 fieldMatch:v189 fieldRegex:v190];

  *(v156 + 48) = v191;
  v192 = sub_100216964();
  v193 = sub_100216964();
  v194 = [v93 fieldMatch:v192 fieldRegex:v193];

  *(v156 + 56) = v194;
  v195 = sub_100216B14().super.isa;
  v156, v196, v197, v198, v199, v200, v201, v202, v370, v382, v394, v406, v418, v429, v441, v453, v464, v476;
  v203 = [v93 orMatch:v195];

  v204 = sub_100216964();
  v205 = [v98 TPPBPolicyKeyViewMappingWithView:v204 matchingRule:v203];

  *(v92 + 104) = v205;
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_10021D8D0;
  v207 = sub_100216964();
  v208 = sub_100216964();
  v209 = [v93 fieldMatch:v207 fieldRegex:v208];

  *(v206 + 32) = v209;
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_10021D880;
  v211 = sub_100216964();
  v212 = sub_100216964();
  v213 = [v93 fieldMatch:v211 fieldRegex:v212];

  *(v210 + 32) = v213;
  v214 = sub_100216964();
  v215 = sub_100216964();
  v216 = [v93 fieldMatch:v214 fieldRegex:v215];

  *(v210 + 40) = v216;
  v217 = sub_100216964();
  v218 = sub_100216964();
  v219 = [v93 fieldMatch:v217 fieldRegex:v218];

  *(v210 + 48) = v219;
  v220 = sub_100216B14().super.isa;
  v210, v221, v222, v223, v224, v225, v226, v227, v371, v383, v395, v407, v419, v430, v442, v454, v465, v477;
  v228 = [v93 andMatch:v220];

  *(v206 + 40) = v228;
  v229 = sub_100216B14().super.isa;
  v206, v230, v231, v232, v233, v234, v235, v236, v372, v384, v396, v408, v420, v431, v443, v455, v466, v478;
  v237 = [v93 orMatch:v229];

  v238 = sub_100216964();
  v239 = [v98 TPPBPolicyKeyViewMappingWithView:v238 matchingRule:v237];

  *(v92 + 112) = v239;
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_10021D8F0;
  v241 = sub_100216964();
  v242 = sub_100216964();
  v243 = [v93 fieldMatch:v241 fieldRegex:v242];

  *(v240 + 32) = v243;
  v244 = sub_100216964();
  v245 = sub_100216964();
  v246 = [v93 fieldMatch:v244 fieldRegex:v245];

  *(v240 + 40) = v246;
  v247 = sub_100216964();
  v248 = sub_100216964();
  v249 = [v93 fieldMatch:v247 fieldRegex:v248];

  *(v240 + 48) = v249;
  v250 = sub_100216964();
  v251 = sub_100216964();
  v252 = [v93 fieldMatch:v250 fieldRegex:v251];

  *(v240 + 56) = v252;
  v253 = sub_100216964();
  v254 = sub_100216964();
  v255 = [v93 fieldMatch:v253 fieldRegex:v254];

  *(v240 + 64) = v255;
  v256 = sub_100216964();
  v257 = sub_100216964();
  v258 = [v93 fieldMatch:v256 fieldRegex:v257];

  *(v240 + 72) = v258;
  v259 = sub_100216964();
  v260 = sub_100216964();
  v261 = [v93 fieldMatch:v259 fieldRegex:v260];

  *(v240 + 80) = v261;
  v262 = sub_100216964();
  v263 = sub_100216964();
  v264 = [v93 fieldMatch:v262 fieldRegex:v263];

  *(v240 + 88) = v264;
  v265 = sub_100216964();
  v266 = sub_100216964();
  v267 = [v93 fieldMatch:v265 fieldRegex:v266];

  *(v240 + 96) = v267;
  v268 = sub_100216964();
  v269 = sub_100216964();
  v270 = [v93 fieldMatch:v268 fieldRegex:v269];

  *(v240 + 104) = v270;
  v271 = sub_100216964();
  v272 = sub_100216964();
  v273 = [v93 fieldMatch:v271 fieldRegex:v272];

  *(v240 + 112) = v273;
  v274 = sub_100216964();
  v275 = sub_100216964();
  v276 = [v93 fieldMatch:v274 fieldRegex:v275];

  *(v240 + 120) = v276;
  v277 = sub_100216964();
  v278 = sub_100216964();
  v279 = [v93 fieldMatch:v277 fieldRegex:v278];

  *(v240 + 128) = v279;
  v280 = sub_100216964();
  v281 = sub_100216964();
  v282 = [v93 fieldMatch:v280 fieldRegex:v281];

  *(v240 + 136) = v282;
  v283 = sub_100216B14().super.isa;
  v240, v284, v285, v286, v287, v288, v289, v290, v373, v385, v397, v409, v421, v432, v444, v456, v467, v479;
  v291 = [v93 orMatch:v283];

  v292 = sub_100216964();
  v293 = [v98 TPPBPolicyKeyViewMappingWithView:v292 matchingRule:v291];

  *(v92 + 120) = v293;
  v294 = sub_100216964();
  v295 = sub_100216964();
  v296 = [v93 fieldMatch:v294 fieldRegex:v295];

  v297 = sub_100216964();
  v298 = [v98 TPPBPolicyKeyViewMappingWithView:v297 matchingRule:v296];

  *(v92 + 128) = v298;
  v299 = sub_100216964();
  v300 = sub_100216964();
  v301 = [v93 fieldMatch:v299 fieldRegex:v300];

  v302 = sub_100216964();
  v303 = [v98 TPPBPolicyKeyViewMappingWithView:v302 matchingRule:v301];

  *(v92 + 136) = v303;
  v304 = swift_allocObject();
  *(v304 + 16) = xmmword_10021D880;
  v305 = sub_100216964();
  v306 = sub_100216964();
  v307 = [v93 fieldMatch:v305 fieldRegex:v306];

  *(v304 + 32) = v307;
  v308 = sub_100216964();
  v309 = sub_100216964();
  v310 = [v93 fieldMatch:v308 fieldRegex:v309];

  *(v304 + 40) = v310;
  v311 = sub_100216964();
  v312 = sub_100216964();
  v313 = [v93 fieldMatch:v311 fieldRegex:v312];

  *(v304 + 48) = v313;
  v314 = sub_100216B14().super.isa;
  v304, v315, v316, v317, v318, v319, v320, v321, v374, v386, v398, v410, v422, v433, v445, v457, v468, v480;
  v322 = [v93 orMatch:v314];

  v323 = sub_100216964();
  v324 = [v98 TPPBPolicyKeyViewMappingWithView:v323 matchingRule:v322];

  *(v92 + 144) = v324;
  v325 = [v93 trueMatch];
  v326 = sub_100216964();
  v327 = [v98 TPPBPolicyKeyViewMappingWithView:v326 matchingRule:v325];

  *(v92 + 152) = v327;
  v485 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v328 = sub_100216B14().super.isa;
  v481, v329, v330, v331, v332, v333, v334, v335, v375, v387, v399, v411, v423, v434, v446, v458, v469, v481;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v336 = sub_100216B14().super.isa;
  v459, v337, v338, v339, v340, v341, v342, v343, v376, v388, v400, v412, v424, v435, v447, v459, v470, v482;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v344 = sub_100216B14().super.isa;
  v448, v345, v346, v347, v348, v349, v350, v351, v377, v389, v401, v413, v425, v436, v448, v460, v471, v483;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v352 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v353 = sub_100216B14().super.isa;
  v92, v354, v355, v356, v357, v358, v359, v360, v378, v390, v402, v414, v426, v437, v449, v461, v472, v484;
  v361 = sub_100216B14().super.isa;
  v362 = sub_100216B14().super.isa;
  v363 = sub_100216B14().super.isa;
  v364 = sub_100216B14().super.isa;
  v365 = [v485 initWithVersion:7 modelToCategory:v328 categoriesByView:v336 introducersByCategory:v344 redactions:v352 keyViewMapping:v353 userControllableViewList:v361 piggybackViews:v362 priorityViews:v363 inheritedExcludedViews:v364 hashAlgo:1];

  return v365;
}

id sub_1000266F8()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D900;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v536 = v1;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  *v1[2].containerMap = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10021D8A0;
  v28 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v30 = objc_opt_self();
  v31 = [v30 TPPBPolicyCategoriesByViewWithView:v28 categories:isa];

  *(v27 + 32) = v31;
  v32 = sub_100216964();
  v33 = sub_100216B14().super.isa;
  v34 = [v30 TPPBPolicyCategoriesByViewWithView:v32 categories:v33];

  *(v27 + 40) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v30 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v27 + 48) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v30 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v27 + 56) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v30 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v27 + 64) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v30 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v27 + 72) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v30 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v27 + 80) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v30 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v27 + 88) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v30 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v27 + 96) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v30 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v27 + 104) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v30 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v27 + 112) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v30 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v27 + 120) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v30 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v27 + 128) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v30 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v27 + 136) = v70;
  v535 = v27;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v30 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v27 + 144) = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_10021D8B0;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = objc_opt_self();
  v78 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v75 introducers:v76];

  *(v74 + 32) = v78;
  v79 = sub_100216964();
  v80 = sub_100216B14().super.isa;
  v81 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v79 introducers:v80];

  *(v74 + 40) = v81;
  v82 = sub_100216964();
  v83 = sub_100216B14().super.isa;
  v84 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v82 introducers:v83];

  *(v74 + 48) = v84;
  v521 = v74;
  v85 = sub_100216964();
  v86 = sub_100216B14().super.isa;
  v87 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v85 introducers:v86];

  *(v74 + 56) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_10021D8C0;
  v89 = v88;
  v90 = objc_opt_self();
  v91 = sub_100216964();
  v92 = sub_100216964();
  v93 = [v90 fieldMatch:v91 fieldRegex:v92];

  v94 = sub_100216964();
  v95 = objc_opt_self();
  v96 = [v95 TPPBPolicyKeyViewMappingWithView:v94 matchingRule:v93];

  *v89[1]._TtCs12_SwiftObject_opaque = v96;
  v97 = sub_100216964();
  v98 = sub_100216964();
  v99 = [v90 fieldMatch:v97 fieldRegex:v98];

  v100 = sub_100216964();
  v101 = [v95 TPPBPolicyKeyViewMappingWithView:v100 matchingRule:v99];

  *&v89[1]._TtCs12_SwiftObject_opaque[8] = v101;
  v102 = sub_100216964();
  v103 = sub_100216964();
  v104 = [v90 fieldMatch:v102 fieldRegex:v103];

  v105 = sub_100216964();
  v106 = [v95 TPPBPolicyKeyViewMappingWithView:v105 matchingRule:v104];

  *v89[1].endpoint = v106;
  v107 = sub_100216964();
  v108 = sub_100216964();
  v109 = [v90 fieldMatch:v107 fieldRegex:v108];

  v110 = sub_100216964();
  v111 = [v95 TPPBPolicyKeyViewMappingWithView:v110 matchingRule:v109];

  *v89[1].containerMap = v111;
  v112 = sub_100216964();
  v113 = sub_100216964();
  v114 = [v90 fieldMatch:v112 fieldRegex:v113];

  v115 = sub_100216964();
  v116 = [v95 TPPBPolicyKeyViewMappingWithView:v115 matchingRule:v114];

  *v89[2]._TtCs12_SwiftObject_opaque = v116;
  v117 = sub_100216964();
  v118 = sub_100216964();
  v119 = [v90 fieldMatch:v117 fieldRegex:v118];

  v120 = sub_100216964();
  v121 = [v95 TPPBPolicyKeyViewMappingWithView:v120 matchingRule:v119];

  *&v89[2]._TtCs12_SwiftObject_opaque[8] = v121;
  v122 = sub_100216964();
  v123 = sub_100216964();
  v124 = [v90 fieldMatch:v122 fieldRegex:v123];

  v125 = sub_100216964();
  v126 = [v95 TPPBPolicyKeyViewMappingWithView:v125 matchingRule:v124];

  *v89[2].endpoint = v126;
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_10021D880;
  v128 = sub_100216964();
  v129 = sub_100216964();
  v130 = [v90 fieldMatch:v128 fieldRegex:v129];

  *(v127 + 32) = v130;
  v131 = sub_100216964();
  v132 = sub_100216964();
  v133 = [v90 fieldMatch:v131 fieldRegex:v132];

  *(v127 + 40) = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v90 fieldMatch:v134 fieldRegex:v135];

  *(v127 + 48) = v136;
  v137 = sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v138 = sub_100216B14().super.isa;
  v127, v139, v140, v141, v142, v143, v144, v145, v398, v412, v426, v440, v454, v468, v482, v495, "ProtectedCloudStorage", v521;
  v146 = [v90 orMatch:v138];

  v147 = sub_100216964();
  v148 = [v95 TPPBPolicyKeyViewMappingWithView:v147 matchingRule:v146];

  v537 = v89;
  *v89[2].containerMap = v148;
  v149 = sub_100216964();
  v150 = sub_100216964();
  v151 = [v90 fieldMatch:v149 fieldRegex:v150];

  v152 = sub_100216964();
  v153 = [v95 TPPBPolicyKeyViewMappingWithView:v152 matchingRule:v151];

  *v89[3]._TtCs12_SwiftObject_opaque = v153;
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_10021D8B0;
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_10021D8D0;
  v156 = sub_100216964();
  v157 = sub_100216964();
  v158 = [v90 fieldMatch:v156 fieldRegex:v157];

  *(v155 + 32) = v158;
  v159 = sub_100216964();
  v160 = sub_100216964();
  v161 = [v90 fieldMatch:v159 fieldRegex:v160];

  *(v155 + 40) = v161;
  v162 = sub_100216B14().super.isa;
  v155, v163, v164, v165, v166, v167, v168, v169, v399, v413, v427, v441, v455, v469, v95, v496, v508, v522;
  v170 = [v90 andMatch:v162];

  *(v154 + 32) = v170;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_10021D8D0;
  v172 = sub_100216964();
  v173 = sub_100216964();
  v174 = [v90 fieldMatch:v172 fieldRegex:v173];

  *(v171 + 32) = v174;
  v175 = sub_100216964();
  v176 = sub_100216964();
  v177 = [v90 fieldMatch:v175 fieldRegex:v176];

  *(v171 + 40) = v177;
  v178 = sub_100216B14().super.isa;
  v171, v179, v180, v181, v182, v183, v184, v185, v400, v414, v428, v442, v456, v470, v483, v497, v509, v523;
  v186 = [v90 andMatch:v178];

  *(v154 + 40) = v186;
  v187 = sub_100216964();
  v188 = sub_100216964();
  v189 = [v90 fieldMatch:v187 fieldRegex:v188];

  *(v154 + 48) = v189;
  v190 = sub_100216964();
  v191 = sub_100216964();
  v192 = [v90 fieldMatch:v190 fieldRegex:v191];

  *(v154 + 56) = v192;
  v193 = sub_100216B14().super.isa;
  v154, v194, v195, v196, v197, v198, v199, v200, v401, v415, v429, v443, v457, v471, v484, v498, v510, v524;
  v201 = [v90 orMatch:v193];

  v202 = sub_100216964();
  v203 = v485;
  v204 = [v485 TPPBPolicyKeyViewMappingWithView:v202 matchingRule:v201];

  *&v537[3]._TtCs12_SwiftObject_opaque[8] = v204;
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_10021D8D0;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v90 fieldMatch:v206 fieldRegex:v207];

  *(v205 + 32) = v208;
  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_10021D880;
  v210 = sub_100216964();
  v211 = sub_100216964();
  v212 = [v90 fieldMatch:v210 fieldRegex:v211];

  *(v209 + 32) = v212;
  v213 = sub_100216964();
  v214 = sub_100216964();
  v215 = [v90 fieldMatch:v213 fieldRegex:v214];

  *(v209 + 40) = v215;
  v216 = sub_100216964();
  v217 = sub_100216964();
  v218 = [v90 fieldMatch:v216 fieldRegex:v217];

  *(v209 + 48) = v218;
  v219 = sub_100216B14().super.isa;
  v209, v220, v221, v222, v223, v224, v225, v226, v402, v416, v430, v444, v458, v472, v485, v137, v511, v525;
  v227 = [v90 andMatch:v219];

  *(v205 + 40) = v227;
  v228 = sub_100216B14().super.isa;
  v205, v229, v230, v231, v232, v233, v234, v235, v403, v417, v431, v445, v459, v473, v486, v499, v512, v526;
  v236 = [v90 orMatch:v228];

  v237 = sub_100216964();
  v238 = [v203 TPPBPolicyKeyViewMappingWithView:v237 matchingRule:v236];

  *v537[3].endpoint = v238;
  v239 = swift_allocObject();
  *(v239 + 16) = xmmword_10021D8F0;
  v240 = sub_100216964();
  v241 = sub_100216964();
  v242 = [v90 fieldMatch:v240 fieldRegex:v241];

  *(v239 + 32) = v242;
  v243 = sub_100216964();
  v244 = sub_100216964();
  v245 = [v90 fieldMatch:v243 fieldRegex:v244];

  *(v239 + 40) = v245;
  v246 = sub_100216964();
  v247 = sub_100216964();
  v248 = [v90 fieldMatch:v246 fieldRegex:v247];

  *(v239 + 48) = v248;
  v249 = sub_100216964();
  v250 = sub_100216964();
  v251 = [v90 fieldMatch:v249 fieldRegex:v250];

  *(v239 + 56) = v251;
  v252 = sub_100216964();
  v253 = sub_100216964();
  v254 = [v90 fieldMatch:v252 fieldRegex:v253];

  *(v239 + 64) = v254;
  v255 = sub_100216964();
  v256 = sub_100216964();
  v257 = [v90 fieldMatch:v255 fieldRegex:v256];

  *(v239 + 72) = v257;
  v258 = sub_100216964();
  v259 = sub_100216964();
  v260 = [v90 fieldMatch:v258 fieldRegex:v259];

  *(v239 + 80) = v260;
  v261 = sub_100216964();
  v262 = sub_100216964();
  v263 = [v90 fieldMatch:v261 fieldRegex:v262];

  *(v239 + 88) = v263;
  v264 = sub_100216964();
  v265 = sub_100216964();
  v266 = [v90 fieldMatch:v264 fieldRegex:v265];

  *(v239 + 96) = v266;
  v267 = sub_100216964();
  v268 = sub_100216964();
  v269 = [v90 fieldMatch:v267 fieldRegex:v268];

  *(v239 + 104) = v269;
  v270 = sub_100216964();
  v271 = sub_100216964();
  v272 = [v90 fieldMatch:v270 fieldRegex:v271];

  *(v239 + 112) = v272;
  v273 = sub_100216964();
  v274 = sub_100216964();
  v275 = [v90 fieldMatch:v273 fieldRegex:v274];

  *(v239 + 120) = v275;
  v276 = sub_100216964();
  v277 = sub_100216964();
  v278 = [v90 fieldMatch:v276 fieldRegex:v277];

  *(v239 + 128) = v278;
  v279 = sub_100216964();
  v280 = sub_100216964();
  v281 = [v90 fieldMatch:v279 fieldRegex:v280];

  *(v239 + 136) = v281;
  v282 = sub_100216B14().super.isa;
  v239, v283, v284, v285, v286, v287, v288, v289, v404, v418, v432, v446, v460, v474, v487, v500, v513, v527;
  v290 = [v90 orMatch:v282];

  v291 = sub_100216964();
  v292 = [v203 TPPBPolicyKeyViewMappingWithView:v291 matchingRule:v290];

  *v537[3].containerMap = v292;
  v293 = swift_allocObject();
  *(v293 + 16) = xmmword_10021D8D0;
  v294 = sub_100216964();
  v295 = sub_100216964();
  v296 = [v90 fieldMatch:v294 fieldRegex:v295];

  *(v293 + 32) = v296;
  v297 = sub_100216964();
  v298 = sub_100216964();
  v299 = [v90 fieldMatch:v297 fieldRegex:v298];

  *(v293 + 40) = v299;
  v300 = sub_100216B14().super.isa;
  v293, v301, v302, v303, v304, v305, v306, v307, v405, v419, v433, v447, v461, v475, v488, v501, v514, v528;
  v308 = [v90 orMatch:v300];

  v309 = sub_100216964();
  v310 = [v203 TPPBPolicyKeyViewMappingWithView:v309 matchingRule:v308];

  *v537[4]._TtCs12_SwiftObject_opaque = v310;
  v311 = swift_allocObject();
  *(v311 + 16) = xmmword_10021D8B0;
  v312 = sub_100216964();
  v313 = sub_100216964();
  v314 = [v90 fieldMatch:v312 fieldRegex:v313];

  *(v311 + 32) = v314;
  v315 = sub_100216964();
  v316 = sub_100216964();
  v317 = [v90 fieldMatch:v315 fieldRegex:v316];

  *(v311 + 40) = v317;
  v318 = sub_100216964();
  v319 = sub_100216964();
  v320 = [v90 fieldMatch:v318 fieldRegex:v319];

  *(v311 + 48) = v320;
  v321 = sub_100216964();
  v322 = sub_100216964();
  v323 = [v90 fieldMatch:v321 fieldRegex:v322];

  *(v311 + 56) = v323;
  v324 = sub_100216B14().super.isa;
  v311, v325, v326, v327, v328, v329, v330, v331, v406, v420, v434, v448, v462, v476, v489, v502, v515, v529;
  v332 = [v90 orMatch:v324];

  v333 = sub_100216964();
  v334 = [v203 TPPBPolicyKeyViewMappingWithView:v333 matchingRule:v332];

  *&v537[4]._TtCs12_SwiftObject_opaque[8] = v334;
  v335 = swift_allocObject();
  *(v335 + 16) = xmmword_10021D880;
  v336 = sub_100216964();
  v337 = sub_100216964();
  v338 = [v90 fieldMatch:v336 fieldRegex:v337];

  *(v335 + 32) = v338;
  v339 = sub_100216964();
  v340 = sub_100216964();
  v341 = [v90 fieldMatch:v339 fieldRegex:v340];

  *(v335 + 40) = v341;
  v342 = sub_100216964();
  v343 = sub_100216964();
  v344 = [v90 fieldMatch:v342 fieldRegex:v343];

  *(v335 + 48) = v344;
  v345 = sub_100216B14().super.isa;
  v335, v346, v347, v348, v349, v350, v351, v352, v407, v421, v435, v449, v463, v477, v490, v503, v516, v530;
  v353 = [v90 orMatch:v345];

  v354 = sub_100216964();
  v355 = [v203 TPPBPolicyKeyViewMappingWithView:v354 matchingRule:v353];

  *v537[4].endpoint = v355;
  v356 = [v90 trueMatch];
  v357 = sub_100216964();
  v358 = [v203 TPPBPolicyKeyViewMappingWithView:v357 matchingRule:v356];

  *v537[4].containerMap = v358;
  v538 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v359 = sub_100216B14().super.isa;
  v536, v360, v361, v362, v363, v364, v365, v366, v408, v422, v436, v450, v464, v478, v491, v504, v517, v531;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v367 = sub_100216B14().super.isa;
  v535, v368, v369, v370, v371, v372, v373, v374, v409, v423, v437, v451, v465, v479, v492, v505, v518, v532;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v375 = sub_100216B14().super.isa;
  v533, v376, v377, v378, v379, v380, v381, v382, v410, v424, v438, v452, v466, v480, v493, v506, v519, v533;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v383 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v384 = sub_100216B14().super.isa;
  v537, v385, v386, v387, v388, v389, v390, v391, v411, v425, v439, v453, v467, v481, v494, v507, v520, v534;
  v392 = sub_100216B14().super.isa;
  v393 = sub_100216B14().super.isa;
  v394 = sub_100216B14().super.isa;
  v395 = sub_100216B14().super.isa;
  v396 = [v538 initWithVersion:8 modelToCategory:v359 categoriesByView:v367 introducersByCategory:v375 redactions:v383 keyViewMapping:v384 userControllableViewList:v392 piggybackViews:v393 priorityViews:v394 inheritedExcludedViews:v395 hashAlgo:1];

  return v396;
}

id sub_100028D50()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D900;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v541 = v1;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  *v1[2].containerMap = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10021D8A0;
  v28 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v30 = objc_opt_self();
  v31 = [v30 TPPBPolicyCategoriesByViewWithView:v28 categories:isa];

  *(v27 + 32) = v31;
  v32 = sub_100216964();
  v33 = sub_100216B14().super.isa;
  v34 = [v30 TPPBPolicyCategoriesByViewWithView:v32 categories:v33];

  *(v27 + 40) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v30 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v27 + 48) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v30 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v27 + 56) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v30 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v27 + 64) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v30 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v27 + 72) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v30 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v27 + 80) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v30 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v27 + 88) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v30 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v27 + 96) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v30 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v27 + 104) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v30 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v27 + 112) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v30 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v27 + 120) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v30 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v27 + 128) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v30 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v27 + 136) = v70;
  v540 = v27;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v30 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v27 + 144) = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_10021D8B0;
  v75 = v74;
  v76 = sub_100216964();
  v77 = sub_100216B14().super.isa;
  v78 = objc_opt_self();
  v79 = [v78 TPPBPolicyIntroducersByCategoryWithCategory:v76 introducers:v77];

  v75[4] = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v78 TPPBPolicyIntroducersByCategoryWithCategory:v80 introducers:v81];

  v75[5] = v82;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = [v78 TPPBPolicyIntroducersByCategoryWithCategory:v83 introducers:v84];

  v86 = v75;
  v526 = v75;
  v75[6] = v85;
  v87 = sub_100216964();
  v88 = sub_100216B14().super.isa;
  v89 = [v78 TPPBPolicyIntroducersByCategoryWithCategory:v87 introducers:v88];

  v86[7] = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_10021D8C0;
  v91 = v90;
  v92 = objc_opt_self();
  v93 = sub_100216964();
  v94 = sub_100216964();
  v95 = [v92 fieldMatch:v93 fieldRegex:v94];

  v96 = sub_100216964();
  v97 = objc_opt_self();
  v98 = [v97 TPPBPolicyKeyViewMappingWithView:v96 matchingRule:v95];

  *v91[1]._TtCs12_SwiftObject_opaque = v98;
  v99 = sub_100216964();
  v100 = sub_100216964();
  v101 = [v92 fieldMatch:v99 fieldRegex:v100];

  v102 = sub_100216964();
  v103 = [v97 TPPBPolicyKeyViewMappingWithView:v102 matchingRule:v101];

  *&v91[1]._TtCs12_SwiftObject_opaque[8] = v103;
  v104 = sub_100216964();
  v105 = sub_100216964();
  v106 = [v92 fieldMatch:v104 fieldRegex:v105];

  v107 = sub_100216964();
  v108 = [v97 TPPBPolicyKeyViewMappingWithView:v107 matchingRule:v106];

  *v91[1].endpoint = v108;
  v109 = sub_100216964();
  v110 = sub_100216964();
  v111 = [v92 fieldMatch:v109 fieldRegex:v110];

  v112 = sub_100216964();
  v113 = [v97 TPPBPolicyKeyViewMappingWithView:v112 matchingRule:v111];

  *v91[1].containerMap = v113;
  v114 = sub_100216964();
  v115 = sub_100216964();
  v116 = [v92 fieldMatch:v114 fieldRegex:v115];

  v117 = sub_100216964();
  v118 = [v97 TPPBPolicyKeyViewMappingWithView:v117 matchingRule:v116];

  *v91[2]._TtCs12_SwiftObject_opaque = v118;
  v119 = sub_100216964();
  v120 = sub_100216964();
  v121 = [v92 fieldMatch:v119 fieldRegex:v120];

  v122 = sub_100216964();
  v123 = [v97 TPPBPolicyKeyViewMappingWithView:v122 matchingRule:v121];

  *&v91[2]._TtCs12_SwiftObject_opaque[8] = v123;
  v124 = sub_100216964();
  v125 = sub_100216964();
  v126 = [v92 fieldMatch:v124 fieldRegex:v125];

  v127 = sub_100216964();
  v128 = [v97 TPPBPolicyKeyViewMappingWithView:v127 matchingRule:v126];

  *v91[2].endpoint = v128;
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_10021D880;
  v130 = sub_100216964();
  v131 = sub_100216964();
  v132 = [v92 fieldMatch:v130 fieldRegex:v131];

  *(v129 + 32) = v132;
  v133 = sub_100216964();
  v134 = sub_100216964();
  v135 = [v92 fieldMatch:v133 fieldRegex:v134];

  *(v129 + 40) = v135;
  v136 = sub_100216964();
  v137 = sub_100216964();
  v138 = [v92 fieldMatch:v136 fieldRegex:v137];

  *(v129 + 48) = v138;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v139 = sub_100216B14().super.isa;
  v129, v140, v141, v142, v143, v144, v145, v146, v402, v416, v430, v444, v458, v472, v486, "ProtectedCloudStorage", "Security-61901.40.77\n", v526;
  v147 = [v92 orMatch:v139];

  v148 = sub_100216964();
  v487 = v97;
  v149 = [v97 TPPBPolicyKeyViewMappingWithView:v148 matchingRule:v147];

  v542 = v91;
  *v91[2].containerMap = v149;
  v150 = sub_100216964();
  v151 = sub_100216964();
  v152 = [v92 fieldMatch:v150 fieldRegex:v151];

  v153 = sub_100216964();
  v154 = [v97 TPPBPolicyKeyViewMappingWithView:v153 matchingRule:v152];

  *v91[3]._TtCs12_SwiftObject_opaque = v154;
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_10021D8B0;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_10021D8D0;
  v157 = sub_100216964();
  v158 = sub_100216964();
  v159 = [v92 fieldMatch:v157 fieldRegex:v158];

  *(v156 + 32) = v159;
  v160 = sub_100216964();
  v161 = sub_100216964();
  v162 = [v92 fieldMatch:v160 fieldRegex:v161];

  *(v156 + 40) = v162;
  v163 = sub_100216B14().super.isa;
  v156, v164, v165, v166, v167, v168, v169, v170, v403, v417, v431, v445, v459, v473, v487, v500, v513, v527;
  v171 = [v92 andMatch:v163];

  *(v155 + 32) = v171;
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_10021D8D0;
  v173 = sub_100216964();
  v174 = sub_100216964();
  v175 = [v92 fieldMatch:v173 fieldRegex:v174];

  *(v172 + 32) = v175;
  v176 = sub_100216964();
  v177 = sub_100216964();
  v178 = [v92 fieldMatch:v176 fieldRegex:v177];

  *(v172 + 40) = v178;
  v179 = sub_100216B14().super.isa;
  v172, v180, v181, v182, v183, v184, v185, v186, v404, v418, v432, v446, v460, v474, v488, v501, v514, v528;
  v187 = [v92 andMatch:v179];

  *(v155 + 40) = v187;
  v188 = sub_100216964();
  v189 = sub_100216964();
  v190 = [v92 fieldMatch:v188 fieldRegex:v189];

  *(v155 + 48) = v190;
  v191 = sub_100216964();
  v192 = sub_100216964();
  v193 = [v92 fieldMatch:v191 fieldRegex:v192];

  *(v155 + 56) = v193;
  v194 = sub_100216B14().super.isa;
  v155, v195, v196, v197, v198, v199, v200, v201, v405, v419, v433, v447, v461, v475, v489, v502, v515, v529;
  v202 = [v92 orMatch:v194];

  v203 = sub_100216964();
  v204 = v490;
  v205 = [v490 TPPBPolicyKeyViewMappingWithView:v203 matchingRule:v202];

  *&v91[3]._TtCs12_SwiftObject_opaque[8] = v205;
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_10021D8D0;
  v207 = sub_100216964();
  v208 = sub_100216964();
  v209 = [v92 fieldMatch:v207 fieldRegex:v208];

  *(v206 + 32) = v209;
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_10021D880;
  v211 = sub_100216964();
  v212 = sub_100216964();
  v213 = [v92 fieldMatch:v211 fieldRegex:v212];

  *(v210 + 32) = v213;
  v214 = sub_100216964();
  v215 = sub_100216964();
  v216 = [v92 fieldMatch:v214 fieldRegex:v215];

  *(v210 + 40) = v216;
  v217 = sub_100216964();
  v218 = sub_100216964();
  v219 = [v92 fieldMatch:v217 fieldRegex:v218];

  *(v210 + 48) = v219;
  v220 = sub_100216B14().super.isa;
  v210, v221, v222, v223, v224, v225, v226, v227, v406, v420, v434, v448, v462, v476, v490, v503, v516, v530;
  v228 = [v92 andMatch:v220];

  *(v206 + 40) = v228;
  v229 = sub_100216B14().super.isa;
  v206, v230, v231, v232, v233, v234, v235, v236, v407, v421, v435, v449, v463, v477, v491, v504, v517, v531;
  v237 = [v92 orMatch:v229];

  v238 = sub_100216964();
  v239 = [v204 TPPBPolicyKeyViewMappingWithView:v238 matchingRule:v237];

  *v91[3].endpoint = v239;
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_10021D8F0;
  v241 = sub_100216964();
  v242 = sub_100216964();
  v243 = [v92 fieldMatch:v241 fieldRegex:v242];

  *(v240 + 32) = v243;
  v244 = sub_100216964();
  v245 = sub_100216964();
  v246 = [v92 fieldMatch:v244 fieldRegex:v245];

  *(v240 + 40) = v246;
  v247 = sub_100216964();
  v248 = sub_100216964();
  v249 = [v92 fieldMatch:v247 fieldRegex:v248];

  *(v240 + 48) = v249;
  v250 = sub_100216964();
  v251 = sub_100216964();
  v252 = [v92 fieldMatch:v250 fieldRegex:v251];

  *(v240 + 56) = v252;
  v253 = sub_100216964();
  v254 = sub_100216964();
  v255 = [v92 fieldMatch:v253 fieldRegex:v254];

  *(v240 + 64) = v255;
  v256 = sub_100216964();
  v257 = sub_100216964();
  v258 = [v92 fieldMatch:v256 fieldRegex:v257];

  *(v240 + 72) = v258;
  v259 = sub_100216964();
  v260 = sub_100216964();
  v261 = [v92 fieldMatch:v259 fieldRegex:v260];

  *(v240 + 80) = v261;
  v262 = sub_100216964();
  v263 = sub_100216964();
  v264 = [v92 fieldMatch:v262 fieldRegex:v263];

  *(v240 + 88) = v264;
  v265 = sub_100216964();
  v266 = sub_100216964();
  v267 = [v92 fieldMatch:v265 fieldRegex:v266];

  *(v240 + 96) = v267;
  v268 = sub_100216964();
  v269 = sub_100216964();
  v270 = [v92 fieldMatch:v268 fieldRegex:v269];

  *(v240 + 104) = v270;
  v271 = sub_100216964();
  v272 = sub_100216964();
  v273 = [v92 fieldMatch:v271 fieldRegex:v272];

  *(v240 + 112) = v273;
  v274 = sub_100216964();
  v275 = sub_100216964();
  v276 = [v92 fieldMatch:v274 fieldRegex:v275];

  *(v240 + 120) = v276;
  v277 = sub_100216964();
  v278 = sub_100216964();
  v279 = [v92 fieldMatch:v277 fieldRegex:v278];

  *(v240 + 128) = v279;
  v280 = sub_100216964();
  v281 = sub_100216964();
  v282 = [v92 fieldMatch:v280 fieldRegex:v281];

  *(v240 + 136) = v282;
  v283 = sub_100216B14().super.isa;
  v240, v284, v285, v286, v287, v288, v289, v290, v408, v422, v436, v450, v464, v478, v492, v505, v518, v532;
  v291 = [v92 orMatch:v283];

  v292 = sub_100216964();
  v293 = [v204 TPPBPolicyKeyViewMappingWithView:v292 matchingRule:v291];

  *v542[3].containerMap = v293;
  v294 = swift_allocObject();
  *(v294 + 16) = xmmword_10021D8D0;
  v295 = sub_100216964();
  v296 = sub_100216964();
  v297 = [v92 fieldMatch:v295 fieldRegex:v296];

  *(v294 + 32) = v297;
  v298 = sub_100216964();
  v299 = sub_100216964();
  v300 = [v92 fieldMatch:v298 fieldRegex:v299];

  *(v294 + 40) = v300;
  v301 = sub_100216B14().super.isa;
  v294, v302, v303, v304, v305, v306, v307, v308, v409, v423, v437, v451, v465, v479, v493, v506, v519, v533;
  v309 = [v92 orMatch:v301];

  v310 = sub_100216964();
  v311 = [v204 TPPBPolicyKeyViewMappingWithView:v310 matchingRule:v309];

  *v542[4]._TtCs12_SwiftObject_opaque = v311;
  v312 = swift_allocObject();
  *(v312 + 16) = xmmword_10021D910;
  v313 = sub_100216964();
  v314 = sub_100216964();
  v315 = [v92 fieldMatch:v313 fieldRegex:v314];

  *(v312 + 32) = v315;
  v316 = sub_100216964();
  v317 = sub_100216964();
  v318 = [v92 fieldMatch:v316 fieldRegex:v317];

  *(v312 + 40) = v318;
  v319 = sub_100216964();
  v320 = sub_100216964();
  v321 = [v92 fieldMatch:v319 fieldRegex:v320];

  *(v312 + 48) = v321;
  v322 = sub_100216964();
  v323 = sub_100216964();
  v324 = [v92 fieldMatch:v322 fieldRegex:v323];

  *(v312 + 56) = v324;
  v325 = sub_100216964();
  v326 = sub_100216964();
  v327 = [v92 fieldMatch:v325 fieldRegex:v326];

  *(v312 + 64) = v327;
  v328 = sub_100216B14().super.isa;
  v312, v329, v330, v331, v332, v333, v334, v335, v410, v424, v438, v452, v466, v480, v494, v507, v520, v534;
  v336 = [v92 orMatch:v328];

  v337 = sub_100216964();
  v338 = [v204 TPPBPolicyKeyViewMappingWithView:v337 matchingRule:v336];

  *&v542[4]._TtCs12_SwiftObject_opaque[8] = v338;
  v339 = swift_allocObject();
  *(v339 + 16) = xmmword_10021D880;
  v340 = sub_100216964();
  v341 = sub_100216964();
  v342 = [v92 fieldMatch:v340 fieldRegex:v341];

  *(v339 + 32) = v342;
  v343 = sub_100216964();
  v344 = sub_100216964();
  v345 = [v92 fieldMatch:v343 fieldRegex:v344];

  *(v339 + 40) = v345;
  v346 = sub_100216964();
  v347 = sub_100216964();
  v348 = [v92 fieldMatch:v346 fieldRegex:v347];

  *(v339 + 48) = v348;
  v349 = sub_100216B14().super.isa;
  v339, v350, v351, v352, v353, v354, v355, v356, v411, v425, v439, v453, v467, v481, v495, v508, v521, v535;
  v357 = [v92 orMatch:v349];

  v358 = sub_100216964();
  v359 = [v204 TPPBPolicyKeyViewMappingWithView:v358 matchingRule:v357];

  *v542[4].endpoint = v359;
  v360 = [v92 trueMatch];
  v361 = sub_100216964();
  v362 = [v204 TPPBPolicyKeyViewMappingWithView:v361 matchingRule:v360];

  *v542[4].containerMap = v362;
  v543 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v363 = sub_100216B14().super.isa;
  v541, v364, v365, v366, v367, v368, v369, v370, v412, v426, v440, v454, v468, v482, v496, v509, v522, v536;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v371 = sub_100216B14().super.isa;
  v540, v372, v373, v374, v375, v376, v377, v378, v413, v427, v441, v455, v469, v483, v497, v510, v523, v537;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v379 = sub_100216B14().super.isa;
  v538, v380, v381, v382, v383, v384, v385, v386, v414, v428, v442, v456, v470, v484, v498, v511, v524, v538;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v387 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v388 = sub_100216B14().super.isa;
  v542, v389, v390, v391, v392, v393, v394, v395, v415, v429, v443, v457, v471, v485, v499, v512, v525, v539;
  v396 = sub_100216B14().super.isa;
  v397 = sub_100216B14().super.isa;
  v398 = sub_100216B14().super.isa;
  v399 = sub_100216B14().super.isa;
  v400 = [v543 initWithVersion:9 modelToCategory:v363 categoriesByView:v371 introducersByCategory:v379 redactions:v387 keyViewMapping:v388 userControllableViewList:v396 piggybackViews:v397 priorityViews:v398 inheritedExcludedViews:v399 hashAlgo:1];

  return v400;
}

id sub_10002B438()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  *v1[2].containerMap = v26;
  v545 = v1;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  *v1[3]._TtCs12_SwiftObject_opaque = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D8A0;
  v31 = v30;
  v32 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyCategoriesByViewWithView:v32 categories:isa];

  *v31[1]._TtCs12_SwiftObject_opaque = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  *&v31[1]._TtCs12_SwiftObject_opaque[8] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  *v31[1].endpoint = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v34 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  *v31[1].containerMap = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v34 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  *v31[2]._TtCs12_SwiftObject_opaque = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v34 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  *&v31[2]._TtCs12_SwiftObject_opaque[8] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v34 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  *v31[2].endpoint = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v34 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  *v31[2].containerMap = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v34 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  *v31[3]._TtCs12_SwiftObject_opaque = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v34 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  *&v31[3]._TtCs12_SwiftObject_opaque[8] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v34 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  *v31[3].endpoint = v65;
  v66 = sub_100216964();
  v67 = sub_100216B14().super.isa;
  v68 = [v34 TPPBPolicyCategoriesByViewWithView:v66 categories:v67];

  *v31[3].containerMap = v68;
  v69 = sub_100216964();
  v70 = sub_100216B14().super.isa;
  v71 = [v34 TPPBPolicyCategoriesByViewWithView:v69 categories:v70];

  *v31[4]._TtCs12_SwiftObject_opaque = v71;
  v72 = sub_100216964();
  v73 = sub_100216B14().super.isa;
  v74 = [v34 TPPBPolicyCategoriesByViewWithView:v72 categories:v73];

  *&v31[4]._TtCs12_SwiftObject_opaque[8] = v74;
  v544 = v31;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = [v34 TPPBPolicyCategoriesByViewWithView:v75 categories:v76];

  *v31[4].endpoint = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10021D910;
  v79 = v78;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = objc_opt_self();
  v83 = [v82 TPPBPolicyIntroducersByCategoryWithCategory:v80 introducers:v81];

  *(v79 + 32) = v83;
  v84 = sub_100216964();
  v85 = sub_100216B14().super.isa;
  v86 = [v82 TPPBPolicyIntroducersByCategoryWithCategory:v84 introducers:v85];

  *(v79 + 40) = v86;
  v87 = sub_100216964();
  v88 = sub_100216B14().super.isa;
  v89 = [v82 TPPBPolicyIntroducersByCategoryWithCategory:v87 introducers:v88];

  *(v79 + 48) = v89;
  v90 = sub_100216964();
  v91 = sub_100216B14().super.isa;
  v92 = [v82 TPPBPolicyIntroducersByCategoryWithCategory:v90 introducers:v91];

  *(v79 + 56) = v92;
  v93 = sub_100216964();
  v94 = sub_100216B14().super.isa;
  v95 = [v82 TPPBPolicyIntroducersByCategoryWithCategory:v93 introducers:v94];

  *(v79 + 64) = v95;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_10021D8C0;
  v97 = v96;
  v98 = objc_opt_self();
  v99 = sub_100216964();
  v100 = sub_100216964();
  v101 = [v98 fieldMatch:v99 fieldRegex:v100];

  v102 = sub_100216964();
  v103 = objc_opt_self();
  v104 = [v103 TPPBPolicyKeyViewMappingWithView:v102 matchingRule:v101];

  *v97[1]._TtCs12_SwiftObject_opaque = v104;
  v105 = sub_100216964();
  v106 = sub_100216964();
  v107 = [v98 fieldMatch:v105 fieldRegex:v106];

  v108 = sub_100216964();
  v109 = [v103 TPPBPolicyKeyViewMappingWithView:v108 matchingRule:v107];

  *&v97[1]._TtCs12_SwiftObject_opaque[8] = v109;
  v110 = sub_100216964();
  v111 = sub_100216964();
  v112 = [v98 fieldMatch:v110 fieldRegex:v111];

  v113 = sub_100216964();
  v114 = [v103 TPPBPolicyKeyViewMappingWithView:v113 matchingRule:v112];

  *v97[1].endpoint = v114;
  v115 = sub_100216964();
  v116 = sub_100216964();
  v117 = [v98 fieldMatch:v115 fieldRegex:v116];

  v118 = sub_100216964();
  v119 = [v103 TPPBPolicyKeyViewMappingWithView:v118 matchingRule:v117];

  *v97[1].containerMap = v119;
  v120 = sub_100216964();
  v121 = sub_100216964();
  v122 = [v98 fieldMatch:v120 fieldRegex:v121];

  v123 = sub_100216964();
  v124 = [v103 TPPBPolicyKeyViewMappingWithView:v123 matchingRule:v122];

  *v97[2]._TtCs12_SwiftObject_opaque = v124;
  v125 = sub_100216964();
  v126 = sub_100216964();
  v127 = [v98 fieldMatch:v125 fieldRegex:v126];

  v128 = sub_100216964();
  v129 = [v103 TPPBPolicyKeyViewMappingWithView:v128 matchingRule:v127];

  *&v97[2]._TtCs12_SwiftObject_opaque[8] = v129;
  v130 = sub_100216964();
  v131 = sub_100216964();
  v132 = [v98 fieldMatch:v130 fieldRegex:v131];

  v133 = sub_100216964();
  v134 = [v103 TPPBPolicyKeyViewMappingWithView:v133 matchingRule:v132];

  *v97[2].endpoint = v134;
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_10021D880;
  v136 = sub_100216964();
  v137 = sub_100216964();
  v138 = [v98 fieldMatch:v136 fieldRegex:v137];

  *(v135 + 32) = v138;
  v139 = sub_100216964();
  v140 = sub_100216964();
  v141 = [v98 fieldMatch:v139 fieldRegex:v140];

  *(v135 + 40) = v141;
  v142 = sub_100216964();
  v143 = sub_100216964();
  v144 = [v98 fieldMatch:v142 fieldRegex:v143];

  *(v135 + 48) = v144;
  v145 = sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v146 = sub_100216B14().super.isa;
  v135, v147, v148, v149, v150, v151, v152, v153, v409, v423, v437, v451, v465, v479, v493, "ProtectedCloudStorage", 5, 0xB;
  v154 = [v98 orMatch:v146];

  v155 = sub_100216964();
  v480 = v103;
  v156 = [v103 TPPBPolicyKeyViewMappingWithView:v155 matchingRule:v154];

  v546 = v97;
  *v97[2].containerMap = v156;
  v157 = sub_100216964();
  v158 = sub_100216964();
  v159 = [v98 fieldMatch:v157 fieldRegex:v158];

  v160 = sub_100216964();
  v161 = [v103 TPPBPolicyKeyViewMappingWithView:v160 matchingRule:v159];

  *v97[3]._TtCs12_SwiftObject_opaque = v161;
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_10021D8B0;
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_10021D8D0;
  v164 = sub_100216964();
  v165 = sub_100216964();
  v166 = [v98 fieldMatch:v164 fieldRegex:v165];

  *(v163 + 32) = v166;
  v167 = sub_100216964();
  v168 = sub_100216964();
  v169 = [v98 fieldMatch:v167 fieldRegex:v168];

  *(v163 + 40) = v169;
  v170 = sub_100216B14().super.isa;
  v163, v171, v172, v173, v174, v175, v176, v177, v410, v424, v438, v452, v466, v480, v494, v506, v519, v532;
  v178 = [v98 andMatch:v170];

  *(v162 + 32) = v178;
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_10021D8D0;
  v180 = sub_100216964();
  v181 = sub_100216964();
  v182 = [v98 fieldMatch:v180 fieldRegex:v181];

  *(v179 + 32) = v182;
  v183 = sub_100216964();
  v184 = sub_100216964();
  v185 = [v98 fieldMatch:v183 fieldRegex:v184];

  *(v179 + 40) = v185;
  v186 = sub_100216B14().super.isa;
  v179, v187, v188, v189, v190, v191, v192, v193, v411, v425, v439, v453, v467, v481, v495, v507, v520, v533;
  v194 = [v98 andMatch:v186];

  *(v162 + 40) = v194;
  v195 = sub_100216964();
  v196 = sub_100216964();
  v197 = [v98 fieldMatch:v195 fieldRegex:v196];

  *(v162 + 48) = v197;
  v198 = sub_100216964();
  v199 = sub_100216964();
  v200 = [v98 fieldMatch:v198 fieldRegex:v199];

  *(v162 + 56) = v200;
  v201 = sub_100216B14().super.isa;
  v162, v202, v203, v204, v205, v206, v207, v208, v412, v426, v440, v454, v468, v482, v496, v508, v521, v534;
  v209 = [v98 orMatch:v201];

  v210 = sub_100216964();
  v211 = v483;
  v212 = [v483 TPPBPolicyKeyViewMappingWithView:v210 matchingRule:v209];

  *&v546[3]._TtCs12_SwiftObject_opaque[8] = v212;
  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_10021D8D0;
  v214 = sub_100216964();
  v215 = sub_100216964();
  v216 = [v98 fieldMatch:v214 fieldRegex:v215];

  *(v213 + 32) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_10021D880;
  v218 = sub_100216964();
  v219 = sub_100216964();
  v220 = [v98 fieldMatch:v218 fieldRegex:v219];

  *(v217 + 32) = v220;
  v221 = sub_100216964();
  v222 = sub_100216964();
  v223 = [v98 fieldMatch:v221 fieldRegex:v222];

  *(v217 + 40) = v223;
  v224 = sub_100216964();
  v225 = sub_100216964();
  v226 = [v98 fieldMatch:v224 fieldRegex:v225];

  *(v217 + 48) = v226;
  v227 = sub_100216B14().super.isa;
  v217, v228, v229, v230, v231, v232, v233, v234, v413, v427, v441, v455, v469, v483, v145, v509, v522, v535;
  v235 = [v98 andMatch:v227];

  *(v213 + 40) = v235;
  v236 = sub_100216B14().super.isa;
  v213, v237, v238, v239, v240, v241, v242, v243, v414, v428, v442, v456, v470, v484, v497, v510, v523, v536;
  v244 = [v98 orMatch:v236];

  v245 = sub_100216964();
  v246 = [v211 TPPBPolicyKeyViewMappingWithView:v245 matchingRule:v244];

  *v546[3].endpoint = v246;
  v247 = swift_allocObject();
  *(v247 + 16) = xmmword_10021D8F0;
  v248 = sub_100216964();
  v249 = sub_100216964();
  v250 = [v98 fieldMatch:v248 fieldRegex:v249];

  *(v247 + 32) = v250;
  v251 = sub_100216964();
  v252 = sub_100216964();
  v253 = [v98 fieldMatch:v251 fieldRegex:v252];

  *(v247 + 40) = v253;
  v254 = sub_100216964();
  v255 = sub_100216964();
  v256 = [v98 fieldMatch:v254 fieldRegex:v255];

  *(v247 + 48) = v256;
  v257 = sub_100216964();
  v258 = sub_100216964();
  v259 = [v98 fieldMatch:v257 fieldRegex:v258];

  *(v247 + 56) = v259;
  v260 = sub_100216964();
  v261 = sub_100216964();
  v262 = [v98 fieldMatch:v260 fieldRegex:v261];

  *(v247 + 64) = v262;
  v263 = sub_100216964();
  v264 = sub_100216964();
  v265 = [v98 fieldMatch:v263 fieldRegex:v264];

  *(v247 + 72) = v265;
  v266 = sub_100216964();
  v267 = sub_100216964();
  v268 = [v98 fieldMatch:v266 fieldRegex:v267];

  *(v247 + 80) = v268;
  v269 = sub_100216964();
  v270 = sub_100216964();
  v271 = [v98 fieldMatch:v269 fieldRegex:v270];

  *(v247 + 88) = v271;
  v272 = sub_100216964();
  v273 = sub_100216964();
  v274 = [v98 fieldMatch:v272 fieldRegex:v273];

  *(v247 + 96) = v274;
  v275 = sub_100216964();
  v276 = sub_100216964();
  v277 = [v98 fieldMatch:v275 fieldRegex:v276];

  *(v247 + 104) = v277;
  v278 = sub_100216964();
  v279 = sub_100216964();
  v280 = [v98 fieldMatch:v278 fieldRegex:v279];

  *(v247 + 112) = v280;
  v281 = sub_100216964();
  v282 = sub_100216964();
  v283 = [v98 fieldMatch:v281 fieldRegex:v282];

  *(v247 + 120) = v283;
  v284 = sub_100216964();
  v285 = sub_100216964();
  v286 = [v98 fieldMatch:v284 fieldRegex:v285];

  *(v247 + 128) = v286;
  v287 = sub_100216964();
  v288 = sub_100216964();
  v289 = [v98 fieldMatch:v287 fieldRegex:v288];

  *(v247 + 136) = v289;
  v290 = sub_100216B14().super.isa;
  v247, v291, v292, v293, v294, v295, v296, v297, v415, v429, v443, v457, v471, v485, v498, v511, v524, v537;
  v298 = [v98 orMatch:v290];

  v299 = sub_100216964();
  v300 = [v211 TPPBPolicyKeyViewMappingWithView:v299 matchingRule:v298];

  *v546[3].containerMap = v300;
  v301 = swift_allocObject();
  *(v301 + 16) = xmmword_10021D8D0;
  v302 = sub_100216964();
  v303 = sub_100216964();
  v304 = [v98 fieldMatch:v302 fieldRegex:v303];

  *(v301 + 32) = v304;
  v305 = sub_100216964();
  v306 = sub_100216964();
  v307 = [v98 fieldMatch:v305 fieldRegex:v306];

  *(v301 + 40) = v307;
  v308 = sub_100216B14().super.isa;
  v301, v309, v310, v311, v312, v313, v314, v315, v416, v430, v444, v458, v472, v486, v499, v512, v525, v538;
  v316 = [v98 orMatch:v308];

  v317 = sub_100216964();
  v318 = [v211 TPPBPolicyKeyViewMappingWithView:v317 matchingRule:v316];

  *v546[4]._TtCs12_SwiftObject_opaque = v318;
  v319 = swift_allocObject();
  *(v319 + 16) = v526;
  v320 = sub_100216964();
  v321 = sub_100216964();
  v322 = [v98 fieldMatch:v320 fieldRegex:v321];

  *(v319 + 32) = v322;
  v323 = sub_100216964();
  v324 = sub_100216964();
  v325 = [v98 fieldMatch:v323 fieldRegex:v324];

  *(v319 + 40) = v325;
  v326 = sub_100216964();
  v327 = sub_100216964();
  v328 = [v98 fieldMatch:v326 fieldRegex:v327];

  *(v319 + 48) = v328;
  v329 = sub_100216964();
  v330 = sub_100216964();
  v331 = [v98 fieldMatch:v329 fieldRegex:v330];

  *(v319 + 56) = v331;
  v332 = sub_100216964();
  v333 = sub_100216964();
  v334 = [v98 fieldMatch:v332 fieldRegex:v333];

  *(v319 + 64) = v334;
  v335 = sub_100216B14().super.isa;
  v319, v336, v337, v338, v339, v340, v341, v342, v417, v431, v445, v459, v473, v487, v500, v513, v526, *(&v526 + 1);
  v343 = [v98 orMatch:v335];

  v344 = sub_100216964();
  v345 = [v211 TPPBPolicyKeyViewMappingWithView:v344 matchingRule:v343];

  *&v546[4]._TtCs12_SwiftObject_opaque[8] = v345;
  v346 = swift_allocObject();
  *(v346 + 16) = xmmword_10021D880;
  v347 = sub_100216964();
  v348 = sub_100216964();
  v349 = [v98 fieldMatch:v347 fieldRegex:v348];

  *(v346 + 32) = v349;
  v350 = sub_100216964();
  v351 = sub_100216964();
  v352 = [v98 fieldMatch:v350 fieldRegex:v351];

  *(v346 + 40) = v352;
  v353 = sub_100216964();
  v354 = sub_100216964();
  v355 = [v98 fieldMatch:v353 fieldRegex:v354];

  *(v346 + 48) = v355;
  v356 = sub_100216B14().super.isa;
  v346, v357, v358, v359, v360, v361, v362, v363, v418, v432, v446, v460, v474, v488, v501, v514, v527, v539;
  v364 = [v98 orMatch:v356];

  v365 = sub_100216964();
  v366 = [v211 TPPBPolicyKeyViewMappingWithView:v365 matchingRule:v364];

  *v546[4].endpoint = v366;
  v367 = [v98 trueMatch];
  v368 = sub_100216964();
  v369 = [v211 TPPBPolicyKeyViewMappingWithView:v368 matchingRule:v367];

  *v546[4].containerMap = v369;
  v547 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v370 = sub_100216B14().super.isa;
  v545, v371, v372, v373, v374, v375, v376, v377, v419, v433, v447, v461, v475, v489, v502, v515, v528, v540;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v378 = sub_100216B14().super.isa;
  v544, v379, v380, v381, v382, v383, v384, v385, v420, v434, v448, v462, v476, v490, v503, v516, v529, v541;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v386 = sub_100216B14().super.isa;
  v79, v387, v388, v389, v390, v391, v392, v393, v421, v435, v449, v463, v477, v491, v504, v517, v530, v542;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v394 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v395 = sub_100216B14().super.isa;
  v546, v396, v397, v398, v399, v400, v401, v402, v422, v436, v450, v464, v478, v492, v505, v518, v531, v543;
  v403 = sub_100216B14().super.isa;
  v404 = sub_100216B14().super.isa;
  v405 = sub_100216B14().super.isa;
  v406 = sub_100216B14().super.isa;
  v407 = [v547 initWithVersion:10 modelToCategory:v370 categoriesByView:v378 introducersByCategory:v386 redactions:v394 keyViewMapping:v395 userControllableViewList:v403 piggybackViews:v404 priorityViews:v405 inheritedExcludedViews:v406 hashAlgo:1];

  return v407;
}

id sub_10002DBB8()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  *v1[2].containerMap = v26;
  v555 = v1;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  *v1[3]._TtCs12_SwiftObject_opaque = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D8C0;
  v31 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v33 = objc_opt_self();
  v34 = [v33 TPPBPolicyCategoriesByViewWithView:v31 categories:isa];

  *(v30 + 32) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v33 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v30 + 40) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v33 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v30 + 48) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v33 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v30 + 56) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v33 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v30 + 64) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v33 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v30 + 72) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v33 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v30 + 80) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v33 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v30 + 88) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v33 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v30 + 96) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v33 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v30 + 104) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v33 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v30 + 112) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v33 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v30 + 120) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v33 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v30 + 128) = v70;
  v71 = v30;
  v72 = sub_100216964();
  v73 = sub_100216B14().super.isa;
  v74 = [v33 TPPBPolicyCategoriesByViewWithView:v72 categories:v73];

  *&v71[4]._TtCs12_SwiftObject_opaque[8] = v74;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = [v33 TPPBPolicyCategoriesByViewWithView:v75 categories:v76];

  *v71[4].endpoint = v77;
  v554 = v71;
  v78 = sub_100216964();
  v79 = sub_100216B14().super.isa;
  v80 = [v33 TPPBPolicyCategoriesByViewWithView:v78 categories:v79];

  *v71[4].containerMap = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_10021D910;
  v82 = v81;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = objc_opt_self();
  v86 = [v85 TPPBPolicyIntroducersByCategoryWithCategory:v83 introducers:v84];

  *v82[1]._TtCs12_SwiftObject_opaque = v86;
  v87 = sub_100216964();
  v88 = sub_100216B14().super.isa;
  v89 = [v85 TPPBPolicyIntroducersByCategoryWithCategory:v87 introducers:v88];

  *&v82[1]._TtCs12_SwiftObject_opaque[8] = v89;
  v90 = sub_100216964();
  v91 = sub_100216B14().super.isa;
  v92 = [v85 TPPBPolicyIntroducersByCategoryWithCategory:v90 introducers:v91];

  *v82[1].endpoint = v92;
  v93 = sub_100216964();
  v94 = sub_100216B14().super.isa;
  v95 = [v85 TPPBPolicyIntroducersByCategoryWithCategory:v93 introducers:v94];

  *v82[1].containerMap = v95;
  v553 = v82;
  v96 = sub_100216964();
  v97 = sub_100216B14().super.isa;
  v98 = [v85 TPPBPolicyIntroducersByCategoryWithCategory:v96 introducers:v97];

  *v82[2]._TtCs12_SwiftObject_opaque = v98;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_10021D930;
  v100 = v99;
  v101 = objc_opt_self();
  v102 = sub_100216964();
  v103 = sub_100216964();
  v104 = [v101 fieldMatch:v102 fieldRegex:v103];

  v105 = sub_100216964();
  v106 = objc_opt_self();
  v107 = [v106 TPPBPolicyKeyViewMappingWithView:v105 matchingRule:v104];

  v100[4] = v107;
  v108 = sub_100216964();
  v109 = sub_100216964();
  v110 = [v101 fieldMatch:v108 fieldRegex:v109];

  v111 = sub_100216964();
  v112 = [v106 TPPBPolicyKeyViewMappingWithView:v111 matchingRule:v110];

  v100[5] = v112;
  v113 = sub_100216964();
  v114 = sub_100216964();
  v115 = [v101 fieldMatch:v113 fieldRegex:v114];

  v116 = sub_100216964();
  v117 = [v106 TPPBPolicyKeyViewMappingWithView:v116 matchingRule:v115];

  v100[6] = v117;
  v118 = sub_100216964();
  v119 = sub_100216964();
  v120 = [v101 fieldMatch:v118 fieldRegex:v119];

  v121 = sub_100216964();
  v122 = [v106 TPPBPolicyKeyViewMappingWithView:v121 matchingRule:v120];

  v100[7] = v122;
  v123 = v100;
  v124 = sub_100216964();
  v125 = sub_100216964();
  v126 = [v101 fieldMatch:v124 fieldRegex:v125];

  v127 = sub_100216964();
  v128 = [v106 TPPBPolicyKeyViewMappingWithView:v127 matchingRule:v126];

  v100[8] = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v101 fieldMatch:v129 fieldRegex:v130];

  v132 = sub_100216964();
  v133 = [v106 TPPBPolicyKeyViewMappingWithView:v132 matchingRule:v131];

  v100[9] = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v101 fieldMatch:v134 fieldRegex:v135];

  v137 = sub_100216964();
  v138 = [v106 TPPBPolicyKeyViewMappingWithView:v137 matchingRule:v136];

  v100[10] = v138;
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_10021D880;
  v140 = sub_100216964();
  v141 = sub_100216964();
  v142 = [v101 fieldMatch:v140 fieldRegex:v141];

  *(v139 + 32) = v142;
  v143 = sub_100216964();
  v144 = sub_100216964();
  v145 = [v101 fieldMatch:v143 fieldRegex:v144];

  *(v139 + 40) = v145;
  v146 = sub_100216964();
  v147 = sub_100216964();
  v148 = [v101 fieldMatch:v146 fieldRegex:v147];

  *(v139 + 48) = v148;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v149 = sub_100216B14().super.isa;
  v139, v150, v151, v152, v153, v154, v155, v156, v418, v432, v446, v460, v474, v488, v502, "ProtectedCloudStorage", 5, 0xB;
  v157 = [v101 orMatch:v149];

  v158 = sub_100216964();
  v159 = [v106 TPPBPolicyKeyViewMappingWithView:v158 matchingRule:v157];

  v100[11] = v159;
  v160 = sub_100216964();
  v161 = sub_100216964();
  v162 = [v101 fieldMatch:v160 fieldRegex:v161];

  v163 = sub_100216964();
  v164 = [v106 TPPBPolicyKeyViewMappingWithView:v163 matchingRule:v162];

  v100[12] = v164;
  v165 = sub_100216964();
  v166 = sub_100216964();
  v167 = [v101 fieldMatch:v165 fieldRegex:v166];

  v168 = sub_100216964();
  v169 = [v106 TPPBPolicyKeyViewMappingWithView:v168 matchingRule:v167];

  v100[13] = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_10021D8B0;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_10021D8D0;
  v172 = sub_100216964();
  v173 = sub_100216964();
  v174 = [v101 fieldMatch:v172 fieldRegex:v173];

  *(v171 + 32) = v174;
  v175 = sub_100216964();
  v176 = sub_100216964();
  v177 = [v101 fieldMatch:v175 fieldRegex:v176];

  *(v171 + 40) = v177;
  v178 = sub_100216B14().super.isa;
  v171, v179, v180, v181, v182, v183, v184, v185, v419, v433, v447, v461, v475, v489, v123, v515, v528, v541;
  v186 = [v101 andMatch:v178];

  *(v170 + 32) = v186;
  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_10021D8D0;
  v188 = sub_100216964();
  v189 = sub_100216964();
  v190 = [v101 fieldMatch:v188 fieldRegex:v189];

  *(v187 + 32) = v190;
  v191 = sub_100216964();
  v192 = sub_100216964();
  v193 = [v101 fieldMatch:v191 fieldRegex:v192];

  *(v187 + 40) = v193;
  v194 = sub_100216B14().super.isa;
  v187, v195, v196, v197, v198, v199, v200, v201, v420, v434, v448, v462, v476, v490, v503, v516, v529, v542;
  v202 = [v101 andMatch:v194];

  *(v170 + 40) = v202;
  v203 = sub_100216964();
  v204 = sub_100216964();
  v205 = [v101 fieldMatch:v203 fieldRegex:v204];

  *(v170 + 48) = v205;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v101 fieldMatch:v206 fieldRegex:v207];

  *(v170 + 56) = v208;
  v209 = sub_100216B14().super.isa;
  v170, v210, v211, v212, v213, v214, v215, v216, v421, v435, v449, v463, v477, v491, v504, v517, v530, v543;
  v217 = [v101 orMatch:v209];

  v218 = sub_100216964();
  v219 = [v106 TPPBPolicyKeyViewMappingWithView:v218 matchingRule:v217];

  v220 = v505;
  *v505[3].endpoint = v219;
  v221 = swift_allocObject();
  *(v221 + 16) = xmmword_10021D8D0;
  v222 = sub_100216964();
  v223 = sub_100216964();
  v224 = [v101 fieldMatch:v222 fieldRegex:v223];

  *(v221 + 32) = v224;
  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_10021D880;
  v226 = sub_100216964();
  v227 = sub_100216964();
  v228 = [v101 fieldMatch:v226 fieldRegex:v227];

  *(v225 + 32) = v228;
  v229 = sub_100216964();
  v230 = sub_100216964();
  v231 = [v101 fieldMatch:v229 fieldRegex:v230];

  *(v225 + 40) = v231;
  v232 = sub_100216964();
  v233 = sub_100216964();
  v234 = [v101 fieldMatch:v232 fieldRegex:v233];

  *(v225 + 48) = v234;
  v235 = sub_100216B14().super.isa;
  v225, v236, v237, v238, v239, v240, v241, v242, v422, v436, v450, v464, v478, v492, v505, v518, v531, v544;
  v243 = [v101 andMatch:v235];

  *(v221 + 40) = v243;
  v244 = sub_100216B14().super.isa;
  v221, v245, v246, v247, v248, v249, v250, v251, v423, v437, v451, v465, v479, v493, v506, v519, v532, v545;
  v252 = [v101 orMatch:v244];

  v253 = sub_100216964();
  v254 = [v106 TPPBPolicyKeyViewMappingWithView:v253 matchingRule:v252];

  *v220[3].containerMap = v254;
  v255 = v220;
  v256 = swift_allocObject();
  *(v256 + 16) = xmmword_10021D8F0;
  v257 = sub_100216964();
  v258 = sub_100216964();
  v259 = [v101 fieldMatch:v257 fieldRegex:v258];

  *(v256 + 32) = v259;
  v260 = sub_100216964();
  v261 = sub_100216964();
  v262 = [v101 fieldMatch:v260 fieldRegex:v261];

  *(v256 + 40) = v262;
  v263 = sub_100216964();
  v264 = sub_100216964();
  v265 = [v101 fieldMatch:v263 fieldRegex:v264];

  *(v256 + 48) = v265;
  v266 = sub_100216964();
  v267 = sub_100216964();
  v268 = [v101 fieldMatch:v266 fieldRegex:v267];

  *(v256 + 56) = v268;
  v269 = sub_100216964();
  v270 = sub_100216964();
  v271 = [v101 fieldMatch:v269 fieldRegex:v270];

  *(v256 + 64) = v271;
  v272 = sub_100216964();
  v273 = sub_100216964();
  v274 = [v101 fieldMatch:v272 fieldRegex:v273];

  *(v256 + 72) = v274;
  v275 = sub_100216964();
  v276 = sub_100216964();
  v277 = [v101 fieldMatch:v275 fieldRegex:v276];

  *(v256 + 80) = v277;
  v278 = sub_100216964();
  v279 = sub_100216964();
  v280 = [v101 fieldMatch:v278 fieldRegex:v279];

  *(v256 + 88) = v280;
  v281 = sub_100216964();
  v282 = sub_100216964();
  v283 = [v101 fieldMatch:v281 fieldRegex:v282];

  *(v256 + 96) = v283;
  v284 = sub_100216964();
  v285 = sub_100216964();
  v286 = [v101 fieldMatch:v284 fieldRegex:v285];

  *(v256 + 104) = v286;
  v287 = sub_100216964();
  v288 = sub_100216964();
  v289 = [v101 fieldMatch:v287 fieldRegex:v288];

  *(v256 + 112) = v289;
  v290 = sub_100216964();
  v291 = sub_100216964();
  v292 = [v101 fieldMatch:v290 fieldRegex:v291];

  *(v256 + 120) = v292;
  v293 = sub_100216964();
  v294 = sub_100216964();
  v295 = [v101 fieldMatch:v293 fieldRegex:v294];

  *(v256 + 128) = v295;
  v296 = sub_100216964();
  v297 = sub_100216964();
  v298 = [v101 fieldMatch:v296 fieldRegex:v297];

  *(v256 + 136) = v298;
  v299 = sub_100216B14().super.isa;
  v256, v300, v301, v302, v303, v304, v305, v306, v424, v438, v452, v466, v480, v494, v507, v520, v533, v546;
  v307 = [v101 orMatch:v299];

  v308 = sub_100216964();
  v309 = [v106 TPPBPolicyKeyViewMappingWithView:v308 matchingRule:v307];

  *v220[4]._TtCs12_SwiftObject_opaque = v309;
  v310 = swift_allocObject();
  *(v310 + 16) = xmmword_10021D8D0;
  v311 = sub_100216964();
  v312 = sub_100216964();
  v313 = [v101 fieldMatch:v311 fieldRegex:v312];

  *(v310 + 32) = v313;
  v314 = sub_100216964();
  v315 = sub_100216964();
  v316 = [v101 fieldMatch:v314 fieldRegex:v315];

  *(v310 + 40) = v316;
  v317 = sub_100216B14().super.isa;
  v310, v318, v319, v320, v321, v322, v323, v324, v425, v439, v453, v467, v481, v495, v508, v521, v534, v547;
  v325 = [v101 orMatch:v317];

  v326 = sub_100216964();
  v327 = [v106 TPPBPolicyKeyViewMappingWithView:v326 matchingRule:v325];

  *&v220[4]._TtCs12_SwiftObject_opaque[8] = v327;
  v328 = swift_allocObject();
  *(v328 + 16) = v535;
  v329 = sub_100216964();
  v330 = sub_100216964();
  v331 = [v101 fieldMatch:v329 fieldRegex:v330];

  *(v328 + 32) = v331;
  v332 = sub_100216964();
  v333 = sub_100216964();
  v334 = [v101 fieldMatch:v332 fieldRegex:v333];

  *(v328 + 40) = v334;
  v335 = sub_100216964();
  v336 = sub_100216964();
  v337 = [v101 fieldMatch:v335 fieldRegex:v336];

  *(v328 + 48) = v337;
  v338 = sub_100216964();
  v339 = sub_100216964();
  v340 = [v101 fieldMatch:v338 fieldRegex:v339];

  *(v328 + 56) = v340;
  v341 = sub_100216964();
  v342 = sub_100216964();
  v343 = [v101 fieldMatch:v341 fieldRegex:v342];

  *(v328 + 64) = v343;
  v344 = sub_100216B14().super.isa;
  v328, v345, v346, v347, v348, v349, v350, v351, v426, v440, v454, v468, v482, v496, v509, v522, v535, *(&v535 + 1);
  v352 = [v101 orMatch:v344];

  v353 = sub_100216964();
  v354 = [v106 TPPBPolicyKeyViewMappingWithView:v353 matchingRule:v352];

  *v220[4].endpoint = v354;
  v355 = swift_allocObject();
  *(v355 + 16) = xmmword_10021D880;
  v356 = sub_100216964();
  v357 = sub_100216964();
  v358 = [v101 fieldMatch:v356 fieldRegex:v357];

  *(v355 + 32) = v358;
  v359 = sub_100216964();
  v360 = sub_100216964();
  v361 = [v101 fieldMatch:v359 fieldRegex:v360];

  *(v355 + 40) = v361;
  v362 = sub_100216964();
  v363 = sub_100216964();
  v364 = [v101 fieldMatch:v362 fieldRegex:v363];

  *(v355 + 48) = v364;
  v365 = sub_100216B14().super.isa;
  v355, v366, v367, v368, v369, v370, v371, v372, v427, v441, v455, v469, v483, v497, v510, v523, v536, v548;
  v373 = [v101 orMatch:v365];

  v374 = sub_100216964();
  v375 = [v106 TPPBPolicyKeyViewMappingWithView:v374 matchingRule:v373];

  *v220[4].containerMap = v375;
  v376 = [v101 trueMatch];
  v377 = sub_100216964();
  v378 = [v106 TPPBPolicyKeyViewMappingWithView:v377 matchingRule:v376];

  *v220[5]._TtCs12_SwiftObject_opaque = v378;
  v556 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v379 = sub_100216B14().super.isa;
  v555, v380, v381, v382, v383, v384, v385, v386, v428, v442, v456, v470, v484, v498, v511, v524, v537, v549;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v387 = sub_100216B14().super.isa;
  v554, v388, v389, v390, v391, v392, v393, v394, v429, v443, v457, v471, v485, v499, v512, v525, v538, v550;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v395 = sub_100216B14().super.isa;
  v553, v396, v397, v398, v399, v400, v401, v402, v430, v444, v458, v472, v486, v500, v513, v526, v539, v551;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v403 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v404 = sub_100216B14().super.isa;
  v255, v405, v406, v407, v408, v409, v410, v411, v431, v445, v459, v473, v487, v501, v514, v527, v540, v552;
  v412 = sub_100216B14().super.isa;
  v413 = sub_100216B14().super.isa;
  v414 = sub_100216B14().super.isa;
  v415 = sub_100216B14().super.isa;
  v416 = [v556 initWithVersion:11 modelToCategory:v379 categoriesByView:v387 introducersByCategory:v395 redactions:v403 keyViewMapping:v404 userControllableViewList:v412 piggybackViews:v413 priorityViews:v414 inheritedExcludedViews:v415 hashAlgo:1];

  return v416;
}

id sub_100030430()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  *v1[2].containerMap = v26;
  v554 = v1;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  *v1[3]._TtCs12_SwiftObject_opaque = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D8C0;
  v31 = v30;
  v32 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyCategoriesByViewWithView:v32 categories:isa];

  *v31[1]._TtCs12_SwiftObject_opaque = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  *&v31[1]._TtCs12_SwiftObject_opaque[8] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  *v31[1].endpoint = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v34 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  *v31[1].containerMap = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v34 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  *v31[2]._TtCs12_SwiftObject_opaque = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v34 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  *&v31[2]._TtCs12_SwiftObject_opaque[8] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v34 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  *v31[2].endpoint = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v34 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  *v31[2].containerMap = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v34 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  *v31[3]._TtCs12_SwiftObject_opaque = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v34 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  *&v31[3]._TtCs12_SwiftObject_opaque[8] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v34 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  v66 = v31;
  *v31[3].endpoint = v65;
  v67 = sub_100216964();
  v68 = sub_100216B14().super.isa;
  v69 = [v34 TPPBPolicyCategoriesByViewWithView:v67 categories:v68];

  *v66[3].containerMap = v69;
  v70 = sub_100216964();
  v71 = sub_100216B14().super.isa;
  v72 = [v34 TPPBPolicyCategoriesByViewWithView:v70 categories:v71];

  *v66[4]._TtCs12_SwiftObject_opaque = v72;
  v73 = sub_100216964();
  v74 = sub_100216B14().super.isa;
  v75 = [v34 TPPBPolicyCategoriesByViewWithView:v73 categories:v74];

  *&v66[4]._TtCs12_SwiftObject_opaque[8] = v75;
  v76 = sub_100216964();
  v77 = sub_100216B14().super.isa;
  v78 = [v34 TPPBPolicyCategoriesByViewWithView:v76 categories:v77];

  *v66[4].endpoint = v78;
  v553 = v66;
  v79 = sub_100216964();
  v80 = sub_100216B14().super.isa;
  v81 = [v34 TPPBPolicyCategoriesByViewWithView:v79 categories:v80];

  *v66[4].containerMap = v81;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_10021D910;
  v83 = v82;
  v84 = sub_100216964();
  v85 = sub_100216B14().super.isa;
  v86 = objc_opt_self();
  v87 = [v86 TPPBPolicyIntroducersByCategoryWithCategory:v84 introducers:v85];

  *v83[1]._TtCs12_SwiftObject_opaque = v87;
  v88 = sub_100216964();
  v89 = sub_100216B14().super.isa;
  v90 = [v86 TPPBPolicyIntroducersByCategoryWithCategory:v88 introducers:v89];

  *&v83[1]._TtCs12_SwiftObject_opaque[8] = v90;
  v91 = sub_100216964();
  v92 = sub_100216B14().super.isa;
  v93 = [v86 TPPBPolicyIntroducersByCategoryWithCategory:v91 introducers:v92];

  *v83[1].endpoint = v93;
  v94 = sub_100216964();
  v95 = sub_100216B14().super.isa;
  v96 = [v86 TPPBPolicyIntroducersByCategoryWithCategory:v94 introducers:v95];

  v552 = v83;
  *v83[1].containerMap = v96;
  v97 = sub_100216964();
  v98 = sub_100216B14().super.isa;
  v99 = [v86 TPPBPolicyIntroducersByCategoryWithCategory:v97 introducers:v98];

  *v83[2]._TtCs12_SwiftObject_opaque = v99;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_10021D930;
  v101 = v100;
  v102 = objc_opt_self();
  v103 = sub_100216964();
  v104 = sub_100216964();
  v105 = [v102 fieldMatch:v103 fieldRegex:v104];

  v106 = sub_100216964();
  v107 = objc_opt_self();
  v108 = [v107 TPPBPolicyKeyViewMappingWithView:v106 matchingRule:v105];

  *(v101 + 32) = v108;
  v109 = sub_100216964();
  v110 = sub_100216964();
  v111 = [v102 fieldMatch:v109 fieldRegex:v110];

  v112 = sub_100216964();
  v113 = [v107 TPPBPolicyKeyViewMappingWithView:v112 matchingRule:v111];

  *(v101 + 40) = v113;
  v114 = sub_100216964();
  v115 = sub_100216964();
  v116 = [v102 fieldMatch:v114 fieldRegex:v115];

  v117 = sub_100216964();
  v118 = [v107 TPPBPolicyKeyViewMappingWithView:v117 matchingRule:v116];

  *(v101 + 48) = v118;
  v119 = sub_100216964();
  v120 = sub_100216964();
  v121 = [v102 fieldMatch:v119 fieldRegex:v120];

  v122 = sub_100216964();
  v123 = [v107 TPPBPolicyKeyViewMappingWithView:v122 matchingRule:v121];

  *(v101 + 56) = v123;
  v124 = sub_100216964();
  v125 = sub_100216964();
  v126 = [v102 fieldMatch:v124 fieldRegex:v125];

  v127 = sub_100216964();
  v128 = [v107 TPPBPolicyKeyViewMappingWithView:v127 matchingRule:v126];

  *(v101 + 64) = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v102 fieldMatch:v129 fieldRegex:v130];

  v132 = sub_100216964();
  v133 = [v107 TPPBPolicyKeyViewMappingWithView:v132 matchingRule:v131];

  *(v101 + 72) = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v102 fieldMatch:v134 fieldRegex:v135];

  v137 = sub_100216964();
  v138 = [v107 TPPBPolicyKeyViewMappingWithView:v137 matchingRule:v136];

  *(v101 + 80) = v138;
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_10021D880;
  v140 = sub_100216964();
  v141 = sub_100216964();
  v142 = [v102 fieldMatch:v140 fieldRegex:v141];

  *(v139 + 32) = v142;
  v143 = sub_100216964();
  v144 = sub_100216964();
  v145 = [v102 fieldMatch:v143 fieldRegex:v144];

  *(v139 + 40) = v145;
  v146 = sub_100216964();
  v147 = sub_100216964();
  v148 = [v102 fieldMatch:v146 fieldRegex:v147];

  *(v139 + 48) = v148;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v149 = sub_100216B14().super.isa;
  v139, v150, v151, v152, v153, v154, v155, v156, v417, v431, v445, v459, v473, v487, "ProtectedCloudStorage", "Security-61901.40.77\n", 5, 0xB;
  v157 = [v102 orMatch:v149];

  v158 = sub_100216964();
  v159 = [v107 TPPBPolicyKeyViewMappingWithView:v158 matchingRule:v157];

  *(v101 + 88) = v159;
  v160 = sub_100216964();
  v161 = sub_100216964();
  v162 = [v102 fieldMatch:v160 fieldRegex:v161];

  v163 = sub_100216964();
  v164 = [v107 TPPBPolicyKeyViewMappingWithView:v163 matchingRule:v162];

  *(v101 + 96) = v164;
  v165 = sub_100216964();
  v166 = sub_100216964();
  v167 = [v102 fieldMatch:v165 fieldRegex:v166];

  v168 = sub_100216964();
  v169 = [v107 TPPBPolicyKeyViewMappingWithView:v168 matchingRule:v167];

  *(v101 + 104) = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_10021D8B0;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_10021D8D0;
  v172 = sub_100216964();
  v173 = sub_100216964();
  v174 = [v102 fieldMatch:v172 fieldRegex:v173];

  *(v171 + 32) = v174;
  v175 = sub_100216964();
  v176 = sub_100216964();
  v177 = [v102 fieldMatch:v175 fieldRegex:v176];

  *(v171 + 40) = v177;
  v178 = sub_100216B14().super.isa;
  v171, v179, v180, v181, v182, v183, v184, v185, v418, v432, v446, v460, v474, v488, v501, v514, v527, v540;
  v186 = [v102 andMatch:v178];

  *(v170 + 32) = v186;
  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_10021D8D0;
  v188 = sub_100216964();
  v189 = sub_100216964();
  v190 = [v102 fieldMatch:v188 fieldRegex:v189];

  *(v187 + 32) = v190;
  v191 = sub_100216964();
  v192 = sub_100216964();
  v193 = [v102 fieldMatch:v191 fieldRegex:v192];

  *(v187 + 40) = v193;
  v194 = sub_100216B14().super.isa;
  v187, v195, v196, v197, v198, v199, v200, v201, v419, v433, v447, v461, v475, v489, v502, v515, v528, v541;
  v202 = [v102 andMatch:v194];

  *(v170 + 40) = v202;
  v203 = sub_100216964();
  v204 = sub_100216964();
  v205 = [v102 fieldMatch:v203 fieldRegex:v204];

  *(v170 + 48) = v205;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v102 fieldMatch:v206 fieldRegex:v207];

  *(v170 + 56) = v208;
  v209 = sub_100216B14().super.isa;
  v170, v210, v211, v212, v213, v214, v215, v216, v420, v434, v448, v462, v476, v490, v503, v516, v529, v542;
  v217 = [v102 orMatch:v209];

  v218 = sub_100216964();
  v219 = [v107 TPPBPolicyKeyViewMappingWithView:v218 matchingRule:v217];

  *(v101 + 112) = v219;
  v220 = swift_allocObject();
  *(v220 + 16) = xmmword_10021D8D0;
  v221 = sub_100216964();
  v222 = sub_100216964();
  v223 = [v102 fieldMatch:v221 fieldRegex:v222];

  *(v220 + 32) = v223;
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_10021D880;
  v225 = sub_100216964();
  v226 = sub_100216964();
  v227 = [v102 fieldMatch:v225 fieldRegex:v226];

  *(v224 + 32) = v227;
  v228 = sub_100216964();
  v229 = sub_100216964();
  v230 = [v102 fieldMatch:v228 fieldRegex:v229];

  *(v224 + 40) = v230;
  v231 = sub_100216964();
  v232 = sub_100216964();
  v233 = [v102 fieldMatch:v231 fieldRegex:v232];

  *(v224 + 48) = v233;
  v234 = sub_100216B14().super.isa;
  v224, v235, v236, v237, v238, v239, v240, v241, v421, v435, v449, v463, v477, v491, v504, v517, v530, v543;
  v242 = [v102 andMatch:v234];

  *(v220 + 40) = v242;
  v243 = sub_100216B14().super.isa;
  v220, v244, v245, v246, v247, v248, v249, v250, v422, v436, v450, v464, v478, v492, v505, v518, v531, v544;
  v251 = [v102 orMatch:v243];

  v252 = sub_100216964();
  v253 = [v107 TPPBPolicyKeyViewMappingWithView:v252 matchingRule:v251];

  *(v101 + 120) = v253;
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_10021D8F0;
  v255 = sub_100216964();
  v256 = sub_100216964();
  v257 = [v102 fieldMatch:v255 fieldRegex:v256];

  *(v254 + 32) = v257;
  v258 = sub_100216964();
  v259 = sub_100216964();
  v260 = [v102 fieldMatch:v258 fieldRegex:v259];

  *(v254 + 40) = v260;
  v261 = sub_100216964();
  v262 = sub_100216964();
  v263 = [v102 fieldMatch:v261 fieldRegex:v262];

  *(v254 + 48) = v263;
  v264 = sub_100216964();
  v265 = sub_100216964();
  v266 = [v102 fieldMatch:v264 fieldRegex:v265];

  *(v254 + 56) = v266;
  v267 = sub_100216964();
  v268 = sub_100216964();
  v269 = [v102 fieldMatch:v267 fieldRegex:v268];

  *(v254 + 64) = v269;
  v270 = sub_100216964();
  v271 = sub_100216964();
  v272 = [v102 fieldMatch:v270 fieldRegex:v271];

  *(v254 + 72) = v272;
  v273 = sub_100216964();
  v274 = sub_100216964();
  v275 = [v102 fieldMatch:v273 fieldRegex:v274];

  *(v254 + 80) = v275;
  v276 = sub_100216964();
  v277 = sub_100216964();
  v278 = [v102 fieldMatch:v276 fieldRegex:v277];

  *(v254 + 88) = v278;
  v279 = sub_100216964();
  v280 = sub_100216964();
  v281 = [v102 fieldMatch:v279 fieldRegex:v280];

  *(v254 + 96) = v281;
  v282 = sub_100216964();
  v283 = sub_100216964();
  v284 = [v102 fieldMatch:v282 fieldRegex:v283];

  *(v254 + 104) = v284;
  v285 = sub_100216964();
  v286 = sub_100216964();
  v287 = [v102 fieldMatch:v285 fieldRegex:v286];

  *(v254 + 112) = v287;
  v288 = sub_100216964();
  v289 = sub_100216964();
  v290 = [v102 fieldMatch:v288 fieldRegex:v289];

  *(v254 + 120) = v290;
  v291 = sub_100216964();
  v292 = sub_100216964();
  v293 = [v102 fieldMatch:v291 fieldRegex:v292];

  *(v254 + 128) = v293;
  v294 = sub_100216964();
  v295 = sub_100216964();
  v296 = [v102 fieldMatch:v294 fieldRegex:v295];

  *(v254 + 136) = v296;
  v297 = sub_100216B14().super.isa;
  v254, v298, v299, v300, v301, v302, v303, v304, v423, v437, v451, v465, v479, v493, v506, v519, v532, v545;
  v305 = [v102 orMatch:v297];

  v306 = sub_100216964();
  v307 = [v107 TPPBPolicyKeyViewMappingWithView:v306 matchingRule:v305];

  *(v101 + 128) = v307;
  v308 = swift_allocObject();
  *(v308 + 16) = xmmword_10021D8D0;
  v309 = sub_100216964();
  v310 = sub_100216964();
  v311 = [v102 fieldMatch:v309 fieldRegex:v310];

  *(v308 + 32) = v311;
  v312 = sub_100216964();
  v313 = sub_100216964();
  v314 = [v102 fieldMatch:v312 fieldRegex:v313];

  *(v308 + 40) = v314;
  v315 = sub_100216B14().super.isa;
  v308, v316, v317, v318, v319, v320, v321, v322, v424, v438, v452, v466, v480, v494, v507, v520, v533, v546;
  v323 = [v102 orMatch:v315];

  v324 = sub_100216964();
  v325 = [v107 TPPBPolicyKeyViewMappingWithView:v324 matchingRule:v323];

  *(v101 + 136) = v325;
  v326 = swift_allocObject();
  *(v326 + 16) = v534;
  v327 = sub_100216964();
  v328 = sub_100216964();
  v329 = [v102 fieldMatch:v327 fieldRegex:v328];

  *(v326 + 32) = v329;
  v330 = sub_100216964();
  v331 = sub_100216964();
  v332 = [v102 fieldMatch:v330 fieldRegex:v331];

  *(v326 + 40) = v332;
  v333 = sub_100216964();
  v334 = sub_100216964();
  v335 = [v102 fieldMatch:v333 fieldRegex:v334];

  *(v326 + 48) = v335;
  v336 = sub_100216964();
  v337 = sub_100216964();
  v338 = [v102 fieldMatch:v336 fieldRegex:v337];

  *(v326 + 56) = v338;
  v339 = sub_100216964();
  v340 = sub_100216964();
  v341 = [v102 fieldMatch:v339 fieldRegex:v340];

  *(v326 + 64) = v341;
  v342 = sub_100216B14().super.isa;
  v326, v343, v344, v345, v346, v347, v348, v349, v425, v439, v453, v467, v481, v495, v508, v521, v534, *(&v534 + 1);
  v350 = [v102 orMatch:v342];

  v351 = sub_100216964();
  v352 = [v107 TPPBPolicyKeyViewMappingWithView:v351 matchingRule:v350];

  *(v101 + 144) = v352;
  v353 = swift_allocObject();
  *(v353 + 16) = xmmword_10021D880;
  v354 = sub_100216964();
  v355 = sub_100216964();
  v356 = [v102 fieldMatch:v354 fieldRegex:v355];

  *(v353 + 32) = v356;
  v357 = sub_100216964();
  v358 = sub_100216964();
  v359 = [v102 fieldMatch:v357 fieldRegex:v358];

  *(v353 + 40) = v359;
  v360 = sub_100216964();
  v361 = sub_100216964();
  v362 = [v102 fieldMatch:v360 fieldRegex:v361];

  *(v353 + 48) = v362;
  v363 = sub_100216B14().super.isa;
  v353, v364, v365, v366, v367, v368, v369, v370, v426, v440, v454, v468, v482, v496, v509, v522, v535, v547;
  v371 = [v102 orMatch:v363];

  v372 = sub_100216964();
  v373 = [v107 TPPBPolicyKeyViewMappingWithView:v372 matchingRule:v371];

  *(v101 + 152) = v373;
  v374 = [v102 trueMatch];
  v375 = sub_100216964();
  v376 = [v107 TPPBPolicyKeyViewMappingWithView:v375 matchingRule:v374];

  *(v101 + 160) = v376;
  v377 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v378 = sub_100216B14().super.isa;
  v554, v379, v380, v381, v382, v383, v384, v385, v427, v441, v455, v469, v483, v497, v510, v523, v536, v548;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v386 = sub_100216B14().super.isa;
  v553, v387, v388, v389, v390, v391, v392, v393, v428, v442, v456, v470, v484, v498, v511, v524, v537, v549;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v394 = sub_100216B14().super.isa;
  v552, v395, v396, v397, v398, v399, v400, v401, v429, v443, v457, v471, v485, v499, v512, v525, v538, v550;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v402 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v403 = sub_100216B14().super.isa;
  v101, v404, v405, v406, v407, v408, v409, v410, v430, v444, v458, v472, v486, v500, v513, v526, v539, v551;
  v411 = sub_100216B14().super.isa;
  v412 = sub_100216B14().super.isa;
  v413 = sub_100216B14().super.isa;
  v414 = sub_100216B14().super.isa;
  v415 = [v377 initWithVersion:12 modelToCategory:v378 categoriesByView:v386 introducersByCategory:v394 redactions:v402 keyViewMapping:v403 userControllableViewList:v411 piggybackViews:v412 priorityViews:v413 inheritedExcludedViews:v414 hashAlgo:1];

  return v415;
}

id sub_100032CA8()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  *v1[2].containerMap = v26;
  v561 = v1;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  *v1[3]._TtCs12_SwiftObject_opaque = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D930;
  v31 = v30;
  v32 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyCategoriesByViewWithView:v32 categories:isa];

  *v31[1]._TtCs12_SwiftObject_opaque = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  *&v31[1]._TtCs12_SwiftObject_opaque[8] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  *v31[1].endpoint = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v34 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  *v31[1].containerMap = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v34 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  *v31[2]._TtCs12_SwiftObject_opaque = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v34 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  *&v31[2]._TtCs12_SwiftObject_opaque[8] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v34 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  *v31[2].endpoint = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v34 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  *v31[2].containerMap = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v34 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  *v31[3]._TtCs12_SwiftObject_opaque = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v34 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  *&v31[3]._TtCs12_SwiftObject_opaque[8] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v34 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  *v31[3].endpoint = v65;
  v66 = sub_100216964();
  v67 = sub_100216B14().super.isa;
  v68 = [v34 TPPBPolicyCategoriesByViewWithView:v66 categories:v67];

  *v31[3].containerMap = v68;
  v69 = sub_100216964();
  v70 = sub_100216B14().super.isa;
  v71 = [v34 TPPBPolicyCategoriesByViewWithView:v69 categories:v70];

  *v31[4]._TtCs12_SwiftObject_opaque = v71;
  v72 = sub_100216964();
  v73 = sub_100216B14().super.isa;
  v74 = [v34 TPPBPolicyCategoriesByViewWithView:v72 categories:v73];

  *&v31[4]._TtCs12_SwiftObject_opaque[8] = v74;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = [v34 TPPBPolicyCategoriesByViewWithView:v75 categories:v76];

  *v31[4].endpoint = v77;
  v78 = sub_100216964();
  v79 = sub_100216B14().super.isa;
  v80 = [v34 TPPBPolicyCategoriesByViewWithView:v78 categories:v79];

  *v31[4].containerMap = v80;
  v560 = v31;
  v81 = sub_100216964();
  v82 = sub_100216B14().super.isa;
  v83 = [v34 TPPBPolicyCategoriesByViewWithView:v81 categories:v82];

  *v31[5]._TtCs12_SwiftObject_opaque = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_10021D910;
  v85 = v84;
  v86 = sub_100216964();
  v87 = sub_100216B14().super.isa;
  v88 = objc_opt_self();
  v89 = [v88 TPPBPolicyIntroducersByCategoryWithCategory:v86 introducers:v87];

  *v85[1]._TtCs12_SwiftObject_opaque = v89;
  v90 = sub_100216964();
  v91 = sub_100216B14().super.isa;
  v92 = [v88 TPPBPolicyIntroducersByCategoryWithCategory:v90 introducers:v91];

  *&v85[1]._TtCs12_SwiftObject_opaque[8] = v92;
  v93 = sub_100216964();
  v94 = sub_100216B14().super.isa;
  v95 = [v88 TPPBPolicyIntroducersByCategoryWithCategory:v93 introducers:v94];

  *v85[1].endpoint = v95;
  v96 = sub_100216964();
  v97 = sub_100216B14().super.isa;
  v98 = [v88 TPPBPolicyIntroducersByCategoryWithCategory:v96 introducers:v97];

  v559 = v85;
  *v85[1].containerMap = v98;
  v99 = sub_100216964();
  v100 = sub_100216B14().super.isa;
  v101 = [v88 TPPBPolicyIntroducersByCategoryWithCategory:v99 introducers:v100];

  *v85[2]._TtCs12_SwiftObject_opaque = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_10021D940;
  v103 = v102;
  v104 = objc_opt_self();
  v105 = sub_100216964();
  v106 = sub_100216964();
  v107 = [v104 fieldMatch:v105 fieldRegex:v106];

  v108 = sub_100216964();
  v109 = objc_opt_self();
  v110 = [v109 TPPBPolicyKeyViewMappingWithView:v108 matchingRule:v107];

  *v103[1]._TtCs12_SwiftObject_opaque = v110;
  v111 = sub_100216964();
  v112 = sub_100216964();
  v113 = [v104 fieldMatch:v111 fieldRegex:v112];

  v114 = sub_100216964();
  v115 = [v109 TPPBPolicyKeyViewMappingWithView:v114 matchingRule:v113];

  *&v103[1]._TtCs12_SwiftObject_opaque[8] = v115;
  v116 = sub_100216964();
  v117 = sub_100216964();
  v118 = [v104 fieldMatch:v116 fieldRegex:v117];

  v119 = sub_100216964();
  v120 = [v109 TPPBPolicyKeyViewMappingWithView:v119 matchingRule:v118];

  *v103[1].endpoint = v120;
  v121 = sub_100216964();
  v122 = sub_100216964();
  v123 = [v104 fieldMatch:v121 fieldRegex:v122];

  v124 = sub_100216964();
  v125 = [v109 TPPBPolicyKeyViewMappingWithView:v124 matchingRule:v123];

  *v103[1].containerMap = v125;
  v126 = sub_100216964();
  v127 = sub_100216964();
  v128 = [v104 fieldMatch:v126 fieldRegex:v127];

  v129 = sub_100216964();
  v130 = [v109 TPPBPolicyKeyViewMappingWithView:v129 matchingRule:v128];

  *v103[2]._TtCs12_SwiftObject_opaque = v130;
  v131 = sub_100216964();
  v132 = sub_100216964();
  v133 = [v104 fieldMatch:v131 fieldRegex:v132];

  v134 = sub_100216964();
  v135 = [v109 TPPBPolicyKeyViewMappingWithView:v134 matchingRule:v133];

  *&v103[2]._TtCs12_SwiftObject_opaque[8] = v135;
  v136 = sub_100216964();
  v137 = sub_100216964();
  v138 = [v104 fieldMatch:v136 fieldRegex:v137];

  v139 = sub_100216964();
  v140 = [v109 TPPBPolicyKeyViewMappingWithView:v139 matchingRule:v138];

  *v103[2].endpoint = v140;
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_10021D880;
  v142 = sub_100216964();
  v143 = sub_100216964();
  v144 = [v104 fieldMatch:v142 fieldRegex:v143];

  *(v141 + 32) = v144;
  v145 = sub_100216964();
  v146 = sub_100216964();
  v147 = [v104 fieldMatch:v145 fieldRegex:v146];

  *(v141 + 40) = v147;
  v148 = sub_100216964();
  v149 = sub_100216964();
  v150 = [v104 fieldMatch:v148 fieldRegex:v149];

  *(v141 + 48) = v150;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v151 = sub_100216B14().super.isa;
  v141, v152, v153, v154, v155, v156, v157, v158, v425, v439, v453, v467, v481, v495, "ProtectedCloudStorage", "Security-61901.40.77\n", 5, 0xB;
  v159 = [v104 orMatch:v151];

  v160 = sub_100216964();
  v161 = [v109 TPPBPolicyKeyViewMappingWithView:v160 matchingRule:v159];

  *v103[2].containerMap = v161;
  v162 = sub_100216964();
  v163 = sub_100216964();
  v164 = [v104 fieldMatch:v162 fieldRegex:v163];

  v165 = sub_100216964();
  v166 = [v109 TPPBPolicyKeyViewMappingWithView:v165 matchingRule:v164];

  *v103[3]._TtCs12_SwiftObject_opaque = v166;
  v167 = sub_100216964();
  v168 = sub_100216964();
  v169 = [v104 fieldMatch:v167 fieldRegex:v168];

  v170 = sub_100216964();
  v171 = [v109 TPPBPolicyKeyViewMappingWithView:v170 matchingRule:v169];

  *&v103[3]._TtCs12_SwiftObject_opaque[8] = v171;
  v562 = v103;
  v172 = sub_100216964();
  v173 = sub_100216964();
  v174 = [v104 fieldMatch:v172 fieldRegex:v173];

  v175 = sub_100216964();
  v176 = [v109 TPPBPolicyKeyViewMappingWithView:v175 matchingRule:v174];

  *v103[3].endpoint = v176;
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_10021D8B0;
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_10021D8D0;
  v179 = sub_100216964();
  v180 = sub_100216964();
  v181 = [v104 fieldMatch:v179 fieldRegex:v180];

  *(v178 + 32) = v181;
  v182 = sub_100216964();
  v183 = sub_100216964();
  v184 = [v104 fieldMatch:v182 fieldRegex:v183];

  *(v178 + 40) = v184;
  v185 = sub_100216B14().super.isa;
  v178, v186, v187, v188, v189, v190, v191, v192, v426, v440, v454, v468, v482, v109, v508, v521, v534, v547;
  v193 = [v104 andMatch:v185];

  *(v177 + 32) = v193;
  v194 = swift_allocObject();
  *(v194 + 16) = xmmword_10021D8D0;
  v195 = sub_100216964();
  v196 = sub_100216964();
  v197 = [v104 fieldMatch:v195 fieldRegex:v196];

  *(v194 + 32) = v197;
  v198 = sub_100216964();
  v199 = sub_100216964();
  v200 = [v104 fieldMatch:v198 fieldRegex:v199];

  *(v194 + 40) = v200;
  v201 = sub_100216B14().super.isa;
  v194, v202, v203, v204, v205, v206, v207, v208, v427, v441, v455, v469, v483, v496, v509, v522, v535, v548;
  v209 = [v104 andMatch:v201];

  *(v177 + 40) = v209;
  v210 = sub_100216964();
  v211 = sub_100216964();
  v212 = [v104 fieldMatch:v210 fieldRegex:v211];

  *(v177 + 48) = v212;
  v213 = sub_100216964();
  v214 = sub_100216964();
  v215 = [v104 fieldMatch:v213 fieldRegex:v214];

  *(v177 + 56) = v215;
  v216 = sub_100216B14().super.isa;
  v177, v217, v218, v219, v220, v221, v222, v223, v428, v442, v456, v470, v484, v497, v510, v523, v536, v549;
  v224 = [v104 orMatch:v216];

  v225 = sub_100216964();
  v226 = v498;
  v227 = [v498 TPPBPolicyKeyViewMappingWithView:v225 matchingRule:v224];

  *v562[3].containerMap = v227;
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_10021D8D0;
  v229 = sub_100216964();
  v230 = sub_100216964();
  v231 = [v104 fieldMatch:v229 fieldRegex:v230];

  *(v228 + 32) = v231;
  v232 = swift_allocObject();
  *(v232 + 16) = xmmword_10021D880;
  v233 = sub_100216964();
  v234 = sub_100216964();
  v235 = [v104 fieldMatch:v233 fieldRegex:v234];

  *(v232 + 32) = v235;
  v236 = sub_100216964();
  v237 = sub_100216964();
  v238 = [v104 fieldMatch:v236 fieldRegex:v237];

  *(v232 + 40) = v238;
  v239 = sub_100216964();
  v240 = sub_100216964();
  v241 = [v104 fieldMatch:v239 fieldRegex:v240];

  *(v232 + 48) = v241;
  v242 = sub_100216B14().super.isa;
  v232, v243, v244, v245, v246, v247, v248, v249, v429, v443, v457, v471, v485, v498, v511, v524, v537, v550;
  v250 = [v104 andMatch:v242];

  *(v228 + 40) = v250;
  v251 = sub_100216B14().super.isa;
  v228, v252, v253, v254, v255, v256, v257, v258, v430, v444, v458, v472, v486, v499, v512, v525, v538, v551;
  v259 = [v104 orMatch:v251];

  v260 = sub_100216964();
  v261 = [v226 TPPBPolicyKeyViewMappingWithView:v260 matchingRule:v259];

  *v562[4]._TtCs12_SwiftObject_opaque = v261;
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_10021D8F0;
  v263 = sub_100216964();
  v264 = sub_100216964();
  v265 = [v104 fieldMatch:v263 fieldRegex:v264];

  *(v262 + 32) = v265;
  v266 = sub_100216964();
  v267 = sub_100216964();
  v268 = [v104 fieldMatch:v266 fieldRegex:v267];

  *(v262 + 40) = v268;
  v269 = sub_100216964();
  v270 = sub_100216964();
  v271 = [v104 fieldMatch:v269 fieldRegex:v270];

  *(v262 + 48) = v271;
  v272 = sub_100216964();
  v273 = sub_100216964();
  v274 = [v104 fieldMatch:v272 fieldRegex:v273];

  *(v262 + 56) = v274;
  v275 = sub_100216964();
  v276 = sub_100216964();
  v277 = [v104 fieldMatch:v275 fieldRegex:v276];

  *(v262 + 64) = v277;
  v278 = sub_100216964();
  v279 = sub_100216964();
  v280 = [v104 fieldMatch:v278 fieldRegex:v279];

  *(v262 + 72) = v280;
  v281 = sub_100216964();
  v282 = sub_100216964();
  v283 = [v104 fieldMatch:v281 fieldRegex:v282];

  *(v262 + 80) = v283;
  v284 = sub_100216964();
  v285 = sub_100216964();
  v286 = [v104 fieldMatch:v284 fieldRegex:v285];

  *(v262 + 88) = v286;
  v287 = sub_100216964();
  v288 = sub_100216964();
  v289 = [v104 fieldMatch:v287 fieldRegex:v288];

  *(v262 + 96) = v289;
  v290 = sub_100216964();
  v291 = sub_100216964();
  v292 = [v104 fieldMatch:v290 fieldRegex:v291];

  *(v262 + 104) = v292;
  v293 = sub_100216964();
  v294 = sub_100216964();
  v295 = [v104 fieldMatch:v293 fieldRegex:v294];

  *(v262 + 112) = v295;
  v296 = sub_100216964();
  v297 = sub_100216964();
  v298 = [v104 fieldMatch:v296 fieldRegex:v297];

  *(v262 + 120) = v298;
  v299 = sub_100216964();
  v300 = sub_100216964();
  v301 = [v104 fieldMatch:v299 fieldRegex:v300];

  *(v262 + 128) = v301;
  v302 = sub_100216964();
  v303 = sub_100216964();
  v304 = [v104 fieldMatch:v302 fieldRegex:v303];

  *(v262 + 136) = v304;
  v305 = sub_100216B14().super.isa;
  v262, v306, v307, v308, v309, v310, v311, v312, v431, v445, v459, v473, v487, v500, v513, v526, v539, v552;
  v313 = [v104 orMatch:v305];

  v314 = sub_100216964();
  v315 = [v226 TPPBPolicyKeyViewMappingWithView:v314 matchingRule:v313];

  *&v562[4]._TtCs12_SwiftObject_opaque[8] = v315;
  v316 = swift_allocObject();
  *(v316 + 16) = xmmword_10021D8D0;
  v317 = sub_100216964();
  v318 = sub_100216964();
  v319 = [v104 fieldMatch:v317 fieldRegex:v318];

  *(v316 + 32) = v319;
  v320 = sub_100216964();
  v321 = sub_100216964();
  v322 = [v104 fieldMatch:v320 fieldRegex:v321];

  *(v316 + 40) = v322;
  v323 = sub_100216B14().super.isa;
  v316, v324, v325, v326, v327, v328, v329, v330, v432, v446, v460, v474, v488, v501, v514, v527, v540, v553;
  v331 = [v104 orMatch:v323];

  v332 = sub_100216964();
  v333 = [v226 TPPBPolicyKeyViewMappingWithView:v332 matchingRule:v331];

  *v562[4].endpoint = v333;
  v334 = swift_allocObject();
  *(v334 + 16) = v541;
  v335 = sub_100216964();
  v336 = sub_100216964();
  v337 = [v104 fieldMatch:v335 fieldRegex:v336];

  *(v334 + 32) = v337;
  v338 = sub_100216964();
  v339 = sub_100216964();
  v340 = [v104 fieldMatch:v338 fieldRegex:v339];

  *(v334 + 40) = v340;
  v341 = sub_100216964();
  v342 = sub_100216964();
  v343 = [v104 fieldMatch:v341 fieldRegex:v342];

  *(v334 + 48) = v343;
  v344 = sub_100216964();
  v345 = sub_100216964();
  v346 = [v104 fieldMatch:v344 fieldRegex:v345];

  *(v334 + 56) = v346;
  v347 = sub_100216964();
  v348 = sub_100216964();
  v349 = [v104 fieldMatch:v347 fieldRegex:v348];

  *(v334 + 64) = v349;
  v350 = sub_100216B14().super.isa;
  v334, v351, v352, v353, v354, v355, v356, v357, v433, v447, v461, v475, v489, v502, v515, v528, v541, *(&v541 + 1);
  v358 = [v104 orMatch:v350];

  v359 = sub_100216964();
  v360 = [v226 TPPBPolicyKeyViewMappingWithView:v359 matchingRule:v358];

  *v562[4].containerMap = v360;
  v361 = swift_allocObject();
  *(v361 + 16) = xmmword_10021D880;
  v362 = sub_100216964();
  v363 = sub_100216964();
  v364 = [v104 fieldMatch:v362 fieldRegex:v363];

  *(v361 + 32) = v364;
  v365 = sub_100216964();
  v366 = sub_100216964();
  v367 = [v104 fieldMatch:v365 fieldRegex:v366];

  *(v361 + 40) = v367;
  v368 = sub_100216964();
  v369 = sub_100216964();
  v370 = [v104 fieldMatch:v368 fieldRegex:v369];

  *(v361 + 48) = v370;
  v371 = sub_100216B14().super.isa;
  v361, v372, v373, v374, v375, v376, v377, v378, v434, v448, v462, v476, v490, v503, v516, v529, v542, v554;
  v379 = [v104 orMatch:v371];

  v380 = sub_100216964();
  v381 = [v226 TPPBPolicyKeyViewMappingWithView:v380 matchingRule:v379];

  *v562[5]._TtCs12_SwiftObject_opaque = v381;
  v382 = [v104 trueMatch];
  v383 = sub_100216964();
  v384 = [v226 TPPBPolicyKeyViewMappingWithView:v383 matchingRule:v382];

  *&v562[5]._TtCs12_SwiftObject_opaque[8] = v384;
  v385 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v386 = sub_100216B14().super.isa;
  v561, v387, v388, v389, v390, v391, v392, v393, v435, v449, v463, v477, v491, v504, v517, v530, v543, v555;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v394 = sub_100216B14().super.isa;
  v560, v395, v396, v397, v398, v399, v400, v401, v436, v450, v464, v478, v492, v505, v518, v531, v544, v556;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v402 = sub_100216B14().super.isa;
  v559, v403, v404, v405, v406, v407, v408, v409, v437, v451, v465, v479, v493, v506, v519, v532, v545, v557;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v410 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v411 = sub_100216B14().super.isa;
  v562, v412, v413, v414, v415, v416, v417, v418, v438, v452, v466, v480, v494, v507, v520, v533, v546, v558;
  v419 = sub_100216B14().super.isa;
  v420 = sub_100216B14().super.isa;
  v421 = sub_100216B14().super.isa;
  v422 = sub_100216B14().super.isa;
  v423 = [v385 initWithVersion:13 modelToCategory:v386 categoriesByView:v394 introducersByCategory:v402 redactions:v410 keyViewMapping:v411 userControllableViewList:v419 piggybackViews:v420 priorityViews:v421 inheritedExcludedViews:v422 hashAlgo:1];

  return v423;
}

id sub_1000355E4()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  *v1[2].containerMap = v26;
  v576 = v1;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  *v1[3]._TtCs12_SwiftObject_opaque = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D930;
  v31 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v33 = objc_opt_self();
  v34 = [v33 TPPBPolicyCategoriesByViewWithView:v31 categories:isa];

  *(v30 + 32) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v33 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v30 + 40) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v33 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v30 + 48) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v33 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v30 + 56) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v33 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v30 + 64) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v33 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v30 + 72) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v33 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v30 + 80) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v33 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v30 + 88) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v33 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v30 + 96) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v33 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v30 + 104) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v33 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v30 + 112) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v33 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v30 + 120) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v33 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v30 + 128) = v70;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v33 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v30 + 136) = v73;
  v74 = sub_100216964();
  v75 = sub_100216B14().super.isa;
  v76 = [v33 TPPBPolicyCategoriesByViewWithView:v74 categories:v75];

  *(v30 + 144) = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v33 TPPBPolicyCategoriesByViewWithView:v77 categories:v78];

  *(v30 + 152) = v79;
  v562 = v30;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v33 TPPBPolicyCategoriesByViewWithView:v80 categories:v81];

  *(v30 + 160) = v82;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_10021D910;
  v84 = v83;
  v85 = sub_100216964();
  v86 = sub_100216B14().super.isa;
  v87 = objc_opt_self();
  v88 = [v87 TPPBPolicyIntroducersByCategoryWithCategory:v85 introducers:v86];

  v84[4] = v88;
  v89 = sub_100216964();
  v90 = sub_100216B14().super.isa;
  v91 = [v87 TPPBPolicyIntroducersByCategoryWithCategory:v89 introducers:v90];

  v84[5] = v91;
  v92 = sub_100216964();
  v93 = sub_100216B14().super.isa;
  v94 = [v87 TPPBPolicyIntroducersByCategoryWithCategory:v92 introducers:v93];

  v84[6] = v94;
  v95 = sub_100216964();
  v96 = sub_100216B14().super.isa;
  v97 = [v87 TPPBPolicyIntroducersByCategoryWithCategory:v95 introducers:v96];

  v84[7] = v97;
  v98 = sub_100216964();
  v99 = sub_100216B14().super.isa;
  v100 = [v87 TPPBPolicyIntroducersByCategoryWithCategory:v98 introducers:v99];

  v84[8] = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_10021D940;
  v102 = v101;
  v103 = objc_opt_self();
  v104 = sub_100216964();
  v105 = sub_100216964();
  v106 = [v103 fieldMatch:v104 fieldRegex:v105];

  v107 = sub_100216964();
  v108 = objc_opt_self();
  v109 = [v108 TPPBPolicyKeyViewMappingWithView:v107 matchingRule:v106];

  v102[4] = v109;
  v110 = sub_100216964();
  v111 = sub_100216964();
  v112 = [v103 fieldMatch:v110 fieldRegex:v111];

  v113 = sub_100216964();
  v114 = [v108 TPPBPolicyKeyViewMappingWithView:v113 matchingRule:v112];

  v102[5] = v114;
  v115 = sub_100216964();
  v116 = sub_100216964();
  v117 = [v103 fieldMatch:v115 fieldRegex:v116];

  v118 = sub_100216964();
  v119 = [v108 TPPBPolicyKeyViewMappingWithView:v118 matchingRule:v117];

  v102[6] = v119;
  v120 = sub_100216964();
  v121 = sub_100216964();
  v122 = [v103 fieldMatch:v120 fieldRegex:v121];

  v123 = sub_100216964();
  v124 = [v108 TPPBPolicyKeyViewMappingWithView:v123 matchingRule:v122];

  v102[7] = v124;
  v125 = sub_100216964();
  v126 = sub_100216964();
  v127 = [v103 fieldMatch:v125 fieldRegex:v126];

  v128 = sub_100216964();
  v129 = [v108 TPPBPolicyKeyViewMappingWithView:v128 matchingRule:v127];

  v102[8] = v129;
  v130 = sub_100216964();
  v131 = sub_100216964();
  v132 = [v103 fieldMatch:v130 fieldRegex:v131];

  v133 = sub_100216964();
  v134 = [v108 TPPBPolicyKeyViewMappingWithView:v133 matchingRule:v132];

  v102[9] = v134;
  v135 = sub_100216964();
  v136 = sub_100216964();
  v137 = [v103 fieldMatch:v135 fieldRegex:v136];

  v138 = sub_100216964();
  v139 = [v108 TPPBPolicyKeyViewMappingWithView:v138 matchingRule:v137];

  v102[10] = v139;
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_10021D880;
  v141 = sub_100216964();
  v142 = sub_100216964();
  v143 = [v103 fieldMatch:v141 fieldRegex:v142];

  *(v140 + 32) = v143;
  v144 = sub_100216964();
  v145 = sub_100216964();
  v146 = [v103 fieldMatch:v144 fieldRegex:v145];

  *(v140 + 40) = v146;
  v147 = sub_100216964();
  v148 = sub_100216964();
  v149 = [v103 fieldMatch:v147 fieldRegex:v148];

  *(v140 + 48) = v149;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v150 = sub_100216B14().super.isa;
  v140, v151, v152, v153, v154, v155, v156, v157, v440, v454, v468, v482, v496, v510, "ProtectedCloudStorage", "Security-61901.40.77\n", v84, v562;
  v158 = [v103 orMatch:v150];

  v159 = sub_100216964();
  v160 = [v108 TPPBPolicyKeyViewMappingWithView:v159 matchingRule:v158];

  v102[11] = v160;
  v161 = sub_100216964();
  v162 = sub_100216964();
  v163 = [v103 fieldMatch:v161 fieldRegex:v162];

  v164 = sub_100216964();
  v165 = [v108 TPPBPolicyKeyViewMappingWithView:v164 matchingRule:v163];

  v102[12] = v165;
  v166 = sub_100216964();
  v167 = sub_100216964();
  v168 = [v103 fieldMatch:v166 fieldRegex:v167];

  v169 = sub_100216964();
  v170 = [v108 TPPBPolicyKeyViewMappingWithView:v169 matchingRule:v168];

  v102[13] = v170;
  v171 = sub_100216964();
  v172 = sub_100216964();
  v173 = [v103 fieldMatch:v171 fieldRegex:v172];

  v174 = sub_100216964();
  v175 = [v108 TPPBPolicyKeyViewMappingWithView:v174 matchingRule:v173];

  v102[14] = v175;
  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_10021D8B0;
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_10021D8D0;
  v178 = sub_100216964();
  v179 = sub_100216964();
  v180 = [v103 fieldMatch:v178 fieldRegex:v179];

  *(v177 + 32) = v180;
  v181 = sub_100216964();
  v182 = sub_100216964();
  v183 = [v103 fieldMatch:v181 fieldRegex:v182];

  *(v177 + 40) = v183;
  v184 = sub_100216B14().super.isa;
  v177, v185, v186, v187, v188, v189, v190, v191, v441, v455, v469, v483, v497, v102, v523, v536, v549, v563;
  v192 = [v103 andMatch:v184];

  *(v176 + 32) = v192;
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_10021D8D0;
  v194 = sub_100216964();
  v195 = sub_100216964();
  v196 = [v103 fieldMatch:v194 fieldRegex:v195];

  *(v193 + 32) = v196;
  v197 = sub_100216964();
  v198 = sub_100216964();
  v199 = [v103 fieldMatch:v197 fieldRegex:v198];

  *(v193 + 40) = v199;
  v200 = sub_100216B14().super.isa;
  v193, v201, v202, v203, v204, v205, v206, v207, v442, v456, v470, v484, v498, v511, v524, v537, v550, v564;
  v208 = [v103 andMatch:v200];

  *(v176 + 40) = v208;
  v209 = sub_100216964();
  v210 = sub_100216964();
  v211 = [v103 fieldMatch:v209 fieldRegex:v210];

  *(v176 + 48) = v211;
  v212 = sub_100216964();
  v213 = sub_100216964();
  v214 = [v103 fieldMatch:v212 fieldRegex:v213];

  *(v176 + 56) = v214;
  v215 = sub_100216B14().super.isa;
  v176, v216, v217, v218, v219, v220, v221, v222, v443, v457, v471, v485, v499, v512, v525, v538, v551, v565;
  v223 = [v103 orMatch:v215];

  v224 = sub_100216964();
  v225 = [v108 TPPBPolicyKeyViewMappingWithView:v224 matchingRule:v223];

  v226 = v513;
  *(v513 + 120) = v225;
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_10021D8D0;
  v228 = sub_100216964();
  v229 = sub_100216964();
  v230 = [v103 fieldMatch:v228 fieldRegex:v229];

  *(v227 + 32) = v230;
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_10021D880;
  v232 = sub_100216964();
  v233 = sub_100216964();
  v234 = [v103 fieldMatch:v232 fieldRegex:v233];

  *(v231 + 32) = v234;
  v235 = sub_100216964();
  v236 = sub_100216964();
  v237 = [v103 fieldMatch:v235 fieldRegex:v236];

  *(v231 + 40) = v237;
  v238 = sub_100216964();
  v239 = sub_100216964();
  v240 = [v103 fieldMatch:v238 fieldRegex:v239];

  *(v231 + 48) = v240;
  v241 = sub_100216B14().super.isa;
  v231, v242, v243, v244, v245, v246, v247, v248, v444, v458, v472, v486, v500, v513, v526, v539, v552, v566;
  v249 = [v103 andMatch:v241];

  *(v227 + 40) = v249;
  v250 = sub_100216B14().super.isa;
  v227, v251, v252, v253, v254, v255, v256, v257, v445, v459, v473, v487, v501, v514, v527, v540, v553, v567;
  v258 = [v103 orMatch:v250];

  v259 = sub_100216964();
  v260 = [v108 TPPBPolicyKeyViewMappingWithView:v259 matchingRule:v258];

  *(v226 + 128) = v260;
  v261 = v226;
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_10021D8F0;
  v263 = sub_100216964();
  v264 = sub_100216964();
  v265 = [v103 fieldMatch:v263 fieldRegex:v264];

  *(v262 + 32) = v265;
  v266 = sub_100216964();
  v267 = sub_100216964();
  v268 = [v103 fieldMatch:v266 fieldRegex:v267];

  *(v262 + 40) = v268;
  v269 = sub_100216964();
  v270 = sub_100216964();
  v271 = [v103 fieldMatch:v269 fieldRegex:v270];

  *(v262 + 48) = v271;
  v272 = sub_100216964();
  v273 = sub_100216964();
  v274 = [v103 fieldMatch:v272 fieldRegex:v273];

  *(v262 + 56) = v274;
  v275 = sub_100216964();
  v276 = sub_100216964();
  v277 = [v103 fieldMatch:v275 fieldRegex:v276];

  *(v262 + 64) = v277;
  v278 = sub_100216964();
  v279 = sub_100216964();
  v280 = [v103 fieldMatch:v278 fieldRegex:v279];

  *(v262 + 72) = v280;
  v281 = sub_100216964();
  v282 = sub_100216964();
  v283 = [v103 fieldMatch:v281 fieldRegex:v282];

  *(v262 + 80) = v283;
  v284 = sub_100216964();
  v285 = sub_100216964();
  v286 = [v103 fieldMatch:v284 fieldRegex:v285];

  *(v262 + 88) = v286;
  v287 = sub_100216964();
  v288 = sub_100216964();
  v289 = [v103 fieldMatch:v287 fieldRegex:v288];

  *(v262 + 96) = v289;
  v290 = sub_100216964();
  v291 = sub_100216964();
  v292 = [v103 fieldMatch:v290 fieldRegex:v291];

  *(v262 + 104) = v292;
  v293 = sub_100216964();
  v294 = sub_100216964();
  v295 = [v103 fieldMatch:v293 fieldRegex:v294];

  *(v262 + 112) = v295;
  v296 = sub_100216964();
  v297 = sub_100216964();
  v298 = [v103 fieldMatch:v296 fieldRegex:v297];

  *(v262 + 120) = v298;
  v299 = sub_100216964();
  v300 = sub_100216964();
  v301 = [v103 fieldMatch:v299 fieldRegex:v300];

  *(v262 + 128) = v301;
  v302 = sub_100216964();
  v303 = sub_100216964();
  v304 = [v103 fieldMatch:v302 fieldRegex:v303];

  *(v262 + 136) = v304;
  v305 = sub_100216B14().super.isa;
  v262, v306, v307, v308, v309, v310, v311, v312, v446, v460, v474, v488, v502, v515, v528, v541, v554, v568;
  v313 = [v103 orMatch:v305];

  v314 = sub_100216964();
  v315 = [v108 TPPBPolicyKeyViewMappingWithView:v314 matchingRule:v313];

  *(v261 + 136) = v315;
  v316 = swift_allocObject();
  *(v316 + 16) = xmmword_10021D8D0;
  v317 = sub_100216964();
  v318 = sub_100216964();
  v319 = [v103 fieldMatch:v317 fieldRegex:v318];

  *(v316 + 32) = v319;
  v320 = sub_100216964();
  v321 = sub_100216964();
  v322 = [v103 fieldMatch:v320 fieldRegex:v321];

  *(v316 + 40) = v322;
  v323 = sub_100216B14().super.isa;
  v316, v324, v325, v326, v327, v328, v329, v330, v447, v461, v475, v489, v503, v516, v529, v542, v555, v569;
  v331 = [v103 orMatch:v323];

  v332 = sub_100216964();
  v333 = [v108 TPPBPolicyKeyViewMappingWithView:v332 matchingRule:v331];

  *(v261 + 144) = v333;
  v334 = swift_allocObject();
  *(v334 + 16) = xmmword_10021D950;
  v335 = sub_100216964();
  v336 = sub_100216964();
  v337 = [v103 fieldMatch:v335 fieldRegex:v336];

  *(v334 + 32) = v337;
  v338 = sub_100216964();
  v339 = sub_100216964();
  v340 = [v103 fieldMatch:v338 fieldRegex:v339];

  *(v334 + 40) = v340;
  v341 = sub_100216964();
  v342 = sub_100216964();
  v343 = [v103 fieldMatch:v341 fieldRegex:v342];

  *(v334 + 48) = v343;
  v344 = sub_100216964();
  v345 = sub_100216964();
  v346 = [v103 fieldMatch:v344 fieldRegex:v345];

  *(v334 + 56) = v346;
  v347 = sub_100216964();
  v348 = sub_100216964();
  v349 = [v103 fieldMatch:v347 fieldRegex:v348];

  *(v334 + 64) = v349;
  v350 = sub_100216964();
  v351 = sub_100216964();
  v352 = [v103 fieldMatch:v350 fieldRegex:v351];

  *(v334 + 72) = v352;
  v353 = sub_100216964();
  v354 = sub_100216964();
  v355 = [v103 fieldMatch:v353 fieldRegex:v354];

  *(v334 + 80) = v355;
  v356 = sub_100216964();
  v357 = sub_100216964();
  v358 = [v103 fieldMatch:v356 fieldRegex:v357];

  *(v334 + 88) = v358;
  v359 = sub_100216964();
  v360 = sub_100216964();
  v361 = [v103 fieldMatch:v359 fieldRegex:v360];

  *(v334 + 96) = v361;
  v362 = sub_100216964();
  v363 = sub_100216964();
  v364 = [v103 fieldMatch:v362 fieldRegex:v363];

  *(v334 + 104) = v364;
  v365 = sub_100216B14().super.isa;
  v334, v366, v367, v368, v369, v370, v371, v372, v448, v462, v476, v490, v504, v517, v530, v543, v556, v570;
  v373 = [v103 orMatch:v365];

  v374 = sub_100216964();
  v375 = [v108 TPPBPolicyKeyViewMappingWithView:v374 matchingRule:v373];

  *(v261 + 152) = v375;
  v376 = swift_allocObject();
  *(v376 + 16) = xmmword_10021D880;
  v377 = sub_100216964();
  v378 = sub_100216964();
  v379 = [v103 fieldMatch:v377 fieldRegex:v378];

  *(v376 + 32) = v379;
  v380 = sub_100216964();
  v381 = sub_100216964();
  v382 = [v103 fieldMatch:v380 fieldRegex:v381];

  *(v376 + 40) = v382;
  v383 = sub_100216964();
  v384 = sub_100216964();
  v385 = [v103 fieldMatch:v383 fieldRegex:v384];

  *(v376 + 48) = v385;
  v386 = sub_100216B14().super.isa;
  v376, v387, v388, v389, v390, v391, v392, v393, v449, v463, v477, v491, v505, v518, v531, v544, v557, v571;
  v394 = [v103 orMatch:v386];

  v395 = sub_100216964();
  v396 = [v108 TPPBPolicyKeyViewMappingWithView:v395 matchingRule:v394];

  *(v261 + 160) = v396;
  v397 = [v103 trueMatch];
  v398 = sub_100216964();
  v399 = [v108 TPPBPolicyKeyViewMappingWithView:v398 matchingRule:v397];

  *(v261 + 168) = v399;
  v400 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v401 = sub_100216B14().super.isa;
  v576, v402, v403, v404, v405, v406, v407, v408, v450, v464, v478, v492, v506, v519, v532, v545, v558, v572;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v409 = sub_100216B14().super.isa;
  v573, v410, v411, v412, v413, v414, v415, v416, v451, v465, v479, v493, v507, v520, v533, v546, v559, v573;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v417 = sub_100216B14().super.isa;
  v560, v418, v419, v420, v421, v422, v423, v424, v452, v466, v480, v494, v508, v521, v534, v547, v560, v574;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v425 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v426 = sub_100216B14().super.isa;
  v261, v427, v428, v429, v430, v431, v432, v433, v453, v467, v481, v495, v509, v522, v535, v548, v561, v575;
  v434 = sub_100216B14().super.isa;
  v435 = sub_100216B14().super.isa;
  v436 = sub_100216B14().super.isa;
  v437 = sub_100216B14().super.isa;
  v438 = [v400 initWithVersion:15 modelToCategory:v401 categoriesByView:v409 introducersByCategory:v417 redactions:v425 keyViewMapping:v426 userControllableViewList:v434 piggybackViews:v435 priorityViews:v436 inheritedExcludedViews:v437 hashAlgo:1];

  return v438;
}

id sub_1000380E4()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  *v1[1]._TtCs12_SwiftObject_opaque = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  *&v1[1]._TtCs12_SwiftObject_opaque[8] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  *v1[1].endpoint = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  *v1[1].containerMap = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  *v1[2]._TtCs12_SwiftObject_opaque = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  *&v1[2]._TtCs12_SwiftObject_opaque[8] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  *v1[2].endpoint = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  *v1[2].containerMap = v26;
  v569 = v1;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  *v1[3]._TtCs12_SwiftObject_opaque = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D940;
  v31 = v30;
  v32 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyCategoriesByViewWithView:v32 categories:isa];

  *v31[1]._TtCs12_SwiftObject_opaque = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  *&v31[1]._TtCs12_SwiftObject_opaque[8] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  *v31[1].endpoint = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v34 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  *v31[1].containerMap = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v34 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  *v31[2]._TtCs12_SwiftObject_opaque = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v34 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  *&v31[2]._TtCs12_SwiftObject_opaque[8] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v34 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  *v31[2].endpoint = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v34 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  *v31[2].containerMap = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v34 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  *v31[3]._TtCs12_SwiftObject_opaque = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v34 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  *&v31[3]._TtCs12_SwiftObject_opaque[8] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v34 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  *v31[3].endpoint = v65;
  v66 = sub_100216964();
  v67 = sub_100216B14().super.isa;
  v68 = [v34 TPPBPolicyCategoriesByViewWithView:v66 categories:v67];

  *v31[3].containerMap = v68;
  v69 = sub_100216964();
  v70 = sub_100216B14().super.isa;
  v71 = [v34 TPPBPolicyCategoriesByViewWithView:v69 categories:v70];

  *v31[4]._TtCs12_SwiftObject_opaque = v71;
  v72 = sub_100216964();
  v73 = sub_100216B14().super.isa;
  v74 = [v34 TPPBPolicyCategoriesByViewWithView:v72 categories:v73];

  *&v31[4]._TtCs12_SwiftObject_opaque[8] = v74;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = [v34 TPPBPolicyCategoriesByViewWithView:v75 categories:v76];

  *v31[4].endpoint = v77;
  v78 = sub_100216964();
  v79 = sub_100216B14().super.isa;
  v80 = [v34 TPPBPolicyCategoriesByViewWithView:v78 categories:v79];

  *v31[4].containerMap = v80;
  v81 = sub_100216964();
  v82 = sub_100216B14().super.isa;
  v83 = [v34 TPPBPolicyCategoriesByViewWithView:v81 categories:v82];

  *v31[5]._TtCs12_SwiftObject_opaque = v83;
  v568 = v31;
  v84 = sub_100216964();
  v85 = sub_100216B14().super.isa;
  v86 = [v34 TPPBPolicyCategoriesByViewWithView:v84 categories:v85];

  *&v31[5]._TtCs12_SwiftObject_opaque[8] = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_10021D910;
  v88 = v87;
  v89 = sub_100216964();
  v90 = sub_100216B14().super.isa;
  v91 = objc_opt_self();
  v92 = [v91 TPPBPolicyIntroducersByCategoryWithCategory:v89 introducers:v90];

  *v88[1]._TtCs12_SwiftObject_opaque = v92;
  v93 = sub_100216964();
  v94 = sub_100216B14().super.isa;
  v95 = [v91 TPPBPolicyIntroducersByCategoryWithCategory:v93 introducers:v94];

  *&v88[1]._TtCs12_SwiftObject_opaque[8] = v95;
  v96 = sub_100216964();
  v97 = sub_100216B14().super.isa;
  v98 = [v91 TPPBPolicyIntroducersByCategoryWithCategory:v96 introducers:v97];

  *v88[1].endpoint = v98;
  v99 = sub_100216964();
  v100 = sub_100216B14().super.isa;
  v101 = [v91 TPPBPolicyIntroducersByCategoryWithCategory:v99 introducers:v100];

  v567 = v88;
  *v88[1].containerMap = v101;
  v102 = sub_100216964();
  v103 = sub_100216B14().super.isa;
  v104 = [v91 TPPBPolicyIntroducersByCategoryWithCategory:v102 introducers:v103];

  *v88[2]._TtCs12_SwiftObject_opaque = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_10021D960;
  v106 = v105;
  v107 = objc_opt_self();
  v108 = sub_100216964();
  v109 = sub_100216964();
  v110 = [v107 fieldMatch:v108 fieldRegex:v109];

  v111 = sub_100216964();
  v112 = objc_opt_self();
  v113 = [v112 TPPBPolicyKeyViewMappingWithView:v111 matchingRule:v110];

  *v106[1]._TtCs12_SwiftObject_opaque = v113;
  v114 = sub_100216964();
  v115 = sub_100216964();
  v116 = [v107 fieldMatch:v114 fieldRegex:v115];

  v117 = sub_100216964();
  v118 = [v112 TPPBPolicyKeyViewMappingWithView:v117 matchingRule:v116];

  *&v106[1]._TtCs12_SwiftObject_opaque[8] = v118;
  v119 = sub_100216964();
  v120 = sub_100216964();
  v121 = [v107 fieldMatch:v119 fieldRegex:v120];

  v122 = sub_100216964();
  v123 = [v112 TPPBPolicyKeyViewMappingWithView:v122 matchingRule:v121];

  *v106[1].endpoint = v123;
  v124 = sub_100216964();
  v125 = sub_100216964();
  v126 = [v107 fieldMatch:v124 fieldRegex:v125];

  v127 = sub_100216964();
  v128 = [v112 TPPBPolicyKeyViewMappingWithView:v127 matchingRule:v126];

  *v106[1].containerMap = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v107 fieldMatch:v129 fieldRegex:v130];

  v132 = sub_100216964();
  v133 = [v112 TPPBPolicyKeyViewMappingWithView:v132 matchingRule:v131];

  *v106[2]._TtCs12_SwiftObject_opaque = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v107 fieldMatch:v134 fieldRegex:v135];

  v137 = sub_100216964();
  v138 = [v112 TPPBPolicyKeyViewMappingWithView:v137 matchingRule:v136];

  *&v106[2]._TtCs12_SwiftObject_opaque[8] = v138;
  v139 = sub_100216964();
  v140 = sub_100216964();
  v141 = [v107 fieldMatch:v139 fieldRegex:v140];

  v142 = sub_100216964();
  v143 = [v112 TPPBPolicyKeyViewMappingWithView:v142 matchingRule:v141];

  *v106[2].endpoint = v143;
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_10021D880;
  v145 = sub_100216964();
  v146 = sub_100216964();
  v147 = [v107 fieldMatch:v145 fieldRegex:v146];

  *(v144 + 32) = v147;
  v148 = sub_100216964();
  v149 = sub_100216964();
  v150 = [v107 fieldMatch:v148 fieldRegex:v149];

  *(v144 + 40) = v150;
  v151 = sub_100216964();
  v152 = sub_100216964();
  v153 = [v107 fieldMatch:v151 fieldRegex:v152];

  *(v144 + 48) = v153;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v154 = sub_100216B14().super.isa;
  v144, v155, v156, v157, v158, v159, v160, v161, v433, v447, v461, v475, v489, v503, "ProtectedCloudStorage", "Security-61901.40.77\n", 5, 0xB;
  v162 = [v107 orMatch:v154];

  v163 = sub_100216964();
  v164 = [v112 TPPBPolicyKeyViewMappingWithView:v163 matchingRule:v162];

  *v106[2].containerMap = v164;
  v165 = sub_100216964();
  v166 = sub_100216964();
  v167 = [v107 fieldMatch:v165 fieldRegex:v166];

  v168 = sub_100216964();
  v169 = [v112 TPPBPolicyKeyViewMappingWithView:v168 matchingRule:v167];

  *v106[3]._TtCs12_SwiftObject_opaque = v169;
  v170 = sub_100216964();
  v171 = sub_100216964();
  v172 = [v107 fieldMatch:v170 fieldRegex:v171];

  v173 = sub_100216964();
  v174 = [v112 TPPBPolicyKeyViewMappingWithView:v173 matchingRule:v172];

  *&v106[3]._TtCs12_SwiftObject_opaque[8] = v174;
  v175 = sub_100216964();
  v176 = sub_100216964();
  v177 = [v107 fieldMatch:v175 fieldRegex:v176];

  v178 = sub_100216964();
  v179 = [v112 TPPBPolicyKeyViewMappingWithView:v178 matchingRule:v177];

  *v106[3].endpoint = v179;
  v570 = v106;
  v180 = sub_100216964();
  v181 = sub_100216964();
  v182 = [v107 fieldMatch:v180 fieldRegex:v181];

  v183 = sub_100216964();
  v184 = [v112 TPPBPolicyKeyViewMappingWithView:v183 matchingRule:v182];

  *v106[3].containerMap = v184;
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_10021D8B0;
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_10021D8D0;
  v187 = sub_100216964();
  v188 = sub_100216964();
  v189 = [v107 fieldMatch:v187 fieldRegex:v188];

  *(v186 + 32) = v189;
  v190 = sub_100216964();
  v191 = sub_100216964();
  v192 = [v107 fieldMatch:v190 fieldRegex:v191];

  *(v186 + 40) = v192;
  v193 = sub_100216B14().super.isa;
  v186, v194, v195, v196, v197, v198, v199, v200, v434, v448, v462, v476, v490, v112, v516, v529, v542, v555;
  v201 = [v107 andMatch:v193];

  *(v185 + 32) = v201;
  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_10021D8D0;
  v203 = sub_100216964();
  v204 = sub_100216964();
  v205 = [v107 fieldMatch:v203 fieldRegex:v204];

  *(v202 + 32) = v205;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v107 fieldMatch:v206 fieldRegex:v207];

  *(v202 + 40) = v208;
  v209 = sub_100216B14().super.isa;
  v202, v210, v211, v212, v213, v214, v215, v216, v435, v449, v463, v477, v491, v504, v517, v530, v543, v556;
  v217 = [v107 andMatch:v209];

  *(v185 + 40) = v217;
  v218 = sub_100216964();
  v219 = sub_100216964();
  v220 = [v107 fieldMatch:v218 fieldRegex:v219];

  *(v185 + 48) = v220;
  v221 = sub_100216964();
  v222 = sub_100216964();
  v223 = [v107 fieldMatch:v221 fieldRegex:v222];

  *(v185 + 56) = v223;
  v224 = sub_100216B14().super.isa;
  v185, v225, v226, v227, v228, v229, v230, v231, v436, v450, v464, v478, v492, v505, v518, v531, v544, v557;
  v232 = [v107 orMatch:v224];

  v233 = sub_100216964();
  v234 = v506;
  v235 = [v506 TPPBPolicyKeyViewMappingWithView:v233 matchingRule:v232];

  *v570[4]._TtCs12_SwiftObject_opaque = v235;
  v236 = swift_allocObject();
  *(v236 + 16) = xmmword_10021D8D0;
  v237 = sub_100216964();
  v238 = sub_100216964();
  v239 = [v107 fieldMatch:v237 fieldRegex:v238];

  *(v236 + 32) = v239;
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_10021D880;
  v241 = sub_100216964();
  v242 = sub_100216964();
  v243 = [v107 fieldMatch:v241 fieldRegex:v242];

  *(v240 + 32) = v243;
  v244 = sub_100216964();
  v245 = sub_100216964();
  v246 = [v107 fieldMatch:v244 fieldRegex:v245];

  *(v240 + 40) = v246;
  v247 = sub_100216964();
  v248 = sub_100216964();
  v249 = [v107 fieldMatch:v247 fieldRegex:v248];

  *(v240 + 48) = v249;
  v250 = sub_100216B14().super.isa;
  v240, v251, v252, v253, v254, v255, v256, v257, v437, v451, v465, v479, v493, v506, v519, v532, v545, v558;
  v258 = [v107 andMatch:v250];

  *(v236 + 40) = v258;
  v259 = sub_100216B14().super.isa;
  v236, v260, v261, v262, v263, v264, v265, v266, v438, v452, v466, v480, v494, v507, v520, v533, v546, v559;
  v267 = [v107 orMatch:v259];

  v268 = sub_100216964();
  v269 = [v234 TPPBPolicyKeyViewMappingWithView:v268 matchingRule:v267];

  *&v570[4]._TtCs12_SwiftObject_opaque[8] = v269;
  v270 = swift_allocObject();
  *(v270 + 16) = xmmword_10021D8F0;
  v271 = sub_100216964();
  v272 = sub_100216964();
  v273 = [v107 fieldMatch:v271 fieldRegex:v272];

  *(v270 + 32) = v273;
  v274 = sub_100216964();
  v275 = sub_100216964();
  v276 = [v107 fieldMatch:v274 fieldRegex:v275];

  *(v270 + 40) = v276;
  v277 = sub_100216964();
  v278 = sub_100216964();
  v279 = [v107 fieldMatch:v277 fieldRegex:v278];

  *(v270 + 48) = v279;
  v280 = sub_100216964();
  v281 = sub_100216964();
  v282 = [v107 fieldMatch:v280 fieldRegex:v281];

  *(v270 + 56) = v282;
  v283 = sub_100216964();
  v284 = sub_100216964();
  v285 = [v107 fieldMatch:v283 fieldRegex:v284];

  *(v270 + 64) = v285;
  v286 = sub_100216964();
  v287 = sub_100216964();
  v288 = [v107 fieldMatch:v286 fieldRegex:v287];

  *(v270 + 72) = v288;
  v289 = sub_100216964();
  v290 = sub_100216964();
  v291 = [v107 fieldMatch:v289 fieldRegex:v290];

  *(v270 + 80) = v291;
  v292 = sub_100216964();
  v293 = sub_100216964();
  v294 = [v107 fieldMatch:v292 fieldRegex:v293];

  *(v270 + 88) = v294;
  v295 = sub_100216964();
  v296 = sub_100216964();
  v297 = [v107 fieldMatch:v295 fieldRegex:v296];

  *(v270 + 96) = v297;
  v298 = sub_100216964();
  v299 = sub_100216964();
  v300 = [v107 fieldMatch:v298 fieldRegex:v299];

  *(v270 + 104) = v300;
  v301 = sub_100216964();
  v302 = sub_100216964();
  v303 = [v107 fieldMatch:v301 fieldRegex:v302];

  *(v270 + 112) = v303;
  v304 = sub_100216964();
  v305 = sub_100216964();
  v306 = [v107 fieldMatch:v304 fieldRegex:v305];

  *(v270 + 120) = v306;
  v307 = sub_100216964();
  v308 = sub_100216964();
  v309 = [v107 fieldMatch:v307 fieldRegex:v308];

  *(v270 + 128) = v309;
  v310 = sub_100216964();
  v311 = sub_100216964();
  v312 = [v107 fieldMatch:v310 fieldRegex:v311];

  *(v270 + 136) = v312;
  v313 = sub_100216B14().super.isa;
  v270, v314, v315, v316, v317, v318, v319, v320, v439, v453, v467, v481, v495, v508, v521, v534, v547, v560;
  v321 = [v107 orMatch:v313];

  v322 = sub_100216964();
  v323 = [v234 TPPBPolicyKeyViewMappingWithView:v322 matchingRule:v321];

  *v570[4].endpoint = v323;
  v324 = swift_allocObject();
  *(v324 + 16) = xmmword_10021D8D0;
  v325 = sub_100216964();
  v326 = sub_100216964();
  v327 = [v107 fieldMatch:v325 fieldRegex:v326];

  *(v324 + 32) = v327;
  v328 = sub_100216964();
  v329 = sub_100216964();
  v330 = [v107 fieldMatch:v328 fieldRegex:v329];

  *(v324 + 40) = v330;
  v331 = sub_100216B14().super.isa;
  v324, v332, v333, v334, v335, v336, v337, v338, v440, v454, v468, v482, v496, v509, v522, v535, v548, v561;
  v339 = [v107 orMatch:v331];

  v340 = sub_100216964();
  v341 = [v234 TPPBPolicyKeyViewMappingWithView:v340 matchingRule:v339];

  *v570[4].containerMap = v341;
  v342 = swift_allocObject();
  *(v342 + 16) = v549;
  v343 = sub_100216964();
  v344 = sub_100216964();
  v345 = [v107 fieldMatch:v343 fieldRegex:v344];

  *(v342 + 32) = v345;
  v346 = sub_100216964();
  v347 = sub_100216964();
  v348 = [v107 fieldMatch:v346 fieldRegex:v347];

  *(v342 + 40) = v348;
  v349 = sub_100216964();
  v350 = sub_100216964();
  v351 = [v107 fieldMatch:v349 fieldRegex:v350];

  *(v342 + 48) = v351;
  v352 = sub_100216964();
  v353 = sub_100216964();
  v354 = [v107 fieldMatch:v352 fieldRegex:v353];

  *(v342 + 56) = v354;
  v355 = sub_100216964();
  v356 = sub_100216964();
  v357 = [v107 fieldMatch:v355 fieldRegex:v356];

  *(v342 + 64) = v357;
  v358 = sub_100216B14().super.isa;
  v342, v359, v360, v361, v362, v363, v364, v365, v441, v455, v469, v483, v497, v510, v523, v536, v549, *(&v549 + 1);
  v366 = [v107 orMatch:v358];

  v367 = sub_100216964();
  v368 = [v234 TPPBPolicyKeyViewMappingWithView:v367 matchingRule:v366];

  *v570[5]._TtCs12_SwiftObject_opaque = v368;
  v369 = swift_allocObject();
  *(v369 + 16) = xmmword_10021D880;
  v370 = sub_100216964();
  v371 = sub_100216964();
  v372 = [v107 fieldMatch:v370 fieldRegex:v371];

  *(v369 + 32) = v372;
  v373 = sub_100216964();
  v374 = sub_100216964();
  v375 = [v107 fieldMatch:v373 fieldRegex:v374];

  *(v369 + 40) = v375;
  v376 = sub_100216964();
  v377 = sub_100216964();
  v378 = [v107 fieldMatch:v376 fieldRegex:v377];

  *(v369 + 48) = v378;
  v379 = sub_100216B14().super.isa;
  v369, v380, v381, v382, v383, v384, v385, v386, v442, v456, v470, v484, v498, v511, v524, v537, v550, v562;
  v387 = [v107 orMatch:v379];

  v388 = sub_100216964();
  v389 = [v234 TPPBPolicyKeyViewMappingWithView:v388 matchingRule:v387];

  *&v570[5]._TtCs12_SwiftObject_opaque[8] = v389;
  v390 = [v107 trueMatch];
  v391 = sub_100216964();
  v392 = [v234 TPPBPolicyKeyViewMappingWithView:v391 matchingRule:v390];

  *v570[5].endpoint = v392;
  v393 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v394 = sub_100216B14().super.isa;
  v569, v395, v396, v397, v398, v399, v400, v401, v443, v457, v471, v485, v499, v512, v525, v538, v551, v563;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v402 = sub_100216B14().super.isa;
  v568, v403, v404, v405, v406, v407, v408, v409, v444, v458, v472, v486, v500, v513, v526, v539, v552, v564;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v410 = sub_100216B14().super.isa;
  v567, v411, v412, v413, v414, v415, v416, v417, v445, v459, v473, v487, v501, v514, v527, v540, v553, v565;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v418 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v419 = sub_100216B14().super.isa;
  v570, v420, v421, v422, v423, v424, v425, v426, v446, v460, v474, v488, v502, v515, v528, v541, v554, v566;
  v427 = sub_100216B14().super.isa;
  v428 = sub_100216B14().super.isa;
  v429 = sub_100216B14().super.isa;
  v430 = sub_100216B14().super.isa;
  v431 = [v393 initWithVersion:16 modelToCategory:v394 categoriesByView:v402 introducersByCategory:v410 redactions:v418 keyViewMapping:v419 userControllableViewList:v427 piggybackViews:v428 priorityViews:v429 inheritedExcludedViews:v430 hashAlgo:1];

  return v431;
}

id sub_10003AB2C()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v586 = v1;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D970;
  v31 = v30;
  v32 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyCategoriesByViewWithView:v32 categories:isa];

  v31[4] = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  v31[5] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  v31[6] = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v34 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  v31[7] = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v34 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  v31[8] = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v34 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  v31[9] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v34 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  v31[10] = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v34 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  v31[11] = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v34 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  v31[12] = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v34 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  v31[13] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v34 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  v31[14] = v65;
  v66 = sub_100216964();
  v67 = sub_100216B14().super.isa;
  v68 = [v34 TPPBPolicyCategoriesByViewWithView:v66 categories:v67];

  v31[15] = v68;
  v69 = sub_100216964();
  v70 = sub_100216B14().super.isa;
  v71 = [v34 TPPBPolicyCategoriesByViewWithView:v69 categories:v70];

  v31[16] = v71;
  v72 = sub_100216964();
  v73 = sub_100216B14().super.isa;
  v74 = [v34 TPPBPolicyCategoriesByViewWithView:v72 categories:v73];

  v31[17] = v74;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = [v34 TPPBPolicyCategoriesByViewWithView:v75 categories:v76];

  v31[18] = v77;
  v78 = sub_100216964();
  v79 = sub_100216B14().super.isa;
  v80 = [v34 TPPBPolicyCategoriesByViewWithView:v78 categories:v79];

  v31[19] = v80;
  v81 = sub_100216964();
  v82 = sub_100216B14().super.isa;
  v83 = [v34 TPPBPolicyCategoriesByViewWithView:v81 categories:v82];

  v31[20] = v83;
  v84 = sub_100216964();
  v85 = sub_100216B14().super.isa;
  v86 = [v34 TPPBPolicyCategoriesByViewWithView:v84 categories:v85];

  v31[21] = v86;
  v87 = sub_100216964();
  v88 = sub_100216B14().super.isa;
  v89 = [v34 TPPBPolicyCategoriesByViewWithView:v87 categories:v88];

  v31[22] = v89;
  v90 = sub_100216964();
  v91 = sub_100216B14().super.isa;
  v92 = [v34 TPPBPolicyCategoriesByViewWithView:v90 categories:v91];

  v31[23] = v92;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_10021D910;
  v94 = v93;
  v95 = sub_100216964();
  v96 = sub_100216B14().super.isa;
  v97 = objc_opt_self();
  v98 = [v97 TPPBPolicyIntroducersByCategoryWithCategory:v95 introducers:v96];

  v94[4] = v98;
  v99 = sub_100216964();
  v100 = sub_100216B14().super.isa;
  v101 = [v97 TPPBPolicyIntroducersByCategoryWithCategory:v99 introducers:v100];

  v94[5] = v101;
  v102 = sub_100216964();
  v103 = sub_100216B14().super.isa;
  v104 = [v97 TPPBPolicyIntroducersByCategoryWithCategory:v102 introducers:v103];

  v94[6] = v104;
  v105 = sub_100216964();
  v106 = sub_100216B14().super.isa;
  v107 = [v97 TPPBPolicyIntroducersByCategoryWithCategory:v105 introducers:v106];

  v559 = v94;
  v94[7] = v107;
  v108 = sub_100216964();
  v109 = sub_100216B14().super.isa;
  v110 = [v97 TPPBPolicyIntroducersByCategoryWithCategory:v108 introducers:v109];

  v94[8] = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_10021D980;
  v112 = v111;
  v113 = objc_opt_self();
  v114 = sub_100216964();
  v115 = sub_100216964();
  v116 = [v113 fieldMatch:v114 fieldRegex:v115];

  v117 = sub_100216964();
  v118 = objc_opt_self();
  v119 = [v118 TPPBPolicyKeyViewMappingWithView:v117 matchingRule:v116];

  *v112[1]._TtCs12_SwiftObject_opaque = v119;
  v120 = sub_100216964();
  v121 = sub_100216964();
  v122 = [v113 fieldMatch:v120 fieldRegex:v121];

  v123 = sub_100216964();
  v124 = [v118 TPPBPolicyKeyViewMappingWithView:v123 matchingRule:v122];

  *&v112[1]._TtCs12_SwiftObject_opaque[8] = v124;
  v125 = sub_100216964();
  v126 = sub_100216964();
  v127 = [v113 fieldMatch:v125 fieldRegex:v126];

  v128 = sub_100216964();
  v129 = [v118 TPPBPolicyKeyViewMappingWithView:v128 matchingRule:v127];

  *v112[1].endpoint = v129;
  v130 = sub_100216964();
  v131 = sub_100216964();
  v132 = [v113 fieldMatch:v130 fieldRegex:v131];

  v133 = sub_100216964();
  v134 = [v118 TPPBPolicyKeyViewMappingWithView:v133 matchingRule:v132];

  *v112[1].containerMap = v134;
  v135 = sub_100216964();
  v136 = sub_100216964();
  v137 = [v113 fieldMatch:v135 fieldRegex:v136];

  v138 = sub_100216964();
  v139 = [v118 TPPBPolicyKeyViewMappingWithView:v138 matchingRule:v137];

  *v112[2]._TtCs12_SwiftObject_opaque = v139;
  v140 = sub_100216964();
  v141 = sub_100216964();
  v142 = [v113 fieldMatch:v140 fieldRegex:v141];

  v143 = sub_100216964();
  v144 = [v118 TPPBPolicyKeyViewMappingWithView:v143 matchingRule:v142];

  *&v112[2]._TtCs12_SwiftObject_opaque[8] = v144;
  v145 = sub_100216964();
  v146 = sub_100216964();
  v147 = [v113 fieldMatch:v145 fieldRegex:v146];

  v148 = sub_100216964();
  v149 = [v118 TPPBPolicyKeyViewMappingWithView:v148 matchingRule:v147];

  *v112[2].endpoint = v149;
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_10021D880;
  v151 = sub_100216964();
  v152 = sub_100216964();
  v153 = [v113 fieldMatch:v151 fieldRegex:v152];

  *(v150 + 32) = v153;
  v154 = sub_100216964();
  v155 = sub_100216964();
  v156 = [v113 fieldMatch:v154 fieldRegex:v155];

  *(v150 + 40) = v156;
  v157 = sub_100216964();
  v158 = sub_100216964();
  v159 = [v113 fieldMatch:v157 fieldRegex:v158];

  *(v150 + 48) = v159;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v160 = sub_100216B14().super.isa;
  v150, v161, v162, v163, v164, v165, v166, v167, v463, v477, v491, v505, v519, "ProtectedCloudStorage", "Security-61901.40.77\n", v559, v31, v586;
  v168 = [v113 orMatch:v160];

  v169 = sub_100216964();
  v170 = [v118 TPPBPolicyKeyViewMappingWithView:v169 matchingRule:v168];

  *v112[2].containerMap = v170;
  v171 = sub_100216964();
  v172 = sub_100216964();
  v173 = [v113 fieldMatch:v171 fieldRegex:v172];

  v174 = sub_100216964();
  v175 = [v118 TPPBPolicyKeyViewMappingWithView:v174 matchingRule:v173];

  *v112[3]._TtCs12_SwiftObject_opaque = v175;
  v176 = sub_100216964();
  v177 = sub_100216964();
  v178 = [v113 fieldMatch:v176 fieldRegex:v177];

  v179 = sub_100216964();
  v180 = [v118 TPPBPolicyKeyViewMappingWithView:v179 matchingRule:v178];

  *&v112[3]._TtCs12_SwiftObject_opaque[8] = v180;
  v181 = sub_100216964();
  v182 = sub_100216964();
  v183 = [v113 fieldMatch:v181 fieldRegex:v182];

  v184 = sub_100216964();
  v185 = [v118 TPPBPolicyKeyViewMappingWithView:v184 matchingRule:v183];

  *v112[3].endpoint = v185;
  v186 = sub_100216964();
  v187 = sub_100216964();
  v188 = [v113 fieldMatch:v186 fieldRegex:v187];

  v189 = sub_100216964();
  v190 = [v118 TPPBPolicyKeyViewMappingWithView:v189 matchingRule:v188];

  *v112[3].containerMap = v190;
  v191 = sub_100216964();
  v192 = sub_100216964();
  v193 = [v113 fieldMatch:v191 fieldRegex:v192];

  v194 = sub_100216964();
  v195 = [v118 TPPBPolicyKeyViewMappingWithView:v194 matchingRule:v193];

  *v112[4]._TtCs12_SwiftObject_opaque = v195;
  v600 = v112;
  v196 = sub_100216964();
  v197 = sub_100216964();
  v198 = [v113 fieldMatch:v196 fieldRegex:v197];

  v199 = sub_100216964();
  v200 = [v118 TPPBPolicyKeyViewMappingWithView:v199 matchingRule:v198];

  *&v112[4]._TtCs12_SwiftObject_opaque[8] = v200;
  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_10021D8B0;
  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_10021D8D0;
  v203 = sub_100216964();
  v204 = sub_100216964();
  v205 = [v113 fieldMatch:v203 fieldRegex:v204];

  *(v202 + 32) = v205;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v113 fieldMatch:v206 fieldRegex:v207];

  *(v202 + 40) = v208;
  v209 = sub_100216B14().super.isa;
  v202, v210, v211, v212, v213, v214, v215, v216, v464, v478, v492, v506, v520, v533, v546, v560, v573, v587;
  v217 = [v113 andMatch:v209];

  *(v201 + 32) = v217;
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_10021D8D0;
  v219 = sub_100216964();
  v220 = sub_100216964();
  v221 = [v113 fieldMatch:v219 fieldRegex:v220];

  *(v218 + 32) = v221;
  v222 = sub_100216964();
  v223 = sub_100216964();
  v224 = [v113 fieldMatch:v222 fieldRegex:v223];

  *(v218 + 40) = v224;
  v225 = sub_100216B14().super.isa;
  v218, v226, v227, v228, v229, v230, v231, v232, v465, v479, v493, v507, v521, v534, v547, v561, v574, v588;
  v233 = [v113 andMatch:v225];

  *(v201 + 40) = v233;
  v234 = sub_100216964();
  v235 = sub_100216964();
  v236 = [v113 fieldMatch:v234 fieldRegex:v235];

  *(v201 + 48) = v236;
  v237 = sub_100216964();
  v238 = sub_100216964();
  v239 = [v113 fieldMatch:v237 fieldRegex:v238];

  *(v201 + 56) = v239;
  v240 = sub_100216B14().super.isa;
  v201, v241, v242, v243, v244, v245, v246, v247, v466, v480, v494, v508, v522, v535, v548, v562, v575, v589;
  v248 = [v113 orMatch:v240];

  v249 = sub_100216964();
  v250 = [v118 TPPBPolicyKeyViewMappingWithView:v249 matchingRule:v248];

  *v600[4].endpoint = v250;
  v251 = swift_allocObject();
  *(v251 + 16) = xmmword_10021D8D0;
  v252 = sub_100216964();
  v253 = sub_100216964();
  v254 = [v113 fieldMatch:v252 fieldRegex:v253];

  *(v251 + 32) = v254;
  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_10021D880;
  v256 = sub_100216964();
  v257 = sub_100216964();
  v258 = [v113 fieldMatch:v256 fieldRegex:v257];

  *(v255 + 32) = v258;
  v259 = sub_100216964();
  v260 = sub_100216964();
  v261 = [v113 fieldMatch:v259 fieldRegex:v260];

  *(v255 + 40) = v261;
  v262 = sub_100216964();
  v263 = sub_100216964();
  v264 = [v113 fieldMatch:v262 fieldRegex:v263];

  *(v255 + 48) = v264;
  v265 = sub_100216B14().super.isa;
  v255, v266, v267, v268, v269, v270, v271, v272, v467, v481, v495, v509, v523, v536, v549, v563, v576, v590;
  v273 = [v113 andMatch:v265];

  *(v251 + 40) = v273;
  v274 = sub_100216B14().super.isa;
  v251, v275, v276, v277, v278, v279, v280, v281, v468, v482, v496, v510, v524, v537, v550, v564, v577, v591;
  v282 = [v113 orMatch:v274];

  v283 = sub_100216964();
  v284 = [v118 TPPBPolicyKeyViewMappingWithView:v283 matchingRule:v282];

  *v600[4].containerMap = v284;
  v285 = swift_allocObject();
  *(v285 + 16) = xmmword_10021D8F0;
  v286 = sub_100216964();
  v287 = sub_100216964();
  v288 = [v113 fieldMatch:v286 fieldRegex:v287];

  *(v285 + 32) = v288;
  v289 = sub_100216964();
  v290 = sub_100216964();
  v291 = [v113 fieldMatch:v289 fieldRegex:v290];

  *(v285 + 40) = v291;
  v292 = sub_100216964();
  v293 = sub_100216964();
  v294 = [v113 fieldMatch:v292 fieldRegex:v293];

  *(v285 + 48) = v294;
  v295 = sub_100216964();
  v296 = sub_100216964();
  v297 = [v113 fieldMatch:v295 fieldRegex:v296];

  *(v285 + 56) = v297;
  v298 = sub_100216964();
  v299 = sub_100216964();
  v300 = [v113 fieldMatch:v298 fieldRegex:v299];

  *(v285 + 64) = v300;
  v301 = sub_100216964();
  v302 = sub_100216964();
  v303 = [v113 fieldMatch:v301 fieldRegex:v302];

  *(v285 + 72) = v303;
  v304 = sub_100216964();
  v305 = sub_100216964();
  v306 = [v113 fieldMatch:v304 fieldRegex:v305];

  *(v285 + 80) = v306;
  v307 = sub_100216964();
  v308 = sub_100216964();
  v309 = [v113 fieldMatch:v307 fieldRegex:v308];

  *(v285 + 88) = v309;
  v310 = sub_100216964();
  v311 = sub_100216964();
  v312 = [v113 fieldMatch:v310 fieldRegex:v311];

  *(v285 + 96) = v312;
  v313 = sub_100216964();
  v314 = sub_100216964();
  v315 = [v113 fieldMatch:v313 fieldRegex:v314];

  *(v285 + 104) = v315;
  v316 = sub_100216964();
  v317 = sub_100216964();
  v318 = [v113 fieldMatch:v316 fieldRegex:v317];

  *(v285 + 112) = v318;
  v319 = sub_100216964();
  v320 = sub_100216964();
  v321 = [v113 fieldMatch:v319 fieldRegex:v320];

  *(v285 + 120) = v321;
  v322 = sub_100216964();
  v323 = sub_100216964();
  v324 = [v113 fieldMatch:v322 fieldRegex:v323];

  *(v285 + 128) = v324;
  v325 = sub_100216964();
  v326 = sub_100216964();
  v327 = [v113 fieldMatch:v325 fieldRegex:v326];

  *(v285 + 136) = v327;
  v328 = sub_100216B14().super.isa;
  v285, v329, v330, v331, v332, v333, v334, v335, v469, v483, v497, v511, v525, v538, v551, v565, v578, v592;
  v336 = [v113 orMatch:v328];

  v337 = sub_100216964();
  v338 = [v118 TPPBPolicyKeyViewMappingWithView:v337 matchingRule:v336];

  *v600[5]._TtCs12_SwiftObject_opaque = v338;
  v339 = swift_allocObject();
  *(v339 + 16) = xmmword_10021D8D0;
  v340 = sub_100216964();
  v341 = sub_100216964();
  v342 = [v113 fieldMatch:v340 fieldRegex:v341];

  *(v339 + 32) = v342;
  v343 = sub_100216964();
  v344 = sub_100216964();
  v345 = [v113 fieldMatch:v343 fieldRegex:v344];

  *(v339 + 40) = v345;
  v346 = sub_100216B14().super.isa;
  v339, v347, v348, v349, v350, v351, v352, v353, v470, v484, v498, v512, v526, v539, v552, v566, v579, v593;
  v354 = [v113 orMatch:v346];

  v355 = sub_100216964();
  v356 = [v118 TPPBPolicyKeyViewMappingWithView:v355 matchingRule:v354];

  *&v600[5]._TtCs12_SwiftObject_opaque[8] = v356;
  v357 = swift_allocObject();
  *(v357 + 16) = xmmword_10021D950;
  v358 = sub_100216964();
  v359 = sub_100216964();
  v360 = [v113 fieldMatch:v358 fieldRegex:v359];

  *(v357 + 32) = v360;
  v361 = sub_100216964();
  v362 = sub_100216964();
  v363 = [v113 fieldMatch:v361 fieldRegex:v362];

  *(v357 + 40) = v363;
  v364 = sub_100216964();
  v365 = sub_100216964();
  v366 = [v113 fieldMatch:v364 fieldRegex:v365];

  *(v357 + 48) = v366;
  v367 = sub_100216964();
  v368 = sub_100216964();
  v369 = [v113 fieldMatch:v367 fieldRegex:v368];

  *(v357 + 56) = v369;
  v370 = sub_100216964();
  v371 = sub_100216964();
  v372 = [v113 fieldMatch:v370 fieldRegex:v371];

  *(v357 + 64) = v372;
  v373 = sub_100216964();
  v374 = sub_100216964();
  v375 = [v113 fieldMatch:v373 fieldRegex:v374];

  *(v357 + 72) = v375;
  v376 = sub_100216964();
  v377 = sub_100216964();
  v378 = [v113 fieldMatch:v376 fieldRegex:v377];

  *(v357 + 80) = v378;
  v379 = sub_100216964();
  v380 = sub_100216964();
  v381 = [v113 fieldMatch:v379 fieldRegex:v380];

  *(v357 + 88) = v381;
  v382 = sub_100216964();
  v383 = sub_100216964();
  v384 = [v113 fieldMatch:v382 fieldRegex:v383];

  *(v357 + 96) = v384;
  v385 = sub_100216964();
  v386 = sub_100216964();
  v387 = [v113 fieldMatch:v385 fieldRegex:v386];

  *(v357 + 104) = v387;
  v388 = sub_100216B14().super.isa;
  v357, v389, v390, v391, v392, v393, v394, v395, v471, v485, v499, v513, v527, v540, v553, v567, v580, v594;
  v396 = [v113 orMatch:v388];

  v397 = sub_100216964();
  v398 = [v118 TPPBPolicyKeyViewMappingWithView:v397 matchingRule:v396];

  *v600[5].endpoint = v398;
  v399 = swift_allocObject();
  *(v399 + 16) = xmmword_10021D880;
  v400 = sub_100216964();
  v401 = sub_100216964();
  v402 = [v113 fieldMatch:v400 fieldRegex:v401];

  *(v399 + 32) = v402;
  v403 = sub_100216964();
  v404 = sub_100216964();
  v405 = [v113 fieldMatch:v403 fieldRegex:v404];

  *(v399 + 40) = v405;
  v406 = sub_100216964();
  v407 = sub_100216964();
  v408 = [v113 fieldMatch:v406 fieldRegex:v407];

  *(v399 + 48) = v408;
  v409 = sub_100216B14().super.isa;
  v399, v410, v411, v412, v413, v414, v415, v416, v472, v486, v500, v514, v528, v541, v554, v568, v581, v595;
  v417 = [v113 orMatch:v409];

  v418 = sub_100216964();
  v419 = [v118 TPPBPolicyKeyViewMappingWithView:v418 matchingRule:v417];

  *v600[5].containerMap = v419;
  v420 = [v113 trueMatch];
  v421 = sub_100216964();
  v422 = [v118 TPPBPolicyKeyViewMappingWithView:v421 matchingRule:v420];

  *v600[6]._TtCs12_SwiftObject_opaque = v422;
  v423 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v424 = sub_100216B14().super.isa;
  v596, v425, v426, v427, v428, v429, v430, v431, v473, v487, v501, v515, v529, v542, v555, v569, v582, v596;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v432 = sub_100216B14().super.isa;
  v583, v433, v434, v435, v436, v437, v438, v439, v474, v488, v502, v516, v530, v543, v556, v570, v583, v597;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v440 = sub_100216B14().super.isa;
  v571, v441, v442, v443, v444, v445, v446, v447, v475, v489, v503, v517, v531, v544, v557, v571, v584, v598;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v448 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v449 = sub_100216B14().super.isa;
  v600, v450, v451, v452, v453, v454, v455, v456, v476, v490, v504, v518, v532, v545, v558, v572, v585, v599;
  v457 = sub_100216B14().super.isa;
  v458 = sub_100216B14().super.isa;
  v459 = sub_100216B14().super.isa;
  v460 = sub_100216B14().super.isa;
  v461 = [v423 initWithVersion:17 modelToCategory:v424 categoriesByView:v432 introducersByCategory:v440 redactions:v448 keyViewMapping:v449 userControllableViewList:v457 piggybackViews:v458 priorityViews:v459 inheritedExcludedViews:v460 hashAlgo:1];

  return v461;
}

id sub_10003D930()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v591 = v1;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D970;
  v31 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v33 = objc_opt_self();
  v34 = [v33 TPPBPolicyCategoriesByViewWithView:v31 categories:isa];

  *(v30 + 32) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v33 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v30 + 40) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v33 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v30 + 48) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v33 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v30 + 56) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v33 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v30 + 64) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v33 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v30 + 72) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v33 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v30 + 80) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v33 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v30 + 88) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v33 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v30 + 96) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v33 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v30 + 104) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v33 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v30 + 112) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v33 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v30 + 120) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v33 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v30 + 128) = v70;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v33 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v30 + 136) = v73;
  v74 = sub_100216964();
  v75 = sub_100216B14().super.isa;
  v76 = [v33 TPPBPolicyCategoriesByViewWithView:v74 categories:v75];

  *(v30 + 144) = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v33 TPPBPolicyCategoriesByViewWithView:v77 categories:v78];

  *(v30 + 152) = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v33 TPPBPolicyCategoriesByViewWithView:v80 categories:v81];

  *(v30 + 160) = v82;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = [v33 TPPBPolicyCategoriesByViewWithView:v83 categories:v84];

  *(v30 + 168) = v85;
  v86 = sub_100216964();
  v87 = sub_100216B14().super.isa;
  v88 = [v33 TPPBPolicyCategoriesByViewWithView:v86 categories:v87];

  *(v30 + 176) = v88;
  v89 = sub_100216964();
  v90 = sub_100216B14().super.isa;
  v91 = [v33 TPPBPolicyCategoriesByViewWithView:v89 categories:v90];

  *(v30 + 184) = v91;
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_10021D910;
  v93 = v92;
  v94 = sub_100216964();
  v95 = sub_100216B14().super.isa;
  v96 = objc_opt_self();
  v97 = [v96 TPPBPolicyIntroducersByCategoryWithCategory:v94 introducers:v95];

  v93[4] = v97;
  v98 = sub_100216964();
  v99 = sub_100216B14().super.isa;
  v100 = [v96 TPPBPolicyIntroducersByCategoryWithCategory:v98 introducers:v99];

  v93[5] = v100;
  v101 = sub_100216964();
  v102 = sub_100216B14().super.isa;
  v103 = [v96 TPPBPolicyIntroducersByCategoryWithCategory:v101 introducers:v102];

  v93[6] = v103;
  v104 = sub_100216964();
  v105 = sub_100216B14().super.isa;
  v106 = [v96 TPPBPolicyIntroducersByCategoryWithCategory:v104 introducers:v105];

  v564 = v93;
  v93[7] = v106;
  v107 = sub_100216964();
  v108 = sub_100216B14().super.isa;
  v109 = [v96 TPPBPolicyIntroducersByCategoryWithCategory:v107 introducers:v108];

  v93[8] = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_10021D980;
  v111 = v110;
  v112 = objc_opt_self();
  v113 = sub_100216964();
  v114 = sub_100216964();
  v115 = [v112 fieldMatch:v113 fieldRegex:v114];

  v116 = sub_100216964();
  v117 = objc_opt_self();
  v118 = [v117 TPPBPolicyKeyViewMappingWithView:v116 matchingRule:v115];

  *(v111 + 32) = v118;
  v119 = sub_100216964();
  v120 = sub_100216964();
  v121 = [v112 fieldMatch:v119 fieldRegex:v120];

  v122 = sub_100216964();
  v123 = [v117 TPPBPolicyKeyViewMappingWithView:v122 matchingRule:v121];

  *(v111 + 40) = v123;
  v124 = sub_100216964();
  v125 = sub_100216964();
  v126 = [v112 fieldMatch:v124 fieldRegex:v125];

  v127 = sub_100216964();
  v128 = [v117 TPPBPolicyKeyViewMappingWithView:v127 matchingRule:v126];

  *(v111 + 48) = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v112 fieldMatch:v129 fieldRegex:v130];

  v132 = sub_100216964();
  v133 = [v117 TPPBPolicyKeyViewMappingWithView:v132 matchingRule:v131];

  *(v111 + 56) = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v112 fieldMatch:v134 fieldRegex:v135];

  v137 = sub_100216964();
  v138 = [v117 TPPBPolicyKeyViewMappingWithView:v137 matchingRule:v136];

  *(v111 + 64) = v138;
  v139 = sub_100216964();
  v140 = sub_100216964();
  v141 = [v112 fieldMatch:v139 fieldRegex:v140];

  v142 = sub_100216964();
  v143 = [v117 TPPBPolicyKeyViewMappingWithView:v142 matchingRule:v141];

  *(v111 + 72) = v143;
  v144 = sub_100216964();
  v145 = sub_100216964();
  v146 = [v112 fieldMatch:v144 fieldRegex:v145];

  v147 = sub_100216964();
  v148 = [v117 TPPBPolicyKeyViewMappingWithView:v147 matchingRule:v146];

  *(v111 + 80) = v148;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_10021D880;
  v150 = sub_100216964();
  v151 = sub_100216964();
  v152 = [v112 fieldMatch:v150 fieldRegex:v151];

  *(v149 + 32) = v152;
  v153 = sub_100216964();
  v154 = sub_100216964();
  v155 = [v112 fieldMatch:v153 fieldRegex:v154];

  *(v149 + 40) = v155;
  v156 = sub_100216964();
  v157 = sub_100216964();
  v158 = [v112 fieldMatch:v156 fieldRegex:v157];

  *(v149 + 48) = v158;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v159 = sub_100216B14().super.isa;
  v149, v160, v161, v162, v163, v164, v165, v166, v468, v482, v496, v510, v524, "ProtectedCloudStorage", "Security-61901.40.77\n", v564, v30, v591;
  v167 = [v112 orMatch:v159];

  v168 = sub_100216964();
  v169 = [v117 TPPBPolicyKeyViewMappingWithView:v168 matchingRule:v167];

  *(v111 + 88) = v169;
  v170 = sub_100216964();
  v171 = sub_100216964();
  v172 = [v112 fieldMatch:v170 fieldRegex:v171];

  v173 = sub_100216964();
  v174 = [v117 TPPBPolicyKeyViewMappingWithView:v173 matchingRule:v172];

  *(v111 + 96) = v174;
  v175 = sub_100216964();
  v176 = sub_100216964();
  v177 = [v112 fieldMatch:v175 fieldRegex:v176];

  v178 = sub_100216964();
  v179 = [v117 TPPBPolicyKeyViewMappingWithView:v178 matchingRule:v177];

  *(v111 + 104) = v179;
  v180 = sub_100216964();
  v181 = sub_100216964();
  v182 = [v112 fieldMatch:v180 fieldRegex:v181];

  v183 = sub_100216964();
  v184 = [v117 TPPBPolicyKeyViewMappingWithView:v183 matchingRule:v182];

  *(v111 + 112) = v184;
  v185 = sub_100216964();
  v186 = sub_100216964();
  v187 = [v112 fieldMatch:v185 fieldRegex:v186];

  v188 = sub_100216964();
  v189 = [v117 TPPBPolicyKeyViewMappingWithView:v188 matchingRule:v187];

  *(v111 + 120) = v189;
  v190 = sub_100216964();
  v191 = sub_100216964();
  v192 = [v112 fieldMatch:v190 fieldRegex:v191];

  v193 = sub_100216964();
  v194 = [v117 TPPBPolicyKeyViewMappingWithView:v193 matchingRule:v192];

  *(v111 + 128) = v194;
  v195 = sub_100216964();
  v196 = sub_100216964();
  v197 = [v112 fieldMatch:v195 fieldRegex:v196];

  v198 = sub_100216964();
  v199 = [v117 TPPBPolicyKeyViewMappingWithView:v198 matchingRule:v197];

  *(v111 + 136) = v199;
  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_10021D8B0;
  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_10021D8D0;
  v202 = sub_100216964();
  v203 = sub_100216964();
  v204 = [v112 fieldMatch:v202 fieldRegex:v203];

  *(v201 + 32) = v204;
  v205 = sub_100216964();
  v206 = sub_100216964();
  v207 = [v112 fieldMatch:v205 fieldRegex:v206];

  *(v201 + 40) = v207;
  v208 = sub_100216B14().super.isa;
  v201, v209, v210, v211, v212, v213, v214, v215, v469, v483, v497, v511, v525, v538, v551, v565, v578, v592;
  v216 = [v112 andMatch:v208];

  *(v200 + 32) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_10021D8D0;
  v218 = sub_100216964();
  v219 = sub_100216964();
  v220 = [v112 fieldMatch:v218 fieldRegex:v219];

  *(v217 + 32) = v220;
  v221 = sub_100216964();
  v222 = sub_100216964();
  v223 = [v112 fieldMatch:v221 fieldRegex:v222];

  *(v217 + 40) = v223;
  v224 = sub_100216B14().super.isa;
  v217, v225, v226, v227, v228, v229, v230, v231, v470, v484, v498, v512, v526, v539, v552, v566, v579, v593;
  v232 = [v112 andMatch:v224];

  *(v200 + 40) = v232;
  v233 = sub_100216964();
  v234 = sub_100216964();
  v235 = [v112 fieldMatch:v233 fieldRegex:v234];

  *(v200 + 48) = v235;
  v236 = sub_100216964();
  v237 = sub_100216964();
  v238 = [v112 fieldMatch:v236 fieldRegex:v237];

  *(v200 + 56) = v238;
  v239 = sub_100216B14().super.isa;
  v200, v240, v241, v242, v243, v244, v245, v246, v471, v485, v499, v513, v527, v540, v553, v567, v580, v594;
  v247 = [v112 orMatch:v239];

  v248 = sub_100216964();
  v249 = [v117 TPPBPolicyKeyViewMappingWithView:v248 matchingRule:v247];

  *(v111 + 144) = v249;
  v250 = swift_allocObject();
  *(v250 + 16) = xmmword_10021D8D0;
  v251 = sub_100216964();
  v252 = sub_100216964();
  v253 = [v112 fieldMatch:v251 fieldRegex:v252];

  *(v250 + 32) = v253;
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_10021D880;
  v255 = sub_100216964();
  v256 = sub_100216964();
  v257 = [v112 fieldMatch:v255 fieldRegex:v256];

  *(v254 + 32) = v257;
  v258 = sub_100216964();
  v259 = sub_100216964();
  v260 = [v112 fieldMatch:v258 fieldRegex:v259];

  *(v254 + 40) = v260;
  v261 = sub_100216964();
  v262 = sub_100216964();
  v263 = [v112 fieldMatch:v261 fieldRegex:v262];

  *(v254 + 48) = v263;
  v264 = sub_100216B14().super.isa;
  v254, v265, v266, v267, v268, v269, v270, v271, v472, v486, v500, v514, v528, v541, v554, v568, v581, v595;
  v272 = [v112 andMatch:v264];

  *(v250 + 40) = v272;
  v273 = sub_100216B14().super.isa;
  v250, v274, v275, v276, v277, v278, v279, v280, v473, v487, v501, v515, v529, v542, v555, v569, v582, v596;
  v281 = [v112 orMatch:v273];

  v282 = sub_100216964();
  v283 = [v117 TPPBPolicyKeyViewMappingWithView:v282 matchingRule:v281];

  *(v111 + 152) = v283;
  v284 = swift_allocObject();
  *(v284 + 16) = xmmword_10021D8F0;
  v285 = sub_100216964();
  v286 = sub_100216964();
  v287 = [v112 fieldMatch:v285 fieldRegex:v286];

  *(v284 + 32) = v287;
  v288 = sub_100216964();
  v289 = sub_100216964();
  v290 = [v112 fieldMatch:v288 fieldRegex:v289];

  *(v284 + 40) = v290;
  v291 = sub_100216964();
  v292 = sub_100216964();
  v293 = [v112 fieldMatch:v291 fieldRegex:v292];

  *(v284 + 48) = v293;
  v294 = sub_100216964();
  v295 = sub_100216964();
  v296 = [v112 fieldMatch:v294 fieldRegex:v295];

  *(v284 + 56) = v296;
  v297 = sub_100216964();
  v298 = sub_100216964();
  v299 = [v112 fieldMatch:v297 fieldRegex:v298];

  *(v284 + 64) = v299;
  v300 = sub_100216964();
  v301 = sub_100216964();
  v302 = [v112 fieldMatch:v300 fieldRegex:v301];

  *(v284 + 72) = v302;
  v303 = sub_100216964();
  v304 = sub_100216964();
  v305 = [v112 fieldMatch:v303 fieldRegex:v304];

  *(v284 + 80) = v305;
  v306 = sub_100216964();
  v307 = sub_100216964();
  v308 = [v112 fieldMatch:v306 fieldRegex:v307];

  *(v284 + 88) = v308;
  v309 = sub_100216964();
  v310 = sub_100216964();
  v311 = [v112 fieldMatch:v309 fieldRegex:v310];

  *(v284 + 96) = v311;
  v312 = sub_100216964();
  v313 = sub_100216964();
  v314 = [v112 fieldMatch:v312 fieldRegex:v313];

  *(v284 + 104) = v314;
  v315 = sub_100216964();
  v316 = sub_100216964();
  v317 = [v112 fieldMatch:v315 fieldRegex:v316];

  *(v284 + 112) = v317;
  v318 = sub_100216964();
  v319 = sub_100216964();
  v320 = [v112 fieldMatch:v318 fieldRegex:v319];

  *(v284 + 120) = v320;
  v321 = sub_100216964();
  v322 = sub_100216964();
  v323 = [v112 fieldMatch:v321 fieldRegex:v322];

  *(v284 + 128) = v323;
  v324 = sub_100216964();
  v325 = sub_100216964();
  v326 = [v112 fieldMatch:v324 fieldRegex:v325];

  *(v284 + 136) = v326;
  v327 = sub_100216B14().super.isa;
  v284, v328, v329, v330, v331, v332, v333, v334, v474, v488, v502, v516, v530, v543, v556, v570, v583, v597;
  v335 = [v112 orMatch:v327];

  v336 = sub_100216964();
  v337 = [v117 TPPBPolicyKeyViewMappingWithView:v336 matchingRule:v335];

  *(v111 + 160) = v337;
  v338 = swift_allocObject();
  *(v338 + 16) = xmmword_10021D8D0;
  v339 = sub_100216964();
  v340 = sub_100216964();
  v341 = [v112 fieldMatch:v339 fieldRegex:v340];

  *(v338 + 32) = v341;
  v342 = sub_100216964();
  v343 = sub_100216964();
  v344 = [v112 fieldMatch:v342 fieldRegex:v343];

  *(v338 + 40) = v344;
  v345 = sub_100216B14().super.isa;
  v338, v346, v347, v348, v349, v350, v351, v352, v475, v489, v503, v517, v531, v544, v557, v571, v584, v598;
  v353 = [v112 orMatch:v345];

  v354 = sub_100216964();
  v355 = [v117 TPPBPolicyKeyViewMappingWithView:v354 matchingRule:v353];

  *(v111 + 168) = v355;
  v356 = swift_allocObject();
  *(v356 + 16) = xmmword_10021D8E0;
  v357 = sub_100216964();
  v358 = sub_100216964();
  v359 = [v112 fieldMatch:v357 fieldRegex:v358];

  *(v356 + 32) = v359;
  v360 = sub_100216964();
  v361 = sub_100216964();
  v362 = [v112 fieldMatch:v360 fieldRegex:v361];

  *(v356 + 40) = v362;
  v363 = sub_100216964();
  v364 = sub_100216964();
  v365 = [v112 fieldMatch:v363 fieldRegex:v364];

  *(v356 + 48) = v365;
  v366 = sub_100216964();
  v367 = sub_100216964();
  v368 = [v112 fieldMatch:v366 fieldRegex:v367];

  *(v356 + 56) = v368;
  v369 = sub_100216964();
  v370 = sub_100216964();
  v371 = [v112 fieldMatch:v369 fieldRegex:v370];

  *(v356 + 64) = v371;
  v372 = sub_100216964();
  v373 = sub_100216964();
  v374 = [v112 fieldMatch:v372 fieldRegex:v373];

  *(v356 + 72) = v374;
  v375 = sub_100216964();
  v376 = sub_100216964();
  v377 = [v112 fieldMatch:v375 fieldRegex:v376];

  *(v356 + 80) = v377;
  v378 = sub_100216964();
  v379 = sub_100216964();
  v380 = [v112 fieldMatch:v378 fieldRegex:v379];

  *(v356 + 88) = v380;
  v381 = sub_100216964();
  v382 = sub_100216964();
  v383 = [v112 fieldMatch:v381 fieldRegex:v382];

  *(v356 + 96) = v383;
  v384 = sub_100216964();
  v385 = sub_100216964();
  v386 = [v112 fieldMatch:v384 fieldRegex:v385];

  *(v356 + 104) = v386;
  v387 = sub_100216964();
  v388 = sub_100216964();
  v389 = [v112 fieldMatch:v387 fieldRegex:v388];

  *(v356 + 112) = v389;
  v390 = sub_100216964();
  v391 = sub_100216964();
  v392 = [v112 fieldMatch:v390 fieldRegex:v391];

  *(v356 + 120) = v392;
  v393 = sub_100216B14().super.isa;
  v356, v394, v395, v396, v397, v398, v399, v400, v476, v490, v504, v518, v532, v545, v558, v572, v585, v599;
  v401 = [v112 orMatch:v393];

  v402 = sub_100216964();
  v403 = [v117 TPPBPolicyKeyViewMappingWithView:v402 matchingRule:v401];

  *(v111 + 176) = v403;
  v404 = swift_allocObject();
  *(v404 + 16) = xmmword_10021D880;
  v405 = sub_100216964();
  v406 = sub_100216964();
  v407 = [v112 fieldMatch:v405 fieldRegex:v406];

  *(v404 + 32) = v407;
  v408 = sub_100216964();
  v409 = sub_100216964();
  v410 = [v112 fieldMatch:v408 fieldRegex:v409];

  *(v404 + 40) = v410;
  v411 = sub_100216964();
  v412 = sub_100216964();
  v413 = [v112 fieldMatch:v411 fieldRegex:v412];

  *(v404 + 48) = v413;
  v414 = sub_100216B14().super.isa;
  v404, v415, v416, v417, v418, v419, v420, v421, v477, v491, v505, v519, v533, v546, v559, v573, v586, v600;
  v422 = [v112 orMatch:v414];

  v423 = sub_100216964();
  v424 = [v117 TPPBPolicyKeyViewMappingWithView:v423 matchingRule:v422];

  *(v111 + 184) = v424;
  v425 = [v112 trueMatch];
  v426 = sub_100216964();
  v427 = [v117 TPPBPolicyKeyViewMappingWithView:v426 matchingRule:v425];

  *(v111 + 192) = v427;
  v428 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v429 = sub_100216B14().super.isa;
  v601, v430, v431, v432, v433, v434, v435, v436, v478, v492, v506, v520, v534, v547, v560, v574, v587, v601;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v437 = sub_100216B14().super.isa;
  v588, v438, v439, v440, v441, v442, v443, v444, v479, v493, v507, v521, v535, v548, v561, v575, v588, v602;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v445 = sub_100216B14().super.isa;
  v576, v446, v447, v448, v449, v450, v451, v452, v480, v494, v508, v522, v536, v549, v562, v576, v589, v603;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v453 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v454 = sub_100216B14().super.isa;
  v111, v455, v456, v457, v458, v459, v460, v461, v481, v495, v509, v523, v537, v550, v563, v577, v590, v604;
  v462 = sub_100216B14().super.isa;
  v463 = sub_100216B14().super.isa;
  v464 = sub_100216B14().super.isa;
  v465 = sub_100216B14().super.isa;
  v466 = [v428 initWithVersion:18 modelToCategory:v429 categoriesByView:v437 introducersByCategory:v445 redactions:v453 keyViewMapping:v454 userControllableViewList:v462 piggybackViews:v463 priorityViews:v464 inheritedExcludedViews:v465 hashAlgo:1];

  return v466;
}

id sub_1000407F8()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D950;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v594 = v1;
  v30 = sub_100216964();
  v31 = sub_100216964();
  v32 = [v4 TPPBPolicyModelToCategoryWithPrefix:v30 category:v31];

  v1[13] = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10021D970;
  v34 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v36 = objc_opt_self();
  v37 = [v36 TPPBPolicyCategoriesByViewWithView:v34 categories:isa];

  *(v33 + 32) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v36 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v33 + 40) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v36 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v33 + 48) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v36 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v33 + 56) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v36 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v33 + 64) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v36 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v33 + 72) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v36 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v33 + 80) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v36 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v33 + 88) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v36 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v33 + 96) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v36 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v33 + 104) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v36 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v33 + 112) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v36 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v33 + 120) = v70;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v36 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v33 + 128) = v73;
  v74 = sub_100216964();
  v75 = sub_100216B14().super.isa;
  v76 = [v36 TPPBPolicyCategoriesByViewWithView:v74 categories:v75];

  *(v33 + 136) = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v36 TPPBPolicyCategoriesByViewWithView:v77 categories:v78];

  *(v33 + 144) = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v36 TPPBPolicyCategoriesByViewWithView:v80 categories:v81];

  *(v33 + 152) = v82;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = [v36 TPPBPolicyCategoriesByViewWithView:v83 categories:v84];

  *(v33 + 160) = v85;
  v86 = sub_100216964();
  v87 = sub_100216B14().super.isa;
  v88 = [v36 TPPBPolicyCategoriesByViewWithView:v86 categories:v87];

  *(v33 + 168) = v88;
  v89 = sub_100216964();
  v90 = sub_100216B14().super.isa;
  v91 = [v36 TPPBPolicyCategoriesByViewWithView:v89 categories:v90];

  *(v33 + 176) = v91;
  v92 = sub_100216964();
  v93 = sub_100216B14().super.isa;
  v94 = [v36 TPPBPolicyCategoriesByViewWithView:v92 categories:v93];

  *(v33 + 184) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_10021D910;
  v96 = v95;
  v97 = sub_100216964();
  v98 = sub_100216B14().super.isa;
  v99 = objc_opt_self();
  v100 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v97 introducers:v98];

  v96[4] = v100;
  v101 = sub_100216964();
  v102 = sub_100216B14().super.isa;
  v103 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v101 introducers:v102];

  v96[5] = v103;
  v104 = sub_100216964();
  v105 = sub_100216B14().super.isa;
  v106 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v104 introducers:v105];

  v96[6] = v106;
  v107 = sub_100216964();
  v108 = sub_100216B14().super.isa;
  v109 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v107 introducers:v108];

  v567 = v96;
  v96[7] = v109;
  v110 = sub_100216964();
  v111 = sub_100216B14().super.isa;
  v112 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v110 introducers:v111];

  v96[8] = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_10021D980;
  v114 = v113;
  v115 = objc_opt_self();
  v116 = sub_100216964();
  v117 = sub_100216964();
  v118 = [v115 fieldMatch:v116 fieldRegex:v117];

  v119 = sub_100216964();
  v120 = objc_opt_self();
  v121 = [v120 TPPBPolicyKeyViewMappingWithView:v119 matchingRule:v118];

  *(v114 + 32) = v121;
  v122 = sub_100216964();
  v123 = sub_100216964();
  v124 = [v115 fieldMatch:v122 fieldRegex:v123];

  v125 = sub_100216964();
  v126 = [v120 TPPBPolicyKeyViewMappingWithView:v125 matchingRule:v124];

  *(v114 + 40) = v126;
  v127 = sub_100216964();
  v128 = sub_100216964();
  v129 = [v115 fieldMatch:v127 fieldRegex:v128];

  v130 = sub_100216964();
  v131 = [v120 TPPBPolicyKeyViewMappingWithView:v130 matchingRule:v129];

  *(v114 + 48) = v131;
  v132 = sub_100216964();
  v133 = sub_100216964();
  v134 = [v115 fieldMatch:v132 fieldRegex:v133];

  v135 = sub_100216964();
  v136 = [v120 TPPBPolicyKeyViewMappingWithView:v135 matchingRule:v134];

  *(v114 + 56) = v136;
  v137 = sub_100216964();
  v138 = sub_100216964();
  v139 = [v115 fieldMatch:v137 fieldRegex:v138];

  v140 = sub_100216964();
  v141 = [v120 TPPBPolicyKeyViewMappingWithView:v140 matchingRule:v139];

  *(v114 + 64) = v141;
  v142 = sub_100216964();
  v143 = sub_100216964();
  v144 = [v115 fieldMatch:v142 fieldRegex:v143];

  v145 = sub_100216964();
  v146 = [v120 TPPBPolicyKeyViewMappingWithView:v145 matchingRule:v144];

  *(v114 + 72) = v146;
  v147 = sub_100216964();
  v148 = sub_100216964();
  v149 = [v115 fieldMatch:v147 fieldRegex:v148];

  v150 = sub_100216964();
  v151 = [v120 TPPBPolicyKeyViewMappingWithView:v150 matchingRule:v149];

  *(v114 + 80) = v151;
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_10021D880;
  v153 = sub_100216964();
  v154 = sub_100216964();
  v155 = [v115 fieldMatch:v153 fieldRegex:v154];

  *(v152 + 32) = v155;
  v156 = sub_100216964();
  v157 = sub_100216964();
  v158 = [v115 fieldMatch:v156 fieldRegex:v157];

  *(v152 + 40) = v158;
  v159 = sub_100216964();
  v160 = sub_100216964();
  v161 = [v115 fieldMatch:v159 fieldRegex:v160];

  *(v152 + 48) = v161;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v162 = sub_100216B14().super.isa;
  v152, v163, v164, v165, v166, v167, v168, v169, v471, v485, v499, v513, v527, "ProtectedCloudStorage", "Security-61901.40.77\n", v567, v33, v594;
  v170 = [v115 orMatch:v162];

  v171 = sub_100216964();
  v172 = [v120 TPPBPolicyKeyViewMappingWithView:v171 matchingRule:v170];

  *(v114 + 88) = v172;
  v173 = sub_100216964();
  v174 = sub_100216964();
  v175 = [v115 fieldMatch:v173 fieldRegex:v174];

  v176 = sub_100216964();
  v177 = [v120 TPPBPolicyKeyViewMappingWithView:v176 matchingRule:v175];

  *(v114 + 96) = v177;
  v178 = sub_100216964();
  v179 = sub_100216964();
  v180 = [v115 fieldMatch:v178 fieldRegex:v179];

  v181 = sub_100216964();
  v182 = [v120 TPPBPolicyKeyViewMappingWithView:v181 matchingRule:v180];

  *(v114 + 104) = v182;
  v183 = sub_100216964();
  v184 = sub_100216964();
  v185 = [v115 fieldMatch:v183 fieldRegex:v184];

  v186 = sub_100216964();
  v187 = [v120 TPPBPolicyKeyViewMappingWithView:v186 matchingRule:v185];

  *(v114 + 112) = v187;
  v188 = sub_100216964();
  v189 = sub_100216964();
  v190 = [v115 fieldMatch:v188 fieldRegex:v189];

  v191 = sub_100216964();
  v192 = [v120 TPPBPolicyKeyViewMappingWithView:v191 matchingRule:v190];

  *(v114 + 120) = v192;
  v193 = sub_100216964();
  v194 = sub_100216964();
  v195 = [v115 fieldMatch:v193 fieldRegex:v194];

  v196 = sub_100216964();
  v197 = [v120 TPPBPolicyKeyViewMappingWithView:v196 matchingRule:v195];

  *(v114 + 128) = v197;
  v198 = sub_100216964();
  v199 = sub_100216964();
  v200 = [v115 fieldMatch:v198 fieldRegex:v199];

  v201 = sub_100216964();
  v202 = [v120 TPPBPolicyKeyViewMappingWithView:v201 matchingRule:v200];

  *(v114 + 136) = v202;
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_10021D8B0;
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_10021D8D0;
  v205 = sub_100216964();
  v206 = sub_100216964();
  v207 = [v115 fieldMatch:v205 fieldRegex:v206];

  *(v204 + 32) = v207;
  v208 = sub_100216964();
  v209 = sub_100216964();
  v210 = [v115 fieldMatch:v208 fieldRegex:v209];

  *(v204 + 40) = v210;
  v211 = sub_100216B14().super.isa;
  v204, v212, v213, v214, v215, v216, v217, v218, v472, v486, v500, v514, v528, v541, v554, v568, v581, v595;
  v219 = [v115 andMatch:v211];

  *(v203 + 32) = v219;
  v220 = swift_allocObject();
  *(v220 + 16) = xmmword_10021D8D0;
  v221 = sub_100216964();
  v222 = sub_100216964();
  v223 = [v115 fieldMatch:v221 fieldRegex:v222];

  *(v220 + 32) = v223;
  v224 = sub_100216964();
  v225 = sub_100216964();
  v226 = [v115 fieldMatch:v224 fieldRegex:v225];

  *(v220 + 40) = v226;
  v227 = sub_100216B14().super.isa;
  v220, v228, v229, v230, v231, v232, v233, v234, v473, v487, v501, v515, v529, v542, v555, v569, v582, v596;
  v235 = [v115 andMatch:v227];

  *(v203 + 40) = v235;
  v236 = sub_100216964();
  v237 = sub_100216964();
  v238 = [v115 fieldMatch:v236 fieldRegex:v237];

  *(v203 + 48) = v238;
  v239 = sub_100216964();
  v240 = sub_100216964();
  v241 = [v115 fieldMatch:v239 fieldRegex:v240];

  *(v203 + 56) = v241;
  v242 = sub_100216B14().super.isa;
  v203, v243, v244, v245, v246, v247, v248, v249, v474, v488, v502, v516, v530, v543, v556, v570, v583, v597;
  v250 = [v115 orMatch:v242];

  v251 = sub_100216964();
  v252 = [v120 TPPBPolicyKeyViewMappingWithView:v251 matchingRule:v250];

  *(v114 + 144) = v252;
  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_10021D8D0;
  v254 = sub_100216964();
  v255 = sub_100216964();
  v256 = [v115 fieldMatch:v254 fieldRegex:v255];

  *(v253 + 32) = v256;
  v257 = swift_allocObject();
  *(v257 + 16) = xmmword_10021D880;
  v258 = sub_100216964();
  v259 = sub_100216964();
  v260 = [v115 fieldMatch:v258 fieldRegex:v259];

  *(v257 + 32) = v260;
  v261 = sub_100216964();
  v262 = sub_100216964();
  v263 = [v115 fieldMatch:v261 fieldRegex:v262];

  *(v257 + 40) = v263;
  v264 = sub_100216964();
  v265 = sub_100216964();
  v266 = [v115 fieldMatch:v264 fieldRegex:v265];

  *(v257 + 48) = v266;
  v267 = sub_100216B14().super.isa;
  v257, v268, v269, v270, v271, v272, v273, v274, v475, v489, v503, v517, v531, v544, v557, v571, v584, v598;
  v275 = [v115 andMatch:v267];

  *(v253 + 40) = v275;
  v276 = sub_100216B14().super.isa;
  v253, v277, v278, v279, v280, v281, v282, v283, v476, v490, v504, v518, v532, v545, v558, v572, v585, v599;
  v284 = [v115 orMatch:v276];

  v285 = sub_100216964();
  v286 = [v120 TPPBPolicyKeyViewMappingWithView:v285 matchingRule:v284];

  *(v114 + 152) = v286;
  v287 = swift_allocObject();
  *(v287 + 16) = xmmword_10021D8F0;
  v288 = sub_100216964();
  v289 = sub_100216964();
  v290 = [v115 fieldMatch:v288 fieldRegex:v289];

  *(v287 + 32) = v290;
  v291 = sub_100216964();
  v292 = sub_100216964();
  v293 = [v115 fieldMatch:v291 fieldRegex:v292];

  *(v287 + 40) = v293;
  v294 = sub_100216964();
  v295 = sub_100216964();
  v296 = [v115 fieldMatch:v294 fieldRegex:v295];

  *(v287 + 48) = v296;
  v297 = sub_100216964();
  v298 = sub_100216964();
  v299 = [v115 fieldMatch:v297 fieldRegex:v298];

  *(v287 + 56) = v299;
  v300 = sub_100216964();
  v301 = sub_100216964();
  v302 = [v115 fieldMatch:v300 fieldRegex:v301];

  *(v287 + 64) = v302;
  v303 = sub_100216964();
  v304 = sub_100216964();
  v305 = [v115 fieldMatch:v303 fieldRegex:v304];

  *(v287 + 72) = v305;
  v306 = sub_100216964();
  v307 = sub_100216964();
  v308 = [v115 fieldMatch:v306 fieldRegex:v307];

  *(v287 + 80) = v308;
  v309 = sub_100216964();
  v310 = sub_100216964();
  v311 = [v115 fieldMatch:v309 fieldRegex:v310];

  *(v287 + 88) = v311;
  v312 = sub_100216964();
  v313 = sub_100216964();
  v314 = [v115 fieldMatch:v312 fieldRegex:v313];

  *(v287 + 96) = v314;
  v315 = sub_100216964();
  v316 = sub_100216964();
  v317 = [v115 fieldMatch:v315 fieldRegex:v316];

  *(v287 + 104) = v317;
  v318 = sub_100216964();
  v319 = sub_100216964();
  v320 = [v115 fieldMatch:v318 fieldRegex:v319];

  *(v287 + 112) = v320;
  v321 = sub_100216964();
  v322 = sub_100216964();
  v323 = [v115 fieldMatch:v321 fieldRegex:v322];

  *(v287 + 120) = v323;
  v324 = sub_100216964();
  v325 = sub_100216964();
  v326 = [v115 fieldMatch:v324 fieldRegex:v325];

  *(v287 + 128) = v326;
  v327 = sub_100216964();
  v328 = sub_100216964();
  v329 = [v115 fieldMatch:v327 fieldRegex:v328];

  *(v287 + 136) = v329;
  v330 = sub_100216B14().super.isa;
  v287, v331, v332, v333, v334, v335, v336, v337, v477, v491, v505, v519, v533, v546, v559, v573, v586, v600;
  v338 = [v115 orMatch:v330];

  v339 = sub_100216964();
  v340 = [v120 TPPBPolicyKeyViewMappingWithView:v339 matchingRule:v338];

  *(v114 + 160) = v340;
  v341 = swift_allocObject();
  *(v341 + 16) = xmmword_10021D8D0;
  v342 = sub_100216964();
  v343 = sub_100216964();
  v344 = [v115 fieldMatch:v342 fieldRegex:v343];

  *(v341 + 32) = v344;
  v345 = sub_100216964();
  v346 = sub_100216964();
  v347 = [v115 fieldMatch:v345 fieldRegex:v346];

  *(v341 + 40) = v347;
  v348 = sub_100216B14().super.isa;
  v341, v349, v350, v351, v352, v353, v354, v355, v478, v492, v506, v520, v534, v547, v560, v574, v587, v601;
  v356 = [v115 orMatch:v348];

  v357 = sub_100216964();
  v358 = [v120 TPPBPolicyKeyViewMappingWithView:v357 matchingRule:v356];

  *(v114 + 168) = v358;
  v359 = swift_allocObject();
  *(v359 + 16) = xmmword_10021D8E0;
  v360 = sub_100216964();
  v361 = sub_100216964();
  v362 = [v115 fieldMatch:v360 fieldRegex:v361];

  *(v359 + 32) = v362;
  v363 = sub_100216964();
  v364 = sub_100216964();
  v365 = [v115 fieldMatch:v363 fieldRegex:v364];

  *(v359 + 40) = v365;
  v366 = sub_100216964();
  v367 = sub_100216964();
  v368 = [v115 fieldMatch:v366 fieldRegex:v367];

  *(v359 + 48) = v368;
  v369 = sub_100216964();
  v370 = sub_100216964();
  v371 = [v115 fieldMatch:v369 fieldRegex:v370];

  *(v359 + 56) = v371;
  v372 = sub_100216964();
  v373 = sub_100216964();
  v374 = [v115 fieldMatch:v372 fieldRegex:v373];

  *(v359 + 64) = v374;
  v375 = sub_100216964();
  v376 = sub_100216964();
  v377 = [v115 fieldMatch:v375 fieldRegex:v376];

  *(v359 + 72) = v377;
  v378 = sub_100216964();
  v379 = sub_100216964();
  v380 = [v115 fieldMatch:v378 fieldRegex:v379];

  *(v359 + 80) = v380;
  v381 = sub_100216964();
  v382 = sub_100216964();
  v383 = [v115 fieldMatch:v381 fieldRegex:v382];

  *(v359 + 88) = v383;
  v384 = sub_100216964();
  v385 = sub_100216964();
  v386 = [v115 fieldMatch:v384 fieldRegex:v385];

  *(v359 + 96) = v386;
  v387 = sub_100216964();
  v388 = sub_100216964();
  v389 = [v115 fieldMatch:v387 fieldRegex:v388];

  *(v359 + 104) = v389;
  v390 = sub_100216964();
  v391 = sub_100216964();
  v392 = [v115 fieldMatch:v390 fieldRegex:v391];

  *(v359 + 112) = v392;
  v393 = sub_100216964();
  v394 = sub_100216964();
  v395 = [v115 fieldMatch:v393 fieldRegex:v394];

  *(v359 + 120) = v395;
  v396 = sub_100216B14().super.isa;
  v359, v397, v398, v399, v400, v401, v402, v403, v479, v493, v507, v521, v535, v548, v561, v575, v588, v602;
  v404 = [v115 orMatch:v396];

  v405 = sub_100216964();
  v406 = [v120 TPPBPolicyKeyViewMappingWithView:v405 matchingRule:v404];

  *(v114 + 176) = v406;
  v407 = swift_allocObject();
  *(v407 + 16) = xmmword_10021D880;
  v408 = sub_100216964();
  v409 = sub_100216964();
  v410 = [v115 fieldMatch:v408 fieldRegex:v409];

  *(v407 + 32) = v410;
  v411 = sub_100216964();
  v412 = sub_100216964();
  v413 = [v115 fieldMatch:v411 fieldRegex:v412];

  *(v407 + 40) = v413;
  v414 = sub_100216964();
  v415 = sub_100216964();
  v416 = [v115 fieldMatch:v414 fieldRegex:v415];

  *(v407 + 48) = v416;
  v417 = sub_100216B14().super.isa;
  v407, v418, v419, v420, v421, v422, v423, v424, v480, v494, v508, v522, v536, v549, v562, v576, v589, v603;
  v425 = [v115 orMatch:v417];

  v426 = sub_100216964();
  v427 = [v120 TPPBPolicyKeyViewMappingWithView:v426 matchingRule:v425];

  *(v114 + 184) = v427;
  v428 = [v115 trueMatch];
  v429 = sub_100216964();
  v430 = [v120 TPPBPolicyKeyViewMappingWithView:v429 matchingRule:v428];

  *(v114 + 192) = v430;
  v431 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v432 = sub_100216B14().super.isa;
  v604, v433, v434, v435, v436, v437, v438, v439, v481, v495, v509, v523, v537, v550, v563, v577, v590, v604;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v440 = sub_100216B14().super.isa;
  v591, v441, v442, v443, v444, v445, v446, v447, v482, v496, v510, v524, v538, v551, v564, v578, v591, v605;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v448 = sub_100216B14().super.isa;
  v579, v449, v450, v451, v452, v453, v454, v455, v483, v497, v511, v525, v539, v552, v565, v579, v592, v606;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v456 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v457 = sub_100216B14().super.isa;
  v114, v458, v459, v460, v461, v462, v463, v464, v484, v498, v512, v526, v540, v553, v566, v580, v593, v607;
  v465 = sub_100216B14().super.isa;
  v466 = sub_100216B14().super.isa;
  v467 = sub_100216B14().super.isa;
  v468 = sub_100216B14().super.isa;
  v469 = [v431 initWithVersion:19 modelToCategory:v432 categoriesByView:v440 introducersByCategory:v448 redactions:v456 keyViewMapping:v457 userControllableViewList:v465 piggybackViews:v466 priorityViews:v467 inheritedExcludedViews:v468 hashAlgo:1];

  return v469;
}

id sub_100043728()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D950;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v594 = v1;
  v30 = sub_100216964();
  v31 = sub_100216964();
  v32 = [v4 TPPBPolicyModelToCategoryWithPrefix:v30 category:v31];

  v1[13] = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10021D970;
  v34 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v36 = objc_opt_self();
  v37 = [v36 TPPBPolicyCategoriesByViewWithView:v34 categories:isa];

  *(v33 + 32) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v36 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v33 + 40) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v36 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v33 + 48) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v36 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v33 + 56) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v36 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v33 + 64) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v36 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v33 + 72) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v36 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v33 + 80) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v36 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v33 + 88) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v36 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v33 + 96) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v36 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v33 + 104) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v36 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v33 + 112) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v36 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v33 + 120) = v70;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v36 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v33 + 128) = v73;
  v74 = sub_100216964();
  v75 = sub_100216B14().super.isa;
  v76 = [v36 TPPBPolicyCategoriesByViewWithView:v74 categories:v75];

  *(v33 + 136) = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v36 TPPBPolicyCategoriesByViewWithView:v77 categories:v78];

  *(v33 + 144) = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v36 TPPBPolicyCategoriesByViewWithView:v80 categories:v81];

  *(v33 + 152) = v82;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = [v36 TPPBPolicyCategoriesByViewWithView:v83 categories:v84];

  *(v33 + 160) = v85;
  v86 = sub_100216964();
  v87 = sub_100216B14().super.isa;
  v88 = [v36 TPPBPolicyCategoriesByViewWithView:v86 categories:v87];

  *(v33 + 168) = v88;
  v89 = sub_100216964();
  v90 = sub_100216B14().super.isa;
  v91 = [v36 TPPBPolicyCategoriesByViewWithView:v89 categories:v90];

  *(v33 + 176) = v91;
  v92 = sub_100216964();
  v93 = sub_100216B14().super.isa;
  v94 = [v36 TPPBPolicyCategoriesByViewWithView:v92 categories:v93];

  *(v33 + 184) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_10021D910;
  v96 = v95;
  v97 = sub_100216964();
  v98 = sub_100216B14().super.isa;
  v99 = objc_opt_self();
  v100 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v97 introducers:v98];

  v96[4] = v100;
  v101 = sub_100216964();
  v102 = sub_100216B14().super.isa;
  v103 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v101 introducers:v102];

  v96[5] = v103;
  v104 = sub_100216964();
  v105 = sub_100216B14().super.isa;
  v106 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v104 introducers:v105];

  v96[6] = v106;
  v107 = sub_100216964();
  v108 = sub_100216B14().super.isa;
  v109 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v107 introducers:v108];

  v567 = v96;
  v96[7] = v109;
  v110 = sub_100216964();
  v111 = sub_100216B14().super.isa;
  v112 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v110 introducers:v111];

  v96[8] = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_10021D980;
  v114 = v113;
  v115 = objc_opt_self();
  v116 = sub_100216964();
  v117 = sub_100216964();
  v118 = [v115 fieldMatch:v116 fieldRegex:v117];

  v119 = sub_100216964();
  v120 = objc_opt_self();
  v121 = [v120 TPPBPolicyKeyViewMappingWithView:v119 matchingRule:v118];

  *(v114 + 32) = v121;
  v122 = sub_100216964();
  v123 = sub_100216964();
  v124 = [v115 fieldMatch:v122 fieldRegex:v123];

  v125 = sub_100216964();
  v126 = [v120 TPPBPolicyKeyViewMappingWithView:v125 matchingRule:v124];

  *(v114 + 40) = v126;
  v127 = sub_100216964();
  v128 = sub_100216964();
  v129 = [v115 fieldMatch:v127 fieldRegex:v128];

  v130 = sub_100216964();
  v131 = [v120 TPPBPolicyKeyViewMappingWithView:v130 matchingRule:v129];

  *(v114 + 48) = v131;
  v132 = sub_100216964();
  v133 = sub_100216964();
  v134 = [v115 fieldMatch:v132 fieldRegex:v133];

  v135 = sub_100216964();
  v136 = [v120 TPPBPolicyKeyViewMappingWithView:v135 matchingRule:v134];

  *(v114 + 56) = v136;
  v137 = sub_100216964();
  v138 = sub_100216964();
  v139 = [v115 fieldMatch:v137 fieldRegex:v138];

  v140 = sub_100216964();
  v141 = [v120 TPPBPolicyKeyViewMappingWithView:v140 matchingRule:v139];

  *(v114 + 64) = v141;
  v142 = sub_100216964();
  v143 = sub_100216964();
  v144 = [v115 fieldMatch:v142 fieldRegex:v143];

  v145 = sub_100216964();
  v146 = [v120 TPPBPolicyKeyViewMappingWithView:v145 matchingRule:v144];

  *(v114 + 72) = v146;
  v147 = sub_100216964();
  v148 = sub_100216964();
  v149 = [v115 fieldMatch:v147 fieldRegex:v148];

  v150 = sub_100216964();
  v151 = [v120 TPPBPolicyKeyViewMappingWithView:v150 matchingRule:v149];

  *(v114 + 80) = v151;
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_10021D880;
  v153 = sub_100216964();
  v154 = sub_100216964();
  v155 = [v115 fieldMatch:v153 fieldRegex:v154];

  *(v152 + 32) = v155;
  v156 = sub_100216964();
  v157 = sub_100216964();
  v158 = [v115 fieldMatch:v156 fieldRegex:v157];

  *(v152 + 40) = v158;
  v159 = sub_100216964();
  v160 = sub_100216964();
  v161 = [v115 fieldMatch:v159 fieldRegex:v160];

  *(v152 + 48) = v161;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v162 = sub_100216B14().super.isa;
  v152, v163, v164, v165, v166, v167, v168, v169, v471, v485, v499, v513, v527, "ProtectedCloudStorage", "Security-61901.40.77\n", v567, v33, v594;
  v170 = [v115 orMatch:v162];

  v171 = sub_100216964();
  v172 = [v120 TPPBPolicyKeyViewMappingWithView:v171 matchingRule:v170];

  *(v114 + 88) = v172;
  v173 = sub_100216964();
  v174 = sub_100216964();
  v175 = [v115 fieldMatch:v173 fieldRegex:v174];

  v176 = sub_100216964();
  v177 = [v120 TPPBPolicyKeyViewMappingWithView:v176 matchingRule:v175];

  *(v114 + 96) = v177;
  v178 = sub_100216964();
  v179 = sub_100216964();
  v180 = [v115 fieldMatch:v178 fieldRegex:v179];

  v181 = sub_100216964();
  v182 = [v120 TPPBPolicyKeyViewMappingWithView:v181 matchingRule:v180];

  *(v114 + 104) = v182;
  v183 = sub_100216964();
  v184 = sub_100216964();
  v185 = [v115 fieldMatch:v183 fieldRegex:v184];

  v186 = sub_100216964();
  v187 = [v120 TPPBPolicyKeyViewMappingWithView:v186 matchingRule:v185];

  *(v114 + 112) = v187;
  v188 = sub_100216964();
  v189 = sub_100216964();
  v190 = [v115 fieldMatch:v188 fieldRegex:v189];

  v191 = sub_100216964();
  v192 = [v120 TPPBPolicyKeyViewMappingWithView:v191 matchingRule:v190];

  *(v114 + 120) = v192;
  v193 = sub_100216964();
  v194 = sub_100216964();
  v195 = [v115 fieldMatch:v193 fieldRegex:v194];

  v196 = sub_100216964();
  v197 = [v120 TPPBPolicyKeyViewMappingWithView:v196 matchingRule:v195];

  *(v114 + 128) = v197;
  v198 = sub_100216964();
  v199 = sub_100216964();
  v200 = [v115 fieldMatch:v198 fieldRegex:v199];

  v201 = sub_100216964();
  v202 = [v120 TPPBPolicyKeyViewMappingWithView:v201 matchingRule:v200];

  *(v114 + 136) = v202;
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_10021D8B0;
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_10021D8D0;
  v205 = sub_100216964();
  v206 = sub_100216964();
  v207 = [v115 fieldMatch:v205 fieldRegex:v206];

  *(v204 + 32) = v207;
  v208 = sub_100216964();
  v209 = sub_100216964();
  v210 = [v115 fieldMatch:v208 fieldRegex:v209];

  *(v204 + 40) = v210;
  v211 = sub_100216B14().super.isa;
  v204, v212, v213, v214, v215, v216, v217, v218, v472, v486, v500, v514, v528, v541, v554, v568, v581, v595;
  v219 = [v115 andMatch:v211];

  *(v203 + 32) = v219;
  v220 = swift_allocObject();
  *(v220 + 16) = xmmword_10021D8D0;
  v221 = sub_100216964();
  v222 = sub_100216964();
  v223 = [v115 fieldMatch:v221 fieldRegex:v222];

  *(v220 + 32) = v223;
  v224 = sub_100216964();
  v225 = sub_100216964();
  v226 = [v115 fieldMatch:v224 fieldRegex:v225];

  *(v220 + 40) = v226;
  v227 = sub_100216B14().super.isa;
  v220, v228, v229, v230, v231, v232, v233, v234, v473, v487, v501, v515, v529, v542, v555, v569, v582, v596;
  v235 = [v115 andMatch:v227];

  *(v203 + 40) = v235;
  v236 = sub_100216964();
  v237 = sub_100216964();
  v238 = [v115 fieldMatch:v236 fieldRegex:v237];

  *(v203 + 48) = v238;
  v239 = sub_100216964();
  v240 = sub_100216964();
  v241 = [v115 fieldMatch:v239 fieldRegex:v240];

  *(v203 + 56) = v241;
  v242 = sub_100216B14().super.isa;
  v203, v243, v244, v245, v246, v247, v248, v249, v474, v488, v502, v516, v530, v543, v556, v570, v583, v597;
  v250 = [v115 orMatch:v242];

  v251 = sub_100216964();
  v252 = [v120 TPPBPolicyKeyViewMappingWithView:v251 matchingRule:v250];

  *(v114 + 144) = v252;
  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_10021D8D0;
  v254 = sub_100216964();
  v255 = sub_100216964();
  v256 = [v115 fieldMatch:v254 fieldRegex:v255];

  *(v253 + 32) = v256;
  v257 = swift_allocObject();
  *(v257 + 16) = xmmword_10021D880;
  v258 = sub_100216964();
  v259 = sub_100216964();
  v260 = [v115 fieldMatch:v258 fieldRegex:v259];

  *(v257 + 32) = v260;
  v261 = sub_100216964();
  v262 = sub_100216964();
  v263 = [v115 fieldMatch:v261 fieldRegex:v262];

  *(v257 + 40) = v263;
  v264 = sub_100216964();
  v265 = sub_100216964();
  v266 = [v115 fieldMatch:v264 fieldRegex:v265];

  *(v257 + 48) = v266;
  v267 = sub_100216B14().super.isa;
  v257, v268, v269, v270, v271, v272, v273, v274, v475, v489, v503, v517, v531, v544, v557, v571, v584, v598;
  v275 = [v115 andMatch:v267];

  *(v253 + 40) = v275;
  v276 = sub_100216B14().super.isa;
  v253, v277, v278, v279, v280, v281, v282, v283, v476, v490, v504, v518, v532, v545, v558, v572, v585, v599;
  v284 = [v115 orMatch:v276];

  v285 = sub_100216964();
  v286 = [v120 TPPBPolicyKeyViewMappingWithView:v285 matchingRule:v284];

  *(v114 + 152) = v286;
  v287 = swift_allocObject();
  *(v287 + 16) = xmmword_10021D8F0;
  v288 = sub_100216964();
  v289 = sub_100216964();
  v290 = [v115 fieldMatch:v288 fieldRegex:v289];

  *(v287 + 32) = v290;
  v291 = sub_100216964();
  v292 = sub_100216964();
  v293 = [v115 fieldMatch:v291 fieldRegex:v292];

  *(v287 + 40) = v293;
  v294 = sub_100216964();
  v295 = sub_100216964();
  v296 = [v115 fieldMatch:v294 fieldRegex:v295];

  *(v287 + 48) = v296;
  v297 = sub_100216964();
  v298 = sub_100216964();
  v299 = [v115 fieldMatch:v297 fieldRegex:v298];

  *(v287 + 56) = v299;
  v300 = sub_100216964();
  v301 = sub_100216964();
  v302 = [v115 fieldMatch:v300 fieldRegex:v301];

  *(v287 + 64) = v302;
  v303 = sub_100216964();
  v304 = sub_100216964();
  v305 = [v115 fieldMatch:v303 fieldRegex:v304];

  *(v287 + 72) = v305;
  v306 = sub_100216964();
  v307 = sub_100216964();
  v308 = [v115 fieldMatch:v306 fieldRegex:v307];

  *(v287 + 80) = v308;
  v309 = sub_100216964();
  v310 = sub_100216964();
  v311 = [v115 fieldMatch:v309 fieldRegex:v310];

  *(v287 + 88) = v311;
  v312 = sub_100216964();
  v313 = sub_100216964();
  v314 = [v115 fieldMatch:v312 fieldRegex:v313];

  *(v287 + 96) = v314;
  v315 = sub_100216964();
  v316 = sub_100216964();
  v317 = [v115 fieldMatch:v315 fieldRegex:v316];

  *(v287 + 104) = v317;
  v318 = sub_100216964();
  v319 = sub_100216964();
  v320 = [v115 fieldMatch:v318 fieldRegex:v319];

  *(v287 + 112) = v320;
  v321 = sub_100216964();
  v322 = sub_100216964();
  v323 = [v115 fieldMatch:v321 fieldRegex:v322];

  *(v287 + 120) = v323;
  v324 = sub_100216964();
  v325 = sub_100216964();
  v326 = [v115 fieldMatch:v324 fieldRegex:v325];

  *(v287 + 128) = v326;
  v327 = sub_100216964();
  v328 = sub_100216964();
  v329 = [v115 fieldMatch:v327 fieldRegex:v328];

  *(v287 + 136) = v329;
  v330 = sub_100216B14().super.isa;
  v287, v331, v332, v333, v334, v335, v336, v337, v477, v491, v505, v519, v533, v546, v559, v573, v586, v600;
  v338 = [v115 orMatch:v330];

  v339 = sub_100216964();
  v340 = [v120 TPPBPolicyKeyViewMappingWithView:v339 matchingRule:v338];

  *(v114 + 160) = v340;
  v341 = swift_allocObject();
  *(v341 + 16) = xmmword_10021D8D0;
  v342 = sub_100216964();
  v343 = sub_100216964();
  v344 = [v115 fieldMatch:v342 fieldRegex:v343];

  *(v341 + 32) = v344;
  v345 = sub_100216964();
  v346 = sub_100216964();
  v347 = [v115 fieldMatch:v345 fieldRegex:v346];

  *(v341 + 40) = v347;
  v348 = sub_100216B14().super.isa;
  v341, v349, v350, v351, v352, v353, v354, v355, v478, v492, v506, v520, v534, v547, v560, v574, v587, v601;
  v356 = [v115 orMatch:v348];

  v357 = sub_100216964();
  v358 = [v120 TPPBPolicyKeyViewMappingWithView:v357 matchingRule:v356];

  *(v114 + 168) = v358;
  v359 = swift_allocObject();
  *(v359 + 16) = xmmword_10021D8E0;
  v360 = sub_100216964();
  v361 = sub_100216964();
  v362 = [v115 fieldMatch:v360 fieldRegex:v361];

  *(v359 + 32) = v362;
  v363 = sub_100216964();
  v364 = sub_100216964();
  v365 = [v115 fieldMatch:v363 fieldRegex:v364];

  *(v359 + 40) = v365;
  v366 = sub_100216964();
  v367 = sub_100216964();
  v368 = [v115 fieldMatch:v366 fieldRegex:v367];

  *(v359 + 48) = v368;
  v369 = sub_100216964();
  v370 = sub_100216964();
  v371 = [v115 fieldMatch:v369 fieldRegex:v370];

  *(v359 + 56) = v371;
  v372 = sub_100216964();
  v373 = sub_100216964();
  v374 = [v115 fieldMatch:v372 fieldRegex:v373];

  *(v359 + 64) = v374;
  v375 = sub_100216964();
  v376 = sub_100216964();
  v377 = [v115 fieldMatch:v375 fieldRegex:v376];

  *(v359 + 72) = v377;
  v378 = sub_100216964();
  v379 = sub_100216964();
  v380 = [v115 fieldMatch:v378 fieldRegex:v379];

  *(v359 + 80) = v380;
  v381 = sub_100216964();
  v382 = sub_100216964();
  v383 = [v115 fieldMatch:v381 fieldRegex:v382];

  *(v359 + 88) = v383;
  v384 = sub_100216964();
  v385 = sub_100216964();
  v386 = [v115 fieldMatch:v384 fieldRegex:v385];

  *(v359 + 96) = v386;
  v387 = sub_100216964();
  v388 = sub_100216964();
  v389 = [v115 fieldMatch:v387 fieldRegex:v388];

  *(v359 + 104) = v389;
  v390 = sub_100216964();
  v391 = sub_100216964();
  v392 = [v115 fieldMatch:v390 fieldRegex:v391];

  *(v359 + 112) = v392;
  v393 = sub_100216964();
  v394 = sub_100216964();
  v395 = [v115 fieldMatch:v393 fieldRegex:v394];

  *(v359 + 120) = v395;
  v396 = sub_100216B14().super.isa;
  v359, v397, v398, v399, v400, v401, v402, v403, v479, v493, v507, v521, v535, v548, v561, v575, v588, v602;
  v404 = [v115 orMatch:v396];

  v405 = sub_100216964();
  v406 = [v120 TPPBPolicyKeyViewMappingWithView:v405 matchingRule:v404];

  *(v114 + 176) = v406;
  v407 = swift_allocObject();
  *(v407 + 16) = xmmword_10021D880;
  v408 = sub_100216964();
  v409 = sub_100216964();
  v410 = [v115 fieldMatch:v408 fieldRegex:v409];

  *(v407 + 32) = v410;
  v411 = sub_100216964();
  v412 = sub_100216964();
  v413 = [v115 fieldMatch:v411 fieldRegex:v412];

  *(v407 + 40) = v413;
  v414 = sub_100216964();
  v415 = sub_100216964();
  v416 = [v115 fieldMatch:v414 fieldRegex:v415];

  *(v407 + 48) = v416;
  v417 = sub_100216B14().super.isa;
  v407, v418, v419, v420, v421, v422, v423, v424, v480, v494, v508, v522, v536, v549, v562, v576, v589, v603;
  v425 = [v115 orMatch:v417];

  v426 = sub_100216964();
  v427 = [v120 TPPBPolicyKeyViewMappingWithView:v426 matchingRule:v425];

  *(v114 + 184) = v427;
  v428 = [v115 trueMatch];
  v429 = sub_100216964();
  v430 = [v120 TPPBPolicyKeyViewMappingWithView:v429 matchingRule:v428];

  *(v114 + 192) = v430;
  v431 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v432 = sub_100216B14().super.isa;
  v604, v433, v434, v435, v436, v437, v438, v439, v481, v495, v509, v523, v537, v550, v563, v577, v590, v604;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v440 = sub_100216B14().super.isa;
  v591, v441, v442, v443, v444, v445, v446, v447, v482, v496, v510, v524, v538, v551, v564, v578, v591, v605;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v448 = sub_100216B14().super.isa;
  v579, v449, v450, v451, v452, v453, v454, v455, v483, v497, v511, v525, v539, v552, v565, v579, v592, v606;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v456 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v457 = sub_100216B14().super.isa;
  v114, v458, v459, v460, v461, v462, v463, v464, v484, v498, v512, v526, v540, v553, v566, v580, v593, v607;
  v465 = sub_100216B14().super.isa;
  v466 = sub_100216B14().super.isa;
  v467 = sub_100216B14().super.isa;
  v468 = sub_100216B14().super.isa;
  v469 = [v431 initWithVersion:20 modelToCategory:v432 categoriesByView:v440 introducersByCategory:v448 redactions:v456 keyViewMapping:v457 userControllableViewList:v465 piggybackViews:v466 priorityViews:v467 inheritedExcludedViews:v468 hashAlgo:1];

  return v469;
}

id sub_100046658()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D950;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v602 = v1;
  v30 = sub_100216964();
  v31 = sub_100216964();
  v32 = [v4 TPPBPolicyModelToCategoryWithPrefix:v30 category:v31];

  v1[13] = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10021D980;
  v34 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v36 = objc_opt_self();
  v37 = [v36 TPPBPolicyCategoriesByViewWithView:v34 categories:isa];

  *(v33 + 32) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v36 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v33 + 40) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v36 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v33 + 48) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v36 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v33 + 56) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v36 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v33 + 64) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v36 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v33 + 72) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v36 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v33 + 80) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v36 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v33 + 88) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v36 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v33 + 96) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v36 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v33 + 104) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v36 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v33 + 112) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v36 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v33 + 120) = v70;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v36 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v33 + 128) = v73;
  v74 = sub_100216964();
  v75 = sub_100216B14().super.isa;
  v76 = [v36 TPPBPolicyCategoriesByViewWithView:v74 categories:v75];

  *(v33 + 136) = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v36 TPPBPolicyCategoriesByViewWithView:v77 categories:v78];

  *(v33 + 144) = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v36 TPPBPolicyCategoriesByViewWithView:v80 categories:v81];

  *(v33 + 152) = v82;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = [v36 TPPBPolicyCategoriesByViewWithView:v83 categories:v84];

  *(v33 + 160) = v85;
  v86 = sub_100216964();
  v87 = sub_100216B14().super.isa;
  v88 = [v36 TPPBPolicyCategoriesByViewWithView:v86 categories:v87];

  *(v33 + 168) = v88;
  v89 = sub_100216964();
  v90 = sub_100216B14().super.isa;
  v91 = [v36 TPPBPolicyCategoriesByViewWithView:v89 categories:v90];

  *(v33 + 176) = v91;
  v92 = sub_100216964();
  v93 = sub_100216B14().super.isa;
  v94 = [v36 TPPBPolicyCategoriesByViewWithView:v92 categories:v93];

  *(v33 + 184) = v94;
  v588 = v33;
  v95 = sub_100216964();
  v96 = sub_100216B14().super.isa;
  v97 = [v36 TPPBPolicyCategoriesByViewWithView:v95 categories:v96];

  *(v33 + 192) = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_10021D910;
  v99 = v98;
  v100 = sub_100216964();
  v101 = sub_100216B14().super.isa;
  v102 = objc_opt_self();
  v103 = [v102 TPPBPolicyIntroducersByCategoryWithCategory:v100 introducers:v101];

  v99[4] = v103;
  v104 = sub_100216964();
  v105 = sub_100216B14().super.isa;
  v106 = [v102 TPPBPolicyIntroducersByCategoryWithCategory:v104 introducers:v105];

  v99[5] = v106;
  v107 = sub_100216964();
  v108 = sub_100216B14().super.isa;
  v109 = [v102 TPPBPolicyIntroducersByCategoryWithCategory:v107 introducers:v108];

  v99[6] = v109;
  v110 = sub_100216964();
  v111 = sub_100216B14().super.isa;
  v112 = [v102 TPPBPolicyIntroducersByCategoryWithCategory:v110 introducers:v111];

  v99[7] = v112;
  v113 = sub_100216964();
  v114 = sub_100216B14().super.isa;
  v115 = [v102 TPPBPolicyIntroducersByCategoryWithCategory:v113 introducers:v114];

  v99[8] = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_10021D990;
  v117 = v116;
  v118 = objc_opt_self();
  v119 = sub_100216964();
  v120 = sub_100216964();
  v121 = [v118 fieldMatch:v119 fieldRegex:v120];

  v122 = sub_100216964();
  v123 = objc_opt_self();
  v124 = [v123 TPPBPolicyKeyViewMappingWithView:v122 matchingRule:v121];

  *(v117 + 32) = v124;
  v125 = sub_100216964();
  v126 = sub_100216964();
  v127 = [v118 fieldMatch:v125 fieldRegex:v126];

  v128 = sub_100216964();
  v129 = [v123 TPPBPolicyKeyViewMappingWithView:v128 matchingRule:v127];

  *(v117 + 40) = v129;
  v130 = sub_100216964();
  v131 = sub_100216964();
  v132 = [v118 fieldMatch:v130 fieldRegex:v131];

  v133 = sub_100216964();
  v134 = [v123 TPPBPolicyKeyViewMappingWithView:v133 matchingRule:v132];

  *(v117 + 48) = v134;
  v135 = sub_100216964();
  v136 = sub_100216964();
  v137 = [v118 fieldMatch:v135 fieldRegex:v136];

  v138 = sub_100216964();
  v139 = [v123 TPPBPolicyKeyViewMappingWithView:v138 matchingRule:v137];

  *(v117 + 56) = v139;
  v140 = sub_100216964();
  v141 = sub_100216964();
  v142 = [v118 fieldMatch:v140 fieldRegex:v141];

  v143 = sub_100216964();
  v144 = [v123 TPPBPolicyKeyViewMappingWithView:v143 matchingRule:v142];

  *(v117 + 64) = v144;
  v145 = sub_100216964();
  v146 = sub_100216964();
  v147 = [v118 fieldMatch:v145 fieldRegex:v146];

  v148 = sub_100216964();
  v149 = [v123 TPPBPolicyKeyViewMappingWithView:v148 matchingRule:v147];

  *(v117 + 72) = v149;
  v150 = sub_100216964();
  v151 = sub_100216964();
  v152 = [v118 fieldMatch:v150 fieldRegex:v151];

  v153 = sub_100216964();
  v154 = [v123 TPPBPolicyKeyViewMappingWithView:v153 matchingRule:v152];

  *(v117 + 80) = v154;
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_10021D880;
  v156 = sub_100216964();
  v157 = sub_100216964();
  v158 = [v118 fieldMatch:v156 fieldRegex:v157];

  *(v155 + 32) = v158;
  v159 = sub_100216964();
  v160 = sub_100216964();
  v161 = [v118 fieldMatch:v159 fieldRegex:v160];

  *(v155 + 40) = v161;
  v162 = sub_100216964();
  v163 = sub_100216964();
  v164 = [v118 fieldMatch:v162 fieldRegex:v163];

  *(v155 + 48) = v164;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v165 = sub_100216B14().super.isa;
  v155, v166, v167, v168, v169, v170, v171, v172, v479, v493, v507, v521, v535, "ProtectedCloudStorage", "Security-61901.40.77\n", v99, v588, v602;
  v173 = [v118 orMatch:v165];

  v174 = sub_100216964();
  v175 = [v123 TPPBPolicyKeyViewMappingWithView:v174 matchingRule:v173];

  *(v117 + 88) = v175;
  v176 = sub_100216964();
  v177 = sub_100216964();
  v178 = [v118 fieldMatch:v176 fieldRegex:v177];

  v179 = sub_100216964();
  v180 = [v123 TPPBPolicyKeyViewMappingWithView:v179 matchingRule:v178];

  *(v117 + 96) = v180;
  v181 = sub_100216964();
  v182 = sub_100216964();
  v183 = [v118 fieldMatch:v181 fieldRegex:v182];

  v184 = sub_100216964();
  v185 = [v123 TPPBPolicyKeyViewMappingWithView:v184 matchingRule:v183];

  *(v117 + 104) = v185;
  v186 = sub_100216964();
  v187 = sub_100216964();
  v188 = [v118 fieldMatch:v186 fieldRegex:v187];

  v189 = sub_100216964();
  v190 = [v123 TPPBPolicyKeyViewMappingWithView:v189 matchingRule:v188];

  *(v117 + 112) = v190;
  v191 = sub_100216964();
  v192 = sub_100216964();
  v193 = [v118 fieldMatch:v191 fieldRegex:v192];

  v194 = sub_100216964();
  v195 = [v123 TPPBPolicyKeyViewMappingWithView:v194 matchingRule:v193];

  *(v117 + 120) = v195;
  v196 = sub_100216964();
  v197 = sub_100216964();
  v198 = [v118 fieldMatch:v196 fieldRegex:v197];

  v199 = sub_100216964();
  v200 = [v123 TPPBPolicyKeyViewMappingWithView:v199 matchingRule:v198];

  *(v117 + 128) = v200;
  v201 = sub_100216964();
  v202 = sub_100216964();
  v203 = [v118 fieldMatch:v201 fieldRegex:v202];

  v204 = sub_100216964();
  v205 = [v123 TPPBPolicyKeyViewMappingWithView:v204 matchingRule:v203];

  *(v117 + 136) = v205;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v118 fieldMatch:v206 fieldRegex:v207];

  v209 = sub_100216964();
  v210 = [v123 TPPBPolicyKeyViewMappingWithView:v209 matchingRule:v208];

  *(v117 + 144) = v210;
  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_10021D8B0;
  v212 = swift_allocObject();
  *(v212 + 16) = xmmword_10021D8D0;
  v213 = sub_100216964();
  v214 = sub_100216964();
  v215 = [v118 fieldMatch:v213 fieldRegex:v214];

  *(v212 + 32) = v215;
  v216 = sub_100216964();
  v217 = sub_100216964();
  v218 = [v118 fieldMatch:v216 fieldRegex:v217];

  *(v212 + 40) = v218;
  v219 = sub_100216B14().super.isa;
  v212, v220, v221, v222, v223, v224, v225, v226, v480, v494, v508, v522, v536, v549, v562, v575, v589, v603;
  v227 = [v118 andMatch:v219];

  *(v211 + 32) = v227;
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_10021D8D0;
  v229 = sub_100216964();
  v230 = sub_100216964();
  v231 = [v118 fieldMatch:v229 fieldRegex:v230];

  *(v228 + 32) = v231;
  v232 = sub_100216964();
  v233 = sub_100216964();
  v234 = [v118 fieldMatch:v232 fieldRegex:v233];

  *(v228 + 40) = v234;
  v235 = sub_100216B14().super.isa;
  v228, v236, v237, v238, v239, v240, v241, v242, v481, v495, v509, v523, v537, v550, v563, v576, v590, v604;
  v243 = [v118 andMatch:v235];

  *(v211 + 40) = v243;
  v244 = sub_100216964();
  v245 = sub_100216964();
  v246 = [v118 fieldMatch:v244 fieldRegex:v245];

  *(v211 + 48) = v246;
  v247 = sub_100216964();
  v248 = sub_100216964();
  v249 = [v118 fieldMatch:v247 fieldRegex:v248];

  *(v211 + 56) = v249;
  v250 = sub_100216B14().super.isa;
  v211, v251, v252, v253, v254, v255, v256, v257, v482, v496, v510, v524, v538, v551, v564, v577, v591, v605;
  v258 = [v118 orMatch:v250];

  v259 = sub_100216964();
  v260 = [v123 TPPBPolicyKeyViewMappingWithView:v259 matchingRule:v258];

  *(v117 + 152) = v260;
  v261 = swift_allocObject();
  *(v261 + 16) = xmmword_10021D8D0;
  v262 = sub_100216964();
  v263 = sub_100216964();
  v264 = [v118 fieldMatch:v262 fieldRegex:v263];

  *(v261 + 32) = v264;
  v265 = swift_allocObject();
  *(v265 + 16) = xmmword_10021D880;
  v266 = sub_100216964();
  v267 = sub_100216964();
  v268 = [v118 fieldMatch:v266 fieldRegex:v267];

  *(v265 + 32) = v268;
  v269 = sub_100216964();
  v270 = sub_100216964();
  v271 = [v118 fieldMatch:v269 fieldRegex:v270];

  *(v265 + 40) = v271;
  v272 = sub_100216964();
  v273 = sub_100216964();
  v274 = [v118 fieldMatch:v272 fieldRegex:v273];

  *(v265 + 48) = v274;
  v275 = sub_100216B14().super.isa;
  v265, v276, v277, v278, v279, v280, v281, v282, v483, v497, v511, v525, v539, v552, v565, v578, v592, v606;
  v283 = [v118 andMatch:v275];

  *(v261 + 40) = v283;
  v284 = sub_100216B14().super.isa;
  v261, v285, v286, v287, v288, v289, v290, v291, v484, v498, v512, v526, v540, v553, v566, v579, v593, v607;
  v292 = [v118 orMatch:v284];

  v293 = sub_100216964();
  v294 = [v123 TPPBPolicyKeyViewMappingWithView:v293 matchingRule:v292];

  *(v117 + 160) = v294;
  v295 = swift_allocObject();
  *(v295 + 16) = xmmword_10021D8F0;
  v296 = sub_100216964();
  v297 = sub_100216964();
  v298 = [v118 fieldMatch:v296 fieldRegex:v297];

  *(v295 + 32) = v298;
  v299 = sub_100216964();
  v300 = sub_100216964();
  v301 = [v118 fieldMatch:v299 fieldRegex:v300];

  *(v295 + 40) = v301;
  v302 = sub_100216964();
  v303 = sub_100216964();
  v304 = [v118 fieldMatch:v302 fieldRegex:v303];

  *(v295 + 48) = v304;
  v305 = sub_100216964();
  v306 = sub_100216964();
  v307 = [v118 fieldMatch:v305 fieldRegex:v306];

  *(v295 + 56) = v307;
  v308 = sub_100216964();
  v309 = sub_100216964();
  v310 = [v118 fieldMatch:v308 fieldRegex:v309];

  *(v295 + 64) = v310;
  v311 = sub_100216964();
  v312 = sub_100216964();
  v313 = [v118 fieldMatch:v311 fieldRegex:v312];

  *(v295 + 72) = v313;
  v314 = sub_100216964();
  v315 = sub_100216964();
  v316 = [v118 fieldMatch:v314 fieldRegex:v315];

  *(v295 + 80) = v316;
  v317 = sub_100216964();
  v318 = sub_100216964();
  v319 = [v118 fieldMatch:v317 fieldRegex:v318];

  *(v295 + 88) = v319;
  v320 = sub_100216964();
  v321 = sub_100216964();
  v322 = [v118 fieldMatch:v320 fieldRegex:v321];

  *(v295 + 96) = v322;
  v323 = sub_100216964();
  v324 = sub_100216964();
  v325 = [v118 fieldMatch:v323 fieldRegex:v324];

  *(v295 + 104) = v325;
  v326 = sub_100216964();
  v327 = sub_100216964();
  v328 = [v118 fieldMatch:v326 fieldRegex:v327];

  *(v295 + 112) = v328;
  v329 = sub_100216964();
  v330 = sub_100216964();
  v331 = [v118 fieldMatch:v329 fieldRegex:v330];

  *(v295 + 120) = v331;
  v332 = sub_100216964();
  v333 = sub_100216964();
  v334 = [v118 fieldMatch:v332 fieldRegex:v333];

  *(v295 + 128) = v334;
  v335 = sub_100216964();
  v336 = sub_100216964();
  v337 = [v118 fieldMatch:v335 fieldRegex:v336];

  *(v295 + 136) = v337;
  v338 = sub_100216B14().super.isa;
  v295, v339, v340, v341, v342, v343, v344, v345, v485, v499, v513, v527, v541, v554, v567, v580, v594, v608;
  v346 = [v118 orMatch:v338];

  v347 = sub_100216964();
  v348 = [v123 TPPBPolicyKeyViewMappingWithView:v347 matchingRule:v346];

  *(v117 + 168) = v348;
  v349 = swift_allocObject();
  *(v349 + 16) = xmmword_10021D8D0;
  v350 = sub_100216964();
  v351 = sub_100216964();
  v352 = [v118 fieldMatch:v350 fieldRegex:v351];

  *(v349 + 32) = v352;
  v353 = sub_100216964();
  v354 = sub_100216964();
  v355 = [v118 fieldMatch:v353 fieldRegex:v354];

  *(v349 + 40) = v355;
  v356 = sub_100216B14().super.isa;
  v349, v357, v358, v359, v360, v361, v362, v363, v486, v500, v514, v528, v542, v555, v568, v581, v595, v609;
  v364 = [v118 orMatch:v356];

  v365 = sub_100216964();
  v366 = [v123 TPPBPolicyKeyViewMappingWithView:v365 matchingRule:v364];

  *(v117 + 176) = v366;
  v367 = swift_allocObject();
  *(v367 + 16) = xmmword_10021D8E0;
  v368 = sub_100216964();
  v369 = sub_100216964();
  v370 = [v118 fieldMatch:v368 fieldRegex:v369];

  *(v367 + 32) = v370;
  v371 = sub_100216964();
  v372 = sub_100216964();
  v373 = [v118 fieldMatch:v371 fieldRegex:v372];

  *(v367 + 40) = v373;
  v374 = sub_100216964();
  v375 = sub_100216964();
  v376 = [v118 fieldMatch:v374 fieldRegex:v375];

  *(v367 + 48) = v376;
  v377 = sub_100216964();
  v378 = sub_100216964();
  v379 = [v118 fieldMatch:v377 fieldRegex:v378];

  *(v367 + 56) = v379;
  v380 = sub_100216964();
  v381 = sub_100216964();
  v382 = [v118 fieldMatch:v380 fieldRegex:v381];

  *(v367 + 64) = v382;
  v383 = sub_100216964();
  v384 = sub_100216964();
  v385 = [v118 fieldMatch:v383 fieldRegex:v384];

  *(v367 + 72) = v385;
  v386 = sub_100216964();
  v387 = sub_100216964();
  v388 = [v118 fieldMatch:v386 fieldRegex:v387];

  *(v367 + 80) = v388;
  v389 = sub_100216964();
  v390 = sub_100216964();
  v391 = [v118 fieldMatch:v389 fieldRegex:v390];

  *(v367 + 88) = v391;
  v392 = sub_100216964();
  v393 = sub_100216964();
  v394 = [v118 fieldMatch:v392 fieldRegex:v393];

  *(v367 + 96) = v394;
  v395 = sub_100216964();
  v396 = sub_100216964();
  v397 = [v118 fieldMatch:v395 fieldRegex:v396];

  *(v367 + 104) = v397;
  v398 = sub_100216964();
  v399 = sub_100216964();
  v400 = [v118 fieldMatch:v398 fieldRegex:v399];

  *(v367 + 112) = v400;
  v401 = sub_100216964();
  v402 = sub_100216964();
  v403 = [v118 fieldMatch:v401 fieldRegex:v402];

  *(v367 + 120) = v403;
  v404 = sub_100216B14().super.isa;
  v367, v405, v406, v407, v408, v409, v410, v411, v487, v501, v515, v529, v543, v556, v569, v582, v596, v610;
  v412 = [v118 orMatch:v404];

  v413 = sub_100216964();
  v414 = [v123 TPPBPolicyKeyViewMappingWithView:v413 matchingRule:v412];

  *(v117 + 184) = v414;
  v415 = swift_allocObject();
  *(v415 + 16) = xmmword_10021D880;
  v416 = sub_100216964();
  v417 = sub_100216964();
  v418 = [v118 fieldMatch:v416 fieldRegex:v417];

  *(v415 + 32) = v418;
  v419 = sub_100216964();
  v420 = sub_100216964();
  v421 = [v118 fieldMatch:v419 fieldRegex:v420];

  *(v415 + 40) = v421;
  v422 = sub_100216964();
  v423 = sub_100216964();
  v424 = [v118 fieldMatch:v422 fieldRegex:v423];

  *(v415 + 48) = v424;
  v425 = sub_100216B14().super.isa;
  v415, v426, v427, v428, v429, v430, v431, v432, v488, v502, v516, v530, v544, v557, v570, v583, v597, v611;
  v433 = [v118 orMatch:v425];

  v434 = sub_100216964();
  v435 = [v123 TPPBPolicyKeyViewMappingWithView:v434 matchingRule:v433];

  *(v117 + 192) = v435;
  v436 = [v118 trueMatch];
  v437 = sub_100216964();
  v438 = [v123 TPPBPolicyKeyViewMappingWithView:v437 matchingRule:v436];

  *(v117 + 200) = v438;
  v439 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v440 = sub_100216B14().super.isa;
  v612, v441, v442, v443, v444, v445, v446, v447, v489, v503, v517, v531, v545, v558, v571, v584, v598, v612;
  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v448 = sub_100216B14().super.isa;
  v599, v449, v450, v451, v452, v453, v454, v455, v490, v504, v518, v532, v546, v559, v572, v585, v599, v613;
  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v456 = sub_100216B14().super.isa;
  v586, v457, v458, v459, v460, v461, v462, v463, v491, v505, v519, v533, v547, v560, v573, v586, v600, v614;
  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v464 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v465 = sub_100216B14().super.isa;
  v117, v466, v467, v468, v469, v470, v471, v472, v492, v506, v520, v534, v548, v561, v574, v587, v601, v615;
  v473 = sub_100216B14().super.isa;
  v474 = sub_100216B14().super.isa;
  v475 = sub_100216B14().super.isa;
  v476 = sub_100216B14().super.isa;
  v477 = [v439 initWithVersion:21 modelToCategory:v440 categoriesByView:v448 introducersByCategory:v456 redactions:v464 keyViewMapping:v465 userControllableViewList:v473 piggybackViews:v474 priorityViews:v475 inheritedExcludedViews:v476 hashAlgo:1];

  return v477;
}