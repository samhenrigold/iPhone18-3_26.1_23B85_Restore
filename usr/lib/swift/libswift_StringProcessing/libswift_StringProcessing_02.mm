BOOL closure #2 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1)
{
  v1 = type metadata accessor for Unicode.GeneralCategory();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.generalCategory.getter();
  (*(v9 + 8))(v11, v8);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E7810], v1);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v2 + 8);
  v13(v5, v1);
  v13(v7, v1);
  return (v12 & 1) == 0;
}

uint64_t (*Unicode.ExtendedGeneralCategory.generateConsumer(_:)(uint64_t (*(*a1)(uint64_t a1, uint64_t a2))()))()
{
  v3 = type metadata accessor for Unicode.GeneralCategory();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v150 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v149 - v7;
  v9 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 2);
  if (v14)
  {
    if ((*(a1 + v14 + 7) & 0x10000) != 0)
    {
      a1 = consumeCharacterWithLeadingScalar(_:);
    }

    else
    {
      a1 = consumeScalar(_:);
    }

    (*(v10 + 16))(v13, v1, v9);
    v11 = (*(v10 + 88))(v13, v9);
    if (v11 == *MEMORY[0x1E69E91E0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
      v15 = *(v4 + 72);
      v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_18E5ED090;
      v18 = v17 + v16;
      v19 = *(v4 + 104);
      v19(v18, *MEMORY[0x1E69E78E0], v3);
      v19(v18 + v15, *MEMORY[0x1E69E78D8], v3);
      v19(v18 + 2 * v15, *MEMORY[0x1E69E78E8], v3);
      v19(v18 + 3 * v15, *MEMORY[0x1E69E7808], v3);
      v19(v18 + 4 * v15, *MEMORY[0x1E69E7810], v3);
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      v21 = closure #1 in categoriesScalarPredicate(_:)partial apply;
LABEL_82:
      v147 = a1(v21, v20);

      return v147;
    }

    if (v11 == *MEMORY[0x1E69E9208])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E78E0], v3);
      v22 = *(v4 + 32);
      v23 = v150;
      v22(v150, v8, v3);
      v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v20 = swift_allocObject();
      v22((v20 + v24), v23, v3);
      v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v11 == *MEMORY[0x1E69E91E8])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E78D8], v3);
      v25 = *(v4 + 32);
      v26 = v150;
      v25(v150, v8, v3);
      v27 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v20 = swift_allocObject();
      v25((v20 + v27), v26, v3);
      v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v11 == *MEMORY[0x1E69E9100])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E7810], v3);
      v28 = *(v4 + 32);
      v29 = v150;
      v28(v150, v8, v3);
      v30 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v20 = swift_allocObject();
      v28((v20 + v30), v29, v3);
      v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v11 == *MEMORY[0x1E69E90F8])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E7808], v3);
      v31 = *(v4 + 32);
      v32 = v150;
      v31(v150, v8, v3);
      v33 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v20 = swift_allocObject();
      v31((v20 + v33), v32, v3);
      v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v11 == *MEMORY[0x1E69E9218])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E78E8], v3);
      v34 = *(v4 + 32);
      v35 = v150;
      v34(v150, v8, v3);
      v36 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v20 = swift_allocObject();
      v34((v20 + v36), v35, v3);
      v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v11 == *MEMORY[0x1E69E91F0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
      v37 = *(v4 + 72);
      v38 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_18E5ED090;
      v40 = v39 + v38;
      v41 = *(v4 + 104);
      v41(v40, *MEMORY[0x1E69E78A0], v3);
      v41(v40 + v37, *MEMORY[0x1E69E7888], v3);
      v41(v40 + 2 * v37, *MEMORY[0x1E69E7898], v3);
      v41(v40 + 3 * v37, *MEMORY[0x1E69E7860], v3);
      v41(v40 + 4 * v37, *MEMORY[0x1E69E7818], v3);
      v20 = swift_allocObject();
      *(v20 + 16) = v39;
      v21 = closure #1 in categoriesScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v11 == *MEMORY[0x1E69E9108])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
      v42 = *(v4 + 72);
      v43 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_18E5ED060;
      v45 = v44 + v43;
      v46 = *(v4 + 104);
      v46(v45, *MEMORY[0x1E69E78A0], v3);
      v46(v45 + v42, *MEMORY[0x1E69E7888], v3);
      v46(v45 + 2 * v42, *MEMORY[0x1E69E7898], v3);
      v20 = swift_allocObject();
      *(v20 + 16) = v44;
      v21 = partial apply for closure #1 in categoriesScalarPredicate(_:);
      goto LABEL_82;
    }

    if (v11 == *MEMORY[0x1E69E9188])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E7888], v3);
      v47 = *(v4 + 32);
      v48 = v150;
      v47(v150, v8, v3);
      v49 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v20 = swift_allocObject();
      v47((v20 + v49), v48, v3);
      v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v11 == *MEMORY[0x1E69E9160])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E7860], v3);
      v50 = *(v4 + 32);
      v51 = v150;
      v50(v150, v8, v3);
      v52 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v20 = swift_allocObject();
      v50((v20 + v52), v51, v3);
      v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v11 == *MEMORY[0x1E69E9110])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E7818], v3);
      v53 = *(v4 + 32);
      v54 = v150;
      v53(v150, v8, v3);
      v55 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v20 = swift_allocObject();
      v53((v20 + v55), v54, v3);
      v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }
  }

  else
  {
    __break(1u);
  }

  if (v11 == *MEMORY[0x1E69E9198])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7898], v3);
    v56 = *(v4 + 32);
    v57 = v150;
    v56(v150, v8, v3);
    v58 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v56((v20 + v58), v57, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E91A0])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78A0], v3);
    v59 = *(v4 + 32);
    v60 = v150;
    v59(v150, v8, v3);
    v61 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v59((v20 + v61), v60, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E91D8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
    v62 = *(v4 + 72);
    v63 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_18E5ED060;
    v65 = v64 + v63;
    v66 = *(v4 + 104);
    v66(v65, *MEMORY[0x1E69E7870], v3);
    v66(v65 + v62, *MEMORY[0x1E69E7830], v3);
    v66(v65 + 2 * v62, *MEMORY[0x1E69E7848], v3);
    v20 = swift_allocObject();
    *(v20 + 16) = v64;
    v21 = closure #1 in categoriesScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9130])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7830], v3);
    v67 = *(v4 + 32);
    v68 = v150;
    v67(v150, v8, v3);
    v69 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v67((v20 + v69), v68, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9148])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7848], v3);
    v70 = *(v4 + 32);
    v71 = v150;
    v70(v150, v8, v3);
    v72 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v70((v20 + v72), v71, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9170])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7870], v3);
    v73 = *(v4 + 32);
    v74 = v150;
    v73(v150, v8, v3);
    v75 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v73((v20 + v75), v74, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E91F8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
    v76 = *(v4 + 72);
    v77 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_18E5ED060;
    v79 = v78 + v77;
    v80 = *(v4 + 104);
    v80(v79, *MEMORY[0x1E69E7840], v3);
    v80(v79 + v76, *MEMORY[0x1E69E7838], v3);
    v80(v79 + 2 * v76, *MEMORY[0x1E69E7820], v3);
    v20 = swift_allocObject();
    *(v20 + 16) = v78;
    v21 = closure #1 in categoriesScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9140])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7840], v3);
    v81 = *(v4 + 32);
    v82 = v150;
    v81(v150, v8, v3);
    v83 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v81((v20 + v83), v82, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9138])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7838], v3);
    v84 = *(v4 + 32);
    v85 = v150;
    v84(v150, v8, v3);
    v86 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v84((v20 + v86), v85, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9118])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7820], v3);
    v87 = *(v4 + 32);
    v88 = v150;
    v87(v150, v8, v3);
    v89 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v87((v20 + v89), v88, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9128])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
    v90 = *(v4 + 72);
    v91 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_18E5ED080;
    v93 = v92 + v91;
    v94 = *(v4 + 104);
    v94(v93, *MEMORY[0x1E69E78D0], v3);
    v94(v93 + v90, *MEMORY[0x1E69E7880], v3);
    v94(v93 + 2 * v90, *MEMORY[0x1E69E7890], v3);
    v94(v93 + 3 * v90, *MEMORY[0x1E69E78A8], v3);
    v94(v93 + 4 * v90, *MEMORY[0x1E69E78C0], v3);
    v94(v93 + 5 * v90, *MEMORY[0x1E69E78B0], v3);
    v94(v93 + 6 * v90, *MEMORY[0x1E69E78B8], v3);
    v20 = swift_allocObject();
    *(v20 + 16) = v92;
    v21 = closure #1 in categoriesScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E91D0])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78D0], v3);
    v95 = *(v4 + 32);
    v96 = v150;
    v95(v150, v8, v3);
    v97 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v95((v20 + v97), v96, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9180])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7880], v3);
    v98 = *(v4 + 32);
    v99 = v150;
    v98(v150, v8, v3);
    v100 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v98((v20 + v100), v99, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E91A8])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78A8], v3);
    v101 = *(v4 + 32);
    v102 = v150;
    v101(v150, v8, v3);
    v103 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v101((v20 + v103), v102, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E91B0])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78B0], v3);
    v104 = *(v4 + 32);
    v105 = v150;
    v104(v150, v8, v3);
    v106 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v104((v20 + v106), v105, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E91C0])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78C0], v3);
    v107 = *(v4 + 32);
    v108 = v150;
    v107(v150, v8, v3);
    v109 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v107((v20 + v109), v108, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E91B8])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78B8], v3);
    v110 = *(v4 + 32);
    v111 = v150;
    v110(v150, v8, v3);
    v112 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v110((v20 + v112), v111, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9190])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7890], v3);
    v113 = *(v4 + 32);
    v114 = v150;
    v113(v150, v8, v3);
    v115 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v113((v20 + v115), v114, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9200])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
    v116 = *(v4 + 72);
    v117 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_18E5ED070;
    v119 = v118 + v117;
    v120 = *(v4 + 104);
    v120(v119, *MEMORY[0x1E69E7800], v3);
    v120(v119 + v116, *MEMORY[0x1E69E7858], v3);
    v120(v119 + 2 * v116, *MEMORY[0x1E69E7868], v3);
    v120(v119 + 3 * v116, *MEMORY[0x1E69E7828], v3);
    v20 = swift_allocObject();
    *(v20 + 16) = v118;
    v21 = closure #1 in categoriesScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9158])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7858], v3);
    v121 = *(v4 + 32);
    v122 = v150;
    v121(v150, v8, v3);
    v123 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v121((v20 + v123), v122, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9168])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7868], v3);
    v124 = *(v4 + 32);
    v125 = v150;
    v124(v150, v8, v3);
    v126 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v124((v20 + v126), v125, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E90F0])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7800], v3);
    v127 = *(v4 + 32);
    v128 = v150;
    v127(v150, v8, v3);
    v129 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v127((v20 + v129), v128, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9120])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7828], v3);
    v130 = *(v4 + 32);
    v131 = v150;
    v130(v150, v8, v3);
    v132 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v130((v20 + v132), v131, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9210])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
    v133 = *(v4 + 72);
    v134 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_18E5ED060;
    v136 = v135 + v134;
    v137 = *(v4 + 104);
    v137(v136, *MEMORY[0x1E69E7878], v3);
    v137(v136 + v133, *MEMORY[0x1E69E7850], v3);
    v137(v136 + 2 * v133, *MEMORY[0x1E69E78C8], v3);
    v20 = swift_allocObject();
    *(v20 + 16) = v135;
    v21 = closure #1 in categoriesScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9150])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7850], v3);
    v138 = *(v4 + 32);
    v139 = v150;
    v138(v150, v8, v3);
    v140 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v138((v20 + v140), v139, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E91C8])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78C8], v3);
    v141 = *(v4 + 32);
    v142 = v150;
    v141(v150, v8, v3);
    v143 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v141((v20 + v143), v142, v3);
    v21 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v11 == *MEMORY[0x1E69E9178])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7878], v3);
    v144 = *(v4 + 32);
    v145 = v150;
    v144(v150, v8, v3);
    v146 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v144((v20 + v146), v145, v3);
    v21 = partial apply for closure #1 in categoryScalarPredicate(_:);
    goto LABEL_82;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Unicode.BinaryProperty.generateConsumer(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Unicode.BinaryProperty();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_77;
  }

  if ((*(a1 + 4 * v7 + 28) & 0x10000) != 0)
  {
    v8 = consumeCharacterWithLeadingScalar(_:);
  }

  else
  {
    v8 = consumeScalar(_:);
  }

  (*(v4 + 16))(v6, v1, v3);
  v9 = (*(v4 + 88))(v6, v3);
  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E8F58])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E8EE0])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E8F08])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E8F28])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E9090])
  {
    return v8(v10, 0);
  }

  if (v9 == *MEMORY[0x1E69E9008])
  {
    goto LABEL_12;
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E8F60])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E9018])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E9020])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E9060])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E9028])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E9030])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E9038])
  {
    return v8(v10, 0);
  }

  v19[1] = v1;
  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E9080])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E8EE8])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E9068])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E90D0])
  {
    return v8(v10, 0);
  }

  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 == *MEMORY[0x1E69E8FD0])
  {
    return v8(v10, 0);
  }

  if (v9 != *MEMORY[0x1E69E8F90])
  {
    v10 = specialized closure #1 in propertyScalarPredicate(_:);
    if (v9 == *MEMORY[0x1E69E8F68])
    {
      return v8(v10, 0);
    }

    v10 = specialized closure #1 in propertyScalarPredicate(_:);
    if (v9 == *MEMORY[0x1E69E9098])
    {
      return v8(v10, 0);
    }

    v10 = specialized closure #1 in propertyScalarPredicate(_:);
    if (v9 == *MEMORY[0x1E69E8FD8])
    {
      return v8(v10, 0);
    }

    v10 = specialized closure #1 in propertyScalarPredicate(_:);
    if (v9 == *MEMORY[0x1E69E90B8])
    {
      return v8(v10, 0);
    }

    if (v9 != *MEMORY[0x1E69E9010])
    {
      v10 = specialized closure #1 in propertyScalarPredicate(_:);
      if (v9 == *MEMORY[0x1E69E9058])
      {
        return v8(v10, 0);
      }

      v10 = specialized closure #1 in propertyScalarPredicate(_:);
      if (v9 == *MEMORY[0x1E69E8F40])
      {
        return v8(v10, 0);
      }

      v10 = specialized closure #1 in propertyScalarPredicate(_:);
      if (v9 == *MEMORY[0x1E69E8FB8])
      {
        return v8(v10, 0);
      }

      if (v9 != *MEMORY[0x1E69E8F48])
      {
        v10 = specialized closure #1 in propertyScalarPredicate(_:);
        if (v9 == *MEMORY[0x1E69E90C0])
        {
          return v8(v10, 0);
        }

        if (v9 != *MEMORY[0x1E69E90A0])
        {
          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E8EF0])
          {
            return v8(v10, 0);
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E8F10])
          {
            return v8(v10, 0);
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E90A8])
          {
            return v8(v10, 0);
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E8ED8])
          {
            return v8(v10, 0);
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E8FF8])
          {
            return v8(v10, 0);
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E8F18])
          {
            return v8(v10, 0);
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E9040])
          {
            return v8(v10, 0);
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E90D8])
          {
            return v8(v10, 0);
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E9088])
          {
            return v8(v10, 0);
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E9048])
          {
            return v8(v10, 0);
          }

          if (v9 == *MEMORY[0x1E69E8FA8] || v9 == *MEMORY[0x1E69E9078] || v9 == *MEMORY[0x1E69E9050] || v9 == *MEMORY[0x1E69E8FB0] || v9 == *MEMORY[0x1E69E8F50] || v9 == *MEMORY[0x1E69E8F98] || v9 == *MEMORY[0x1E69E90E0] || v9 == *MEMORY[0x1E69E8FA0])
          {
            goto LABEL_12;
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E8F80])
          {
            return v8(v10, 0);
          }

          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 == *MEMORY[0x1E69E8FE0])
          {
            return v8(v10, 0);
          }

          if (v9 != *MEMORY[0x1E69E9070])
          {
            v10 = specialized closure #1 in propertyScalarPredicate(_:);
            if (v9 != *MEMORY[0x1E69E8F88])
            {
              v10 = specialized closure #1 in propertyScalarPredicate(_:);
              if (v9 != *MEMORY[0x1E69E90B0])
              {
                v10 = closure #2 in Unicode.BinaryProperty.generateConsumer(_:);
                if (v9 != *MEMORY[0x1E69E8FE8])
                {
                  v10 = specialized closure #1 in propertyScalarPredicate(_:);
                  if (v9 != *MEMORY[0x1E69E8EF8])
                  {
                    v10 = specialized closure #1 in propertyScalarPredicate(_:);
                    if (v9 != *MEMORY[0x1E69E8FC0])
                    {
                      v10 = specialized closure #1 in propertyScalarPredicate(_:);
                      if (v9 != *MEMORY[0x1E69E9000])
                      {
                        v10 = specialized closure #1 in propertyScalarPredicate(_:);
                        if (v9 != *MEMORY[0x1E69E8FC8])
                        {
                          v10 = specialized closure #1 in propertyScalarPredicate(_:);
                          if (v9 != *MEMORY[0x1E69E90E8])
                          {
                            v10 = specialized closure #1 in propertyScalarPredicate(_:);
                            if (v9 != *MEMORY[0x1E69E8FF0])
                            {
                              v10 = specialized closure #1 in propertyScalarPredicate(_:);
                              if (v9 != *MEMORY[0x1E69E8F00])
                              {
                                v10 = specialized closure #1 in propertyScalarPredicate(_:);
                                if (v9 != *MEMORY[0x1E69E8F20])
                                {
                                  v10 = specialized closure #1 in propertyScalarPredicate(_:);
                                  if (v9 != *MEMORY[0x1E69E90C8])
                                  {
                                    if (v9 != *MEMORY[0x1E69E8F30] && v9 != *MEMORY[0x1E69E8F38] && v9 != *MEMORY[0x1E69E8F70] && v9 != *MEMORY[0x1E69E8F78])
                                    {
                                      (*(v4 + 8))(v6, v3);
                                      goto LABEL_12;
                                    }

LABEL_77:
                                    v20 = 0;
                                    v21 = 0xE000000000000000;
                                    _StringGuts.grow(_:)(22);
                                    MEMORY[0x193ACE8E0](0xD000000000000014, 0x800000018E5F3370);
                                    _print_unlocked<A, B>(_:_:)();
                                    v17 = v20;
                                    v18 = v21;
                                    type metadata accessor for Unsupported();
                                    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
                                    swift_allocError();
                                    v14 = v17;
                                    v15 = v18;
                                    v16 = 612;
                                    goto LABEL_13;
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

            return v8(v10, 0);
          }
        }
      }
    }
  }

LABEL_12:
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  MEMORY[0x193ACE8E0](0x616D203A4F444F54, 0xEF20706F72702070);
  _print_unlocked<A, B>(_:_:)();
  v12 = v20;
  v13 = v21;
  type metadata accessor for Unsupported();
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
  swift_allocError();
  v14 = v12;
  v15 = v13;
  v16 = 619;
LABEL_13:
  MEMORY[0x193ACDF10](v14, v15, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ConsumerInterface.swift", 158, 2, v16);
  return swift_willThrow();
}

BOOL closure #3 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Unicode.Scalar.Properties();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  v9 = Unicode.Scalar.Properties.age.getter();
  v11 = v10;
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  if (v13)
  {
    return 0;
  }

  v15 = v9 <= a2;
  if (v9 == a2)
  {
    return v11 <= a3;
  }

  return v15;
}

uint64_t closure #4 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for Unicode.Scalar.Properties();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  v7 = COERCE_DOUBLE(Unicode.Scalar.Properties.numericValue.getter());
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return (v7 == a2) & ~v9;
}

uint64_t closure #5 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(unsigned int a1, uint64_t a2)
{
  v31 = a2;
  v30 = a1;
  v2 = type metadata accessor for Unicode.NumericType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSg_AEtMd, &_ss7UnicodeO11NumericTypeOSg_AEtMR);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v18 = type metadata accessor for Unicode.Scalar.Properties();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.numericType.getter();
  (*(v19 + 8))(v21, v18);
  (*(v3 + 16))(v15, v31, v2);
  (*(v3 + 56))(v15, 0, 1, v2);
  v22 = *(v6 + 56);
  outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v17, v8, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v15, &v8[v22], &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  v23 = *(v3 + 48);
  if (v23(v8, 1, v2) != 1)
  {
    outlined init with copy of (range: Range<String.Index>, value: Any?)?(v8, v12, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
    if (v23(&v8[v22], 1, v2) != 1)
    {
      v25 = v29;
      (*(v3 + 32))(v29, &v8[v22], v2);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v3 + 8);
      v26(v25, v2);
      v26(v12, v2);
      outlined destroy of SplitSequence<SubstringSearcher>(v8, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
      return v24 & 1;
    }

    (*(v3 + 8))(v12, v2);
    goto LABEL_6;
  }

  if (v23(&v8[v22], 1, v2) != 1)
  {
LABEL_6:
    outlined destroy of SplitSequence<SubstringSearcher>(v8, &_ss7UnicodeO11NumericTypeOSg_AEtMd, &_ss7UnicodeO11NumericTypeOSg_AEtMR);
    v24 = 0;
    return v24 & 1;
  }

  outlined destroy of SplitSequence<SubstringSearcher>(v8, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  v24 = 1;
  return v24 & 1;
}

uint64_t closure #6 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Unicode.Scalar.Properties();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.canonicalCombiningClass.getter();
  (*(v8 + 8))(v10, v7);
  v11 = MEMORY[0x193ACF0A0](v6, a2);
  (*(v4 + 8))(v6, v3);
  return v11 & 1;
}

uint64_t closure #7 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = type metadata accessor for Unicode.Scalar.Properties();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Unicode.Scalar.properties.getter();
  v12 = a4(v11);
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  if (v12 == a2 && v14 == a3)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

uint64_t Unicode.POSIXProperty.generateConsumer(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Unicode.POSIXProperty();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    __break(1u);
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v8 = *(a1 + 4 * v7 + 28);
  (*(v4 + 16))(v6, v1, v3);
  v9 = (*(v4 + 88))(v6, v3);
  v10 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v9 != *MEMORY[0x1E69E8EB0])
  {
    v10 = closure #2 in Unicode.POSIXProperty.generateConsumer(_:);
    if (v9 != *MEMORY[0x1E69E8EB8])
    {
      v10 = specialized closure #1 in propertyScalarPredicate(_:);
      if (v9 != *MEMORY[0x1E69E8EC0])
      {
        v10 = specialized closure #1 in propertyScalarPredicate(_:);
        if (v9 != *MEMORY[0x1E69E8EC8])
        {
          v10 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v9 != *MEMORY[0x1E69E8EA8])
          {
            v10 = specialized closure #1 in propertyScalarPredicate(_:);
            if (v9 != *MEMORY[0x1E69E8ED0])
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  v11 = consumeCharacterWithLeadingScalar(_:);
  if ((v8 & 0x10000) == 0)
  {
    v11 = consumeScalar(_:);
  }

  return v11(v10, 0);
}

uint64_t closure #2 in Unicode.POSIXProperty.generateConsumer(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for Unicode.GeneralCategory();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Unicode.Scalar.Properties();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.generalCategory.getter();
  (*(v10 + 8))(v12, v9);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E7878], v2);
  LOBYTE(v12) = MEMORY[0x193ACF080](v8, v6);
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v8, v2);
  return v12 & 1 | (v1 == 9);
}

uint64_t closure #3 in Unicode.POSIXProperty.generateConsumer(_:)()
{
  v0 = type metadata accessor for Unicode.GeneralCategory();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  if (Unicode.Scalar.Properties.isWhitespace.getter() & 1) != 0 || (Unicode.Scalar.Properties.generalCategory.getter(), v7 = *(v1 + 104), v7(v4, *MEMORY[0x1E69E78E0], v0), v8 = MEMORY[0x193ACF080](v6, v4), v9 = *(v1 + 8), v9(v4, v0), v9(v6, v0), (v8) || (Unicode.Scalar.Properties.generalCategory.getter(), v7(v4, *MEMORY[0x1E69E78E8], v0), v10 = MEMORY[0x193ACF080](v6, v4), v9(v4, v0), v9(v6, v0), (v10))
  {
    v11 = 0;
  }

  else
  {
    Unicode.Scalar.Properties.generalCategory.getter();
    v7(v4, *MEMORY[0x1E69E7810], v0);
    v13 = MEMORY[0x193ACF080](v6, v4);
    v9(v4, v0);
    v9(v6, v0);
    v11 = v13 ^ 1;
  }

  return v11 & 1;
}

Swift::Void __swiftcall Processor.SavePoint.takePositionFromQuantifiedRange(_:)(Swift::String a1)
{
  if ((*(v1 + 40) & 1) == 0)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    v3 = *(v1 + 24);
    a1._countAndFlagsBits = *(v1 + 32);
    *(v1 + 8) = a1._countAndFlagsBits;
    *(v1 + 16) = 0;
    v4 = v3 >> 14;
    v5 = a1._countAndFlagsBits >> 14;
    if (v3 >> 14 == a1._countAndFlagsBits >> 14)
    {
      v3 = 0;
      v6 = 0;
LABEL_15:
      *(v1 + 24) = v3;
      *(v1 + 32) = v6;
      *(v1 + 40) = v4 == v5;
      return;
    }

    object = a1._object;
    if (*(v1 + 41) != 1)
    {
      v6 = String.index(before:)();
      if (v4 <= v6 >> 14)
      {
        goto LABEL_15;
      }

      do
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        v6 = String.UnicodeScalarView._foreignIndex(before:)();
      }

      while (v4 > v6 >> 14);
      goto LABEL_15;
    }

    v8 = _StringGuts.validateInclusiveScalarIndex(_:)(a1._countAndFlagsBits, countAndFlagsBits, a1._object);
    if (v8 < 0x4000)
    {
      goto LABEL_23;
    }

    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if ((object & 0x2000000000000000) != 0)
    {
      v17[0] = countAndFlagsBits;
      v17[1] = object & 0xFFFFFFFFFFFFFFLL;
      v13 = v17 + (v8 >> 16);
      if ((*(v13 - 1) & 0xC0) == 0x80)
      {
        v11 = -2;
        do
        {
          v14 = v13[v11--] & 0xC0;
        }

        while (v14 == 128);
        goto LABEL_19;
      }
    }

    else
    {
      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v9 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v16 = v8;
        v9 = _StringObject.sharedUTF8.getter();
        v8 = v16;
      }

      v10 = v9 + (v8 >> 16);
      if ((*(v10 - 1) & 0xC0) == 0x80)
      {
        v11 = -2;
        do
        {
          v12 = *(v10 + v11--) & 0xC0;
        }

        while (v12 == 128);
LABEL_19:
        v15 = v11 + 1;
        goto LABEL_21;
      }
    }

    v15 = -1;
LABEL_21:
    v6 = (v8 + (v15 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
    if (v4 <= v6 >> 14)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QuantifyPayload.PayloadType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](qword_18E5EFAF0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QuantifyPayload.PayloadType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](qword_18E5EFAF0[v2]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance QuantifyPayload.PayloadType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized QuantifyPayload.PayloadType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

_StringProcessing::DSLTree::Atom::Assertion_optional __swiftcall DSLTree.Atom.Assertion.init(rawValue:)(Swift::UInt64 rawValue)
{
  v2 = 13;
  if (rawValue < 0xD)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Instruction@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Instruction.OpCode@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Instruction.OpCode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized TypedSetVector.store(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v8)
    {
      return *(*(v6 + 56) + 8 * v7);
    }
  }

  v10 = v3[1];
  v9 = *(v10 + 2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v3[1] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  *v3 = v16;
  return v9;
}

uint64_t specialized TypedSetVector.store(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (*(v4 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      return *(*(v4 + 56) + 8 * v5);
    }
  }

  v8 = v2[1];
  v7 = v8[2];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v8[v10 + 4] = a1;
  v2[1] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, isUniquelyReferenced_nonNull_native);
  *v2 = v13;
  return v7;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = *v2++;

      PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(v3, 0);

      --v1;
    }

    while (v1);
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCyp_Tt1g5(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        outlined init with copy of Any(v3, v5);
        v5 += 32;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_0(v3);
    return v4;
  }

  return result;
}

__int128 *_sSa9repeating5countSayxGx_SitcfC17_StringProcessing9ProcessorV14_StoredCaptureV_Tt1g5(__int128 *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        outlined init with copy of Processor._StoredCapture(v3, v5);
        v5 += 72;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of Processor._StoredCapture(v3);
    return v4;
  }

  return result;
}

uint64_t Character._isHorizontalWhitespace.getter(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Unicode.GeneralCategory();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Unicode.Scalar.Properties();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = specialized Collection.first.getter(a1, a2);
  if ((v15 & 0x100000000) != 0)
  {
    v16 = 0;
  }

  else if (v15 == 9)
  {
    v16 = 1;
  }

  else
  {
    Unicode.Scalar.properties.getter();
    Unicode.Scalar.Properties.generalCategory.getter();
    (*(v12 + 8))(v14, v11);
    (*(v5 + 104))(v8, *MEMORY[0x1E69E7878], v4);
    v16 = MEMORY[0x193ACF080](v10, v8);
    v17 = *(v5 + 8);
    v17(v8, v4);
    v17(v10, v4);
  }

  return v16 & 1;
}

uint64_t Character._isNewline.getter(unint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  v3 = (v2 - 8232) < 2 || v2 == 133;
  v4 = (v2 - 14) > 0xFFFFFFFB || v3;
  if ((v2 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

Swift::Void __swiftcall Processor.signalFailure(preservingCaptures:)(Swift::Bool preservingCaptures)
{
  v2 = v1;
  v3 = v1 + 184;
  v4 = *(v1 + 184);
  v5 = *(v4 + 2);
  if (!v5)
  {
    *(v1 + 200) = 1;
    return;
  }

  if (v4[72 * v5])
  {
    specialized Array._customRemoveLast()(&v20);
    if (v23)
    {
      v27 = v22;
      v28 = v23;
      v29 = v24;
      v25 = v20;
      v26 = v21;
    }

    else
    {
      v18[2] = v22;
      v18[3] = v23;
      v19 = v24;
      v18[0] = v20;
      v18[1] = v21;
      outlined destroy of Any?(v18, &unk_1F0192138, &cache variable for noncanonical specialized generic type metadata for Processor.SavePoint?);
      specialized Array.remove(at:)(*(*v3 + 16) - 1, &v25);
    }

    v20 = v25;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    v15 = v29;
    v24 = v29;
    v11 = *(&v25 + 1);
    v16 = v25;
    v17 = v26;
    v14 = *(&v28 + 1);
    v13 = v28;

    outlined destroy of Processor.SavePoint(&v20);
    v2[12] = v16;
    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = *v1;
  v8 = *(v1 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  if (v5 > *(v4 + 2))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = &v4[72 * v5 - 72];
  v10._countAndFlagsBits = v7;
  v10._object = v8;
  Processor.SavePoint.takePositionFromQuantifiedRange(_:)(v10);
  *v3 = v4;
  if (v5 > *(v4 + 2))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v11 = *(v9 + 5);
  v12 = v9[48];
  v13 = *(v9 + 10);
  v14 = *(v9 + 11);
  v15 = *(v9 + 12);
  v2[12] = *(v9 + 4);

  if (v12 == 1)
  {
LABEL_14:
    v11 = v2[11];
  }

LABEL_15:
  v2[11] = v11;

  v2[20] = v14;

  v2[22] = v15;

  if (!preservingCaptures)
  {
    v2[24] = v13;
  }
}

unint64_t Processor.isAtStartOfLine(_:)(uint64_t a1)
{
  v3 = v1[11];
  if ((v1[2] ^ v3) < 0x4000)
  {
    return 1;
  }

  v5 = *v1;
  v6 = v1[1];
  if ((a1 & 0x10000000000000) != 0)
  {
    v10 = _StringGuts.validateInclusiveScalarIndex(_:)(v3, v5, v6);
    if (v10 < 0x4000)
    {
      __break(1u);
    }

    else if ((v6 & 0x1000000000000000) == 0)
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v23 = v5;
        v24 = v6 & 0xFFFFFFFFFFFFFFLL;
        v15 = &v23 + (v10 >> 16);
        if ((*(v15 - 1) & 0xC0) == 0x80)
        {
          v13 = -2;
          do
          {
            v16 = v15[v13--] & 0xC0;
          }

          while (v16 == 128);
          goto LABEL_22;
        }
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v11 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v22 = v10;
          v11 = _StringObject.sharedUTF8.getter();
          v10 = v22;
        }

        v12 = v11 + (v10 >> 16);
        if ((*(v12 - 1) & 0xC0) == 0x80)
        {
          v13 = -2;
          do
          {
            v14 = *(v12 + v13--) & 0xC0;
          }

          while (v14 == 128);
LABEL_22:
          v17 = v13 + 1;
LABEL_24:
          _StringGuts.validateScalarIndex(_:)((v10 + (v17 << 16)) & 0xFFFFFFFFFFFF0000 | 5, v5, v6);
          if ((v6 & 0x2000000000000000) != 0)
          {
            v23 = v5;
            v24 = v6 & 0xFFFFFFFFFFFFFFLL;
          }

          else if ((v5 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          v18 = _decodeScalar(_:startingAt:)();
LABEL_29:
          v19 = v18;
          v20 = v18 - 14;
          result = 1;
          if (v20 <= 0xFFFFFFFB && (v19 - 8232) >= 2 && v19 != 133)
          {
            return 0;
          }

          return result;
        }
      }

      v17 = -1;
      goto LABEL_24;
    }

    v21 = String.UnicodeScalarView._foreignIndex(before:)();
    _StringGuts.validateScalarIndex(_:)(v21, v5, v6);
    v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    goto LABEL_29;
  }

  String.index(before:)();
  v7 = String.subscript.getter();
  result = specialized Collection.first.getter(v7, v8);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
    return result;
  }

  v9 = result;

  result = 1;
  if ((v9 - 14) <= 0xFFFFFFFB && (v9 - 8232) >= 2 && v9 != 133)
  {
    return 0;
  }

  return result;
}

unint64_t Processor.isAtEndOfLine(_:)(uint64_t a1)
{
  v3 = v1[11];
  if ((v1[3] ^ v3) < 0x4000)
  {
    return 1;
  }

  v5 = *v1;
  v6 = v1[1];
  if ((a1 & 0x10000000000000) != 0)
  {
    _StringGuts.validateScalarIndex(_:)(v3, v5, v6);
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((v6 & 0x2000000000000000) == 0 && (v5 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v10 = _decodeScalar(_:startingAt:)();
    }

    v11 = v10;
    v12 = v10 - 14;
    result = 1;
    if (v12 <= 0xFFFFFFFB && (v11 - 8232) >= 2)
    {
      return v11 == 133;
    }
  }

  else
  {
    v7 = String.subscript.getter();
    result = specialized Collection.first.getter(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = result;

      result = 1;
      if ((v9 - 14) <= 0xFFFFFFFB && (v9 - 8232) >= 2)
      {
        return v9 == 133;
      }
    }
  }

  return result;
}

uint64_t Processor.builtinAssert(by:)(uint64_t a1)
{
  DSLTree.Atom.Assertion.init(rawValue:)(a1);
  switch(v64)
  {
    case 1:
      v3 = *(v1 + 11);
      v4 = *(v1 + 3) >> 14;
      if (v4 == v3 >> 14)
      {
        goto LABEL_55;
      }

      v6 = *v1;
      v5 = *(v1 + 1);
      if ((a1 & 0x10000000000000) != 0)
      {
        v53 = _StringGuts.validateScalarIndex(_:)(v3, v6, v5);
        if ((v5 & 0x1000000000000000) != 0)
        {
          if (v4 != String.UnicodeScalarView._foreignIndex(after:)() >> 14)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v54 = v53 >> 16;
          if ((v5 & 0x2000000000000000) != 0)
          {
            *&v64 = v6;
            *(&v64 + 1) = v5 & 0xFFFFFFFFFFFFFFLL;
            v56 = *(&v64 + v54);
          }

          else
          {
            if ((v6 & 0x1000000000000000) != 0)
            {
              v55 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v55 = _StringObject.sharedUTF8.getter();
            }

            v56 = *(v55 + v54);
          }

          v57 = v56;
          v58 = __clz(v56 ^ 0xFF) - 24;
          if (v57 >= 0)
          {
            LOBYTE(v58) = 1;
          }

          if (v4 != ((4 * (v54 + v58)) & 0x3FFFFFFFFFFFFLL))
          {
            goto LABEL_73;
          }
        }

        _StringGuts.validateScalarIndex(_:)(v3, v6, v5);
        if ((v5 & 0x1000000000000000) != 0)
        {
          v59 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          if ((v5 & 0x2000000000000000) != 0)
          {
            *&v64 = v6;
            *(&v64 + 1) = v5 & 0xFFFFFFFFFFFFFFLL;
          }

          else if ((v6 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          v59 = _decodeScalar(_:startingAt:)();
        }

        v60 = v59;
        v61 = v59 - 14;
        v11 = 1;
        if (v61 <= 0xFFFFFFFB && (v60 - 8232) >= 2 && v60 != 133)
        {
          goto LABEL_73;
        }

        return v11 & 1;
      }

      if (v4 != String.index(after:)() >> 14)
      {
        goto LABEL_73;
      }

      v7 = String.subscript.getter();
      v9 = specialized Collection.first.getter(v7, v8);
      if ((v9 & 0x100000000) != 0)
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v10 = v9;

      v11 = 1;
      if ((v10 - 14) <= 0xFFFFFFFB && (v10 - 8232) >= 2 && v10 != 133)
      {
        goto LABEL_73;
      }

      return v11 & 1;
    case 2:
      goto LABEL_19;
    case 3:
      goto LABEL_96;
    case 4:
      v19 = *(v1 + 11);
      v20 = *(v1 + 9);
      goto LABEL_35;
    case 5:
      v11 = String.isOnGraphemeClusterBoundary(_:)();
      return v11 & 1;
    case 6:
      v11 = String.isOnGraphemeClusterBoundary(_:)() ^ 1;
      return v11 & 1;
    case 7:
      goto LABEL_32;
    case 8:
      goto LABEL_20;
    case 9:
      if ((a1 & 0x80000000000000) == 0)
      {
        goto LABEL_31;
      }

LABEL_32:
      v34 = v1[11];
      v74 = v1[10];
      v75 = v34;
      v76 = v1[12];
      v77 = *(v1 + 26);
      v35 = v1[7];
      v70 = v1[6];
      v71 = v35;
      v36 = v1[9];
      v72 = v1[8];
      v73 = v36;
      v37 = v1[3];
      v66 = v1[2];
      v67 = v37;
      v38 = v1[5];
      v68 = v1[4];
      v69 = v38;
      v39 = v1[1];
      v64 = *v1;
      v65 = v39;
      v11 = Processor.isAtStartOfLine(_:)(a1);
      return v11 & 1;
    case 10:
      if ((a1 & 0x80000000000000) != 0)
      {
LABEL_20:
        v21 = v1[11];
        v74 = v1[10];
        v75 = v21;
        v76 = v1[12];
        v77 = *(v1 + 26);
        v22 = v1[7];
        v70 = v1[6];
        v71 = v22;
        v23 = v1[9];
        v72 = v1[8];
        v73 = v23;
        v24 = v1[3];
        v66 = v1[2];
        v67 = v24;
        v25 = v1[5];
        v68 = v1[4];
        v69 = v25;
        v26 = v1[1];
        v64 = *v1;
        v65 = v26;
        v11 = Processor.isAtEndOfLine(_:)(a1);
      }

      else
      {
LABEL_19:
        v19 = *(v1 + 11);
        v20 = *(v1 + 3);
LABEL_35:
        v11 = (v20 ^ v19) < 0x4000;
      }

      return v11 & 1;
    case 11:
      if ((a1 & 0x40000000000000) != 0)
      {
        v47 = v1[11];
        v74 = v1[10];
        v75 = v47;
        v76 = v1[12];
        v77 = *(v1 + 26);
        v48 = v1[7];
        v70 = v1[6];
        v71 = v48;
        v49 = v1[9];
        v72 = v1[8];
        v73 = v49;
        v50 = v1[3];
        v66 = v1[2];
        v67 = v50;
        v51 = v1[5];
        v68 = v1[4];
        v69 = v51;
        v52 = v1[1];
        v64 = *v1;
        v65 = v52;
        v11 = Processor.atSimpleBoundary(_:_:)((a1 & 0x20000000000000) != 0, ((a1 & 0x10000000000000) != 0));
        return v11 & 1;
      }

      v27 = *(v1 + 11);
      v28 = *(v1 + 2);
      v29 = v27 >> 14;
      if (v27 >> 14 == v28 >> 14)
      {
        goto LABEL_55;
      }

      v30 = *(v1 + 3) >> 14;
      if (v29 == v30)
      {
        goto LABEL_55;
      }

      v31 = *(v1 + 6);
      if (!v31)
      {
        v32 = *(v1 + 7);
        v33 = *(v1 + 64);
        if ((v33 & 1) == 0 && v29 < v32 >> 14)
        {
          goto LABEL_73;
        }

        *(v1 + 6) = MEMORY[0x1E69E7CD0];
LABEL_59:
        if (!v33)
        {
          v28 = v32;
        }

        if (v28 >> 14 >= v30 || v29 < v28 >> 14)
        {
LABEL_85:
          *(v1 + 7) = v28;
          *(v1 + 64) = 0;
          v63 = *(v1 + 6);
          if (v63)
          {
            v11 = specialized Set.contains(_:)(v27, v63);
            return v11 & 1;
          }

LABEL_95:
          __break(1u);
LABEL_96:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          JUMPOUT(0x18E59F22CLL);
        }

        while (*(v1 + 6))
        {
          if ((specialized Set._Variant.insert(_:)(&v64, v28) & 1) == 0)
          {
            goto LABEL_55;
          }

          v28 = String._wordIndex(after:)();
          if (v28 >> 14 >= v30 || v29 < v28 >> 14)
          {
            goto LABEL_85;
          }
        }

LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (!specialized Set.contains(_:)(*(v1 + 11), v31))
      {
        v32 = *(v1 + 7);
        v33 = *(v1 + 64);
        if ((v33 & 1) == 0 && v29 < v32 >> 14)
        {
          goto LABEL_73;
        }

        goto LABEL_59;
      }

      goto LABEL_55;
    case 12:
      if ((a1 & 0x40000000000000) != 0)
      {
        v41 = v1[11];
        v74 = v1[10];
        v75 = v41;
        v76 = v1[12];
        v77 = *(v1 + 26);
        v42 = v1[7];
        v70 = v1[6];
        v71 = v42;
        v43 = v1[9];
        v72 = v1[8];
        v73 = v43;
        v44 = v1[3];
        v66 = v1[2];
        v67 = v44;
        v45 = v1[5];
        v68 = v1[4];
        v69 = v45;
        v46 = v1[1];
        v64 = *v1;
        v65 = v46;
        v11 = !Processor.atSimpleBoundary(_:_:)((a1 & 0x20000000000000) != 0, ((a1 & 0x10000000000000) != 0));
        return v11 & 1;
      }

      v12 = *(v1 + 11);
      v13 = *(v1 + 2);
      v14 = v12 >> 14;
      if (v12 >> 14 == v13 >> 14)
      {
        goto LABEL_73;
      }

      v15 = *(v1 + 3) >> 14;
      if (v14 == v15)
      {
        goto LABEL_73;
      }

      v16 = *(v1 + 6);
      if (v16)
      {
        if (specialized Set.contains(_:)(*(v1 + 11), v16))
        {
LABEL_73:
          v11 = 0;
          return v11 & 1;
        }

        v17 = *(v1 + 7);
        v18 = *(v1 + 64);
        if ((v18 & 1) != 0 || v14 >= v17 >> 14)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v17 = *(v1 + 7);
        v18 = *(v1 + 64);
        if ((v18 & 1) != 0 || v14 >= v17 >> 14)
        {
          *(v1 + 6) = MEMORY[0x1E69E7CD0];
LABEL_75:
          if (!v18)
          {
            v13 = v17;
          }

          if (v13 >> 14 >= v15 || v14 < v13 >> 14)
          {
LABEL_83:
            *(v1 + 7) = v13;
            *(v1 + 64) = 0;
            v62 = *(v1 + 6);
            if (v62)
            {
              v11 = !specialized Set.contains(_:)(v12, v62);
              return v11 & 1;
            }

            goto LABEL_94;
          }

          while (*(v1 + 6))
          {
            if ((specialized Set._Variant.insert(_:)(&v64, v13) & 1) == 0)
            {
              goto LABEL_73;
            }

            v13 = String._wordIndex(after:)();
            if (v13 >> 14 >= v15 || v14 < v13 >> 14)
            {
              goto LABEL_83;
            }
          }

          __break(1u);
          goto LABEL_92;
        }
      }

LABEL_55:
      v11 = 1;
      return v11 & 1;
    default:
LABEL_31:
      v19 = *(v1 + 11);
      v20 = *(v1 + 2);
      goto LABEL_35;
  }
}

Swift::Bool __swiftcall Processor.atSimpleBoundary(_:_:)(Swift::Bool a1, _StringProcessing::MatchingOptions::SemanticLevel a2)
{
  v3 = v2[2] >> 14;
  v4 = v2[3] >> 14;
  if (v3 == v4)
  {
    v5 = 0;
    return v5 & 1;
  }

  v8 = v2[11];
  v9 = a2 & 1;
  if (v8 >> 14 != v3)
  {
    v14 = *v2;
    v13 = v2[1];
    if ((a2 & 1) == 0)
    {
      v15 = String.index(before:)();
      goto LABEL_25;
    }

    v16 = _StringGuts.validateInclusiveScalarIndex(_:)(v2[11], *v2, v2[1]);
    if (v16 < 0x4000)
    {
      __break(1u);
    }

    else if ((v13 & 0x1000000000000000) == 0)
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v25[0] = v14;
        v25[1] = v13 & 0xFFFFFFFFFFFFFFLL;
        v21 = v25 + (v16 >> 16);
        if ((*(v21 - 1) & 0xC0) == 0x80)
        {
          v19 = -2;
          do
          {
            v22 = v21[v19--] & 0xC0;
          }

          while (v22 == 128);
          goto LABEL_22;
        }
      }

      else
      {
        if ((v14 & 0x1000000000000000) != 0)
        {
          v17 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v24 = v16;
          v17 = _StringObject.sharedUTF8.getter();
          v16 = v24;
        }

        v18 = v17 + (v16 >> 16);
        if ((*(v18 - 1) & 0xC0) == 0x80)
        {
          v19 = -2;
          do
          {
            v20 = *(v18 + v19--) & 0xC0;
          }

          while (v20 == 128);
LABEL_22:
          v23 = v19 + 1;
LABEL_24:
          v15 = (v16 + (v23 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
          goto LABEL_25;
        }
      }

      v23 = -1;
      goto LABEL_24;
    }

    v15 = String.UnicodeScalarView._foreignIndex(before:)();
LABEL_25:
    v5 = matchesWord #1 (at:) in Processor.atSimpleBoundary(_:_:)(v15, v9, v2, a1);
    if (v8 >> 14 != v4)
    {
      v5 ^= matchesWord #1 (at:) in Processor.atSimpleBoundary(_:_:)(v8, v9, v2, a1);
    }

    return v5 & 1;
  }

  v10 = a1;
  v11 = v2[11];
  v12 = a2 & 1;

  return matchesWord #1 (at:) in Processor.atSimpleBoundary(_:_:)(v11, v12, v2, v10);
}

uint64_t String._thoroughMatchAnyNonNewline(at:limitedBy:isScalarSemantics:)(unint64_t a1, unint64_t a2, char a3, unint64_t a4, unint64_t a5)
{
  v8 = a1 >> 14;
  v9 = a2 >> 14;
  if ((a3 & 1) == 0)
  {
    if (v8 < v9)
    {
      v10 = String.index(after:)();
      if (v9 >= v10 >> 14)
      {
        v13 = v10;
        v14 = String.subscript.getter();
        v16 = v15;
      }

      else
      {
        v11 = String.subscript.getter();
        if ((v11 ^ v12) < 0x4000)
        {

          return 0;
        }

        v13 = v12;
        v24 = Substring.subscript.getter();
        v16 = v25;

        v14 = v24;
      }

      result = specialized Collection.first.getter(v14, v16);
      if ((result & 0x100000000) != 0)
      {
        __break(1u);
        return result;
      }

      v26 = result;

      if ((v26 - 14) <= 0xFFFFFFFB && (v26 - 8232) >= 2 && v26 != 133)
      {
        return v13;
      }
    }

    return 0;
  }

  if (v8 >= v9)
  {
    return 0;
  }

  _StringGuts.validateScalarIndex(_:)(a1, a4, a5);
  if ((a5 & 0x1000000000000000) != 0)
  {
    v17 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
  }

  else
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v29 = a4;
      v30 = a5 & 0xFFFFFFFFFFFFFFLL;
    }

    else if ((a4 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    v17 = _decodeScalar(_:startingAt:)();
  }

  v18 = v17;
  if ((v17 - 14) > 0xFFFFFFFB)
  {
    return 0;
  }

  result = 0;
  if ((v18 - 8232) >= 2 && v18 != 133)
  {
    v20 = _StringGuts.validateScalarIndex(_:)(a1, a4, a5);
    if ((a5 & 0x1000000000000000) != 0)
    {
      return String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v21 = v20 >> 16;
      if ((a5 & 0x2000000000000000) != 0)
      {
        v29 = a4;
        v30 = a5 & 0xFFFFFFFFFFFFFFLL;
        v23 = *(&v29 + v21);
      }

      else
      {
        if ((a4 & 0x1000000000000000) != 0)
        {
          v22 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v22 = _StringObject.sharedUTF8.getter();
        }

        v23 = *(v22 + v21);
      }

      v27 = v23;
      v28 = __clz(v23 ^ 0xFF) - 24;
      if (v27 >= 0)
      {
        LOBYTE(v28) = 1;
      }

      return ((v21 + v28) << 16) | 5;
    }
  }

  return result;
}

uint64_t String._quickASCIICharacter(at:limitedBy:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a2 >> 14;
  if (a2 >> 14 == a1 >> 14)
  {
    return 0;
  }

  v5 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = a1 & 0xC;
  v7 = 4 << v5;
  v8 = a1;
  if (v6 == v7)
  {
    v12 = a1;
    v13 = a3;
    v14 = a4;
    v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a3, a4);
    a3 = v13;
    a4 = v14;
    v8 = v15;
    a1 = v12;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v10 = v8 >> 16;
  if (v8 >> 16 >= v9)
  {
    __break(1u);
LABEL_21:
    v16 = a1;
    v17 = a3;
    v18 = a4;
    v19 = String.UTF8View._foreignSubscript(position:)();
    a3 = v17;
    a4 = v18;
    v11 = v19;
    a1 = v16;
    if ((v11 & 0x80) != 0)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v54 = a3;
    v55 = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = *(&v54 + v10);
    if ((v11 & 0x80) != 0)
    {
      return 0;
    }
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = *((a4 & 0xFFFFFFFFFFFFFFFLL) + 0x20 + (v8 >> 16));
    if ((v11 & 0x80) != 0)
    {
      return 0;
    }
  }

  else
  {
    v32 = a1;
    v33 = a4;
    v34 = a3;
    v35 = _StringObject.sharedUTF8.getter();
    a3 = v34;
    a4 = v33;
    v36 = v35;
    a1 = v32;
    v11 = *(v36 + v10);
    if ((v11 & 0x80) != 0)
    {
      return 0;
    }
  }

LABEL_16:
  if (v6 == v7)
  {
    v6 = a3;
    v20 = a4;
    a1 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a3, a4);
    a3 = v6;
    a4 = v20;
    if ((v20 & 0x1000000000000000) == 0)
    {
LABEL_18:
      a2 = (a1 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v4 == a2 >> 14)
      {
        return v11;
      }

LABEL_26:
      v6 = a2 & 0xC;
      v24 = a2;
      if (v6 != v7)
      {
        goto LABEL_27;
      }

      goto LABEL_45;
    }
  }

  else if ((a4 & 0x1000000000000000) == 0)
  {
    goto LABEL_18;
  }

  if (v9 > a1 >> 16)
  {
    v21 = a3;
    v22 = a4;
    v23 = String.UTF8View._foreignIndex(after:)();
    a3 = v21;
    a4 = v22;
    a2 = v23;
    if (v4 == v23 >> 14)
    {
      return v11;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_45:
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v24 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
  a2 = v37;
  a3 = v38;
  a4 = v39;
LABEL_27:
  v25 = v24 >> 16;
  if (v24 >> 16 >= v9)
  {
    __break(1u);
    goto LABEL_47;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    v29 = a2;
    v26 = a4;
    v30 = a3;
    v28 = String.UTF8View._foreignSubscript(position:)();
    a2 = v29;
    a3 = v30;
  }

  else
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v26 = a4;
        v27 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_32:
        v28 = *(v27 + v25);
        goto LABEL_35;
      }

LABEL_47:
      v26 = a4;
      v53 = a2;
      v40 = a3;
      v27 = _StringObject.sharedUTF8.getter();
      a2 = v53;
      a3 = v40;
      goto LABEL_32;
    }

    v26 = a4;
    v54 = a3;
    v55 = a4 & 0xFFFFFFFFFFFFFFLL;
    v28 = *(&v54 + v25);
  }

LABEL_35:
  if (v28 > 0xCBu)
  {
    return 0;
  }

  if (v11 == 13 && v28 == 10)
  {
    if (v6 == v7)
    {
      v41 = a3;
      v42 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, v26);
      a3 = v41;
      v31 = v26;
      a2 = v42;
      if ((v26 & 0x1000000000000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v31 = v26;
      if ((v26 & 0x1000000000000000) == 0)
      {
LABEL_40:
        a2 = (a2 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_51;
      }
    }

    if (v9 <= a2 >> 16)
    {
      __break(1u);
      goto LABEL_66;
    }

    v43 = a3;
    v44 = v31;
    v45 = String.UTF8View._foreignIndex(after:)();
    a3 = v43;
    v31 = v44;
    a2 = v45;
LABEL_51:
    if (v4 == a2 >> 14)
    {
      return 13;
    }

    v46 = a2;
    if ((a2 & 0xC) != v7)
    {
LABEL_53:
      v47 = v46 >> 16;
      if (v46 >> 16 < v9)
      {
        if ((v31 & 0x1000000000000000) != 0)
        {
          v49 = String.UTF8View._foreignSubscript(position:)();
        }

        else
        {
          if ((v31 & 0x2000000000000000) == 0)
          {
            if ((a3 & 0x1000000000000000) != 0)
            {
              v48 = (v31 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_58:
              v49 = *(v48 + v47);
              goto LABEL_61;
            }

LABEL_68:
            v48 = _StringObject.sharedUTF8.getter();
            goto LABEL_58;
          }

          v54 = a3;
          v55 = v31 & 0xFFFFFFFFFFFFFFLL;
          v49 = *(&v54 + v47);
        }

LABEL_61:
        if (v49 <= 0xCBu)
        {
          return 13;
        }

        return 0;
      }

      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    v51 = a3;
    v52 = v31;
    v46 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, v31);
    a3 = v51;
    v31 = v52;
    goto LABEL_53;
  }

  return v11;
}

uint64_t String._thoroughMatchBuiltinCC(_:at:limitedBy:isInverted:isStrictASCII:isScalarSemantics:)(int a1, unint64_t a2, unint64_t a3, int a4, char a5, int a6, unint64_t a7, unint64_t a8)
{
  v77 = a6;
  v78 = a4;
  v79 = a1;
  v13 = type metadata accessor for Unicode.GeneralCategory();
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v73 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v65[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v76 = &v65[-v18];
  v19 = type metadata accessor for Unicode.Scalar.Properties();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v65[-v24];
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v65[-v27];
  v29 = MEMORY[0x1EEE9AC00](v26);
  v32 = &v65[-v31];
  v33 = a3 >> 14;
  if (a3 >> 14 <= a2 >> 14)
  {
    return 0;
  }

  v67 = v30;
  v68 = v29;
  v34 = String.index(after:)();
  if (v33 >= v34 >> 14)
  {
    v70 = v34;
    v69 = String.subscript.getter();
    v71 = v37;
  }

  else
  {
    v35 = String.subscript.getter();
    if ((v35 ^ v36) < 0x4000)
    {

      return 0;
    }

    v70 = v36;
    v69 = Substring.subscript.getter();
    v71 = v38;
  }

  _StringGuts.validateScalarIndex(_:)(a2, a7, a8);
  if ((a8 & 0x1000000000000000) != 0)
  {
    v39 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    if ((a5 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((a8 & 0x2000000000000000) == 0)
    {
      if ((a7 & 0x1000000000000000) != 0)
      {
        v39 = _decodeScalar(_:startingAt:)();
        if (a5)
        {
          goto LABEL_13;
        }
      }

      else
      {
        _StringObject.sharedUTF8.getter();
        v39 = _decodeScalar(_:startingAt:)();
        if (a5)
        {
          goto LABEL_13;
        }
      }

LABEL_20:
      v41 = v39;
      v66 = 1;
      v40 = v77;
      if ((v77 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_21:
      if (v79 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }

    v80 = a7;
    v81 = a8 & 0xFFFFFFFFFFFFFFLL;
    v39 = _decodeScalar(_:startingAt:)();
    if ((a5 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_13:
  v40 = v77;
  if (v39 > 0x7F || (v77 & 1) == 0)
  {
    v41 = v39;
    v66 = (Character.asciiValue.getter() & 0x100) == 0;
    if ((v40 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  if (v79 == 1)
  {
LABEL_34:

    goto LABEL_35;
  }

  v41 = v39;
  v66 = 1;
LABEL_22:
  v42 = _StringGuts.validateScalarIndex(_:)(a2, a7, a8);
  if ((a8 & 0x1000000000000000) != 0)
  {
    v70 = String.UnicodeScalarView._foreignIndex(after:)();
  }

  else
  {
    v43 = v42 >> 16;
    if ((a8 & 0x2000000000000000) != 0)
    {
      v80 = a7;
      v81 = a8 & 0xFFFFFFFFFFFFFFLL;
      v45 = *(&v80 + v43);
    }

    else
    {
      if ((a7 & 0x1000000000000000) != 0)
      {
        v44 = (a8 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v44 = _StringObject.sharedUTF8.getter();
      }

      v45 = *(v44 + v43);
    }

    v46 = v45;
    v47 = __clz(v45 ^ 0xFF) - 24;
    if (v46 >= 0)
    {
      LOBYTE(v47) = 1;
    }

    v70 = ((v43 + v47) << 16) | 5;
  }

LABEL_32:
  if (v79 <= 3u)
  {
    if (v79 < 2u)
    {
      goto LABEL_34;
    }

    if (v79 == 2)
    {
      if (v40)
      {

        Unicode.Scalar.properties.getter();
        v51 = v76;
        Unicode.Scalar.Properties.numericType.getter();
        (*(v67 + 8))(v32, v68);
        v52 = type metadata accessor for Unicode.NumericType();
        v53 = (*(*(v52 - 8) + 48))(v51, 1, v52) != 1;
        outlined destroy of SplitSequence<SubstringSearcher>(v51, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
        goto LABEL_81;
      }

      isHorizontal = Character.isNumber.getter();
      goto LABEL_80;
    }

    if (v40)
    {

      if (v41 != 9)
      {
        Unicode.Scalar.properties.getter();
        v58 = v72;
        Unicode.Scalar.Properties.generalCategory.getter();
        (*(v67 + 8))(v28, v68);
        v60 = v73;
        v59 = v74;
        v61 = v75;
        (*(v74 + 104))(v73, *MEMORY[0x1E69E7878], v75);
        v53 = MEMORY[0x193ACF080](v58, v60);
        v62 = *(v59 + 8);
        v62(v60, v61);
        v62(v58, v61);
LABEL_81:
        v54 = v53 & v66;
        if ((v78 & 1) == 0)
        {
LABEL_82:
          if ((v54 & 1) == 0)
          {
            return 0;
          }

          return v70;
        }

LABEL_73:
        if (v54)
        {
          return 0;
        }

        return v70;
      }

LABEL_68:
      v54 = v66;
      if ((v78 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_73;
    }

    isHorizontal = Character._isHorizontalWhitespace.getter(v69, v71);
LABEL_80:
    v53 = isHorizontal;

    goto LABEL_81;
  }

  if (v79 > 5u)
  {
    if (v79 == 6)
    {
      if (v40)
      {

        Unicode.Scalar.properties.getter();
        v53 = Unicode.Scalar.Properties.isWhitespace.getter();
        (*(v67 + 8))(v25, v68);
        goto LABEL_81;
      }

      isHorizontal = Character.isWhitespace.getter();
      goto LABEL_80;
    }

    if ((v40 & 1) == 0)
    {
      isHorizontal = Character.isWordCharacter.getter();
      goto LABEL_80;
    }

    Unicode.Scalar.properties.getter();
    v55 = Unicode.Scalar.Properties.isAlphabetic.getter();
    (*(v67 + 8))(v22, v68);
    v54 = v55 & v66;
    goto LABEL_72;
  }

  if (v79 != 4)
  {
    if ((v40 & 1) == 0)
    {
      goto LABEL_75;
    }

    if (v41 - 14 > 0xFFFFFFFB || v41 - 8232 < 2)
    {
      goto LABEL_68;
    }

    v54 = v66;
    if (v41 != 133)
    {
LABEL_64:
      if ((v78 & 1) == 0)
      {
        return 0;
      }

      return v70;
    }

LABEL_72:
    if ((v78 & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_73;
  }

  if ((v40 & 1) == 0)
  {
LABEL_75:
    isHorizontal = Character._isNewline.getter(v69, v71);
    goto LABEL_80;
  }

  if (v41 - 14 <= 0xFFFFFFFB && v41 - 8232 >= 2 && v41 != 133 || !v66)
  {
    goto LABEL_64;
  }

  if (v41 != 13 || v33 <= v70 >> 14)
  {
    goto LABEL_35;
  }

  _StringGuts.validateScalarIndex(_:)(v70, a7, a8);
  if ((a8 & 0x1000000000000000) != 0)
  {
    if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() == 10)
    {
      _StringGuts.validateScalarIndex(_:)(v70, a7, a8);
      result = String.UnicodeScalarView._foreignIndex(after:)();
      goto LABEL_92;
    }

    goto LABEL_35;
  }

  if ((a8 & 0x2000000000000000) == 0)
  {
    if ((a7 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    if (_decodeScalar(_:startingAt:)() == 10)
    {
      v48 = _StringGuts.validateScalarIndex(_:)(v70, a7, a8) >> 16;
      if ((a7 & 0x1000000000000000) != 0)
      {
        v49 = (a8 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v49 = _StringObject.sharedUTF8.getter();
      }

      v50 = *(v49 + v48);
      goto LABEL_89;
    }

LABEL_35:
    if (v78)
    {
      return 0;
    }

    return v70;
  }

  v80 = a7;
  v81 = a8 & 0xFFFFFFFFFFFFFFLL;
  if (_decodeScalar(_:startingAt:)() != 10)
  {
    goto LABEL_35;
  }

  v48 = _StringGuts.validateScalarIndex(_:)(v70, a7, a8) >> 16;
  v80 = a7;
  v81 = a8 & 0xFFFFFFFFFFFFFFLL;
  v50 = *(&v80 + v48);
LABEL_89:
  v63 = v50;
  v64 = __clz(v50 ^ 0xFF) - 24;
  if (v63 >= 0)
  {
    LOBYTE(v64) = 1;
  }

  result = ((v48 + v64) << 16) | 5;
LABEL_92:
  if (v78)
  {
    return 0;
  }

  return result;
}

unint64_t String._quickMatch(_:at:limitedBy:isScalarSemantics:)(unsigned __int8 a1, unint64_t a2, unint64_t a3, char a4, unint64_t a5, unint64_t a6)
{
  v10 = String._quickASCIICharacter(at:limitedBy:)(a2, a3, a5, a6);
  if (v12 == 2)
  {
    return 0;
  }

  v14 = v10;
  result = v11;
  v15 = a1;
  if (a1 <= 3u)
  {
    return result;
  }

  v16 = v14;
  if (a1 - 4 < 2)
  {
    if (v14 - 10 > 3 || (v12 & 1) == 0 || (a4 & 1) == 0 || a1 != 5)
    {
      return result;
    }

    v17 = (a5 >> 59) & 1;
    if ((a6 & 0x1000000000000000) == 0)
    {
      LOBYTE(v17) = 1;
    }

    v16 = 4;
    if ((v11 & 0xC) == 4 << v17)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a5, a6);
      if (result >= 0x4000)
      {
        goto LABEL_13;
      }
    }

    else if (v11 >= 0x4000)
    {
LABEL_13:
      if ((a6 & 0x1000000000000000) == 0)
      {
        return (result & 0xFFFFFFFFFFFF0000) - 65532;
      }

      v18 = HIBYTE(a6) & 0xF;
      v15 = a5;
      if ((a6 & 0x2000000000000000) == 0)
      {
        v18 = a5 & 0xFFFFFFFFFFFFLL;
      }

      if (v18 >= result >> 16)
      {
        return String.UTF8View._foreignIndex(before:)();
      }

      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_18:
  if (v15 != 6 || (v16 - 9) >= 5 && v16 != 32 || (v12 & 1) == 0 || (a4 & 1) == 0)
  {
    return result;
  }

  v19 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v19) = 1;
  }

  if ((result & 0xC) != 4 << v19)
  {
    if (result >= 0x4000)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a5, a6);
  if (result >= 0x4000)
  {
LABEL_26:
    if ((a6 & 0x1000000000000000) == 0)
    {
      return (result & 0xFFFFFFFFFFFF0000) - 65532;
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  v20 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 >= result >> 16)
  {
    return String.UTF8View._foreignIndex(before:)();
  }

  __break(1u);
  return result;
}

unint64_t MEProgram.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (1)
    {
      v5 = *(v4 + 8 * v3);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v6);

      MEMORY[0x193ACE8E0](8285, 0xE200000000000000);
      v7 = Instruction.description.getter(v5);
      MEMORY[0x193ACE8E0](v7);

      MEMORY[0x193ACE8E0](91, 0xE100000000000000);

      result = specialized Instruction.OpCode.init(rawValue:)(HIBYTE(v5));
      if (result <= 0x12u && ((1 << result) & 0x60010) != 0)
      {
        if ((v5 & 0xFFFFFFFFFFFFFFLL) >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = Instruction.description.getter(*(v4 + 8 * (v5 & 0xFFFFFFFFFFFFFFLL)));
        MEMORY[0x193ACE8E0](v10);

        MEMORY[0x193ACE8E0](539963168, 0xE400000000000000);
      }

      ++v3;
      MEMORY[0x193ACE8E0](10, 0xE100000000000000);
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t Processor.runQuantify(_:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Quantification.Kind();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v235 - v9;
  v11 = (a1 >> 27);
  v12 = (a1 >> 18) & 0x1FF;
  v38 = v12 == 1;
  v13 = v12 == 1;
  v14 = v11 + (v12 >> 1);
  if (v38)
  {
    v14 = -1;
  }

  v246 = v14;
  v15 = (a1 >> 16) & 3;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_552;
    }

    v16 = MEMORY[0x1E69E8A80];
  }

  else if (v15)
  {
    v16 = MEMORY[0x1E69E8A90];
  }

  else
  {
    v16 = MEMORY[0x1E69E8A88];
  }

  v17 = *(v5 + 104);
  v17(&v235 - v9, *v16, v4);
  v17(v8, *MEMORY[0x1E69E8A88], v4);
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98], MEMORY[0x1E69E8AA8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v5 + 8);
  (v18)(v10, v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (v18)(v8, v4);
  v19 = v257;
  v20 = v255;
  if (v256 == v254 && v257 == v255)
  {
    v21 = 1;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v22 = a1 & 0x4000000000;
  if ((a1 >> 27))
  {
    v23 = 0;
    v24 = 0;
    if (v11 == 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v23 = v13;
  }

  v13 = 0;
  v24 = v23;
LABEL_19:
  v25 = (a1 >> 35) & 7;
  v249 = v2;
  v251 = a1 & 0x4000000000;
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      if (v25 != 4)
      {
LABEL_529:
        __break(1u);
        goto LABEL_530;
      }

      v66 = v2[1];
      v250 = *v2;
      v248 = v66;
      v67 = specialized _CharacterClassModel.Representation.init(rawValue:)(a1);
      LODWORD(v247) = v67;
      if ((v24 & 1) == 0)
      {
        v244 = v21;
        if (v13)
        {
          if (v67 == 8)
          {
            goto LABEL_550;
          }

          v20 = v2[10];
          v19 = v2[11];
          v246 = v20 >> 14;
          if (v20 >> 14 <= v19 >> 14)
          {
            goto LABEL_524;
          }

          v137 = 0;
          v242 = (a1 >> 10) & 1;
          v245 = (a1 >> 9) & 1;
          v22 = v19;
          v13 = v19;
          v138 = v250;
          v18 = v251;
          while (1)
          {
            v21 = v13;
            v143 = v67;
            a1 = v248;
            v67 = String._quickMatch(_:at:limitedBy:isScalarSemantics:)(v67, v13, v20, v18 != 0, v138, v248);
            if (v144 == 2)
            {
              v67 = String._thoroughMatchBuiltinCC(_:at:limitedBy:isInverted:isStrictASCII:isScalarSemantics:)(v143, v13, v20, v245, v242, v18 != 0, v138, a1);
              if (v139)
              {
                goto LABEL_241;
              }
            }

            else if (((v245 ^ v144) & 1) == 0)
            {
LABEL_241:
              v21 = v22;
              v140 = v137;
LABEL_242:
              v65 = v140 == 1;
              if (v140 < 1)
              {
                goto LABEL_524;
              }

              goto LABEL_437;
            }

            v13 = v67;
            v140 = v137 + 1;
            if (v137)
            {
              v141 = v19;
            }

            else
            {
              v141 = v67;
            }

            if (v140 >= 0)
            {
              v19 = v141;
            }

            v142 = v246 > v67 >> 14;
            ++v137;
            v22 = v21;
            LODWORD(v67) = v247;
            if (!v142)
            {
              goto LABEL_242;
            }
          }
        }

        if (v67 == 8)
        {
          goto LABEL_551;
        }

        v19 = v2[11];
        if (v246)
        {
          v206 = v2[10];
          v241 = v206 >> 14;
          if (v206 >> 14 <= v19 >> 14)
          {
            v225 = (a1 >> 27);
            LOBYTE(v207) = 0;
            v226 = 0;
            v21 = v19;
            v13 = v19;
            goto LABEL_496;
          }

          v245 = (a1 >> 27);
          v242 = 0;
          v207 = 0;
          v20 = 1;
          v238 = (a1 >> 10) & 1;
          v243 = (a1 >> 9) & 1;
          v13 = v19;
          v208 = v19;
          v240 = v206;
          while (1)
          {
            v239 = v207;
            v21 = v208;
            v208 = v13;
            a1 = v67;
            v18 = v250;
            v209 = v248;
            v210 = String._quickMatch(_:at:limitedBy:isScalarSemantics:)(v67, v13, v206, v22 != 0, v250, v248);
            if (v211 == 2)
            {
              v210 = String._thoroughMatchBuiltinCC(_:at:limitedBy:isInverted:isStrictASCII:isScalarSemantics:)(a1, v13, v206, v243, v238, v22 != 0, v18, v209);
              if (v212)
              {
                v225 = v245;
                v226 = v20 - 1;
                LOBYTE(v207) = v239;
                goto LABEL_496;
              }
            }

            else if (((v243 ^ v211) & 1) == 0)
            {
              v225 = v245;
              LOBYTE(v207) = v239;
              v226 = v242;
LABEL_496:
              if ((v207 & 1) != 0 || v226 < v225)
              {
                goto LABEL_524;
              }

LABEL_498:
              if (v226 != 0 && (v244 & 1) != 0 && v225 < v226)
              {
                goto LABEL_511;
              }

              goto LABEL_516;
            }

            v13 = v210;
            if (v245 == v20)
            {
              v213 = v210;
            }

            else
            {
              v213 = v19;
            }

            if ((v20 & 0x8000000000000000) == 0)
            {
              v19 = v213;
            }

            v67 = v247;
            v206 = v240;
            if ((v20 & 0x8000000000000000) == 0 && v20 >= v246)
            {
              goto LABEL_417;
            }

            v207 = v20++ >> 63;
            ++v242;
            if (v241 <= v13 >> 14)
            {
              v225 = v245;
              v226 = v20 - 1;
              v21 = v208;
              goto LABEL_496;
            }
          }
        }

        v245 = (a1 >> 27);
        v20 = 0;
        v208 = v19;
        v13 = v19;
LABEL_417:
        v21 = v208;
        v226 = v20;
        v225 = v245;
        if (v20 < v245)
        {
          goto LABEL_524;
        }

        goto LABEL_498;
      }

      if (v67 == 8)
      {
        goto LABEL_549;
      }

      v68 = v2[10];
      v19 = v2[11];
      v246 = v68 >> 14;
      if (v68 >> 14 > v19 >> 14)
      {
        v244 = v21;
        v69 = 0;
        v18 = 1;
        v242 = (a1 >> 10) & 1;
        v243 = v68;
        v245 = (a1 >> 9) & 1;
        v22 = v19;
        v13 = v19;
        v70 = v251;
        v71 = v248;
        while (1)
        {
          v20 = v67;
          v76 = v68;
          a1 = v250;
          v77 = String._quickMatch(_:at:limitedBy:isScalarSemantics:)(v67, v13, v68, v70 != 0, v250, v71);
          if (v78 == 2)
          {
            v72 = v20;
            v20 = v13;
            v73 = String._thoroughMatchBuiltinCC(_:at:limitedBy:isInverted:isStrictASCII:isScalarSemantics:)(v72, v13, v76, v245, v242, v70 != 0, a1, v71);
            if (v74)
            {
              goto LABEL_435;
            }

            v13 = v73;
            v21 = v20;
          }

          else
          {
            if (((v245 ^ v78) & 1) == 0)
            {
              v69 = v18 - 1;
LABEL_435:
              v21 = v22;
              if ((v69 & 0x8000000000000000) != 0)
              {
                goto LABEL_524;
              }

LABEL_436:
              v65 = v69 == 0;
LABEL_437:
              v218 = !v65;
              if (v244 & v218)
              {
                goto LABEL_511;
              }

              goto LABEL_516;
            }

            v21 = v13;
            v13 = v77;
          }

          ++v69;
          if (v18)
          {
            v75 = v19;
          }

          else
          {
            v75 = v13;
          }

          if ((v18 & 0x8000000000000000) == 0)
          {
            v19 = v75;
          }

          ++v18;
          v22 = v21;
          v67 = v247;
          v68 = v243;
          if (v246 <= v13 >> 14)
          {
            v69 = v18 - 1;
            if (((v18 - 1) & 0x8000000000000000) != 0)
            {
              goto LABEL_524;
            }

            goto LABEL_436;
          }
        }
      }

LABEL_244:
      v13 = v19;
      goto LABEL_516;
    }

    v29 = *v2;
    v18 = v2[1];
    v31 = v2 + 10;
    v30 = v2[10];
    v19 = v31[1];
    v250 = v29;
    v247 = v18;
    v248 = v30;
    if (v24)
    {
      v32 = v30 >> 14;
      if (v30 >> 14 <= v19 >> 14)
      {
        v13 = v19;
        goto LABEL_473;
      }

      v244 = v21;
      v33 = 0;
      v34 = (v29 >> 59) & 1;
      if ((v18 & 0x1000000000000000) == 0)
      {
        LOBYTE(v34) = 1;
      }

      v245 = 4 << v34;
      v246 = v30 >> 14;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v35 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v35 = v29 & 0xFFFFFFFFFFFFLL;
      }

      v241 = v18 & 0xFFFFFFFFFFFFFFLL;
      v242 = v35;
      v240 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v20 = 1;
      v22 = v19;
      v13 = v19;
      v243 = a1;
      while (1)
      {
        v21 = v13;
        if (a1)
        {
          break;
        }

        v83 = v248;
        v84 = v29;
        v85 = String._quickASCIICharacter(at:limitedBy:)(v13, v248, v29, v18);
        if (v87 == 2)
        {
          a1 = v19;
          v88 = String._thoroughMatchAnyNonNewline(at:limitedBy:isScalarSemantics:)(v13, v83, v251 != 0, v84, v18);
          if (v89)
          {
            v33 = v20 - 1;
            v21 = v22;
            goto LABEL_470;
          }

          v13 = v88;
          v29 = v250;
          v32 = v246;
          a1 = v243;
        }

        else
        {
          v32 = v246;
          if ((v85 - 14) >= 0xFFFFFFFFFFFFFFFCLL)
          {
            v21 = v22;
LABEL_470:
            if ((v33 & 0x8000000000000000) != 0)
            {
              goto LABEL_524;
            }

            if ((v244 & (v33 != 0)) != 0)
            {
              v223 = 0;
              goto LABEL_510;
            }

LABEL_473:
            v19 = 0;
            v21 = 0;
            v223 = 1;
            goto LABEL_510;
          }

          v13 = v86;
          v29 = v250;
          v18 = v247;
          a1 = v243;
        }

LABEL_120:
        ++v33;
        if (v20)
        {
          v82 = v19;
        }

        else
        {
          v82 = v13;
        }

        if ((v20 & 0x8000000000000000) == 0)
        {
          v19 = v82;
        }

        ++v20;
        v22 = v21;
        if (v32 <= v13 >> 14)
        {
          v33 = v20 - 1;
          goto LABEL_470;
        }
      }

      if (!v251)
      {
        v91 = String.index(after:)();
LABEL_138:
        v29 = v250;
        v13 = v91;
        goto LABEL_120;
      }

      if ((v13 & 0xC) == v245 || (v13 & 1) == 0)
      {
        v90 = v13;
        if ((v13 & 0xC) == v245)
        {
          v90 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, v29, v18);
          v29 = v250;
        }

        if (v242 <= v90 >> 16)
        {
          goto LABEL_537;
        }

        if ((v90 & 1) == 0)
        {
          v94 = v90;
          v95 = _StringGuts.scalarAlignSlow(_:)(v90, v29, v18);
          v29 = v250;
          v96 = v94 & 0xC;
          v21 = v13;
          v90 = v96 | v95 & 0xFFFFFFFFFFFFFFF3 | 1;
          if ((v18 & 0x1000000000000000) == 0)
          {
LABEL_144:
            v92 = v90 >> 16;
            if ((v18 & 0x2000000000000000) != 0)
            {
              v256 = v29;
              v257 = v241;
              v79 = *(&v256 + v92);
            }

            else
            {
              v93 = v240;
              if ((v29 & 0x1000000000000000) == 0)
              {
                v93 = _StringObject.sharedUTF8.getter();
                v29 = v250;
              }

              v79 = *(v93 + v92);
            }

            v80 = v79;
            v81 = __clz(v79 ^ 0xFF) - 24;
            if (v80 >= 0)
            {
              LOBYTE(v81) = 1;
            }

            v13 = ((v92 + v81) << 16) | 5;
            goto LABEL_120;
          }

          goto LABEL_149;
        }
      }

      else
      {
        v90 = v13;
        if (v242 <= v13 >> 16)
        {
          goto LABEL_536;
        }
      }

      if ((v18 & 0x1000000000000000) == 0)
      {
        goto LABEL_144;
      }

LABEL_149:
      v91 = String.UnicodeScalarView._foreignIndex(after:)();
      goto LABEL_138;
    }

    if (v13)
    {
      v130 = v30 >> 14;
      if (v30 >> 14 <= v19 >> 14)
      {
        goto LABEL_524;
      }

      v131 = v19;
      v244 = v21;
      v132 = 0;
      v133 = (v29 >> 59) & 1;
      if ((v18 & 0x1000000000000000) == 0)
      {
        LOBYTE(v133) = 1;
      }

      v134 = 4 << v133;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v135 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v135 = v29 & 0xFFFFFFFFFFFFLL;
      }

      v245 = v18 & 0xFFFFFFFFFFFFFFLL;
      v246 = v135;
      v242 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v136 = v19;
      while (1)
      {
        v22 = v131;
        if (a1)
        {
          break;
        }

        v20 = v29;
        v150 = String._quickASCIICharacter(at:limitedBy:)(v131, v30, v29, v18);
        if (v152 == 2)
        {
          v131 = String._thoroughMatchAnyNonNewline(at:limitedBy:isScalarSemantics:)(v22, v30, v251 != 0, v20, v18);
          if (v153)
          {
            goto LABEL_448;
          }

          v29 = v250;
          v30 = v248;
        }

        else
        {
          if ((v150 - 14) >= 0xFFFFFFFFFFFFFFFCLL)
          {
LABEL_448:
            v131 = v22;
            v22 = v136;
            v148 = v132;
LABEL_449:
            if ((v244 & (v148 != 1)) != 0)
            {
              v220 = v19;
            }

            else
            {
              v220 = 0;
            }

            if ((v244 & (v148 != 1)) != 0)
            {
              v221 = v22;
            }

            else
            {
              v221 = 0;
            }

            v222 = v148 < 1;
            if (v148 >= 1)
            {
              v13 = v131;
            }

            else
            {
              v13 = 0;
            }

            if (v148 >= 1)
            {
              v19 = v220;
            }

            else
            {
              v19 = 0;
            }

            if (v148 >= 1)
            {
              v21 = v221;
            }

            else
            {
              v21 = 0;
            }

            v223 = v148 >= 1 && (v244 & (v148 != 1)) == 0;
            if (!v222)
            {
              goto LABEL_510;
            }

            goto LABEL_524;
          }

          v131 = v151;
          v29 = v250;
          v18 = v247;
          v30 = v248;
        }

LABEL_249:
        v148 = v132 + 1;
        if (v132)
        {
          v149 = v19;
        }

        else
        {
          v149 = v131;
        }

        if (v148 >= 0)
        {
          v19 = v149;
        }

        ++v132;
        v136 = v22;
        if (v130 <= v131 >> 14)
        {
          goto LABEL_449;
        }
      }

      if (!v251)
      {
        v131 = String.index(after:)();
LABEL_267:
        v29 = v250;
        goto LABEL_249;
      }

      if ((v131 & 0xC) == v134 || (v131 & 1) == 0)
      {
        if ((v131 & 0xC) == v134)
        {
          v131 = _StringGuts._slowEnsureMatchingEncoding(_:)(v131, v29, v18);
          v29 = v250;
        }

        if (v246 <= v131 >> 16)
        {
          goto LABEL_544;
        }

        if ((v131 & 1) == 0)
        {
          v156 = v131;
          v157 = _StringGuts.scalarAlignSlow(_:)(v131, v29, v18);
          v29 = v250;
          v131 = v156 & 0xC | v157 & 0xFFFFFFFFFFFFFFF3 | 1;
          if ((v18 & 0x1000000000000000) == 0)
          {
LABEL_273:
            v154 = v131 >> 16;
            if ((v18 & 0x2000000000000000) != 0)
            {
              v256 = v29;
              v257 = v245;
              v145 = *(&v256 + v154);
            }

            else
            {
              v155 = v242;
              if ((v29 & 0x1000000000000000) == 0)
              {
                v155 = _StringObject.sharedUTF8.getter();
                v29 = v250;
              }

              v145 = *(v155 + v154);
            }

            v146 = v145;
            v147 = __clz(v145 ^ 0xFF) - 24;
            if (v146 >= 0)
            {
              LOBYTE(v147) = 1;
            }

            v131 = ((v154 + v147) << 16) | 5;
            goto LABEL_249;
          }

          goto LABEL_278;
        }
      }

      else if (v246 <= v131 >> 16)
      {
        goto LABEL_543;
      }

      if ((v18 & 0x1000000000000000) == 0)
      {
        goto LABEL_273;
      }

LABEL_278:
      v131 = String.UnicodeScalarView._foreignIndex(after:)();
      goto LABEL_267;
    }

    v244 = v21;
    v245 = (a1 >> 27);
    if (!v246)
    {
      v20 = 0;
      v22 = v19;
      v13 = v19;
LABEL_413:
      v21 = v22;
      v214 = v20;
      if (v20 < v245)
      {
        goto LABEL_524;
      }

      goto LABEL_521;
    }

    v185 = v30 >> 14;
    v186 = (v29 >> 59) & 1;
    if ((v18 & 0x1000000000000000) == 0)
    {
      LOBYTE(v186) = 1;
    }

    v187 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v187 = v29 & 0xFFFFFFFFFFFFLL;
    }

    v239 = v187;
    if (v185 <= v19 >> 14)
    {
      LOBYTE(v189) = 0;
      v214 = 0;
      v21 = v19;
      v13 = v19;
      goto LABEL_519;
    }

    v188 = 0;
    v189 = 0;
    v240 = 4 << v186;
    v237 = v18 & 0xFFFFFFFFFFFFFFLL;
    v236 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v20 = 1;
    v13 = v19;
    v22 = v19;
    v241 = v185;
    while (1)
    {
      v21 = v22;
      v22 = v13;
      if (a1)
      {
        if (v251)
        {
          if ((v13 & 0xC) == v240 || (v13 & 1) == 0)
          {
            v197 = v13;
            if ((v13 & 0xC) == v240)
            {
              v197 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, v29, v18);
              v29 = v250;
            }

            if (v239 <= v197 >> 16)
            {
              goto LABEL_548;
            }

            if (v197)
            {
              goto LABEL_369;
            }

            v204 = v197;
            v205 = _StringGuts.scalarAlignSlow(_:)(v197, v29, v18);
            v29 = v250;
            v197 = v204 & 0xC | v205 & 0xFFFFFFFFFFFFFFF3 | 1;
            if ((v18 & 0x1000000000000000) == 0)
            {
LABEL_370:
              v198 = v197 >> 16;
              if ((v18 & 0x2000000000000000) != 0)
              {
                v256 = v29;
                v257 = v237;
                v200 = *(&v256 + v198);
              }

              else
              {
                v199 = v236;
                if ((v29 & 0x1000000000000000) == 0)
                {
                  v199 = _StringObject.sharedUTF8.getter();
                }

                v200 = *(v199 + v198);
              }

              v201 = v200;
              v202 = __clz(v200 ^ 0xFF) - 24;
              if (v201 >= 0)
              {
                LOBYTE(v202) = 1;
              }

              v13 = ((v198 + v202) << 16) | 5;
              goto LABEL_378;
            }
          }

          else
          {
            v197 = v13;
            if (v239 <= v13 >> 16)
            {
              goto LABEL_547;
            }

LABEL_369:
            if ((v18 & 0x1000000000000000) == 0)
            {
              goto LABEL_370;
            }
          }

          v13 = String.UnicodeScalarView._foreignIndex(after:)();
          goto LABEL_378;
        }

        v13 = String.index(after:)();
      }

      else
      {
        v242 = v188;
        v190 = v248;
        v191 = v29;
        v192 = String._quickASCIICharacter(at:limitedBy:)(v13, v248, v29, v18);
        if (v194 == 2)
        {
          v238 = v189;
          v195 = String._thoroughMatchAnyNonNewline(at:limitedBy:isScalarSemantics:)(v13, v190, v251 != 0, v191, v18);
          if (v196)
          {
            v214 = v242;
            LOBYTE(v189) = v238;
            goto LABEL_519;
          }

          v13 = v195;
        }

        else
        {
          if ((v192 - 14) >= 0xFFFFFFFFFFFFFFFCLL)
          {
            v214 = v20 - 1;
LABEL_519:
            if ((v189 & 1) != 0 || v214 < v245)
            {
              goto LABEL_524;
            }

LABEL_521:
            if (v214 != 0 && (v244 & 1) != 0 && v245 < v214)
            {
              goto LABEL_511;
            }

            goto LABEL_516;
          }

          v13 = v193;
          v18 = v247;
        }

        v185 = v241;
        v188 = v242;
      }

LABEL_378:
      if (v245 == v20)
      {
        v203 = v13;
      }

      else
      {
        v203 = v19;
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        v19 = v203;
      }

      if ((v20 & 0x8000000000000000) == 0 && v20 >= v246)
      {
        goto LABEL_413;
      }

      v189 = v20++ >> 63;
      ++v188;
      v29 = v250;
      if (v185 <= v13 >> 14)
      {
        v214 = v20 - 1;
        v21 = v22;
        goto LABEL_519;
      }
    }
  }

  if (!v25)
  {
    v47 = *v2;
    v22 = v2[1];
    v48 = v2[15];
    v49 = *(v48 + 16);
    if (!v24)
    {
      v244 = v21;
      if (!v13)
      {
        if (a1 >= v49)
        {
          goto LABEL_546;
        }

        v19 = v2[11];
        v245 = (a1 >> 27);
        if (v246)
        {
          v158 = v48 + 24 * a1;
          v20 = *(v158 + 32);
          a1 = *(v158 + 40);
          v159 = *(v158 + 48);
          v160 = v2[10];
          v18 = v47;
          v161 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(v20, a1, v159, v19, v160, v251 != 0, v47, v22);
          if (v162)
          {
            LOBYTE(v163) = 0;
            v164 = 0;
            v21 = v19;
            v13 = v19;
            goto LABEL_476;
          }

          v215 = 1;
          v13 = v19;
          while (1)
          {
            v21 = v13;
            v164 = v215;
            v13 = v161;
            if (v245 == v215)
            {
              v217 = v161;
            }

            else
            {
              v217 = v19;
            }

            if ((v164 & 0x8000000000000000) == 0)
            {
              v19 = v217;
            }

            if ((v164 & 0x8000000000000000) == 0 && v164 >= v246)
            {
              break;
            }

            v161 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(v20, a1, v159, v161, v160, v251 != 0, v18, v22);
            v215 = v164 + 1;
            if (v216)
            {
              v163 = v164 >> 63;
LABEL_476:
              if ((v163 & 1) != 0 || v164 < v245)
              {
                goto LABEL_524;
              }

LABEL_478:
              if (v164 != 0 && (v244 & 1) != 0 && v245 < v164)
              {
                goto LABEL_511;
              }

              goto LABEL_516;
            }
          }

          v11 = v245;
        }

        else
        {
          v164 = 0;
          v21 = v19;
          v13 = v19;
        }

        if (v164 < v11)
        {
          goto LABEL_524;
        }

        goto LABEL_478;
      }

      v248 = v22;
      if (a1 >= v49)
      {
        goto LABEL_545;
      }

      v97 = v48 + 24 * a1;
      v98 = *(v97 + 32);
      v100 = *(v97 + 40);
      v99 = *(v97 + 48);
      v101 = v2[10];
      v19 = v2[11];
      v18 = v47;
      v102 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(*(v97 + 32), v100, v99, v19, v101, v251 != 0, v47, v248);
      if (v103)
      {
        goto LABEL_524;
      }

      v104 = v102;
      LODWORD(v250) = v98;
      v105 = v99;
      v69 = -1;
      v13 = v19;
      v22 = v101;
      v20 = v251;
      a1 = v248;
      do
      {
        v21 = v13;
        v13 = v104;
        v106 = v69 + 2;
        if (__CFADD__(v69++, 1))
        {
          v108 = v104;
        }

        else
        {
          v108 = v19;
        }

        if (v106 >= 0)
        {
          v19 = v108;
        }

        v104 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(v250, v100, v105, v104, v22, v20 != 0, v18, a1);
      }

      while ((v109 & 1) == 0);
      if (v69 > 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_524;
      }

      goto LABEL_436;
    }

    if (a1 >= v49)
    {
      goto LABEL_538;
    }

    v50 = v2[1];
    v51 = v48 + 24 * a1;
    a1 = *(v51 + 32);
    v53 = *(v51 + 40);
    v52 = *(v51 + 48);
    v54 = v2[10];
    v19 = v2[11];
    v22 = *v2;
    v55 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(*(v51 + 32), v53, v52, v19, v54, v251 != 0, v47, v50);
    if ((v56 & 1) == 0)
    {
      v57 = v55;
      v244 = v21;
      v58 = 1;
      v59 = v19;
      v250 = v54;
      v18 = v251;
      v60 = v52;
      do
      {
        v20 = v59;
        v61 = v58;
        v59 = v57;
        v62 = v58 < 0;
        if (v58)
        {
          v63 = v19;
        }

        else
        {
          v63 = v57;
        }

        if (!v62)
        {
          v19 = v63;
        }

        v57 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(a1, v53, v60, v57, v250, v18 != 0, v22, v50);
        v58 = v61 + 1;
      }

      while ((v64 & 1) == 0);
      if (v61 < 0)
      {
        goto LABEL_524;
      }

      v13 = v59;
      v21 = v20;
      v65 = v58 == 1;
      goto LABEL_437;
    }

    goto LABEL_244;
  }

  v18 = v2[1];
  v250 = *v2;
  LODWORD(v248) = a1;
  a1 = v2[11];
  if (!v24)
  {
    if (v13)
    {
      v247 = v2[10] >> 14;
      if (v247 <= a1 >> 14)
      {
        goto LABEL_524;
      }

      v244 = v21;
      v110 = 0;
      v111 = (v250 >> 59) & 1;
      if ((v18 & 0x1000000000000000) == 0)
      {
        LOBYTE(v111) = 1;
      }

      v20 = 4 << v111;
      v242 = v250 & 0xFFFFFFFFFFFFLL;
      v243 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v112 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v112 = v250 & 0xFFFFFFFFFFFFLL;
      }

      v245 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v246 = v18 & 0xFFFFFFFFFFFFFFLL;
      v22 = a1;
      v13 = a1;
      while (1)
      {
        v115 = v13 & 0xC;
        v116 = (v13 & 1) == 0 || v115 == v20;
        v117 = v116;
        if (v116)
        {
          v118 = v13;
          if (v115 == v20)
          {
            v13 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, v250, v18);
          }

          v119 = v13 >> 16;
          if (v13 >> 16 >= v112)
          {
            __break(1u);
LABEL_533:
            __break(1u);
LABEL_534:
            __break(1u);
LABEL_535:
            __break(1u);
LABEL_536:
            __break(1u);
LABEL_537:
            __break(1u);
LABEL_538:
            __break(1u);
LABEL_539:
            __break(1u);
LABEL_540:
            __break(1u);
LABEL_541:
            __break(1u);
LABEL_542:
            __break(1u);
LABEL_543:
            __break(1u);
LABEL_544:
            __break(1u);
LABEL_545:
            __break(1u);
LABEL_546:
            __break(1u);
LABEL_547:
            __break(1u);
LABEL_548:
            __break(1u);
LABEL_549:
            __break(1u);
LABEL_550:
            __break(1u);
LABEL_551:
            __break(1u);
LABEL_552:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          if ((v13 & 1) == 0)
          {
            v119 = _StringGuts.scalarAlignSlow(_:)(v13, v250, v18) >> 16;
          }
        }

        else
        {
          v119 = v13 >> 16;
          v118 = v13;
          if (v13 >> 16 >= v112)
          {
            goto LABEL_533;
          }
        }

        if ((v18 & 0x1000000000000000) != 0)
        {
          v120 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          if ((v18 & 0x2000000000000000) != 0)
          {
            v256 = v250;
            v257 = v246;
          }

          else if ((v250 & 0x1000000000000000) == 0)
          {
            v241 = v119;
            _StringObject.sharedUTF8.getter();
          }

          v120 = _decodeScalar(_:startingAt:)();
        }

        if (v120 != v248)
        {
          v13 = v118;
LABEL_484:
          v21 = v22;
          v113 = v110;
LABEL_485:
          v219 = v113 == 1;
          if (v113 >= 1)
          {
            goto LABEL_486;
          }

LABEL_524:
          Processor.signalFailure(preservingCaptures:)(0);
          return 0;
        }

        if (v117)
        {
          v121 = v118;
          if (v115 == v20)
          {
            v121 = _StringGuts._slowEnsureMatchingEncoding(_:)(v118, v250, v18);
            if (v112 <= v121 >> 16)
            {
              goto LABEL_534;
            }
          }

          else if (v112 <= v118 >> 16)
          {
            goto LABEL_534;
          }

          v21 = v118;
          if ((v121 & 1) == 0)
          {
            v122 = v121;
            v123 = _StringGuts.scalarAlignSlow(_:)(v121, v250, v18);
            v124 = v122 & 0xC;
            v21 = v118;
            v121 = v124 | v123 & 0xFFFFFFFFFFFFFFF3 | 1;
          }
        }

        else
        {
          v21 = v118;
          v121 = v118;
          if (v112 <= v118 >> 16)
          {
            goto LABEL_535;
          }
        }

        if ((v18 & 0x1000000000000000) != 0)
        {
          v13 = String.UnicodeScalarView._foreignIndex(after:)();
          if (v251)
          {
            goto LABEL_171;
          }
        }

        else
        {
          v125 = v121 >> 16;
          if ((v18 & 0x2000000000000000) != 0)
          {
            v256 = v250;
            v257 = v246;
            v127 = *(&v256 + v125);
          }

          else
          {
            v126 = v245;
            if ((v250 & 0x1000000000000000) == 0)
            {
              v126 = _StringObject.sharedUTF8.getter();
            }

            v127 = *(v126 + v125);
          }

          v128 = v127;
          v129 = __clz(v127 ^ 0xFF) - 24;
          if (v128 >= 0)
          {
            LOBYTE(v129) = 1;
          }

          v13 = ((v125 + v129) << 16) | 5;
          if (v251)
          {
            goto LABEL_171;
          }
        }

        if ((String.isOnGraphemeClusterBoundary(_:)() & 1) == 0)
        {
          v13 = v21;
          goto LABEL_484;
        }

LABEL_171:
        v113 = v110 + 1;
        if (v110)
        {
          v114 = a1;
        }

        else
        {
          v114 = v13;
        }

        if (v113 >= 0)
        {
          a1 = v114;
        }

        ++v110;
        v22 = v21;
        if (v247 <= v13 >> 14)
        {
          goto LABEL_485;
        }
      }
    }

    v244 = v21;
    if (v246)
    {
      v165 = v2[10] >> 14;
      v166 = (v250 >> 59) & 1;
      if ((v18 & 0x1000000000000000) == 0)
      {
        LOBYTE(v166) = 1;
      }

      v238 = HIBYTE(v18) & 0xF;
      v237 = v250 & 0xFFFFFFFFFFFFLL;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v167 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v167 = v250 & 0xFFFFFFFFFFFFLL;
      }

      v247 = v165;
      if (v165 > a1 >> 14)
      {
        v20 = 0;
        v168 = 0;
        v243 = 4 << v166;
        v239 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v240 = v18 & 0xFFFFFFFFFFFFFFLL;
        v169 = 1;
        v170 = a1;
        v22 = a1;
        while (1)
        {
          v241 = v22;
          v242 = v168;
          v171 = v11;
          v22 = v170;
          v172 = v170 & 0xC;
          v38 = (v170 & 1) == 0;
          v173 = v243;
          v174 = v38 || v172 == v243;
          v175 = v174;
          if (v174)
          {
            v176 = v22;
            if (v172 == v243)
            {
              v176 = _StringGuts._slowEnsureMatchingEncoding(_:)(v22, v250, v18);
            }

            if (v176 >> 16 >= v167)
            {
              goto LABEL_539;
            }

            if ((v176 & 1) == 0)
            {
              _StringGuts.scalarAlignSlow(_:)(v176, v250, v18);
            }
          }

          else if (v22 >> 16 >= v167)
          {
            goto LABEL_540;
          }

          if ((v18 & 0x1000000000000000) != 0)
          {
            v177 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
          }

          else
          {
            if ((v18 & 0x2000000000000000) != 0)
            {
              v256 = v250;
              v257 = v240;
            }

            else if ((v250 & 0x1000000000000000) == 0)
            {
              _StringObject.sharedUTF8.getter();
              v173 = v243;
            }

            v177 = _decodeScalar(_:startingAt:)();
          }

          if (v177 != v248)
          {
            v20 = v169 - 1;
            v170 = v22;
            v11 = v171;
LABEL_502:
            v22 = v241;
            LOBYTE(v168) = v242;
            goto LABEL_503;
          }

          if (v175)
          {
            v178 = v22;
            if (v172 == v173)
            {
              v178 = _StringGuts._slowEnsureMatchingEncoding(_:)(v22, v250, v18);
              if (v167 <= v178 >> 16)
              {
                goto LABEL_542;
              }
            }

            else if (v167 <= v22 >> 16)
            {
              goto LABEL_542;
            }

            v11 = v171;
            if ((v178 & 1) == 0)
            {
              v178 = v178 & 0xC | _StringGuts.scalarAlignSlow(_:)(v178, v250, v18) & 0xFFFFFFFFFFFFFFF3 | 1;
            }
          }

          else
          {
            v178 = v22;
            v11 = v171;
            if (v167 <= v22 >> 16)
            {
              goto LABEL_541;
            }
          }

          if ((v18 & 0x1000000000000000) != 0)
          {
            v170 = String.UnicodeScalarView._foreignIndex(after:)();
            if (v251)
            {
              goto LABEL_332;
            }
          }

          else
          {
            v179 = v178 >> 16;
            if ((v18 & 0x2000000000000000) != 0)
            {
              v256 = v250;
              v257 = v240;
              v181 = *(&v256 + v179);
            }

            else
            {
              v180 = v239;
              if ((v250 & 0x1000000000000000) == 0)
              {
                v180 = _StringObject.sharedUTF8.getter();
              }

              v181 = *(v180 + v179);
            }

            v182 = v181;
            v183 = __clz(v181 ^ 0xFF) - 24;
            if (v182 >= 0)
            {
              LOBYTE(v183) = 1;
            }

            v170 = ((v179 + v183) << 16) | 5;
            if (v251)
            {
              goto LABEL_332;
            }
          }

          if ((String.isOnGraphemeClusterBoundary(_:)() & 1) == 0)
          {
            v170 = v22;
            goto LABEL_502;
          }

LABEL_332:
          if (v11 == v169)
          {
            v184 = v170;
          }

          else
          {
            v184 = a1;
          }

          if ((v169 & 0x8000000000000000) == 0)
          {
            a1 = v184;
          }

          if ((v169 & 0x8000000000000000) == 0 && v169 >= v246)
          {
            goto LABEL_410;
          }

          v168 = v169++ >> 63;
          ++v20;
          if (v247 <= v170 >> 14)
          {
            v20 = v169 - 1;
            goto LABEL_503;
          }
        }
      }

      LOBYTE(v168) = 0;
      v20 = 0;
      v22 = a1;
      v170 = a1;
LABEL_503:
      v223 = 0;
      v13 = 0;
      v227 = 1;
      v19 = 0;
      v21 = 0;
      if ((v168 & 1) != 0 || v20 < v11)
      {
LABEL_509:
        if ((v227 & 1) == 0)
        {
          goto LABEL_510;
        }

        goto LABEL_524;
      }
    }

    else
    {
      v169 = 0;
      v22 = a1;
      v170 = a1;
LABEL_410:
      v20 = v169;
      if (v169 < v11)
      {
        goto LABEL_524;
      }
    }

    if (v20 != 0 && (v244 & 1) != 0 && v20 > v11)
    {
      v223 = 0;
      v13 = v170;
      v19 = a1;
      v21 = v22;
      goto LABEL_510;
    }

    v19 = 0;
    v21 = 0;
    v227 = 0;
    v223 = 1;
    v13 = v170;
    goto LABEL_509;
  }

  v247 = v2[10] >> 14;
  if (v247 <= a1 >> 14)
  {
    v13 = a1;
    goto LABEL_491;
  }

  v244 = v21;
  v24 = 0;
  v26 = (v250 >> 59) & 1;
  if ((v18 & 0x1000000000000000) == 0)
  {
    LOBYTE(v26) = 1;
  }

  v20 = 4 << v26;
  v242 = v250 & 0xFFFFFFFFFFFFLL;
  v243 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v27 = v250 & 0xFFFFFFFFFFFFLL;
  }

  v245 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v246 = v18 & 0xFFFFFFFFFFFFFFLL;
  v28 = 1;
  v22 = a1;
  v13 = a1;
  while (1)
  {
    v37 = v13;
    v21 = v13 & 0xC;
    v38 = (v13 & 1) == 0 || v21 == v20;
    v19 = v38;
    if (v38)
    {
      if (v21 == v20)
      {
        v37 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, v250, v18);
      }

      v39 = v37 >> 16;
      if (v37 >> 16 >= v27)
      {
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
LABEL_528:
        __break(1u);
        goto LABEL_529;
      }

      if ((v37 & 1) == 0)
      {
        v39 = _StringGuts.scalarAlignSlow(_:)(v37, v250, v18) >> 16;
      }
    }

    else
    {
      v39 = v13 >> 16;
      if (v13 >> 16 >= v27)
      {
        goto LABEL_526;
      }
    }

    if ((v18 & 0x1000000000000000) != 0)
    {
      v40 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((v18 & 0x2000000000000000) != 0)
      {
        v256 = v250;
        v257 = v246;
      }

      else if ((v250 & 0x1000000000000000) == 0)
      {
        v241 = v39;
        _StringObject.sharedUTF8.getter();
      }

      v40 = _decodeScalar(_:startingAt:)();
    }

    if (v40 != v248)
    {
      break;
    }

    if (v19)
    {
      v41 = v13;
      if (v21 == v20)
      {
        v41 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, v250, v18);
        if (v27 <= v41 >> 16)
        {
          goto LABEL_528;
        }
      }

      else if (v27 <= v13 >> 16)
      {
        goto LABEL_528;
      }

      if ((v41 & 1) == 0)
      {
        v41 = v41 & 0xC | _StringGuts.scalarAlignSlow(_:)(v41, v250, v18) & 0xFFFFFFFFFFFFFFF3 | 1;
      }

      v21 = v13;
    }

    else
    {
      v21 = v13;
      v41 = v13;
      if (v27 <= v13 >> 16)
      {
        goto LABEL_527;
      }
    }

    if ((v18 & 0x1000000000000000) != 0)
    {
      v13 = String.UnicodeScalarView._foreignIndex(after:)();
      if (v251)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v42 = v41 >> 16;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v256 = v250;
        v257 = v246;
        v44 = *(&v256 + v42);
      }

      else
      {
        v43 = v245;
        if ((v250 & 0x1000000000000000) == 0)
        {
          v43 = _StringObject.sharedUTF8.getter();
        }

        v44 = *(v43 + v42);
      }

      v45 = v44;
      v46 = __clz(v44 ^ 0xFF) - 24;
      if (v45 >= 0)
      {
        LOBYTE(v46) = 1;
      }

      v13 = ((v42 + v46) << 16) | 5;
      if (v251)
      {
        goto LABEL_39;
      }
    }

    if ((String.isOnGraphemeClusterBoundary(_:)() & 1) == 0)
    {
      v24 = v28 - 1;
      v13 = v21;
      break;
    }

LABEL_39:
    ++v24;
    if (v28)
    {
      v36 = a1;
    }

    else
    {
      v36 = v13;
    }

    if (v28 >= 0)
    {
      a1 = v36;
    }

    ++v28;
    v22 = v21;
    if (v247 <= v13 >> 14)
    {
      v24 = v28 - 1;
      goto LABEL_445;
    }
  }

  v21 = v22;
LABEL_445:
  if (v24 < 0)
  {
    goto LABEL_524;
  }

  v219 = v24 == 0;
LABEL_486:
  v224 = !v219;
  if (v244 & v224)
  {
    v223 = 0;
    v19 = a1;
    goto LABEL_510;
  }

LABEL_491:
  a1 = 0;
  v21 = 0;
  v223 = 1;
  v19 = 0;
LABEL_510:
  if (!v223)
  {
LABEL_511:
    v228 = v249[12];
    v24 = v228 + 1;
    if (!__OFADD__(v228, 1))
    {
      v20 = v249[20];
      v22 = v249[23];
      v18 = v249[24];
      a1 = v249[22];

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_513;
      }

      goto LABEL_531;
    }

LABEL_530:
    __break(1u);
LABEL_531:
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
LABEL_513:
    v230 = *(v22 + 16);
    v229 = *(v22 + 24);
    if (v230 >= v229 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v229 > 1), v230 + 1, 1, v22);
    }

    v253 = 1;
    v252 = 0;
    v231 = v251 >> 38;
    *(v22 + 16) = v230 + 1;
    v232 = v22 + 72 * v230;
    *(v232 + 32) = v24;
    *(v232 + 40) = 0;
    *(v232 + 48) = v253;
    v233 = v256;
    *(v232 + 52) = *(&v256 + 3);
    *(v232 + 49) = v233;
    *(v232 + 56) = v19;
    *(v232 + 64) = v21;
    *(v232 + 72) = v252;
    *(v232 + 73) = v231;
    LOWORD(v231) = WORD2(v254);
    *(v232 + 74) = v254;
    *(v232 + 78) = v231;
    *(v232 + 80) = v18;
    *(v232 + 88) = v20;
    *(v232 + 96) = a1;
    v249[23] = v22;
  }

LABEL_516:
  v249[11] = v13;
  return 1;
}

uint64_t String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(char a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, char a6, unint64_t a7, unint64_t a8)
{
  v16 = String._quickASCIICharacter(at:limitedBy:)(a4, a5, a7, a8);
  if (v18 == 2)
  {
    v19 = a4 >> 14;
    v20 = a5 >> 14;
    if (a6)
    {
      if (v19 >= v20)
      {
        return 0;
      }

      _StringGuts.validateScalarIndex(_:)(a4, a7, a8);
      if ((a8 & 0x1000000000000000) != 0)
      {
        v37 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        if (v37 >= 0x80)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if ((a8 & 0x2000000000000000) != 0)
        {
          v55 = a7;
          v56 = a8 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((a7 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        v37 = _decodeScalar(_:startingAt:)();
        if (v37 >= 0x80)
        {
LABEL_38:
          if (a1)
          {
LABEL_73:
            v48 = _StringGuts.validateScalarIndex(_:)(a4, a7, a8);
            if ((a8 & 0x1000000000000000) != 0)
            {
              return String.UnicodeScalarView._foreignIndex(after:)();
            }

            v49 = v48 >> 16;
            if ((a8 & 0x2000000000000000) != 0)
            {
              v55 = a7;
              v56 = a8 & 0xFFFFFFFFFFFFFFLL;
              v51 = *(&v55 + v49);
            }

            else
            {
              if ((a7 & 0x1000000000000000) != 0)
              {
                v50 = (a8 & 0xFFFFFFFFFFFFFFFLL) + 32;
              }

              else
              {
                v50 = _StringObject.sharedUTF8.getter();
              }

              v51 = *(v50 + v49);
            }

            v52 = v51;
            v53 = __clz(v51 ^ 0xFF) - 24;
            if (v52 >= 0)
            {
              LOBYTE(v53) = 1;
            }

            return ((v49 + v53) << 16) | 5;
          }

          return 0;
        }
      }

      if (v37 >= 0x40)
      {
        v46 = a3;
      }

      else
      {
        v46 = a2;
      }

      v47 = (1 << v37) & v46;
      if (a1)
      {
        if (!v47)
        {
          goto LABEL_73;
        }
      }

      else if (v47)
      {
        goto LABEL_73;
      }

      return 0;
    }

    if (v19 >= v20)
    {
      return 0;
    }

    v30 = String.index(after:)();
    if (v20 >= v30 >> 14)
    {
      v33 = v30;
      v34 = String.subscript.getter();
      v36 = v35;
      if (v34 == 2573)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v31 = String.subscript.getter();
      if ((v31 ^ v32) < 0x4000)
      {

        return 0;
      }

      v33 = v32;
      v41 = Substring.subscript.getter();
      v36 = v42;

      if (v41 == 2573)
      {
LABEL_47:
        if (v36 == 0xE200000000000000)
        {
          goto LABEL_49;
        }
      }
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v43 = Character.asciiValue.getter();

      if ((v43 & 0x100) == 0)
      {
        result = v33;
        if (v43 > 0x3Fu)
        {
          if (v43 < 64)
          {
            if (a1)
            {
              return result;
            }

            return 0;
          }

          v44 = v43 & 0x3F;
          a2 = a3;
        }

        else
        {
          v44 = v43 & 0x3F;
        }

        v45 = (1 << v44) & a2;
        if (a1)
        {
          if (!v45)
          {
            return result;
          }
        }

        else if (v45)
        {
          return result;
        }

        return 0;
      }

LABEL_50:
      if (a1)
      {
        return v33;
      }

      return 0;
    }

LABEL_49:

    goto LABEL_50;
  }

  v21 = (a3 >> v16) & 1;
  if (v16 < 64)
  {
    LOBYTE(v21) = 0;
  }

  if (v16 <= 0x3F)
  {
    LOBYTE(v21) = (a2 >> v16) & 1;
  }

  v22 = v21 ^ a1;
  v23 = v21 ^ a1 ^ 1;
  if (v22)
  {
    result = v17;
  }

  else
  {
    result = 0;
  }

  if (v23 & 1) == 0 && (v18)
  {
    if ((a6 & 1) == 0)
    {
      if (a1)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }

    v25 = _StringGuts.validateInclusiveScalarIndex(_:)(v17, a7, a8);
    if (v25 < 0x4000)
    {
      __break(1u);
    }

    else if ((a8 & 0x1000000000000000) == 0)
    {
      if ((a8 & 0x2000000000000000) != 0)
      {
        v55 = a7;
        v56 = a8 & 0xFFFFFFFFFFFFFFLL;
        v38 = &v55 + (v25 >> 16);
        if ((*(v38 - 1) & 0xC0) == 0x80)
        {
          v28 = -2;
          do
          {
            v39 = v38[v28--] & 0xC0;
          }

          while (v39 == 128);
          goto LABEL_43;
        }
      }

      else
      {
        if ((a7 & 0x1000000000000000) != 0)
        {
          v26 = (a8 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v54 = v25;
          v26 = _StringObject.sharedUTF8.getter();
          v25 = v54;
        }

        v27 = v26 + (v25 >> 16);
        if ((*(v27 - 1) & 0xC0) == 0x80)
        {
          v28 = -2;
          do
          {
            v29 = *(v27 + v28--) & 0xC0;
          }

          while (v29 == 128);
LABEL_43:
          v40 = v28 + 1;
          return (v25 + (v40 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        }
      }

      v40 = -1;
      return (v25 + (v40 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
    }

    return String.UnicodeScalarView._foreignIndex(before:)();
  }

  return result;
}

uint64_t Processor.reset(currentPosition:searchBounds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  *(v3 + 88) = a1;
  *(v3 + 96) = 0;
  if (*(v3 + 152) == 1)
  {
    specialized MutableCollection._setAll(to:)(0);
    *&v16 = &type metadata for SentinelValue;
    specialized MutableCollection._setAll(to:)(&v14);
    __swift_destroy_boxed_opaque_existential_0(&v14);
    specialized MutableCollection._setAll(to:)(15);
  }

  v5 = (v3 + 184);
  if (*(*(v4 + 184) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v7 + 16));
    }

    else
    {
      v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17_StringProcessing9ProcessorV9SavePointV_Tt1g5(0, *(v7 + 24) >> 1);

      *v5 = v8;
    }
  }

  v9 = *(v4 + 192);
  v10 = *(v9 + 2);
  if (v10)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_15:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v11 = 0;
    v12 = (v9 + 32);
    do
    {
      v14 = 0uLL;
      v15 = 1;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      v19 = 1;
      if (v11 >= *(v9 + 2))
      {
        __break(1u);
        goto LABEL_15;
      }

      ++v11;
      outlined assign with take of Processor._StoredCapture(&v14, v12);
      v12 += 72;
    }

    while (v10 != v11);
    *(v4 + 192) = v9;
  }

  *(v4 + 200) = 0;
  result = MEMORY[0x193ACF400](*(v4 + 208));
  *(v4 + 208) = 0;
  return result;
}

unint64_t String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(unint64_t result, int64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((a3 & 0xC) == 4 << v9)
  {
LABEL_54:
    v26 = result;
    v7 = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, a4, a5);
    result = v26;
  }

  v11 = result;
  if ((result & 0xC) == v10)
  {
    v27 = result;
    v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
    result = v27;
  }

  result = _StringGuts.validateInclusiveScalarIndex(_:)(result, a4, a5);
  v7 >>= 14;
  if (a2 < 0)
  {
    v10 = 0;
    v18 = v11 >> 14;
    while (1)
    {
      if (v18 >= v7 && v7 >= result >> 14)
      {
        return 0;
      }

      if (result < 0x10000)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
        goto LABEL_45;
      }

      v19 = result >> 16;
      if ((a5 & 0x2000000000000000) != 0)
      {
        v28 = a4;
        v29 = a5 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v19 - 1) & 0xC0) == 0x80)
        {
          v24 = -2;
          do
          {
            v25 = *(&v28 + v19 + v24--) & 0xC0;
          }

          while (v25 == 128);
          v23 = v24 + 1;
          goto LABEL_44;
        }
      }

      else
      {
        v20 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v20 = _StringObject.sharedUTF8.getter();
        }

        if ((*(v20 + v19 - 1) & 0xC0) == 0x80)
        {
          v21 = -2;
          do
          {
            v22 = *(v20 + v19 + v21--) & 0xC0;
          }

          while (v22 == 128);
          v23 = v21 + 1;
          goto LABEL_44;
        }
      }

      v23 = -1;
LABEL_44:
      result = ((v23 + v19) << 16) | 5;
LABEL_45:
      if (--v10 <= a2)
      {
        if (v18 < v7 || result >> 14 >= v7)
        {
          return result;
        }

        return 0;
      }
    }
  }

  v12 = v11 >> 14;
  if (a2)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
    }

    while (v7 < v12 || result >> 14 < v7)
    {
      v16 = result >> 16;
      if (result >> 16 >= v10)
      {
        __break(1u);
        goto LABEL_53;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        if (!--a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((a5 & 0x2000000000000000) != 0)
        {
          v28 = a4;
          v29 = a5 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v28 + v16);
        }

        else
        {
          v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = _StringObject.sharedUTF8.getter();
          }

          v13 = *(v17 + v16);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        result = ((v16 + v15) << 16) | 5;
        if (!--a2)
        {
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

LABEL_24:
  if (v7 >= v12 && v7 < result >> 14)
  {
    return 0;
  }

  return result;
}

Swift::Bool __swiftcall Processor.match(_:isCaseInsensitive:)(Swift::String _, Swift::Bool isCaseInsensitive)
{
  v3 = *(v2 + 80) >> 14;
  if (v3 <= *(v2 + 88) >> 14)
  {
    goto LABEL_17;
  }

  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v7 = String.index(after:)();
  if (v3 >= v7 >> 14)
  {
    v10 = v7;
    v11 = String.subscript.getter();
    v13 = v12;
    if (!isCaseInsensitive)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v8 = String.subscript.getter();
  if ((v8 ^ v9) >= 0x4000)
  {
    v10 = v9;
    v18 = Substring.subscript.getter();
    v13 = v19;

    v11 = v18;
    if (!isCaseInsensitive)
    {
LABEL_10:
      if (v11 == countAndFlagsBits && v13 == object)
      {
        goto LABEL_12;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_15;
    }

LABEL_6:
    v14 = MEMORY[0x193ACE660](v11, v13);
    v16 = v15;

    if (v14 == MEMORY[0x193ACE660](countAndFlagsBits, object) && v16 == v17)
    {

LABEL_12:

      goto LABEL_16;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_15:

    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(v2 + 88) = v10;
    return 1;
  }

LABEL_17:
  Processor.signalFailure(preservingCaptures:)(0);
  return 0;
}

unint64_t String.matchSeq(_:at:limitedBy:isScalarSemantics:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7, unint64_t a8, unint64_t a9)
{
  v12 = a3;
  if (a7)
  {
    v49 = a1;
    v14 = a2 >> 14;
    if (a2 >> 14 == a1 >> 14)
    {
LABEL_43:
      if (a6 >> 14 >= a5 >> 14)
      {
        return a5;
      }

      else
      {
        return 0;
      }
    }

    v42 = a4 & 0xFFFFFFFFFFFFFFLL;

    v15 = a1;
    while (1)
    {
      _StringGuts.validateScalarIndex(_:in:)(v15, a1, a2, v12, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
        v17 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) == 0)
        {
          if ((v12 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          v16 = _decodeScalar(_:startingAt:)();
          goto LABEL_12;
        }

        v47 = v12;
        v48 = v42;
        v17 = _decodeScalar(_:startingAt:)();
      }

      v16 = v17;
LABEL_12:
      Substring.UnicodeScalarView.formIndex(after:)();
      if (a6 >> 14 <= a5 >> 14)
      {
        goto LABEL_47;
      }

      _StringGuts.validateScalarIndex(_:)(a5, a8, a9);
      if ((a9 & 0x1000000000000000) != 0)
      {
        if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() != v16)
        {
          goto LABEL_47;
        }

        _StringGuts.validateScalarIndex(_:)(a5, a8, a9);
        a5 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((a9 & 0x2000000000000000) != 0)
        {
          v47 = a8;
          v48 = a9 & 0xFFFFFFFFFFFFFFLL;
          if (_decodeScalar(_:startingAt:)() != v16)
          {
            goto LABEL_47;
          }

          v20 = _StringGuts.validateScalarIndex(_:)(a5, a8, a9) >> 16;
          v47 = a8;
          v48 = a9 & 0xFFFFFFFFFFFFFFLL;
          v21 = *(&v47 + v20);
        }

        else
        {
          if ((a8 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          if (_decodeScalar(_:startingAt:)() != v16)
          {
            goto LABEL_47;
          }

          v18 = _StringGuts.validateScalarIndex(_:)(a5, a8, a9);
          v19 = (a9 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a8 & 0x1000000000000000) == 0)
          {
            v24 = v18;
            v19 = _StringObject.sharedUTF8.getter();
            v18 = v24;
          }

          v20 = v18 >> 16;
          v21 = *(v19 + v20);
        }

        v22 = v21;
        v23 = __clz(v21 ^ 0xFF) - 24;
        if (v22 >= 0)
        {
          LOBYTE(v23) = 1;
        }

        a5 = ((v20 + v23) << 16) | 5;
      }

      v12 = a3;
      v15 = v49;
      if (v14 == v49 >> 14)
      {

        goto LABEL_43;
      }
    }
  }

  if ((a1 ^ a2) < 0x4000)
  {
    goto LABEL_43;
  }

  v25 = a6 >> 14;
  while (1)
  {
    v27 = Substring.subscript.getter();
    v29 = v28;
    v30 = Substring.index(after:)();
    if (v25 <= a5 >> 14)
    {
      break;
    }

    v31 = v30;
    v32 = String.index(after:)();
    if (v25 >= v32 >> 14)
    {
      v38 = v32;
      v39 = String.subscript.getter();
      v37 = v40;
      a5 = v38;
      if (v39 != v27)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v33 = String.subscript.getter();
      if ((v33 ^ v34) < 0x4000)
      {

        break;
      }

      a5 = v34;
      v35 = Substring.subscript.getter();
      v37 = v36;

      if (v35 != v27)
      {
        goto LABEL_32;
      }
    }

    if (v37 == v29)
    {

      goto LABEL_33;
    }

LABEL_32:
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      return 0;
    }

LABEL_33:
    v25 = a6 >> 14;
    if ((v31 ^ a2) < 0x4000)
    {
      goto LABEL_43;
    }
  }

LABEL_47:

  return 0;
}

uint64_t Processor.matchScalar(_:boundaryCheck:isCaseInsensitive:)(uint64_t a1, int a2, char a3)
{
  v36 = a2;
  v5 = a1;
  v6 = type metadata accessor for Unicode.Scalar.Properties();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = v3[11];
  if (v13 >> 14 >= v3[10] >> 14)
  {
    goto LABEL_30;
  }

  v14 = v3[1];
  v15 = v3[11];
  v37 = *v3;
  _StringGuts.validateScalarIndex(_:)(v15, v37, v14);
  if ((v14 & 0x1000000000000000) != 0)
  {
    v16 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_16:
    v25 = v37;
    if (v16 != v5)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    v38 = v37;
    v39 = v14 & 0xFFFFFFFFFFFFFFLL;
  }

  else if ((v37 & 0x1000000000000000) == 0)
  {
    _StringObject.sharedUTF8.getter();
  }

  v16 = _decodeScalar(_:startingAt:)();
  if ((a3 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v35 = v3;
  Unicode.Scalar.properties.getter();
  v34 = Unicode.Scalar.Properties.lowercaseMapping.getter();
  v18 = v17;
  v19 = *(v7 + 8);
  v19(v12, v6);
  Unicode.Scalar.properties.getter();
  v20 = Unicode.Scalar.Properties.lowercaseMapping.getter();
  v22 = v21;
  v19(v10, v6);
  if (v34 == v20 && v18 == v22)
  {

    v3 = v35;
    v25 = v37;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v35;
    v25 = v37;
    if ((v24 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_17:
  v26 = _StringGuts.validateScalarIndex(_:)(v13, v25, v14);
  if ((v14 & 0x1000000000000000) != 0)
  {
    v30 = String.UnicodeScalarView._foreignIndex(after:)();
    if ((v36 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v27 = v26 >> 16;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v38 = v25;
      v39 = v14 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(&v38 + v27);
    }

    else
    {
      if ((v25 & 0x1000000000000000) != 0)
      {
        v28 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
    }

    v31 = v29;
    v32 = __clz(v29 ^ 0xFF) - 24;
    if (v31 >= 0)
    {
      LOBYTE(v32) = 1;
    }

    v30 = ((v27 + v32) << 16) | 5;
    if ((v36 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (String.isOnGraphemeClusterBoundary(_:)())
  {
LABEL_29:
    v3[11] = v30;
    return 1;
  }

LABEL_30:
  Processor.signalFailure(preservingCaptures:)(0);
  return 0;
}

unint64_t String.matchUTF8(_:at:limitedBy:boundaryCheck:)(uint64_t a1, unint64_t a2, unint64_t a3, char a4, unint64_t a5, unint64_t a6)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v27 = a4;
    v9 = (a1 + 32);
    v10 = a3 >> 14;
    v11 = (a5 >> 59) & 1;
    if ((a6 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = 4 << v11;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v28 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v29 = a6 & 0xFFFFFFFFFFFFFFLL;
    result = a2;
    while (1)
    {
      while (1)
      {
        if (v10 <= result >> 14)
        {
          return 0;
        }

        v16 = *v9++;
        v15 = v16;
        v17 = result & 0xC;
        v18 = result;
        if (v17 == v12)
        {
          v26 = result;
          v18 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a5, a6);
          result = v26;
        }

        v19 = v18 >> 16;
        if (v18 >> 16 >= v13)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        if ((a6 & 0x1000000000000000) != 0)
        {
          v21 = result;
          v22 = String.UTF8View._foreignSubscript(position:)();
          result = v21;
          if (v15 != v22)
          {
            return 0;
          }
        }

        else
        {
          if ((a6 & 0x2000000000000000) != 0)
          {
            v30[0] = a5;
            v30[1] = v29;
            v20 = v30;
          }

          else
          {
            v20 = v28;
            if ((a5 & 0x1000000000000000) == 0)
            {
              v25 = result;
              v20 = _StringObject.sharedUTF8.getter();
              result = v25;
            }
          }

          if (v15 != *(v20 + v19))
          {
            return 0;
          }
        }

        if (v17 != v12)
        {
          break;
        }

        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a5, a6);
        if ((a6 & 0x1000000000000000) != 0)
        {
          goto LABEL_21;
        }

LABEL_8:
        result = (result & 0xFFFFFFFFFFFF0000) + 65540;
        if (!--v8)
        {
          goto LABEL_30;
        }
      }

      if ((a6 & 0x1000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_21:
      if (v13 <= result >> 16)
      {
        goto LABEL_36;
      }

      result = String.UTF8View._foreignIndex(after:)();
      if (!--v8)
      {
LABEL_30:
        a4 = v27;
        if (v10 < result >> 14)
        {
          return 0;
        }

        goto LABEL_31;
      }
    }
  }

  result = a2;
  if (a3 >> 14 < a2 >> 14)
  {
    return 0;
  }

LABEL_31:
  if (a4)
  {
    v23 = result;
    v24 = String.isOnGraphemeClusterBoundary(_:)();
    result = v23;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t Processor.clearThrough(_:)(uint64_t a1)
{
  v3 = *(v1 + 184);
  while (*(v3 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v5 = *(v3 + 16);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
      v5 = *(result + 16);
      if (!v5)
      {
LABEL_8:
        __break(1u);
LABEL_9:
        *(v1 + 184) = v3;
        v7 = *(v1 + 96);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (!v8)
        {
          *(v1 + 96) = v9;
          return result;
        }

        __break(1u);
        break;
      }
    }

    v6 = *(v3 + 72 * v5 - 40);
    *(v3 + 16) = v5 - 1;

    if (v6 == a1)
    {
      goto LABEL_9;
    }
  }

  *(v1 + 184) = v3;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall Processor.cycle()()
{
  v8 = *(v1 + 96);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
LABEL_52:
    if (v0 >= *(v2 + 16))
    {
      __break(1u);
LABEL_152:
      v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
LABEL_5:
      if (v2 >= *(v0 + 16))
      {
        __break(1u);
LABEL_154:
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
LABEL_55:
        v73 = *(v5 + 16);
        v72 = *(v5 + 24);
        if (v73 >= v72 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v5);
        }

        *(v5 + 16) = v73 + 1;
        v74 = (v5 + 72 * v73);
        *(v74 + 4) = v0;
        *(v74 + 5) = 0;
        v74[48] = v122;
        v75 = v129;
        *(v74 + 13) = *(v7 + 3);
        *(v74 + 49) = v75;
        *(v74 + 7) = 0;
        *(v74 + 8) = 0;
        v74[72] = v135;
        v74[73] = 0;
        LOWORD(v75) = WORD2(v127[0]);
        *(v74 + 74) = v127[0];
        *(v74 + 39) = v75;
        *(v74 + 10) = v3;
        *(v74 + 11) = v2;
LABEL_97:
        *(v74 + 12) = v4;
        *(v1 + 184) = v5;
      }

      else
      {
        *(v0 + 8 * v2 + 32) = v3;
        *(v1 + 160) = v0;
      }
    }

    else
    {
      *(v2 + 8 * v0 + 32) = v3;
      *(v1 + 176) = v2;
    }

    goto LABEL_105;
  }

  v9 = *(v1 + 40);
  if (v8 >= *(v9 + 16))
  {
    goto LABEL_141;
  }

  v7 = &v129;
  v3 = *(v9 + 8 * v8 + 32);
  v0 = v3 & 0xFFFFFFFFFFFFFFLL;
  switch(specialized Instruction.OpCode.init(rawValue:)(HIBYTE(v3)))
  {
    case 1u:
      v2 = WORD1(v3);
      *(v1 + 152) = 1;
      v0 = *(v1 + 160);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_5;
      }

      goto LABEL_152;
    case 2u:
      v3 = *(v1 + 88);
      *(v1 + 152) = 1;
      v2 = *(v1 + 176);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_52;
      }

      goto LABEL_150;
    case 3u:
      v90 = *(v1 + 176);
      if (v0 < *(v90 + 16))
      {
        v28 = *(v90 + 8 * v0 + 32);
        goto LABEL_73;
      }

      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
LABEL_85:
      if (v0 < *(v2 + 16))
      {
        v100 = v2 + 72 * v0;
        *(v100 + 88) = v3;
        *(v100 + 96) = 0;
        goto LABEL_104;
      }

      __break(1u);
LABEL_159:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
LABEL_94:
      v104 = *(v5 + 16);
      v103 = *(v5 + 24);
      if (v104 >= v103 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v5);
      }

      *(v5 + 16) = v104 + 1;
      v74 = (v5 + 72 * v104);
      *(v74 + 4) = v0;
      *(v74 + 5) = v2;
      v74[48] = v122;
      v105 = v129;
      *(v74 + 13) = *(&v129 + 3);
      *(v74 + 49) = v105;
      *(v74 + 7) = 0;
      *(v74 + 8) = 0;
      v74[72] = v135;
      v74[73] = 0;
      LOWORD(v105) = WORD2(v127[0]);
      *(v74 + 74) = v127[0];
      *(v74 + 39) = v105;
      *(v74 + 10) = v3;
      *(v74 + 11) = v121;
      goto LABEL_97;
    case 4u:
      goto LABEL_67;
    case 5u:
      v2 = WORD1(v3);
      v0 = *(v1 + 160);
      if (WORD1(v3) >= *(v0 + 16))
      {
        goto LABEL_156;
      }

      v91 = *(v0 + 8 * WORD1(v3) + 32);
      if (!v91)
      {
        goto LABEL_113;
      }

      v3 = v91 - 1;
      if (__OFSUB__(v91, 1))
      {
        goto LABEL_165;
      }

      *(v1 + 152) = 1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_78;
      }

      goto LABEL_166;
    case 6u:
      v51 = *(v1 + 176);
      if (WORD1(v3) >= *(v51 + 16))
      {
        goto LABEL_147;
      }

      if ((*(v1 + 88) ^ *(v51 + 8 * WORD1(v3) + 32)) >> 14)
      {
        goto LABEL_105;
      }

LABEL_113:
      v85 = v3;
      goto LABEL_106;
    case 7u:
      v52 = v3;
      v53 = WORD1(v3);
      v54 = *v1;
      v55 = *(v1 + 8);
      v56 = *(v1 + 80);
      v57 = *(v1 + 88);
      if (v52 == 1)
      {
        v58 = *(v1 + 88);
        v59 = v53;
        goto LABEL_37;
      }

      v60 = String.index(_:offsetBy:limitedBy:)();
      if ((v119 & 1) == 0)
      {
        goto LABEL_129;
      }

      if (v53 == 1)
      {
        v58 = v57;
        v59 = 1;
LABEL_37:
        v60 = String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(v58, v59, v56, v54, v55);
        if (v61)
        {
          goto LABEL_130;
        }

        goto LABEL_129;
      }

      goto LABEL_130;
    case 8u:
      v29 = *(v1 + 104);
      if (WORD1(v3) >= *(v29 + 16))
      {
        goto LABEL_143;
      }

      v30 = v3 == 1;
      v31 = v29 + 16 * WORD1(v3);
      v32 = *(v31 + 32);
      v3 = *(v31 + 40);

      v33._countAndFlagsBits = v32;
      v33._object = v3;
      v2 = v1;
      v0 = Processor.match(_:isCaseInsensitive:)(v33, v30);

      if ((v0 & 1) == 0)
      {
        return;
      }

      v34 = *(v1 + 96);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_169;
      }

      *(v1 + 96) = v36;
      return;
    case 9u:
      v0 = v1;
      if ((Processor.matchScalar(_:boundaryCheck:isCaseInsensitive:)(v3, (v3 >> 54) & 1, (v3 & 0x80000000000000) != 0) & 1) == 0)
      {
        return;
      }

      v64 = *(v1 + 96);
      v35 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (!v35)
      {
        goto LABEL_89;
      }

      __break(1u);
LABEL_46:
      v66 = *(v1 + 128);
      if (v0 >= *(v66 + 16))
      {
        goto LABEL_149;
      }

      v68 = *(v1 + 80);
      v67 = *(v1 + 88);
      v69 = v68 >> 14;
      if (v68 >> 14 <= v67 >> 14)
      {
        goto LABEL_130;
      }

      v70 = *(v66 + 16 * v0 + 32);
      v71 = *(v1 + 8);
      *&v129 = *v1;
      *(&v129 + 1) = v71;
      *&v127[0] = v67;
      *(&v127[0] + 1) = v68;

      v70(&v122, &v129, v127);

      if (BYTE8(v122))
      {
        goto LABEL_130;
      }

      v28 = v122;
      if (v69 < v122 >> 14)
      {
        goto LABEL_130;
      }

      goto LABEL_73;
    case 0xAu:
      if (WORD1(v3) >= *(*(v1 + 112) + 16))
      {
        goto LABEL_142;
      }

      v11 = v3 == 1;
      v12 = *v1;
      v13 = *(v1 + 8);
      v15 = *(v1 + 80);
      v14 = *(v1 + 88);

      v17 = String.matchUTF8(_:at:limitedBy:boundaryCheck:)(v16, v14, v15, v11, v12, v13);
      LOBYTE(v12) = v18;

      if (v12)
      {
        goto LABEL_130;
      }

      goto LABEL_112;
    case 0xBu:
      v62 = *(v1 + 120);
      if (WORD1(v3) >= *(v62 + 16))
      {
        goto LABEL_148;
      }

      v60 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(*(v62 + 24 * WORD1(v3) + 32), *(v62 + 24 * WORD1(v3) + 40), *(v62 + 24 * WORD1(v3) + 48), *(v1 + 88), *(v1 + 80), v3 == 1, *v1, *(v1 + 8));
      if ((v63 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_130;
    case 0xCu:
      v92 = specialized _CharacterClassModel.Representation.init(rawValue:)(v3);
      v94 = *(v1 + 80);
      v93 = *(v1 + 88);
      if (v93 >> 14 >= v94 >> 14)
      {
        goto LABEL_130;
      }

      v95 = *v1;
      v96 = *(v1 + 8);
      v97 = v92;
      v60 = String._quickMatch(_:at:limitedBy:isScalarSemantics:)(v92, *(v1 + 88), *(v1 + 80), (v3 & 0x20000000000000) != 0, *v1, v96);
      if (v98 == 2)
      {
        v60 = String._thoroughMatchBuiltinCC(_:at:limitedBy:isInverted:isStrictASCII:isScalarSemantics:)(v97, v93, v94, (v3 >> 55) & 1, (v3 & 0x40000000000000) != 0, (v3 >> 53) & 1, v95, v96);
        if (v99)
        {
          goto LABEL_130;
        }
      }

      else if ((((v3 >> 55) & 1 ^ v98) & 1) == 0)
      {
        goto LABEL_130;
      }

LABEL_129:
      v85 = v8 + 1;
      *(v1 + 88) = v60;
      goto LABEL_106;
    case 0xDu:
      v20 = *(v1 + 80);
      v19 = *(v1 + 88);
      if (v19 >> 14 >= v20 >> 14)
      {
        goto LABEL_130;
      }

      v21 = *v1;
      v22 = *(v1 + 8);
      v23 = String._quickASCIICharacter(at:limitedBy:)(*(v1 + 88), *(v1 + 80), *v1, v22);
      if (v25 == 2)
      {
        v26 = String._thoroughMatchAnyNonNewline(at:limitedBy:isScalarSemantics:)(v19, v20, v0 == 1, v21, v22);
        if (v27)
        {
          goto LABEL_130;
        }

        v28 = v26;
        goto LABEL_73;
      }

      if ((v23 - 14) < 0xFFFFFFFFFFFFFFFCLL)
      {
        v28 = v24;
LABEL_73:
        *(v1 + 88) = v28;
        *(v1 + 96) = v8 + 1;
        return;
      }

LABEL_130:
      v109 = 0;
LABEL_131:

      Processor.signalFailure(preservingCaptures:)(v109);
      return;
    case 0xEu:
      goto LABEL_46;
    case 0xFu:
      v0 = v1;
      v2 = 0;
      if ((Processor.builtinAssert(by:)(v3 & 0xFFFFFFFFFFFFFFLL) & 1) == 0)
      {
        goto LABEL_130;
      }

      v101 = *(v1 + 96);
      v35 = __OFADD__(v101, 1);
      v65 = v101 + 1;
      if (!v35)
      {
        goto LABEL_89;
      }

      goto LABEL_168;
    case 0x10u:
      v39 = *(v1 + 144);
      if (v3 >= *(v39 + 16))
      {
        goto LABEL_145;
      }

      v40 = *(v39 + 16 * v3 + 32);
      v41 = *(v1 + 8);
      v43 = *(v1 + 80);
      v42 = *(v1 + 88);
      v44 = *(v1 + 72);
      *&v122 = *v1;
      *(&v122 + 1) = v41;
      v134 = v42;
      v135 = v44;
      v136 = v43;

      v40(&v129, &v122, &v134, &v135);

      if (!v131)
      {
        outlined destroy of SplitSequence<SubstringSearcher>(&v129, &_sSS5IndexV_yptSgMd, &_sSS5IndexV_yptSgMR);
        goto LABEL_135;
      }

      v2 = v129;
      outlined init with take of Any((&v129 + 8), v127);
      if (v43 >> 14 < v2 >> 14)
      {
        __swift_destroy_boxed_opaque_existential_0(v127);
LABEL_135:
        Processor.signalFailure(preservingCaptures:)(0);
        return;
      }

      v3 = WORD1(v3);
      outlined init with take of Any(v127, &v129);
      *(v1 + 152) = 1;
      v0 = *(v1 + 168);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_138;
      }

      goto LABEL_172;
    case 0x11u:
      v2 = *(v1 + 88);
      v102 = *(v1 + 160);
      v5 = *(v1 + 184);
      v3 = *(v1 + 192);
      LOBYTE(v122) = 0;
      LOBYTE(v135) = 1;
      v4 = *(v1 + 176);
      v121 = v102;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_94;
      }

      goto LABEL_159;
    case 0x12u:
      v2 = *(v1 + 160);
      v5 = *(v1 + 184);
      v3 = *(v1 + 192);
      LOBYTE(v122) = 1;
      LOBYTE(v135) = 1;
      v4 = *(v1 + 176);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_55;
      }

      goto LABEL_154;
    case 0x13u:
      v87 = v1;
      v89 = *(v1 + 184);
      v88 = v1 + 184;
      if (!*(v89 + 16))
      {
        goto LABEL_174;
      }

      specialized Array._customRemoveLast()(&v129);
      if (v132)
      {
        v127[2] = v131;
        v127[3] = v132;
        v128 = v133;
        v127[0] = v129;
        v127[1] = v130;
        outlined destroy of Any?(v127, &unk_1F0192138, &cache variable for noncanonical specialized generic type metadata for Processor.SavePoint?);
      }

      else
      {
        v124 = v131;
        v125 = v132;
        v126 = v133;
        v122 = v129;
        v123 = v130;
        outlined destroy of Any?(&v122, &unk_1F0192138, &cache variable for noncanonical specialized generic type metadata for Processor.SavePoint?);
        specialized Array.remove(at:)(*(*v88 + 16) - 1, v127);
        outlined destroy of Processor.SavePoint(v127);
      }

      *(v87 + 96) = v8 + 1;
      return;
    case 0x14u:

      Processor.clearThrough(_:)(v3 & 0xFFFFFFFFFFFFFFLL);
      return;
    case 0x15u:
      v76 = *(v1 + 88);
      v77 = *(v1 + 160);
      v79 = *(v1 + 184);
      v78 = *(v1 + 192);
      LOBYTE(v122) = 0;
      LOBYTE(v135) = 1;
      v80 = *(v1 + 176);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
      }

      v82 = *(v79 + 2);
      v81 = *(v79 + 3);
      if (v82 >= v81 >> 1)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v79);
      }

      *(v79 + 2) = v82 + 1;
      v83 = &v79[72 * v82];
      *(v83 + 4) = WORD1(v3);
      *(v83 + 5) = v76;
      v83[48] = v122;
      v84 = v129;
      *(v83 + 13) = *(&v129 + 3);
      *(v83 + 49) = v84;
      *(v83 + 7) = 0;
      *(v83 + 8) = 0;
      v83[72] = v135;
      v83[73] = 0;
      LOWORD(v84) = WORD2(v127[0]);
      *(v83 + 74) = v127[0];
      *(v83 + 39) = v84;
      *(v83 + 10) = v78;
      *(v83 + 11) = v77;
      *(v83 + 12) = v80;
      *(v1 + 184) = v79;
      v85 = v3;
      goto LABEL_106;
    case 0x16u:
      v0 = v1;
      if ((Processor.runQuantify(_:)(v3 & 0xFFFFFFFFFFFFFFLL) & 1) == 0)
      {
        return;
      }

      v86 = *(v1 + 96);
      v35 = __OFADD__(v86, 1);
      v65 = v86 + 1;
      if (v35)
      {
        __break(1u);
LABEL_67:
        *(v1 + 96) = v0;
      }

      else
      {
LABEL_89:
        *(v0 + 96) = v65;
      }

      return;
    case 0x17u:
      v3 = *(v1 + 88);
      v2 = *(v1 + 192);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_85;
      }

      goto LABEL_157;
    case 0x18u:
      v3 = *(v1 + 88);
      v2 = *(v1 + 192);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      }

      if (v0 < *(v2 + 16))
      {
        v106 = v2 + 72 * v0;
        if (*(v106 + 96))
        {
          goto LABEL_174;
        }

        v107 = *(v106 + 88);
        if (v3 >> 14 >= v107 >> 14)
        {
          v108 = v106 + 32;
          *(v106 + 32) = v107;
          *(v106 + 40) = v3;
          *(v106 + 48) = 0;
          outlined destroy of Any?(v106 + 56, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
          *(v108 + 24) = 0u;
          *(v108 + 40) = 0u;
          *(v108 + 56) = 0;
          *(v108 + 64) = 1;
LABEL_104:
          *(v1 + 192) = v2;
          goto LABEL_105;
        }

LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
LABEL_78:
        if (v2 < *(v0 + 16))
        {
          *(v0 + 8 * v2 + 32) = v3;
          *(v1 + 160) = v0;
          goto LABEL_105;
        }

        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
LABEL_124:
        if (v5 < *(v0 + 16))
        {
          outlined destroy of Any?(v0 + v6 + 56, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
          outlined init with take of Any(v127, (v0 + v6 + 56));
          *(v3 + 192) = v0;
          *(v3 + 96) = v8 + 1;
          return;
        }

        __break(1u);
LABEL_172:
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
LABEL_138:
        if (v3 < *(v0 + 16))
        {
          v120 = v0 + 32 * v3;
          __swift_destroy_boxed_opaque_existential_0((v120 + 32));
          outlined init with take of Any(&v129, (v120 + 32));
          *(v1 + 168) = v0;
          v85 = v8 + 1;
          *(v1 + 88) = v2;
          goto LABEL_106;
        }

        __break(1u);
        while (1)
        {
LABEL_174:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      __break(1u);
LABEL_161:
      v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
LABEL_25:
      if (v2 >= *(v0 + 16))
      {
        __break(1u);
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      v38 = v0 + 72 * v2;
      outlined destroy of Any?(v38 + 56, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
      outlined init with take of Any(&v129, (v38 + 56));
      *(v1 + 192) = v0;
LABEL_105:
      v85 = v8 + 1;
LABEL_106:
      *(v1 + 96) = v85;
      return;
    case 0x19u:
      v45 = *(v1 + 136);
      if (WORD1(v3) >= *(v45 + 16))
      {
        goto LABEL_146;
      }

      v5 = v3;
      v0 = *(v1 + 192);
      if (v3 >= *(v0 + 16))
      {
        goto LABEL_163;
      }

      v46 = v45 + 16 * WORD1(v3);
      v48 = *(v46 + 32);
      v47 = *(v46 + 40);
      v3 = v1;
      v50 = *v1;
      v49 = *(v1 + 8);
      v6 = 72 * v5;
      outlined init with copy of Processor._StoredCapture((v0 + 72 * v5 + 32), &v129);
      v135 = v50;
      v136 = v49;

      v1 = v47;
      v2 = 0;
      v48(&v122, &v135, &v129);

      outlined destroy of Processor._StoredCapture(&v129);
      if (!*(&v123 + 1))
      {
        outlined destroy of Any?(&v122, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
        Processor.signalFailure(preservingCaptures:)(0);
        return;
      }

      outlined init with take of Any(&v122, v127);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_124;
      }

      goto LABEL_170;
    case 0x1Au:
      v37 = *(v1 + 168);
      if (v3 >= *(v37 + 16))
      {
        goto LABEL_144;
      }

      v2 = WORD1(v3);
      outlined init with copy of Any(v37 + 32 * v3 + 32, &v129);
      v0 = *(v1 + 192);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_25;
      }

      goto LABEL_161;
    case 0x1Bu:
      v110 = *(v1 + 192);
      if (WORD1(v3) >= *(v110 + 16))
      {
        goto LABEL_174;
      }

      if (*(v110 + 72 * WORD1(v3) + 48))
      {
        goto LABEL_130;
      }

      v111 = v3 == 1;
      v112 = *v1;
      v113 = *(v1 + 8);
      v114 = String.subscript.getter();
      v17 = String.matchSeq(_:at:limitedBy:isScalarSemantics:)(v114, v115, v116, v117, *(v1 + 88), *(v1 + 80), v111, v112, v113);
      LOBYTE(v112) = v118;

      if (v112)
      {
        goto LABEL_130;
      }

LABEL_112:
      v85 = v8 + 1;
      *(v1 + 88) = v17;
      goto LABEL_106;
    case 0x1Cu:
      if ((*(v1 + 80) ^ *(v1 + 88)) >= 0x4000 && *(v1 + 32) == 0)
      {
        goto LABEL_130;
      }

      *(v1 + 200) = 2;
      return;
    case 0x1Du:
      v109 = v0 == 1;
      goto LABEL_131;
    default:
      goto LABEL_174;
  }
}

uint64_t specialized MutableCollection._setAll(to:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 4)
    {
      v5 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      v6 = vdupq_n_s64(v4);
      v7 = (v2 + 48);
      v8 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v7[-1] = v6;
        *v7 = v6;
        v7 += 2;
        v8 -= 4;
      }

      while (v8);
      if (v3 == v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = 0;
    }

    v9 = v3 - v5;
    v10 = (v2 + 8 * v5 + 32);
    do
    {
      *v10++ = v4;
      --v9;
    }

    while (v9);
LABEL_12:
    *v1 = v2;
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 4)
    {
      v5 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      v6 = vdupq_n_s64(v4);
      v7 = (v2 + 48);
      v8 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v7[-1] = v6;
        *v7 = v6;
        v7 += 2;
        v8 -= 4;
      }

      while (v8);
      if (v3 == v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = 0;
    }

    v9 = v3 - v5;
    v10 = (v2 + 8 * v5 + 32);
    do
    {
      *v10++ = v4;
      --v9;
    }

    while (v9);
LABEL_12:
    *v1 = v2;
  }

  return result;
}

uint64_t *specialized MutableCollection._setAll(to:)(uint64_t *result)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    v4 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v5 = 0;
    v6 = (v2 + 32);
    do
    {
      if (v5 >= *(v2 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      ++v5;
      result = __swift_assign_boxed_opaque_existential_0(v6, v4);
      v6 += 4;
    }

    while (v3 != v5);
    *v1 = v2;
  }

  return result;
}

uint64_t Processor.Registers.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    MEMORY[0x193ACE8E0](8250, 0xE200000000000000);
    v3 = MEMORY[0x193ACEA20](v1, MEMORY[0x1E69E5EE0]);
    MEMORY[0x193ACE8E0](v3);

    MEMORY[0x193ACE8E0](10, 0xE100000000000000);
    v2 = 0x73746E656D656C65;
  }

  v9 = v2;
  v4 = v0[7];
  if (*(v4 + 16))
  {
    MEMORY[0x193ACE8E0](8250, 0xE200000000000000);
    v5 = MEMORY[0x193ACEA20](v4, MEMORY[0x1E69E6530]);
    MEMORY[0x193ACE8E0](v5);

    MEMORY[0x193ACE8E0](10, 0xE100000000000000);
    v6 = 1937010281;
    v7 = 0xE400000000000000;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  MEMORY[0x193ACE8E0](v6, v7);

  return v9;
}

char *static Executor.createExistentialElements(_:matchRange:storedCaptures:wholeMatchValue:)(unsigned int (**a1)(uint64_t, uint64_t, uint64_t), void (**a2)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, char *a5)
{
  v93 = a5;
  v86 = a4;
  v91 = a3;
  v88 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtMd, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtMR);
  v87 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v78 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtSgMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v78 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMR);
  v84 = *(v94 - 8);
  v12 = MEMORY[0x1EEE9AC00](v94);
  v85 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtSgMd, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtSgMR);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v90 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v89 = (&v78 - v18);
  v92 = type metadata accessor for CaptureList.Capture();
  v19 = *(v92 - 8);
  v20 = MEMORY[0x1EEE9AC00](v92);
  v95 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v78 - v22);
  v24 = type metadata accessor for MEProgram(0);
  v25 = *(v24 + 32);
  v26 = *(a1 + *(v24 + 36));
  v27 = *(CaptureList.captures.getter() + 16);

  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 + 1, 0, MEMORY[0x1E69E7CC0]);
  *(&v103 + 1) = v88;
  *&v104 = v91;
  outlined init with copy of Any?(v93, &v104 + 8);
  v91 = a1;
  v88 = v25;
  v29 = a1 + v25;
  v30 = CaptureList.captures.getter();
  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_31;
  }

  v25 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v32 = v92;
  (*(v19 + 16))(v23, v30 + v25, v92);

  v33 = CaptureList.Capture.visibleInTypedOutput.getter();
  v83 = v19;
  v34 = *(v19 + 8);
  v80 = v19 + 8;
  v79 = v34;
  v34(v23, v32);
  *&v103 = 0;
  *(&v106 + 1) = 0;
  v107 = 0uLL;
  LOBYTE(v108) = 1;
  HIBYTE(v108) = v33 & 1;
  v23 = *(v28 + 2);
  v31 = *(v28 + 3);
  v29 = v23 + 1;
  if (v23 >= v31 >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    *(v28 + 2) = v29;
    v93 = v28;
    v35 = &v28[88 * v23];
    v36 = v104;
    *(v35 + 2) = v103;
    *(v35 + 3) = v36;
    v37 = v105;
    v38 = v106;
    v39 = v107;
    *(v35 + 56) = v108;
    *(v35 + 5) = v38;
    *(v35 + 6) = v39;
    *(v35 + 4) = v37;
    v40 = CaptureList.captures.getter();
    v41 = *(v40 + 16);
    *&v103 = v40;
    *(&v103 + 1) = v40 + v25;
    *&v104 = v41 != 0;
    *(&v104 + 1) = (2 * v41) | 1;
    *&v105 = v104;
    *(&v105 + 1) = v86;
    *&v106 = 0;
    v91 = (v84 + 6);
    v88 = (v87 + 7);
    BYTE8(v106) = 0;
    *&v107 = 0;
    v87 += 6;
    v84 = (v83 + 32);

    v86 = 0;
    v83 = v6;
    v82 = v8;
    v81 = v11;
LABEL_4:
    specialized Zip2Sequence.Iterator.next()(v11);
    if ((*v91)(v11, 1, v94) == 1)
    {
      outlined destroy of SplitSequence<SubstringSearcher>(v11, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtSgMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtSgMR);
      v42 = v90;
      (*v88)(v90, 1, 1, v6);
      goto LABEL_8;
    }

    v29 = v78;
    v23 = &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd;
    outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v11, v78, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMR);
    v43 = *(v6 + 48);
    v44 = v86;
    *v8 = v86;
    outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v29, v8 + v43, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMR);
    v45 = __OFADD__(v44, 1);
    v28 = (v44 + 1);
    if (!v45)
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v29, 1, v28);
  }

  v86 = v28;
  *&v107 = v28;
  v42 = v90;
  outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v8, v90, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtMd, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtMR);
  (*v88)(v42, 0, 1, v6);
LABEL_8:
  v46 = v42;
  v47 = v89;
  outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v46, v89, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtSgMd, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtSgMR);
  v11 = 1;
  if ((*v87)(v47, 1, v6) != 1)
  {
    v28 = v26;
    v25 = *v47;
    v48 = *(v94 + 48);
    v49 = v47 + *(v6 + 48) + v48;
    v50 = v85;
    v51 = &v85[v48];
    v52 = *v84;
    v53 = v92;
    (*v84)(v85);
    v54 = *(v49 + 3);
    *(v51 + 32) = *(v49 + 2);
    *(v51 + 48) = v54;
    *(v51 + 64) = v49[64];
    v55 = *(v49 + 1);
    *v51 = *v49;
    *(v51 + 16) = v55;
    v56 = v50;
    v6 = v53;
    (v52)(v95, v56, v53);
    v57 = CaptureList.Capture.optionalDepth.getter();
    if (*(v51 + 16))
    {
      v97 = 0u;
      v96 = 0u;
      *&v98 = 0;
      *(&v98 + 1) = 1;
    }

    else
    {
      v96 = *v51;
      outlined init with copy of Any?(v51 + 24, &v97);
    }

    outlined destroy of Processor._StoredCapture(v51);
    v29 = v95;
    v8 = CaptureList.Capture.name.getter();
    v23 = v58;
    v31 = 0;
    v59 = 1 << *(v26 + 32);
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v61 = v60 & *(v26 + 64);
    v62 = (v59 + 63) >> 6;
    while (v61)
    {
      v63 = v31;
LABEL_22:
      v64 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v65 = v64 | (v63 << 6);
      if (*(*(v26 + 56) + 8 * v65) == v25)
      {
        v66 = v57;
        v67 = 0;
        v68 = *(*(v26 + 48) + 8 * v65);
LABEL_25:
        v69 = v95;
        v70 = CaptureList.Capture.visibleInTypedOutput.getter();
        v79(v69, v6);
        v100 = v96;
        v101 = v97;
        v102 = v98;
        v99 = v67;
        v71 = v93;
        v73 = *(v93 + 2);
        v72 = *(v93 + 3);
        v25 = v73 + 1;
        if (v73 >= v72 >> 1)
        {
          v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v93);
        }

        *(v71 + 2) = v25;
        v93 = v71;
        v74 = &v71[88 * v73];
        *(v74 + 4) = v66;
        v75 = v100;
        v76 = v101;
        *(v74 + 72) = v102;
        *(v74 + 56) = v76;
        *(v74 + 40) = v75;
        *(v74 + 11) = v8;
        *(v74 + 12) = v23;
        *(v74 + 13) = v68;
        v74[112] = v99;
        v74[113] = v70 & 1;
        v6 = v83;
        v8 = v82;
        v11 = v81;
        goto LABEL_4;
      }
    }

    while (1)
    {
      v63 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v63 >= v62)
      {
        v66 = v57;
        v68 = 0;
        v67 = 1;
        goto LABEL_25;
      }

      v61 = *(v26 + 64 + 8 * v63);
      ++v31;
      if (v61)
      {
        v31 = v63;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  swift_unknownObjectRelease();
  return v93;
}

uint64_t Instruction.description.getter(unint64_t a1)
{
  switch(specialized Instruction.OpCode.init(rawValue:)(HIBYTE(a1)))
  {
    case 1u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v2);

      MEMORY[0x193ACE8E0](0x5B746E69203E2D20, 0xE800000000000000);
      goto LABEL_81;
    case 2u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x5B736F70203E2D20, 0xE800000000000000);
      goto LABEL_81;
    case 4u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      goto LABEL_22;
    case 5u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v19);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      v20 = 1953392928;
      goto LABEL_28;
    case 6u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v21);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      v20 = 1936683040;
LABEL_28:
      MEMORY[0x193ACE8E0](v20 & 0xFFFF0000FFFFFFFFLL | 0x5B00000000, 0xE500000000000000);
      goto LABEL_81;
    case 7u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb16isScalarDistance_17_StringProcessing8TypedIntVyAB01_C0OGtMd, &_sSb16isScalarDistance_17_StringProcessing8TypedIntVyAB01_C0OGtMR);
      goto LABEL_26;
    case 8u:
      if (a1 == 1)
      {
        v10 = 0x800000018E5F2700;
        v11 = 0xD00000000000001ALL;
LABEL_80:
        v40[0] = v11;
        v40[1] = v10;
      }

      else
      {
        strcpy(v40, "match char[");
        HIDWORD(v40[1]) = -352321536;
      }

      goto LABEL_81;
    case 9u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      if ((a1 & 0x80000000000000) != 0)
      {
        _StringGuts.grow(_:)(49);
        v12 = 0xD00000000000001CLL;
        v13 = 0x800000018E5F2640;
      }

      else
      {
        _StringGuts.grow(_:)(34);
        v12 = 0x616353686374616DLL;
        v13 = 0xED0000272072616CLL;
      }

      MEMORY[0x193ACE8E0](v12, v13);
      Unicode.Scalar.write<A>(to:)();
      MEMORY[0x193ACE8E0](0xD000000000000011, 0x800000018E5F2620);
      if ((a1 & 0x40000000000000) != 0)
      {
        v16 = 1702195828;
      }

      else
      {
        v16 = 0x65736C6166;
      }

      if ((a1 & 0x40000000000000) != 0)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE500000000000000;
      }

      goto LABEL_23;
    case 0xBu:
      if (a1 == 1)
      {
        v10 = 0x800000018E5F26E0;
        v11 = 0xD000000000000019;
      }

      else
      {
        v10 = 0x800000018E5F26C0;
        v11 = 0xD000000000000013;
      }

      goto LABEL_80;
    case 0xCu:
      strcpy(v40, "matchBuiltin ");
      HIWORD(v40[1]) = -4864;
      v22 = specialized _CharacterClassModel.Representation.init(rawValue:)(a1);
      if (v22 > 3)
      {
        v32 = 0xEC0000003E656361;
        v33 = 0x707365746968773CLL;
        if (v22 != 6)
        {
          v33 = 0x3E64726F773CLL;
          v32 = 0xE600000000000000;
        }

        v34 = 0x800000018E5F2680;
        if (v22 == 4)
        {
          v35 = 0xD000000000000012;
        }

        else
        {
          v35 = 0xD000000000000013;
        }

        if (v22 != 4)
        {
          v34 = 0x800000018E5F2660;
        }

        if (v22 <= 5)
        {
          v27 = v35;
        }

        else
        {
          v27 = v33;
        }

        if (v22 <= 5)
        {
          v28 = v34;
        }

        else
        {
          v28 = v32;
        }
      }

      else
      {
        v23 = 0xE500000000000000;
        v24 = 0x3E796E613CLL;
        v25 = 0xE700000000000000;
        v26 = 0x3E74696769643CLL;
        if (v22 != 2)
        {
          v26 = 0xD000000000000017;
          v25 = 0x800000018E5F26A0;
        }

        if (v22)
        {
          v24 = 0x61726720796E613CLL;
          v23 = 0xEE003E656D656870;
        }

        if (v22 <= 1)
        {
          v27 = v24;
        }

        else
        {
          v27 = v26;
        }

        if (v22 <= 1)
        {
          v28 = v23;
        }

        else
        {
          v28 = v25;
        }
      }

      MEMORY[0x193ACE8E0](v27, v28);

      MEMORY[0x193ACE8E0](10272, 0xE200000000000000);
      if ((a1 & 0x80000000000000) != 0)
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      if ((a1 & 0x80000000000000) != 0)
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      goto LABEL_78;
    case 0xEu:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x656D75736E6F6320, 0xEA00000000005B72);
      goto LABEL_81;
    case 0xFu:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      goto LABEL_26;
    case 0x10u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x5B686374616D20, 0xE700000000000000);
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v3);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      v4 = 0x6C6176203E2D205DLL;
      v5 = 0xE90000000000005BLL;
      goto LABEL_50;
    case 0x11u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      goto LABEL_19;
    case 0x12u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
LABEL_19:
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      goto LABEL_22;
    case 0x15u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x3A676E6976617320, 0xE900000000000020);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v14);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      MEMORY[0x193ACE8E0](0x676E69706D756A20, 0xEC000000203A6F54);
LABEL_22:
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v15);

      v16 = 35;
      v17 = 0xE100000000000000;
      goto LABEL_23;
    case 0x16u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v29 = (a1 >> 35) & 7;
      if (v29 > 4 || ((0x17u >> v29) & 1) == 0)
      {
        __break(1u);
        JUMPOUT(0x18E5A65F8);
      }

      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v30);

      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      if (((a1 >> 18) & 0x1FF) == 1)
      {
        v17 = 0xE900000000000064;
        v16 = 0x65646E756F626E75;
      }

      else
      {
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        v16 = BinaryInteger.description.getter();
        v17 = v39;
      }

