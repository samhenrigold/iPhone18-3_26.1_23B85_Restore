__n128 PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v14 = *(a2 + 16);
  *(a7 + 8) = *a2;
  *(a7 + 24) = v14;
  result = *(a2 + 32);
  *(a7 + 40) = result;
  *(a7 + 56) = *(a2 + 48);
  *(a7 + 64) = a3;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  return result;
}

void PresentationSource.viewController.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*PresentationSource.viewController.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100255D9C;
}

void sub_100255D9C(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

void PresentationSource.windowScene.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      [v3 windowScene];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PresentationSource.configurationHandler.getter()
{
  v1 = *(v0 + 64);
  sub_10000DE64(v1, *(v0 + 72));
  return v1;
}

uint64_t PresentationSource.configurationHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10000DE74(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PresentationSource.presentationDeferral.getter()
{
  v1 = *(v0 + 80);
  sub_10000DE64(v1, *(v0 + 88));
  return v1;
}

uint64_t PresentationSource.presentationDeferral.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10000DE74(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

double static PresentationSource.topmost(in:)@<D0>(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v3 presentedViewController];
    v5 = v3;
    if (v4)
    {
      v6 = v3;
      while (1)
      {
        v5 = v4;
        if (([v4 canPresentViewControllers] & 1) == 0)
        {
          break;
        }

        v4 = [v5 presentedViewController];
        v6 = v5;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      v5 = v6;
    }

LABEL_9:

    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 40) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *&result = 255;
    *(a1 + 48) = xmmword_100512780;
  }

  else
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  return result;
}

void *static PresentationSource.topmostPresentedViewController(in:options:)(uint64_t a1, char a2)
{
  v3 = UIWindowScene.rootViewController.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = v4;
    do
    {
      v7 = v5;
      if ((a2 & 1) != 0 && ![v5 canPresentViewControllers])
      {

        v4 = v7;
        goto LABEL_11;
      }

      v5 = [v7 presentedViewController];
      v6 = v7;
    }

    while (v5);
    v6 = v7;
  }

  else
  {
    v6 = v4;
  }

LABEL_11:

  return v6;
}

__n128 PresentationSource.init(viewController:position:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  swift_unknownObjectWeakAssign();

  v6 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v6;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  *(a3 + 56) = *(a2 + 48);
  return result;
}

id static PresentationSource.topmostPresentedViewController(from:options:)(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if ((a2 & 1) != 0 && ([v4 canPresentViewControllers] & 1) == 0)
      {
        break;
      }

      v4 = [v5 presentedViewController];
      v3 = v5;
      if (!v4)
      {
        return v5;
      }
    }
  }

  return v3;
}

double PresentationSource.init(windowScene:position:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = UIWindowScene.rootViewController.getter();

  if (v6)
  {
    swift_unknownObjectWeakInit();
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    v7 = *(a2 + 16);
    *(a3 + 8) = *a2;
    *(a3 + 24) = v7;
    v8 = *(a2 + 32);
    *(a3 + 40) = v8;
    *(a3 + 56) = *(a2 + 48);
  }

  else
  {
    sub_10001074C(a2, &qword_10063B840, &qword_100523120);
    *&v8 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 1;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
  }

  return *&v8;
}

void sub_1002562F8(void *a1, void *a2, id a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v12 = sub_1004DBF6C();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000C10F4();
  *v15 = sub_1004DE14C();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_1004DBF9C();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_103;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v230 = v6;
    LODWORD(v228) = a2;
    v229 = a3;
    a3 = Strong;
    v18 = [a3 presentedViewController];
    a2 = a3;
    if (v18)
    {
      v19 = a3;
      do
      {
        a2 = v18;

        v18 = [a2 presentedViewController];
        v19 = a2;
      }

      while (v18);
    }

    v20 = [a2 transitionCoordinator];
    if (v20)
    {
      v6 = v20;
      if (qword_100633E08 == -1)
      {
LABEL_8:
        v21 = sub_1004D966C();
        sub_100035430(v21, qword_10063B820);
        v22 = a1;
        swift_unknownObjectRetain();
        v23 = sub_1004D964C();
        v24 = sub_1004DDF9C();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v225 = v23;
          v26 = v25;
          v226 = swift_slowAlloc();
          *&v238 = v226;
          *v26 = 136446466;
          v27 = v22;
          v227 = v22;
          v28 = v27;
          v29 = [v27 description];
          v30 = sub_1004DD43C();
          LODWORD(v224) = v24;
          v31 = a3;
          v32 = a5;
          v33 = v30;
          v34 = a4;
          v36 = v35;

          v37 = v33;
          a5 = v32;
          a3 = v31;
          v38 = sub_1000343A8(v37, v36, &v238);
          a4 = v34;

          *(v26 + 4) = v38;
          *(v26 + 12) = 2082;
          *&aBlock = v6;
          swift_unknownObjectRetain();
          sub_100004CB8(&qword_10063B8D8, &unk_100523590);
          v39 = sub_1004DD4DC();
          v41 = sub_1000343A8(v39, v40, &v238);
          v22 = v227;

          *(v26 + 14) = v41;
          v42 = v225;
          _os_log_impl(&_mh_execute_header, v225, v224, "Attempted to present %{public}s, but needs to wait for the ongoing transition %{public}s to complete first", v26, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        sub_1000699E8(v230, &v238);
        v75 = swift_allocObject();
        *(v75 + 16) = v6;
        *(v75 + 24) = v22;
        sub_10006A8BC(&v238, v75 + 32);
        *(v75 + 128) = v228 & 1;
        *(v75 + 129) = v229 & 1;
        *(v75 + 136) = a4;
        *(v75 + 144) = a5;
        *&v233 = sub_1002594D4;
        *(&v233 + 1) = v75;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v232 = sub_10000A2F8;
        *(&v232 + 1) = &unk_1005E8728;
        v76 = _Block_copy(&aBlock);
        v77 = v22;
        swift_unknownObjectRetain();
        sub_10000DE64(a4, a5);

        [v6 animateAlongsideTransition:0 completion:v76];
        _Block_release(v76);

        swift_unknownObjectRelease();
        return;
      }

LABEL_103:
      swift_once();
      goto LABEL_8;
    }

    if ([a2 canPresentViewControllers])
    {
      v56 = a2;
      [a1 setPlayActivityFeatureNameSourceViewController:v56];
      v57 = _s27WeakViewControllerReferenceCMa();
      v58 = objc_allocWithZone(v57);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v237.receiver = v58;
      v237.super_class = v57;
      v59 = objc_msgSendSuper2(&v237, "init");
      if (qword_100633CB0 != -1)
      {
        swift_once();
      }

      v227 = a4;
      objc_setAssociatedObject(a1, qword_100638150, v59, 1);
      v226 = v56;

      v60 = v230;
      v61 = v230[8];
      if (v61)
      {
        v61(a1);
      }

      v222 = a5;
      v217 = [a1 modalPresentationStyle];
      objc_opt_self();
      v221 = swift_dynamicCastObjCClass();
      v62 = a1;
      v64 = v60[1];
      v63 = v60[2];
      v66 = v60[3];
      v65 = v60[4];
      v68 = v60[5];
      v67 = v60[6];
      v69 = v60[7];
      objc_opt_self();
      v70 = v62;
      v71 = swift_dynamicCastObjCClass();
      v224 = v64;
      v223 = v66;
      v230 = v65;
      v72 = v65;
      v73 = v68;
      v225 = v69;
      sub_1002593F4(v64, v63, v66, v72, v68, v67);
      if (v71)
      {
        v74 = [v71 preferredStyle] == 0;
      }

      else
      {
        v74 = 0;
      }

      v104 = v67;
      v105 = v226;
      v220 = v70;
      v106 = v63;
      if (v67 == 0xFF && !v221)
      {
        v107 = v220;
        if ([v220 modalPresentationStyle] == 7)
        {
          v108 = [v107 popoverPresentationController];
          if (v108)
          {
            v109 = v108;
            v218 = a3;
            if (qword_100633E08 != -1)
            {
              swift_once();
            }

            v110 = sub_1004D966C();
            sub_100035430(v110, qword_10063B820);
            v111 = sub_1004D964C();
            v112 = sub_1004DDF9C();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              *v113 = 0;
            }

            v114 = [v109 sourceItem];
            if (v114)
            {
              v115 = v114;
              swift_unknownObjectRetain();
              v116 = sub_1004D964C();
              v117 = sub_1004DDF9C();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v219 = swift_slowAlloc();
                *&v238 = v219;
                *v118 = 136446210;
                *&aBlock = v115;
                swift_unknownObjectRetain();
                sub_100004CB8(&qword_10063B8D0, &unk_100523580);
                v119 = sub_1004DD4DC();
                v221 = v106;
                v121 = sub_1000343A8(v119, v120, &v238);
                v216 = v109;
                v122 = v117;
                v123 = v121;

                *(v118 + 4) = v123;
                _os_log_impl(&_mh_execute_header, v116, v122, "Using sourceItem=%{public}s as the position", v118, 0xCu);
                sub_100008D24(v219);

                sub_10025942C(v224, v221, v223, v230, v73, v104);
              }

              else
              {
                sub_10025942C(v224, v106, v223, v230, v73, v104);
              }

              v106 = 0;
              v223 = 0;
              v230 = 0;
              v73 = 0;
              v225 = 15;
              v104 = 2;
              v224 = v115;
              a3 = v218;
            }

            else
            {
              v124 = [v109 sourceView];
              a3 = v218;
              if (v124)
              {
                v125 = v124;
                v221 = v106;
                v126 = v124;
                v127 = sub_1004D964C();
                v128 = sub_1004DDF9C();

                if (os_log_type_enabled(v127, v128))
                {
                  v129 = swift_slowAlloc();
                  v216 = v129;
                  v219 = swift_slowAlloc();
                  *&v238 = v219;
                  *v129 = 136446210;
                  v130 = v126;
                  v131 = [v130 description];
                  v132 = sub_1004DD43C();
                  v215 = v127;
                  v133 = v132;
                  v214 = v128;
                  v135 = v134;

                  a3 = v218;
                  v136 = sub_1000343A8(v133, v135, &v238);

                  v137 = v216;
                  *(v216 + 4) = v136;
                  v138 = v215;
                  _os_log_impl(&_mh_execute_header, v215, v214, "Using sourceView=%{public}s as the position", v137, 0xCu);
                  sub_100008D24(v219);
                }

                else
                {
                }

                [v109 sourceRect];
                v143 = v142;
                v145 = v144;
                v147 = v146;
                v149 = v148;
                sub_10025942C(v224, v221, v223, v230, v73, v104);

                v104 = 0;
                v106 = v143;
                v223 = v145;
                v230 = v147;
                v73 = v149;
                v225 = 15;
                v224 = v125;
              }

              else
              {
                v139 = sub_1004D964C();
                v140 = sub_1004DDF8C();
                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v221 = v106;
                  *v141 = 0;
                  v106 = v221;
                }
              }
            }
          }
        }
      }

      v150 = [v105 view];
      if (!v150)
      {
        __break(1u);
        return;
      }

      v151 = v150;
      v152 = [v150 window];

      v221 = v106;
      v219 = v73;
      v153 = v220;
      if (v152 && (v154 = [v152 traitCollection], v152, v155 = objc_msgSend(v154, "horizontalSizeClass"), v154, v155 == 2) && (v228 & 1) != 0)
      {
        if (v104 == 0xFF)
        {
          LOBYTE(v156) = [v153 modalPresentationStyle] == 7;
          goto LABEL_71;
        }

        v156 = 1;
      }

      else
      {
        v156 = 0;
        if (v104 == 0xFF)
        {
          goto LABEL_71;
        }
      }

      *&v238 = v224;
      *(&v238 + 1) = v106;
      *&v239 = v223;
      *(&v239 + 1) = v230;
      *&v240 = v73;
      BYTE8(v240) = v104;
      v241 = v225;
      if (PresentationSource.Position.canPresent(from:)(v105))
      {
        if ((v156 | v74))
        {
          v218 = a3;
          if (qword_100633E08 != -1)
          {
            swift_once();
          }

          v157 = sub_1004D966C();
          v158 = sub_100035430(v157, qword_10063B820);
          v159 = v153;
          v228 = v158;
          v160 = sub_1004D964C();
          v161 = sub_1004DDF9C();

          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v217 = swift_slowAlloc();
            *&aBlock = v217;
            *v162 = 136446210;
            v163 = v159;
            v164 = [v163 description];
            v165 = sub_1004DD43C();
            v167 = v166;

            v168 = sub_1000343A8(v165, v167, &aBlock);

            *(v162 + 4) = v168;
            v106 = v221;
            sub_100008D24(v217);
          }

          v169 = v227;
          v170 = v218;
          v171 = v223;
          v172 = v224;
          [v159 setModalPresentationStyle:7];
          v173 = [v159 popoverPresentationController];
          if (v173)
          {
            v217 = v159;

            v174 = v172;
            v175 = v172;
            v176 = v230;
            v177 = v219;
            sub_1002593F4(v174, v106, v171, v230, v219, v104);
            sub_100259408(v175, v106, v171, v176, v177, v104);
            v178 = sub_1004D964C();
            v179 = sub_1004DDF9C();
            v228 = v104;
            v180 = v178;
            v181 = v179;
            sub_10025942C(v175, v106, v171, v176, v177, v104);
            if (os_log_type_enabled(v180, v181))
            {
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v236 = v183;
              *v182 = 136446210;
              aBlock = v238;
              v232 = v239;
              v233 = v240;
              v234 = v241;
              LOBYTE(v104) = v228;
              sub_100259408(v175, v106, v223, v176, v177, v228);
              v184 = sub_1004DD4DC();
              v186 = sub_1000343A8(v184, v185, &v236);
              v106 = v221;

              *(v182 + 4) = v186;
              _os_log_impl(&_mh_execute_header, v180, v181, "Configuring viewController with popover position=%{public}s", v182, 0xCu);
              sub_100008D24(v183);
              v171 = v223;
              v169 = v227;

              v170 = v218;
            }

            else
            {

              LOBYTE(v104) = v228;
            }

            v201 = v217;
            v235 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate;
            v202 = swift_dynamicCastObjCProtocolConditional();
            v172 = v224;
            v153 = v220;
            if (v202)
            {
              v203 = v202;
              v204 = v201;
              v205 = [v204 presentationController];
              if (v205)
              {
                v206 = v205;
                [v205 setDelegate:v203];

                v106 = v221;
              }
            }

            v207 = [v201 popoverPresentationController];
            if (v207)
            {
              v208 = v207;
              v209 = v230;
              if (v104)
              {
                if (v104 == 1)
                {
                  [v207 setBarButtonItem:v172];
                }

                else
                {
                  [v207 setSourceItem:v172];
                }
              }

              else
              {
                v210 = v219;
                v211 = v219;
                [v207 setSourceView:v224];
                [v208 setSourceRect:{*&v106, *&v171, *&v209, *&v211}];
                v212 = v210;
                v172 = v224;
                sub_10025942C(v224, v106, v171, v209, v212, v104);
              }

              [v208 setPermittedArrowDirections:v225];

              sub_10025942C(v172, v106, v171, v230, v219, v104);
            }

            else
            {
              sub_10025942C(v172, v106, v171, v230, v219, v104);
            }
          }

          goto LABEL_84;
        }

        LOBYTE(v156) = 0;
      }

LABEL_71:
      objc_opt_self();
      v187 = swift_dynamicCastObjCClass();
      if (v187)
      {
        [v187 setAllowsCustomPresentationStyle:1];
        v188 = 2;
      }

      else
      {
        v188 = v217;
        if (v217 == -2)
        {
          v189 = [v105 traitCollection];
          [v189 horizontalSizeClass];
        }

        else if (((v217 == 7) & v156) == 1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v188 = 3;
          }

          else
          {
            v188 = 7;
          }
        }
      }

      v190 = a3;
      if (qword_100633E08 != -1)
      {
        swift_once();
      }

      v191 = sub_1004D966C();
      sub_100035430(v191, qword_10063B820);
      v192 = sub_1004D964C();
      v193 = sub_1004DDF9C();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *&aBlock = v195;
        *v194 = 136446210;
        v236 = v188;
        type metadata accessor for UIModalPresentationStyle(0);
        v196 = sub_1004DD4DC();
        v198 = sub_1000343A8(v196, v197, &aBlock);

        *(v194 + 4) = v198;
        _os_log_impl(&_mh_execute_header, v192, v193, "Presenting viewController with style=%{public}s", v194, 0xCu);
        sub_100008D24(v195);
        v106 = v221;
      }

      v169 = v227;
      v170 = v190;
      v171 = v223;
      [v153 setModalPresentationStyle:v188];
      v172 = v224;
LABEL_84:
      if (v169)
      {
        *&v233 = v169;
        *(&v233 + 1) = v222;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v232 = sub_100012680;
        *(&v232 + 1) = &unk_1005E86D8;
        v199 = _Block_copy(&aBlock);
        v106 = v221;
      }

      else
      {
        v199 = 0;
      }

      v200 = v226;
      [v226 presentViewController:v153 animated:v229 & 1 completion:v199];

      _Block_release(v199);
      sub_10025942C(v172, v106, v171, v230, v219, v104);
      return;
    }

    if (qword_100633E08 != -1)
    {
      swift_once();
    }

    v78 = sub_1004D966C();
    sub_100035430(v78, qword_10063B820);
    v79 = a1;
    v80 = a2;
    v81 = sub_1004D964C();
    v82 = sub_1004DDF9C();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v218 = a3;
      v84 = v83;
      *&v238 = swift_slowAlloc();
      *v84 = 136446466;
      v85 = v79;
      v86 = [v85 description];
      v87 = sub_1004DD43C();
      v227 = a4;
      v88 = v87;
      v222 = a5;
      v90 = v89;

      v91 = sub_1000343A8(v88, v90, &v238);

      *(v84 + 4) = v91;
      *(v84 + 12) = 2082;
      v92 = v80;
      v93 = [v92 description];
      v94 = sub_1004DD43C();
      v96 = v95;

      v97 = v94;
      a4 = v227;
      v98 = sub_1000343A8(v97, v96, &v238);
      a5 = v222;

      *(v84 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v81, v82, "Attempted to present %{public}s, but need to dismiss %{public}s first", v84, 0x16u);
      swift_arrayDestroy();

      a3 = v218;
    }

    sub_1000699E8(v230, &v238);
    v99 = swift_allocObject();
    *(v99 + 16) = v80;
    *(v99 + 24) = v79;
    sub_10006A8BC(&v238, v99 + 32);
    *(v99 + 128) = v228 & 1;
    v100 = v229 & 1;
    *(v99 + 129) = v100;
    *(v99 + 136) = a4;
    *(v99 + 144) = a5;
    *&v233 = sub_1002593DC;
    *(&v233 + 1) = v99;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v232 = sub_100012680;
    *(&v232 + 1) = &unk_1005E86B0;
    v101 = _Block_copy(&aBlock);
    v102 = v79;
    sub_10000DE64(a4, a5);
    v103 = v80;

    [v103 dismissViewControllerAnimated:v100 completion:v101];
    _Block_release(v101);
  }

  else
  {
    if (qword_100633E08 != -1)
    {
      swift_once();
    }

    v43 = sub_1004D966C();
    sub_100035430(v43, qword_10063B820);
    v44 = a1;
    v45 = sub_1004D964C();
    v46 = sub_1004DDF9C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v238 = v48;
      *v47 = 136446210;
      v49 = v44;
      v50 = [v49 description];
      v51 = sub_1004DD43C();
      v52 = a4;
      v54 = v53;

      v55 = sub_1000343A8(v51, v54, &v238);
      a4 = v52;

      *(v47 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Attempted to present viewController=%{public}s but there is no viewController to present onto.", v47, 0xCu);
      sub_100008D24(v48);
    }

    if (a4)
    {
      a4();
    }
  }
}

