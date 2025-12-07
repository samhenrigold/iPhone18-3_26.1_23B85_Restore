uint64_t sub_1D77CF4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_1D78B49C4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D77CF5BC, 0, 0);
}

uint64_t sub_1D77CF5BC()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1D77CD908(sub_1D77CF6D0, v3);

  sub_1D77CE170();
  sub_1D77CE1C8();
  sub_1D78B46B4();

  v4 = v0[1];

  return v4();
}

void sub_1D77CF6F0(uint64_t a1)
{
  if (!qword_1EC9CB990)
  {
    sub_1D77CE170();
    sub_1D77CE1C8();
    v1 = sub_1D78B49F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CB990);
    }
  }
}

void sub_1D77CF76C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for HideMyEmailSignupSectionDescriptor;
    v8[1] = &type metadata for HideMyEmailSignupModel;
    v8[2] = sub_1D77CE118();
    v8[3] = sub_1D77CE220();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D77CF978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D77CF9E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D77CF76C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D77CFA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 6;
  if (v7 >= 2)
  {
    if (v7 != 2)
    {
      return result;
    }
  }

  else
  {
  }

  return result;
}

double sub_1D77CFAEC@<D0>(void *a1@<X0>, double *a2@<X8>, CGFloat a3@<D0>)
{
  sub_1D78B49A4();
  v84 = v6 + -20.0 + -20.0;
  sub_1D778AF9C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v8 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v72 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v89 = v8;
  *(inited + 40) = sub_1D78B61B4();
  v9 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v72;
  *(inited + 72) = v9;
  v88 = objc_opt_self();
  v87 = v9;
  v10 = [v88 labelColor];
  v11 = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 104) = v11;
  *(inited + 80) = v10;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v13 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v14 = sub_1D78B5BB4();

  v15 = [v12 initWithString:v13 attributes:v14];

  sub_1D78B49A4();
  v86 = v15;
  [v15 boundingRectWithSize:3 options:0 context:{v16 - a3, 1.79769313e308}];
  x = v91.origin.x;
  y = v91.origin.y;
  width = v91.size.width;
  height = v91.size.height;
  v21 = CGRectGetWidth(v91);
  v92.origin.x = x;
  v92.origin.y = y;
  v92.size.width = width;
  v92.size.height = height;
  v93.size.height = CGRectGetHeight(v92);
  v93.origin.y = 11.0;
  v93.origin.x = a3;
  v22 = a3;
  v93.size.width = v21;
  v94 = CGRectIntegral(v93);
  v23 = v94.origin.x;
  v24 = v94.origin.y;
  rect = v94.size.width;
  v25 = v94.size.height;
  v73 = a1;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v26 setLineBreakMode_];
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1D78BF690;
  *(v27 + 32) = v89;
  *(v27 + 40) = sub_1D78B61B4();
  *(v27 + 64) = v72;
  *(v27 + 72) = v87;
  *(v27 + 80) = [v88 secondaryLabelColor];
  v28 = *MEMORY[0x1E69DB688];
  *(v27 + 104) = v11;
  *(v27 + 112) = v28;
  *(v27 + 144) = sub_1D773F004(0, &unk_1EE08FCD8, 0x1E69DB7C8);
  *(v27 + 120) = v26;
  v29 = v28;
  v30 = v26;
  sub_1D77FED68(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v32 = sub_1D78B5C44();
  v33 = sub_1D78B5BB4();

  v34 = [v31 initWithString:v32 attributes:v33];

  v35 = v22;
  [v34 boundingRectWithSize:3 options:0 context:{v84 - v22, 1.79769313e308}];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v83 = v24;
  v85 = v23;
  v95.origin.x = v23;
  v95.origin.y = v24;
  v95.size.width = rect;
  v82 = v25;
  v95.size.height = v25;
  v44 = CGRectGetMaxY(v95) + 5.0;
  v96.origin.x = v37;
  v96.origin.y = v39;
  v96.size.width = v41;
  v96.size.height = v43;
  v45 = CGRectGetWidth(v96);
  v97.origin.x = v37;
  v97.origin.y = v39;
  v97.size.width = v41;
  v97.size.height = v43;
  v98.size.height = CGRectGetHeight(v97);
  v98.origin.x = v35;
  v98.origin.y = v44;
  v98.size.width = v45;
  v99 = CGRectIntegral(v98);
  v80 = v99.origin.y;
  v81 = v99.origin.x;
  v78 = v99.size.height;
  v79 = v99.size.width;
  v46 = CGRectGetMaxY(v99) + 12.0;
  sub_1D78B4994();
  v100.origin.x = v47 + -20.0;
  v100.origin.y = v46 * 0.5 + -10.0;
  v100.size.width = 20.0;
  v100.size.height = 20.0;
  v101 = CGRectIntegral(v100);
  v76 = v101.origin.y;
  v77 = v101.origin.x;
  v74 = v101.size.height;
  v75 = v101.size.width;
  if (v73[1])
  {
    sub_1D78B5CE4();
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_1D78BCB50;
    *(v48 + 32) = v89;
    v49 = v89;
    *(v48 + 40) = sub_1D78B61B4();
    *(v48 + 64) = v72;
    *(v48 + 72) = v87;
    v50 = v87;
    v51 = [v88 secondaryLabelColor];
    *(v48 + 104) = v11;
    *(v48 + 80) = v51;
    sub_1D77FED68(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    v52 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v53 = sub_1D78B5C44();

    v54 = sub_1D78B5BB4();

    v55 = [v52 initWithString:v53 attributes:v54];

    sub_1D78B49A4();
    [v55 boundingRectWithSize:3 options:0 context:?];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
  }

  else
  {
    v57 = 0.0;
    v59 = 0.0;
    v61 = 0.0;
    v63 = 0.0;
  }

  v102.origin.x = v57;
  v102.origin.y = v59;
  v102.size.width = v61;
  v102.size.height = v63;
  v64 = v35 + -16.0 - CGRectGetWidth(v102);
  v103.origin.x = v57;
  v103.origin.y = v59;
  v103.size.width = v61;
  v103.size.height = v63;
  v65 = v46 * 0.5 + CGRectGetHeight(v103) * -0.5;
  v104.origin.x = v57;
  v104.origin.y = v59;
  v104.size.width = v61;
  v104.size.height = v63;
  v66 = CGRectGetWidth(v104);
  v105.origin.x = v57;
  v105.origin.y = v59;
  v105.size.width = v61;
  v105.size.height = v63;
  v106.size.height = CGRectGetHeight(v105);
  v106.origin.x = v64;
  v106.origin.y = v65;
  v106.size.width = v66;
  v107 = CGRectIntegral(v106);
  v67 = v107.origin.x;
  v68 = v107.origin.y;
  v69 = v107.size.width;
  v70 = v107.size.height;

  *a2 = v46;
  a2[1] = v67;
  a2[2] = v68;
  a2[3] = v69;
  a2[4] = v70;
  a2[5] = v85;
  a2[6] = v83;
  a2[7] = rect;
  a2[8] = v82;
  a2[9] = v81;
  a2[10] = v80;
  a2[11] = v79;
  a2[12] = v78;
  a2[13] = v77;
  a2[14] = v76;
  a2[15] = v75;
  result = v74;
  a2[16] = v74;
  return result;
}

uint64_t AppleAccountSignInErrorAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AppleAccountSignInErrorAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AppleAccountSignInErrorAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AppleAccountSignInErrorAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D77D058C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77D0650()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AccountPageViewControllerFactory.__allocating_init(accountPageViewControllerFactory:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id AccountPageViewControllerFactory.createAccountPageViewController(for:with:)(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  v5 = sub_1D78B3214();
  v6 = [v4 createAccountPageViewControllerFor_];

  v7 = [a2 traitCollection];
  v8 = [v7 verticalSizeClass];

  v9 = [a2 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v8 != 1)
  {
    if (v8 != 2 || v10 != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v12 = 4;
    goto LABEL_9;
  }

  if ((v10 - 1) < 2)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = 2;
LABEL_9:
  [v6 setModalPresentationStyle_];
  return v6;
}

uint64_t AccountPageViewControllerFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1D77D0964(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  result = [*(v1 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_configurationManager) configuration];
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      v8 = [v7 paidBundleConfig];
      swift_unknownObjectRelease();
      if (!v5)
      {
        swift_unknownObjectRetain();
        if ([v8 isNarrativeAudioEnabled] & 1) != 0 && (objc_msgSend(v3, sel_respondsToSelector_, sel_narrativeTrack))
        {
          v9 = [v3 narrativeTrack];
          if (v9)
          {

            v10 = [v8 audioChannelPaywallOverrideAllowedTagIDs];
            v11 = sub_1D78B5EB4();

            v20[2] = v3;
            v20[3] = v4;
            v21 = 0;
            v33 = *(a1 + 193);
            v34 = *(a1 + 209);
            *v35 = *(a1 + 225);
            *&v35[15] = *(a1 + 240);
            v29 = *(a1 + 129);
            v30 = *(a1 + 145);
            v31 = *(a1 + 161);
            v32 = *(a1 + 177);
            v25 = *(a1 + 65);
            v26 = *(a1 + 81);
            v27 = *(a1 + 97);
            v28 = *(a1 + 113);
            v22 = *(a1 + 17);
            v23 = *(a1 + 33);
            v24 = *(a1 + 49);
            v12 = [PaywallModel.tag.getter() identifier];
            swift_unknownObjectRelease();
            v13 = sub_1D78B5C74();
            v15 = v14;

            v20[0] = v13;
            v20[1] = v15;
            MEMORY[0x1EEE9AC00](v16, v17);
            v19[2] = v20;
            v18 = sub_1D781DA18(sub_1D7782F40, v19, v11);

            swift_unknownObjectRelease();

            return (v18 & 1);
          }
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v18 = 1;
    return (v18 & 1);
  }

  __break(1u);
  return result;
}

double sub_1D77D0C34@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v5 = v4;
  LODWORD(v232) = a3;
  v221 = a4;
  v8 = MEMORY[0x1E69E6720];
  sub_1D77403A8(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v245 = &v218 - v11;
  v12 = type metadata accessor for SubscribeButtonDestination(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v244 = &v218 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_1D78B3294();
  *&v247 = *(v248 - 8);
  v16 = MEMORY[0x1EEE9AC00](v248, v15);
  v220 = &v218 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v243 = &v218 - v19;
  sub_1D77403A8(0, &unk_1EE096460, MEMORY[0x1E6968FB0], v8);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v231 = &v218 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v242 = &v218 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v230 = &v218 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v218 - v32;
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v234 = &v218 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v240 = &v218 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v233 = (&v218 - v42);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v46 = &v218 - v45;
  v48 = MEMORY[0x1EEE9AC00](v44, v47);
  v50 = &v218 - v49;
  v52 = MEMORY[0x1EEE9AC00](v48, v51);
  v237 = &v218 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v241 = &v218 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v239 = &v218 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  v238 = &v218 - v62;
  MEMORY[0x1EEE9AC00](v61, v63);
  v236 = &v218 - v64;
  v65 = a2[13];
  v277 = a2[12];
  v278 = v65;
  v66 = a2[15];
  v279 = a2[14];
  v280 = v66;
  v67 = a2[9];
  v273 = a2[8];
  v274 = v67;
  v68 = a2[11];
  v275 = a2[10];
  v276 = v68;
  v69 = a2[5];
  v269 = a2[4];
  v270 = v69;
  v70 = a2[7];
  v271 = a2[6];
  v272 = v70;
  v71 = a2[1];
  v265 = *a2;
  v266 = v71;
  v72 = a2[3];
  v267 = a2[2];
  v268 = v72;
  v73 = *(v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerManager + 8);
  ObjectType = swift_getObjectType();
  sub_1D7873170(a1, &v249);
  v75 = (*(v73 + 24))(&v249, ObjectType, v73);
  v76 = 0;
  *&v246 = a1;
  if ((a1 - 6) >= 0xFFFFFFFFFFFFFFFDLL && (v75 & 1) == 0)
  {
    v77 = a2[13];
    v261 = a2[12];
    v262 = v77;
    v78 = a2[15];
    v263 = a2[14];
    v264 = v78;
    v79 = a2[9];
    v257 = a2[8];
    v258 = v79;
    v80 = a2[11];
    v259 = a2[10];
    v260 = v80;
    v81 = a2[5];
    v253 = a2[4];
    v254 = v81;
    v82 = a2[7];
    v255 = a2[6];
    v256 = v82;
    v83 = a2[1];
    v249 = *a2;
    v250 = v83;
    v84 = a2[3];
    v251 = a2[2];
    v252 = v84;
    v76 = sub_1D77D0964(&v249);
  }

  v85 = sub_1D77D224C(v76 & 1, &v265, v5, v246);
  sub_1D77D2698(v85, 0, sub_1D77D46E0, v236);
  sub_1D77D2698(v85, 2, sub_1D77D46E0, v238);
  sub_1D77D2698(v85, 0, sub_1D77D4788, v239);
  sub_1D77D2698(v85, 2, sub_1D77D4788, v241);
  if (!v85)
  {
    v96 = v247;
    v93 = *(v247 + 56);
    v94 = 1;
    v87 = v248;
    v93(v50, 1, 1, v248);
    v95 = 0;
LABEL_18:
    *&v235 = v95;
    v93(v237, 1, 1, v87);
    goto LABEL_22;
  }

  v86 = [v85 visualSpecConfig];
  v87 = v248;
  if (v86 && (v88 = v86, v89 = [v86 multiSizeVideo], v88, v89))
  {
    v90 = [v89 small];
    *&v235 = v89;
    if (v90)
    {
      v91 = v90;
      sub_1D78B3254();

      v92 = 0;
    }

    else
    {
      v92 = 1;
    }

    v97 = v247;
    v93 = *(v247 + 56);
    v93(v46, v92, 1, v87);
    v98 = v46;
    v99 = v97;
    sub_1D77D49AC(v98, v50, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    v100 = *(v97 + 48);
    if (v100(v50, 1, v87) != 1)
    {
      v107 = v50;
      v108 = v33;
      v109 = v5;
      v110 = v99;
      v111 = *(v99 + 32);
      v233 = v93;
      v112 = v237;
      v111(v237, v107, v87);
      v113 = v112;
      v93 = v233;
      v233(v113, 0, 1, v87);
      goto LABEL_28;
    }

    v94 = 0;
    v95 = v235;
  }

  else
  {
    v93 = *(v247 + 56);
    v94 = 1;
    v93(v50, 1, 1, v87);
    v95 = 0;
  }

  v101 = [v85 visualSpecConfig];
  if (!v101)
  {
    v96 = v247;
    goto LABEL_18;
  }

  v102 = v101;
  v103 = [v101 videoURL];

  if (v103)
  {
    v104 = v233;
    sub_1D78B3254();

    v105 = v104;
    v106 = 0;
    v87 = v248;
  }

  else
  {
    v106 = 1;
    v87 = v248;
    v105 = v233;
  }

  *&v235 = v95;
  v96 = v247;
  v114 = v105;
  v93(v105, v106, 1, v87);
  sub_1D77D49AC(v114, v237, &unk_1EE096460, MEMORY[0x1E6968FB0]);
LABEL_22:
  v100 = *(v96 + 48);
  if (v100(v50, 1, v87) != 1)
  {
    sub_1D77D4A34(v50, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

  v115 = v234;
  if ((v94 & 1) == 0)
  {
    v108 = v33;
    v109 = v5;
    v110 = v247;
LABEL_28:
    v118 = [v235 large];
    *&v218 = v109;
    if (v118)
    {
      v119 = v108;
      v120 = v118;
      sub_1D78B3254();

      v121 = 0;
    }

    else
    {
      v121 = 1;
      v119 = v108;
    }

    v122 = v110;
    v93(v119, v121, 1, v87);
    v115 = v234;
    sub_1D77D49AC(v119, v234, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    if (v100(v115, 1, v87) != 1)
    {
      v129 = v240;
      (*(v110 + 32))(v240, v115, v87);
      v93(v129, 0, 1, v87);
      v126 = v218;
      v117 = v246;
      goto LABEL_42;
    }

    v5 = v218;
    v117 = v246;
    v116 = v122;
    if (!v85)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v116 = v247;
  v93(v234, 1, 1, v87);
  v117 = v246;
  if (!v85)
  {
    goto LABEL_36;
  }

LABEL_33:
  v123 = [v85 visualSpecConfig];
  if (!v123)
  {
LABEL_36:
    v126 = v5;
    v93(v240, 1, 1, v87);
    goto LABEL_40;
  }

  v124 = v123;
  v125 = [v123 videoURL];

  v126 = v5;
  if (v125)
  {
    v127 = v230;
    sub_1D78B3254();

    v128 = 0;
    v87 = v248;
    v115 = v234;
  }

  else
  {
    v128 = 1;
    v87 = v248;
    v115 = v234;
    v127 = v230;
  }

  v93(v127, v128, 1, v87);
  sub_1D77D49AC(v127, v240, &unk_1EE096460, MEMORY[0x1E6968FB0]);
LABEL_40:
  v110 = v116;
  if (v100(v115, 1, v87) != 1)
  {
    sub_1D77D4A34(v115, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

LABEL_42:
  v233 = v93;
  if (v85)
  {
    v130 = &selRef_isUserSignedIntoiTunes;
    v131 = [v85 visualSpecConfig];
    if (v131)
    {
      v132 = v131;
      v133 = [v131 backgroundColor];

      v134 = swift_allocObject();
      *(v134 + 16) = 0;
      v135 = (v134 + 16);
      *&v251 = sub_1D77D4BF0;
      *(&v251 + 1) = v134;
      *&v249 = MEMORY[0x1E69E9820];
      *(&v249 + 1) = 1107296256;
      *&v250 = sub_1D77DAD54;
      *(&v250 + 1) = &block_descriptor_8;
      v136 = _Block_copy(&v249);

      [v133 readDeconstructedRepresentationWithAcccessor_];

      v130 = &selRef_isUserSignedIntoiTunes;
      _Block_release(v136);
      swift_beginAccess();
      v234 = *v135;
      v137 = v234;
    }

    else
    {
      v234 = 0;
    }

    v139 = [v85 v130[178]];
    if (v139)
    {
      v140 = v139;
      v141 = [v139 darkStyleBackgroundColor];

      v142 = swift_allocObject();
      *(v142 + 16) = 0;
      v143 = (v142 + 16);
      *&v251 = sub_1D77D4A2C;
      *(&v251 + 1) = v142;
      *&v249 = MEMORY[0x1E69E9820];
      *(&v249 + 1) = 1107296256;
      *&v250 = sub_1D77DAD54;
      *(&v250 + 1) = &block_descriptor_13;
      v144 = _Block_copy(&v249);

      [v141 readDeconstructedRepresentationWithAcccessor_];

      v130 = &selRef_isUserSignedIntoiTunes;
      _Block_release(v144);
      swift_beginAccess();
      v230 = *v143;
      v145 = v230;
    }

    else
    {
      v230 = 0;
    }

    v138 = v247;
    v117 = v246;
    v146 = [v85 v130[178]];
    if (v146)
    {
      v147 = v146;
      v229 = [v146 textTopPadding];
    }

    else
    {
      v229 = 0;
    }

    v148 = [v85 v130[178]];
    if (v148)
    {
      v149 = v148;
      v228 = [v148 badgeVerticalOffset];
    }

    else
    {
      v228 = 0;
    }
  }

  else
  {
    v228 = 0;
    v229 = 0;
    v230 = 0;
    v234 = 0;
    v138 = v110;
  }

  v261 = v277;
  v262 = v278;
  v263 = v279;
  v264 = v280;
  v257 = v273;
  v258 = v274;
  v259 = v275;
  v260 = v276;
  v253 = v269;
  v254 = v270;
  v255 = v271;
  v256 = v272;
  v249 = v265;
  v250 = v266;
  v251 = v267;
  v252 = v268;
  v150 = PaywallModel.tag.getter();
  v151 = v232;
  v152 = sub_1D77D2AE8(v85, v117, v150, v232 & 1);
  v226 = v153;
  v227 = v152;
  swift_unknownObjectRelease();
  v261 = v277;
  v262 = v278;
  v263 = v279;
  v264 = v280;
  v257 = v273;
  v258 = v274;
  v259 = v275;
  v260 = v276;
  v253 = v269;
  v254 = v270;
  v255 = v271;
  v256 = v272;
  v249 = v265;
  v250 = v266;
  v251 = v267;
  v252 = v268;
  v154 = PaywallModel.tag.getter();
  v155 = sub_1D77D303C(v85, v117, v154, v151 & 1);
  v224 = v156;
  v225 = v155;
  v222 = v158;
  v223 = v157;
  swift_unknownObjectRelease();
  if (v85)
  {
    v159 = v85;
    v160 = [v159 learnMoreURL];
    v161 = v248;
    if (v160)
    {
      v162 = v220;
      v163 = v160;
      sub_1D78B3254();

      (*(v138 + 32))(v243, v162, v161);
    }

    else
    {

      (*(v138 + 16))(v243, v126 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_defaultLearnMoreURL, v161);
    }
  }

  else
  {
    (*(v138 + 16))(v243, v126 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_defaultLearnMoreURL, v248);
    v159 = 0;
  }

  v164 = [v159 subscriptionButtonConfig];
  v165 = *(v126 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 24);
  v166 = *(v126 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 32);
  __swift_project_boxed_opaque_existential_1((v126 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider), v165);
  sub_1D7873170(v117, &v249);
  v167 = (*(v166 + 32))(&v249, v85, v165, v166);
  if (v168)
  {
    v220 = v168;
    v232 = v167;
    v169 = v248;
    v170 = v231;
    goto LABEL_71;
  }

  v170 = v231;
  if (!v164)
  {
    goto LABEL_69;
  }

  v171 = v164;
  v172 = v171;
  if ((v232 & 1) == 0)
  {
    v173 = [v171 nonTrialText];
    if (v173)
    {
      goto LABEL_66;
    }

    goto LABEL_68;
  }

  v173 = [v171 trialText];
  if (!v173)
  {
LABEL_68:

LABEL_69:
    v232 = 0;
    v220 = 0xE000000000000000;
    goto LABEL_70;
  }

LABEL_66:
  v174 = v173;
  v232 = sub_1D78B5C74();
  v220 = v175;

LABEL_70:
  v169 = v248;
LABEL_71:
  v261 = v277;
  v262 = v278;
  v263 = v279;
  v264 = v280;
  v257 = v273;
  v258 = v274;
  v259 = v275;
  v260 = v276;
  v253 = v269;
  v254 = v270;
  v255 = v271;
  v256 = v272;
  v249 = v265;
  v250 = v266;
  v251 = v267;
  v252 = v268;
  sub_1D77D3690(v164, v85, &v249, v117, v244);
  if (v85)
  {
    v176 = [v159 offersLinkTitle];
    if (v176)
    {
      v177 = v176;
      v231 = sub_1D78B5C74();
      v219 = v178;
    }

    else
    {
      v231 = 0;
      v219 = 0xE000000000000000;
    }

    v179 = [v159 offersLinkURL];
    if (v179)
    {
      v180 = v179;
      sub_1D78B3254();

      v181 = 0;
    }

    else
    {
      v181 = 1;
    }

    v233(v170, v181, 1, v169);
    sub_1D77D49AC(v170, v242, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v233(v242, 1, 1, v169);
    v231 = 0;
    v219 = 0xE000000000000000;
  }

  sub_1D77D42E4(v85, v117, v245);
  v261 = v277;
  v262 = v278;
  v263 = v279;
  v264 = v280;
  v257 = v273;
  v258 = v274;
  v259 = v275;
  v260 = v276;
  v253 = v269;
  v254 = v270;
  v255 = v271;
  v256 = v272;
  v249 = v265;
  v250 = v266;
  v251 = v267;
  v252 = v268;
  v182 = PaywallModel.tag.getter();
  v183 = sub_1D7792EAC(v117, v182, *(v126 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_purchaseProvider));
  swift_unknownObjectRelease();
  LODWORD(v233) = v183;
  if (v183)
  {
    sub_1D77403A8(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_1D78BCAB0;
    v261 = v277;
    v262 = v278;
    v263 = v279;
    v264 = v280;
    v257 = v273;
    v258 = v274;
    v259 = v275;
    v260 = v276;
    v253 = v269;
    v254 = v270;
    v255 = v271;
    v256 = v272;
    v249 = v265;
    v250 = v266;
    v251 = v267;
    v252 = v268;
    v185 = v164;
    v186 = [PaywallModel.tag.getter() name];
    swift_unknownObjectRelease();
    v187 = sub_1D78B5C74();
    v189 = v188;

    v164 = v185;
    *(v184 + 56) = MEMORY[0x1E69E6158];
    *(v184 + 64) = sub_1D775ABD4();
    *(v184 + 32) = v187;
    *(v184 + 40) = v189;
    v138 = v247;
    v190 = sub_1D78B5C94();
    v192 = v191;
    v193 = v235;
    if (v85)
    {
      goto LABEL_82;
    }

LABEL_85:

LABEL_87:
    v202 = 0uLL;
    v247 = 0u;
    v200 = 1;
    goto LABEL_88;
  }

  v190 = 0;
  v192 = 0xE000000000000000;
  v193 = v235;
  if (!v85)
  {
    goto LABEL_85;
  }

LABEL_82:
  v194 = [v159 paywallTopOffsetConfig];
  if (!v194)
  {

    goto LABEL_87;
  }

  v195 = v194;
  [v194 compactPortraitTopOffsetRatio];
  v247 = v196;
  [v195 compactLandscapeTopOffsetRatio];
  v235 = v197;
  [v195 regularPortraitTopOffsetRatio];
  v246 = v198;
  [v195 regularLandscapeTopOffsetRatio];
  v218 = v199;

  v200 = 0;
  *&v201 = v247;
  *(&v201 + 1) = v235;
  v247 = v201;
  *&v202 = v246;
  *(&v202 + 1) = v218;
LABEL_88:
  v246 = v202;
  v203 = type metadata accessor for BundlePaywallViewModel(0);
  v204 = MEMORY[0x1E6968FB0];
  v205 = v221;
  sub_1D77D49AC(v237, &v221[v203[21]], &unk_1EE096460, MEMORY[0x1E6968FB0]);
  sub_1D77D49AC(v240, &v205[v203[22]], &unk_1EE096460, v204);
  v206 = v228;
  *v205 = v229;
  *(v205 + 1) = v206;
  sub_1D77D49AC(v236, &v205[v203[17]], &unk_1EE096460, v204);
  sub_1D77D49AC(v238, &v205[v203[18]], &unk_1EE096460, v204);
  sub_1D77D49AC(v239, &v205[v203[19]], &unk_1EE096460, v204);
  sub_1D77D49AC(v241, &v205[v203[20]], &unk_1EE096460, v204);
  *&v205[v203[23]] = v234;
  *&v205[v203[24]] = v230;
  v207 = v226;
  *(v205 + 2) = v227;
  *(v205 + 3) = v207;
  v208 = v224;
  *(v205 + 4) = v225;
  *(v205 + 5) = v208;
  v209 = v222;
  *(v205 + 6) = v223;
  *(v205 + 7) = v209;
  (*(v138 + 32))(&v205[v203[9]], v243, v248);
  v210 = &v205[v203[10]];
  v211 = v220;
  *v210 = v232;
  v210[1] = v211;
  sub_1D77D4944(v244, &v205[v203[11]], type metadata accessor for SubscribeButtonDestination);
  v212 = &v205[v203[12]];
  v213 = v219;
  *v212 = v231;
  *(v212 + 1) = v213;
  sub_1D77D49AC(v242, &v205[v203[13]], &unk_1EE096460, v204);
  sub_1D77D49AC(v245, &v205[v203[14]], qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  v214 = &v205[v203[15]];
  *v214 = v190;
  v214[1] = v192;
  v205[v203[25]] = v233 & 1;
  v215 = &v205[v203[16]];
  v217 = v246;
  result = *&v247;
  *v215 = v247;
  *(v215 + 1) = v217;
  v215[32] = v200;
  return result;
}

id sub_1D77D224C(char a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a2[13];
    v38 = a2[12];
    v39 = v5;
    v6 = a2[15];
    v40 = a2[14];
    v41 = v6;
    v7 = a2[9];
    v34 = a2[8];
    v35 = v7;
    v8 = a2[11];
    v36 = a2[10];
    v37 = v8;
    v9 = a2[5];
    v30 = a2[4];
    v31 = v9;
    v10 = a2[7];
    v32 = a2[6];
    v33 = v10;
    v11 = a2[1];
    v26 = *a2;
    v27 = v11;
    v12 = a2[3];
    v13 = a2;
    v14 = [PaywallModel.tag.getter() paidBundlePaywallConfiguration];
    swift_unknownObjectRelease();
    if (v14)
    {
      return v14;
    }

    a2 = v13;
  }

  v15 = a2[13];
  v38 = a2[12];
  v39 = v15;
  v16 = a2[15];
  v40 = a2[14];
  v41 = v16;
  v17 = a2[9];
  v34 = a2[8];
  v35 = v17;
  v18 = a2[11];
  v36 = a2[10];
  v37 = v18;
  v19 = a2[5];
  v30 = a2[4];
  v31 = v19;
  v20 = a2[7];
  v32 = a2[6];
  v33 = v20;
  v21 = a2[1];
  v26 = *a2;
  v27 = v21;
  v22 = a2[3];
  v28 = a2[2];
  v29 = v22;
  result = sub_1D77D239C(&v26, a4);
  if (!result)
  {
    return result;
  }

  v24 = result;
  v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v14 = sub_1D789272C(v25, v24);

  return v14;
}

id sub_1D77D239C(_OWORD *a1, uint64_t a2)
{
  v4 = a1[13];
  v24[12] = a1[12];
  v24[13] = v4;
  v5 = a1[15];
  v24[14] = a1[14];
  v24[15] = v5;
  v6 = a1[9];
  v24[8] = a1[8];
  v24[9] = v6;
  v7 = a1[11];
  v24[10] = a1[10];
  v24[11] = v7;
  v8 = a1[5];
  v24[4] = a1[4];
  v24[5] = v8;
  v9 = a1[7];
  v24[6] = a1[6];
  v24[7] = v9;
  v10 = a1[1];
  v24[0] = *a1;
  v24[1] = v10;
  v11 = a1[3];
  v24[2] = a1[2];
  v24[3] = v11;
  result = [*(v2 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_configurationManager) configuration];
  if (result)
  {
    v13 = result;
    if (([result respondsToSelector_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v14 = [v13 paidBundleConfig];
    swift_unknownObjectRelease();
    v15 = *(v2 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerManager + 8);
    ObjectType = swift_getObjectType();
    sub_1D7873170(a2, &v23);
    v17 = (*(v15 + 24))(&v23, ObjectType, v15);
    if ((sub_1D77D4634(v24, v14) & 1) == 0 && (a2 & 0xFFFFFFFFFFFFFFFCLL) != 0xC)
    {
      if (v17)
      {
        v18 = [v14 servicesBundlePaywallConfigurationsByType];
        if (!v18)
        {
LABEL_7:

          return 0;
        }
      }

      else
      {
        v18 = [v14 paywallConfigurationsByType];
        if (!v18)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_18;
    }

    if (v17)
    {
      v19 = [v14 audioServicesBundlePaywallConfigurationsByType];
      if (!v19)
      {
        v19 = [v14 servicesBundlePaywallConfigurationsByType];
        if (!v19)
        {
          v18 = [v14 paywallConfigurationsByType];
          if (!v18)
          {
            goto LABEL_7;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      v19 = [v14 audioPaywallConfigurationsByType];
      if (!v19)
      {
        v18 = [v14 paywallConfigurationsByType];
        if (!v18)
        {
          goto LABEL_7;
        }

LABEL_18:
        v22 = v18;
        sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
        sub_1D773F004(0, &qword_1EE08FD18, 0x1E69B5438);
        sub_1D778FD3C();
        v21 = sub_1D78B5BC4();

        return v21;
      }
    }

    v20 = v19;
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    sub_1D773F004(0, &qword_1EE08FD18, 0x1E69B5438);
    sub_1D778FD3C();
    v21 = sub_1D78B5BC4();

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77D2698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  sub_1D77403A8(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v43 - v18;
  v20 = a3(a2, a1);
  v21 = [objc_opt_self() mainScreen];
  [v21 scale];
  v23 = v22;

  if (v23 < 0.0 || v23 > 1.0)
  {
    if (v23 < 1.0 || v23 > 2.0)
    {
      if (v20)
      {
        v26 = [v20 imageURL3x];
        if (v26)
        {
          v27 = v26;
          sub_1D78B3254();

          v28 = sub_1D78B3294();
          (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
        }

        else
        {

          v41 = sub_1D78B3294();
          (*(*(v41 - 8) + 56))(v12, 1, 1, v41);
        }

        v39 = MEMORY[0x1E6968FB0];
        v40 = v12;
        return sub_1D77D49AC(v40, a4, &unk_1EE096460, v39);
      }
    }

    else if (v20)
    {
      v32 = [v20 imageURL2x];
      if (v32)
      {
        v33 = v32;
        sub_1D78B3254();

        v34 = sub_1D78B3294();
        (*(*(v34 - 8) + 56))(v16, 0, 1, v34);
      }

      else
      {

        v42 = sub_1D78B3294();
        (*(*(v42 - 8) + 56))(v16, 1, 1, v42);
      }

      v39 = MEMORY[0x1E6968FB0];
      v40 = v16;
      return sub_1D77D49AC(v40, a4, &unk_1EE096460, v39);
    }
  }

  else if (v20)
  {
    v29 = [v20 imageURL1x];
    if (v29)
    {
      v30 = v29;
      sub_1D78B3254();

      v31 = sub_1D78B3294();
      (*(*(v31 - 8) + 56))(v19, 0, 1, v31);
    }

    else
    {

      v38 = sub_1D78B3294();
      (*(*(v38 - 8) + 56))(v19, 1, 1, v38);
    }

    v39 = MEMORY[0x1E6968FB0];
    v40 = v19;
    return sub_1D77D49AC(v40, a4, &unk_1EE096460, v39);
  }

  v35 = sub_1D78B3294();
  v36 = *(*(v35 - 8) + 56);

  return v36(a4, 1, 1, v35);
}

id sub_1D77D2AE8(void *a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = (v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider);
  v11 = *(v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 24);
  v12 = *(v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider), v11);
  sub_1D7873170(a2, &v53);
  result = (*(v12 + 8))(&v53, a1, v11, v12);
  if (v14)
  {
    return result;
  }

  if (!a1)
  {
    if (a4)
    {
      v20 = *(v4 + 80);
    }

    else
    {
      v20 = *(v4 + 96);
    }

    return v20;
  }

  v51 = a1;
  v15 = [v51 title];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D78B5C74();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v53 = v17;
  v54 = v19;

  v21 = [a3 name];
  sub_1D78B5C74();

  v22 = sub_1D77BE06C();
  v50 = MEMORY[0x1E69E6158];
  v52 = sub_1D78B62D4();
  v24 = v23;

  v25 = [a3 magazineGenre];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1D78B5C74();
    v29 = v28;

    result = [*(v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_configurationManager) configuration];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v30 = result;
    if ([result respondsToSelector_])
    {
      v31 = [v30 paidBundleConfig];
      swift_unknownObjectRelease();
      v32 = [v31 magazineGenresByGenre];

      if (v32)
      {
        sub_1D773F004(0, &qword_1EC9CA2D8, 0x1E69B5398);
        v33 = sub_1D78B5BC4();

        if (*(v33 + 16))
        {
          v34 = sub_1D777BBB4(v27, v29);
          v36 = v35;

          if (v36)
          {
            v37 = *(*(v33 + 56) + 8 * v34);

            v38 = [v37 localizedDescription];

            if (v38)
            {
              sub_1D78B5C74();

              v53 = v52;
              v54 = v24;
              v52 = sub_1D78B62D4();
              v40 = v39;

              v24 = v40;
            }

            goto LABEL_20;
          }
        }

        else
        {
        }
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

LABEL_20:
  v41 = v10[3];
  v42 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v41);
  sub_1D7873170(a2, &v53);
  (*(v42 + 56))(&v53, v41, v42);
  if (v43)
  {
    v53 = v52;
    v54 = v24;
    v52 = sub_1D78B62D4();
    v45 = v44;

    v24 = v45;
  }

  v46 = v10[3];
  v47 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v46);
  sub_1D7873170(a2, &v53);
  (*(v47 + 64))(&v53, v46, v47);
  if (v48)
  {
    v53 = v52;
    v54 = v24;

    v49 = sub_1D78B62D4();

    return v49;
  }

  else
  {

    return v52;
  }
}

id sub_1D77D303C(void *a1, uint64_t a2, void *a3, char a4)
{
  v9 = (v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider);
  v10 = *(v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 24);
  v11 = *(v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider), v10);
  sub_1D7873170(a2, &v63);
  v12 = (*(v11 + 16))(&v63, a1, v10, v11);
  v14 = v13;
  v15 = v9[3];
  v16 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v15);
  sub_1D7873170(a2, &v63);
  v17 = (*(v16 + 24))(&v63, a1, v15, v16);
  if (v14)
  {
    if ((v17 & 1) == 0)
    {
      return v12;
    }

    goto LABEL_29;
  }

  if (!a1)
  {
    if (a4)
    {
      v12 = *(v61 + 144);
    }

    else
    {
      v12 = *(v61 + 160);
    }

LABEL_29:

    return v12;
  }

  v18 = a1;
  v19 = [v18 learnMoreTitle];
  if (v19)
  {
    v20 = v19;
    sub_1D78B5C74();
  }

  v60 = v18;
  if (a4)
  {
    v21 = [v18 descriptionTrial];
  }

  else
  {
    v21 = [v18 descriptionNonTrial];
  }

  v22 = v21;
  if (v22)
  {
    v23 = v22;
    v24 = sub_1D78B5C74();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v63 = v24;
  v64 = v26;

  v27 = [a3 name];
  v28 = a3;
  sub_1D78B5C74();

  v29 = sub_1D77BE06C();
  v59 = MEMORY[0x1E69E6158];
  v30 = sub_1D78B62D4();
  v32 = v31;

  v33 = [v28 magazineGenre];
  if (!v33)
  {
    v12 = v30;
    goto LABEL_26;
  }

  v34 = v33;
  v35 = sub_1D78B5C74();
  v37 = v36;

  result = [*(v61 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_configurationManager) configuration];
  if (result)
  {
    v39 = result;
    v12 = v30;
    if ([result respondsToSelector_])
    {
      v62 = v35;
      v40 = [v39 paidBundleConfig];
      swift_unknownObjectRelease();
      v41 = [v40 magazineGenresByGenre];

      v42 = a2;
      if (v41)
      {
        sub_1D773F004(0, &qword_1EC9CA2D8, 0x1E69B5398);
        v43 = sub_1D78B5BC4();

        if (*(v43 + 16))
        {
          v44 = sub_1D777BBB4(v62, v37);
          v46 = v45;

          if (v46)
          {
            v47 = *(*(v43 + 56) + 8 * v44);

            v48 = [v47 localizedDescription];

            if (v48)
            {
              sub_1D78B5C74();

              v63 = v12;
              v64 = v32;
              v12 = sub_1D78B62D4();
              v50 = v49;

              v32 = v50;
            }

            goto LABEL_33;
          }
        }

        else
        {
        }
      }

LABEL_33:
      v51 = v9[3];
      v52 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v51);
      sub_1D7873170(v42, &v63);
      (*(v52 + 56))(&v63, v51, v52);
      if (v53)
      {
        v63 = v12;
        v64 = v32;
        v12 = sub_1D78B62D4();
        v55 = v54;

        v32 = v55;
      }

      v56 = v9[3];
      v57 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v56);
      sub_1D7873170(v42, &v63);
      (*(v57 + 64))(&v63, v56, v57);
      if (v58)
      {
        v63 = v12;
        v64 = v32;

        v12 = sub_1D78B62D4();
      }

      return v12;
    }

    swift_unknownObjectRelease();
LABEL_26:
    v42 = a2;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void *sub_1D77D3690@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v136 = a4;
  v137 = a2;
  v8 = sub_1D78B3294();
  v139 = *(v8 - 8);
  v140 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v130 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v131 = &v119[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v128 = &v119[-v17];
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v129 = &v119[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v126 = &v119[-v23];
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v127 = &v119[-v26];
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v124 = &v119[-v29];
  MEMORY[0x1EEE9AC00](v28, v30);
  v125 = &v119[-v31];
  v32 = MEMORY[0x1E69E6720];
  sub_1D77403A8(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v119[-v35];
  sub_1D77403A8(0, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination, v32);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v41 = &v119[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v119[-v43];
  v45 = type metadata accessor for SubscribeButtonDestination(0);
  v46 = *(v45 - 8);
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v50 = MEMORY[0x1EEE9AC00](v48, v49);
  v134 = &v119[-v51];
  MEMORY[0x1EEE9AC00](v50, v52);
  v55 = *a3;
  v56 = *(a3 + 16);
  v57 = *(a3 + 193);
  v58 = *(a3 + 225);
  v159 = *(a3 + 209);
  v160[0] = v58;
  *(v160 + 15) = a3[15];
  v59 = *(a3 + 129);
  v60 = *(a3 + 161);
  v155 = *(a3 + 145);
  v156 = v60;
  v157 = *(a3 + 177);
  v158 = v57;
  v61 = *(a3 + 65);
  v62 = *(a3 + 97);
  v151 = *(a3 + 81);
  v152 = v62;
  v153 = *(a3 + 113);
  v154 = v59;
  v63 = *(a3 + 33);
  v147 = *(a3 + 17);
  v148 = v63;
  v149 = *(a3 + 49);
  v150 = v61;
  if (a1)
  {
    v120 = v56;
    v123 = v55;
    v121 = &v119[-v53];
    v122 = v54;
    v135 = v44;
    v64 = qword_1EE0955D8;
    v141 = a1;
    if (v64 != -1)
    {
      swift_once();
    }

    sub_1D77D4AA4();
    v65 = v138;
    result = sub_1D78B3574();
    v67 = v142;
    if ((v142 & 0x8000000000000000) == 0)
    {
      v132 = v45;
      v133 = a5;
      sub_1D774584C(v65 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider, &v142);
      v68 = *(v144 + 7);
      v69 = *(v144 + 15);
      __swift_project_boxed_opaque_existential_1(&v142, *(v144 + 7));
      sub_1D7873170(v136, &v146);
      v70 = v141;
      v71 = [v141 targetType];
      v72 = [v70 postPurchaseURL];
      if (v72)
      {
        v73 = v72;
        sub_1D78B3254();

        v74 = 0;
      }

      else
      {
        v74 = 1;
      }

      (*(v139 + 56))(v36, v74, 1, v140);
      v77 = v135;
      (*(v69 + 40))(&v146, v137, v71, v36, v68, v69);
      sub_1D77D4A34(v36, &unk_1EE096460, MEMORY[0x1E6968FB0]);
      __swift_destroy_boxed_opaque_existential_1(&v142);
      sub_1D77D4AFC(v77, v41);
      if ((*(v46 + 48))(v41, 1, v132) == 1)
      {
        sub_1D77D4A34(v41, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
        v78 = v67;
        v79 = v133;
        v80 = v141;
        if (!v67)
        {
          v78 = [v141 targetType];
        }

        if (v78 <= 1)
        {
LABEL_15:
          if (!v78)
          {
            v99 = [v80 postPurchaseURL];
            if (!v99)
            {
              goto LABEL_35;
            }

            v95 = v128;
            v100 = v99;
            sub_1D78B3254();

            sub_1D77D4A34(v77, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
            v97 = *(v139 + 32);
            v98 = v129;
            goto LABEL_34;
          }

          if (v78 == 1)
          {
            v81 = sub_1D77D4830(v67, 0, v138, v80);
            if (v82)
            {
              v144[11] = v158;
              v144[12] = v159;
              v145[0] = v160[0];
              *(v145 + 15) = *(v160 + 15);
              v144[7] = v154;
              v144[8] = v155;
              v144[9] = v156;
              v144[10] = v157;
              v83 = v149;
              v144[3] = v150;
              v144[4] = v151;
              v144[5] = v152;
              v144[6] = v153;
              v144[0] = v147;
              v144[1] = v148;
              v84 = v122;
              *v122 = v81;
              *(v84 + 1) = v82;
              v142 = v123;
              v85 = v120;
              v143 = v120;
              v144[2] = v83;
              v86 = [PaywallModel.tag.getter() identifier];
              swift_unknownObjectRelease();
              v87 = sub_1D78B5C74();
              v89 = v88;

              *(v84 + 2) = v87;
              *(v84 + 3) = v89;
              if (v85)
              {
                sub_1D77D4A34(v135, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);

                *(v84 + 4) = 0;
                *(v84 + 5) = 0;
              }

              else
              {
                v111 = [swift_unknownObjectRetain() identifier];
                swift_unknownObjectRelease();
                v112 = sub_1D78B5C74();
                v114 = v113;

                sub_1D77D4A34(v135, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
                *(v84 + 4) = v112;
                *(v84 + 5) = v114;
              }

              sub_1D7740094(0, v90);
              v116 = *(v115 + 80);
              v117 = type metadata accessor for PostPurchaseDestination(0);
              (*(*(v117 - 8) + 56))(&v84[v116], 1, 1, v117);
              swift_storeEnumTagMultiPayload();
              v118 = v121;
              sub_1D77D4944(v84, v121, type metadata accessor for SubscribeButtonDestination);
              v92 = v118;
              v93 = v79;
              return sub_1D77D4944(v92, v93, type metadata accessor for SubscribeButtonDestination);
            }

            v103 = [v80 postPurchaseURL];
            if (v103)
            {
              v95 = v124;
              v104 = v103;
              sub_1D78B3254();

              sub_1D77D4A34(v77, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
              v97 = *(v139 + 32);
              v98 = v125;
              goto LABEL_34;
            }

LABEL_35:
            sub_1D77D4A34(v77, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);

            v109 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
            v110 = type metadata accessor for PostPurchaseDestination(0);
            (*(*(v110 - 8) + 56))(&v79[v109], 1, 1, v110);
            goto LABEL_36;
          }

LABEL_26:
          v94 = [v80 postPurchaseURL];
          if (!v94)
          {
            goto LABEL_35;
          }

          v95 = v130;
          v96 = v94;
          sub_1D78B3254();

          sub_1D77D4A34(v77, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
          v97 = *(v139 + 32);
          v98 = v131;
LABEL_34:
          v105 = v95;
          v106 = v140;
          v97(v98, v105, v140);
          v107 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
          v97(&v79[v107], v98, v106);
          v108 = type metadata accessor for PostPurchaseDestination(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v108 - 8) + 56))(&v79[v107], 0, 1, v108);
LABEL_36:
          *v79 = 0;
          *(v79 + 1) = 0;
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v91 = v134;
        sub_1D77D4944(v41, v134, type metadata accessor for SubscribeButtonDestination);
        v79 = v133;
        v80 = v141;
        if (!v67)
        {
          sub_1D77D4A34(v77, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);

          v92 = v91;
          v93 = v79;
          return sub_1D77D4944(v92, v93, type metadata accessor for SubscribeButtonDestination);
        }

        sub_1D77D4B90(v91);
        v78 = v67;
        if (v67 <= 1)
        {
          goto LABEL_15;
        }
      }

      if (v78 == 2)
      {
        v101 = [v80 postPurchaseURL];
        if (!v101)
        {
          goto LABEL_35;
        }

        v95 = v126;
        v102 = v101;
        sub_1D78B3254();

        sub_1D77D4A34(v77, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
        v97 = *(v139 + 32);
        v98 = v127;
        goto LABEL_34;
      }

      if (v78 == 3)
      {
        sub_1D77D4A34(v77, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);

        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_26;
    }

    __break(1u);
  }

  else
  {
    v75 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
    v76 = type metadata accessor for PostPurchaseDestination(0);
    (*(*(v76 - 8) + 56))(&a5[v75], 1, 1, v76);
    *a5 = 0;
    *(a5 + 1) = 0;

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1D77D42E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D77403A8(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 24);
  v12 = *(v3 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider), v11);
  sub_1D7873170(a2, &v18);
  (*(v12 + 48))(&v18, a1, v11, v12);
  v13 = type metadata accessor for OffersButtonDestination(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_1D77D4A34(v10, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
    v15 = 1;
  }

  else
  {
    sub_1D77D4944(v10, a3, type metadata accessor for OffersButtonDestination);
    v15 = 0;
  }

  return (*(v14 + 56))(a3, v15, 1, v13);
}

char *sub_1D77D44B4()
{

  v1 = OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_defaultLearnMoreURL;
  v2 = sub_1D78B3294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D77D45D4()
{
  sub_1D77D44B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D77D4634(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v4 = *a1;
  swift_unknownObjectRetain();
  if ([a2 isNarrativeAudioEnabled] && (objc_msgSend(v4, sel_respondsToSelector_, sel_narrativeTrack) & 1) != 0)
  {
    v5 = [v4 narrativeTrack];
    swift_unknownObjectRelease();
    if (v5)
    {

      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

id sub_1D77D46E0(uint64_t a1, id a2)
{
  if (a1 == 2)
  {
    if (a2)
    {
      result = [a2 visualSpecConfig];
      if (!result)
      {
        return result;
      }

      v3 = &selRef_darkStyleMultiResolutionImage;
LABEL_8:
      v4 = result;
      v5 = [result *v3];

      return v5;
    }
  }

  else if (a2)
  {
    result = [a2 visualSpecConfig];
    if (!result)
    {
      return result;
    }

    v3 = &selRef_multiResolutionImage;
    goto LABEL_8;
  }

  return 0;
}

id sub_1D77D4788(uint64_t a1, id a2)
{
  if (a1 == 2)
  {
    if (a2)
    {
      result = [a2 visualSpecConfig];
      if (!result)
      {
        return result;
      }

      v3 = &selRef_darkStyleMultiResolutionBadgeImage;
LABEL_8:
      v4 = result;
      v5 = [result *v3];

      return v5;
    }
  }

  else if (a2)
  {
    result = [a2 visualSpecConfig];
    if (!result)
    {
      return result;
    }

    v3 = &selRef_multiResolutionBadgeImage;
    goto LABEL_8;
  }

  return 0;
}

id sub_1D77D4830(uint64_t a1, char a2, uint64_t a3, id a4)
{
  if ((a2 & 1) != 0 || !a1)
  {
    result = [a4 landingPageArticleID];
    if (!result)
    {
      return result;
    }

LABEL_11:
    v7 = result;
    v8 = sub_1D78B5C74();

    return v8;
  }

  if (qword_1EC9C8668 != -1)
  {
    swift_once();
  }

  type metadata accessor for BundlePaywallViewModelFactory(0);
  sub_1D77D4AA4();
  sub_1D78B3574();
  result = v9;
  v6 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v6 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    result = [a4 landingPageArticleID];
    if (result)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_1D77D4944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D77D49AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D77403A8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D77D4A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D77403A8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D77D4AA4()
{
  result = qword_1EE091A60;
  if (!qword_1EE091A60)
  {
    type metadata accessor for BundlePaywallViewModelFactory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE091A60);
  }

  return result;
}

uint64_t sub_1D77D4AFC(uint64_t a1, uint64_t a2)
{
  sub_1D77403A8(0, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77D4B90(uint64_t a1)
{
  v2 = type metadata accessor for SubscribeButtonDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeakPaywallLayoutOptionsProvider.__allocating_init(layoutOptionsProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t WeakPaywallLayoutOptionsProvider.init(layoutOptionsProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

__n128 sub_1D77D4CBC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(v2 + 24);
    v7 = Strong;
    ObjectType = swift_getObjectType();
    *&v13[0] = v7;
    (*(v6 + 8))(a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D77D4D88(v13);
    v10 = v13[7];
    *(a2 + 96) = v13[6];
    *(a2 + 112) = v10;
    *(a2 + 128) = v14;
    v11 = v13[3];
    *(a2 + 32) = v13[2];
    *(a2 + 48) = v11;
    v12 = v13[5];
    *(a2 + 64) = v13[4];
    *(a2 + 80) = v12;
    result = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = result;
  }

  return result;
}

double sub_1D77D4D88(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t WeakPaywallLayoutOptionsProvider.__deallocating_deinit()
{
  sub_1D776ABA8(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 sub_1D77D4DFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(v5 + 24);
    v8 = Strong;
    ObjectType = swift_getObjectType();
    *&v14[0] = v8;
    (*(v7 + 8))(a1, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D77D4D88(v14);
    v11 = v14[7];
    *(a2 + 96) = v14[6];
    *(a2 + 112) = v11;
    *(a2 + 128) = v15;
    v12 = v14[3];
    *(a2 + 32) = v14[2];
    *(a2 + 48) = v12;
    v13 = v14[5];
    *(a2 + 64) = v14[4];
    *(a2 + 80) = v13;
    result = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = result;
  }

  return result;
}

void Offer.buyParams(ignoreType:)(int a1)
{
  v15 = a1;
  v2 = type metadata accessor for OfferAction(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v9 < *(v7 + 16))
    {
      sub_1D778CF14(v10 + *(v3 + 72) * v9, v6);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D77826E8(0);

          v12 = sub_1D78B3294();
          (*(*(v12 - 8) + 8))(v6, v12);
        }
      }

      else
      {
        v13 = *(v6 + 2);
        v16 = *(v6 + 10);
        v17 = v6[90];

        if (v17 - 1) < 2 || (v15)
        {
          return;
        }
      }

      if (v8 == ++v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t Offer.isCarrierLink.getter()
{
  if (!v0[11])
  {
    return AMSMarketingItem.isCIPOffer()();
  }

  if (v0[16] == 0xD000000000000019 && 0x80000001D78CF0C0 == v0[17])
  {
    return 1;
  }

  return sub_1D78B6724();
}

Swift::Bool __swiftcall Offer.trialEligible()()
{
  v1 = type metadata accessor for OfferAction(0);
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v51[-v9];
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v51[-v12];
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  EnumCaseMultiPayload = NFInternalBuild();
  if (EnumCaseMultiPayload)
  {
    v17 = NewsCoreUserDefaults();
    v18 = sub_1D78B5C44();
    v19 = [v17 objectForKey_];

    if (v19)
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    v55 = v53;
    v56 = v54;
    if (*(&v54 + 1))
    {
      LOBYTE(EnumCaseMultiPayload) = swift_dynamicCast();
      if ((EnumCaseMultiPayload & 1) != 0 && v52)
      {
        if (v52 == 1)
        {
          LOBYTE(EnumCaseMultiPayload) = 1;
          return EnumCaseMultiPayload;
        }

        goto LABEL_39;
      }
    }

    else
    {
      LOBYTE(EnumCaseMultiPayload) = sub_1D7756B84(&v55);
    }
  }

  v20 = *(v14 + 16);
  if (!v15)
  {
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        if (i >= *(v14 + 16))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return EnumCaseMultiPayload;
        }

        sub_1D778CF14(v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * i, v13);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D77826E8(0);
          v33 = &v13[*(v32 + 48)];
          v59 = *(v33 + 32);
          v34 = *(v33 + 3);
          v57 = *(v33 + 2);
          v58 = v34;
          v35 = *(v33 + 1);
          v55 = *v33;
          v56 = v35;
          sub_1D77D66B0(&v55);
          v36 = sub_1D78B3294();
          LOBYTE(EnumCaseMultiPayload) = (*(*(v36 - 8) + 8))(v13, v36);
        }

        else if (EnumCaseMultiPayload != 2)
        {
          v37 = *(v13 + 2);
          v38 = *(v13 + 40);
          v39 = *(v13 + 72);
          v57 = *(v13 + 56);
          v58 = v39;
          v59 = *(v13 + 44);
          v55 = *(v13 + 24);
          v56 = v38;

          sub_1D77D66B0(&v55);
          LOBYTE(EnumCaseMultiPayload) = v59;
          return EnumCaseMultiPayload;
        }
      }
    }

    goto LABEL_39;
  }

  if (v15 != 1)
  {
    if (v20)
    {
      for (j = 0; v20 != j; ++j)
      {
        if (j >= *(v14 + 16))
        {
          goto LABEL_42;
        }

        sub_1D778CF14(v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * j, v6);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D77826E8(0);
          v42 = &v6[*(v41 + 48)];
          v59 = *(v42 + 32);
          v43 = *(v42 + 3);
          v57 = *(v42 + 2);
          v58 = v43;
          v44 = *(v42 + 1);
          v55 = *v42;
          v56 = v44;
          sub_1D77D66B0(&v55);
          v45 = sub_1D78B3294();
          LOBYTE(EnumCaseMultiPayload) = (*(*(v45 - 8) + 8))(v6, v45);
        }

        else if (EnumCaseMultiPayload != 2)
        {
          v46 = *(v6 + 2);
          v47 = *(v6 + 40);
          v48 = *(v6 + 72);
          v57 = *(v6 + 56);
          v58 = v48;
          v59 = *(v6 + 44);
          v55 = *(v6 + 24);
          v56 = v47;
          v49 = v6[90];

          sub_1D77D66B0(&v55);
          if (v49 == 2)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

LABEL_39:
    LOBYTE(EnumCaseMultiPayload) = 0;
    return EnumCaseMultiPayload;
  }

  if (!v20)
  {
    goto LABEL_39;
  }

  v21 = 0;
  while (1)
  {
    if (v21 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    sub_1D778CF14(v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    sub_1D77826E8(0);
    v23 = &v10[*(v22 + 48)];
    v59 = *(v23 + 32);
    v24 = *(v23 + 3);
    v57 = *(v23 + 2);
    v58 = v24;
    v25 = *(v23 + 1);
    v55 = *v23;
    v56 = v25;
    sub_1D77D66B0(&v55);
    v26 = sub_1D78B3294();
    LOBYTE(EnumCaseMultiPayload) = (*(*(v26 - 8) + 8))(v10, v26);
LABEL_16:
    if (v20 == ++v21)
    {
      goto LABEL_39;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_16;
  }

  v27 = *(v10 + 2);
  v28 = *(v10 + 40);
  v29 = *(v10 + 72);
  v57 = *(v10 + 56);
  v58 = v29;
  v59 = *(v10 + 44);
  v55 = *(v10 + 24);
  v56 = v28;
  v30 = v10[90];

  sub_1D77D66B0(&v55);
  if (v30 != 1)
  {
    goto LABEL_39;
  }

LABEL_38:
  LOBYTE(EnumCaseMultiPayload) = v59;
  return EnumCaseMultiPayload;
}

uint64_t Offer.isPaidBundleViaOffer.getter()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  if (!*(v0 + 88))
  {
    return AMSMarketingItem.isBundleHardwareOffer()();
  }

  if (*(v0 + 128) == 0xD000000000000025 && 0x80000001D78CF100 == *(v0 + 136))
  {
    return 1;
  }

  return sub_1D78B6724();
}

uint64_t Offer.isLegacyOffer.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 88);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  if (!*(v0 + 40))
  {
    if (v2)
    {
      v6 = v3 == 0xD000000000000025 && 0x80000001D78CF100 == v4;
      if (v6 || (sub_1D78B6724() & 1) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    }

    if (AMSMarketingItem.isBundleHardwareOffer()() || AMSMarketingItem.isCIPOffer()())
    {
      goto LABEL_25;
    }

LABEL_27:
    v7 = Offer.isNewsPlus.getter();
    return v7 & 1;
  }

  if (!v2)
  {
    if (AMSMarketingItem.isCIPOffer()() || v1 == 1 && !AMSMarketingItem.isCIPOffer()())
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

LABEL_3:
  v5 = v3 == 0xD000000000000019 && 0x80000001D78CF0C0 == v4;
  if (!v5 && (sub_1D78B6724() & 1) == 0 && (v3 != 0x7365636976726573 || v4 != 0xEF656C646E75622DLL) && (sub_1D78B6724() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  v7 = 1;
  return v7 & 1;
}

uint64_t static Offer.newsOffer.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D778C858(MEMORY[0x1E69E7CC8]);
  v2 = objc_allocWithZone(MEMORY[0x1E698C988]);
  sub_1D778CDF0();
  v3 = sub_1D78B5BB4();

  v4 = [v2 initWithDictionary_];

  if (qword_1EE093E80 != -1)
  {
    swift_once();
  }

  v5 = byte_1EE09C310;
  v7 = qword_1EE09C318;
  v6 = unk_1EE09C320;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
}

Swift::String_optional __swiftcall Offer.purchaseID()()
{
  v1 = type metadata accessor for OfferAction(0);
  v2 = *(v1 - 8);
  EnumCaseMultiPayload = MEMORY[0x1EEE9AC00](v1, v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 32);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    HIDWORD(v18) = *(v0 + 40);
    v11 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v10 < *(v8 + 16))
    {
      sub_1D778CF14(v11 + *(v2 + 72) * v10, v7);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D77826E8(0);

          v16 = sub_1D78B3294();
          EnumCaseMultiPayload = (*(*(v16 - 8) + 8))(v7, v16);
        }
      }

      else
      {
        v13 = *v7;
        v12 = *(v7 + 1);
        v14 = *(v7 + 2);
        v15 = *(v7 + 10);
        v19 = *(v7 + 6);
        v20 = v15;
        v21 = v7[90];

        if (HIDWORD(v18) == v21)
        {
          EnumCaseMultiPayload = v13;
          goto LABEL_11;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    EnumCaseMultiPayload = 0;
    v12 = 0;
LABEL_11:
    v5 = v12;
  }

  result.value._object = v5;
  result.value._countAndFlagsBits = EnumCaseMultiPayload;
  return result;
}

uint64_t OfferPlacement.pageContext.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    v7 = 0x6575737349666450;
    v8 = 0x2B7377654ELL;
    if (v1 != 4)
    {
      v8 = 0x6C656E6E616843;
    }

    if (v1 - 2 >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x656C6369747241;
    }

    if (*v0)
    {
      v7 = 0x6F69647541;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v2 = 1685024582;
    if (v1 != 9)
    {
      v2 = 0x6E69776F6C6C6F46;
    }

    if (v1 - 10 >= 2)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0x657069636552;
    }

    v4 = 0x50676E69646E614CLL;
    v5 = 0x50676E69646E614CLL;
    if (v1 != 7)
    {
      v5 = 0x656C7A7A7550;
    }

    if (v1 != 6)
    {
      v4 = v5;
    }

    if (*v0 <= 8u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t Offer.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Offer.tagline.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Offer.creationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t Offer.offerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v4 = *(v1 + 144);
  v10 = *(v1 + 128);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 160);
  v6 = *(v1 + 96);
  v9[0] = *(v1 + 80);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D77D7948(v9, v8);
}

uint64_t OfferActionData.callToActionLabel.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OfferActionData.price.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OfferActionData.priceDeltaString.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t type metadata accessor for OfferAction(uint64_t a1)
{
  result = qword_1EE094CB8;
  if (!qword_1EE094CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

NewsSubscription::OfferPlacement_optional __swiftcall OfferPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D77D6058()
{
  v0 = OfferPlacement.rawValue.getter();
  v2 = v1;
  if (v0 == OfferPlacement.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D78B6724();
  }

  return v5 & 1;
}

uint64_t sub_1D77D60F4()
{
  sub_1D78B6814();
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

double sub_1D77D615C(uint64_t a1)
{
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  return result;
}

uint64_t sub_1D77D61C0(uint64_t a1)
{
  sub_1D78B6814();
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

unint64_t sub_1D77D6230@<X0>(unint64_t *a1@<X8>)
{
  result = OfferPlacement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall OfferUpsellScenario.description()()
{
  v1 = 0xE400000000000000;
  v2 = *v0;
  v3 = 1701736302;
  v4 = 0xEE006E6F69746375;
  v5 = 0x6465726563697270;
  v6 = 0xE900000000000065;
  v7 = 0x756C617674736562;
  if (v2 != 3)
  {
    v7 = 0x6974736567677573;
    v6 = 0xEA00000000006E6FLL;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v0)
  {
    v3 = 0x73676E69766173;
    v1 = 0xE700000000000000;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v0 <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t static Offer.== infix(_:_:)()
{
  v0 = Offer.identifier.getter();
  v2 = v1;
  if (v0 == Offer.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D78B6724();
  }

  return v4 & 1;
}

unint64_t Offer.identifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = [v2 itemID];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D78B5C74();
    v10 = v9;

    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v2 hash];
    v8 = sub_1D78B66E4();
    v10 = v12;
    if (v1)
    {
LABEL_3:
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_18:
      if (!AMSMarketingItem.isCIPOffer()())
      {
        goto LABEL_7;
      }

LABEL_19:
      v11 = 0x4C72656972726163;
      goto LABEL_20;
    }
  }

  if (!v3)
  {
    if (!AMSMarketingItem.isBundleHardwareOffer()())
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = 0xD000000000000013;
LABEL_23:
    v15 = v13;
    goto LABEL_24;
  }

  if (v4 == 0xD000000000000025 && 0x80000001D78CF100 == v5 || (sub_1D78B6724() & 1) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v4 == 0xD000000000000019 && 0x80000001D78CF0C0 == v5 || (sub_1D78B6724() & 1) != 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (!v1)
  {
    v11 = 0x73756C507377656ELL;
    goto LABEL_20;
  }

  if (v1 != 1)
  {
    v13 = 0xD000000000000012;
    goto LABEL_23;
  }

  v11 = 0x7365636976726573;
LABEL_20:
  v15 = v11;
LABEL_24:
  MEMORY[0x1DA702FF0](v8, v10);

  return v15;
}

uint64_t sub_1D77D6620()
{
  v0 = Offer.identifier.getter();
  v2 = v1;
  if (v0 == Offer.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D78B6724();
  }

  return v4 & 1;
}

uint64_t Offer.isServicesBundle.getter()
{
  if (!*(v0 + 88))
  {
    return *(v0 + 40) == 1 && !AMSMarketingItem.isCIPOffer()();
  }

  if (*(v0 + 128) == 0x7365636976726573 && *(v0 + 136) == 0xEF656C646E75622DLL)
  {
    return 1;
  }

  return sub_1D78B6724();
}

uint64_t Offer.isNewsPlus.getter()
{
  if (!*(v0 + 88))
  {
    return !*(v0 + 40) && !AMSMarketingItem.isBundleHardwareOffer()();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  if (v1 == 0x756C702D7377656ELL && v2 == 0xE900000000000073)
  {
    return 1;
  }

  v4 = sub_1D78B6724();
  v6 = v1 == 0x756C702D7377656ELL && v2 == 0xEF6F72746E692D73;
  v7 = 1;
  if ((v4 & 1) != 0 || v6)
  {
    return v7;
  }

  return sub_1D78B6724();
}

Swift::String_optional __swiftcall Offer.callToActionLabel()()
{
  v1 = type metadata accessor for OfferAction(0);
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v52 - v12;
  v14 = *(v0 + 32);
  v15 = *(v14 + 16);
  if (!*(v0 + 40))
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    sub_1D778CF14(v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), &v52 - v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D77826E8(0);
        v26 = &v13[*(v25 + 48)];
        v56 = *(v26 + 32);
        v27 = *(v26 + 1);
        v52 = *v26;
        v53 = v27;
        v28 = *(v26 + 3);
        v54 = *(v26 + 2);
        v55 = v28;
        v21 = *(&v52 + 1);
        v22 = v52;

        sub_1D77D66B0(&v52);
        v29 = sub_1D78B3294();
        (*(*(v29 - 8) + 8))(v13, v29);
        goto LABEL_17;
      }

LABEL_20:
      v38 = 0;
      v37 = 0;
      goto LABEL_23;
    }

    v43 = *(v13 + 2);
    v44 = *(v13 + 40);
    v45 = *(v13 + 72);
    v54 = *(v13 + 56);
    v55 = v45;
    v56 = *(v13 + 44);
    v52 = *(v13 + 24);
    v53 = v44;
    v46 = v13[90];

    if (!v46)
    {
LABEL_16:
      v21 = *(&v52 + 1);
      v22 = v52;

      sub_1D77D66B0(&v52);
      goto LABEL_17;
    }

LABEL_19:
    sub_1D77D66B0(&v52);
    goto LABEL_20;
  }

  if (*(v0 + 40) == 1)
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    sub_1D778CF14(v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16)
    {
      if (v16 == 1)
      {
        sub_1D77826E8(0);
        v18 = &v9[*(v17 + 48)];
        v56 = *(v18 + 32);
        v19 = *(v18 + 1);
        v52 = *v18;
        v53 = v19;
        v20 = *(v18 + 3);
        v54 = *(v18 + 2);
        v55 = v20;
        v21 = *(&v52 + 1);
        v22 = v52;

        sub_1D77D66B0(&v52);
        v23 = sub_1D78B3294();
        (*(*(v23 - 8) + 8))(v9, v23);
LABEL_17:
        v37 = v21;
        v38 = v22;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    v39 = *(v9 + 2);
    v40 = *(v9 + 40);
    v41 = *(v9 + 72);
    v54 = *(v9 + 56);
    v55 = v41;
    v56 = *(v9 + 44);
    v52 = *(v9 + 24);
    v53 = v40;
    v42 = v9[90];

    if (v42 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!v15)
  {
    goto LABEL_20;
  }

  sub_1D778CF14(v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v5);
  v30 = swift_getEnumCaseMultiPayload();
  if (!v30)
  {
    v47 = *(v5 + 2);
    v48 = *(v5 + 40);
    v49 = *(v5 + 72);
    v54 = *(v5 + 56);
    v55 = v49;
    v56 = *(v5 + 44);
    v52 = *(v5 + 24);
    v53 = v48;
    v50 = v5[90];

    if (v50 == 2)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (v30 != 1)
  {
    goto LABEL_20;
  }

  sub_1D77826E8(0);
  v32 = &v5[*(v31 + 48)];
  v56 = *(v32 + 32);
  v33 = *(v32 + 1);
  v52 = *v32;
  v53 = v33;
  v34 = *(v32 + 3);
  v54 = *(v32 + 2);
  v55 = v34;
  v35 = v52;

  sub_1D77D66B0(&v52);
  v36 = sub_1D78B3294();
  (*(*(v36 - 8) + 8))(v5, v36);
  v37 = *(&v35 + 1);
  v38 = v35;
LABEL_23:
  result.value._object = v37;
  result.value._countAndFlagsBits = v38;
  return result;
}

Swift::String_optional __swiftcall Offer.price()()
{
  v1 = type metadata accessor for OfferAction(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  if (*(v6 + 16))
  {
    sub_1D778CF14(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v11 = v5[2];
      v12 = v5[5];
      v13 = v5[6];

      v10 = v13;
      v9 = v12;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D77826E8(0);

      v8 = sub_1D78B3294();
      (*(*(v8 - 8) + 8))(v5, v8);
    }
  }

  v9 = 0;
  v10 = 0;
LABEL_7:
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

Swift::Double_optional __swiftcall Offer.priceDelta()()
{
  v1 = type metadata accessor for OfferAction(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 32);
  if (*(v7 + 16))
  {
    sub_1D778CF14(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v11 = *(v6 + 2);
      v12 = *(v6 + 7);

      v10 = v12;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D77826E8(0);

      v9 = sub_1D78B3294();
      (*(*(v9 - 8) + 8))(v6, v9);
    }
  }

  v10 = 0;
LABEL_7:
  result.value = v5;
  result.is_nil = v10;
  return result;
}

Swift::String_optional __swiftcall Offer.priceDeltaString()()
{
  v1 = type metadata accessor for OfferAction(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  if (*(v6 + 16))
  {
    sub_1D778CF14(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v11 = v5[2];
      v13 = v5[9];
      v12 = v5[10];

      v10 = v12;
      v9 = v13;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D77826E8(0);

      v8 = sub_1D78B3294();
      (*(*(v8 - 8) + 8))(v5, v8);
    }
  }

  v9 = 0;
  v10 = 0;
LABEL_7:
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

NewsSubscription::OfferUpsellScenario __swiftcall Offer.upsellScenario()()
{
  v2 = v0;
  v3 = type metadata accessor for OfferAction(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v50 - v11;
  LOBYTE(EnumCaseMultiPayload) = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v50 - v15;
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = *(v17 + 16);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_29;
    }

    v30 = 0;
    while (1)
    {
      if (v30 >= *(v17 + 16))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return EnumCaseMultiPayload;
      }

      sub_1D778CF14(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, v16);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D77826E8(0);
        v32 = &v16[*(v31 + 48)];
        v54 = *(v32 + 32);
        v33 = *(v32 + 3);
        v52 = *(v32 + 2);
        v53 = v33;
        v34 = *(v32 + 1);
        v50 = *v32;
        v51 = v34;
        sub_1D77D66B0(&v50);
        v35 = sub_1D78B3294();
        LOBYTE(EnumCaseMultiPayload) = (*(*(v35 - 8) + 8))(v16, v35);
      }

      else if (EnumCaseMultiPayload != 2)
      {
        v36 = *(v16 + 2);
        v37 = *(v16 + 40);
        v38 = *(v16 + 72);
        v52 = *(v16 + 56);
        v53 = v38;
        v54 = *(v16 + 44);
        v50 = *(v16 + 24);
        v51 = v37;

        LOBYTE(EnumCaseMultiPayload) = sub_1D77D66B0(&v50);
LABEL_28:
        *v2 = HIBYTE(v54);
        return EnumCaseMultiPayload;
      }

      if (v19 == ++v30)
      {
        goto LABEL_29;
      }
    }
  }

  if (v18 != 1)
  {
    if (!v19)
    {
      goto LABEL_29;
    }

    v39 = 0;
    while (1)
    {
      if (v39 >= *(v17 + 16))
      {
        goto LABEL_32;
      }

      sub_1D778CF14(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v39, v8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D77826E8(0);
        v41 = &v8[*(v40 + 48)];
        v54 = *(v41 + 32);
        v42 = *(v41 + 3);
        v52 = *(v41 + 2);
        v53 = v42;
        v43 = *(v41 + 1);
        v50 = *v41;
        v51 = v43;
        sub_1D77D66B0(&v50);
        v44 = sub_1D78B3294();
        LOBYTE(EnumCaseMultiPayload) = (*(*(v44 - 8) + 8))(v8, v44);
      }

      else if (EnumCaseMultiPayload != 2)
      {
        v45 = *(v8 + 2);
        v46 = *(v8 + 40);
        v47 = *(v8 + 72);
        v52 = *(v8 + 56);
        v53 = v47;
        v54 = *(v8 + 44);
        v50 = *(v8 + 24);
        v51 = v46;
        v48 = v8[90];

        LOBYTE(EnumCaseMultiPayload) = sub_1D77D66B0(&v50);
        if (v48 != 2)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      if (v19 == ++v39)
      {
        goto LABEL_29;
      }
    }
  }

  if (!v19)
  {
    goto LABEL_29;
  }

  v20 = 0;
  while (1)
  {
    if (v20 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    sub_1D778CF14(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    sub_1D77826E8(0);
    v22 = &v12[*(v21 + 48)];
    v54 = *(v22 + 32);
    v23 = *(v22 + 3);
    v52 = *(v22 + 2);
    v53 = v23;
    v24 = *(v22 + 1);
    v50 = *v22;
    v51 = v24;
    sub_1D77D66B0(&v50);
    v25 = sub_1D78B3294();
    LOBYTE(EnumCaseMultiPayload) = (*(*(v25 - 8) + 8))(v12, v25);
LABEL_6:
    if (v19 == ++v20)
    {
      goto LABEL_29;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_6;
  }

  v26 = *(v12 + 2);
  v27 = *(v12 + 40);
  v28 = *(v12 + 72);
  v52 = *(v12 + 56);
  v53 = v28;
  v54 = *(v12 + 44);
  v50 = *(v12 + 24);
  v51 = v27;
  v29 = v12[90];

  LOBYTE(EnumCaseMultiPayload) = sub_1D77D66B0(&v50);
  if (v29 == 1)
  {
    goto LABEL_28;
  }

LABEL_29:
  *v2 = 0;
  return EnumCaseMultiPayload;
}

char *Array<A>.purchaseIDs.getter(uint64_t a1)
{
  v2 = type metadata accessor for OfferAction(0);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  v23 = v2;
  do
  {
    sub_1D778CF14(v12, v10);
    sub_1D778CF14(v10, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D77D79D0(v10);
        sub_1D77826E8(0);

        v15 = sub_1D78B3294();
        (*(*(v15 - 8) + 8))(v6, v15);
      }

      else
      {
        sub_1D77D79D0(v10);
      }
    }

    else
    {
      v17 = *(v6 + 1);
      v24 = *v6;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D777AD14(0, *(v14 + 2) + 1, 1, v14);
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        v14 = sub_1D777AD14((v18 > 1), v19 + 1, 1, v14);
      }

      v20 = v24;
      sub_1D77D79D0(v10);
      *(v14 + 2) = v19 + 1;
      v21 = &v14[16 * v19];
      *(v21 + 4) = v20;
      *(v21 + 5) = v17;
    }

    v12 += v13;
    --v11;
  }

  while (v11);
  return v14;
}

uint64_t Array<A>.hasBuyAction.getter(uint64_t a1)
{
  v2 = type metadata accessor for OfferAction(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_1D778CF14(v8, v6);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D77826E8(0);

        v10 = sub_1D78B3294();
        (*(*(v10 - 8) + 8))(v6, v10);
      }

      else if (EnumCaseMultiPayload != 2)
      {
        sub_1D77D79D0(v6);
        return 1;
      }

      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return 0;
}

uint64_t sub_1D77D7948(uint64_t a1, uint64_t a2)
{
  sub_1D7756CF4(0, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77D79D0(uint64_t a1)
{
  v2 = type metadata accessor for OfferAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D77D7A30()
{
  result = qword_1EC9CA2E0;
  if (!qword_1EC9CA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA2E0);
  }

  return result;
}

unint64_t sub_1D77D7A88()
{
  result = qword_1EE094A18;
  if (!qword_1EE094A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094A18);
  }

  return result;
}

unint64_t sub_1D77D7AE0()
{
  result = qword_1EC9CA2E8;
  if (!qword_1EC9CA2E8)
  {
    sub_1D7756CF4(255, &qword_1EC9CA2F0, &type metadata for OfferPlacement, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA2E8);
  }

  return result;
}

unint64_t sub_1D77D7B60()
{
  result = qword_1EC9CA2F8;
  if (!qword_1EC9CA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA2F8);
  }

  return result;
}

void sub_1D77D7C04(uint64_t a1, uint64_t a2)
{
  sub_1D77D7C78(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1D77826E8(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D77D7C78(uint64_t a1, uint64_t a2)
{
  if (!qword_1EE090180)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D77C34AC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE090180);
    }
  }
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D77D7DC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
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

uint64_t sub_1D77D7E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OfferPlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfferPlacement(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D77D7FDC()
{
  v0 = qword_1EC9CA300;

  return v0;
}

uint64_t sub_1D77D8014()
{
  v0 = *a100;

  return v0;
}

uint64_t sub_1D77D804C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D78B3F24();
  sub_1D77456DC(0);
  swift_allocObject();
  result = sub_1D78B4394();
  *a1 = result;
  return result;
}

uint64_t sub_1D77D80DC()
{
  sub_1D78B3F24();
  sub_1D78B4344();

  sub_1D78B3F24();
  sub_1D78B43B4();

  v0 = sub_1D78B4014();
  sub_1D77D9108(0);
  v1 = sub_1D78B4094();

  return v1;
}

uint64_t sub_1D77D8348@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v5;
    return result;
  }

  v5 = sub_1D77D8CE4(*(*result + 16), 0);
  v6 = *(type metadata accessor for SiwaCredentialUploadData(0) - 8);
  v7 = sub_1D77D8E04(&v9, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4, v3);
  v8 = v9;

  result = sub_1D779D528(v8);
  if (v7 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77D844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v20 = a1;
  v4 = type metadata accessor for SiwaCredentialUploadData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = sub_1D78B5264();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7788448();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E7F80], v8);
  v13 = sub_1D78B6134();
  (*(v9 + 8))(v12, v8);
  sub_1D78B3F24();
  sub_1D77D8ADC(v19, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = a2;
  sub_1D77D8B40(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_1D77D8C14(0);
  sub_1D77456DC(0);

  sub_1D78B41E4();

  v16 = sub_1D78B4124();

  return v16;
}

uint64_t sub_1D77D86AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D77D90A4(0, &qword_1EC9CA328, sub_1D77D8C7C, MEMORY[0x1E69E6F90]);
  sub_1D77D8C7C(0);
  v8 = v7 - 8;
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCAB0;
  v11 = (v10 + v9);
  v12 = *(v8 + 56);
  *v11 = a2;
  v11[1] = a3;
  sub_1D77D8ADC(a4, v11 + v12);

  sub_1D77FF304(v10);
  swift_setDeallocating();
  sub_1D77D902C(v11);
  swift_deallocClassInstance();
  v13 = sub_1D78B4324();

  return v13;
}

uint64_t sub_1D77D8810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B5264();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7788448();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E7F80], v4);
  v9 = sub_1D78B6134();
  (*(v5 + 8))(v8, v4);
  sub_1D78B3F24();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1D77BD4B8(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
  sub_1D77456DC(0);

  sub_1D78B41E4();

  v11 = sub_1D78B4124();

  return v11;
}

uint64_t sub_1D77D89EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D77BD4B8(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  v6 = sub_1D78B4334();

  return v6;
}

uint64_t sub_1D77D8A94()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D77D8ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiwaCredentialUploadData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77D8B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiwaCredentialUploadData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D77D8C14(uint64_t a1)
{
  if (!qword_1EC9CA320)
  {
    type metadata accessor for SiwaCredentialUploadData(255);
    v1 = sub_1D78B5BF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA320);
    }
  }
}

void sub_1D77D8C7C(uint64_t a1)
{
  if (!qword_1EC9CA330)
  {
    type metadata accessor for SiwaCredentialUploadData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9CA330);
    }
  }
}

void *sub_1D77D8CE4(uint64_t a1, uint64_t a2)
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

  sub_1D77D90A4(0, &qword_1EC9CA340, type metadata accessor for SiwaCredentialUploadData, MEMORY[0x1E69E6F90]);
  v4 = *(type metadata accessor for SiwaCredentialUploadData(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77D8E04(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SiwaCredentialUploadData(0);
  v34 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v31 - v15;
  v17 = a4 + 8;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[8];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = a1;
    v33 = a3;
    result = 0;
    v21 = 0;
    v31 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[7];
      v28 = *(v34 + 72);
      sub_1D77D8ADC(v27 + v28 * (v26 | (v21 << 6)), v12);
      sub_1D77D8B40(v12, v16);
      sub_1D77D8B40(v16, a2);
      if (v23 == v33)
      {
        a4 = a1;
        a1 = v32;
        a3 = v33;
        goto LABEL_23;
      }

      a2 += v28;
      result = v23;
      v29 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v29)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v30 = v21 + 1;
    }

    else
    {
      v30 = v22;
    }

    v21 = v30 - 1;
    a3 = result;
    a1 = v32;
LABEL_23:
    v18 = v31;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D77D902C(uint64_t a1)
{
  sub_1D77D8C7C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D77D90A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OngoingPurchaseTransactionAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5C94();

  return v2;
}

uint64_t OngoingPurchaseTransactionAlert.message.getter()
{
  if (*v0)
  {
    v1 = [*v0 name];
    v2 = sub_1D78B5C74();
    v4 = v3;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C(0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
  }

  else
  {
    type metadata accessor for Localized();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();
  }

  v10 = sub_1D78B5C94();

  return v10;
}

uint64_t OngoingPurchaseTransactionAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t OngoingPurchaseTransactionAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

id sub_1D77D95C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D77D9894(0, v3, 0);
    v4 = v41;
    v6 = (a2 + 40);
    do
    {
      v7 = *v6;
      v8 = *(v6 - 1);
      v9 = v7;
      v10 = sub_1D77DA218(v9, a1);
      v38 = v11;
      v39 = v10;
      v12 = v36[9];
      v13 = v36[10];
      __swift_project_boxed_opaque_existential_1(v36 + 6, v12);
      v14 = (*(v13 + 8))(v8, v12, v13);
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v22 = v41[2];
      v21 = v41[3];
      if (v22 >= v21 >> 1)
      {
        sub_1D77D9894((v21 > 1), v22 + 1, 1);
      }

      v41[2] = v22 + 1;
      v23 = &v41[6 * v22];
      v23[4] = v39;
      v23[5] = v38;
      v23[6] = v14;
      v23[7] = v16;
      v23[8] = v18;
      v23[9] = v20;
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  v24 = sub_1D77DA760(v4);
  v25 = v36[3];
  v40 = v36[2];
  sub_1D775B6EC(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D78BCAB0;

  v27 = [a1 name];
  v28 = sub_1D78B5C74();
  v30 = v29;

  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1D775ABD4();
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  v31 = sub_1D78B5C94();
  v33 = v32;
  result = [a1 isAuthenticationSetup];
  *a3 = v4;
  *(a3 + 8) = v24 & 1;
  *(a3 + 16) = v40;
  *(a3 + 24) = v25;
  *(a3 + 32) = v31;
  *(a3 + 40) = v33;
  *(a3 + 48) = result ^ 1;
  return result;
}

uint64_t sub_1D77D9808()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocClassInstance();
}

char *sub_1D77D9874(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D77D9A54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D77D9894(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D77D9B64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D77D98B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D77D9C88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D77D98D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D77D9DA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D77D98F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D77D9EF8(a1, a2, a3, *v3, &qword_1EC9CA350, sub_1D77CF6F0, sub_1D77CF6F0);
  *v3 = result;
  return result;
}

void *sub_1D77D9944(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D77D9EF8(a1, a2, a3, *v3, &qword_1EC9CA358, sub_1D77DA840, sub_1D77DA840);
  *v3 = result;
  return result;
}

char *sub_1D77D9994(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D77DA0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D77D99B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D77D9EF8(a1, a2, a3, *v3, &qword_1EE08FA88, sub_1D77DA89C, sub_1D77DA89C);
  *v3 = result;
  return result;
}

void *sub_1D77D9A04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D77D9EF8(a1, a2, a3, *v3, &qword_1EE08FA60, MEMORY[0x1E69B5F80], MEMORY[0x1E69B5F80]);
  *v3 = result;
  return result;
}

char *sub_1D77D9A54(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D77DA934(0, &qword_1EE08FA50, MEMORY[0x1E69E6158]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D77D9B64(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D77DA934(0, &qword_1EC9CA348, &type metadata for OfferDetail);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D77D9C88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D77DA934(0, &qword_1EC9CA360, MEMORY[0x1E69E7CA0] + 8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D77D9DA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D775B6EC(0, &qword_1EC9CA160, &qword_1EC9CA168, MEMORY[0x1E69D6EC8]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D773C9B8(0, &qword_1EC9CA168, MEMORY[0x1E69D6EC8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D77D9EF8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D77DA8D0(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D77DA0EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D77DA934(0, &qword_1EE08E4C8, &type metadata for ConfigurableOfferConfig);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D77DA218(void *a1, id a2)
{
  v3 = [a2 name];
  v4 = sub_1D78B5C74();
  v6 = v5;

  sub_1D78B5CD4();
  sub_1D78B5DD4();

  v7 = [a1 allowsPublisherPhoneApp];
  v8 = [a1 allowsPublisherPadApp];
  v9 = [a1 allowsPublisherWebsite];
  v10 = v9;
  if (v7 || (v8 & v9) == 1 || v8)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D775B6EC(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D78BCAB0;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D775ABD4();
    *(v15 + 32) = v4;
    *(v15 + 40) = v6;
    v16 = sub_1D78B5C94();

    return v16;
  }

  else
  {

    type metadata accessor for Localized();
    v13 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    if (v10)
    {
      sub_1D78B3134();

      return sub_1D78B5DF4();
    }

    else
    {
      v18 = sub_1D78B3134();

      return v18;
    }
  }
}

uint64_t sub_1D77DA760(void *a1)
{
  v1 = a1[2];
  if (v1 == 1)
  {
    return v1;
  }

  if (v1 == 3)
  {
    v3 = a1[4];
    v4 = a1[5];
    if (v3 != a1[10] || v4 != a1[11])
    {
      v6 = a1;
      v7 = sub_1D78B6724();
      a1 = v6;
      v1 = 0;
      if ((v7 & 1) == 0)
      {
        return v1;
      }
    }

    if (v3 != a1[16] || v4 != a1[17])
    {
      goto LABEL_18;
    }

    return 1;
  }

  if (v1 != 2)
  {
    return 0;
  }

  if (a1[4] == a1[10] && a1[5] == a1[11])
  {
    return 1;
  }

LABEL_18:

  return sub_1D78B6724();
}

void sub_1D77DA840(uint64_t a1)
{
  if (!qword_1EC9CA2B8)
  {
    sub_1D77CE1C8();
    v1 = sub_1D78B4914();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA2B8);
    }
  }
}

void sub_1D77DA8D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D77DA934(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D78B66F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t PaywallTrackerType.trackButtonTap(data:paywallModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = *a1;
  v4 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = v4;
  return (*(a4 + 56))(v6, a3, a4);
}

uint64_t PaywallButtonTapData.purchaseID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PaywallButtonTapData.purchaseSessionID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall PaywallButtonTapData.init(target:purchaseID:purchaseSessionID:)(NewsSubscription::PaywallButtonTapData *__return_ptr retstr, NewsSubscription::SubscribeButtonTargetType_optional target, Swift::String_optional purchaseID, Swift::String_optional purchaseSessionID)
{
  retstr->target.value = *target.value;
  retstr->purchaseID = purchaseID;
  retstr->purchaseSessionID = purchaseSessionID;
}

id FCColor.nsu_color.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = (v1 + 16);
  v7[4] = sub_1D77D4A2C;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D77DAD54;
  v7[3] = &block_descriptor_14;
  v3 = _Block_copy(v7);

  [v0 readDeconstructedRepresentationWithAcccessor_];
  _Block_release(v3);
  swift_beginAccess();
  v4 = *v2;
  v5 = *v2;

  return v4;
}

void sub_1D77DACC0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:a2 green:a3 blue:a4 alpha:a5];
  swift_beginAccess();
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
}

double sub_1D77DAD54(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v9(v10, a2, a3, a4, a5);

  return result;
}

uint64_t InAppSubscriptionExpiredAlert.title.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B5C94();

  return v9;
}

uint64_t InAppSubscriptionExpiredAlert.message.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B5C94();

  return v9;
}

uint64_t InAppSubscriptionExpiredAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t InAppSubscriptionExpiredAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t InAppSubscriptionExpiredAlert.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77DB284()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77DB344()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77DB40C(uint64_t *a1, int a2)
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

uint64_t sub_1D77DB454(uint64_t result, int a2, int a3)
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

uint64_t sub_1D77DB4A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D78B6264();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  if (sub_1D78B5D34() < 2)
  {
LABEL_5:

    return 0;
  }

  v9 = sub_1D77DC06C(1uLL, a1, a2);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x1DA702F90](v9, v11, v13, v15);
  v18 = v17;

  v19 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v20 = sub_1D78B5C44();
  v21 = [v19 initWithString_];

  (*(v5 + 104))(v8, *MEMORY[0x1E696A028], v4);
  v22 = sub_1D78B6274();
  LOBYTE(v15) = v23;
  (*(v5 + 8))(v8, v4);
  if (v15)
  {

    goto LABEL_5;
  }

  if (v22 == 1)
  {
    v25 = sub_1D77DB9E4(v16, v18);

    return v25;
  }

  else
  {
    v26 = sub_1D77DBD08(v16, v18);
    v28 = v27;

    if (v28)
    {
      sub_1D774FE1C(0);
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E6530];
      *(v29 + 16) = xmmword_1D78BCAB0;
      v31 = MEMORY[0x1E69E65A8];
      *(v29 + 56) = v30;
      *(v29 + 64) = v31;
      *(v29 + 32) = v22;
      v26 = sub_1D78B5C94();
    }

    else
    {
    }

    return v26;
  }
}

uint64_t sub_1D77DB738(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1D78B6264();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  if (sub_1D78B5D34() < 2)
  {
LABEL_5:

    return 0;
  }

  v11 = sub_1D77DC06C(1uLL, a1, a2);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1DA702F90](v11, v13, v15, v17);
  v20 = v19;

  v21 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v22 = sub_1D78B5C44();
  v23 = [v21 initWithString_];

  (*(v7 + 104))(v10, *MEMORY[0x1E696A028], v6);
  v24 = sub_1D78B6274();
  LOBYTE(v17) = v25;
  result = (*(v7 + 8))(v10, v6);
  if (v17)
  {

    goto LABEL_5;
  }

  v27 = a3 * v24;
  if ((a3 * v24) >> 64 == (a3 * v24) >> 63)
  {
    v28 = sub_1D77DBD08(v18, v20);
    v30 = v29;

    if (v30)
    {
      sub_1D774FE1C(0);
      v31 = swift_allocObject();
      v32 = MEMORY[0x1E69E6530];
      *(v31 + 16) = xmmword_1D78BCAB0;
      v33 = MEMORY[0x1E69E65A8];
      *(v31 + 56) = v32;
      *(v31 + 64) = v33;
      *(v31 + 32) = v27;
      v28 = sub_1D78B5C94();
    }

    else
    {
    }

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77DB9E4(uint64_t a1, uint64_t a2)
{

  while (1)
  {
    v3 = sub_1D78B5D64();
    if (!v4)
    {
      break;
    }

    v5 = v3;
    v6 = v4;
    if (v3 == 89 && v4 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0 || v5 == 77 && v6 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0 || v5 == 87 && v6 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0)
    {

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
      goto LABEL_18;
    }

    if (v5 == 68 && v6 == 0xE100000000000000)
    {

LABEL_16:
      type metadata accessor for Localized();
      v7 = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
LABEL_18:
      v10 = sub_1D78B3134();

      goto LABEL_19;
    }

    v2 = sub_1D78B6724();

    if (v2)
    {
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_19:

  return v10;
}

uint64_t sub_1D77DBD08(uint64_t a1, uint64_t a2)
{

  while (1)
  {
    v3 = sub_1D78B5D64();
    if (!v4)
    {
      break;
    }

    v5 = v3;
    v6 = v4;
    if (v3 == 89 && v4 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0 || v5 == 77 && v6 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0 || v5 == 87 && v6 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0)
    {

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
      goto LABEL_18;
    }

    if (v5 == 68 && v6 == 0xE100000000000000)
    {

LABEL_16:
      type metadata accessor for Localized();
      v7 = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
LABEL_18:
      v10 = sub_1D78B3134();

      goto LABEL_19;
    }

    v2 = sub_1D78B6724();

    if (v2)
    {
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_19:

  return v10;
}

unint64_t sub_1D77DC06C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D78B5D44();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D78B5E04();
}

uint64_t sub_1D77DC11C(void *a1)
{
  v2 = [a1 subscriptionPeriodInISO_8601];
  v3 = sub_1D78B5C74();
  v5 = v4;

  v6 = sub_1D77DB4A4(v3, v5);
  v8 = v7;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_1D78B3134();

  if (!v8)
  {
    return v12;
  }

  v84 = v6;

  v13 = [a1 introductoryOffer];
  if (!v13)
  {

    sub_1D774FE1C(0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D78BCB50;
    v32 = [a1 subscriptionPriceFormatted];
    v33 = sub_1D78B5C74();
    v35 = v34;

    v36 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v37 = sub_1D775ABD4();
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    *(v31 + 96) = v36;
    *(v31 + 104) = v37;
    *(v31 + 64) = v37;
    *(v31 + 72) = v84;
    *(v31 + 80) = v8;
    return sub_1D78B5C94();
  }

  v14 = [a1 introductoryOffer];
  if (!v14)
  {
LABEL_21:
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v15 = v14;
  v80 = v12;
  v16 = [v10 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D78BCB50;
  v18 = [a1 subscriptionPriceFormatted];
  v19 = sub_1D78B5C74();
  v20 = v15;
  v22 = v21;

  v23 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1D775ABD4();
  *(v17 + 32) = v19;
  *(v17 + 40) = v22;
  v25 = v20;
  *(v17 + 96) = v23;
  *(v17 + 104) = v24;
  v79 = v24;
  *(v17 + 64) = v24;
  *(v17 + 72) = v84;
  *(v17 + 80) = v8;

  sub_1D78B5C94();

  v26 = [v20 subscriptionPeriodInISO_8601];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D78B5C74();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  result = [v20 numOfPeriods];
  v12 = v80;
  if (result < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = sub_1D77DB738(v28, v30, result);
  v41 = v40;

  if (!v41)
  {

    goto LABEL_21;
  }

  v78 = v39;

  v42 = [v25 offerType];
  if (v42 != 1)
  {
    if (v42 != 2)
    {
      if (v42 == 3)
      {

        v81 = v41;
        v43 = [v10 bundleForClass_];
        sub_1D78B3134();

        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1D78BCB50;
        v83 = v25;
        v45 = [a1 subscriptionPriceFormatted];
        v46 = sub_1D78B5C74();
        v48 = v47;

        v49 = MEMORY[0x1E69E6158];
        *(v44 + 56) = MEMORY[0x1E69E6158];
        *(v44 + 64) = v79;
        *(v44 + 32) = v46;
        *(v44 + 40) = v48;
        *(v44 + 96) = v49;
        *(v44 + 104) = v79;
        *(v44 + 72) = v84;
        *(v44 + 80) = v8;
        v50 = sub_1D78B5C94();

        v51 = [v10 bundleForClass_];
        sub_1D78B3134();

        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1D78BCAB0;
        *(v52 + 56) = v49;
        *(v52 + 64) = v79;
        v12 = v50;
        *(v52 + 32) = v78;
        *(v52 + 40) = v81;
        sub_1D78B5C94();

        return v12;
      }

      goto LABEL_20;
    }

    v82 = v41;
    v53 = [v10 bundleForClass_];
    sub_1D78B3134();

    v54 = v25;
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1D78BCB50;
    result = [v54 priceFormatted];
    if (result)
    {
      v56 = result;
      swift_bridgeObjectRelease_n();

      v57 = sub_1D78B5C74();
      v59 = v58;

      v60 = MEMORY[0x1E69E6158];
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 64) = v79;
      *(v55 + 32) = v57;
      *(v55 + 40) = v59;
      *(v55 + 96) = v60;
      *(v55 + 104) = v79;
      *(v55 + 72) = v39;
      *(v55 + 80) = v82;
      v12 = sub_1D78B5C94();

      return v12;
    }

    goto LABEL_29;
  }

  v61 = [v25 subscriptionPeriodInISO_8601];
  if (v61)
  {
    v62 = v41;
    v63 = v61;
    v64 = sub_1D78B5C74();
    v66 = v65;

    v41 = v62;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v67 = sub_1D77DB4A4(v64, v66);
  v69 = v68;

  if (!v69)
  {
LABEL_20:

    swift_bridgeObjectRelease_n();
    goto LABEL_21;
  }

  v85 = v67;
  v70 = v41;

  v71 = [v10 bundleForClass_];
  sub_1D78B3134();

  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1D78BF690;
  result = [v25 priceFormatted];
  if (result)
  {
    v73 = result;
    swift_bridgeObjectRelease_n();

    v74 = sub_1D78B5C74();
    v76 = v75;

    v77 = MEMORY[0x1E69E6158];
    *(v72 + 56) = MEMORY[0x1E69E6158];
    *(v72 + 64) = v79;
    *(v72 + 32) = v74;
    *(v72 + 40) = v76;
    *(v72 + 96) = v77;
    *(v72 + 104) = v79;
    *(v72 + 72) = v85;
    *(v72 + 80) = v69;
    *(v72 + 136) = v77;
    *(v72 + 144) = v79;
    *(v72 + 112) = v78;
    *(v72 + 120) = v70;
    v12 = sub_1D78B5C94();

    return v12;
  }

LABEL_30:
  __break(1u);
  return result;
}

NewsSubscription::OfferRefreshContext __swiftcall OfferRefreshContext.init(placement:hint:)(NewsSubscription::OfferPlacement placement, Swift::String_optional hint)
{
  *v2 = *placement;
  *(v2 + 8) = hint;
  result.hint = hint;
  result.placement = placement;
  return result;
}

uint64_t OfferRefreshContext.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  if (!v2)
  {
    return sub_1D78B6834();
  }

  sub_1D78B6834();

  return sub_1D78B5D14();
}

uint64_t OfferRefreshContext.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D78B6814();
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  sub_1D78B6834();
  if (v1)
  {
    sub_1D78B5D14();
  }

  return sub_1D78B6844();
}

uint64_t sub_1D77DCC1C(uint64_t a1)
{
  v2 = *(v1 + 16);
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  if (!v2)
  {
    return sub_1D78B6834();
  }

  sub_1D78B6834();

  return sub_1D78B5D14();
}

uint64_t sub_1D77DCCCC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1D78B6814();
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  sub_1D78B6834();
  if (v2)
  {
    sub_1D78B5D14();
  }

  return sub_1D78B6844();
}

void sub_1D77DCD6C(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4 == 13)
  {
    goto LABEL_8;
  }

  v5 = [*(v2 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager) configuration];
  if (v5)
  {
    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      v7 = [v6 paidBundleConfig];
      swift_unknownObjectRelease();
      v8 = [v7 paywallConfigsOfferType];
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          sub_1D77DD6A8(&v86);

          v105 = v94;
          v106 = v95;
          v107 = v96;
          v101 = v90;
          v102 = v91;
          v103 = v92;
          v104 = v93;
          v97 = v86;
          v98 = v87;
          v99 = v88;
          v100 = v89;
          sub_1D775F3CC(&v97);
          v15 = v95;
          *(a2 + 128) = v94;
          *(a2 + 144) = v15;
          *(a2 + 160) = v96;
          v16 = v91;
          *(a2 + 64) = v90;
          *(a2 + 80) = v16;
          v17 = v93;
          *(a2 + 96) = v92;
          *(a2 + 112) = v17;
          v18 = v87;
          *a2 = v86;
          *(a2 + 16) = v18;
          v14 = v88;
          v13 = v89;
          goto LABEL_9;
        }

        if (v8 == 4)
        {
          LOBYTE(v97) = v4;
          sub_1D77DD820(&v86);
          v105 = v94;
          v106 = v95;
          v107 = v96;
          v101 = v90;
          v102 = v91;
          v103 = v92;
          v104 = v93;
          v97 = v86;
          v98 = v87;
          v99 = v88;
          v100 = v89;
          if (sub_1D775F3CC(&v97) == 1)
          {
            LOBYTE(v64) = 4;
            sub_1D77DD820(&v75);
          }

          else
          {

            v83 = v94;
            v84 = v95;
            v85 = v96;
            v79 = v90;
            v80 = v91;
            v81 = v92;
            v82 = v93;
            v75 = v86;
            v76 = v87;
            v77 = v88;
            v78 = v89;
          }

          v72 = v83;
          v73 = v84;
          v74 = v85;
          v68 = v79;
          v69 = v80;
          v70 = v81;
          v71 = v82;
          v64 = v75;
          v65 = v76;
          v66 = v77;
          v67 = v78;
          sub_1D775F3CC(&v64);
          v23 = v84;
          *(a2 + 128) = v83;
          *(a2 + 144) = v23;
          *(a2 + 160) = v85;
          v24 = v80;
          *(a2 + 64) = v79;
          *(a2 + 80) = v24;
          v25 = v82;
          *(a2 + 96) = v81;
          *(a2 + 112) = v25;
          v26 = v76;
          *a2 = v75;
          *(a2 + 16) = v26;
          v14 = v77;
          v13 = v78;
          goto LABEL_9;
        }
      }

      else if (v8 == 2)
      {
        LOBYTE(v53) = v4;
        sub_1D77DD1F0(&v53, &v86);
        v105 = v94;
        v106 = v95;
        v107 = v96;
        v101 = v90;
        v102 = v91;
        v103 = v92;
        v104 = v93;
        v97 = v86;
        v98 = v87;
        v99 = v88;
        v100 = v89;
        if (sub_1D775F3CC(&v97) == 1)
        {
          LOBYTE(v53) = 4;
          sub_1D77DD1F0(&v53, &v64);
        }

        else
        {

          v72 = v94;
          v73 = v95;
          v74 = v96;
          v68 = v90;
          v69 = v91;
          v70 = v92;
          v71 = v93;
          v64 = v86;
          v65 = v87;
          v66 = v88;
          v67 = v89;
        }

        v50 = v72;
        v51 = v73;
        v46 = v68;
        v47 = v69;
        v48 = v70;
        v49 = v71;
        v42 = v64;
        v43 = v65;
        v44 = v66;
        v45 = v67;
        v61 = v72;
        v62 = v73;
        v57 = v68;
        v58 = v69;
        v59 = v70;
        v60 = v71;
        v53 = v64;
        v54 = v65;
        v52 = v74;
        v63 = v74;
        v55 = v66;
        v56 = v67;
        if (sub_1D775F3CC(&v53) == 1)
        {
          v19 = v51;
          *(a2 + 128) = v50;
          *(a2 + 144) = v19;
          *(a2 + 160) = v52;
          v20 = v47;
          *(a2 + 64) = v46;
          *(a2 + 80) = v20;
          v21 = v49;
          *(a2 + 96) = v48;
          *(a2 + 112) = v21;
          v22 = v43;
          *a2 = v42;
          *(a2 + 16) = v22;
          v14 = v44;
          v13 = v45;
        }

        else
        {
          if (BYTE8(v55) == 1)
          {
            v39 = v61;
            v40 = v62;
            v41 = v63;
            v35 = v57;
            v36 = v58;
            v37 = v59;
            v38 = v60;
            v31 = v53;
            v32 = v54;
            v33 = v55;
            v34 = v56;
            nullsub_1();
          }

          else
          {
            sub_1D77E5878(&v42, &qword_1EE090600, &type metadata for Offer);
            sub_1D775F3AC(&v31);
          }

          v27 = v40;
          *(a2 + 128) = v39;
          *(a2 + 144) = v27;
          *(a2 + 160) = v41;
          v28 = v36;
          *(a2 + 64) = v35;
          *(a2 + 80) = v28;
          v29 = v38;
          *(a2 + 96) = v37;
          *(a2 + 112) = v29;
          v30 = v32;
          *a2 = v31;
          *(a2 + 16) = v30;
          v14 = v33;
          v13 = v34;
        }

        goto LABEL_9;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_8:
    sub_1D775F3AC(&v97);
    v9 = v106;
    *(a2 + 128) = v105;
    *(a2 + 144) = v9;
    *(a2 + 160) = v107;
    v10 = v102;
    *(a2 + 64) = v101;
    *(a2 + 80) = v10;
    v11 = v104;
    *(a2 + 96) = v103;
    *(a2 + 112) = v11;
    v12 = v98;
    *a2 = v97;
    *(a2 + 16) = v12;
    v14 = v99;
    v13 = v100;
LABEL_9:
    *(a2 + 32) = v14;
    *(a2 + 48) = v13;
    return;
  }

  __break(1u);
}

void sub_1D77DD1F0(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;

  sub_1D78B3FC4();

  v68 = v57;
  v69 = v58;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  v67 = v56;
  v60 = v49;
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v79 = v57;
  v80 = v58;
  v75 = v53;
  v76 = v54;
  v77 = v55;
  v78 = v56;
  v71 = v49;
  v72 = v50;
  v70 = v59;
  v81 = v59;
  v73 = v51;
  v74 = v52;
  if (sub_1D775F3CC(&v71) == 1)
  {
    v6 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSeenBestOffers;
    swift_beginAccess();
    v7 = *(v3 + v6);
    if (*(v7 + 16) && (v8 = sub_1D777BE68(v5, 0, 0), (v9 & 1) != 0))
    {
      v10 = *(v7 + 56) + 168 * v8;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v38 = *v10;
      v39 = v12;
      v40 = v11;
      v13 = *(v10 + 48);
      v14 = *(v10 + 64);
      v15 = *(v10 + 96);
      v43 = *(v10 + 80);
      v44 = v15;
      v41 = v13;
      v42 = v14;
      v16 = *(v10 + 112);
      v17 = *(v10 + 128);
      v18 = *(v10 + 144);
      v48 = *(v10 + 160);
      v46 = v17;
      v47 = v18;
      v45 = v16;
      swift_endAccess();
      sub_1D778CEAC(&v38, &v49);

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v19 = qword_1EE09C268;
      sub_1D774FE1C(0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D78BCAB0;
      v57 = v46;
      v58 = v47;
      v59 = v48;
      v53 = v42;
      v54 = v43;
      v55 = v44;
      v56 = v45;
      v49 = v38;
      v50 = v39;
      v51 = v40;
      v52 = v41;
      sub_1D78B6504();
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1D775ABD4();
      *(v20 + 32) = 0;
      *(v20 + 40) = 0xE000000000000000;
      v21 = sub_1D78B60A4();
      sub_1D78B42C4("OfferManager: lastSeenBestOffer found=%{public}@", 48, 2, &dword_1D7739000, v19, v21, v20);

      v57 = v46;
      v58 = v47;
      v59 = v48;
      v53 = v42;
      v54 = v43;
      v55 = v44;
      v56 = v45;
      v49 = v38;
      v50 = v39;
      v51 = v40;
      v52 = v41;
      nullsub_1();
    }

    else
    {
      swift_endAccess();

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v32 = qword_1EE09C268;
      v33 = sub_1D78B60A4();
      sub_1D78B42C4("OfferManager: no bestOffer found", 32, 2, &dword_1D7739000, v32, v33, MEMORY[0x1E69E7CC0]);
      sub_1D775F3AC(&v49);
    }

    v34 = v58;
    *(a2 + 128) = v57;
    *(a2 + 144) = v34;
    *(a2 + 160) = v59;
    v35 = v54;
    *(a2 + 64) = v53;
    *(a2 + 80) = v35;
    v36 = v56;
    *(a2 + 96) = v55;
    *(a2 + 112) = v36;
    v37 = v50;
    *a2 = v49;
    *(a2 + 16) = v37;
    v31 = v51;
    v30 = v52;
  }

  else
  {

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v22 = qword_1EE09C268;
    sub_1D774FE1C(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D78BCAB0;
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    v57 = v79;
    v58 = v80;
    v59 = v81;
    v53 = v75;
    v54 = v76;
    v55 = v77;
    v56 = v78;
    v49 = v71;
    v50 = v72;
    v51 = v73;
    v52 = v74;
    sub_1D78B6504();
    v24 = v38;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D775ABD4();
    *(v23 + 32) = v24;
    v25 = sub_1D78B60A4();
    sub_1D78B42C4("OfferManager: cachedBestOffer found=%{public}@", 46, 2, &dword_1D7739000, v22, v25, v23);

    v26 = v69;
    *(a2 + 128) = v68;
    *(a2 + 144) = v26;
    *(a2 + 160) = v70;
    v27 = v65;
    *(a2 + 64) = v64;
    *(a2 + 80) = v27;
    v28 = v67;
    *(a2 + 96) = v66;
    *(a2 + 112) = v28;
    v29 = v61;
    *a2 = v60;
    *(a2 + 16) = v29;
    v31 = v62;
    v30 = v63;
  }

  *(a2 + 32) = v31;
  *(a2 + 48) = v30;
}

__n128 sub_1D77DD6A8@<Q0>(uint64_t a3@<X8>)
{

  sub_1D78B3FC4();

  v16[8] = v13;
  v16[9] = v14;
  v16[4] = v9;
  v16[5] = v10;
  v16[6] = v11;
  v16[7] = v12;
  v16[0] = v5;
  v16[1] = v6;
  v17 = v15;
  v16[2] = v7;
  v16[3] = v8;
  if (sub_1D775F3CC(v16) == 1)
  {

    sub_1D78B3FC4();
  }

  else
  {
    *(a3 + 128) = v13;
    *(a3 + 144) = v14;
    *(a3 + 160) = v15;
    *(a3 + 64) = v9;
    *(a3 + 80) = v10;
    *(a3 + 96) = v11;
    *(a3 + 112) = v12;
    *a3 = v5;
    *(a3 + 16) = v6;
    result = v8;
    *(a3 + 32) = v7;
    *(a3 + 48) = v8;
  }

  return result;
}

void sub_1D77DD820(uint64_t a2@<X8>)
{
  v3 = v2;

  sub_1D78B3FC4();

  v44 = v33;
  v45 = v34;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v55 = v33;
  v56 = v34;
  v51 = v29;
  v52 = v30;
  v53 = v31;
  v54 = v32;
  v47 = v25;
  v48 = v26;
  v46 = v35;
  v57 = v35;
  v49 = v27;
  v50 = v28;
  if (sub_1D775F3CC(&v47) == 1)
  {
    v5 = v45;
    *(a2 + 128) = v44;
    *(a2 + 144) = v5;
    *(a2 + 160) = v46;
    v6 = v41;
    *(a2 + 64) = v40;
    *(a2 + 80) = v6;
    v7 = v43;
    *(a2 + 96) = v42;
    *(a2 + 112) = v7;
    v8 = v37;
    *a2 = v36;
    *(a2 + 16) = v8;
    v10 = v38;
    v9 = v39;
LABEL_13:
    *(a2 + 32) = v10;
    *(a2 + 48) = v9;
    return;
  }

  v33 = v55;
  v34 = v56;
  v35 = v57;
  v29 = v51;
  v30 = v52;
  v31 = v53;
  v32 = v54;
  v25 = v47;
  v26 = v48;
  v27 = v49;
  v28 = v50;
  v58 = Offer.priceDelta()();
  if (v11)
  {
    goto LABEL_11;
  }

  v12 = *&v58.is_nil;
  v13 = [*(v3 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager) configuration];
  if (v13)
  {
    v14 = v13;
    if ([v13 respondsToSelector_])
    {
      v15 = [v14 paidBundleConfig];
      swift_unknownObjectRelease();
      [v15 maxPriceDeltaThreshold];
      v17 = v16;

      if (v17 > v12)
      {
        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        sub_1D774FE1C(0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1D78BCB50;
        v19 = MEMORY[0x1E69E63B0];
        v20 = MEMORY[0x1E69E6438];
        *(v18 + 56) = MEMORY[0x1E69E63B0];
        *(v18 + 64) = v20;
        *(v18 + 32) = v12;
        *(v18 + 96) = v19;
        *(v18 + 104) = v20;
        *(v18 + 72) = v17;
        sub_1D78B60A4();
        sub_1D78B42C4("OfferManager: Returning servicesBundle with priceDelta=%f less than maxThreshold=%f", *&v25, *(&v25 + 1));

        v33 = v55;
        v34 = v56;
        v35 = v57;
        v29 = v51;
        v30 = v52;
        v31 = v53;
        v32 = v54;
        v25 = v47;
        v26 = v48;
        v27 = v49;
        v28 = v50;
        nullsub_1();
        goto LABEL_12;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_11:
    sub_1D77E5878(&v36, &qword_1EE090600, &type metadata for Offer);
    sub_1D775F3AC(&v25);
LABEL_12:
    v21 = v34;
    *(a2 + 128) = v33;
    *(a2 + 144) = v21;
    *(a2 + 160) = v35;
    v22 = v30;
    *(a2 + 64) = v29;
    *(a2 + 80) = v22;
    v23 = v32;
    *(a2 + 96) = v31;
    *(a2 + 112) = v23;
    v24 = v26;
    *a2 = v25;
    *(a2 + 16) = v24;
    v10 = v27;
    v9 = v28;
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1D77DDB4C(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 13)
  {
    sub_1D775F3AC(&v21);
    v3 = v30;
    *(a2 + 128) = v29;
    *(a2 + 144) = v3;
    *(a2 + 160) = v31;
    v4 = v26;
    *(a2 + 64) = v25;
    *(a2 + 80) = v4;
    v5 = v28;
    *(a2 + 96) = v27;
    *(a2 + 112) = v5;
    v6 = v22;
    *a2 = v21;
    *(a2 + 16) = v6;
    v8 = v23;
    v7 = v24;
LABEL_8:
    *(a2 + 32) = v8;
    *(a2 + 48) = v7;
    return;
  }

  sub_1D78B3FC4();

  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v21 = v10;
  v22 = v11;
  v31 = v20;
  v23 = v12;
  v24 = v13;
  if (sub_1D775F3CC(&v21) != 1)
  {
    *(a2 + 128) = v18;
    *(a2 + 144) = v19;
    *(a2 + 160) = v20;
    *(a2 + 64) = v14;
    *(a2 + 80) = v15;
    *(a2 + 96) = v16;
    *(a2 + 112) = v17;
    *a2 = v10;
    *(a2 + 16) = v11;
    v8 = v12;
    v7 = v13;
    goto LABEL_8;
  }

  v9 = qword_1EE093E80;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_1D78B3FC4();
}

double sub_1D77DDD40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1D78B52D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  *v9 = sub_1D78B6104();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v10 = sub_1D78B52F4();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for DisposableOfferObserver();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v11 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v12 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_observers;
  swift_beginAccess();

  MEMORY[0x1DA703120](v13);
  if (*((*(v3 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_1D78B5F04();
  }

  sub_1D78B5F24();
  swift_endAccess();

  return result;
}

double sub_1D77DDF4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D78B52D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  *v8 = sub_1D78B6104();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v9 = sub_1D78B52F4();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v9 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_observers;
    swift_beginAccess();
    v4 = *(v2 + v9);
    v17 = MEMORY[0x1E69E7CC0];
    if (!(v4 >> 62))
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  v10 = sub_1D78B6534();
LABEL_4:

  if (v10)
  {
    v15 = v9;
    v16 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v2, v4);
        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v2 = v16;
          v13 = v17;
          v9 = v15;
          goto LABEL_19;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_16;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v9 = Strong, swift_unknownObjectRelease(), v9 == a1))
      {
      }

      else
      {
        v9 = &v17;
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      ++v2;
      if (v11 == v10)
      {
        goto LABEL_17;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(v2 + v9) = v13;

  return result;
}

uint64_t sub_1D77DE1C8@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  swift_getObjectType();
  sub_1D7744248(0, &unk_1EC9CA418, type metadata accessor for OfferAction, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v73[-v12];
  v97 = type metadata accessor for OfferAction(0);
  v94 = *(v97 - 8);
  v15 = MEMORY[0x1EEE9AC00](v97, v14);
  v17 = &v73[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v76 = &v73[-v20];
  MEMORY[0x1EEE9AC00](v19, v21);
  v75 = &v73[-v22];
  sub_1D7744248(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v81 = &v73[-v25];
  v83 = sub_1D78B3294();
  v96 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v26);
  v82 = &v73[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_1D78B2FF4();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v28);
  v30 = &v73[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = *a1;
  v90 = *a2;
  v31 = *(a2 + 2);
  v89 = *(a2 + 1);
  v91 = v31;
  v88 = *a3;
  if (qword_1EC9C85A0 != -1)
  {
    swift_once();
  }

  sub_1D77465B4(&qword_1EC9CA428, type metadata accessor for OfferManager, &unk_1D78C2450);
  sub_1D78B3574();
  v86 = *(&v102[0] + 1);
  v87 = *&v102[0];
  if (qword_1EC9C85A8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v84 = *(&v102[0] + 1);
  v85 = *&v102[0];
  if (qword_1EC9C85B0 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v99 = *(&v102[0] + 1);
  v93 = *&v102[0];
  if (qword_1EC9C85B8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v98 = *(&v102[0] + 1);
  v32 = *&v102[0];
  if (qword_1EC9C85C0 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v79 = *(&v102[0] + 1);
  v80 = *&v102[0];
  if (qword_1EC9C85C8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v92 = LOBYTE(v102[0]);
  if (qword_1EC9C85D0 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (*&v102[0] >= 5uLL)
  {
    v33 = 0;
  }

  else
  {
    v33 = v102[0];
  }

  v34 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  v95 = v13;
  v74 = v33;
  if (v34)
  {
    *&v102[0] = v32;
    *(&v102[0] + 1) = v98;
    v35 = v99;

    sub_1D78B2FE4();
    sub_1D77BE06C();
    sub_1D78B62E4();
    (*(v77 + 8))(v30, v78);
    v36 = objc_allocWithZone(MEMORY[0x1E698C818]);
    v37 = sub_1D78B5C44();

    v38 = [v36 initWithString_];

    v39 = AMSBuyParams.purchaseID.getter();
    v41 = 0x80000001D78D5AF0;
    v42 = 0xD000000000000013;
    if (v40)
    {
      v42 = v39;
      v41 = v40;
    }

    *v17 = v42;
    *(v17 + 1) = v41;
    v43 = v93;
    *(v17 + 2) = v38;
    *(v17 + 3) = v43;
    *(v17 + 4) = v35;
    *(v17 + 40) = xmmword_1D78C2280;
    *(v17 + 7) = 0x4013F5C28F5C28F6;
    v17[64] = 0;
    *(v17 + 72) = xmmword_1D78C2290;
    v17[88] = v92;
    v17[89] = v33;
    v17[90] = v100;
    swift_storeEnumTagMultiPayload();
    v44 = v38;
    v45 = sub_1D777AE6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v47 = v45[2];
    v46 = v45[3];
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1D777AE6C((v46 > 1), v47 + 1, 1, v45);
    }

    v45[2] = v47 + 1;
    sub_1D77E567C(v17, v45 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v47);
    v13 = v95;
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  v48 = v81;
  sub_1D78B3274();

  v49 = v96;
  v50 = v83;
  if ((*(v96 + 48))(v48, 1, v83) == 1)
  {
    sub_1D774FDC0(v48, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  }

  else
  {
    v51 = v82;
    (*(v49 + 32))(v82, v48, v50);
    sub_1D77826E8(0);
    v53 = v75;
    v54 = v49;
    v55 = &v75[*(v52 + 48)];
    v56 = *(v52 + 64);
    (*(v54 + 16))(v75, v51, v50);
    v57 = v99;
    *v55 = v93;
    *(v55 + 1) = v57;
    *(v55 + 1) = xmmword_1D78C2280;
    *(v55 + 4) = 0x4013F5C28F5C28F6;
    v55[40] = 0;
    *(v55 + 41) = v102[0];
    *(v55 + 11) = *(v102 + 3);
    *(v55 + 3) = xmmword_1D78C2290;
    v55[64] = v92;
    v55[65] = v74;
    *(v53 + v56) = v100;
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1D777AE6C(0, v45[2] + 1, 1, v45);
    }

    v59 = v45[2];
    v58 = v45[3];
    v13 = v95;
    if (v59 >= v58 >> 1)
    {
      v45 = sub_1D777AE6C((v58 > 1), v59 + 1, 1, v45);
    }

    (*(v96 + 8))(v82, v50);
    v45[2] = v59 + 1;
    sub_1D77E567C(v53, v45 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v59);
  }

  if (qword_1EC9C85F0 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (LOBYTE(v102[0]) == 1)
  {
    v60 = v76;
    swift_storeEnumTagMultiPayload();
    sub_1D77E567C(v60, v13);
    v61 = v45[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v45;
    if (!isUniquelyReferenced_nonNull_native || v61 >= v45[3] >> 1)
    {
      v45 = sub_1D777AE6C(isUniquelyReferenced_nonNull_native, v61 + 1, 1, v45);
      v104 = v45;
    }

    sub_1D77E5174(0, 0, 1, v13);
  }

  v63 = sub_1D77E3F28();
  v64 = (v5 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_offerConfigMatcher);
  v65 = *(v5 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_offerConfigMatcher + 24);
  v66 = v64[4];
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v101 = v88;
  (*(v66 + 8))(v102, v63, &v101, v65, v66);
  v67 = v86;
  *a4 = v87;
  *(a4 + 8) = v67;
  v68 = v84;
  *(a4 + 16) = v85;
  *(a4 + 24) = v68;
  *(a4 + 32) = v45;
  *(a4 + 40) = v100;
  *(a4 + 48) = v90;
  v69 = v91;
  *(a4 + 56) = v89;
  *(a4 + 64) = v69;
  *(a4 + 72) = v63;
  v70 = v102[3];
  *(a4 + 112) = v102[2];
  *(a4 + 128) = v70;
  *(a4 + 144) = v102[4];
  *(a4 + 160) = v103;
  v71 = v102[1];
  *(a4 + 80) = v102[0];
  *(a4 + 96) = v71;
}

uint64_t sub_1D77DEDC4(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D78B5254();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D78B52A4();
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v10);
  v12 = &v29[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[9];
  v39 = a1[8];
  v40 = v13;
  v41 = *(a1 + 20);
  v14 = a1[5];
  v35 = a1[4];
  v36 = v14;
  v15 = a1[7];
  v37 = a1[6];
  v38 = v15;
  v16 = a1[1];
  v31 = *a1;
  v32 = v16;
  v17 = a1[3];
  v33 = a1[2];
  v34 = v17;
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v18 = sub_1D78B6104();
  v19 = swift_allocObject();
  v20 = v37;
  *(v19 + 136) = v38;
  v21 = v40;
  *(v19 + 152) = v39;
  *(v19 + 168) = v21;
  v22 = v33;
  *(v19 + 72) = v34;
  v23 = v36;
  *(v19 + 88) = v35;
  *(v19 + 104) = v23;
  *(v19 + 120) = v20;
  v24 = v32;
  *(v19 + 24) = v31;
  *(v19 + 40) = v24;
  *(v19 + 16) = v2;
  *(v19 + 184) = v41;
  *(v19 + 56) = v22;
  v30[4] = sub_1D77E5670;
  v30[5] = v19;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = sub_1D775FB6C;
  v30[3] = &block_descriptor_17_0;
  v25 = _Block_copy(v30);
  v26 = v2;
  sub_1D778CEAC(&v31, v29);

  sub_1D78B5274();
  v29[0] = MEMORY[0x1E69E7CC0];
  sub_1D77465B4(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D7744248(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v12, v8, v25);
  _Block_release(v25);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v28);
}

uint64_t sub_1D77DF138(__int128 *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = sub_1D78B5254();
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B52A4();
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[9];
  v89 = a1[8];
  v90 = v14;
  v91 = *(a1 + 20);
  v15 = a1[5];
  v85 = a1[4];
  v86 = v15;
  v16 = a1[7];
  v87 = a1[6];
  v88 = v16;
  v17 = a1[1];
  v81 = *a1;
  v82 = v17;
  v18 = a1[3];
  v83 = a1[2];
  v84 = v18;
  v19 = *a2;
  v20 = *(a2 + 1);
  v21 = *(a2 + 2);
  v22 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSeenBestOffers;
  swift_beginAccess();
  v23 = *&v3[v22];
  if (!*(v23 + 16))
  {
    return swift_endAccess();
  }

  v24 = sub_1D777BE68(v19, v20, v21);
  if ((v25 & 1) == 0)
  {
    return swift_endAccess();
  }

  v26 = *(v23 + 56) + 168 * v24;
  v28 = *(v26 + 16);
  v27 = *(v26 + 32);
  v70 = *v26;
  v71 = v28;
  v72 = v27;
  v29 = *(v26 + 48);
  v30 = *(v26 + 64);
  v31 = *(v26 + 96);
  v75 = *(v26 + 80);
  v76 = v31;
  v73 = v29;
  v74 = v30;
  v32 = *(v26 + 112);
  v33 = *(v26 + 128);
  v34 = *(v26 + 144);
  v80 = *(v26 + 160);
  v78 = v33;
  v79 = v34;
  v77 = v32;
  swift_endAccess();
  v68[8] = v78;
  v68[9] = v79;
  v69 = v80;
  v68[4] = v74;
  v68[5] = v75;
  v68[6] = v76;
  v68[7] = v77;
  v68[0] = v70;
  v68[1] = v71;
  v68[2] = v72;
  v68[3] = v73;
  sub_1D778CEAC(&v70, &v57);
  v35 = Offer.identifier.getter();
  v37 = v36;
  v65 = v89;
  v66 = v90;
  v67 = v91;
  v61 = v85;
  v62 = v86;
  v63 = v87;
  v64 = v88;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v60 = v84;
  if (v35 == Offer.identifier.getter() && v37 == v38)
  {

    return sub_1D778D0B0(&v70);
  }

  v40 = sub_1D78B6724();

  if (v40)
  {
    return sub_1D778D0B0(&v70);
  }

  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v41 = sub_1D78B6104();
  v42 = swift_allocObject();
  v43 = v76;
  *(v42 + 136) = v77;
  v44 = v79;
  *(v42 + 152) = v78;
  *(v42 + 168) = v44;
  v45 = v72;
  *(v42 + 72) = v73;
  v46 = v75;
  *(v42 + 88) = v74;
  *(v42 + 104) = v46;
  *(v42 + 120) = v43;
  v47 = v71;
  *(v42 + 24) = v70;
  *(v42 + 16) = v3;
  *(v42 + 184) = v80;
  *(v42 + 40) = v47;
  *(v42 + 56) = v45;
  v48 = v90;
  *(v42 + 320) = v89;
  *(v42 + 336) = v48;
  *(v42 + 352) = v91;
  v49 = v86;
  *(v42 + 256) = v85;
  *(v42 + 272) = v49;
  v50 = v88;
  *(v42 + 288) = v87;
  *(v42 + 304) = v50;
  v51 = v82;
  *(v42 + 192) = v81;
  *(v42 + 208) = v51;
  v52 = v84;
  *(v42 + 224) = v83;
  *(v42 + 240) = v52;
  *&v59 = sub_1D77E5660;
  *(&v59 + 1) = v42;
  *&v57 = MEMORY[0x1E69E9820];
  *(&v57 + 1) = 1107296256;
  *&v58 = sub_1D775FB6C;
  *(&v58 + 1) = &block_descriptor_11_0;
  v53 = _Block_copy(&v57);
  sub_1D778CEAC(&v70, v68);
  v54 = v3;
  sub_1D778CEAC(&v81, v68);

  sub_1D78B5274();
  *&v68[0] = MEMORY[0x1E69E7CC0];
  sub_1D77465B4(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D7744248(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v13, v9, v53);
  _Block_release(v53);

  sub_1D778D0B0(&v70);
  (*(v56 + 8))(v9, v6);
  return (*(v55 + 8))(v13, v10);
}

void sub_1D77DF67C(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 88);
  v3 = *(a1 + 128);
  v4 = *(a1 + 136);
  v30 = *(a1 + 40);
  v5 = Offer.purchaseID()();
  if (v5.value._object)
  {
    countAndFlagsBits = v5.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  v7 = 0xE000000000000000;
  if (v5.value._object)
  {
    object = v5.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  v29 = object;
  v9 = [v1 campaignID];
  if (v9)
  {
    v10 = v9;
    v31 = sub_1D78B5C74();
    v7 = v11;
  }

  else
  {
    v31 = 0;
  }

  v12 = sub_1D77E205C();
  v14 = v13;
  if (v2)
  {

    v15 = v3;
    v32 = v4;
  }

  else
  {
    v15 = 0;
    v32 = 0xE000000000000000;
  }

  v27 = v4;
  v26 = v3;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D78C22A0;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D775ABD4();
  *(v17 + 32) = countAndFlagsBits;
  *(v17 + 40) = v29;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 64) = v19;
  *(v17 + 72) = v31;
  *(v17 + 80) = v7;
  *(v17 + 136) = v18;
  *(v17 + 144) = v19;
  *(v17 + 112) = v12;
  *(v17 + 120) = v14;
  *(v17 + 176) = v18;
  *(v17 + 184) = v19;
  *(v17 + 152) = v15;
  *(v17 + 160) = v32;

  v20 = sub_1D78B60A4();
  sub_1D78B42C4("OfferManager: Sending didObtainOffer notification with purchaseID=%{public}@ campaignID=%{public}@ promotedPurchaseID=%{public}@ offerIdentifier=%{public}@", 155, 2, &dword_1D7739000, v16, v20, v17);

  v28 = [objc_opt_self() defaultCenter];
  v21 = sub_1D78B5C44();
  sub_1D7744248(0, &qword_1EE08FA28, sub_1D77E55FC, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78C0D80;
  sub_1D78B63F4();
  *(inited + 96) = v18;
  *(inited + 72) = countAndFlagsBits;
  *(inited + 80) = v29;
  sub_1D78B63F4();
  *(inited + 168) = v18;
  *(inited + 144) = v31;
  *(inited + 152) = v7;
  sub_1D78B63F4();
  *(inited + 240) = v18;
  *(inited + 216) = v12;
  *(inited + 224) = v14;
  sub_1D78B63F4();
  if (v30)
  {
    v23 = 0;
LABEL_17:
    v24 = v15;
    goto LABEL_18;
  }

  if (!v2)
  {
    v23 = AMSMarketingItem.isBundleHardwareOffer()();
    goto LABEL_17;
  }

  v24 = v15;
  if (v26 == 0xD000000000000025 && 0x80000001D78CF100 == v27)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_1D78B6724();
  }

LABEL_18:
  *(inited + 312) = MEMORY[0x1E69E6370];
  *(inited + 288) = v23 & 1;
  sub_1D78B63F4();
  *(inited + 384) = v18;
  *(inited + 360) = v24;
  *(inited + 368) = v32;
  sub_1D77FF518(inited);
  swift_setDeallocating();
  sub_1D77E55FC();
  swift_arrayDestroy();
  v25 = sub_1D78B5BB4();

  [v28 postNotificationName:v21 object:0 userInfo:v25];
}

double sub_1D77DFB74(void *a1, void *a2, char *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = a7;
  v35 = a8;
  v32 = a10;
  v33 = a5;
  v36 = sub_1D78B5254();
  v40 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D78B52A4();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *&a3[OBJC_IVAR____TtC16NewsSubscription12OfferManager_processQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a1;
  *(v22 + 32) = a2;
  *(v22 + 40) = a4;
  v23 = v34;
  *(v22 + 48) = v33;
  *(v22 + 56) = a6;
  v24 = v35;
  *(v22 + 64) = v23;
  *(v22 + 72) = v24;
  v25 = v32;
  *(v22 + 80) = a9;
  *(v22 + 88) = v25;
  *(v22 + 96) = a11;
  aBlock[4] = sub_1D77E57AC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_29_2;
  v26 = _Block_copy(aBlock);
  v27 = a3;
  v28 = a1;
  v29 = a2;

  sub_1D78B5274();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1D77465B4(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D7744248(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  v30 = v36;
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v21, v18, v26);
  _Block_release(v26);
  (*(v40 + 8))(v18, v30);
  (*(v37 + 8))(v21, v39);

  return result;
}

void sub_1D77DFEBC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3)
  {
    a1 = sub_1D78B31B4();
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  sub_1D775DEFC(0, &unk_1EE095288, &type metadata for Offer, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D78B4174();

  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  *(v12 + 24) = a9;

  v13 = sub_1D78B4014();
  sub_1D78B4094();

  v14 = swift_allocObject();
  *(v14 + 16) = a10;
  *(v14 + 24) = a11;

  v15 = sub_1D78B4014();
  sub_1D78B40D4();
}

uint64_t sub_1D77E00BC(__int128 *a1, uint64_t (*a2)(__int128 *))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  v29 = 0;
  v30 = 0xE000000000000000;
  v6 = a1[9];
  v26 = a1[8];
  v27 = v6;
  v28 = *(a1 + 20);
  v7 = a1[5];
  v22 = a1[4];
  v23 = v7;
  v8 = a1[7];
  v24 = a1[6];
  v25 = v8;
  v9 = a1[1];
  v18 = *a1;
  v19 = v9;
  v10 = a1[3];
  v20 = a1[2];
  v21 = v10;
  sub_1D78B6504();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D775ABD4();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  v11 = sub_1D78B60A4();
  sub_1D78B42C4("OfferManager: Returning from the cachedBestOffers with offer=%{public}@", 71, 2, &dword_1D7739000, v4, v11, v5, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);

  v12 = a1[9];
  v26 = a1[8];
  v27 = v12;
  v28 = *(a1 + 20);
  v13 = a1[5];
  v22 = a1[4];
  v23 = v13;
  v14 = a1[7];
  v24 = a1[6];
  v25 = v14;
  v15 = a1[1];
  v18 = *a1;
  v19 = v15;
  v16 = a1[3];
  v20 = a1[2];
  v21 = v16;
  return a2(&v18);
}

double sub_1D77E0258(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D775ABD4();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  v3 = sub_1D78B60A4();
  sub_1D78B42C4("OfferManager: Failed to refresh offer, error=%{public}@", 55, 2, &dword_1D7739000, v1, v3, v2);

  return result;
}

BOOL sub_1D77E0528(_BYTE *a1)
{
  LOBYTE(v5[0]) = *a1;
  sub_1D77DCD6C(v5, v3);
  v5[8] = v3[8];
  v5[9] = v3[9];
  v6 = v4;
  v5[4] = v3[4];
  v5[5] = v3[5];
  v5[6] = v3[6];
  v5[7] = v3[7];
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  v5[3] = v3[3];
  v1 = sub_1D775F3CC(v5);
  if (v1 != 1)
  {
    sub_1D77E5878(v3, &qword_1EE090600, &type metadata for Offer);
  }

  return v1 != 1;
}

BOOL sub_1D77E05E4()
{
  LOBYTE(v13[0]) = 4;
  sub_1D77DD1F0(v13, v15);
  if (sub_1D775F3CC(v15) == 1)
  {
    return 0;
  }

  else
  {
    v10 = v15[8];
    v11 = v15[9];
    v12 = v16;
    v6 = v15[4];
    v7 = v15[5];
    v8 = v15[6];
    v9 = v15[7];
    v2 = v15[0];
    v3 = v15[1];
    v4 = v15[2];
    v5 = v15[3];
    v0 = Offer.trialEligible()();
    v13[8] = v10;
    v13[9] = v11;
    v14 = v12;
    v13[4] = v6;
    v13[5] = v7;
    v13[6] = v8;
    v13[7] = v9;
    v13[0] = v2;
    v13[1] = v3;
    v13[2] = v4;
    v13[3] = v5;
    sub_1D778D0B0(v13);
  }

  return v0;
}

double sub_1D77E06B8()
{

  sub_1D78B3FC4();

  return result;
}

void sub_1D77E072C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, char a6, void *a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  if (a5)
  {
    v13 = qword_1EE08FB98;
    v14 = a5;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_1EE09C268;
    v16 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D78BCB50;
    v18 = OfferPlacement.rawValue.getter();
    v20 = v19;
    v21 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    v22 = sub_1D775ABD4();
    *(v17 + 64) = v22;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v23 = [v14 description];
    v24 = sub_1D78B5C74();
    v26 = v25;

    *(v17 + 96) = v21;
    *(v17 + 104) = v22;
    *(v17 + 72) = v24;
    *(v17 + 80) = v26;
    sub_1D78B42C4("OfferManager: Failed to obtain marketing item for placement=%{public}@, errors=%{public}@", 89, 2, &dword_1D7739000, v15, v16, v17);

    v46 = v14;
    a3();

    v27 = v46;

LABEL_6:

    return;
  }

  if (!a7)
  {
LABEL_12:
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v29 = qword_1EE09C268;
    v30 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D78BCAB0;
    v32 = OfferPlacement.rawValue.getter();
    v34 = v33;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1D775ABD4();
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    sub_1D78B42C4("OfferManager: Returned marketing items list is empty for placement=%{public}@", 77, 2, &dword_1D7739000, v29, v30, v31);

    sub_1D77E55A8();
    v35 = swift_allocError();
    *v36 = 5;
    a3();
    v27 = v35;

    goto LABEL_6;
  }

  v28 = a7;
  if ([v28 count] <= 0)
  {

    goto LABEL_12;
  }

  [v28 copy];
  sub_1D78B6304();
  swift_unknownObjectRelease();
  sub_1D773F004(0, &qword_1EC9C8430, 0x1E695DEC8);
  if (swift_dynamicCast())
  {
    sub_1D773F004(0, &unk_1EE08FE58, 0x1E698C988);
    sub_1D78B5EA4();
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v37 = qword_1EE09C268;
  v38 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D78BCAB0;
  v40 = OfferPlacement.rawValue.getter();
  v42 = v41;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1D775ABD4();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  sub_1D78B42C4("OfferManager: Returned marketing items are not type of AMSMarketingItem for placement=%{public}@", 96, 2, &dword_1D7739000, v37, v38, v39);

  sub_1D77E55A8();
  v43 = swift_allocError();
  *v44 = 4;
  a3();
}

id sub_1D77E1A58@<X0>(void *a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  v10 = a3[3];
  v74 = a3[2];
  v75 = v10;
  v76 = a3[4];
  v77 = *(a3 + 10);
  v11 = a3[1];
  v72 = *a3;
  v73 = v11;
  v12 = [a1 itemActions];
  if (!v12)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v18 = qword_1EE09C268;
    v19 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D78BCAB0;
    LOBYTE(v61) = v7;
    v21 = OfferPlacement.rawValue.getter();
    v23 = v22;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1D775ABD4();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    sub_1D78B42C4("OfferManager: ItemAction is missing in the marketing item for placement=%{public}@", 82, 2, &dword_1D7739000, v18, v19, v20);
    v24 = 1;
    goto LABEL_14;
  }

  v13 = v12;
  v59 = v8;
  v78 = v4;
  sub_1D773F004(0, &qword_1EE08FD28, 0x1E698C990);
  v14 = sub_1D78B5EB4();

  v64 = v75;
  v65 = v76;
  *&v66 = v77;
  v61 = v72;
  v62 = v73;
  v63 = v74;
  v15 = sub_1D77E2830(a1, v14, &v61);

  if (!v15[2])
  {

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE09C268;
    v26 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D78BCAB0;
    LOBYTE(v61) = v7;
    v28 = OfferPlacement.rawValue.getter();
    v30 = v29;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1D775ABD4();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    sub_1D78B42C4("OfferManager: Missing at least one action item in the marketing item for placement=%{public}@", 93, 2, &dword_1D7739000, v25, v26, v27);
    v24 = 3;
    goto LABEL_14;
  }

  v58 = v15;
  if (!*(&v72 + 1))
  {
    if (AMSMarketingItem.isBundleHardwareOffer()())
    {
      v17 = 0;
      goto LABEL_18;
    }

    if (!AMSMarketingItem.isCIPOffer()())
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v16 = v75;
  v61 = v72;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v65 = v76;
  *&v66 = v77;
  if ((ConfigurableOfferConfig.isLegacyOffer.getter() & 1) == 0)
  {
    v17 = 2;
    goto LABEL_18;
  }

  if (__PAIR128__(0x80000001D78CF100, 0xD000000000000025) != v16 && (sub_1D78B6724() & 1) == 0)
  {
    if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) == v16)
    {
      v17 = 1;
      goto LABEL_18;
    }

    if ((sub_1D78B6724() & 1) == 0)
    {
LABEL_30:
      sub_1D77E3714(v15, v60);
      v17 = v60[0];
      if (v60[0] != 3)
      {
        goto LABEL_18;
      }

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v50 = qword_1EE09C268;
      v51 = sub_1D78B6094();
      sub_1D774FE1C(0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1D78BCAB0;
      LOBYTE(v61) = v7;
      v53 = OfferPlacement.rawValue.getter();
      v55 = v54;
      *(v52 + 56) = MEMORY[0x1E69E6158];
      *(v52 + 64) = sub_1D775ABD4();
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      v24 = 2;
      sub_1D78B42C4("OfferManager: OfferType missing in the marketing item for placement=%{public}@", 78, 2, &dword_1D7739000, v50, v51, v52);
LABEL_14:

      sub_1D77E55A8();
      swift_allocError();
      *v31 = v24;
      return swift_willThrow();
    }

LABEL_26:
    v17 = 1;
    goto LABEL_18;
  }

  v17 = 0;
LABEL_18:
  v57 = v17;
  v33 = [a1 title];
  if (v33)
  {
    v34 = v33;
    v56 = sub_1D78B5C74();
    v36 = v35;
  }

  else
  {
    v56 = 0;
    v36 = 0;
  }

  v37 = v9;
  v38 = v7;
  v39 = [a1 subtitle];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1D78B5C74();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v68 = v74;
  v69 = v75;
  v70 = v76;
  v66 = v72;
  v67 = v73;
  *&v61 = v56;
  *(&v61 + 1) = v36;
  *&v62 = v41;
  *(&v62 + 1) = v43;
  *&v63 = v58;
  BYTE8(v63) = v57;
  LOBYTE(v64) = v38;
  *(&v64 + 1) = v37;
  *&v65 = v59;
  *(&v65 + 1) = a1;
  v71 = v77;
  nullsub_1();
  v44 = v68;
  v45 = v70;
  *(a4 + 128) = v69;
  *(a4 + 144) = v45;
  v46 = v64;
  v47 = v66;
  v48 = v67;
  *(a4 + 64) = v65;
  *(a4 + 80) = v47;
  *(a4 + 160) = v71;
  *(a4 + 96) = v48;
  *(a4 + 112) = v44;
  v49 = v62;
  *a4 = v61;
  *(a4 + 16) = v49;
  *(a4 + 32) = v63;
  *(a4 + 48) = v46;

  sub_1D77E5A14(&v72, v60, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
  return a1;
}

id sub_1D77E205C()
{
  LOBYTE(v5[0]) = 4;
  sub_1D77DCD6C(v5, v3);
  v5[8] = v3[8];
  v5[9] = v3[9];
  v6 = v4;
  v5[4] = v3[4];
  v5[5] = v3[5];
  v5[6] = v3[6];
  v5[7] = v3[7];
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  v5[3] = v3[3];
  if (sub_1D775F3CC(v5) == 1)
  {
    result = sub_1D77E217C();
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v2 = Offer.purchaseID()();
    if (v2.value._object)
    {
      sub_1D77E5878(v3, &qword_1EE090600, &type metadata for Offer);
      return v2.value._countAndFlagsBits;
    }

    sub_1D77E5878(v3, &qword_1EE090600, &type metadata for Offer);
  }

  return 0;
}

id sub_1D77E217C()
{
  result = [*(v0 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager) configuration];
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      v3 = [v2 paidBundleConfig];
      swift_unknownObjectRelease();
      if ([v3 areMagazinesEnabled])
      {
        v4 = [v3 offeredBundlePurchaseIDs];
        if (v4)
        {
          v5 = v4;
          v6 = sub_1D78B5EB4();

          if (*(v6 + 16))
          {
            v7 = *(v6 + 32);

            return v7;
          }
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D77E2298(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_observers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
LABEL_32:
    v6 = sub_1D78B6534();
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_14;
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
      v8 = MEMORY[0x1DA703700](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
    {
      v9 = *(v8 + 24);
      ObjectType = swift_getObjectType();
      v11 = *(a2 + 144);
      v19[8] = *(a2 + 128);
      v19[9] = v11;
      v20 = *(a2 + 160);
      v12 = *(a2 + 80);
      v19[4] = *(a2 + 64);
      v19[5] = v12;
      v13 = *(a2 + 112);
      v19[6] = *(a2 + 96);
      v19[7] = v13;
      v14 = *(a2 + 16);
      v19[0] = *a2;
      v19[1] = v14;
      v15 = *(a2 + 48);
      v19[2] = *(a2 + 32);
      v19[3] = v15;
      (*(v9 + 16))(v19, ObjectType, v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_14:
  a2 = *(a1 + v4);
  *&v19[0] = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    v5 = sub_1D78B6534();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v18 = v4;
    v16 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v16, a2);
        v4 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v4 = v18;
          v17 = *&v19[0];
          goto LABEL_30;
        }
      }

      else
      {
        if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v4 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_27;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v16;
      if (v4 == v5)
      {
        goto LABEL_28;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_30:

  *(a1 + v4) = v17;
}

void sub_1D77E2544(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_observers;
  swift_beginAccess();
  v25 = v6;
  v7 = *(a1 + v6);
  if (v7 >> 62)
  {
LABEL_32:
    v8 = sub_1D78B6534();
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA703700](i, v7);
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
    {
      v11 = *(v10 + 24);
      ObjectType = swift_getObjectType();
      v13 = *(a2 + 144);
      v28[8] = *(a2 + 128);
      v28[9] = v13;
      v29 = *(a2 + 160);
      v14 = *(a2 + 80);
      v28[4] = *(a2 + 64);
      v28[5] = v14;
      v15 = *(a2 + 112);
      v28[6] = *(a2 + 96);
      v28[7] = v15;
      v16 = *(a2 + 16);
      v28[0] = *a2;
      v28[1] = v16;
      v17 = *(a2 + 48);
      v28[2] = *(a2 + 32);
      v28[3] = v17;
      v18 = *(a3 + 144);
      v26[8] = *(a3 + 128);
      v26[9] = v18;
      v27 = *(a3 + 160);
      v19 = *(a3 + 80);
      v26[4] = *(a3 + 64);
      v26[5] = v19;
      v20 = *(a3 + 112);
      v26[6] = *(a3 + 96);
      v26[7] = v20;
      v21 = *(a3 + 16);
      v26[0] = *a3;
      v26[1] = v21;
      v22 = *(a3 + 48);
      v26[2] = *(a3 + 32);
      v26[3] = v22;
      (*(v11 + 8))(v28, v26, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_14:
  a3 = *(a1 + v6);
  *&v28[0] = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    a2 = sub_1D78B6534();
  }

  else
  {
    a2 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2)
  {
    v7 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v7, a3);
        v23 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v24 = *&v28[0];
          goto LABEL_30;
        }
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v23 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_27;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v7;
      if (v23 == a2)
      {
        goto LABEL_28;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_30:

  *(a1 + v25) = v24;
}

void *sub_1D77E2830(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v118 = a1;
  v139 = type metadata accessor for OfferAction(0);
  v131 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139, v5);
  v137 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B3294();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = (&v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v13);
  v116 = &v111 - v14;
  sub_1D7744248(0, qword_1EE094C88, type metadata accessor for OfferAction, MEMORY[0x1E69E6720]);
  v129 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v111 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v136 = &v111 - v25;
  v26 = *(a3 + 48);
  v151 = *(a3 + 32);
  v152 = v26;
  v153 = *(a3 + 64);
  v154 = *(a3 + 80);
  v27 = *(a3 + 16);
  v150[0] = *a3;
  v150[1] = v27;
  v160 = v154;
  v157 = v151;
  v158 = v26;
  v159 = v153;
  v155 = v150[0];
  v156 = v27;
  if (a2 >> 62)
  {
LABEL_79:
    v28 = sub_1D78B6534();
  }

  else
  {
    v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x1E69E7CC0];
  v130 = v19;
  if (v28)
  {
    v149 = MEMORY[0x1E69E7CC0];
    result = sub_1D77D99B4(0, v28 & ~(v28 >> 63), 0);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v113 = v12;
      v114 = v7;
      v19 = 0;
      v140 = v149;
      v133 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager;
      v135 = a2 & 0xC000000000000001;
      v128 = a2 & 0xFFFFFFFFFFFFFF8;
      v117 = *MEMORY[0x1E698C640];
      v115 = *MEMORY[0x1E698C650];
      v12 = (v131 + 56);
      v111 = *MEMORY[0x1E698C648];
      v112 = (v8 + 32);
      v31 = v129;
      v126 = v28;
      v127 = a2;
      v132 = (v131 + 56);
      while (1)
      {
        v32 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        if (v135)
        {
          v33 = MEMORY[0x1DA703700](v19, a2);
        }

        else
        {
          if (v19 >= *(v128 + 16))
          {
            goto LABEL_78;
          }

          v33 = *(a2 + 8 * v19 + 32);
        }

        v34 = v33;
        v35 = [v33 type];
        if (v35)
        {
          v36 = v35;
          v138 = v19 + 1;
          v37 = v23;
          result = [*(v134 + v133) configuration];
          if (!result)
          {
            goto LABEL_81;
          }

          v38 = result;
          if (([result respondsToSelector_] & 1) == 0)
          {
            swift_unknownObjectRelease();

LABEL_23:
            v32 = v138;

            v23 = v37;
            v12 = v132;
            (*v132)(v23, 1, 1, v139);
            goto LABEL_24;
          }

          v39 = [v38 paidBundleConfig];
          swift_unknownObjectRelease();
          if (([v39 areMagazinesEnabled] & 1) == 0 || (v40 = objc_msgSend(v39, sel_offeredBundlePurchaseIDs)) == 0)
          {

LABEL_22:
            v31 = v129;
            goto LABEL_23;
          }

          v41 = v40;
          v42 = sub_1D78B5EB4();

          if (!v42[2])
          {

            v34 = v39;
            v28 = v126;
            a2 = v127;
            goto LABEL_22;
          }

          v44 = v42[4];
          v43 = v42[5];

          v45 = [v34 callToActionLabel];
          if (v45)
          {
            v46 = v45;
            v47 = sub_1D78B5C74();
            v124 = v48;
            v125 = v47;
          }

          else
          {
            v124 = 0;
            v125 = 0;
          }

          v52 = AMSMarketingItem.priceString(for:)(v34);
          v122 = v53;
          v123 = v52;
          v121 = AMSMarketingItem.priceDiff(for:)(v34);
          v55 = v54;
          v56 = AMSMarketingItem.priceDiffString(for:)(v34);
          v119 = v57;
          v120 = v56;
          v58 = AMSMarketingItem.trialEligible(for:)(v34);
          AMSMarketingItem.upsellScenario(for:)(v141);
          v148 = v55 & 1;
          *&v143 = v125;
          *(&v143 + 1) = v124;
          *&v144 = v123;
          *(&v144 + 1) = v122;
          *&v145 = v121;
          BYTE8(v145) = v55 & 1;
          *&v146 = v120;
          *(&v146 + 1) = v119;
          LOBYTE(v147) = v58;
          HIBYTE(v147) = v141[0];
          v59 = sub_1D78B5C74();
          v61 = v60;
          if (v59 == sub_1D78B5C74() && v61 == v62)
          {

LABEL_34:
            v64 = [v34 buyParams];
            if (v64)
            {
              v124 = v44;
              v125 = v64;
              v65 = AMSBuyParams.purchaseID.getter();
              v23 = v37;
              v28 = v126;
              v32 = v138;
              if (v66)
              {
                v67 = v65;
                v121 = v43;
                v122 = v65;
                a2 = v127;
                v12 = v132;
                v123 = v66;
                if (*(&v150[0] + 1) && (v141[2] = v157, v141[3] = v158, v141[4] = v159, v142 = v160, v141[0] = v155, v141[1] = v156, v68 = ConfigurableOfferConfig.isLegacyOffer.getter(), v67 = v122, v66 = v123, (v68 & 1) == 0))
                {
                  v69 = v122;

                  v70 = 2;
                }

                else if (v124 == v67 && v66 == v121)
                {

                  v69 = v122;

                  v70 = 0;
                }

                else
                {
                  LODWORD(v124) = sub_1D78B6724();

                  v69 = v122;

                  v70 = (v124 & 1) == 0;
                }

                v92 = v123;
                *v23 = v69;
                *(v23 + 1) = v92;
                *(v23 + 2) = v125;
                v93 = v143;
                *(v23 + 40) = v144;
                *(v23 + 56) = v145;
                *(v23 + 72) = v146;
                *(v23 + 44) = v147;
                *(v23 + 24) = v93;
                v23[90] = v70;
                v94 = v139;
                swift_storeEnumTagMultiPayload();
                (*v12)(v23, 0, 1, v94);
                goto LABEL_54;
              }

              sub_1D77D66B0(&v143);
              a2 = v127;
              v12 = v132;
              v71 = v139;
            }

            else
            {

              sub_1D77D66B0(&v143);
              v32 = v138;
              v71 = v139;
              v23 = v37;
              v28 = v126;
              a2 = v127;
              v12 = v132;
            }

            (*v12)(v23, 1, 1, v71);
LABEL_54:
            v31 = v129;
            goto LABEL_24;
          }

          v63 = sub_1D78B6724();

          if (v63)
          {
            goto LABEL_34;
          }

          v72 = sub_1D78B5C74();
          v74 = v73;
          if (v72 == sub_1D78B5C74() && v74 == v75)
          {

LABEL_48:
            v77 = [v34 url];
            if (v77)
            {
              v78 = v113;
              v79 = v77;
              sub_1D78B3254();

              v80 = v44;
              v81 = *v112;
              v82 = v78;
              v83 = v114;
              (*v112)(v116, v82, v114);
              sub_1D77E35B8(v150, v127, v80, v43, v141);

              v84 = v141[0];
              sub_1D77826E8(0);
              v86 = &v37[*(v85 + 48)];
              v87 = *(v85 + 64);
              v88 = v83;
              v23 = v37;
              v81(v37, v116, v88);
              v89 = v146;
              *(v86 + 2) = v145;
              *(v86 + 3) = v89;
              *(v86 + 32) = v147;
              v90 = v144;
              *v86 = v143;
              *(v86 + 1) = v90;
              v37[v87] = v84;
              a2 = v127;
              v91 = v139;
              swift_storeEnumTagMultiPayload();
              v12 = v132;
              (*v132)(v23, 0, 1, v91);
              v31 = v129;
              v28 = v126;
            }

            else
            {

              sub_1D77D66B0(&v143);
              v23 = v37;
              v12 = v132;
              (*v132)(v23, 1, 1, v139);
              v31 = v129;
              v28 = v126;
              a2 = v127;
            }

            v32 = v138;
            goto LABEL_24;
          }

          v76 = sub_1D78B6724();

          if (v76)
          {
            goto LABEL_48;
          }

          sub_1D77D66B0(&v143);
          v95 = sub_1D78B5C74();
          v97 = v96;
          if (v95 == sub_1D78B5C74() && v97 == v98)
          {

            v99 = *v132;
            v100 = v139;
            v23 = v37;
            v12 = v132;
            a2 = v127;
          }

          else
          {
            v101 = sub_1D78B6724();

            v102 = v132;
            v99 = *v132;
            v23 = v37;
            if ((v101 & 1) == 0)
            {
              v99(v37, 1, 1, v139);
              v31 = v129;
              v28 = v126;
              a2 = v127;
              v12 = v102;
              v32 = v138;
              goto LABEL_24;
            }

            v100 = v139;
            a2 = v127;
            v12 = v132;
          }

          v32 = v138;
          swift_storeEnumTagMultiPayload();
          v99(v23, 0, 1, v100);
          v31 = v129;
          v28 = v126;
        }

        else
        {

          (*v12)(v23, 1, 1, v139);
        }

LABEL_24:
        v49 = v140;
        v149 = v140;
        v7 = *(v140 + 16);
        v50 = *(v140 + 24);
        v8 = v7 + 1;
        if (v7 >= v50 >> 1)
        {
          sub_1D77D99B4((v50 > 1), v7 + 1, 1);
          v31 = v129;
          v49 = v149;
        }

        *(v49 + 16) = v8;
        v51 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v140 = v49;
        sub_1D77E5980(v23, v49 + v51 + *(v31 + 72) * v7);
        ++v19;
        if (v32 == v28)
        {
          v19 = v130;
          v29 = v140;
          v103 = *(v140 + 16);
          if (!v103)
          {
            goto LABEL_75;
          }

LABEL_64:
          v104 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
          v105 = *(v31 + 72);
          v106 = (v131 + 48);
          v107 = MEMORY[0x1E69E7CC0];
          do
          {
            v108 = v136;
            sub_1D774FD40(v104, v136, qword_1EE094C88, type metadata accessor for OfferAction);
            sub_1D77E5980(v108, v19);
            if ((*v106)(v19, 1, v139) == 1)
            {
              sub_1D774FDC0(v19, qword_1EE094C88, type metadata accessor for OfferAction, MEMORY[0x1E69E6720]);
            }

            else
            {
              sub_1D77E567C(v19, v137);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v107 = sub_1D777AE6C(0, v107[2] + 1, 1, v107);
              }

              v110 = v107[2];
              v109 = v107[3];
              if (v110 >= v109 >> 1)
              {
                v107 = sub_1D777AE6C((v109 > 1), v110 + 1, 1, v107);
              }

              v107[2] = v110 + 1;
              sub_1D77E567C(v137, v107 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v110);
              v19 = v130;
            }

            v104 += v105;
            --v103;
          }

          while (v103);

          return v107;
        }
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
  }

  else
  {
    v31 = v129;
    v103 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v103)
    {
      goto LABEL_64;
    }

LABEL_75:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1D77E35B8(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a9@<X8>)
{
  if (a1[1] && (ConfigurableOfferConfig.isLegacyOffer.getter() & 1) == 0)
  {
    v19 = 2;
  }

  else
  {
    v13 = Array<A>.purchaseIDs.getter(a2);
    v14 = sub_1D77E58E8(v13);

    sub_1D775DEFC(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D78BCAB0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;

    v16 = sub_1D77ECE30(inited, v14);
    swift_setDeallocating();
    swift_arrayDestroy();
    v17 = *(v16 + 16);

    if (v17)
    {
      v18 = *(Array<A>.purchaseIDs.getter(a2) + 2);

      v19 = v18 != 0;
    }

    else
    {
      v19 = 0;
    }
  }

  *a9 = v19;
}

void sub_1D77E3714(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1D77E217C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = *(Array<A>.purchaseIDs.getter(a1) + 2);

    if (v8)
    {
      v9 = Array<A>.purchaseIDs.getter(a1);
      v10 = sub_1D77E58E8(v9);

      sub_1D775DEFC(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D78BCAB0;
      *(inited + 32) = v6;
      *(inited + 40) = v7;
      v12 = sub_1D77ECE30(inited, v10);
      swift_setDeallocating();
      swift_arrayDestroy();
      v13 = *(v12 + 16);

      v14 = v13 != 0;
    }

    else
    {

      v14 = 0;
    }
  }

  else
  {
    v14 = 3;
  }

  *a2 = v14;
}

void *sub_1D77E3840(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D78B6534())
  {
    v6 = 0;
    v7 = (a2 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_offerConfigMatcher);
    v46 = v4 & 0xC000000000000001;
    v41 = v4 & 0xFFFFFFFFFFFFFF8;
    v42 = v4;
    while (1)
    {
      if (v46)
      {
        v8 = MEMORY[0x1DA703700](v6, v4);
      }

      else
      {
        if (v6 >= *(v41 + 16))
        {
          goto LABEL_54;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 itemActions];
      if (!v11)
      {
        goto LABEL_6;
      }

      v12 = v11;
      sub_1D773F004(0, &qword_1EE08FD28, 0x1E698C990);
      v13 = sub_1D78B5EB4();

      v14 = v7[3];
      v15 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v14);
      v47 = a3;
      (*(v15 + 8))(v48, v9, &v47, v14, v15);
      v50[0] = v48[0];
      v50[1] = v48[1];
      v53 = v49;
      v51 = v48[3];
      v52 = v48[4];
      v50[2] = v48[2];
      v16 = sub_1D77E2830(v9, v13, v48);

      if (!*(&v50[0] + 1))
      {
        if (!AMSMarketingItem.isBundleHardwareOffer()())
        {
          if (AMSMarketingItem.isCIPOffer()())
          {

            v18 = 1;
            goto LABEL_37;
          }

          v19 = sub_1D77E217C();
          if (!v20)
          {

            goto LABEL_5;
          }

          v21 = v19;
          v22 = v20;
          v23 = *(Array<A>.purchaseIDs.getter(v16) + 2);

          if (v23)
          {
            v24 = Array<A>.purchaseIDs.getter(v16);

            v39 = sub_1D77E58E8(v24);

            sub_1D775DEFC(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1D78BCAB0;
            *(inited + 32) = v21;
            *(inited + 40) = v22;
            v26 = sub_1D77ECE30(inited, v39);
LABEL_36:
            swift_setDeallocating();
            swift_arrayDestroy();
            v34 = *(v26 + 16);

            v18 = v34 != 0;
            goto LABEL_37;
          }
        }

        goto LABEL_24;
      }

      v17 = v51;
      if (__PAIR128__(0x80000001D78CF100, 0xD000000000000025) != v51)
      {
        if ((sub_1D78B6724() & 1) == 0 && __PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) != v17 && (sub_1D78B6724() & 1) == 0 && v17 != __PAIR128__(0xEF656C646E75622DLL, 0x7365636976726573) && (sub_1D78B6724() & 1) == 0 && v17 != __PAIR128__(0xE900000000000073, 0x756C702D7377656ELL))
        {
          v35 = sub_1D78B6724();
          v36 = v17 == 0x756C702D7377656ELL && *(&v17 + 1) == 0xEF6F72746E692D73;
          v37 = v36;
          if ((v35 & 1) == 0 && !v37 && (sub_1D78B6724() & 1) == 0)
          {

            sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
            v18 = 2;
            goto LABEL_37;
          }
        }

        if ((sub_1D78B6724() & 1) == 0)
        {
          if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) == v17 || (sub_1D78B6724() & 1) != 0)
          {

            sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
            v18 = 1;
            goto LABEL_37;
          }

          v27 = sub_1D77E217C();
          if (!v28)
          {

            sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
LABEL_5:
            v4 = v42;
            if (a4 == 3)
            {
              return v9;
            }

            goto LABEL_6;
          }

          v29 = v27;
          v30 = v28;
          v31 = *(Array<A>.purchaseIDs.getter(v16) + 2);

          if (v31)
          {
            v32 = Array<A>.purchaseIDs.getter(v16);

            v40 = sub_1D77E58E8(v32);

            sub_1D775DEFC(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
            v33 = swift_initStackObject();
            *(v33 + 16) = xmmword_1D78BCAB0;
            *(v33 + 32) = v29;
            *(v33 + 40) = v30;
            v26 = sub_1D77ECE30(v33, v40);
            sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
            goto LABEL_36;
          }

          sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
LABEL_24:

          v18 = 0;
          goto LABEL_37;
        }
      }

      sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
      v18 = 0;
LABEL_37:
      v4 = v42;
      if (a4 != 3 && v18 == a4)
      {
        return v9;
      }

LABEL_6:

      ++v6;
      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  return 0;
}

uint64_t sub_1D77E3F28()
{
  v57 = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v0 = sub_1D78B5CB4();
  v1 = *(v0 - 1);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC9C85D8 != -1)
  {
    swift_once();
  }

  sub_1D77465B4(&qword_1EC9CA428, type metadata accessor for OfferManager, &unk_1D78C2450);
  sub_1D78B3574();
  if (v55 == 1)
  {
    v48 = v0;
    if (qword_1EC9C85E0 != -1)
    {
      swift_once();
    }

    sub_1D78B3574();
    v5 = v56;
    v47 = v55;
    if (qword_1EC9C85E8 != -1)
    {
      swift_once();
    }

    sub_1D78B3574();
    v53 = v55;
    v54 = v56;
    v51 = 91;
    v52 = 0xE100000000000000;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1D77BE06C();
    v6 = sub_1D78B62D4();
    v8 = v7;

    v55 = v6;
    v56 = v8;
    v53 = 93;
    v54 = 0xE100000000000000;
    v51 = 0;
    v52 = 0xE000000000000000;
    v9 = sub_1D78B62D4();
    v11 = v10;

    sub_1D77E4894(v9, v11, v47, v5);
    sub_1D78B5CA4();
    v12 = sub_1D78B5C84();
    v14 = v13;
    result = (*(v1 + 8))(v4, v48);
    if (v14 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v16 = objc_opt_self();
      v17 = sub_1D78B32B4();
      v55 = 0;
      v18 = [v16 JSONObjectWithData:v17 options:0 error:&v55];

      if (!v18)
      {
        v36 = v55;

        v37 = sub_1D78B31C4();

        swift_willThrow();
        sub_1D778C858(MEMORY[0x1E69E7CC8]);
        v38 = objc_allocWithZone(MEMORY[0x1E698C988]);
        sub_1D778CDF0();
        v39 = sub_1D78B5BB4();

        v22 = [v38 initWithDictionary_];

        goto LABEL_27;
      }

      v19 = v55;
      sub_1D78B6304();
      swift_unknownObjectRelease();
      sub_1D77E56F4(0);
      result = swift_dynamicCast();
      if (result)
      {

        sub_1D778C858(v53);

        v20 = objc_allocWithZone(MEMORY[0x1E698C988]);
        sub_1D778CDF0();
        v21 = sub_1D78B5BB4();

        v22 = [v20 initWithDictionary_];

LABEL_27:
        v40 = v12;
LABEL_30:
        sub_1D77E56E0(v40, v14);
        return v22;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  if (qword_1EC9C85F0 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v55 == 1)
  {
    sub_1D78B5CA4();
    v23 = sub_1D78B5C84();
    v14 = v24;
    v25 = *(v1 + 8);
    v1 += 8;
    result = v25(v4, v0);
    if (v14 >> 60 == 15)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v26 = objc_opt_self();
    v27 = sub_1D78B32B4();
    v55 = 0;
    v0 = [v26 JSONObjectWithData:v27 options:0 error:&v55];

    v4 = v55;
    if (!v0)
    {
      goto LABEL_28;
    }

    v28 = v55;
    sub_1D78B6304();
    swift_unknownObjectRelease();
    sub_1D77E56F4(0);
    if (swift_dynamicCast())
    {
LABEL_25:
      sub_1D778C858(v53);

      v34 = objc_allocWithZone(MEMORY[0x1E698C988]);
      sub_1D778CDF0();
      v35 = sub_1D78B5BB4();

      v22 = [v34 initWithDictionary_];

LABEL_29:
      v40 = v23;
      goto LABEL_30;
    }

    __break(1u);
  }

  if (qword_1EC9C85F8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v55 != 1)
  {
    sub_1D778C858(MEMORY[0x1E69E7CC8]);
    v45 = objc_allocWithZone(MEMORY[0x1E698C988]);
    sub_1D778CDF0();
    v46 = sub_1D78B5BB4();

    v22 = [v45 initWithDictionary_];

    return v22;
  }

  sub_1D78B5CA4();
  v23 = sub_1D78B5C84();
  v14 = v29;
  result = (*(v1 + 8))(v4, v0);
  if (v14 >> 60 == 15)
  {
    goto LABEL_36;
  }

  v30 = objc_opt_self();
  v31 = sub_1D78B32B4();
  v55 = 0;
  v32 = [v30 JSONObjectWithData:v31 options:0 error:&v55];

  v4 = v55;
  if (!v32)
  {
LABEL_28:
    v41 = v4;
    v42 = sub_1D78B31C4();

    swift_willThrow();
    sub_1D778C858(MEMORY[0x1E69E7CC8]);
    v43 = objc_allocWithZone(MEMORY[0x1E698C988]);
    sub_1D778CDF0();
    v44 = sub_1D78B5BB4();

    v22 = [v43 initWithDictionary_];

    goto LABEL_29;
  }

  v33 = v55;
  sub_1D78B6304();
  swift_unknownObjectRelease();
  sub_1D77E56F4(0);
  result = swift_dynamicCast();
  if (result)
  {
    goto LABEL_25;
  }

LABEL_37:
  __break(1u);
  return result;
}