LABEL_23:
      v18 = v17;
      goto LABEL_44;
    case 0x17u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      goto LABEL_43;
    case 0x18u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      goto LABEL_43;
    case 0x19u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x5B736E61727420, 0xE700000000000000);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v6);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      MEMORY[0x193ACE8E0](10333, 0xE200000000000000);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v7);

      v8 = 35;
      v9 = 0xE100000000000000;
LABEL_78:
      MEMORY[0x193ACE8E0](v8, v9);

      v36 = 41;
      goto LABEL_82;
    case 0x1Au:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x5B736C617620, 0xE600000000000000);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v31);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      v4 = 0x706163203E2D205DLL;
      v5 = 0xEE005B7365727574;
LABEL_50:
      MEMORY[0x193ACE8E0](v4, v5);
LABEL_81:
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v37);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      v36 = 93;
LABEL_82:
      MEMORY[0x193ACE8E0](v36, 0xE100000000000000);
      break;
    case 0x1Bu:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
LABEL_43:
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_44:
      MEMORY[0x193ACE8E0](v16, v18);

      break;
    default:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
LABEL_26:
      _print_unlocked<A, B>(_:_:)();
      break;
  }

  return v40[0];
}

void *static Executor._run(_:_:subjectBounds:searchBounds:mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  *(&v25 + 1) = a5;
  v26 = a7;
  v24 = a2;
  *&v25 = a4;
  v12 = a1;
  v23 = a1;
  v27 = a9;
  v13 = type metadata accessor for MEProgram(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(v12, v16, type metadata accessor for MEProgram);
  v35 = 1;
  v17 = *v16;
  LOBYTE(v12) = a8 & 1;
  v18 = (v16 + *(v14 + 56));
  v19 = v18[4];
  v48 = v18[3];
  v49 = v19;
  v20 = v18[2];
  v46 = v18[1];
  v47 = v20;
  v45 = *v18;
  v33 = v48;
  v34 = v19;
  v31 = v46;
  v32 = v20;
  v30 = v45;
  v21 = *(v16 + *(v14 + 60));

  outlined init with copy of Processor.Registers(&v45, v28);

  outlined destroy of MEProgram(v16, type metadata accessor for MEProgram);
  *&v36 = v24;
  *(&v36 + 1) = a3;
  v37 = v25;
  LOBYTE(v38) = v12;
  v39 = 0uLL;
  *(&v38 + 1) = v17;
  LOBYTE(v40) = v35;
  *(&v40 + 1) = a6;
  *&v41 = v26;
  *(&v41 + 1) = a6;
  *&v42[0] = 0;
  *(v42 + 8) = v30;
  *(&v42[4] + 8) = v34;
  *(&v42[3] + 8) = v33;
  *(&v42[2] + 8) = v32;
  *(&v42[1] + 8) = v31;
  *(&v42[5] + 1) = MEMORY[0x1E69E7CC0];
  *&v43 = v21;
  BYTE8(v43) = 0;
  v44 = 0;
  static Executor._run(_:_:)(v23, &v36, v27);
  v28[10] = v42[4];
  v28[11] = v42[5];
  v28[12] = v43;
  v29 = v44;
  v28[6] = v42[0];
  v28[7] = v42[1];
  v28[8] = v42[2];
  v28[9] = v42[3];
  v28[2] = v38;
  v28[3] = v39;
  v28[4] = v40;
  v28[5] = v41;
  v28[0] = v36;
  v28[1] = v37;
  return outlined destroy of Processor(v28);
}

void *static Executor.firstMatch(_:_:subjectBounds:searchBounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v25 = a9;
  v26 = a8;
  *(&v23 + 1) = a5;
  v24 = a7;
  v22 = a2;
  *&v23 = a4;
  v12 = type metadata accessor for MEProgram(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v15, type metadata accessor for MEProgram);
  v34 = 1;
  v16 = *v15;
  v17 = (v15 + *(v13 + 56));
  v18 = v17[4];
  v47 = v17[3];
  v48 = v18;
  v19 = v17[2];
  v45 = v17[1];
  v46 = v19;
  v44 = *v17;
  v32 = v47;
  v33 = v18;
  v30 = v45;
  v31 = v19;
  v29 = v44;
  v20 = *(v15 + *(v13 + 60));

  outlined init with copy of Processor.Registers(&v44, v27);

  outlined destroy of MEProgram(v15, type metadata accessor for MEProgram);
  *&v35 = v22;
  *(&v35 + 1) = a3;
  v36 = v23;
  LOBYTE(v37) = 1;
  v38 = 0uLL;
  *(&v37 + 1) = v16;
  LOBYTE(v39) = v34;
  *(&v39 + 1) = a6;
  *&v40 = v24;
  *(&v40 + 1) = a6;
  *&v41[0] = 0;
  *(v41 + 8) = v29;
  *(&v41[4] + 8) = v33;
  *(&v41[3] + 8) = v32;
  *(&v41[2] + 8) = v31;
  *(&v41[1] + 8) = v30;
  *(&v41[5] + 1) = MEMORY[0x1E69E7CC0];
  *&v42 = v20;
  BYTE8(v42) = 0;
  v43 = 0;
  static Executor._firstMatch(_:using:)(a1, &v35, v25);
  v27[10] = v41[4];
  v27[11] = v41[5];
  v27[12] = v42;
  v28 = v43;
  v27[6] = v41[0];
  v27[7] = v41[1];
  v27[8] = v41[2];
  v27[9] = v41[3];
  v27[2] = v37;
  v27[3] = v38;
  v27[4] = v39;
  v27[5] = v40;
  v27[0] = v35;
  v27[1] = v36;
  return outlined destroy of Processor(v27);
}

void static Executor._firstMatch(_:using:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = type metadata accessor for MEProgram(0);
  v7 = *(a1 + *(v53 + 40));
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_74;
  }

  v9 = *(v7 + 4 * v8 + 28);
  v11 = a2[9];
  v10 = a2[10];
  static Executor._run(_:_:)(a1, a2, &v54);
  if (!v3)
  {
    v51 = v9;
    v59 = v10 >> 14;
    v52 = a1;
    while (1)
    {
      v12 = *(&v54 + 1);
      if (*(&v54 + 1))
      {
        v49 = *&v55[16];
        v50 = *v55;
        *a3 = v54;
        *(a3 + 8) = v12;
        *(a3 + 16) = v50;
        *(a3 + 32) = v49;
        return;
      }

      if (*(a1 + *(v53 + 44)) == 1 || v59 == v11 >> 14)
      {
LABEL_69:
        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return;
      }

      v13 = *a2;
      v14 = a2[1];
      if ((v51 & 0x10000) != 0)
      {
        v11 = String.index(after:)();
        goto LABEL_34;
      }

      v15 = (v14 & 0x1000000000000000) == 0 || (v13 & 0x800000000000000) != 0;
      v16 = v11 & 0xC;
      v17 = 4 << v15;
      v18 = HIBYTE(v14) & 0xF;
      if ((v11 & 1) != 0 && v16 != v17)
      {
        break;
      }

      if (v16 == v17)
      {
        v42 = v11;
        v43 = *a2;
        v44 = a2[1];
        v45 = _StringGuts._slowEnsureMatchingEncoding(_:)(v42, v13, v14);
        v13 = v43;
        v14 = v44;
        v11 = v45;
      }

      v20 = v13 & 0xFFFFFFFFFFFFLL;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v20 = v18;
      }

      if (v20 <= v11 >> 16)
      {
        goto LABEL_77;
      }

      if (v11)
      {
        goto LABEL_25;
      }

      v46 = v13;
      v47 = v14;
      v48 = _StringGuts.scalarAlignSlow(_:)(v11, v13, v14);
      v13 = v46;
      v14 = v47;
      a1 = v52;
      v11 = v11 & 0xC | v48 & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((v14 & 0x1000000000000000) != 0)
      {
LABEL_67:
        v11 = String.UnicodeScalarView._foreignIndex(after:)();
        goto LABEL_34;
      }

LABEL_26:
      v21 = v11 >> 16;
      if ((v14 & 0x2000000000000000) != 0)
      {
        *&v54 = v13;
        *(&v54 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
        v23 = v55[v21 - 16];
      }

      else
      {
        if ((v13 & 0x1000000000000000) != 0)
        {
          v22 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v22 = _StringObject.sharedUTF8.getter();
        }

        v23 = *(v22 + v21);
      }

      v24 = v23;
      v25 = __clz(v23 ^ 0xFF) - 24;
      if (v24 >= 0)
      {
        LOBYTE(v25) = 1;
      }

      v11 = ((v21 + v25) << 16) | 5;
LABEL_34:
      if (v59 < v11 >> 14)
      {
        goto LABEL_69;
      }

      a2[11] = v11;
      a2[12] = 0;
      if (*(a2 + 152) == 1)
      {
        v26 = a2[20];
        v27 = *(v26 + 2);
        if (v27)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          }

          if (v27 > *(v26 + 2))
          {
            goto LABEL_75;
          }

          bzero(v26 + 32, 8 * v27);
          a2[20] = v26;
        }

        *&v55[8] = &type metadata for SentinelValue;
        v28 = a2[21];
        v29 = *(v28 + 2);
        if (v29)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
          }

          v30 = 0;
          v31 = (v28 + 32);
          while (v30 < *(v28 + 2))
          {
            ++v30;
            __swift_assign_boxed_opaque_existential_0(v31, &v54);
            v31 += 4;
            if (v29 == v30)
            {
              a2[21] = v28;
              a1 = v52;
              goto LABEL_48;
            }
          }

LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          return;
        }