void sub_100257E18()
{
  if (qword_100633E08 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();
  sub_100035430(v0, qword_10063B820);
  oslog = sub_1004D964C();
  v1 = sub_1004DDF8C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void sub_100257F00(void *a1, uint64_t a2, void *a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (qword_100633E08 != -1)
  {
    swift_once();
  }

  v13 = sub_1004D966C();
  sub_100035430(v13, qword_10063B820);
  v14 = sub_1004D964C();
  v15 = sub_1004DDF9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Presenting after deferral…", v16, 2u);
  }

  [a1 disarm];
  sub_1002562F8(a3, (a4 & 1), (a5 & 1), a6, a7);
}

void sub_100258038(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6, void (*a7)(void), uint64_t a8)
{
  if (qword_100633E08 != -1)
  {
    swift_once();
  }

  v12 = sub_1004D966C();
  sub_100035430(v12, qword_10063B820);
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = sub_1004D964C();
  v15 = sub_1004DDF9C();

  swift_unknownObjectRelease();
  v41 = v13;
  if (os_log_type_enabled(v14, v15))
  {
    v40 = a7;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    swift_unknownObjectRetain();
    sub_100004CB8(&qword_10063B8D8, &unk_100523590);
    v17 = sub_1004DD4DC();
    v19 = sub_1000343A8(v17, v18, aBlock);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = v13;
    v21 = [v20 description];
    v22 = a8;
    v23 = a4;
    v24 = sub_1004DD43C();
    v26 = v25;

    v27 = v24;
    a4 = v23;
    a8 = v22;
    v28 = sub_1000343A8(v27, v26, aBlock);

    *(v16 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "TransitionCoordinator %{public}s completed ongoing animations. Now attemptying to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a7 = v40;
  }

  v29 = *(a4 + 80);
  if (v29)
  {
    v30 = *(a4 + 88);

    v31 = sub_1004D964C();
    v32 = sub_1004DDF9C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Deferring presentation…", v33, 2u);
    }

    v34 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_100257E18;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100258DB8;
    aBlock[3] = &unk_1005E8750;
    v35 = _Block_copy(aBlock);
    v36 = [v34 initWithTimeout:v35 interruptionHandler:10.0];
    _Block_release(v35);

    sub_1000699E8(a4, aBlock);
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    sub_10006A8BC(aBlock, v37 + 24);
    *(v37 + 120) = v41;
    *(v37 + 128) = a5 & 1;
    *(v37 + 129) = a6 & 1;
    *(v37 + 136) = a7;
    *(v37 + 144) = a8;
    v38 = v41;
    v39 = v36;
    sub_10000DE64(a7, a8);
    v29(a4, v38, sub_10007DCE4, v37);
    sub_10000DE74(v29, v30);
  }

  else
  {
    sub_1002562F8(v41, (a5 & 1), (a6 & 1), a7, a8);
  }
}

void sub_100258464(void *a1, void *a2, uint64_t a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (qword_100633E08 != -1)
  {
    swift_once();
  }

  v11 = sub_1004D966C();
  sub_100035430(v11, qword_10063B820);
  v12 = a1;
  v13 = a2;
  v14 = sub_1004D964C();
  v15 = sub_1004DDF9C();

  if (os_log_type_enabled(v14, v15))
  {
    v42 = a6;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    v17 = v12;
    v18 = [v17 description];
    v41 = a3;
    v19 = sub_1004DD43C();
    v21 = v20;

    v22 = sub_1000343A8(v19, v21, aBlock);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v13;
    v24 = [v23 description];
    v25 = sub_1004DD43C();
    v27 = v26;

    v28 = v25;
    a3 = v41;
    v29 = sub_1000343A8(v28, v27, aBlock);

    *(v16 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "Dismissed %{public}s, now attempting to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a6 = v42;
  }

  v30 = *(a3 + 80);
  if (v30)
  {
    v31 = *(a3 + 88);

    v32 = sub_1004D964C();
    v33 = sub_1004DDF9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Deferring presentation…", v34, 2u);
    }

    v35 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_100257E18;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100258DB8;
    aBlock[3] = &unk_1005E87A0;
    v36 = _Block_copy(aBlock);
    v37 = [v35 initWithTimeout:v36 interruptionHandler:10.0];
    _Block_release(v36);

    sub_1000699E8(a3, aBlock);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    sub_10006A8BC(aBlock, v38 + 24);
    *(v38 + 120) = v13;
    *(v38 + 128) = a4 & 1;
    *(v38 + 129) = a5 & 1;
    *(v38 + 136) = a6;
    *(v38 + 144) = a7;
    v39 = v13;
    v40 = v37;
    sub_10000DE64(a6, a7);
    v30(a3, v39, sub_10007DCE4, v38);
    sub_10000DE74(v30, v31);
  }

  else
  {
    sub_1002562F8(v13, (a4 & 1), (a5 & 1), a6, a7);
  }
}

Swift::Bool __swiftcall PresentationSource.Position.canPresent(from:)(UIViewController from)
{
  if (!*(v1 + 40))
  {
    v6 = [*v1 window];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_15;
  }

  if (*(v1 + 40) != 1)
  {
    swift_unknownObjectRetain();
    v6 = [(objc_class *)from.super.super.isa view];
    if (v6)
    {
      v8 = v6;
      swift_getObjectType();
      sub_1004DE3AC();

      if ((v21 & 1) != 0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectEqualToRect(v20, v23)))
      {
        sub_100258E28(v1);
LABEL_14:
        LOBYTE(v6) = 0;
        return v6;
      }

      v6 = [(objc_class *)from.super.super.isa view];
      if (v6)
      {
        v10 = v6;
        [v6 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v22.origin.x = v12;
        v22.origin.y = v14;
        v22.size.width = v16;
        v22.size.height = v18;
        LOBYTE(v10) = CGRectIntersectsRect(v22, v20);
        sub_100258E28(v1);
        LOBYTE(v6) = v10;
        return v6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return v6;
  }

  v2 = *v1;
  v3 = [v2 customView];
  if (!v3 || (v4 = v3, v5 = [v3 window], v4, !v5))
  {
    v9 = [v2 customView];
    sub_100258E28(v1);
    if (v9)
    {

      goto LABEL_14;
    }

LABEL_15:
    LOBYTE(v6) = 1;
    return v6;
  }

  sub_100258E28(v1);
  LOBYTE(v6) = 1;
  return v6;
}

void *PresentationSource.Position.init(view:rect:permittedArrowDirections:)@<X0>(void *result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0uLL;
  if (result)
  {
    if (a2[2])
    {
      v5 = a4;

      v4 = 0uLL;
      a4 = v5;
      result = 0;
      a3 = 0;
      v6 = 255;
      v7 = 0uLL;
    }

    else
    {
      v6 = 0;
      v4 = *a2;
      v7 = a2[1];
    }
  }

  else
  {
    a3 = 0;
    v6 = 255;
    v7 = 0uLL;
  }

  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 24) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PresentationSource.Position.init(sourceItem:permittedArrowDirections:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 2;
  if (!result)
  {
    v3 = 255;
  }

  *a3 = result;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  if (result)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *(a3 + 40) = v3;
  *(a3 + 48) = v4;
  return result;
}

uint64_t sub_100258B84()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_10063B820);
  sub_100035430(v0, qword_10063B820);
  return sub_1004D965C();
}

void UIWindowScene.presentationSource.getter(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 255;
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 56) = 0;
}

uint64_t sub_100258C88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1004DDA4C();
  v2[4] = sub_1004DDA3C();
  v4 = sub_1004DD9BC();

  return _swift_task_switch(sub_100258D20, v4, v3);
}

uint64_t sub_100258D20()
{
  v1 = *(v0 + 16);

  v2 = sub_1000EA900(v1, 0, 1);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v1 + 32), 1, 0, 0);

  v3 = *(v0 + 8);

  return v3();
}

double sub_100258DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double sub_100258E0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100258E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063B840, &qword_100523120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100258EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063B840, &qword_100523120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100258FAC()
{
  result = qword_10063B848;
  if (!qword_10063B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B848);
  }

  return result;
}

unint64_t sub_100259004()
{
  result = qword_10063B850;
  if (!qword_10063B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B850);
  }

  return result;
}

unint64_t sub_10025905C()
{
  result = qword_10063B858;
  if (!qword_10063B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B858);
  }

  return result;
}

unint64_t sub_1002590B4()
{
  result = qword_10063B860;
  if (!qword_10063B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B860);
  }

  return result;
}

uint64_t sub_100259108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_100259164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_1002591E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100259228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100259288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002592D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100259348()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_10006A898(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

id sub_1002593F4(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_100259408(result, a2, a3, a4, a5, a6);
  }

  return result;
}

id sub_100259408(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    return swift_unknownObjectRetain();
  }

  if (a6 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_10025942C(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    sub_10006A898(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_100259440()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_10006A898(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t View.viewPresenting<A, B>(_:modifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v16[0] = a6;
  v16[1] = a7;
  v8 = *a1;
  v9 = sub_1004DA32C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v16 - v11;
  sub_1004DB6EC();
  type metadata accessor for PresentedViewState(0, *(v8 + 80), v13, v14);
  v16[2] = a5;
  v16[3] = v16[0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004DB54C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t PresentedViewState.isPresented.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

uint64_t PresentedViewState.isPresented.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t sub_1002597E8@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void (*PresentedViewState.isPresented.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin();
  v3[4] = swift_getKeyPath();
  __chkstk_darwin();
  v3[5] = swift_getKeyPath();
  v3[6] = sub_1004D9B5C();
  return sub_1001E0FE8;
}

uint64_t PresentedViewState.$isPresented.getter()
{
  swift_beginAccess();
  sub_100004CB8(&qword_100638EF8, &qword_100526600);
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t PresentedViewState.$isPresented.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100639A60, &qword_100523600);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_100638EF8, &qword_100526600);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PresentedViewState.$isPresented.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_100004CB8(&qword_100639A60, &qword_100523600);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  PresentedViewState.$isPresented.getter();
  return sub_100259C10;
}

void sub_100259C10(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PresentedViewState.$isPresented.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PresentedViewState.$isPresented.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PresentedViewState.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_1004DE7CC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PresentedViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  PresentedViewState.init()();
  return v0;
}

uint64_t *PresentedViewState.init()()
{
  v1 = *v0;
  v2 = sub_100004CB8(&qword_100638EF8, &qword_100526600);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9[-v4];
  v6 = qword_10063B8E0;
  v7 = *(v1 + 80);
  v9[15] = 0;
  sub_1004D9B2C();
  (*(v3 + 32))(v0 + v6, v5, v2);
  (*(*(v7 - 8) + 56))(v0 + *(*v0 + 96), 1, 1, v7);
  return v0;
}

void PresentedViewState.present(_:animated:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_1004DE7CC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  v11 = *(v5 - 8);
  (*(v11 + 16))(&v13 - v9, a1, v5, v8);
  (*(v11 + 56))(v10, 0, 1, v5);
  v12 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v12, v10, v6);
  swift_endAccess();
  if (a2)
  {
    sub_1004DBD7C();
    sub_1004DA0EC();
  }

  else
  {
    PresentedViewState.isPresented.setter(1);
  }
}

uint64_t *PresentedViewState.deinit()
{
  v1 = qword_10063B8E0;
  v2 = sub_100004CB8(&qword_100638EF8, &qword_100526600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = sub_1004DE7CC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PresentedViewState.__deallocating_deinit()
{
  PresentedViewState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10025A21C@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void sub_10025A2B8(uint64_t a1)
{
  sub_1001D7A48();
  if (v1 <= 0x3F)
  {
    sub_1004DE7CC();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_10025A388(void *a1)
{
  v1 = a1[1];
  sub_1004DA32C();
  type metadata accessor for PresentedViewState(255, v1, v2, v3);
  sub_1004DE7CC();
  sub_1004DAE2C();
  sub_1004DA32C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10025A468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v9);
  (*(a4 + 8))(v9, a2, a3, a4);
  return sub_10025AD60(v9);
}

void sub_10025A524(uint64_t a1@<X8>)
{
  if (![v1 isViewLoaded])
  {
    v7 = [v1 parentViewController];
    if (v7)
    {
      v8 = v7;
      sub_10025A524(a1);
      goto LABEL_8;
    }

LABEL_12:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v8 = v3;
  v4 = [v3 window];
  if (!v4 || (v5 = v4, v6 = [v4 windowScene], v5, !v6))
  {

    goto LABEL_12;
  }

  UIWindowScene.noticePresenting.getter(a1);

LABEL_8:
}

uint64_t PresentedViewState<A>.present(_:)(__int128 *a1)
{
  v3 = *a1;
  *(v2 + 104) = a1[1];
  v4 = a1[3];
  *(v2 + 120) = a1[2];
  *(v2 + 136) = v4;
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  *(v2 + 152) = *(a1 + 8);
  *(v2 + 88) = v3;
  sub_1004DDA4C();
  *(v2 + 272) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();

  return _swift_task_switch(sub_10025A6F8, v6, v5);
}

uint64_t sub_10025A6F8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  v3 = v1 + *(*v1 + 96);
  swift_beginAccess();
  *(v0 + 16) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(v0 + 80) = *(v3 + 64);
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  *(v0 + 32) = v4;
  sub_1000E9AD4(v2, v0 + 160);
  *v3 = *(v0 + 88);
  v7 = *(v0 + 120);
  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  *(v3 + 64) = *(v0 + 152);
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 16) = v9;
  sub_10001074C(v0 + 16, &qword_1006368B0, &qword_10051DC20);
  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *(v0 + 160) = 1;

  sub_1004D9B7C();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10025A8A4(__int128 *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035B28;

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t sub_10025A93C()
{
  result = swift_slowAlloc();
  qword_10063B968 = result;
  return result;
}

double UIWindowScene.noticePresenting.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_100633E10 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v1, qword_10063B968))
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_10001074C(v6, &qword_100638E60, &unk_10051A920);
    goto LABEL_10;
  }

  sub_100004CB8(&qword_10063B970, &unk_1005236E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t UIWindowScene.noticePresenting.setter(uint64_t a1)
{
  if (qword_100633E10 != -1)
  {
    swift_once();
  }

  v3 = qword_10063B968;
  sub_10025AC00(a1, v12);
  v4 = v13;
  if (v13)
  {
    sub_100008C70(v12, v13);
    v5 = *(v4 - 8);
    v6 = __chkstk_darwin();
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1004DF06C();
    (*(v5 + 8))(v8, v4);
    sub_100008D24(v12);
  }

  else
  {
    v9 = 0;
  }

  objc_setAssociatedObject(v1, v3, v9, 1);
  swift_unknownObjectRelease();
  return sub_10001074C(a1, &qword_100635A30, &qword_100517090);
}

uint64_t sub_10025AC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100635A30, &qword_100517090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UIWindowScene.noticePresenting.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UIWindowScene.noticePresenting.getter(v3);
  return sub_10025ACE8;
}

void sub_10025ACE8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10025AC00(*a1, v2 + 40);
    UIWindowScene.noticePresenting.setter(v2 + 40);
    sub_10001074C(v2, &qword_100635A30, &qword_100517090);
  }

  else
  {
    UIWindowScene.noticePresenting.setter(*a1);
  }

  free(v2);
}

uint64_t sub_10025AD60(uint64_t a1)
{
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10025ADBC(uint64_t a1)
{
  sub_1004D809C();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t PresentedViewState<A>.present(_:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1004D809C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_1004DDA4C();
  v2[12] = sub_1004DDA3C();
  v5 = sub_1004DD9BC();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_10025AF8C, v5, v4);
}

uint64_t sub_10025AF8C()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_100008C70(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_10025B0B8;
  v5 = v0[8];

  return v7(v5, v2, v3);
}

uint64_t sub_10025B0B8()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10025B1D8, v3, v2);
}

uint64_t sub_10025B1D8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100031B48(v0[8]);
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    (*(v5 + 32))(v4, v0[8], v6);
    (*(v5 + 16))(v8, v4, v6);
    (*(v5 + 56))(v8, 0, 1, v6);
    v9 = *(*v7 + 96);
    swift_beginAccess();
    sub_1000FF500(v8, v7 + v9);
    swift_endAccess();
    sub_1004DBD7C();
    sub_1004DA0EC();

    (*(v5 + 8))(v4, v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10025B3BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035B28;

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t sub_10025B454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v29 = a1;
  v30 = sub_100004CB8(&qword_10063B990, &qword_100523878);
  __chkstk_darwin();
  v28 = &v25 - v6;
  v7 = sub_100004CB8(&qword_10063B998, &qword_100523880);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = sub_1004D809C();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*a3 + 96);
  swift_beginAccess();
  sub_1000EAC4C(a3 + v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100031B48(v12);
    v18 = sub_100004CB8(&qword_10063B9A0, &qword_100523888);
    (*(*(v18 - 8) + 16))(v28, v29, v18);
    swift_storeEnumTagMultiPayload();
    v19 = sub_100042B08(&qword_10063B9A8, &qword_10063B9A0, &qword_100523888, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v31 = v18;
    v32 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_1004DAADC();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_100004CB8(&qword_10063B978, &qword_1005237B0);
    v26 = v7;
    sub_100042B08(&qword_10063B980, &qword_10063B978, &qword_1005237B0, &protocol conformance descriptor for PresentedViewState<A>);
    sub_1004DA14C();
    swift_getKeyPath();
    sub_1004DA15C();

    v25 = a4;
    v27 = v13;
    v23 = sub_100004CB8(&qword_10063B9A0, &qword_100523888);
    v24 = sub_100042B08(&qword_10063B9A8, &qword_10063B9A0, &qword_100523888, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v21 = v16;
    sub_1004DB45C();

    v22 = v26;
    (*(v8 + 16))(v28, v10, v26);
    swift_storeEnumTagMultiPayload();
    v31 = v23;
    v32 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1004DAADC();
    (*(v8 + 8))(v10, v22);
    return (*(v14 + 8))(v21, v27);
  }
}

void sub_10025B98C(_BYTE *a2@<X8>)
{
  sub_1004D809C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

uint64_t sub_10025BA28(char *a1, uint64_t *a2)
{
  sub_1004D809C();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

double View.shareSheetPresenting(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_100004CB8(&qword_10063B978, &qword_1005237B0);
  sub_100042B08(&qword_10063B980, &qword_10063B978, &qword_1005237B0, &protocol conformance descriptor for PresentedViewState<A>);
  sub_1004DA13C();
  sub_1004DB6EC();

  return result;
}

uint64_t sub_10025BB94(void *a1)
{
  sub_1004DA32C();
  sub_10025BBF8();
  return swift_getWitnessTable();
}

unint64_t sub_10025BBF8()
{
  result = qword_10063B988;
  if (!qword_10063B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B988);
  }

  return result;
}

unint64_t sub_10025BCA4()
{
  result = qword_10063B9B0;
  if (!qword_10063B9B0)
  {
    sub_100008DE4(&qword_10063B9B8, &unk_100523910);
    sub_100008DE4(&qword_10063B9A0, &qword_100523888);
    sub_100042B08(&qword_10063B9A8, &qword_10063B9A0, &qword_100523888, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B9B0);
  }

  return result;
}

unint64_t static LibraryModelRequest.label.getter(uint64_t a1, uint64_t a2)
{
  sub_1004DEAAC(27);

  swift_getMetatypeMetadata();
  v3._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  sub_1004DD5FC(v4);
  swift_getMetatypeMetadata();
  v5._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  sub_1004DD5FC(v6);
  return 0xD000000000000014;
}

void *LibraryModelRequest.section.getter()
{
  v1 = *(v0 + 8);
  sub_10025BEC4(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32));
  return v1;
}

double sub_10025BEC4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    v6 = a1;
    v7 = a2;
  }

  return result;
}

void LibraryModelRequest.section.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10025BF70(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
}

double sub_10025BF70(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void *LibraryModelRequest.item.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = v1;
  v4 = v2;

  return v1;
}

void LibraryModelRequest.item.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
}

uint64_t LibraryModelRequest.filter.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void LibraryModelRequest.filter.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 80) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
}

uint64_t LibraryModelRequest.itemRange.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 112) = result;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return result;
}

uint64_t LibraryModelRequest.label.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

void LibraryModelRequest.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

double LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, __int128 a13, __int128 a14, char a15, uint64_t a16, uint64_t a17)
{
  v25[160] = a12 & 1;
  v25[152] = a15 & 1;
  *&v26 = a1;
  *(&v26 + 1) = a2;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  *&v28 = a5;
  *(&v28 + 1) = a6;
  *&v29 = a7;
  *(&v29 + 1) = a8;
  v30 = a10;
  *&v31 = a11;
  BYTE8(v31) = a12 & 1;
  v32 = a13;
  v33 = a14;
  LOBYTE(v34) = a15 & 1;
  *(&v34 + 1) = 0;
  v35 = 0;
  v36[0] = a1;
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = a4;
  v36[4] = a5;
  v36[5] = a6;
  v36[6] = a7;
  v36[7] = a8;
  v37 = a10;
  v38 = a11;
  v39 = a12 & 1;
  v40 = a13;
  v41 = a14;
  v42 = a15 & 1;
  v43 = 0;
  v44 = 0;
  v18 = type metadata accessor for LibraryModelRequest(0, a16, a17, a4);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v25, &v26, v18);
  (*(v19 + 8))(v36, v18);
  v20 = v33;
  *(a9 + 96) = v32;
  *(a9 + 112) = v20;
  *(a9 + 128) = v34;
  *(a9 + 144) = v35;
  v21 = v29;
  *(a9 + 32) = v28;
  *(a9 + 48) = v21;
  v22 = v31;
  *(a9 + 64) = v30;
  *(a9 + 80) = v22;
  result = *&v26;
  v24 = v27;
  *a9 = v26;
  *(a9 + 16) = v24;
  return result;
}

void LibraryModelRequest.mediaPlayerRequest()(uint64_t a1)
{
  v2 = v1;
  sub_100004CB8(&qword_10063B9C0, &unk_100523920);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = v1[6];
  v21 = v1[7];
  v22 = v1[8];
  v23 = *(v1 + 18);
  v16 = v1[2];
  v17 = v1[3];
  v18 = v1[4];
  v19 = v1[5];
  v14 = *v1;
  v15 = v1[1];
  v5 = v4;
  WitnessTable = swift_getWitnessTable();
  sub_10025CFB0(v5, a1, WitnessTable);
  [v5 setMediaLibrary:{*v1, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  isa = 0;
  if (*(v2 + 2) && *(v2 + 4))
  {
    sub_100006F10(0, &unk_100637FD0, MPIdentifierSet_ptr);
    isa = sub_1004DD85C().super.isa;
  }

  [v5 setAllowedSectionIdentifiers:isa];

  v8 = *(v2 + 8);
  if (v8)
  {
    sub_100006F10(0, &unk_100637FD0, MPIdentifierSet_ptr);
    v8 = sub_1004DD85C().super.isa;
  }

  [v5 setAllowedItemIdentifiers:v8];

  v9 = *(v2 + 9);
  if (v9)
  {
    sub_100006F10(0, &qword_100637290, MPModelObject_ptr);
    v9 = sub_1004DD85C().super.isa;
  }

  [v5 setScopedContainers:v9];

  v10 = *(v2 + 13);
  if (*(v2 + 88))
  {
    v11 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  else
  {
    v11 = v2 + 5;
  }

  [v5 setFilteringOptions:*v11];
  if (v10)
  {
    v12 = sub_1004DD3FC();
  }

  else
  {
    v12 = 0;
  }

  [v5 setFilterText:v12];

  if ((v2[8] & 1) == 0)
  {
    if (__OFSUB__(*(v2 + 15), *(v2 + 14)))
    {
      __break(1u);
      return;
    }

    [v5 setContentRange:?];
  }

  if (*(v2 + 18))
  {
    v13 = sub_1004DD3FC();
  }

  else
  {
    v13 = 0;
  }

  [v5 setLabel:v13];
}

uint64_t UIView.Border.thickness.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if (a8)
      {
        if (a3 == a7 && a4 == a8)
        {
          return 1;
        }

        if (sub_1004DF08C())
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL static LibraryModelRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
  if ((sub_1004DE5FC() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_10025BEC4(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
    sub_10025BEC4(v4, v5, v6, v7);
    sub_10025BF70(v4, v5, v6, v7);
    sub_10025BF70(v8, v9, v11, v10);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  sub_10025BEC4(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_10025BEC4(v4, v5, v6, v7);
  v18 = static LibraryContentConfiguration.__derived_struct_equals(_:_:)(v4, v5, v6, v7, v8, v9, v11, v10);

  sub_10025BF70(v4, v5, v6, v7);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((static LibraryContentConfiguration.__derived_struct_equals(_:_:)(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = sub_10010B7FC(v12, v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if ((static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a2 + 80), *(a2 + 88), *(a2 + 96), *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 128))
  {
    if (!*(a2 + 128))
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if ((*(a2 + 128) & 1) == 0 && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
  {
LABEL_21:
    v16 = *(a1 + 144);
    v17 = *(a2 + 144);
    if (v16)
    {
      return v17 && (*(a1 + 136) == *(a2 + 136) && v16 == v17 || (sub_1004DF08C() & 1) != 0);
    }

    return !v17;
  }

  return result;
}

uint64_t static LibraryContentConfiguration.__derived_struct_equals(_:_:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_100006F10(0, &qword_10063B9C8, MPModelKind_ptr);
    v14 = a5;
    v15 = a1;
    v16 = sub_1004DE5FC();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
  if (sub_1004DE5FC())
  {
    if (a3)
    {
      if (!a7)
      {
        return 0;
      }

      v17 = sub_10010B56C(a3, a7);

      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else if (a7)
    {
      return 0;
    }

    if (a4)
    {
      if (a8)
      {

        v18 = sub_10010B580(a4, a8);

        if (v18)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

double sub_10025CAA8@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_10025BEC4(v2, v3, v4, v5);
}

double sub_10025CABC@<D0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;

  v6 = v2;
  v7 = v3;

  return result;
}

uint64_t LibraryContentConfiguration<>.init()()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100511DA0;
  *(v0 + 32) = sub_1004DD43C();
  *(v0 + 40) = v1;
  isa = sub_1004DD85C().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return 0;
}

uint64_t sub_10025CC6C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10025CCA8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10025CCE4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10025CD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10025CD5C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10025CD74(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10025CDA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_10025CDF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10025CE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10025CE90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10025CEEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10025CF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_10025CFB0(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v46 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1004DE7CC();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v46 - v12;
  v14 = __chkstk_darwin();
  v16 = &v46 - v15;
  v17 = *(a3 + 56);
  v55 = v3;
  v58 = a2;
  v48 = v17;
  (v17)(a2, a3, v14);
  v18 = *(v8 - 8);
  v57 = *(v18 + 48);
  v19 = v57(v16, 1, v8);
  v51 = v9;
  v49 = v10;
  if (v19 == 1)
  {
    (*(v10 + 8))(v16, v9);
    v20 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = (*(AssociatedConformanceWitness + 24))(v8, AssociatedConformanceWitness);
    (*(v18 + 8))(v16, v8);
  }

  [v59 setSectionKind:v20];

  v22 = v48;
  v48(v58, a3);
  v23 = v57(v13, 1, v8);
  v24 = v50;
  if (v23 == 1)
  {
    v25 = 0;
    v26 = v49;
    v27 = v51;
  }

  else
  {
    v28 = swift_getAssociatedConformanceWitness();
    v25 = (*(v28 + 32))(v8, v28);
    v26 = v18;
    v27 = v8;
  }

  (*(v26 + 8))(v13, v27);
  [v59 setSectionProperties:v25];

  v22(v58, a3);
  if (v57(v24, 1, v8) == 1)
  {
    (*(v49 + 8))(v24, v51);
  }

  else
  {
    v29 = swift_getAssociatedConformanceWitness();
    v30 = (*(v29 + 56))(v8, v29);
    (*(v18 + 8))(v24, v8);
    if (v30)
    {
      sub_100006F10(0, &qword_100637280, NSSortDescriptor_ptr);
      v31.super.isa = sub_1004DD85C().super.isa;

      goto LABEL_12;
    }
  }

  v31.super.isa = 0;
LABEL_12:
  [v59 setSectionSortDescriptors:v31.super.isa];

  v57 = *(a3 + 64);
  v32 = v52;
  v33 = v58;
  (v57)(v58, a3);
  v34 = AssociatedTypeWitness;
  v35 = swift_getAssociatedConformanceWitness();
  v36 = v35[3](v34, v35);
  v47 = a3;
  v54 = *(v54 + 8);
  (v54)(v32, v34);
  v37 = v59;
  [v59 setItemKind:v36];

  v38 = a3;
  v39 = v57;
  (v57)(v33, v38);
  v40 = v35[4](v34, v35);
  v41 = v32;
  v42 = v54;
  (v54)(v41, v34);
  [v37 setItemProperties:v40];

  v43 = v53;
  v39(v33, v47);
  v44 = v35[7](v34, v35);
  v42(v43, v34);
  if (v44)
  {
    sub_100006F10(0, &qword_100637280, NSSortDescriptor_ptr);
    v45.super.isa = sub_1004DD85C().super.isa;
  }

  else
  {
    v45.super.isa = 0;
  }

  [v59 setItemSortDescriptors:v45.super.isa];
}

double sub_10025D67C@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = *(a4 + 16);
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;

  WitnessTable = swift_getWitnessTable();
  ModelRequest.perform(_:_:)(sub_10025DD60, v9, a4, WitnessTable, x8_0);

  return result;
}

void ModelRequest.perform(_:_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v11 = *(a4 + 72);

  v12 = v11(a3, a4);
  v16[4] = sub_10025DD3C;
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100022450;
  v16[3] = &unk_1005E8AA0;
  v13 = _Block_copy(v16);
  v14 = v12;

  v15 = [v14 newOperationWithResponseHandler:v13];
  _Block_release(v13);

  if (qword_100633E18 != -1)
  {
    swift_once();
  }

  [(objc_class *)ModelRequestQueue.super.isa addOperation:v15];
  a5[3] = sub_100006F10(0, &qword_10063BC20, NSOperation_ptr);
  a5[4] = &protocol witness table for NSOperation;

  *a5 = v15;
}

id static MPPropertySet.sectionTitle.getter()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100511DA0;
  *(v0 + 32) = sub_1004DD43C();
  *(v0 + 40) = v1;
  isa = sub_1004DD85C().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return v3;
}

id sub_10025D9A0()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = sub_1004DD3FC();
  [v0 setName:v1];

  [v0 setMaxConcurrentOperationCount:4];
  result = [v0 setQualityOfService:33];
  ModelRequestQueue.super.isa = v0;
  return result;
}

NSOperationQueue *ModelRequestQueue.unsafeMutableAddressor()
{
  if (qword_100633E18 != -1)
  {
    swift_once();
  }

  return &ModelRequestQueue;
}

uint64_t sub_10025DA90(void *a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  if (!a1)
  {
    if (!a2)
    {
      sub_10025DDA8();
      v10 = swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 2;
      swift_errorRetain();
LABEL_8:
      v17 = 0;
      v18 = 1;
      goto LABEL_9;
    }

LABEL_7:
    sub_10025DDA8();
    v10 = swift_allocError();
    *v20 = v7;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    swift_errorRetain();
    swift_errorRetain();
    v7 = 0;
    goto LABEL_8;
  }

  swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCastUnknownClass();
  if (!v9)
  {
    if (!v7)
    {
      v28 = a1;
      v22 = sub_100004CB8(&qword_10063BC28, &unk_100523C60);
      WitnessTable = swift_getWitnessTable();
      v24 = sub_1001616C0(&v28, v22, WitnessTable);
      v26 = v25;
      sub_10025DDA8();
      v10 = swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      v18 = 1;
      *(v27 + 16) = 1;
      swift_errorRetain();
      v7 = 0;
      v17 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = v9;
  sub_100004CB8(&unk_1006372F0, &unk_10051B160);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100511DA0;
  v12 = MPModelResponseDidInvalidateNotification;
  v13.location = MPModelResponseDidInvalidateNotification;
  v13.length = v10;
  v14 = CFRange.init(_:)(v13);
  *(v11 + 56) = &type metadata for NotificationTrigger;
  *(v11 + 64) = &protocol witness table for NotificationTrigger;
  *(v11 + 32) = v14;
  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v15 = a1;
  v16 = v12;
  v7 = BindingRequestResponseInvalidation.init(triggers:)(v11);
  v17 = sub_10025DDFC();
  v18 = 0;
LABEL_9:
  a3(v10, v18, v7, v17);
  sub_10001066C(v10, v18);
  sub_10001066C(v10, v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_10025DD04()
{

  return swift_deallocObject();
}

double sub_10025DD48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10025DD60(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v7 = a1;
  v8 = a2 & 1;
  return v5(&v7, a3, a4);
}

unint64_t sub_10025DDA8()
{
  result = qword_10063BC30;
  if (!qword_10063BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063BC30);
  }

  return result;
}

unint64_t sub_10025DDFC()
{
  result = qword_100638E38;
  if (!qword_100638E38)
  {
    type metadata accessor for BindingRequestResponseInvalidation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638E38);
  }

  return result;
}

uint64_t sub_10025DE54(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t static Request.label.getter(uint64_t a1)
{
  swift_getMetatypeMetadata();

  return sub_1004DF34C();
}

double Request.performThenCompleteOnMain(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v11 = *(a5 + 32);

  v11(a1, sub_10025E388, v10, a4, a5);

  return result;
}

uint64_t sub_10025DF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v35 = a3;
  v36 = sub_1004DBEBC();
  v39 = *(v36 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004DBEFC();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin();
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a6;
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v16 = sub_1004DF2CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v30 - v19;
  sub_1000C10F4();
  v31 = sub_1004DE14C();
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v15;
  *(v22 + 3) = a7;
  v23 = v33;
  *(v22 + 4) = v32;
  *(v22 + 5) = v23;
  (*(v17 + 32))(&v22[v21], v20, v16);
  v24 = &v22[(v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  aBlock[4] = sub_10025F044;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005E8C38;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1004DBEDC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100116FD4();
  sub_100004CB8(&unk_100638950, &qword_10051B260);
  sub_1001080A0();
  v27 = v36;
  sub_1004DE92C();
  v28 = v31;
  sub_1004DE15C();
  _Block_release(v26);

  (*(v39 + 8))(v11, v27);
  return (*(v37 + 8))(v14, v38);
}

uint64_t sub_10025E350()
{

  return swift_deallocObject();
}

uint64_t Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v5[7] = sub_1004DF2CC();
  sub_100008DE4(&qword_10063BC38, &qword_100523D50);
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10025E4A8, 0, 0);
}

uint64_t sub_10025E4A8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_10025E5A4;
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x80000001004F24D0, sub_10025E984, v3, v6);
}

uint64_t sub_10025E5A4()
{

  return _swift_task_switch(sub_10025E6BC, 0, 0);
}

uint64_t sub_10025E6BC()
{
  v1 = (v0[9] + *(v0[8] + 48));
  v2 = *v1;
  v3 = v1[1];
  (*(*(v0[7] - 8) + 32))(v0[2], v0[9]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_10025E770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  sub_1004DF2CC();
  sub_100008DE4(&qword_10063BC38, &qword_100523D50);
  swift_getTupleTypeMetadata2();
  v9 = sub_1004DD9EC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v18[-1] - v12;
  (*(v10 + 16))(&v18[-1] - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a5 + 32))(v18, a3, sub_10025ED50, v15, a4, a5);

  return sub_10025EE88(v18);
}

uint64_t sub_10025E990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v9 = sub_1004DF2CC();
  sub_100008DE4(&qword_10063BC38, &qword_100523D50);
  swift_getTupleTypeMetadata2();
  v10 = __chkstk_darwin();
  v13 = (&v15 + *(v12 + 48) - v11);
  (*(*(v9 - 8) + 16))(&v15 - v11, a1, v9, v10);
  *v13 = a2;
  v13[1] = a3;
  sub_1004DD9EC();
  swift_unknownObjectRetain();
  return sub_1004DD9DC();
}

uint64_t Array<A>.cancel()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004DD98C();
  swift_getWitnessTable();
  return sub_1004DD7DC();
}

uint64_t sub_10025EC38()
{
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  sub_1004DF2CC();
  sub_100008DE4(&qword_10063BC38, &qword_100523D50);
  swift_getTupleTypeMetadata2();
  v1 = sub_1004DD9EC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10025ED50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  sub_1004DF2CC();
  sub_100008DE4(&qword_10063BC38, &qword_100523D50);
  swift_getTupleTypeMetadata2();
  v9 = *(sub_1004DD9EC() - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_10025E990(a1, a2, a3, v10, v7, v8);
}

uint64_t sub_10025EE88(uint64_t a1)
{
  v2 = sub_100004CB8(qword_10063BC40, &unk_100523E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10025EEF0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v2 = *(sub_1004DF2CC() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10025F044()
{
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v1 = *(sub_1004DF2CC() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(v0 + 32))(v0 + v2, *v3, v3[1]);
}

double sub_10025F120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10025F138@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t *RequestResponse.Controller.__allocating_init(request:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v7 = sub_100264020(a1, v4, v5, v6);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t *RequestResponse.Controller.init(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_100264020(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t sub_10025F300()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  RequestResponseInvalidatable.invalidate()();

  return swift_unknownObjectRelease();
}

uint64_t property wrapper backing initializer of RequestResponse.Controller.revision(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  return sub_1001E0B74(&v3, v1);
}

double sub_10025F3C4(uint64_t a1)
{
  sub_100264400(a1);

  return result;
}

void sub_10025F3FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v20 - v9;
  v11 = *(v4 + 96);
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v10, v2 + v11, v5);
  v20[1] = *(*(v4 + 88) + 8);
  v13 = sub_1004DD35C();
  v14 = *(v6 + 8);
  v14(v10, v5);
  if ((v13 & 1) == 0)
  {
    v20[0] = v8;
    RequestResponse.Controller.revision.getter();
    sub_10025F300();

    v15 = *(*v3 + 176);
    swift_beginAccess();
    v16 = *(v3 + v15);
    if (v16)
    {
      v12(v10, (v16 + *(*v16 + 96)), v5);
      v17 = v3 + v11;
      v18 = v20[0];
      v12(v20[0], v17, v5);

      v19 = sub_1004DD35C();
      v14(v18, v5);
      v14(v10, v5);
      if ((v19 & 1) == 0)
      {
        sub_10025F300();
      }
    }

    sub_10025F734();
  }
}

uint64_t RequestResponse.Controller.revision.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_10025F734()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }
}

uint64_t RequestResponse.Controller.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t RequestResponse.Controller.request.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_100264530(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void (*RequestResponse.Controller.request.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 96);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_10025FA20;
}

void sub_10025FA20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_100264530(v4, v7);
    v8 = *(v6 + 8);
    v8(v4, v5);
    v8(v3, v5);
  }

  else
  {
    sub_100264530(*(v2 + 56), a2);
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_10025FAFC@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

double sub_10025FB28(void *a1)
{

  sub_100264400(v1);

  return result;
}

double sub_10025FB6C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = RequestResponse.Controller.revision.getter();
  v6 = *(v5 + *(*v5 + 112));

  v8 = *(a1 + *(*a1 + 112));
  if (v6 != v8)
  {
    v9 = RequestResponse.Controller.revision.getter();
    v10 = *(v9 + *(*v9 + 112));

    if (v8 >= v10)
    {
      if (qword_100633E20 != -1)
      {
        swift_once();
      }

      v26 = sub_1004D966C();
      sub_100035430(v26, qword_100671F20);
      swift_retain_n();

      v27 = sub_1004D964C();
      v28 = sub_1004DDF7C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134349312;
        v30 = RequestResponse.Controller.revision.getter();
        v31 = *(v30 + *(*v30 + 112));

        *(v29 + 4) = v31;

        *(v29 + 12) = 2050;
        *(v29 + 14) = v8;

        _os_log_impl(&_mh_execute_header, v27, v28, "Attempted to apply a revision which ID (%{public}ld) is older than the previous revision's (%{public}ld).", v29, 0x16u);
      }

      else
      {
      }

      sub_100264400(v32);
    }

    else
    {
      v11 = *(*v2 + 184);
      v12 = *(v2 + v11);
      if (v12)
      {
        v13 = *(v12 + *(*v12 + 112));

        v14 = RequestResponse.Controller.revision.getter();

        v15 = *(v14 + *(*v14 + 112));

        if (v15 >= v13)
        {
          *(v2 + v11) = 0;
        }
      }

      v16 = *(*v2 + 176);
      swift_beginAccess();
      v17 = *(v2 + v16);
      if (v17)
      {
        v18 = *(v17 + *(*v17 + 112));

        v19 = RequestResponse.Controller.revision.getter();

        v20 = *(v19 + *(*v19 + 112));

        if (v20 >= v18)
        {
          *(v2 + v16) = 0;
        }
      }

      v21 = RequestResponse.Controller.revision.getter();
      sub_100260468(v21);
      v22 = *(*v21 + 112);
      swift_beginAccess();
      v24 = *(v4 + 80);
      v23 = *(v4 + 88);
      type metadata accessor for RequestResponse.Revision(255, v24, v23, v25);
      swift_getFunctionTypeMetadata2();
      sub_1004DD98C();
      sub_1004DD27C();
      swift_endAccess();
      if (v60)
      {
        v61[0] = v60;
        __chkstk_darwin();
        swift_getWitnessTable();
        sub_1004DD7DC();
      }

      swift_beginAccess();
      sub_1004DD25C();
      sub_1004DD28C();
      swift_endAccess();
      v33 = RequestResponse.Controller.revision.getter();
      v34 = *(v33 + *(*v33 + 120) + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 40))(ObjectType, v34);
      swift_unknownObjectRelease();
      if (v36)
      {
        if (qword_100633E20 != -1)
        {
          swift_once();
        }

        v37 = sub_1004D966C();
        sub_100035430(v37, qword_100671F20);
        v38 = sub_1004D964C();
        v39 = sub_1004DDF9C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v59 = v22;
          v41 = swift_slowAlloc();
          v61[0] = v41;
          *v40 = 136446210;
          v42 = (*(v23 + 24))(v24, v23);
          v44 = sub_1000343A8(v42, v43, v61);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "╭ %{public}s", v40, 0xCu);
          sub_100008D24(v41);
          v22 = v59;
        }

        v45 = sub_1004D964C();
        v46 = sub_1004DDF9C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "╞ 🔄 Invalid", v47, 2u);
        }

        v48 = sub_1004D964C();
        v49 = sub_1004DDF9C();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134349056;
          *(v50 + 4) = *(v21 + v22);

          _os_log_impl(&_mh_execute_header, v48, v49, "╰ RevisionID=%{public}ld", v50, 0xCu);
        }

        else
        {
        }

        sub_10025F734();
      }

      else
      {
        v51 = RequestResponse.Controller.revision.getter();
        v52 = *(v51 + *(*v51 + 112));

        v53 = RequestResponse.Controller.revision.getter();
        v54 = *(v53 + *(*v53 + 120) + 8);
        swift_unknownObjectRetain();

        v55 = swift_getObjectType();
        v56 = swift_allocObject();
        swift_weakInit();
        v57 = swift_allocObject();
        v57[2] = v24;
        v57[3] = v23;
        v57[4] = v56;
        v57[5] = v52;
        v58 = *(v54 + 24);

        v58(sub_100264F30, v57, v55, v54);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100260468(uint64_t a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(v1, a1);
    return sub_10000DE74(v5, v6);
  }

  return result;
}

double sub_1002604F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = RequestResponse.Controller.revision.getter();
    v13 = *(v12 + *(*v12 + 112));

    if (v13 == a4)
    {
      if (qword_100633E20 != -1)
      {
        swift_once();
      }

      v14 = sub_1004D966C();
      sub_100035430(v14, qword_100671F20);
      v15 = sub_1004D964C();
      v16 = sub_1004DDF9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v39[0] = v18;
        *v17 = 136446210;
        v19 = (*(a6 + 24))(a5, a6);
        v21 = sub_1000343A8(v19, v20, v39);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "╭ %{public}s", v17, 0xCu);
        sub_100008D24(v18);
      }

      v22 = sub_1004D964C();
      v23 = sub_1004DDF9C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "╞ 🔄 Invalidated", v24, 2u);
      }

      v25 = sub_1004D964C();
      v26 = sub_1004DDF9C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134349056;
        *(v27 + 4) = a4;
        _os_log_impl(&_mh_execute_header, v25, v26, "╞ RevisionID=%{public}ld", v27, 0xCu);
      }

      swift_unknownObjectRetain();
      v28 = sub_1004D964C();
      v29 = sub_1004DDF9C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39[0] = v31;
        *v30 = 136446210;
        swift_getObjectType();
        v32 = sub_1004DF09C();
        v34 = sub_1000343A8(v32, v33, v39);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "╰ Invalidator=%{public}s", v30, 0xCu);
        sub_100008D24(v31);
      }

      v35 = v11 + *(*v11 + 136);
      swift_beginAccess();
      v36 = *v35;
      if (*v35)
      {
        v37 = *(v35 + 8);

        v38 = RequestResponse.Controller.revision.getter();
        v36(v11, v38);
        sub_10000DE74(v36, v37);
      }

      sub_10025F734();
    }
  }

  return result;
}