LABEL_48:
        __swift_destroy_boxed_opaque_existential_0(&v54);
        v32 = a2[22];
        v33 = *(v32 + 2);
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
          }

          if (v33 > *(v32 + 2))
          {
            goto LABEL_76;
          }

          memset_pattern16(v32 + 32, &unk_18E5ED280, 8 * v33);
          a2[22] = v32;
        }
      }

      if (*(a2[23] + 16))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = a2[23];
        if (isUniquelyReferenced_nonNull_native)
        {
          specialized Array.replaceSubrange<A>(_:with:)(0, *(v35 + 16));
        }

        else
        {
          v36 = MEMORY[0x1E69E7CC0];
          if (*(v35 + 24) >= 2uLL)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV9SavePointVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV9SavePointVGMR);
            v36 = swift_allocObject();
            v37 = _swift_stdlib_malloc_size(v36);
            v36[2] = 0;
            v36[3] = 2 * ((v37 - 32) / 72);
          }

          a2[23] = v36;
          a1 = v52;
        }
      }

      v38 = a2[24];
      v39 = *(v38 + 2);
      if (v39)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
        }

        v40 = 0;
        v41 = (v38 + 32);
        while (1)
        {
          v54 = 0uLL;
          v55[0] = 1;
          *&v55[8] = 0u;
          v56 = 0u;
          v57 = 0;
          v58 = 1;
          if (v40 >= *(v38 + 2))
          {
            break;
          }

          ++v40;
          outlined assign with take of Processor._StoredCapture(&v54, v41);
          v41 += 72;
          if (v39 == v40)
          {
            a2[24] = v38;
            a1 = v52;
            goto LABEL_4;
          }
        }

        __break(1u);
        goto LABEL_73;
      }