uint64_t RequestResponse.Controller.$revision.getter()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for RequestResponse.Revision(255, *(v1 + 80), *(v1 + 88), v2);
  sub_1004D9B9C();
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t RequestResponse.Controller.willReloadRequest.getter()
{
  v1 = (v0 + *(*v0 + 112));
  swift_beginAccess();
  v2 = *v1;
  sub_10000DE64(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.willReloadRequest.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 112));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10000DE74(v6, v7);
}

uint64_t RequestResponse.Controller.willApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  v2 = *v1;
  sub_10000DE64(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.willApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10000DE74(v6, v7);
}

uint64_t RequestResponse.Controller.didApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v2 = *v1;
  sub_10000DE64(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.didApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10000DE74(v6, v7);
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.getter()
{
  v1 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  v2 = *v1;
  sub_10000DE64(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10000DE74(v6, v7);
}

void sub_100260EE0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *(*v2 + 144);
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    v5 = RequestResponse.Controller.revision.getter();
    v6 = *(v5 + *(*v5 + 120) + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 40))(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(*v2 + 176);
      swift_beginAccess();
      if (!*(v2 + v9) || (, v10 = RequestResponse.Revision.isValid.getter(), , !v10))
      {
        sub_10025F734();
      }
    }
  }
}

BOOL RequestResponse.Revision.isValid.getter()
{
  v1 = *(v0 + *(*v0 + 120) + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v1) = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return (v1 & 1) == 0;
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.getter()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

void RequestResponse.Controller.isAutomaticReloadingEnabled.setter(char a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_100260EE0(v4);
}

void (*RequestResponse.Controller.isAutomaticReloadingEnabled.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 144);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1002611E8;
}

double sub_100261200(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  if (*(v1 + v3) & 1) == 0 && (a1)
  {
    v5 = *(v1 + *(*v1 + 184));
    if (v5)
    {
      v6 = *(*v5 + 112);
      v7 = *(v5 + v6);

      v8 = RequestResponse.Controller.revision.getter();
      v9 = *(v8 + *(*v8 + 112));

      if (v9 < v7)
      {
        if (qword_100633E20 != -1)
        {
          swift_once();
        }

        v10 = sub_1004D966C();
        sub_100035430(v10, qword_100671F20);
        v11 = sub_1004D964C();
        v12 = sub_1004DDF9C();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "╭ ⏰ RRC resumed, applying pending revision", v13, 2u);
        }

        v14 = sub_1004D964C();
        v15 = sub_1004DDF9C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134349056;
          *(v16 + 4) = *(v5 + v6);

          _os_log_impl(&_mh_execute_header, v14, v15, "╞ RevisionID=%{public}ld", v16, 0xCu);
        }

        else
        {
        }

        sub_100261440(v5);
      }
    }
  }

  return result;
}

void sub_100261440(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MSVBlockGuard);
  v17[4] = sub_1002632F8;
  v17[5] = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100258DB8;
  v17[3] = &unk_1005E9038;
  v5 = _Block_copy(v17);
  v6 = [v4 initWithTimeout:v5 interruptionHandler:10.0];
  _Block_release(v5);

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = a1;
  v8 = v2 + *(*v2 + 120);
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v11 = v6;
    sub_10000DE64(v9, v10);
    if (qword_100633E20 != -1)
    {
      swift_once();
    }

    v12 = sub_1004D966C();
    sub_100035430(v12, qword_100671F20);
    v13 = sub_1004D964C();
    v14 = sub_1004DDF9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "╞ 🫸 calling willApplyRevision; Waiting for client to accept it.", v15, 2u);
    }

    v9(v2, a1, sub_100264EA4, v7);

    sub_10000DE74(v9, v10);
  }

  else
  {

    v16 = v6;
    sub_1002633E0(v16, v2, a1);
  }
}

uint64_t RequestResponse.Controller.isPaused.getter()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v1);
}

double RequestResponse.Controller.isPaused.setter(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_100261200(v4);
}

void (*RequestResponse.Controller.isPaused.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 152);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_100261828;
}

void sub_100261840(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

void RequestResponse.Controller.setNeedsReload(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *v3;
  v8 = sub_1004DBEBC();
  v48 = *(v8 - 8);
  __chkstk_darwin();
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1004DBEFC();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v43 - v14;
  if (a1)
  {
    v16 = swift_allocObject();
    v16[2] = v12;
    v17 = *(v7 + 88);
    v16[3] = v17;
    v16[4] = a1;
    v16[5] = a2;
    aBlock[6] = sub_1002646F8;
    aBlock[7] = v16;
    swift_beginAccess();
    type metadata accessor for RequestResponse.Revision(255, v12, v17, v18);
    swift_getFunctionTypeMetadata2();
    sub_1004DD98C();

    sub_1004DD93C();
    swift_endAccess();
    v6 = *v3;
  }

  v19 = *(v6 + 192);
  if ((*(v3 + v19) & 1) == 0)
  {
    *(v3 + v19) = 1;
    v20 = *(*v3 + 176);
    swift_beginAccess();
    v21 = *(v3 + v20);
    if (v21)
    {
      v44 = v8;
      v22 = *(*v3 + 96);
      swift_beginAccess();
      (*(v13 + 16))(v15, v3 + v22, v12);
      v23 = *(*v21 + 96);
      v24 = *(v7 + 88);
      v25 = *(v24 + 40);

      LOBYTE(v23) = v25(v21 + v23, v12, v24);
      (*(v13 + 8))(v15, v12);
      if (v23)
      {
        if (qword_100633E20 != -1)
        {
          swift_once();
        }

        v26 = sub_1004D966C();
        sub_100035430(v26, qword_100671F20);
        v27 = sub_1004D964C();
        v28 = sub_1004DDF9C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock[0] = v43;
          *v29 = 136446210;
          v30 = (*(v24 + 24))(v12, v24);
          v32 = sub_1000343A8(v30, v31, aBlock);

          *(v29 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "╭ %{public}s", v29, 0xCu);
          sub_100008D24(v43);
        }

        v33 = sub_1004D964C();
        v34 = sub_1004DDF9C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "╞ 🛑 Cancelled", v35, 2u);
        }

        v36 = sub_1004D964C();
        v37 = sub_1004DDF9C();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134349056;
          *(v38 + 4) = *(v21 + *(*v21 + 112));

          _os_log_impl(&_mh_execute_header, v36, v37, "╰ RevisionID=%{public}ld", v38, 0xCu);
        }

        else
        {
        }

        v39 = *(v21 + *(*v21 + 112));
        swift_beginAccess();
        sub_1001BC4B4(&v49, v39);
        swift_endAccess();
        sub_10025F300();
      }

      v8 = v44;
    }

    sub_1000C10F4();
    v40 = sub_1004DE14C();
    aBlock[4] = sub_1002646A4;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005E8C60;
    v41 = _Block_copy(aBlock);

    sub_1004DBEDC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100264DC8(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_100638950, &qword_10051B260);
    sub_1001080A0();
    v42 = v46;
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v41);

    (*(v48 + 8))(v42, v8);
    (*(v45 + 8))(v11, v47);
  }
}

void sub_10026205C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v62 - v9;
  v12 = *(v11 + 192);
  if (*(v2 + v12) != 1)
  {
    return;
  }

  *(v2 + v12) = 0;
  v13 = *(*v2 + 176);
  swift_beginAccess();
  v65 = v13;
  v14 = *(v3 + v13);
  if (v14 || (v14 = *(v3 + *(*v3 + 184))) != 0)
  {
    v15 = *(v14 + *(*v14 + 112));
    v16 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v60 = RequestResponse.Controller.revision.getter();
    v61 = *(v60 + *(*v60 + 112));

    v16 = v61 + 1;
    if (!__OFADD__(v61, 1))
    {
LABEL_5:
      v63 = v8;
      v17 = *(*v3 + 96);
      swift_beginAccess();
      v64 = v6;
      v62[0] = v6[2];
      v62[1] = v6 + 2;
      (v62[0])(v10, v3 + v17, v5);
      v18 = *(*v3 + 160);
      swift_beginAccess();
      v73[0] = *(v3 + v18);
      v69 = v10;
      v70 = v16;
      *&v71 = v16;
      swift_beginAccess();
      v66 = *(v4 + 88);
      v67 = v5;
      type metadata accessor for RequestResponse.Revision(255, v5, v66, v19);
      swift_getFunctionTypeMetadata2();
      sub_1004DD98C();
      sub_1004DD25C();

      v8 = v69;
      sub_1004DD28C();
      swift_endAccess();
      *(v3 + v18) = sub_1004DD8DC();

      v20 = v3 + *(*v3 + 112);
      swift_beginAccess();
      v21 = *v20;
      if (*v20)
      {
        v22 = *(v20 + 8);

        v21(v3, v8);
        sub_10000DE74(v21, v22);
      }

      swift_checkMetadataState();
      swift_allocObject();
      v6 = sub_100263D7C(v70, v8);
      *(v3 + v65) = v6;

      if (qword_100633E20 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_8:
  v23 = sub_1004D966C();
  sub_100035430(v23, qword_100671F20);
  v24 = sub_1004D964C();
  v25 = sub_1004DDF9C();
  v26 = os_log_type_enabled(v24, v25);
  v68 = v6;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v74[0] = v28;
    *v27 = 136446210;
    v29 = (*(v66 + 24))();
    v31 = sub_1000343A8(v29, v30, v74);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "╭ %{public}s", v27, 0xCu);
    sub_100008D24(v28);

    v8 = v69;
  }

  v32 = sub_1004D964C();
  v33 = sub_1004DDF9C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "╞ 🕺Performing", v34, 2u);
  }

  v35 = sub_1004D964C();
  v36 = sub_1004DDF9C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134349056;
    *(v37 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v35, v36, "╞ RevisionID=%{public}ld", v37, 0xCu);
  }

  v38 = sub_1004D964C();
  v39 = sub_1004DDF9C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v74[0] = v41;
    *v40 = 136446210;
    swift_beginAccess();
    (v62[0])(v63, v8, v67);
    v42 = sub_1004DD4DC();
    v44 = sub_1000343A8(v42, v43, v74);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v38, v39, "╰ Request=%{public}s", v40, 0xCu);
    sub_100008D24(v41);
  }

  v45 = v70;
  swift_beginAccess();
  v46 = RequestResponse.Controller.revision.getter();
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v68;
  v48[3] = v47;
  v48[4] = v45;
  v49 = v66;
  v50 = v8;
  v51 = *(v66 + 32);

  v52 = v67;
  v51(v74, v46, sub_100264CE4, v48, v67, v49);

  sub_100264CF0(v74, &v71);
  if (v72)
  {
    sub_100035850(&v71, v73);
    v53 = v65;
    swift_beginAccess();
    v54 = *(v3 + v53);
    v55 = v64;
    if (v54)
    {
      swift_endAccess();
      v57 = v69;
      if (*(v54 + *(*v54 + 112)) == v70)
      {
        type metadata accessor for RequestResponse.Controller.TaskInvalidator(0, v52, v66, v56);
        sub_100035868(v73, &v71);
        v58 = swift_allocObject();
        *(v58 + 56) = 0;
        *(v58 + 64) = 0;
        *(v58 + 72) = 0;
        sub_100035850(&v71, v58 + 16);
        WitnessTable = swift_getWitnessTable();

        sub_100264D60(v58, WitnessTable);
      }

      sub_100008D24(v73);
      sub_10025EE88(v74);
      (v55[1])(v57, v52);
    }

    else
    {
      sub_100008D24(v73);
      sub_10025EE88(v74);
      swift_endAccess();

      (v55[1])(v69, v52);
    }
  }

  else
  {
    sub_10025EE88(v74);

    sub_10025EE88(&v71);
    (v64[1])(v50, v52);
  }
}

uint64_t sub_1002629CC(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  sub_100035850(a1, v2 + 16);
  return v2;
}

uint64_t sub_100262A18(uint64_t result)
{
  if (*(v1 + 56) == 1 && (result & 1) == 0)
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 48);
    sub_100008C70((v1 + 16), v2);
    return (*(v3 + 8))(v2, v3);
  }

  return result;
}

uint64_t sub_100262A7C(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return sub_100262A18(v2);
}

uint64_t sub_100262A8C()
{
  sub_100008D24(v0 + 2);
  sub_10000DE74(v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t sub_100262ACC()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_10000DE64(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_100262B1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_10000DE74(v5, v6);
}

uint64_t (*sub_100262BCC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_100262BF8;
}

double sub_100262C2C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*a4 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v13 = sub_1004DF2CC();
  (*(*(v13 - 8) + 24))(&a4[v12], a1, v13);
  swift_endAccess();
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    type metadata accessor for GenericRequestResponseInvalidation();
    v14 = swift_allocObject();
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 16) = 0x636972656E6547;
    *(v14 + 24) = 0xE700000000000000;
    a3 = sub_100264DC8(qword_10063BDC8, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  }

  swift_unknownObjectRetain();
  sub_100264D60(v14, a3);
  swift_unknownObjectRelease();
  sub_1000C10F4();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a4;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100264E50, v15);

  return result;
}

double sub_100262E54(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_100633E20 != -1)
    {
      swift_once();
    }

    v9 = sub_1004D966C();
    sub_100035430(v9, qword_100671F20);
    v10 = sub_1004D964C();
    v11 = sub_1004DDF9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35[0] = v13;
      *v12 = 136446210;
      v14 = (*(*(v5 + 88) + 24))(*(v5 + 80));
      v16 = sub_1000343A8(v14, v15, v35);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "╭ %{public}s", v12, 0xCu);
      sub_100008D24(v13);
    }

    v17 = sub_1004D964C();
    v18 = sub_1004DDF9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "╞ ✅ Finished Loading", v19, 2u);
    }

    v20 = sub_1004D964C();
    v21 = sub_1004DDF9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v20, v21, "╞ RevisionID=%{public}ld", v22, 0xCu);
    }

    v23 = *(a3 + *(*a3 + 112));
    swift_beginAccess();
    sub_10014B9D0(v23);
    v25 = v24;
    swift_endAccess();
    if (v25)
    {
      v26 = *(*v8 + 152);
      swift_beginAccess();
      if (*(v8 + v26) != 1)
      {
        v33 = RequestResponse.Controller.revision.getter();
        v34 = *(v33 + *(*v33 + 112));

        if (v34 < v23)
        {
          sub_100261440(a3);
        }

        goto LABEL_24;
      }

      v27 = *(*v8 + 184);
      v28 = *(v8 + v27);
      if (v28)
      {
        if (*(v28 + *(*v28 + 112)) >= a2)
        {
          goto LABEL_24;
        }
      }

      else if (a2 <= 0)
      {
LABEL_24:

        return result;
      }

      *(v8 + v27) = a3;

      v29 = sub_1004D964C();
      v30 = sub_1004DDF9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "╰ 💤 Set as Pending; RRC is Paused";
        goto LABEL_22;
      }
    }

    else
    {
      v29 = sub_1004D964C();
      v30 = sub_1004DDF9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "╰ ⏭ Skipping revision; Cancelled";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);
      }
    }
  }

  return result;
}

void sub_1002632F8()
{
  if (qword_100633E20 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();
  sub_100035430(v0, qword_100671F20);
  oslog = sub_1004D964C();
  v1 = sub_1004DDF8C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void sub_1002633E0(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 disarm];

  sub_100264400(v3);

  if (qword_100633E20 != -1)
  {
    swift_once();
  }

  v4 = sub_1004D966C();
  sub_100035430(v4, qword_100671F20);
  oslog = sub_1004D964C();
  v5 = sub_1004DDF9C();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "╰ 👌 Applied", v6, 2u);
  }
}

uint64_t *RequestResponse.Controller.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  v3 = *(*v0 + 104);
  type metadata accessor for RequestResponse.Revision(255, v2, *(v1 + 88), v4);
  v5 = sub_1004D9B9C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_10000DE74(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  sub_10000DE74(*(v0 + *(*v0 + 120)), *(v0 + *(*v0 + 120) + 8));
  sub_10000DE74(*(v0 + *(*v0 + 128)), *(v0 + *(*v0 + 128) + 8));
  sub_10000DE74(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8));

  return v0;
}

uint64_t RequestResponse.Revision.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v4 = sub_1004DF2CC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t RequestResponse.Revision.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v5 = sub_1004DF2CC();
  v6 = *(v5 - 1);
  __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  sub_10025F138(v5, &v12, a1);
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_100263A6C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 40))(ObjectType, a2);
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    RequestResponseInvalidatable.invalidate()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *RequestResponse.Revision.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v2 = sub_1004DF2CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100263C78(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_100263CF8()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100671F20);
  sub_100035430(v0, qword_100671F20);
  return sub_1004D965C();
}

uint64_t *sub_100263D7C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v8 = sub_1004DF2CC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = (&v18 - v11);
  *(v2 + *(v5 + 112)) = a1;
  (*(*(v7 - 8) + 16))(v2 + *(*v2 + 96), a2, v7, v10);
  type metadata accessor for RequestResponse.Revision.InitialResponseLoadingError(0, v7, v6, v13);
  swift_getWitnessTable();
  *v12 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (*(v9 + 32))(v2 + *(*v2 + 104), v12, v8);
  type metadata accessor for GenericRequestResponseInvalidation();
  v14 = swift_allocObject();
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 16) = 0x636972656E6547;
  *(v14 + 24) = 0xE700000000000000;
  v15 = sub_100264DC8(qword_10063BDC8, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  v16 = (v2 + *(*v2 + 120));
  *v16 = v14;
  v16[1] = v15;
  return v2;
}

uint64_t *sub_100264020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  v8 = (v5 + *(*v5 + 112));
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + *(*v5 + 120));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + *(*v5 + 128));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v5 + *(*v5 + 136));
  *v11 = 0;
  v11[1] = 0;
  *(v5 + *(*v5 + 144)) = 0;
  *(v5 + *(*v5 + 152)) = 0;
  v12 = *(*v5 + 160);
  v13 = *(v7 + 80);
  type metadata accessor for RequestResponse.Revision(255, v13, *(v7 + 88), a4);
  swift_getFunctionTypeMetadata2();
  *(v5 + v12) = sub_1004DD8DC();
  v14 = *(*v5 + 168);
  v15 = sub_1004DD98C();
  swift_getTupleTypeMetadata2();
  v16 = sub_1004DD8DC();
  v17 = sub_1000EE74C(v16, &type metadata for Int, v15, &protocol witness table for Int);

  *(v5 + v14) = v17;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + *(*v5 + 192)) = 0;
  *(v5 + *(*v5 + 200)) = &_swiftEmptySetSingleton;
  (*(*(v13 - 8) + 16))(v5 + *(*v5 + 96), a1, v13);
  swift_checkMetadataState();
  swift_allocObject();
  v18 = sub_100263D7C(0, a1);
  sub_10025F300();
  swift_beginAccess();
  v19 = *v18;
  v21 = v18;
  sub_1001E0B74(&v21, v19);
  swift_endAccess();
  return v5;
}

uint64_t sub_100264378@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

double sub_1002643A4(void *a1)
{

  sub_100264400(v1);

  return result;
}

__n128 sub_1002643F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_100264400(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B7C();
  sub_10025FB6C(v2);

  return result;
}

uint64_t sub_100264530(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v9 = *(v8 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v9, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, a1, v4);
  swift_endAccess();
  sub_10025F3FC(v7, v10);
  return (*(v5 + 8))(v7, v4);
}

double sub_1002646A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002646C0()
{

  return swift_deallocObject();
}

uint64_t sub_1002647A4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for RequestResponse.Revision(255, result, *(a1 + 88), v3);
    result = sub_1004D9B9C();
    if (v5 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100264948(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_100008DE4(&qword_100638980, &qword_100515B30);
    v1 = sub_1004DF2CC();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

uint64_t sub_100264A80(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100264ABC(uint64_t a1, uint64_t a2)
{
  v3._countAndFlagsBits = (*(a2 + 24))();
  sub_1004DD5FC(v3);

  return 0x3A664F6B736154;
}

uint64_t sub_100264B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Revision(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1004D9B8C();
  v6 = __chkstk_darwin();
  (*(v8 + 16))(&v10 - v7, a1, v6);
  swift_beginAccess();
  sub_1004D9B9C();
  sub_1004D9B4C();
  return swift_endAccess();
}

uint64_t sub_100264C6C(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100264CA4()
{

  return swift_deallocObject();
}

uint64_t sub_100264CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(qword_10063BC40, &unk_100523E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100264D60(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  sub_100263A6C(v4, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_100264DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100264E10()
{

  return swift_deallocObject();
}

uint64_t sub_100264E5C()
{

  return swift_deallocObject();
}

uint64_t sub_100264EB0(uint64_t (**a1)(uint64_t *, uint64_t *))
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = *(v1 + 24);
  v6 = v2;
  return v3(&v6, &v5);
}

uint64_t sub_100264EF8()
{

  return swift_deallocObject();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(triggers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(a1);
  return v2;
}

uint64_t GenericRequestResponseInvalidation.__allocating_init(label:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

Swift::Void __swiftcall RequestResponseInvalidatable.invalidate()()
{
  v3 = v1;
  v4 = v0;
  if (((*(v1 + 40))() & 1) == 0)
  {
    (*(v3 + 48))(1, v4, v3);
    v5 = (*(v3 + 16))(v4, v3);
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v5(v2, v3);

      sub_10000DE74(v7, v8);
    }
  }
}

uint64_t GenericRequestResponseInvalidation.init(label:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_10000DE64(v1, *(v0 + 40));
  return v1;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_10000DE74(v5, v6);
}

uint64_t GenericRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

void *GenericRequestResponseInvalidation.deinit()
{

  sub_10000DE74(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t GenericRequestResponseInvalidation.__deallocating_deinit()
{

  sub_10000DE74(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_100265308()
{
  v1 = *(*v0 + 16);

  return v1;
}

void *CompoundRequestResponseInvalidation.__allocating_init(responseInvalidations:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_10026606C(a1);

  return v2;
}

void *CompoundRequestResponseInvalidation.init(responseInvalidations:)(uint64_t a1)
{
  v1 = sub_10026606C(a1);

  return v1;
}

uint64_t CompoundRequestResponseInvalidation.append(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = v2;
    v5 = result;
    ObjectType = swift_getObjectType();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = *(a2 + 24);
    swift_unknownObjectRetain();

    v8(sub_10026633C, v7, ObjectType, a2);

    swift_beginAccess();
    v9 = *(v2 + 40);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 40) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_10003B114(0, v9[2] + 1, 1, v9);
      *(v3 + 40) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_10003B114((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[2 * v12];
    v13[4] = v5;
    v13[5] = a2;
    *(v3 + 40) = v9;
    swift_endAccess();
    if (((*(a2 + 40))(ObjectType, a2) & 1) != 0 && (swift_beginAccess(), *(v3 + 32) != 1) && (*(v3 + 32) = 1, swift_beginAccess(), (v14 = *(v3 + 16)) != 0))
    {
      v15 = *(v3 + 24);

      v14(v5, a2);
      swift_unknownObjectRelease();
      return sub_10000DE74(v14, v15);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_100265600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (*(v7 + 32) == 1 || (*(v7 + 32) = 1, swift_beginAccess(), (v8 = *(v7 + 16)) == 0))
    {
    }

    else
    {
      v9 = *(v7 + 24);

      v8(a1, a2);

      sub_10000DE74(v8, v9);
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundRequestResponseInvalidation.append(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = *(a1._rawValue + 2);
  swift_beginAccess();
  swift_beginAccess();
  if (v4)
  {
    v5 = (a1._rawValue + 32);
    do
    {
      v16 = *v5;
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = *(*(&v16 + 1) + 24);
      swift_unknownObjectRetain_n();

      v9(sub_10026654C, v8, ObjectType, *(&v16 + 1));

      swift_beginAccess();
      v10 = *(v2 + 40);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 40) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_10003B114(0, v10[2] + 1, 1, v10);
        *(v2 + 40) = v10;
      }

      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v10 = sub_10003B114((v12 > 1), v13 + 1, 1, v10);
      }

      v10[2] = v13 + 1;
      *&v10[2 * v13 + 4] = v16;
      *(v2 + 40) = v10;
      swift_endAccess();
      if (((*(*(&v16 + 1) + 40))(ObjectType, *(&v16 + 1)) & 1) != 0 && (*(v2 + 32) & 1) == 0 && (*(v2 + 32) = 1, (v14 = *(v2 + 16)) != 0))
      {
        v15 = *(v2 + 24);

        v14(v6, *(&v16 + 1));
        swift_unknownObjectRelease_n();
        sub_10000DE74(v14, v15);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v5;
      --v4;
    }

    while (v4);
  }
}

void CompoundRequestResponseInvalidation.debugDescription.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    while (v3 < *(v1 + 16))
    {
      ++v3;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v5 = sub_1004DF09C();
      v7 = v6;

      v8._countAndFlagsBits = v5;
      v8._object = v7;
      sub_1004DD5FC(v8);

      v9._countAndFlagsBits = 124;
      v9._object = 0xE100000000000000;
      sub_1004DD5FC(v9);
      swift_unknownObjectRelease();

      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    sub_1004DD5FC(v10);
  }
}

uint64_t CompoundRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t *CompoundRequestResponseInvalidation.deinit()
{
  sub_10000DE74(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t CompoundRequestResponseInvalidation.__deallocating_deinit()
{
  sub_10000DE74(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(trigger:)(void *a1)
{
  sub_100004CB8(&unk_1006372F0, &unk_10051B160);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511DA0;
  sub_100035868(a1, v2 + 32);
  v3 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(v2);
  sub_100008D24(a1);
  return v3;
}

uint64_t BindingRequestResponseInvalidation.init(triggers:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  *(v2 + 16) = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v6, 0, sub_100266384, v5);

  return v2;
}

double sub_100265CE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    if (*(v4 + 40) == 1 || (*(v4 + 40) = 1, swift_beginAccess(), (v5 = *(v4 + 24)) == 0))
    {
    }

    else
    {
      v6 = *(v4 + 32);
      v7 = sub_100266500(&qword_100638E38, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);

      v5(v4, v7);

      sub_10000DE74(v5, v6);
    }
  }

  return result;
}

uint64_t BindingRequestResponseInvalidation.debugDescription.getter()
{

  sub_100004CB8(&qword_10063BE50, &qword_100524108);
  v1._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v1);

  return 0x3D676E69646E6942;
}

uint64_t BindingRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

void *BindingRequestResponseInvalidation.deinit()
{

  sub_10000DE74(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t BindingRequestResponseInvalidation.__deallocating_deinit()
{

  sub_10000DE74(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_100265FE8()
{

  sub_100004CB8(&qword_10063BE50, &qword_100524108);
  v1._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v1);

  return 0x3D676E69646E6942;
}

void *sub_10026606C(uint64_t a1)
{
  v2 = v1;
  v21 = v2;
  v2[2] = 0;
  v2 += 2;
  *(v2 + 16) = 0;
  v2[3] = _swiftEmptyArrayStorage;
  v4 = v2 + 3;
  v2[1] = 0;
  v5 = *(a1 + 16);
  v20 = v2 + 2;
  swift_beginAccess();
  v19 = v2;
  swift_beginAccess();
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v22 = v5;
      v23 = *v6;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = v4;
      v11 = *(*(&v23 + 1) + 24);
      swift_unknownObjectRetain_n();

      v11(sub_10026654C, v9, ObjectType, *(&v23 + 1));
      v4 = v10;

      swift_beginAccess();
      v12 = v21[5];
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21[5] = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_10003B114(0, v12[2] + 1, 1, v12);
        *v10 = v12;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        v12 = sub_10003B114((v14 > 1), v15 + 1, 1, v12);
      }

      v12[2] = v15 + 1;
      *&v12[2 * v15 + 4] = v23;
      *v10 = v12;
      swift_endAccess();
      if (((*(*(&v23 + 1) + 40))(ObjectType, *(&v23 + 1)) & 1) != 0 && (*v20 & 1) == 0 && (*v20 = 1, (v16 = *v19) != 0))
      {
        v17 = v21[3];

        v16(v7, *(&v23 + 1));
        swift_unknownObjectRelease_n();
        sub_10000DE74(v16, v17);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v6;
      v5 = v22 - 1;
    }

    while (v22 != 1);
  }

  return v21;
}

uint64_t sub_100266304(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100266344()
{

  return swift_deallocObject();
}

uint64_t sub_10026638C(uint64_t a1)
{
  result = sub_100266500(&qword_10063BE58, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100266408(uint64_t a1)
{
  result = sub_100266500(&qword_10063BE60, type metadata accessor for CompoundRequestResponseInvalidation, &protocol conformance descriptor for CompoundRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100266484(uint64_t a1)
{
  result = sub_100266500(&qword_10063BE68, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100266500(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Logger.sharePlayTogether.unsafeMutableAddressor()
{
  if (qword_100633E28 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.sharePlayTogether);
}

uint64_t SharePlayTogetherSession.isEqual(_:)(uint64_t a1)
{
  sub_1000108DC(a1, v6, &qword_100638E60, &unk_10051A920);
  if (!v7)
  {
    sub_10001074C(v6, &qword_100638E60, &unk_10051A920);
    goto LABEL_9;
  }

  type metadata accessor for SharePlayTogetherSession(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (*&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier) && *&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8))
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_1004DF08C();
  }

  return v3 & 1;
}

uint64_t SharePlayTogetherSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier);

  return v1;
}

SEL *sub_100266804(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    return [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session) *result];
  }

  __break(1u);
  return result;
}

void *SharePlayTogetherSession.title.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result localizedSessionName];
    v3 = sub_1004DD43C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SharePlayTogetherSession.joinToken.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result joinToken];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.routeType.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.routeType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SharePlayTogetherSession.routeSymbolName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_100266A80(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_100266B00(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1004D9B7C();
}

uint64_t SharePlayTogetherSession.routeSymbolName.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1004D9B7C();
}

void (*SharePlayTogetherSession.routeSymbolName.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F6F60;
}

uint64_t SharePlayTogetherSession.$routeSymbolName.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063C0B8, &qword_100524328);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_10063C0B0, &qword_100524320);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$routeSymbolName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100004CB8(&qword_10063C0B8, &qword_100524328);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__routeSymbolName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_10063C0B0, &qword_100524320);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F6F64;
}

uint64_t SharePlayTogetherSession.participants.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_100267024(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

uint64_t sub_1002670A4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1004D9B7C();
}

uint64_t SharePlayTogetherSession.participants.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1004D9B7C();
}

void (*SharePlayTogetherSession.participants.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F5BF4;
}

uint64_t SharePlayTogetherSession.$participants.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063C0D8, &qword_100524388);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_10063C0D0, &qword_100524380);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$participants.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100004CB8(&qword_10063C0D8, &qword_100524388);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_10063C0D0, &qword_100524380);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F5F34;
}

void (*SharePlayTogetherSession.connectedParticipantsCount.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F6F60;
}

uint64_t SharePlayTogetherSession.$connectedParticipantsCount.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063C0F0, &qword_1005243E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_10063C0E8, &qword_1005243D8);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$connectedParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100004CB8(&qword_10063C0F0, &qword_1005243E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_10063C0E8, &qword_1005243D8);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F6F64;
}

void sub_1002678C4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

uint64_t sub_100267944(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1004D9B7C();
}

uint64_t sub_1002679C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1004D9B7C();
}

void (*SharePlayTogetherSession.pendingParticipantsCount.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F6F60;
}

uint64_t SharePlayTogetherSession.$pendingParticipantsCount.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063C0F0, &qword_1005243E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_10063C0E8, &qword_1005243D8);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$pendingParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100004CB8(&qword_10063C0F0, &qword_1005243E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_10063C0E8, &qword_1005243D8);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F6F64;
}