LABEL_4:
      *(a2 + 200) = 0;
      MEMORY[0x193ACF400](a2[26]);
      a2[26] = 0;
      static Executor._run(_:_:)(a1, a2, &v54);
    }

    v19 = v13 & 0xFFFFFFFFFFFFLL;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v14) & 0xF;
    }

    if (v19 <= v11 >> 16)
    {
      goto LABEL_78;
    }

LABEL_25:
    if ((v14 & 0x1000000000000000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_26;
  }
}

void static Executor._run(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 200);
  if (v5 != 1)
  {
    for (i = *(a2 + 88); !*(a2 + 200); v5 = *(a2 + 200))
    {
      Processor.cycle()();
    }

    if (v5 != 1)
    {
      v9 = *(a2 + 88);
      if (v9 >> 14 < i >> 14)
      {
        __break(1u);
      }

      else
      {
        if (*(a1 + 16))
        {
          memset(v14, 0, sizeof(v14));
LABEL_14:
          v12 = static Executor.createExistentialElements(_:matchRange:storedCaptures:wholeMatchValue:)(a1, i, v9, *(a2 + 192), v14);
          outlined destroy of Any?(v14, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
          v13 = *(a2 + 8);
          *a3 = *a2;
          a3[1] = v13;
          a3[2] = v12;
          a3[3] = i;
          a3[4] = v9;

          return;
        }

        v10 = *(a1 + 8);
        if ((v10 & 0x8000000000000000) == 0)
        {
          v11 = *(a2 + 168);
          if (v10 < *(v11 + 16))
          {
            outlined init with copy of Any(v11 + 32 * v10 + 32, v14);
            goto LABEL_14;
          }

LABEL_17:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  v8 = *(a2 + 208);
  if (v8)
  {
    MEMORY[0x193ACF410](v8);
    swift_willThrow();
  }

  else
  {
    a3[4] = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}

uint64_t protocol witness for Sequence.makeIterator() in conformance RangesSequence<A>(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance RangesSequence<A>(uint64_t a1, uint64_t a2)
{
  v4 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

unint64_t Executor.Matches.Iterator.nextSearchIndex(after:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a1 >> 14 != a2 >> 14)
  {
    return v4;
  }

  v5 = (v3 + *(a3 + 28));
  if (a1 >> 14 >= v5[3] >> 14)
  {
    return 0;
  }

  v6 = *(v3 + *(type metadata accessor for MEProgram(0) + 40));
  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
    return String.UnicodeScalarView._foreignIndex(after:)();
  }

  v9 = *v5;
  v8 = v5[1];
  if ((*(v6 + 4 * v7 + 28) & 0x10000) != 0)
  {
    return String.index(after:)();
  }

  v10 = _StringGuts.validateScalarIndex(_:)(v4, *v5, v5[1]);
  if ((v8 & 0x1000000000000000) != 0)
  {
    return String.UnicodeScalarView._foreignIndex(after:)();
  }

  v11 = v10 >> 16;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v18[0] = v9;
    v18[1] = v8 & 0xFFFFFFFFFFFFFFLL;
    v13 = *(v18 + v11);
  }

  else
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      v12 = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v12 = _StringObject.sharedUTF8.getter();
    }

    v13 = *(v12 + v11);
  }

  v15 = v13;
  v16 = __clz(v13 ^ 0xFF) - 24;
  if (v15 >= 0)
  {
    LOBYTE(v16) = 1;
  }

  return ((v11 + v16) << 16) | 5;
}

uint64_t Regex._literalPattern.getter()
{
  v7 = MEMORY[0x1E69E7CC0];
  v1 = *(*v0 + 24);

  LiteralPrinter.outputNode(_:)(v1);

  v2 = *(v7 + 16);
  MEMORY[0x193ACE810](v2);
  if (v2)
  {
    v3 = (v7 + 48);
    while ((*v3 & 1) == 0)
    {
      v5 = *(v3 - 2);
      v4 = *(v3 - 1);

      MEMORY[0x193ACE8E0](v5, v4);
      outlined consume of PatternSegment(v5, v4, 0);
      v3 += 24;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:

  return 0;
}

void LiteralPrinter.outputNode(_:)(char *a1)
{
  v2 = type metadata accessor for DSLTree.Atom(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DSLTree.QuantificationKind(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AST.Group.Kind();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AST.MatchingOptionSequence();
  *&v101 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DSLTree._AST.GroupKind(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      v57 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v58 = *(v57 + 16);
      if (v58)
      {

        v59 = 32;
        do
        {
          v60 = *(v57 + v59);

          LiteralPrinter.outputNode(_:)(v60);

          v59 += 8;
          --v58;
        }

        while (v58);
        goto LABEL_39;
      }

      return;
    case 2uLL:
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28) != 1 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x38))
      {
        v21 = v102;
        v22 = v102[1];
        goto LABEL_3;
      }

      v54 = v102;
      v61 = *v102;
      v62 = *(*v102 + 16);
      if (v62)
      {
        v11 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v15 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        LODWORD(v12) = *&v61[4 * v62 + 28];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_46:
          v64 = *(v61 + 2);
          v63 = *(v61 + 3);
          if (v64 >= v63 >> 1)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
          }

          *(v61 + 2) = v64 + 1;
          *&v61[4 * v64 + 32] = v12;
          *v54 = v61;
          if (!v15)
          {
            goto LABEL_71;
          }

          v103 = 3948328;
          v104 = 0xE300000000000000;
          MEMORY[0x193ACE8E0](v11, v15);
          MEMORY[0x193ACE8E0](62, 0xE100000000000000);
          v55 = v103;
          v20 = v104;
          v56 = v54[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_50;
        }
      }

      else
      {
        __break(1u);
      }

      v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62 + 1, 1, v61);
      goto LABEL_46;
    case 3uLL:
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
      v41 = swift_projectBox();
      v42 = *(v41 + *(v40 + 48));
      outlined init with copy of DSLTree._AST.AbsentFunction(v41, v20, type metadata accessor for DSLTree._AST.GroupKind);

      v43 = DSLTree._AST.GroupKind._patternString.getter();
      v100 = v44;
      if (v44)
      {
        v98 = v42;
        v99 = v43;
        a1 = *v102;
        v45 = *(*v102 + 16);
        if (v45)
        {
          LODWORD(v10) = *&a1[4 * v45 + 28];
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_27;
          }
        }

        else
        {
          __break(1u);
        }

        a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, a1);
LABEL_27:
        v47 = *(a1 + 2);
        v46 = *(a1 + 3);
        if (v47 >= v46 >> 1)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, a1);
        }

        *(a1 + 2) = v47 + 1;
        v97 = a1 + 32;
        *&a1[4 * v47 + 32] = v10;
        v48 = v102;
        *v102 = a1;
        v49 = v48[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        }

        *(v49 + 2) = v51 + 1;
        v52 = &v49[24 * v51];
        v53 = v100;
        *(v52 + 4) = v99;
        *(v52 + 5) = v53;
        v52[48] = 0;

        v54 = v102;
        v102[1] = v49;
        (*(v12 + 32))(v14, v20, v11);
        if ((*(v12 + 88))(v14, v11) == *MEMORY[0x1E69E8E58])
        {
          (*(v12 + 96))(v14, v11);
          v55 = v101;
          (*(v101 + 32))(v17, v14, v15);
          v56 = 0xFFFFFFFFFFFFFFBLL;
          if (!*(a1 + 2))
          {
            goto LABEL_94;
          }

          MatchingOptions.Representation.apply(_:)(v17);
          (*(v55 + 8))(v17, v15);
          *v54 = a1;
        }

        else
        {
          (*(v12 + 8))(v14, v11);
        }

        LiteralPrinter.outputNode(_:)(v98);

        v85 = v54[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2) + 1, 1, v85, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        }

        v87 = *(v85 + 2);
        v86 = *(v85 + 3);
        a1 = (v87 + 1);
        if (v87 >= v86 >> 1)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v85, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        }

        *(v85 + 2) = a1;
        v88 = &v85[24 * v87];
        *(v88 + 2) = xmmword_18E5ED0A0;
        v88[48] = 0;
        v54[1] = v85;
        v20 = *v54;
        if (*(*v54 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v89 = *(v20 + 2);
            if (!v89)
            {
              goto LABEL_70;
            }

            goto LABEL_83;
          }
        }

        else
        {
          __break(1u);
        }

        v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        v89 = *(v20 + 2);
        if (!v89)
        {
LABEL_70:
          __break(1u);
LABEL_71:
          v90 = v54[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 2) + 1, 1, v90, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          }

          v92 = *(v90 + 2);
          v91 = *(v90 + 3);
          v56 = v92 + 1;
          if (v92 >= v91 >> 1)
          {
            v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v90, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          }

          *(v90 + 2) = v56;
          v93 = &v90[24 * v92];
          *(v93 + 2) = xmmword_18E5ED0B0;
          v93[48] = 0;
          for (v54[1] = v90; ; v54[1] = v56)
          {
            LiteralPrinter.outputNode(_:)(a1);
            v94 = v54[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            }

            v55 = *(v94 + 2);
            v95 = *(v94 + 3);
            a1 = (v55 + 1);
            if (v55 >= v95 >> 1)
            {
              v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v55 + 1, 1, v94, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            }

            *(v94 + 2) = a1;
            v96 = &v94[24 * v55];
            *(v96 + 2) = xmmword_18E5ED0A0;
            v96[48] = 0;
            v54[1] = v94;
            v20 = *v54;
            if (*(*v54 + 2))
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v89 = *(v20 + 2);
                if (v89)
                {
                  break;
                }

                goto LABEL_93;
              }
            }

            else
            {
              __break(1u);
            }

            v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
            v89 = *(v20 + 2);
            if (v89)
            {
              break;
            }

LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 16) + 1, 1, v56, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
LABEL_50:
            v66 = *(v56 + 16);
            v65 = *(v56 + 24);
            if (v66 >= v65 >> 1)
            {
              v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v56, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            }

            *(v56 + 16) = v66 + 1;
            v67 = v56 + 24 * v66;
            *(v67 + 32) = v55;
            *(v67 + 40) = v20;
            *(v67 + 48) = 0;
          }
        }

LABEL_83:
        *(v20 + 2) = v89 - 1;
        *v54 = v20;
        return;
      }

      outlined destroy of MEProgram(v20, type metadata accessor for DSLTree._AST.GroupKind);

      v21 = v102;
      v22 = v102[1];
LABEL_3:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[24 * v24];
      *(v25 + 4) = a1;
      *(v25 + 5) = 0;
      v25[48] = 1;
      v21[1] = v22;
      return;
    case 4uLL:
      v26 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      goto LABEL_12;
    case 5uLL:
    case 0xBuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
      v21 = v102;
      v22 = v102[1];
      goto LABEL_3;
    case 6uLL:
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v69 = swift_projectBox();
      v70 = *(v68 + 48);
      v71 = *(v69 + *(v68 + 64));
      outlined init with copy of DSLTree._AST.AbsentFunction(v69, v10, type metadata accessor for DSLTree._AST.QuantificationAmount);
      outlined init with copy of DSLTree._AST.AbsentFunction(v69 + v70, v7, type metadata accessor for DSLTree.QuantificationKind);

      LiteralPrinter.outputQuantification(_:_:_:)(v10, v7, v71);

      outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.QuantificationKind);
      outlined destroy of MEProgram(v10, type metadata accessor for DSLTree._AST.QuantificationAmount);
      return;
    case 7uLL:
      v84 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v103 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v104) = v84;
      LiteralPrinter.outputCustomCharacterClass(_:)(&v103);
      return;
    case 8uLL:
      v27 = swift_projectBox();
      outlined init with copy of DSLTree._AST.AbsentFunction(v27, v4, type metadata accessor for DSLTree.Atom);
      LiteralPrinter.outputAtom(_:)(v4);
      outlined destroy of MEProgram(v4, type metadata accessor for DSLTree.Atom);
      return;
    case 9uLL:
    case 0x10uLL:
      return;
    case 0xAuLL:
      v72 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v73 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v74 = *(v72 + 24);
      v75 = v102;
      v77 = *v102;
      v76 = v102[1];

      v78 = specialized LiteralPrinter.prepareQuotedLiteral(_:)(v73, v74, v77);
      v80 = v79;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      v82 = *(v76 + 2);
      v81 = *(v76 + 3);
      if (v82 >= v81 >> 1)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v76, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      *(v76 + 2) = v82 + 1;
      v83 = &v76[24 * v82];
      *(v83 + 4) = v78;
      *(v83 + 5) = v80;
      v83[48] = 0;

      v75[1] = v76;
      return;
    case 0xCuLL:
      v26 = *swift_projectBox();