uint64_t property wrapper backing initializer of SharePlayTogetherSession.host(uint64_t a1)
{
  sub_100004CB8(&qword_10063C100, &qword_100524430);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_1000108DC(a1, &v7 - v4, &qword_10063C100, &qword_100524430);
  sub_1000108DC(v5, v3, &qword_10063C100, &qword_100524430);
  sub_1004D9B2C();
  sub_10001074C(a1, &qword_10063C100, &qword_100524430);
  return sub_10001074C(v5, &qword_10063C100, &qword_100524430);
}

double SharePlayTogetherSession.host.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return result;
}

double sub_100267F28(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return result;
}

uint64_t sub_100267FA4(uint64_t a1, void **a2)
{
  sub_100004CB8(&qword_10063C100, &qword_100524430);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  sub_1000108DC(a1, &v11 - v6, &qword_10063C100, &qword_100524430);
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000108DC(v7, v5, &qword_10063C100, &qword_100524430);
  v9 = v8;
  sub_1004D9B7C();
  return sub_10001074C(v7, &qword_10063C100, &qword_100524430);
}

uint64_t SharePlayTogetherSession.host.setter(uint64_t a1)
{
  sub_100004CB8(&qword_10063C100, &qword_100524430);
  __chkstk_darwin();
  v4 = &v7 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000108DC(a1, v4, &qword_10063C100, &qword_100524430);
  v5 = v1;
  sub_1004D9B7C();
  return sub_10001074C(a1, &qword_10063C100, &qword_100524430);
}

void (*SharePlayTogetherSession.host.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F6F60;
}

uint64_t SharePlayTogetherSession.$host.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063C118, &qword_100524488);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_10063C110, &qword_100524480);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$host.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100004CB8(&qword_10063C118, &qword_100524488);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_10063C110, &qword_100524480);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F6F64;
}

void SharePlayTogetherSession.qrCode.getter(uint64_t *a1@<X8>)
{
  v3 = *(sub_1004DD48C() - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v10 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v9 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 8);
  v11 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 16);
  v12 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 24);
  v13 = v10;
  v14 = v9;
  v15 = v11;
  v16 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  if (v12)
  {
LABEL_8:
    sub_10026E248(v10, v9, v11, v12);
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v15;
    a1[3] = v16;
    a1[4] = v17;
    return;
  }

  v18 = v4;
  v34 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  v35 = 0;
  v32 = v9;
  v33 = v11;
  v31 = v10;
  v19 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v19)
  {
    v20 = [v19 joinToken];
    if (v20 && (v21 = v20, v22 = [v20 joinURLString], v21, sub_1004DD43C(), v22, sub_1004DD47C(), v23 = sub_1004DD44C(), v25 = v24, , (*(v3 + 8))(v7, v18), v25 >> 60 != 15))
    {
      sub_1002C5B7C(v23, v25, 76, v36);
      v26 = *v8;
      v27 = v8[1];
      v28 = v8[2];
      v29 = v8[3];
      v30 = v36[1];
      *v8 = v36[0];
      *(v8 + 1) = v30;
      v8[4] = v37;
      sub_1002700A8(v26, v27, v28, v29);
      v13 = *v8;
      v14 = v8[1];
      v15 = v8[2];
      v16 = v8[3];
      v17 = v8[4];
      sub_10026E248(*v8, v14, v15, v16);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v10 = v31;
    v9 = v32;
    v11 = v33;
    v12 = v35;
    goto LABEL_8;
  }

  __break(1u);
}

void SharePlayTogetherSession.joinURL.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v3)
  {
    v4 = [v3 joinToken];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 joinURLString];

      sub_1004DD43C();
      sub_1004D805C();
    }

    else
    {
      v7 = sub_1004D809C();
      v8 = *(*(v7 - 8) + 56);

      v8(a1, 1, 1, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SharePlayTogetherSession.isActive.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    if ([result isPlaceholder])
    {
      return 0;
    }

    else if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      return v2 > 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.isPersistent.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.isPersistent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_100268A20(void *a1, void *a2)
{
  v78 = a1;
  v79 = a2;
  v3 = sub_100004CB8(&qword_10063C110, &qword_100524480);
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin();
  v75 = v74 - v4;
  v74[1] = sub_100004CB8(&qword_10063C100, &qword_100524430);
  __chkstk_darwin();
  v6 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v74 - v7;
  v9 = sub_100004CB8(&qword_10063C0E8, &qword_1005243D8);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v74 - v11;
  v13 = sub_100004CB8(&qword_10063C0D0, &qword_100524380);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v74 - v15;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = 0;
  v17 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v83[0] = _swiftEmptyArrayStorage;
  sub_100004CB8(&qword_10063C0C0, &qword_100524330);
  sub_1004D9B2C();
  (*(v14 + 32))(&v2[v17], v16, v13);
  v18 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v83[0] = 0;
  sub_1004D9B2C();
  v19 = *(v10 + 32);
  v19(&v2[v18], v12, v9);
  v20 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v83[0] = 0;
  sub_1004D9B2C();
  v19(&v2[v20], v12, v9);
  v21 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v22 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_1000108DC(v8, v6, &qword_10063C100, &qword_100524430);
  v23 = v75;
  sub_1004D9B2C();
  v24 = v8;
  v25 = v78;
  sub_10001074C(v24, &qword_10063C100, &qword_100524430);
  (*(v76 + 32))(&v2[v21], v23, v77);
  v26 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected] = 0;
  v27 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  *&v2[v27] = sub_10005FDD4(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually] = 0;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = 0;
  v28 = [v25 identifier];
  v29 = sub_1004DD43C();
  v31 = v30;

  v32 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier];
  *v32 = v29;
  v32[1] = v31;
  v33 = [v25 isHosted];
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] = v33;
  v34 = v79;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint] = v79;
  v35 = v34;
  v36 = [v25 hostInfo];
  LOBYTE(v31) = [v36 routeType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType] = v31;
  v37 = [v35 groupLeader];
  v38 = [v37 transportType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent] = v38 != 6;
  v39 = [v25 hostInfo];
  LODWORD(v38) = [v39 routeType];

  if (v38 == 1 || (v40 = [v25 hostInfo], v41 = objc_msgSend(v40, "routeType"), v40, v41 == 2))
  {
    swift_beginAccess();
    v81 = 0x6C6C69662E726163;
    v82 = 0xE800000000000000;
    sub_1004D9B2C();
    swift_endAccess();
    v42 = 1;
  }

  else
  {
    v43 = [v35 outputDevices];
    if (v43)
    {
      v44 = v43;
      sub_100006F10(0, &qword_10063C348, MRAVOutputDevice_ptr);
      sub_1004DD87C();
    }

    v45 = objc_opt_self();
    sub_100006F10(0, &qword_10063C348, MRAVOutputDevice_ptr);
    isa = sub_1004DD85C().super.isa;

    v47 = [v45 symbolNameForOutputDevices:isa];

    v48 = sub_1004DD43C();
    v50 = v49;

    swift_beginAccess();
    v81 = v48;
    v82 = v50;
    sub_1004D9B2C();
    swift_endAccess();
    v42 = 0;
  }

  v51 = type metadata accessor for SharePlayTogetherSession(0);
  v80.receiver = v2;
  v80.super_class = v51;
  v52 = objc_msgSendSuper2(&v80, "init");
  v53 = [v25 identifier];
  if (!v53)
  {
    sub_1004DD43C();
    v53 = sub_1004DD3FC();
  }

  v54 = objc_opt_self();
  v55 = v52;
  v56 = [v54 remoteControlGroupSessionWithIdentifier:v53 delegate:v55];

  v57 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  *&v55[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = v56;
  swift_unknownObjectRelease();
  v58 = MRAVEndpointOutputDevicesDidChangeNotification;
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v42;
  *(v60 + 24) = v59;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v61 = v35;
  *&v55[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v58, v35, 1, 1, sub_100271194, v60);

  if (qword_100633E28 != -1)
  {
    swift_once();
  }

  v62 = sub_1004D966C();
  sub_100035430(v62, static Logger.sharePlayTogether);
  v63 = sub_1004D964C();
  v64 = sub_1004DDF9C();
  if (!os_log_type_enabled(v63, v64))
  {

    goto LABEL_15;
  }

  v65 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  v83[0] = v66;
  *v65 = 136446210;
  v67 = *&v55[v57];
  if (v67)
  {
    v68 = v66;
    swift_unknownObjectRetain();

    v69 = [v67 description];
    swift_unknownObjectRelease();
    v70 = sub_1004DD43C();
    v72 = v71;

    v73 = sub_1000343A8(v70, v72, v83);

    *(v65 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v63, v64, "Initialized SharePlayTogetherSession object with MR session %{public}s", v65, 0xCu);
    sub_100008D24(v68);

LABEL_15:
    return;
  }

  __break(1u);
}

void sub_1002693EC(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(Strong + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint);

        v6 = [v5 outputDevices];
        if (v6)
        {
          sub_100006F10(0, &qword_10063C348, MRAVOutputDevice_ptr);
          sub_1004DD87C();
        }
      }

      v7 = objc_opt_self();
      sub_100006F10(0, &qword_10063C348, MRAVOutputDevice_ptr);
      isa = sub_1004DD85C().super.isa;

      v9 = [v7 symbolNameForOutputDevices:isa];

      sub_1004DD43C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B7C();
    }
  }
}

void sub_1002695BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100269684(uint64_t *result, SEL *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v7 = *(v5 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  v12 = sub_1004DD3FC();
  v13 = [v7 *a2];

  swift_unknownObjectRelease();
  if (!v13)
  {
    return;
  }

  if (!*(v5 + v6))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15[4] = a3;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1002695BC;
  v15[3] = a4;
  v14 = _Block_copy(v15);
  [swift_unknownObjectRetain() *a5];
  _Block_release(v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SharePlayTogetherSession.endSession()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    v2[4] = CFRange.init(_:);
    v2[5] = 0;
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_1002695BC;
    v2[3] = &unk_1005E9300;
    v1 = _Block_copy(v2);
    [swift_unknownObjectRetain() removeAllParticipantsWithCompletion:v1];
    _Block_release(v1);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.leave()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v1)
  {
    v2 = [v1 identifier];
    if (!v2)
    {
      sub_1004DD43C();
      v2 = sub_1004DD3FC();
    }

    v4[4] = CFRange.init(_:);
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_100167E90;
    v4[3] = &unk_1005E9328;
    v3 = _Block_copy(v4);
    MRGroupSessionLeaveSessionWithIdentifier();
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.cleanup(notifyObservers:)(Swift::Bool notifyObservers)
{
  if (notifyObservers)
  {
    v2 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
    swift_beginAccess();
    v3 = *(v1 + v2);
    v4 = *(v3 + 16);
    if (v4)
    {

      v5 = v3 + 40;
      do
      {
        v6 = *(v5 - 8);
        v9[0] = 1;

        v6(v9);

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  *(v1 + v7) = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  *(v1 + v8) = _swiftEmptyArrayStorage;
}

uint64_t SharePlayTogetherSession.addSessionConnectionObserver(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) == 1)
  {
    return a1();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v8 = *(v2 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_10003A81C(0, v8[2] + 1, 1, v8);
    *(v2 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_10003A81C((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_10001185C;
  v12[5] = v6;
  *(v2 + v7) = v8;
  return swift_endAccess();
}

uint64_t SharePlayTogetherSession.addSessionEndedObserver(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10003AB0C(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_10003AB0C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_100270140;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

id SharePlayTogetherSession.assertSessionManagementScreenVisible()()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result assertSessionManagementScreenVisible];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.socialProfile(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 identifierType] == 1 && (v5 = objc_msgSend(a1, "participantIdentifier")) != 0)
  {
    v6 = v5;
    v7 = sub_1004DD43C();
    v9 = v8;

    v10 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16) && (, v12 = sub_100056B84(v7, v9), v14 = v13, , (v14 & 1) != 0))
    {
      v15 = *(v11 + 56);
      v16 = sub_1004D90CC();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a2, v15 + *(v17 + 72) * v12, v16);

      return (*(v17 + 56))(a2, 0, 1, v16);
    }

    else
    {

      v21 = sub_1004D90CC();
      return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
    }
  }

  else
  {
    v19 = sub_1004D90CC();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

void *SharePlayTogetherSession.isEquivalent(to:)(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = [result isPlaceholder];
  result = *(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v4 == [result isPlaceholder])
  {
    v14 = 0;
  }

  else
  {
    v5 = [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v6 = sub_1004DD43C();
    v8 = v7;

    v9 = [*(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v10 = sub_1004DD43C();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1004DF08C();
    }
  }

  return (v14 & 1);
}

void sub_10026A06C()
{
  v1 = v0;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v114 = &v108 - v2;
  v3 = sub_100004CB8(&qword_10063C2D8, &qword_100524610);
  v113 = *(v3 - 8);
  v4 = *(v113 + 64);
  __chkstk_darwin();
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v108 - v6;
  sub_100004CB8(&qword_10063C100, &qword_100524430);
  __chkstk_darwin();
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v108 - v9;
  sub_100004CB8(&unk_10063C158, &unk_100524490);
  __chkstk_darwin();
  v124 = &v108 - v10;
  v115 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v128 = *(v115 - 8);
  __chkstk_darwin();
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633E28 != -1)
  {
    swift_once();
  }

  v13 = sub_1004D966C();
  v118 = sub_100035430(v13, static Logger.sharePlayTogether);
  v14 = sub_1004D964C();
  v15 = sub_1004DDF9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Updating participants", v16, 2u);
  }

  v17 = swift_allocObject();
  v129 = v17;
  *(v17 + 16) = &_swiftEmptySetSingleton;
  v120 = v17 + 16;
  v125 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v18 = *&v1[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
  if (!v18)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v19 = [v18 pendingParticipants];
  v20 = sub_1004DDC3C();

  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = sub_10026E4C8(*(v20 + 16), 0);
    v23 = sub_10026F8DC(v132, (v22 + 4), v21, v20);
    sub_100010458(v132[0]);
    if (v23 == v21)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_10:
  sub_1001C714C(v22);

  v132[0] = sub_10026FC5C(v24);
  sub_10026E558(v132);
  v111 = v3;

  v25 = *&v1[v125];
  if (!v25)
  {
    goto LABEL_77;
  }

  v122 = v132[0];
  v26 = [v25 participants];
  v27 = sub_1004DDC3C();

  v28 = *(v27 + 16);
  if (!v28)
  {
LABEL_14:

    v29 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v29 = sub_10026E4C8(*(v27 + 16), 0);
  v30 = sub_10026F8DC(v132, (v29 + 4), v28, v27);
  sub_100010458(v132[0]);
  if (v30 != v28)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  sub_1001C714C(v29);

  v132[0] = sub_10026FC5C(v31);
  sub_10026E558(v132);

  v121 = v132[0];
  if ((v132[0] & 0x8000000000000000) == 0 && (v132[0] & 0x4000000000000000) == 0)
  {
    v32 = *(v132[0] + 16);
    goto LABEL_18;
  }

  while (1)
  {
    v32 = sub_1004DED5C();
LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    v132[0] = v32;
    v33 = v1;
    sub_1004D9B7C();
    v34 = v122;
    v110 = v8;
    if (v122 < 0 || (v122 & 0x4000000000000000) != 0)
    {
      v35 = sub_1004DED5C();
    }

    else
    {
      v35 = *(v122 + 16);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v132[0] = v35;
    v36 = v33;
    sub_1004D9B7C();
    v132[0] = v34;

    sub_1000459D4(v37);
    v38 = v132[0];
    v109 = v5;
    v108 = v4;
    v119 = v1;
    if (v132[0] >> 62)
    {
      v39 = sub_1004DED5C();
      if (!v39)
      {
LABEL_33:

        v41 = _swiftEmptyArrayStorage;
        goto LABEL_34;
      }
    }

    else
    {
      v39 = *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_33;
      }
    }

    v132[0] = _swiftEmptyArrayStorage;
    sub_10003761C(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    v40 = 0;
    v41 = v132[0];
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v42 = sub_1004DEB2C();
      }

      else
      {
        v42 = *(v38 + 8 * v40 + 32);
        swift_unknownObjectRetain();
      }

      sub_10026B120(v42, v36, v129, v12);
      swift_unknownObjectRelease();
      v132[0] = v41;
      v44 = v41[2];
      v43 = v41[3];
      v5 = (v44 + 1);
      if (v44 >= v43 >> 1)
      {
        sub_10003761C((v43 > 1), v44 + 1, 1);
        v41 = v132[0];
      }

      ++v40;
      v41[2] = v5;
      sub_100270B18(v12, v41 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v44);
    }

    while (v39 != v40);

    v1 = v119;
LABEL_34:
    swift_getKeyPath();
    swift_getKeyPath();
    v132[0] = v41;
    v126 = v36;
    sub_1004D9B7C();
    v45 = *&v1[v125];
    if (!v45)
    {
      goto LABEL_78;
    }

    v46 = [v45 members];
    v12 = sub_100006F10(0, &qword_10063C2E0, MRUserIdentity_ptr);
    sub_100270B7C();
    v47 = sub_1004DDC3C();

    v4 = v120;
    if ((v47 & 0xC000000000000001) != 0)
    {
      sub_1004DE98C();
      sub_1004DDC7C();
      v47 = v132[0];
      v1 = v132[1];
      v48 = v132[2];
      v49 = v132[3];
      v8 = v132[4];
    }

    else
    {
      v49 = 0;
      v50 = -1 << *(v47 + 32);
      v1 = (v47 + 56);
      v48 = ~v50;
      v51 = -v50;
      v52 = v51 < 64 ? ~(-1 << v51) : -1;
      v8 = (v52 & *(v47 + 56));
    }

    v117 = v48;
    v53 = (v48 + 64) >> 6;
    v123 = v12;
    if (v47 < 0)
    {
      break;
    }

    while (1)
    {
      v57 = v49;
      v58 = v8;
      v55 = v49;
      if (!v8)
      {
        break;
      }

LABEL_51:
      v56 = (v58 - 1) & v58;
      v5 = *(*(v47 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v58)))));
      if (!v5)
      {
        goto LABEL_59;
      }

LABEL_52:
      if ([v5 type] == 1)
      {
        v127 = v56;
        v59 = [v5 identifier];
        v60 = sub_1004DD43C();
        v62 = v61;

        v63 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
        v64 = v126;
        swift_beginAccess();
        v65 = *&v64[v63];
        if (*(v65 + 16) && (, v66 = sub_100056B84(v60, v62), v68 = v67, , (v68 & 1) != 0))
        {
          v69 = *(v65 + 56);
          v70 = sub_1004D90CC();
          v71 = *(v70 - 8);
          v72 = v71;
          v73 = v69 + *(v71 + 72) * v66;
          v74 = v124;
          (*(v71 + 16))(v124, v73, v70);

          (*(v72 + 56))(v74, 0, 1, v70);
          v4 = v120;
          sub_10001074C(v74, &unk_10063C158, &unk_100524490);
        }

        else
        {

          v75 = sub_1004D90CC();
          v76 = v124;
          (*(*(v75 - 8) + 56))(v124, 1, 1, v75);
          sub_10001074C(v76, &unk_10063C158, &unk_100524490);
          v77 = [v5 identifier];
          sub_1004DD43C();

          v78 = sub_1004DC2FC();
          v80 = v79;
          swift_beginAccess();
          sub_1001BC594(&v131, v78, v80);
          swift_endAccess();
        }

        v49 = v55;
        v8 = v127;
        v12 = v123;
        if (v47 < 0)
        {
          goto LABEL_44;
        }
      }

      else
      {

        v49 = v55;
        v8 = v56;
        if (v47 < 0)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v55 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v55 >= v53)
      {
        goto LABEL_59;
      }

      v58 = *&v1[8 * v55];
      ++v57;
      if (v58)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
  }

LABEL_44:
  v54 = sub_1004DE9EC();
  if (v54)
  {
    v131 = v54;
    swift_dynamicCast();
    v5 = v130[0];
    v55 = v49;
    v56 = v8;
    if (v130[0])
    {
      goto LABEL_52;
    }
  }

LABEL_59:
  sub_100010458(v47);
  v81 = *&v119[v125];
  if (!v81)
  {
LABEL_79:
    __break(1u);

    __break(1u);
    return;
  }

  swift_unknownObjectRetain();

  v82 = [v81 host];
  swift_unknownObjectRelease();
  if (v82)
  {
    v83 = v116;
    v84 = v126;
    sub_10026B120(v82, v126, v129, v116);
    (*(v128 + 56))(v83, 0, 1, v115);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000108DC(v83, v110, &qword_10063C100, &qword_100524430);
    v85 = v84;
    sub_1004D9B7C();
    swift_unknownObjectRelease();
    sub_10001074C(v83, &qword_10063C100, &qword_100524430);
  }

  swift_beginAccess();
  v86 = *v4;
  v87 = *(*v4 + 16);
  v88 = sub_1004D964C();
  v89 = sub_1004DDF9C();
  v90 = os_log_type_enabled(v88, v89);
  if (v87)
  {
    if (v90)
    {
      v91 = swift_slowAlloc();
      *v91 = 134349056;
      *(v91 + 4) = *(v86 + 16);
      _os_log_impl(&_mh_execute_header, v88, v89, "Fetching %{public}ld profiles", v91, 0xCu);
    }

    swift_getKeyPath();
    v92 = *(v86 + 16);
    if (!v92 || (v93 = sub_10026E3BC(*(v86 + 16), 0), v89 = v93, v94 = sub_10026F784(v130, v93 + 4, v92, v86), v95 = v130[0], v88 = v130[4], , v90 = sub_100010458(v95), v94 == v92))
    {
      sub_1004D90CC();
      sub_100270C2C(&qword_10063C2F0, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      sub_100270C2C(&qword_10063C2F8, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      v97 = v112;
      sub_1004DC1BC();
      v98 = sub_1004DDA8C();
      v99 = v114;
      (*(*(v98 - 8) + 56))(v114, 1, 1, v98);
      v100 = v113;
      v101 = v109;
      v102 = v111;
      (*(v113 + 16))(v109, v97, v111);
      sub_1004DDA4C();
      v103 = v126;
      v104 = sub_1004DDA3C();
      v105 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v106 = (v108 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      *(v107 + 16) = v104;
      *(v107 + 24) = &protocol witness table for MainActor;
      (*(v100 + 32))(v107 + v105, v101, v102);
      *(v107 + v106) = v103;
      sub_10021C658(0, 0, v99, &unk_100524648, v107);

      (*(v100 + 8))(v97, v102);

      return;
    }

    __break(1u);
  }

  if (v90)
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&_mh_execute_header, v88, v89, "No pending profiles to fetch", v96, 2u);
  }
}

uint64_t sub_10026B120@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100004CB8(&unk_10063C158, &unk_100524490);
  __chkstk_darwin();
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v46 - v10;
  __chkstk_darwin();
  v13 = v46 - v12;
  v14 = sub_1004D90CC();
  v15 = *(v14 - 8);
  v49 = *(v15 + 56);
  v50 = v14;
  v49(v13, 1, 1);
  v16 = [a1 identity];
  v17 = &selRef_scaledValueForValue_;
  if (v16)
  {
    v18 = v16;
    if ([v16 type] == 1)
    {
      v46[1] = a3;
      v48 = v13;
      v19 = [v18 identifier];
      v47 = sub_1004DD43C();
      v21 = v20;

      v22 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
      swift_beginAccess();
      v23 = *(a2 + v22);
      if (*(v23 + 16) && (, v47 = sub_100056B84(v47, v21), v25 = v24, , (v25 & 1) != 0))
      {
        (*(v15 + 16))(v11, *(v23 + 56) + *(v15 + 72) * v47, v50);
        v13 = v48;
        sub_10001074C(v48, &unk_10063C158, &unk_100524490);

        v26 = 0;
      }

      else
      {

        v13 = v48;
        sub_10001074C(v48, &unk_10063C158, &unk_100524490);
        v26 = 1;
      }

      v27 = v50;
      (v49)(v11, v26, 1, v50);
      sub_1002710EC(v11, v13);
      sub_1000108DC(v13, v9, &unk_10063C158, &unk_100524490);
      if ((*(v15 + 48))(v9, 1, v27) == 1)
      {
        sub_10001074C(v9, &unk_10063C158, &unk_100524490);
        v28 = [v18 identifier];
        sub_1004DD43C();

        v29 = sub_1004DC2FC();
        v31 = v30;
        swift_beginAccess();
        sub_1001BC594(&v51, v29, v31);
        swift_endAccess();

        v17 = &selRef_scaledValueForValue_;
        goto LABEL_12;
      }

      sub_10001074C(v9, &unk_10063C158, &unk_100524490);
    }

    else
    {
    }

    v17 = &selRef_scaledValueForValue_;
  }

LABEL_12:
  v32 = [a1 v17[399]];
  v33 = sub_1004DD43C();
  v35 = v34;

  v36 = [a1 identity];
  if (v36 && (v37 = v36, v38 = [v36 displayName], v37, v38))
  {
    v39 = sub_1004DD43C();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = [a1 isPending];
  v43 = [a1 isGuest];
  v44 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  (v49)(a4 + v44, 1, 1, v50);
  *a4 = v33;
  *(a4 + 8) = v35;
  *(a4 + 16) = v39;
  *(a4 + 24) = v41;
  *(a4 + 32) = v42;
  *(a4 + 33) = v43;
  return sub_100270168(v13, a4 + v44);
}

uint64_t SharePlayTogetherSession.Participant.init(id:displayName:isPending:isGuest:socialProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v17 = sub_1004D90CC();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;

  return sub_100270168(a7, a8 + v16);
}

uint64_t sub_10026B694(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identity];
  if (v3 && (v4 = v3, v5 = [v3 displayName], v4, v5))
  {
    v6 = sub_1004DD43C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = [v2 identity];
  if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
  {
    v12 = sub_1004DD43C();
    v14 = v13;

    if (v6 != v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0xE000000000000000;
    if (v6)
    {
LABEL_12:
      v15 = sub_1004DF08C();
      goto LABEL_13;
    }
  }

  if (v8 != v14)
  {
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15 & 1;
}

uint64_t sub_10026B7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  v5[5] = swift_task_alloc();
  v6 = sub_100004CB8(&qword_10063C300, &qword_100524650);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[8] = v7;
  v8 = sub_100004CB8(&qword_10063C308, &qword_100524658);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = sub_1004DDA4C();
  v5[16] = sub_1004DDA3C();
  v10 = swift_task_alloc();
  v5[17] = v10;
  v11 = sub_100004CB8(&qword_10063C2D8, &qword_100524610);
  *v10 = v5;
  v10[1] = sub_10026B9E4;

  return MusicCatalogResourceRequest.response()(v7, v11);
}

uint64_t sub_10026B9E4()
{
  *(*v1 + 144) = v0;

  v3 = sub_1004DD9BC();
  if (v0)
  {
    v4 = sub_10026BEC4;
  }

  else
  {
    v4 = sub_10026BB40;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10026BB40()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_1004DC1DC();
  (*(v2 + 8))(v1, v3);
  if (qword_100633E28 != -1)
  {
    swift_once();
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = sub_1004D966C();
  sub_100035430(v8, static Logger.sharePlayTogether);
  v34 = *(v7 + 16);
  v34(v4, v5, v6);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[9];
  v14 = v0[10];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    sub_100270FC8();
    sub_1004DDCFC();
    sub_1004DDD3C();
    v16 = sub_1004DDD2C();
    v33 = *(v14 + 8);
    v33(v12, v13);
    *(v15 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Finished fetching %{public}ld profiles", v15, 0xCu);
  }

  else
  {
    v33 = *(v14 + 8);
    v33(v12, v13);
  }

  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[9];
  v23 = v0[4];
  v22 = v0[5];
  v32 = v22;
  v24 = sub_1004DDA8C();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v34(v18, v17, v21);
  v25 = v23;
  v26 = sub_1004DDA3C();
  v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v28 = (v20 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = &protocol witness table for MainActor;
  (*(v19 + 32))(v29 + v27, v18, v21);
  *(v29 + v28) = v25;
  sub_10011F560(0, 0, v32, &unk_100524668, v29);

  v33(v17, v21);

  v30 = v0[1];

  return v30();
}

uint64_t sub_10026BEC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026BF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  sub_100004CB8(&unk_10063C158, &unk_100524490);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_100004CB8(&qword_10063C100, &qword_100524430);
  v5[35] = swift_task_alloc();
  v6 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = sub_1004D90CC();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = sub_100004CB8(&qword_10063C318, &qword_100524670);
  v5[45] = swift_task_alloc();
  sub_1004DDA4C();
  v5[46] = sub_1004DDA3C();
  v9 = sub_1004DD9BC();

  return _swift_task_switch(sub_10026C19C, v9, v8);
}

void sub_10026C19C()
{
  v1 = v0;
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[30];
  v5 = v0[31];
  v6 = sub_100004CB8(&qword_10063C308, &qword_100524658);
  (*(*(v6 - 8) + 16))(v3, v4, v6);
  v7 = *(v2 + 36);
  sub_100270FC8();
  sub_1004DDCFC();
  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  sub_1004DDD3C();
  v114 = v1;
  v109 = v5;
  if (*(v3 + v7) != v1[27])
  {
    v57 = v1[41];
    v105 = (v57 + 16);
    v107 = v1 + 2;
    v108 = (v57 + 32);
    v103 = v57;
    v100 = v7;
    do
    {
      v60 = v1[43];
      v113 = v1[42];
      v61 = v1[40];
      v111 = sub_1004DDE1C();
      (*v105)(v60);
      v111(v107, 0);
      sub_1004DDD4C();
      v62 = sub_1004D909C();
      v64 = v63;
      swift_beginAccess();
      v65 = *v108;
      (*v108)(v113, v60, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *(v109 + v8);
      v115 = v67;
      *(v109 + v8) = 0x8000000000000000;
      v68 = sub_100056B84(v62, v64);
      v70 = v67[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_61;
      }

      v74 = v69;
      if (v67[3] >= v73)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = v68;
          sub_10005CF3C();
          v68 = v81;
        }
      }

      else
      {
        sub_100059EBC(v73, isUniquelyReferenced_nonNull_native);
        v68 = sub_100056B84(v62, v64);
        if ((v74 & 1) != (v75 & 1))
        {

          sub_1004DF16C();
          return;
        }
      }

      v76 = v114[42];
      v77 = v114[40];
      if (v74)
      {
        v58 = v68;

        v59 = v115;
        (*(v103 + 40))(v115[7] + *(v103 + 72) * v58, v76, v77);
      }

      else
      {
        v59 = v115;
        v115[(v68 >> 6) + 8] |= 1 << v68;
        v78 = (v115[6] + 16 * v68);
        *v78 = v62;
        v78[1] = v64;
        v65(v115[7] + *(v103 + 72) * v68, v76, v77);
        v79 = v115[2];
        v72 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v72)
        {
          goto LABEL_62;
        }

        v115[2] = v80;
      }

      v1 = v114;
      *(v109 + v8) = v59;

      swift_endAccess();
      sub_1004DDD3C();
    }

    while (*(v3 + v100) != v114[27]);
  }

  v98 = v8;
  sub_10001074C(v1[45], &qword_10063C318, &qword_100524670);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v9 = *(v1[28] + 16);

  v10 = v1;
  if (!v9)
  {
LABEL_31:
    v53 = v10[36];
    v54 = v10[37];
    v55 = v10[35];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v56 = *(v54 + 48);
    if (v56(v55, 1, v53) == 1)
    {
      sub_10001074C(v10[35], &qword_10063C100, &qword_100524430);
    }

    else
    {
      v82 = v10 + 6;
      v83 = v10[36];
      sub_100270B18(v10[35], v10[39]);
      v84 = SharePlayTogetherSession.host.modify(v10 + 6);
      v86 = v85;
      v87 = v56(v85, 1, v83);
      v88 = v10[39];
      if (!v87)
      {
        v89 = *v88;
        v90 = v88[1];
        swift_beginAccess();
        v91 = *(v109 + v98);
        if (*(v91 + 16))
        {

          v92 = sub_100056B84(v89, v90);
          if (v93)
          {
            v10 = v114;
            (*(v114[41] + 16))(v114[32], *(v91 + 56) + *(v114[41] + 72) * v92, v114[40]);
            v94 = 0;
          }

          else
          {
            v94 = 1;
            v10 = v114;
          }
        }

        else
        {
          v94 = 1;
          v10 = v114;
        }

        v88 = v10[39];
        v95 = v10[36];
        v96 = v10[32];
        (*(v10[41] + 56))(v96, v94, 1, v10[40]);
        sub_100270168(v96, v86 + *(v95 + 32));
      }

      (v84)(v82, 0);
      sub_100271090(v88);
    }

    type metadata accessor for SharePlayTogetherSession(0);
    sub_100270C2C(&qword_10063C320, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
    sub_1004D9AFC();
    sub_1004D9B1C();

    v97 = v10[1];

    v97();
    return;
  }

  v11 = v1[41];
  v13 = v1[37];
  v12 = v1[38];
  v101 = v1[36];
  v110 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v112 = v1[31];
  swift_beginAccess();
  v14 = 0;
  v102 = v9;
  v104 = (v11 + 56);
  v99 = v11;
  v106 = v13;
  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v15 = v10[29];
    if (v14 >= *(v15 + 16))
    {
      break;
    }

    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = *(v13 + 72) * v14;
    sub_10027102C(v15 + v16 + v17, v10[38]);

    if (*(v12 + 32) == 1)
    {
      v18 = *(v112 + v110);
      if (!v18)
      {
        goto LABEL_66;
      }

      swift_unknownObjectRetain();
      v19 = sub_1004DD3FC();
      v20 = [v18 pendingParticipantForIdentifier:v19];
      swift_unknownObjectRelease();

      if (v20)
      {
        v21 = [v20 identity];
        swift_unknownObjectRelease();
        if (v21)
        {
          v22 = [v21 identifier];

          v23 = sub_1004DD43C();
          v25 = v24;

          v26 = *(v109 + v98);
          if (*(v26 + 16) && (, v27 = sub_100056B84(v23, v25), v29 = v28, , (v29 & 1) != 0))
          {
            (*(v99 + 16))(v10[34], *(v26 + 56) + *(v99 + 72) * v27, v10[40]);

            v30 = 0;
          }

          else
          {

            v30 = 1;
          }

          (*v104)(v10[34], v30, 1, v10[40]);
          swift_getKeyPath();
          swift_getKeyPath();
          v44 = sub_1004D9B5C();
          v50 = v49;
          v51 = *v49;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *v50 = v51;
          if ((v52 & 1) == 0)
          {
            v51 = sub_10005D31C(v51);
            *v50 = v51;
          }

          v13 = v106;
          if (v14 >= v51[2])
          {
            goto LABEL_64;
          }

          sub_100270168(v10[34], v51 + v16 + v17 + *(v101 + 32));
LABEL_5:
          v44();

          v9 = v102;
          goto LABEL_6;
        }
      }
    }

    v31 = *(v112 + v110);
    if (!v31)
    {
      goto LABEL_65;
    }

    swift_unknownObjectRetain();
    v32 = sub_1004DD3FC();
    v33 = [v31 participantForIdentifier:v32];
    swift_unknownObjectRelease();

    if (v33)
    {
      v34 = [v33 identity];
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = [v34 identifier];

        v36 = sub_1004DD43C();
        v38 = v37;

        v39 = *(v109 + v98);
        if (*(v39 + 16) && (, v40 = sub_100056B84(v36, v38), v42 = v41, , (v42 & 1) != 0))
        {
          (*(v99 + 16))(v10[33], *(v39 + 56) + *(v99 + 72) * v40, v10[40]);

          v43 = 0;
        }

        else
        {

          v43 = 1;
        }

        (*v104)(v10[33], v43, 1, v10[40]);
        swift_getKeyPath();
        swift_getKeyPath();
        v44 = sub_1004D9B5C();
        v46 = v45;
        v47 = *v45;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *v46 = v47;
        if ((v48 & 1) == 0)
        {
          v47 = sub_10005D31C(v47);
          *v46 = v47;
        }

        v13 = v106;
        if (v14 >= v47[2])
        {
          goto LABEL_63;
        }

        sub_100270168(v10[33], v47 + v16 + v17 + *(v101 + 32));
        goto LABEL_5;
      }
    }

LABEL_6:
    ++v14;
    sub_100271090(v10[38]);
    if (v9 == v14)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

id SharePlayTogetherSession.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SharePlayTogetherSession(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10026D084@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharePlayTogetherSession(0);
  result = sub_1004D9AFC();
  *a2 = result;
  return result;
}

uint64_t SharePlayTogetherSession.Participant.socialProfile.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);

  return sub_100270168(a1, v3);
}

double SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = sub_1004DDA8C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1004DDA4C();
  swift_unknownObjectRetain();
  v6 = v1;
  v7 = sub_1004DDA3C();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  v8[5] = v6;
  sub_10011F560(0, 0, v4, &unk_1005244B0, v8);

  return result;
}

uint64_t sub_10026D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_1004DDA4C();
  v5[12] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();

  return _swift_task_switch(sub_10026D36C, v7, v6);
}

uint64_t sub_10026D36C()
{
  v22 = v0;

  if (qword_100633E28 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, static Logger.sharePlayTogether);
  swift_unknownObjectRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    v7 = [v4 description];
    v8 = sub_1004DD43C();
    v10 = v9;

    v11 = sub_1000343A8(v8, v10, &v21);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "groupSessionDidConnect %{public}s", v5, 0xCu);
    sub_100008D24(v6);
  }

  v12 = v0[11];
  *(v12 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) = 1;
  v13 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v14 = *(v12 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {

    v16 = v14 + 40;
    do
    {
      v17 = *(v16 - 8);

      v17(v18);

      v16 += 16;
      --v15;
    }

    while (v15);
  }

  *(v12 + v13) = _swiftEmptyArrayStorage;

  SharePlayTogetherSession.qrCode.getter(v0 + 2);
  sub_10001074C((v0 + 2), &qword_10063C360, &qword_1005246D0);
  type metadata accessor for SharePlayTogetherSession(0);
  sub_100270C2C(&qword_10063C320, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
  sub_1004D9AFC();
  sub_1004D9B1C();

  v19 = v0[1];

  return v19();
}

double SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  v6 = sub_1004DDA8C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1004DDA4C();
  swift_errorRetain();
  v7 = v2;
  v8 = sub_1004DDA3C();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a2;
  v9[5] = v7;
  sub_10011F560(0, 0, v5, &unk_1005244C0, v9);

  return result;
}

uint64_t sub_10026D8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_1004DDA4C();
  v5[13] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();

  return _swift_task_switch(sub_10026D960, v7, v6);
}

void sub_10026D960()
{
  v31 = v0;

  if (qword_100633E28 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1004D966C();
  sub_100035430(v2, static Logger.sharePlayTogether);
  swift_errorRetain();
  v3 = v1;
  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v6 = 138543618;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2082;
    swift_beginAccess();

    sub_100004CB8(&unk_10063C350, &unk_1005246C0);
    v10 = sub_1004DD88C();
    v12 = v11;

    v13 = sub_1000343A8(v10, v12, &v30);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Session invalidated with error %{public}@. Calling %{public}s observers.", v6, 0x16u);
    sub_10001074C(v7, &qword_100636460, &qword_100518BE0);

    sub_100008D24(v8);
  }

  v14 = *(v0 + 96);
  v15 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v26 = v15;
    v18 = *(v0 + 96);
    v19 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually;
    v20 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
    v28 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;

    v27 = v0;
    swift_beginAccess();
    v0 = 0;
    v21 = v16 + 40;
    while (1)
    {
      if (v0 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v23 = *(v21 - 8);
      if ((*(v18 + v19) & 1) != 0 || *(v18 + v20) == 1)
      {

        v22 = 1;
      }

      else
      {
        v24 = *(v18 + v28);
        if (!v24)
        {
          __break(1u);
          return;
        }

        v22 = [v24 isPlaceholder];
      }

      ++v0;
      v29 = v22;
      v23(&v29);

      v21 += 16;
      if (v17 == v0)
      {

        v15 = v26;
        v0 = v27;
        break;
      }
    }
  }

  *(v14 + v15) = _swiftEmptyArrayStorage;

  v25 = *(v0 + 8);

  v25();
}

uint64_t sub_10026DE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004DDA4C();
  *(v4 + 24) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();

  return _swift_task_switch(sub_100271418, v6, v5);
}

void sub_10026DF98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_100270388(a5, a6, a7);
  swift_unknownObjectRelease();
}

uint64_t sub_10026E05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004DDA4C();
  *(v4 + 24) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();

  return _swift_task_switch(sub_10026E0F4, v6, v5);
}