LABEL_12:

      LiteralPrinter.outputNode(_:)(v26);

      return;
    default:
      v28 = *(a1 + 2);
      v29 = v28[2];

      v30 = v102;
      if (v29)
      {
        v31 = v28[4];

        LiteralPrinter.outputNode(_:)(v31);

        v32 = v29 - 1;
        if (v29 != 1)
        {
          v33 = v28 + 5;
          v101 = xmmword_18E5ED0C0;
          do
          {
            v35 = *v33++;
            v34 = v35;
            v36 = v30[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            }

            v38 = *(v36 + 2);
            v37 = *(v36 + 3);
            if (v38 >= v37 >> 1)
            {
              v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            }

            *(v36 + 2) = v38 + 1;
            v39 = &v36[24 * v38];
            *(v39 + 2) = v101;
            v39[48] = 0;
            v30 = v102;
            v102[1] = v36;
            LiteralPrinter.outputNode(_:)(v34);

            --v32;
          }

          while (v32);
        }
      }

LABEL_39:

      return;
  }
}

uint64_t DSLTree._AST.GroupKind._patternString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AST.MatchingOptionSequence();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_SSGMd, &_s12_RegexParser6SourceV7LocatedVy_SSGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = type metadata accessor for AST.Group.Kind();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x1E69E8E10])
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    v21 = 3948328;
    v22 = 0xE300000000000000;
    MEMORY[0x193ACE600](v20, v6);
    (*(v7 + 8))(v9, v6);
    MEMORY[0x193ACE8E0](v20[0], v20[1]);

    MEMORY[0x193ACE8E0](62, 0xE100000000000000);
    return v21;
  }

  if (v14 == *MEMORY[0x1E69E8E20])
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  else
  {
    if (v14 == *MEMORY[0x1E69E8E58])
    {
      (*(v11 + 96))(v13, v10);
      (*(v3 + 32))(v5, v13, v2);
      v16 = AST.MatchingOptionSequence._patternString.getter();
      v18 = v17;
      (*(v3 + 8))(v5, v2);
      v21 = v16;
      v22 = v18;

      MEMORY[0x193ACE8E0](58, 0xE100000000000000);

      return v21;
    }

    if (v14 == *MEMORY[0x1E69E8E60])
    {
      return 40;
    }

    else
    {
      v19 = v14;
      result = 2178856;
      if (v19 == *MEMORY[0x1E69E8E08])
      {
        return 3817256;
      }

      else if (v19 == *MEMORY[0x1E69E8E28])
      {
        return 8142632;
      }

      else if (v19 == *MEMORY[0x1E69E8E38])
      {
        return 4079400;
      }

      else if (v19 == *MEMORY[0x1E69E8E68])
      {
        return 4013864;
      }

      else if (v19 != *MEMORY[0x1E69E8E30])
      {
        if (v19 == *MEMORY[0x1E69E8E48])
        {
          return 2768680;
        }

        else if (v19 == *MEMORY[0x1E69E8E00])
        {
          return 1027358504;
        }

        else if (v19 == *MEMORY[0x1E69E8E40])
        {
          return 557596456;
        }

        else if (v19 == *MEMORY[0x1E69E8E50])
        {
          return 708591400;
        }

        else if (v19 == *MEMORY[0x1E69E8E70])
        {
          return 0x3A72732A28;
        }

        else if (v19 == *MEMORY[0x1E69E8E18])
        {
          return 0x3A7273612A28;
        }

        else
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }
    }
  }

  return result;
}