uint64_t sub_10026E0F4()
{

  sub_10026A06C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026E180()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.sharePlayTogether);
  sub_100035430(v0, static Logger.sharePlayTogether);
  return sub_1004D965C();
}

void sub_10026E248(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_100010530(a2, a3);

    v4 = a4;
  }
}

uint64_t static Logger.sharePlayTogether.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633E28 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.sharePlayTogether);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_10026E338(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100004CB8(&qword_10063C340, &qword_100524688);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10026E3BC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100004CB8(&qword_10063C328, &qword_100524678);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_10026E440(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10026E4C8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100004CB8(&qword_10063C338, &qword_100524680);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_10026E558(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10026F770(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10026E5D4(v6);
  return sub_1004DEBAC();
}

void sub_10026E5D4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1004DEF7C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100004CB8(&qword_10063C330, &qword_100515EA8);
        v6 = sub_1004DD8EC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10026E8EC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_10026E6E4(0, v2, 1, a1);
  }
}

void sub_10026E6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_scaledValueForValue_;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v7 v6[404]];
      if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
      {
        v12 = sub_1004DD43C();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      v15 = [v8 v6[404]];
      if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
      {
        v18 = sub_1004DD43C();
        v20 = v19;

        if (v12 != v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      if (v14 == v20)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v6 = &selRef_scaledValueForValue_;
LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_17:
      v21 = sub_1004DF08C();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v6 = &selRef_scaledValueForValue_;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        __break(1u);
        return;
      }

      v22 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_10026E8EC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_115:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_156;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v96 = v4;
LABEL_118:
      v119 = v96;
      v4 = *(v96 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v97 = *&v96[16 * v4];
          v98 = v96;
          v99 = *&v96[16 * v4 + 24];
          sub_10026F1A0((*a3 + 8 * v97), (*a3 + 8 * *&v96[16 * v4 + 16]), (*a3 + 8 * v99), v5);
          if (v114)
          {
            goto LABEL_126;
          }

          if (v99 < v97)
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_10026F720(v98);
          }

          if (v4 - 2 >= *(v98 + 2))
          {
            goto LABEL_144;
          }

          v100 = &v98[16 * v4];
          *v100 = v97;
          *(v100 + 1) = v99;
          v119 = v98;
          sub_10026F694(v4 - 1);
          v96 = v119;
          v4 = *(v119 + 16);
          if (v4 <= 1)
          {
            goto LABEL_126;
          }
        }

        goto LABEL_154;
      }

LABEL_126:

      return;
    }

LABEL_150:
    v96 = sub_10026F720(v4);
    goto LABEL_118;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
LABEL_4:
  v9 = v7;
  if (v7 + 1 >= v6)
  {
    v6 = v7 + 1;
    goto LABEL_33;
  }

  v104 = v8;
  v10 = *a3;
  v118 = *(*a3 + 8 * (v7 + 1));
  v5 = *(v10 + 8 * v7);
  v117 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v115 = sub_10026B694(&v118, &v117);
  if (v114)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = v7 + 2;
  v102 = v7;
  v109 = 8 * v7;
  v111 = v6;
  v11 = (v10 + 8 * v7 + 16);
  while (v6 != v4)
  {
    v13 = *(v11 - 1);
    v14 = *v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = [v14 identity];
    if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
    {
      v18 = sub_1004DD43C();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = [v13 identity];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 displayName];

      if (v23)
      {
        v24 = sub_1004DD43C();
        v5 = v25;
      }

      else
      {
        v24 = 0;
        v5 = 0xE000000000000000;
      }

      v6 = v111;
      if (v18 != v24)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v18)
      {
        goto LABEL_7;
      }
    }

    if (v20 == v5)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v12 = sub_1004DF08C();
LABEL_8:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    ++v4;
    ++v11;
    if ((v115 ^ v12))
    {
      v6 = v4 - 1;
      break;
    }
  }

  v9 = v102;
  v8 = v104;
  v26 = v109;
  if ((v115 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v6 < v102)
  {
    goto LABEL_149;
  }

  if (v102 < v6)
  {
    v27 = 8 * v6 - 8;
    v28 = v6;
    v29 = v102;
    do
    {
      if (v29 != --v28)
      {
        v30 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v31 = *(v30 + v26);
        *(v30 + v26) = *(v30 + v27);
        *(v30 + v27) = v31;
      }

      ++v29;
      v27 -= 8;
      v26 += 8;
    }

    while (v29 < v28);
  }

LABEL_33:
  v32 = a3[1];
  if (v6 >= v32)
  {
    goto LABEL_41;
  }

  if (__OFSUB__(v6, v9))
  {
    goto LABEL_146;
  }

  if (v6 - v9 >= a4)
  {
LABEL_41:
    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_145;
    }

    goto LABEL_42;
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_147;
  }

  if (v9 + a4 < v32)
  {
    v32 = v9 + a4;
  }

  if (v32 < v9)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v6 == v32)
  {
    goto LABEL_41;
  }

  v107 = v32;
  v103 = v9;
  v105 = v8;
  v116 = *a3;
  v4 = *a3 + 8 * v6 - 8;
  v79 = v9 - v6;
  while (2)
  {
    v110 = v4;
    v112 = v6;
    v80 = *(v116 + 8 * v6);
    v108 = v79;
LABEL_95:
    v81 = *v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v82 = [v80 identity];
    if (v82 && (v83 = v82, v84 = [v82 displayName], v83, v84))
    {
      v85 = sub_1004DD43C();
      v87 = v86;
    }

    else
    {
      v85 = 0;
      v87 = 0xE000000000000000;
    }

    v88 = [v81 identity];
    if (!v88 || (v89 = v88, v90 = [v88 displayName], v89, !v90))
    {
      v5 = 0;
      v92 = 0xE000000000000000;
      if (v85)
      {
        goto LABEL_105;
      }

LABEL_104:
      if (v87 != v92)
      {
        goto LABEL_105;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_93:
      v6 = v112 + 1;
      v4 = v110 + 8;
      v79 = v108 - 1;
      if (v112 + 1 != v107)
      {
        continue;
      }

      v9 = v103;
      v8 = v105;
      v7 = v107;
      if (v107 < v103)
      {
        goto LABEL_145;
      }

LABEL_42:
      v33 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v33;
      }

      else
      {
        v8 = sub_10003A490(0, *(v33 + 2) + 1, 1, v33);
      }

      v4 = *(v8 + 2);
      v34 = *(v8 + 3);
      v35 = v4 + 1;
      if (v4 >= v34 >> 1)
      {
        v8 = sub_10003A490((v34 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v35;
      v36 = &v8[16 * v4];
      *(v36 + 4) = v9;
      *(v36 + 5) = v7;
      v37 = *a1;
      if (!*a1)
      {
        goto LABEL_155;
      }

      if (v4)
      {
        while (2)
        {
          v38 = v35 - 1;
          if (v35 >= 4)
          {
            v43 = &v8[16 * v35 + 32];
            v44 = *(v43 - 64);
            v45 = *(v43 - 56);
            v49 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            if (v49)
            {
              goto LABEL_132;
            }

            v48 = *(v43 - 48);
            v47 = *(v43 - 40);
            v49 = __OFSUB__(v47, v48);
            v41 = v47 - v48;
            v42 = v49;
            if (v49)
            {
              goto LABEL_133;
            }

            v50 = &v8[16 * v35];
            v52 = *v50;
            v51 = *(v50 + 1);
            v49 = __OFSUB__(v51, v52);
            v53 = v51 - v52;
            if (v49)
            {
              goto LABEL_135;
            }

            v49 = __OFADD__(v41, v53);
            v54 = v41 + v53;
            if (v49)
            {
              goto LABEL_138;
            }

            if (v54 >= v46)
            {
              v72 = &v8[16 * v38 + 32];
              v74 = *v72;
              v73 = *(v72 + 1);
              v49 = __OFSUB__(v73, v74);
              v75 = v73 - v74;
              if (v49)
              {
                goto LABEL_142;
              }

              if (v41 < v75)
              {
                v38 = v35 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v42)
              {
                goto LABEL_134;
              }

              v55 = &v8[16 * v35];
              v57 = *v55;
              v56 = *(v55 + 1);
              v58 = __OFSUB__(v56, v57);
              v59 = v56 - v57;
              v60 = v58;
              if (v58)
              {
                goto LABEL_137;
              }

              v61 = &v8[16 * v38 + 32];
              v63 = *v61;
              v62 = *(v61 + 1);
              v49 = __OFSUB__(v62, v63);
              v64 = v62 - v63;
              if (v49)
              {
                goto LABEL_140;
              }

              if (__OFADD__(v59, v64))
              {
                goto LABEL_141;
              }

              if (v59 + v64 < v41)
              {
                goto LABEL_75;
              }

              if (v41 < v64)
              {
                v38 = v35 - 2;
              }
            }
          }

          else
          {
            if (v35 == 3)
            {
              v39 = *(v8 + 4);
              v40 = *(v8 + 5);
              v49 = __OFSUB__(v40, v39);
              v41 = v40 - v39;
              v42 = v49;
              goto LABEL_61;
            }

            v65 = &v8[16 * v35];
            v67 = *v65;
            v66 = *(v65 + 1);
            v49 = __OFSUB__(v66, v67);
            v59 = v66 - v67;
            v60 = v49;
LABEL_75:
            if (v60)
            {
              goto LABEL_136;
            }

            v68 = &v8[16 * v38];
            v70 = *(v68 + 4);
            v69 = *(v68 + 5);
            v49 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v49)
            {
              goto LABEL_139;
            }

            if (v71 < v59)
            {
              break;
            }
          }

          v4 = v38 - 1;
          if (v38 - 1 >= v35)
          {
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
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
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
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v5 = v8;
          v76 = *&v8[16 * v4 + 32];
          v77 = *&v8[16 * v38 + 40];
          sub_10026F1A0((*a3 + 8 * v76), (*a3 + 8 * *&v8[16 * v38 + 32]), (*a3 + 8 * v77), v37);
          if (v114)
          {
            goto LABEL_126;
          }

          if (v77 < v76)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10026F720(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_131;
          }

          v78 = v5 + 16 * v4;
          *(v78 + 32) = v76;
          *(v78 + 40) = v77;
          v119 = v5;
          sub_10026F694(v38);
          v8 = v119;
          v35 = *(v119 + 16);
          if (v35 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    break;
  }

  v5 = sub_1004DD43C();
  v92 = v91;

  if (v85 == v5)
  {
    goto LABEL_104;
  }

LABEL_105:
  v93 = sub_1004DF08C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if ((v93 & 1) == 0)
  {
    goto LABEL_93;
  }

  if (v116)
  {
    v94 = *v4;
    v80 = *(v4 + 8);
    *v4 = v80;
    *(v4 + 8) = v94;
    v4 -= 8;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}