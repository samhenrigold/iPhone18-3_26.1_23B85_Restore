void sub_26F1959E8(objc_class *a1)
{
  InstanceMethod = class_getInstanceMethod(a1, sel_prepareLayout);
  v3 = class_getInstanceMethod(a1, sel_tmlPrepareLayout);

  method_exchangeImplementations(InstanceMethod, v3);
}

uint64_t sub_26F195A40(void *a1)
{
  [a1 tmlPrepareLayout];

  return [a1 emitTMLSignal:@"prepareLayout" withArguments:0];
}

void sub_26F195B48(uint64_t a1)
{
  v2 = objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", "8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C=-I98/HeBz(hhp&ZF+BZ]I]x>qGQz/fVqz!%l3AV#b62XmH.wOkB[wFbh=vRPE:Btw^Q3mG.evpShPz!a02Bxrf#xI-bTvqPN$wPz&Vz/6DfwPRT8zBeeTv}#RR8w&!*Aa9=}zdN*2A=R<2wnbK}x(v($A^nMu3j*S+ze:r5BzkVhltQNIyz3!Wy&r*0a$vzEvpShPz!a02Bxrf#xI-bTvqPN$wPz&Mv@Dj6y?mZ5z/d)Tz!0Mzb76.yq+H5hz/Pz=A=kGhv@$:=wP{HWzGG]qy&0W6l$HgCxjk)[b2!)<Ab](cBZ]I]x>qGQz/fVqz!%l3AZTRLmRM:OB7=9=8zhvbC4>JilVl<:A=k=gwPwz6q+H5hz/Pz=A=kGhv@$:=wP{HWzGG]qy&0W6c&$>9mSiA!wmoN]z/b", strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C=-I98/HeBz(hhp&ZF+BZ]I]x>qGQz/fVqz!%l3AV#b62XmH.wOkB[wFbh=vRPE:Btw^Q3mG.evpShPz!a02Bxrf#xI-bTvqPN$wPz&Vz/6DfwPRT8zBeeTv}#RR8w&!*Aa9=}zdN*2A=R<2wnbK}x(v($A^nMu3j*S+ze:r5BzkVhltQNIyz3!Wy&r*0a$vzEvpShPz!a02Bxrf#xI-bTvqPN$wPz&Mv@Dj6y?mZ5z/d)Tz!0Mzb76.yq+H5hz/Pz=A=kGhv@$:=wP{HWzGG]qy&0W6l$HgCxjk)[b2!)<Ab](cBZ]I]x>qGQz/fVqz!%l3AZTRLmRM:OB7=9=8zhvbC4>JilVl<:A=k=gwPwz6q+H5hz/Pz=A=kGhv@$:=wP{HWzGG]qy&0W6c&$>9mSiA!wmoN]z/b"), 0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

void sub_26F195DBC(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a83847776000000_7 length:strlen(a83847776000000_7) freeWhenDone:0];
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

id sub_26F196068(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277D38138];
  v7 = MEMORY[0x277CCA980];
  v8 = a2;
  v9 = [v7 decimalNumberWithString:a3];
  v10 = [v6 summaryItemWithLabel:v8 amount:v9 type:a4];

  return v10;
}

id sub_26F196100(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D37F98];
  v3 = a2;
  v9 = 0;
  v4 = [[v2 alloc] initWithData:v3 error:&v9];

  v5 = v9;
  v6 = v5;
  if (v5)
  {
    NSLog(&cfstr_WrongPassData.isa, v5);
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t sub_26F1961A8()
{
  v0 = NSClassFromString(&cfstr_Pkpaymentautho.isa);

  return MEMORY[0x2821F9670](v0, sel_canMakePayments);
}

uint64_t sub_26F1961D8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NSClassFromString(&cfstr_Pkpaymentautho.isa) canMakePaymentsUsingNetworks:v2];

  return v3;
}

uint64_t sub_26F19621C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [NSClassFromString(&cfstr_Pkpaymentautho.isa) canMakePaymentsUsingNetworks:v4 capabilities:a3];

  return v5;
}

uint64_t sub_26F196E34()
{
  v0 = objc_alloc_init(TMLAspectsRegistration);
  v1 = qword_2806D9058;
  qword_2806D9058 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_26F1972A0(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void sub_26F197B34(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a83847776000000_12 length:strlen(a83847776000000_12) freeWhenDone:0];
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

id sub_26F197CCC()
{
  v0 = objc_alloc_init(MEMORY[0x277CC5A40]);

  return v0;
}

id sub_26F197CFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CC5A28] eventWithEventStore:a2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_26F197D68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CC5988] alarmWithAbsoluteDate:a2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_26F1980E4(uint64_t a1)
{
  v6 = NSStringFromClass(*(a1 + 32));
  v1 = v6;
  v2 = [v6 UTF8String];
  v3 = dispatch_get_global_queue(-2, 0);
  v4 = dispatch_queue_create_with_target_V2(v2, 0, v3);
  v5 = qword_2806D9070;
  qword_2806D9070 = v4;
}

void sub_26F198174(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if ([v6 isObject] && (objc_msgSend(v8, "isObject") & 1) != 0)
  {
    v9 = [v6 toString];
    v10 = [TMLJSEnvironment convertJsValue:v7 toType:16];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
    v12 = [TMLBlock blockWithFunction:v8 argumentsEncoding:v11];

    v13 = qword_2806D9070;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_26F19835C;
    block[3] = &unk_279DC5888;
    v22 = v9;
    v23 = v10;
    v24 = v12;
    v14 = v12;
    v15 = v10;
    v16 = v9;
    dispatch_async(v13, block);
  }

  else
  {
    v17 = MEMORY[0x277CD4658];
    v18 = [MEMORY[0x277CD4640] currentContext];
    v19 = [v17 valueWithNewErrorFromMessage:@"Block is not a function" inContext:v18];
    v20 = [MEMORY[0x277CD4640] currentContext];
    [v20 setException:v19];
  }
}

void sub_26F19835C(uint64_t a1)
{
  v2 = [TMLBackgroundBlock executeFunction:*(a1 + 32) argument:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_26F198418;
  v5[3] = &unk_279DC5860;
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t sub_26F198470()
{
  v0 = objc_alloc_init(MEMORY[0x277CD4660]);
  v1 = qword_2806D9080;
  qword_2806D9080 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26F198888(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = sub_26F198914(v7);
  if (v4)
  {
    v5 = v4;
    v6 = sub_26F198980(v7, v4, 1);
    [a1 addTarget:v6 action:sel_controlAction_forEvent_ forControlEvents:v5];
  }
}

uint64_t sub_26F198914(void *a1)
{
  v1 = qword_2806D90A8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_26F200BA0();
  }

  v3 = [qword_2806D90A0 objectForKeyedSubscript:v2];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

TMLUIControlActionTarget *sub_26F198980(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (qword_2806D9098 != -1)
  {
    sub_26F200BB4();
  }

  v6 = [qword_2806D9090 objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3 == 0;
  }

  if (!v7)
  {
    v6 = [[TMLUIControlActionTarget alloc] initWithSignal:v5 controlEvent:a2];
    [qword_2806D9090 setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

void sub_26F198A3C(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = sub_26F198914(v7);
  v5 = v7;
  if (v4)
  {
    v6 = sub_26F198980(v7, v4, 0);
    if (v6)
    {
      [a1 removeTarget:v6 action:sel_controlAction_forEvent_ forControlEvents:v4];
    }

    v5 = v7;
  }
}

uint64_t sub_26F198C00()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:14];
  v1 = qword_2806D9090;
  qword_2806D9090 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26F198C44()
{
  v0 = qword_2806D90A0;
  qword_2806D90A0 = &unk_287F57248;
}

void sub_26F198D20(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:"8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003zdta8avg!C4CMkmpZaOr+Vb?lVl<:A=k=gwPwz0ry]}]C4>O$BzkVhlVl<:A=k=gwPw$a3i+0:wO#P52sRoOC4CMka@Q!1wN]H%r+Vb?l$HgCxjk length:? freeWhenDone:?][5^An-ygQ)%a@Q^}wP?T5Bw)p1A+b<(mn36)wO#P*Bz(hhg9u]kv{%m+wO:!Cx([6bxaL7/4p-*:v}xEBwncd1zF6rJ0sxAcog9c7wO#3!AZKIUz/YGg5!F5mr+Vb?lVl<:A=k=gwPw$h3j?h>z*cm<z/fbMB-..zzw07Yz/oCo7yyT[wO+{/BzkVhq/)q3wFb8VzGDY@a}+j*wmYN*xjk)[5^An-ygQ)%a@H.1B7/GoB3<wNv}xEyB-..zzw07Yz/oCo8vv6$wO+{/By!#IvqGH)wmoI15^q3eq!p4TG-II}mn36)wO#P<x>qGQz/fVqz!%l3AUn{-nMGLpCscp^BAhqoy?mSh9srJ&y&13lB3<wLwO#3!A.{^/C4>Ji5^hVZz!{Qg3j7fNy?ml/By=6?z^)D)v@@[f3jQAWy&sJsmpZaOx(mL@1y=p/y:6z$1.z<*zGDG@mn36)wO#PlJSxF2mn36)wO#P<x>qGRwO+{<vru68Cm20{C4CMkr+Vb?lVl<:A=k=gwPws.8y2N@v@DmbA=k=gwPwy#mn36)wO#P<x>qGQz/fVqz!%l3AVbw]24q1-x(v(418hT{a$veEwO#P<x>qGQz/fVqz!%l3AYN-Bwj7oLAbo9cwMJO/xHccIx(v(Ibk83A8avg=vqGH)wmoHCxM4*gwPygIy?ml/By=T:3k^nYy?mG{vra.Gz/oYdAZTRLmRM:OB7=9=8ybU2v{%g+zE^f@v}Y!0B7Gw85K/tWvqGH)wmoHCxM4*gwPxg2b18+Pv{%g+zE^f@lUHyRB7GwWx>fOtzEWl]5ciW{3j*SPy?mG{vrb<>z/oYdAUn%Mog9c7wO#3!AZKIUz/YGgc&$O!3l-[/y?mG{vra.Gz/oYdA-lK=wN/*@z/d%Swj73szF9I(0u9i<4}x3:wO#3!A:@^3z/YGg5!NM9lT:!xzE^f@lUHyRB7Gwu0Wri$3kVc7mrSlWBvx.OBxi9!Csl1UwOkB[wG>K&gg+SuzGFrTx()x&wP{HWzGG]qy&0W6l$G$sB.(d!vqGH)wmoHFz/OP:CsuW^zGG}h5e(]63s!0(BAhqoy?mS18avg!C4CMkmpZaOr+Vb?lVl<:A=k=gwPxg2b7/[67Id=3zGFrTx()x&wP{HWzGG]qy&0W65ciW%3jpoYzGG]qy&0W65/BbhmrSlWBvx.OBxi9!Cscp^BAhqoy?mS94giqFv@#B6zw04=zGE6PwP?T5Bvx.OBxi9!Cscp^BAhqoy?mSFwnbNwz/6DfwPRG+x([2Ov@#B6zAolMmrSlWBw3s&",  strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003zdta8avg!C4CMkmpZaOr+Vb?lVl<:A=k=gwPwz0ry]}]C4>O$BzkVhlVl<:A=k=gwPw$a3i+0:wO#P52sRoOC4CMka@Q!1wN]H%r+Vb?l$HgCxjk)[5^An-ygQ)%a@Q^}wP?T5Bw)p1A+b<(mn36)wO#P*Bz(hhg9u]kv{%m+wO:!Cx([6bxaL7/4p-*:v}xEBwncd1zF6rJ0sxAcog9c7wO#3!AZKIUz/YGg5!F5mr+Vb?lVl<:A=k=gwPw$h3j?h>z*cm<z/fbMB-..zzw07Yz/oCo7yyT[wO+{/BzkVhq/)q3wFb8VzGDY@a}+j*wmYN*xjk)[5^An-ygQ)%a@H.1B7/GoB3<wNv}xEyB-..zzw07Yz/oCo8vv6$wO+{/By!#IvqGH)wmoI15^q3eq!p4TG-II}mn36)wO#P<x>qGQz/fVqz!%l3AUn{-nMGLpCscp^BAhqoy?mSh9srJ&y&13lB3<wLwO#3!A.{^/C4>Ji5^hVZz!{Qg3j7fNy?ml/By=6?z^)D)v@@[f3jQAWy&sJsmpZaOx(mL@1y=p/y:6z$1.z<*zGDG@mn36)wO#PlJSxF2mn36)wO#P<x>qGRwO+{<vru68Cm20{C4CMkr+Vb?lVl<:A=k=gwPws.8y2N@v@DmbA=k=gwPwy#mn36)wO#P<x>qGQz/fVqz!%l3AVbw]24q1-x(v(418hT{a$veEwO#P<x>qGQz/fVqz!%l3AYN-Bwj7oLAbo9cwMJO/xHccIx(v(Ibk83A8avg=vqGH)wmoHCxM4*gwPygIy?ml/By=T:3k^nYy?mG{vra.Gz/oYdAZTRLmRM:OB7=9=8ybU2v{%g+zE^f@v}Y!0B7Gw85K/tWvqGH)wmoHCxM4*gwPxg2b18+Pv{%g+zE^f@lUHyRB7GwWx>fOtzEWl]5ciW{3j*SPy?mG{vrb<>z/oYdAUn%Mog9c7wO#3!AZKIUz/YGgc&$O!3l-[/y?mG{vra.Gz/oYdA-lK=wN/*@z/d%Swj73szF9I(0u9i<4}x3:wO#3!A:@^3z/YGg5!NM9lT:!xzE^f@lUHyRB7Gwu0Wri$3kVc7mrSlWBvx.OBxi9!Csl1UwOkB[wG>K&gg+SuzGFrTx()x&wP{HWzGG]qy&0W6l$G$sB.(d!vqGH)wmoHFz/OP:CsuW^zGG}h5e(]63s!0(BAhqoy?mS18avg!C4CMkmpZaOr+Vb?lVl<:A=k=gwPxg2b7/[67Id=3zGFrTx()x&wP{HWzGG]qy&0W65ciW%3jpoYzGG]qy&0W65/BbhmrSlWBvx.OBxi9!Cscp^BAhqoy?mS94giqFv@#B6zw04=zGE6PwP?T5Bvx.OBxi9!Cscp^BAhqoy?mSFwnbNwz/6DfwPRG+x([2Ov@#B6zAolMmrSlWBw3s&"),  0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

void sub_26F198F5C(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:"8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003G86{2sz6Iz!%uja}L7+xl4M{zw0a+y&r:77Y+/]3jpoYy&st length:? freeWhenDone:?]Aa9l/5^98{AU[*35deOHy&B5@5^q(-z^^-80u@S[6MXwpx(mMYwPhW3B7Glhvruj4zw0d{BAh8kxbyT[4*&CGy&%q41.IN?vrrs!a}s}ZA+e+]1.IN?vrrs!a@*}5zGP/9wPyNUlVl*Xz/fc7BAn5$B.L-n7Y=x]3kE5?y&st}x([2^wN[qKwO2:Cy&%q25e>(.0DF!Rw]8x]Bq+F[0Cr2Gw]8x]Bq+F[0B=VBw]8x]BrROMv@Dg4A-V%%xI@zLi+JFAwO%Lry&%qIghEpnx(mTbs7#+&qE%xeA+e*1ltQ^Ql2pHNvgS$*3jl/O5^q(-z^^-a3jl/D5^q(-z^^-a3jl/y5^q(-z^^-a3jl/x5^q(-z^^-i9CGz9Bxrf#xI@zLi+JFAwO%Lry&%qIvqG)@vlcez3kvh(x()A<BzaM-wjHVKwO%?JB.89}8vu/LAUnK/y&r:78vu/Lxa+wWy&r:78vu/LvIe&Ry&r:7a@s%hx()A<BzaM-wiavzwO2:uvR*f#iX&M15mYS{z/O][Bza3ilVl^VAU5^23KM]A5^z&TBA}?pa}=zoz!%ujs7#+&lQ%HZy&stPgbogEx(mTbs7#+&lQ%HZy&st95e>]-0B(-Dv}G?dAaHj8x(mTbs7#+&lQ%HZy&stPgh^Hrv@Dg4A-V%%xI@zLm@&fLzBeeZwKgcKxKIC-8vu/LAUnK/y&r:78vu/Lxa+wWy&r:78vu/LvIe&Ry&r:78vu/Lvg&-Qy&r:7a%esBz!%ujs7#+&qE%x1xl4M{zAqlyB.9Qxy&B5@iX&@c4}xJ]z/O][BzaP{A+PA75d/-%3j.8/Ab]JhwO#P#BzkVh5^AA0A+PA7a}Vtnz!%ujs7#+&q/)4]zF80qX=SoBlRf:Yy&<lea@7B(z/{evB-Zn/D2<P4vrcx%C]cMa7ZZT?B-.OBBv*sTxjRXXlRf<^vp%c*0u@6Z1A4T+wFbh*BAh8kxbyT[6BCdXzG6-uoj-x&5^qY:A::kg0u@A?3sO3#A+P09By/Ia3s)<XBzkVhvrcSg0wVFs4RxA>By/F]x([2-vqPM!5e(2=1A4T+wFbh*BAh8kxcE)qw[=76wPy<^BzaATzdL:-As9>3x(4)5A-V%%xII#MwMJO/xI08XB-ZC*A:-/@By/Gl5d/-&3iUlPzdKs:B98CpzF6>43i>DTA:-*a5^&e-v@#B6zEENha%XWJx(4)5A-V%%xII#MwJC3HBzal-Acln0vrb^[wPRH7B2(6A3j.b*Bxh*^B.a3XA.x$?5ciWW3i+PYy&%q425^%=wN/*24gihMwQa))B98CpzF7d8B7GC]vqH6$i+AqJoj-xfgaS+uC42ifwKZPUoj-wW5e>#+18zE[5^AA0A+PA7a}eT6y&%qUz/OGZC@^Y23jy]^BvoXLvrDydA$wu@3V/)3l$G$sB.(ev3jd4AlRf<^vp%c",  strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003G86{2sz6Iz!%uja}L7+xl4M{zw0a+y&r:77Y+/]3jpoYy&st)Aa9l/5^98{AU[*35deOHy&B5@5^q(-z^^-80u@S[6MXwpx(mMYwPhW3B7Glhvruj4zw0d{BAh8kxbyT[4*&CGy&%q41.IN?vrrs!a}s}ZA+e+]1.IN?vrrs!a@*}5zGP/9wPyNUlVl*Xz/fc7BAn5$B.L-n7Y=x]3kE5?y&st}x([2^wN[qKwO2:Cy&%q25e>(.0DF!Rw]8x]Bq+F[0Cr2Gw]8x]Bq+F[0B=VBw]8x]BrROMv@Dg4A-V%%xI@zLi+JFAwO%Lry&%qIghEpnx(mTbs7#+&qE%xeA+e*1ltQ^Ql2pHNvgS$*3jl/O5^q(-z^^-a3jl/D5^q(-z^^-a3jl/y5^q(-z^^-a3jl/x5^q(-z^^-i9CGz9Bxrf#xI@zLi+JFAwO%Lry&%qIvqG)@vlcez3kvh(x()A<BzaM-wjHVKwO%?JB.89}8vu/LAUnK/y&r:78vu/Lxa+wWy&r:78vu/LvIe&Ry&r:7a@s%hx()A<BzaM-wiavzwO2:uvR*f#iX&M15mYS{z/O][Bza3ilVl^VAU5^23KM]A5^z&TBA}?pa}=zoz!%ujs7#+&lQ%HZy&stPgbogEx(mTbs7#+&lQ%HZy&st95e>]-0B(-Dv}G?dAaHj8x(mTbs7#+&lQ%HZy&stPgh^Hrv@Dg4A-V%%xI@zLm@&fLzBeeZwKgcKxKIC-8vu/LAUnK/y&r:78vu/Lxa+wWy&r:78vu/LvIe&Ry&r:78vu/Lvg&-Qy&r:7a%esBz!%ujs7#+&qE%x1xl4M{zAqlyB.9Qxy&B5@iX&@c4}xJ]z/O][BzaP{A+PA75d/-%3j.8/Ab]JhwO#P#BzkVh5^AA0A+PA7a}Vtnz!%ujs7#+&q/)4]zF80qX=SoBlRf:Yy&<lea@7B(z/{evB-Zn/D2<P4vrcx%C]cMa7ZZT?B-.OBBv*sTxjRXXlRf<^vp%c*0u@6Z1A4T+wFbh*BAh8kxbyT[6BCdXzG6-uoj-x&5^qY:A::kg0u@A?3sO3#A+P09By/Ia3s)<XBzkVhvrcSg0wVFs4RxA>By/F]x([2-vqPM!5e(2=1A4T+wFbh*BAh8kxcE)qw[=76wPy<^BzaATzdL:-As9>3x(4)5A-V%%xII#MwMJO/xI08XB-ZC*A:-/@By/Gl5d/-&3iUlPzdKs:B98CpzF6>43i>DTA:-*a5^&e-v@#B6zEENha%XWJx(4)5A-V%%xII#MwJC3HBzal-Acln0vrb^[wPRH7B2(6A3j.b*Bxh*^B.a3XA.x$?5ciWW3i+PYy&%q425^%=wN/*24gihMwQa))B98CpzF7d8B7GC]vqH6$i+AqJoj-xfgaS+uC42ifwKZPUoj-wW5e>#+18zE[5^AA0A+PA7a}eT6y&%qUz/OGZC@^Y23jy]^BvoXLvrDydA$wu@3V/)3l$G$sB.(ev3jd4AlRf<^vp%c"),  0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

id sub_26F199C40(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 rangeOfString:@"."];
  v9 = [v7 objectForKey:v6];
  if (v9 || v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v9;
    v13 = v12;
  }

  else
  {
    v10 = [v6 substringToIndex:v8];
    v11 = [v6 substringFromIndex:v8 + 1];
    v12 = [v7 objectForKey:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [a1 tmlValueForKeyPath:v11 inDictionary:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

void sub_26F19A348(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x30uLL, 0x10700407919B52CuLL);
  *(*(*(a1 + 32) + 48) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F19AB68(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 40) setTMLValue:v5 forKeyPath:v4];
}

void TouchML_init(uint64_t result, uint64_t a2)
{
  if (qword_2806D90C0 != -1)
  {
    sub_26F200BC8();
  }
}

uint64_t sub_26F19AF60()
{
  [MEMORY[0x277D82BB8] tmlLoadCategory];
  [MEMORY[0x277D75D18] tmlLoadCategory];
  [MEMORY[0x277D75D28] tmlLoadCategory];
  [MEMORY[0x277D75BB8] tmlLoadCategory];
  v0 = MEMORY[0x277D75300];

  return [v0 tmlLoadCategory];
}

id TMLAttributedStringForMarkdown(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = a1;
  v9 = [v3 dictionaryWithDictionary:v4];
  v6 = [TMLMarkdownParser parse:v5 tags:&v9 withRules:0];

  v7 = [TMLAttributedString attributedStringWithFormat:v6 attributes:v4];

  return v7;
}

id sub_26F19B3C8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = [objc_alloc(*(a1 + 32)) initWithRect:{a2, a3, a4, a5}];

  return v5;
}

BOOL sub_26F19B428(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 rect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 rect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;

  return CGRectEqualToRect(*&v21, *&v25);
}

BOOL sub_26F19B4D4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 rect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 rect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;

  return CGRectIntersectsRect(*&v21, *&v25);
}

BOOL sub_26F19B580(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 rect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 rect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;

  return CGRectContainsRect(*&v21, *&v25);
}

BOOL sub_26F19B62C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 rect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 point];
  v14 = v13;
  v16 = v15;

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  v21 = v14;
  v22 = v16;

  return CGRectContainsPoint(*&v17, *&v21);
}

id sub_26F19B6C0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 alloc];
  [v6 rect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v5 rect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v29.origin.x = v17;
  v29.origin.y = v19;
  v29.size.width = v21;
  v29.size.height = v23;
  v28 = CGRectIntersection(v27, v29);
  v24 = [v7 initWithRect:{v28.origin.x, v28.origin.y, v28.size.width, v28.size.height}];

  return v24;
}

id sub_26F19B79C(uint64_t a1, void *a2, CGFloat a3, CGFloat a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 alloc];
  [v7 rect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  v21 = CGRectInset(v20, a3, a4);
  v17 = [v8 initWithRect:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];

  return v17;
}

id sub_26F19B840(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 CGRectValue];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v12 = [objc_alloc(*(a1 + 32)) initWithRect:{v5, v7, v9, v11}];

  return v12;
}

id sub_26F19C188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(*(a1 + 32)) initWithRange:{a2, a3}];

  return v3;
}

void sub_26F19CB00(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_26F19CC14;
  v2[3] = &unk_279DC5A28;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_26F19CB9C(v2);
}

void sub_26F19CB9C(void *a1)
{
  v1 = MEMORY[0x277CCACC8];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_26F19CC14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) value];
  sub_26F19CC6C(v1, v2, 0);
}

void sub_26F19CC6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26F19FCCC;
  v9[3] = &unk_279DC5A28;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [TMLJSEnvironment runInContext:a1 block:v9];
}

void sub_26F19CD34(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_26F19CDEC;
  v5[3] = &unk_279DC5A50;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v4 = v3;
  sub_26F19CB9C(v5);
}

void sub_26F19CDEC(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) value];
  v4 = *(a1 + 48);
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  sub_26F19CC6C(v2, v3, v6);

  if (!v4)
  {
  }
}

void sub_26F19CEC0(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_26F19CF64;
  v4[3] = &unk_279DC5AA0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  sub_26F19CB9C(v4);
}

void sub_26F19CF64(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) value];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  sub_26F19CC6C(v2, v3, v5);
}

void sub_26F19D024(uint64_t a1, float a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_26F19D0D0;
  v4[3] = &unk_279DC5AF0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  sub_26F19CB9C(v4);
}

void sub_26F19D0D0(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) value];
  LODWORD(v4) = *(a1 + 48);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  sub_26F19CC6C(v2, v3, v6);
}

void sub_26F19D190(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26F19D274;
  v9[3] = &unk_279DC5B40;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  sub_26F19CB9C(v9);
}

void sub_26F19D274(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) value];
  v4 = *(a1 + 48);
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v9[0] = v5;
  v6 = *(a1 + 56);
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v9[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  sub_26F19CC6C(v2, v3, v8);

  if (!v6)
  {

    if (v4)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_7:
}

void sub_26F19D384(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_26F19D44C;
  v8[3] = &unk_279DC5B90;
  v9 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = a2;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  sub_26F19CB9C(v8);
}

void sub_26F19D44C(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) value];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v8[0] = v4;
  v5 = *(a1 + 48);
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v8[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  sub_26F19CC6C(v2, v3, v7);

  if (!v5)
  {
  }
}

void sub_26F19D540(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26F19D644;
  v13[3] = &unk_279DC5BE0;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  sub_26F19CB9C(v13);
}

void sub_26F19D644(uint64_t a1)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) value];
  v4 = *(a1 + 48);
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v11[0] = v5;
  v6 = *(a1 + 56);
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = v7;
  v8 = *(a1 + 64);
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v11[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  sub_26F19CC6C(v2, v3, v10);

  if (v8)
  {
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_12:

    if (v4)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_10;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_10:
}

void sub_26F19D78C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26F19D878;
  v11[3] = &unk_279DC5C30;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v7;
  v16 = a3;
  v15 = v8;
  v9 = v8;
  v10 = v7;
  sub_26F19CB9C(v11);
}

void sub_26F19D878(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) value];
  v4 = *(a1 + 48);
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{*(a1 + 64), v5}];
  v10[1] = v6;
  v7 = *(a1 + 56);
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v10[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  sub_26F19CC6C(v2, v3, v9);

  if (!v7)
  {
  }

  if (!v4)
  {
  }
}

void sub_26F19D9A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26F19DAD0;
  v17[3] = &unk_279DC5C80;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  sub_26F19CB9C(v17);
}

void sub_26F19DAD0(uint64_t a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 32);
  v2 = [*(a1 + 40) value];
  v3 = *(a1 + 48);
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = v4;
  v5 = *(a1 + 56);
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = v6;
  v7 = *(a1 + 64);
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v13[2] = v8;
  v9 = *(a1 + 72);
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v13[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  sub_26F19CC6C(v12, v2, v11);

  if (v9)
  {
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v7)
    {
LABEL_11:
      if (v5)
      {
        goto LABEL_12;
      }

LABEL_16:

      if (v3)
      {
        goto LABEL_13;
      }

LABEL_17:

      goto LABEL_13;
    }
  }

  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_13:
}

id sub_26F19E25C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) value];
  v3 = sub_26F19E2B8(v1, v2, 0);

  return v3;
}

id sub_26F19E2B8(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCACC8];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  [v5 isMainThread];
  v9 = +[TMLJSEnvironment currentContext];
  [TMLJSEnvironment setCurrentContext:v8];

  v10 = [v7 context];
  [v10 setException:0];

  v11 = [v7 callWithArguments:v6];
  sub_26F19FD30(v11);
  objc_claimAutoreleasedReturnValue();

  v12 = [v11 toObject];
  if (v12)
  {
    v13 = [TMLJSEnvironment convertJsValue:v11 toType:16];
  }

  else
  {
    v13 = 0;
  }

  [TMLJSEnvironment setCurrentContext:v9];

  return v13;
}

id sub_26F19E3DC(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) value];
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = sub_26F19E2B8(v4, v5, v7);

  if (!v3)
  {
  }

  return v8;
}

id sub_26F19E4D4(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) value];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = sub_26F19E2B8(v3, v4, v6);

  return v7;
}

id sub_26F19E5B8(uint64_t a1, float a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) value];
  *&v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = sub_26F19E2B8(v3, v4, v7);

  return v8;
}

id sub_26F19E69C(uint64_t a1, void *a2, void *a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) value];
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = v9;
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v12 = sub_26F19E2B8(v7, v8, v11);

  if (v6)
  {
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v5)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v12;
}

id sub_26F19E7DC(uint64_t a1, uint64_t a2, void *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) value];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v13[0] = v8;
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = sub_26F19E2B8(v6, v7, v10);

  if (!v5)
  {
  }

  return v11;
}

id sub_26F19E8F8(uint64_t a1, uint64_t a2, void *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) value];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v13[0] = v8;
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = sub_26F19E2B8(v6, v7, v10);

  if (!v5)
  {
  }

  return v11;
}

id sub_26F19EA14(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) value];
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = v12;
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v18[1] = v13;
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v18[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v16 = sub_26F19E2B8(v10, v11, v15);

  if (v9)
  {
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:

  return v16;
}

id sub_26F19EB98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) value];
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{a3, v11}];
  v17[1] = v12;
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v15 = sub_26F19E2B8(v9, v10, v14);

  if (!v8)
  {
  }

  if (!v7)
  {
  }

  return v15;
}

id sub_26F19ECF4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v21 = [*(a1 + 40) value];
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v23[0] = v14;
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v23[1] = v15;
  v16 = v11;
  if (!v11)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v23[2] = v16;
  v17 = v12;
  if (!v12)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v23[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:{4, v21}];
  v19 = sub_26F19E2B8(v13, v22, v18);

  if (v12)
  {
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v11)
    {
LABEL_11:
      if (v10)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v9)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:

  return v19;
}

id sub_26F19F00C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isObject] & 1) == 0)
  {
    v9 = MEMORY[0x277CD4658];
    v10 = [MEMORY[0x277CD4640] currentContext];
    v11 = @"Value is not a function";
    goto LABEL_6;
  }

  v7 = [(__CFString *)v6 integerValue];
  if (v7 >= 1)
  {
    v8 = v7;
    if (v7 >= 5)
    {
      v9 = MEMORY[0x277CD4658];
      v10 = [MEMORY[0x277CD4640] currentContext];
      v11 = @"Argument count exceeds maximum supported value";
LABEL_6:
      v12 = [v9 valueWithNewErrorFromMessage:v11 inContext:v10];
      v13 = [MEMORY[0x277CD4640] currentContext];
      [v13 setException:v12];

      v14 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    do
    {
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
      [(__CFString *)v16 addObject:v17];

      --v8;
    }

    while (v8);
    v15 = [(__CFString *)v16 componentsJoinedByString:&stru_287F301C0];

    goto LABEL_12;
  }

  if (([(__CFString *)v6 isEqualToString:@"undefined"]& 1) != 0)
  {
    v15 = &stru_287F301C0;
    v16 = v6;
LABEL_12:

LABEL_13:
    v14 = [objc_alloc(*(a1 + 32)) initWithFunction:v5 argumentsEncoding:v15];
    v6 = v15;
    goto LABEL_14;
  }

  v15 = sub_26F19F1F0(v6);

  if (v15)
  {
    goto LABEL_13;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

id sub_26F19F1F0(void *a1)
{
  v1 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_26F19FDFC;
  v16 = sub_26F19FE0C;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v1 length])
  {
    v2 = [v1 componentsSeparatedByString:{@", "}];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_26F19FE14;
    v11[3] = &unk_279DC5EA0;
    v11[4] = &v12;
    [v2 enumerateObjectsUsingBlock:v11];
  }

  v3 = v13[5];
  if (v3)
  {
    v4 = [v3 componentsJoinedByString:&stru_287F301C0];
  }

  else
  {
    v5 = MEMORY[0x277CD4658];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported argument type <%@>", v1];
    v7 = [MEMORY[0x277CD4640] currentContext];
    v8 = [v5 valueWithNewErrorFromMessage:v6 inContext:v7];
    v9 = [MEMORY[0x277CD4640] currentContext];
    [v9 setException:v8];

    v4 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v4;
}

void sub_26F19F3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F19F3DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = a2;
  v6 = a4;
  v7 = a3;
  NSClassFromString(&cfstr_Nsblock.isa);
  if (objc_opt_isKindOfClass())
  {
    v8 = sub_26F19F1F0(v7);

    if (!v8)
    {
      goto LABEL_57;
    }

    v9 = [v8 length];
    if (v9 > 1)
    {
      switch(v9)
      {
        case 2:
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "@"];
          v18 = [v8 isEqualToString:v17];

          if (v18)
          {
            v11 = MEMORY[0x27438BB60](v41);
            v16 = [v6 objectAtIndexedSubscript:0];
            if (v16)
            {
              [v6 objectAtIndexedSubscript:0];
            }

            else
            {
              [MEMORY[0x277CBEB68] null];
            }
            v31 = ;
            v32 = [v6 objectAtIndexedSubscript:1];
            if (v32)
            {
              [v6 objectAtIndexedSubscript:1];
            }

            else
            {
              [MEMORY[0x277CBEB68] null];
            }
            v33 = ;
            (v11)[2](v11, v31, v33);
            goto LABEL_53;
          }

          break;
        case 3:
          break;
        case 4:
LABEL_19:
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "@", "@", "@", "@"];
          v22 = [v8 isEqualToString:v21];

          if (v22)
          {
            v11 = MEMORY[0x27438BB60](v41);
            v40 = [v6 objectAtIndexedSubscript:0];
            if (v40)
            {
              [v6 objectAtIndexedSubscript:0];
            }

            else
            {
              [MEMORY[0x277CBEB68] null];
            }
            v39 = ;
            v25 = [v6 objectAtIndexedSubscript:1];
            if (v25)
            {
              [v6 objectAtIndexedSubscript:1];
            }

            else
            {
              [MEMORY[0x277CBEB68] null];
            }
            v26 = ;
            v27 = [v6 objectAtIndexedSubscript:2];
            if (v27)
            {
              [v6 objectAtIndexedSubscript:2];
            }

            else
            {
              [MEMORY[0x277CBEB68] null];
            }
            v28 = ;
            v29 = [v6 objectAtIndexedSubscript:3];
            if (v29)
            {
              [v6 objectAtIndexedSubscript:3];
            }

            else
            {
              [MEMORY[0x277CBEB68] null];
            }
            v30 = ;
            (v11[2])(v11, v39, v26, v28, v30);

            goto LABEL_56;
          }

          goto LABEL_47;
        default:
          goto LABEL_47;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "@", "@", "@"];
      v20 = [v8 isEqualToString:v19];

      if (!v20)
      {
        goto LABEL_19;
      }

      v11 = MEMORY[0x27438BB60](v41);
      v16 = [v6 objectAtIndexedSubscript:0];
      if (v16)
      {
        [v6 objectAtIndexedSubscript:0];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v31 = ;
      v32 = [v6 objectAtIndexedSubscript:1];
      if (v32)
      {
        [v6 objectAtIndexedSubscript:1];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v33 = ;
      v34 = [v6 objectAtIndexedSubscript:2];
      if (v34)
      {
        [v6 objectAtIndexedSubscript:2];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v35 = ;
      (v11[2])(v11, v31, v33, v35);

LABEL_53:
      goto LABEL_54;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
        v15 = [v8 isEqualToString:v14];

        if (v15)
        {
          v11 = MEMORY[0x27438BB60](v41);
          v16 = [v6 firstObject];
          (v11[2])(v11, [v16 BOOLValue]);
        }

        else
        {
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"q"];
          v24 = [v8 isEqualToString:v23];

          if (!v24)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "@"];
            v37 = [v8 isEqualToString:v36];

            if (v37)
            {
              v11 = MEMORY[0x27438BB60](v41);
              v16 = [v6 objectAtIndexedSubscript:0];
              if (v16)
              {
                [v6 objectAtIndexedSubscript:0];
              }

              else
              {
                [MEMORY[0x277CBEB68] null];
              }
              v31 = ;
              (v11[2])(v11, v31);
              goto LABEL_54;
            }

            goto LABEL_47;
          }

          v11 = MEMORY[0x27438BB60](v41);
          v16 = [v6 firstObject];
          (v11[2])(v11, [v16 integerValue]);
        }

LABEL_55:

        goto LABEL_56;
      }

LABEL_47:
      v38 = MEMORY[0x277CD4658];
      v11 = [MEMORY[0x277CD4640] currentContext];
      v16 = [v38 valueWithNewErrorFromMessage:@"Unsupported block invocation" inContext:v11];
      v31 = [MEMORY[0x277CD4640] currentContext];
      [v31 setException:v16];
LABEL_54:

      goto LABEL_55;
    }

    v11 = MEMORY[0x27438BB60](v41);
    (v11[2])();
  }

  else
  {
    v10 = MEMORY[0x277CD4658];
    v11 = [MEMORY[0x277CD4640] currentContext];
    v12 = [v10 valueWithNewErrorFromMessage:@"Argument is not block" inContext:v11];
    v13 = [MEMORY[0x277CD4640] currentContext];
    [v13 setException:v12];

    v8 = v7;
  }

LABEL_56:

LABEL_57:
}

id sub_26F19FADC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isObject] & 1) == 0)
  {
    v9 = MEMORY[0x277CD4658];
    v10 = [MEMORY[0x277CD4640] currentContext];
    v11 = @"Value is not a function";
    goto LABEL_6;
  }

  v7 = [(__CFString *)v6 integerValue];
  if (v7 >= 1)
  {
    v8 = v7;
    if (v7 >= 5)
    {
      v9 = MEMORY[0x277CD4658];
      v10 = [MEMORY[0x277CD4640] currentContext];
      v11 = @"Argument count exceeds maximum supported value";
LABEL_6:
      v12 = [v9 valueWithNewErrorFromMessage:v11 inContext:v10];
      v13 = [MEMORY[0x277CD4640] currentContext];
      [v13 setException:v12];

      v14 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    do
    {
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
      [(__CFString *)v16 addObject:v17];

      --v8;
    }

    while (v8);
    v15 = [(__CFString *)v16 componentsJoinedByString:&stru_287F301C0];

    goto LABEL_12;
  }

  if (([(__CFString *)v6 isEqualToString:@"undefined"]& 1) != 0)
  {
    v15 = &stru_287F301C0;
    v16 = v6;
LABEL_12:

LABEL_13:
    v14 = [objc_alloc(*(a1 + 32)) initWithFunctionWithValue:v5 argumentsEncoding:v15];
    v6 = v15;
    goto LABEL_14;
  }

  v15 = sub_26F19F1F0(v6);

  if (v15)
  {
    goto LABEL_13;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

void sub_26F19FCCC(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [v2 setException:0];

  v3 = [*(a1 + 32) callWithArguments:*(a1 + 40)];
  v4 = sub_26F19FD30(v3);
}

id sub_26F19FD30(void *a1)
{
  v1 = a1;
  v2 = [v1 context];
  v3 = [v2 exception];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEAD8]);
    v5 = [v3 toString];
    v6 = [v4 initWithName:@"TMLJSException" reason:v5 userInfo:0];
    [TMLExceptionHandler raiseException:v6];
  }

  return v1;
}

uint64_t sub_26F19FDFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F19FE14(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [TMLTypeRegistry encodedTypeForType:[TMLTypeRegistry typeForTypeName:a2]];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  v9 = v6;
  if (v6)
  {
    [v8 addObject:v6];
  }

  else
  {
    *(v7 + 40) = 0;

    *a4 = 1;
  }
}

void sub_26F19FFC4(uint64_t a1)
{
  v2 = objc_msgSend( MEMORY[0x277CBEA90],  "dataWithBytesNoCopy:length:freeWhenDone:",  "8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FbE?5jn=KwO#QgvqFUDzEEf?AV$#21-[=]By=6!x(n2f0u@c-2XmH.wOkB[wFbh=vRPE:BrRza3tBMWv{%m)x(mL@1y=p/y-0gdvg1i0wPR%bwP?SYwPzH7xK#i)y&-V(BzalRwO#Q7w[+*%A$x066BCjZwmYU2x>z6<A=R&%vrcx%C{jFNwPR%bwP?SYwPzH7xK#i)y&-V(BzalRwO#Q7w[+*%B2(7b0syb]v{%mAz/OV=A+PGawPzi}B606$xJ5F.C4>C$B5c:%x(v)g5ciW:3jH#!A=#ebwMq-4l#@$Avrcx%C]vz82xaN6x(v)g5^&e-v@#B6zEENha$4CwvqXLMA.{s/x(E-%A:-^9s7#+&q!o#)x>7Z}i=w$Vx(v)giX>ET7?mG4zE)s1p?sVYAa&*6vqF.UBzkVhA$wu<8vu*<wPzH7xK#i)y.vdzlqRllx(E-%A:-=56:+g:Acb/jzGuA$wnbK}x(v($A^n&Ev@Dm5wN/*UwPzH7xK#i)y=VGNBzkVhB2(6T3kEn)x()A<Bza6Ny?ml/By!r(wP.L}5e(e*2XmH.wOkB[wFbh=vRPE:Bq+U%1-XV@B.8f&z^)D)v@@[hx(mTbs7#+&l$HgCxjk)[i=PpNB.9P?Ef{%dzFsh]x([2RwO+{<vru6TB.bYbpJgz&z/fRc5e(e*2XmH.wOkB[wFbh=vRPE:Bq+U%1-XV@B.8f&z^)D)v@@R73i$G*BzkVhA$O*<x>8m0z/f07C{jtAzFsh]x([2RwO+{<vru6wADL&nwJB:GBzkVhB2(5(3j7Y{z/wS+vqVRSa{-miz/wS+vqW&q3mG}aBAh8bC4B3VzF<2}By!#VwPzH7xK#i)y&-V(BzaP:A=#ebwPFy@8wAI^x>g^)Bzku3wPz&81Z#B(vr<4CA+fukx>qE0lVl<WwN/*[wkD&Tx(E-%A:-^9s7#+&q!o#)x>7Z}iX<+z8E)h[v}xEMwPzH7xK#i)y^SbUzE)s1x(v(20u8<-3ufM%x(E-%A:-+%3}0uTwPzH7xK#i)y:6*dvqYN^y/1X-x(E-%A:-=Kz/fD7v@#B6zAna:3jGo*p?sVYAa&*6vqEb03iUlPzdKs:B98CpzF6^!a@gH)x>g^)Bzku3wPwy/pe+d)nKKx@baw/A7^*RSwO#QgvqFUDzEEf?AZTFPwOkB[wG)@K3mfg[zGG]cy!XtQvp%d(l${g1x(^^5zF<2}BwMK?x(E-%A:-+}0u8):2v?s.BAg/a5!Ez%lUgdSA:-=UvqYH^wPwXc3jp--A+PGawPzi}5!4b]p?sVYAa&*6vqD?[3i+0YA=k$h2tOh^A=M8sa$WqozGG]cy!XtQvp%d(i+h@nl${ZLz/fD7v@$KUA+PGawPzi}i+rtLz/N(!0Wu+c3ohKbzGG]cy!XtQvp%d(l${g1x(^^5C4CX<wPzH7xK#i)y^zPPwPz)bB7Gi1zGFoPByw6Cq+mJ38xf1*v}xL1A:-+%5jn=KwO#QgvqFUDzEEf?AVb&63ufM%x(E-%A:-+%3}0uTwPzH7xK#i)y-jx55N/i[wPz)bB7Gi1zGGz$Byt^?wnbK}x(v($A^nMk3iUx<B7(l>z^)D)v@@[Sv}xL1A:-=UvqYH^wPx?xx>fRCB7ociwPyQUA+PGawPzi}i:(MxwPz)bB7Gi1zGFoPByvjdq=umGc&$PF0sy2XwO#QgvqFUDzEEf?AZTRLlVl<WwN/*UwPzH7xK#i)y.cQ=8WV*WwO#QgvqDL/lQBdKzGG]cy!XtQvp%d(8x5}&AaK67Aa&*6vqDL+lQBQXA+PGawPzi}a%ZVfzGG]cy!XtQvp%d(i+h@nlVl<WwN/*UwPzH7xK#i)y=S%Cb0unMv}xL1A:-=UvqYH^wPygMwl0OVvru6VByxo55ciW*3i$6LzGG]cy.vpDlpks4BAg/ao<}{FxjV9cCm2y3wO#QgvqFUDzEEf?A-V%>y/j?=Bz(hhq/(C&wE[>X8WV*WwO#QgvqDL/lQBdKzGG]cy!XtQvp%d(8wiwWwnbK}5^&e-v@#B6zEENha%pxbzGG]cy!XtQvp%d(i^kpOy/j?=Bz(hhq/(C&wJzjvbc7.Kc$u?aBAg/ao<}{FxjV9Kx>fXwx(3:!lVl<WwN/*UwPzH7xK#i)y.cQ=8WV*WwO#QgvqDL/lQBdKzGG]cy!XtQvp%d(8x5}&AaK67Aa&*6vqDL+lQBQXA+PGawPzi}8w0kVwPz*fAUnQLq:>.Ez/N3Qv}xL1A:-=UvqYH^wPx?xx>fXwx(3:!lVl<WwN/*UwPzH7xK#i)y=VcFA=k$Vc&$>9mSiA!wmoN]z/b",  strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FbE?5jn=KwO#QgvqFUDzEEf?AV$#21-[=]By=6!x(n2f0u@c-2XmH.wOkB[wFbh=vRPE:BrRza3tBMWv{%m)x(mL@1y=p/y-0gdvg1i0wPR%bwP?SYwPzH7xK#i)y&-V(BzalRwO#Q7w[+*%A$x066BCjZwmYU2x>z6<A=R&%vrcx%C{jFNwPR%bwP?SYwPzH7xK#i)y&-V(BzalRwO#Q7w[+*%B2(7b0syb]v{%mAz/OV=A+PGawPzi}B606$xJ5F.C4>C$B5c:%x(v)g5ciW:3jH#!A=#ebwMq-4l#@$Avrcx%C]vz82xaN6x(v)g5^&e-v@#B6zEENha$4CwvqXLMA.{s/x(E-%A:-^9s7#+&q!o#)x>7Z}i=w$Vx(v)giX>ET7?mG4zE)s1p?sVYAa&*6vqF.UBzkVhA$wu<8vu*<wPzH7xK#i)y.vdzlqRllx(E-%A:-=56:+g:Acb/jzGuA$wnbK}x(v($A^n&Ev@Dm5wN/*UwPzH7xK#i)y=VGNBzkVhB2(6T3kEn)x()A<Bza6Ny?ml/By!r(wP.L}5e(e*2XmH.wOkB[wFbh=vRPE:Bq+U%1-XV@B.8f&z^)D)v@@[hx(mTbs7#+&l$HgCxjk)[i=PpNB.9P?Ef{%dzFsh]x([2RwO+{<vru6TB.bYbpJgz&z/fRc5e(e*2XmH.wOkB[wFbh=vRPE:Bq+U%1-XV@B.8f&z^)D)v@@R73i$G*BzkVhA$O*<x>8m0z/f07C{jtAzFsh]x([2RwO+{<vru6wADL&nwJB:GBzkVhB2(5(3j7Y{z/wS+vqVRSa{-miz/wS+vqW&q3mG}aBAh8bC4B3VzF<2}By!#VwPzH7xK#i)y&-V(BzaP:A=#ebwPFy@8wAI^x>g^)Bzku3wPz&81Z#B(vr<4CA+fukx>qE0lVl<WwN/*[wkD&Tx(E-%A:-^9s7#+&q!o#)x>7Z}iX<+z8E)h[v}xEMwPzH7xK#i)y^SbUzE)s1x(v(20u8<-3ufM%x(E-%A:-+%3}0uTwPzH7xK#i)y:6*dvqYN^y/1X-x(E-%A:-=Kz/fD7v@#B6zAna:3jGo*p?sVYAa&*6vqEb03iUlPzdKs:B98CpzF6^!a@gH)x>g^)Bzku3wPwy/pe+d)nKKx@baw/A7^*RSwO#QgvqFUDzEEf?AZTFPwOkB[wG)@K3mfg[zGG]cy!XtQvp%d(l${g1x(^^5zF<2}BwMK?x(E-%A:-+}0u8):2v?s.BAg/a5!Ez%lUgdSA:-=UvqYH^wPwXc3jp--A+PGawPzi}5!4b]p?sVYAa&*6vqD?[3i+0YA=k$h2tOh^A=M8sa$WqozGG]cy!XtQvp%d(i+h@nl${ZLz/fD7v@$KUA+PGawPzi}i+rtLz/N(!0Wu+c3ohKbzGG]cy!XtQvp%d(l${g1x(^^5C4CX<wPzH7xK#i)y^zPPwPz)bB7Gi1zGFoPByw6Cq+mJ38xf1*v}xL1A:-+%5jn=KwO#QgvqFUDzEEf?AVb&63ufM%x(E-%A:-+%3}0uTwPzH7xK#i)y-jx55N/i[wPz)bB7Gi1zGGz$Byt^?wnbK}x(v($A^nMk3iUx<B7(l>z^)D)v@@[Sv}xL1A:-=UvqYH^wPx?xx>fRCB7ociwPyQUA+PGawPzi}i:(MxwPz)bB7Gi1zGFoPByvjdq=umGc&$PF0sy2XwO#QgvqFUDzEEf?AZTRLlVl<WwN/*UwPzH7xK#i)y.cQ=8WV*WwO#QgvqDL/lQBdKzGG]cy!XtQvp%d(8x5}&AaK67Aa&*6vqDL+lQBQXA+PGawPzi}a%ZVfzGG]cy!XtQvp%d(i+h@nlVl<WwN/*UwPzH7xK#i)y=S%Cb0unMv}xL1A:-=UvqYH^wPygMwl0OVvru6VByxo55ciW*3i$6LzGG]cy.vpDlpks4BAg/ao<}{FxjV9cCm2y3wO#QgvqFUDzEEf?A-V%>y/j?=Bz(hhq/(C&wE[>X8WV*WwO#QgvqDL/lQBdKzGG]cy!XtQvp%d(8wiwWwnbK}5^&e-v@#B6zEENha%pxbzGG]cy!XtQvp%d(i^kpOy/j?=Bz(hhq/(C&wJzjvbc7.Kc$u?aBAg/ao<}{FxjV9Kx>fXwx(3:!lVl<WwN/*UwPzH7xK#i)y.cQ=8WV*WwO#QgvqDL/lQBdKzGG]cy!XtQvp%d(8x5}&AaK67Aa&*6vqDL+lQBQXA+PGawPzi}8w0kVwPz*fAUnQLq:>.Ez/N3Qv}xL1A:-=UvqYH^wPx?xx>fXwx(3:!lVl<WwN/*UwPzH7xK#i)y=VcFA=k$Vc&$>9mSiA!wmoN]z/b"),  0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

id sub_26F1A051C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = *(a1 + 32);
  v10 = [TMLJSEnvironment normalizeValue:v6 toType:20];

  v11 = [v9 attributedStringWithFormat:v7 attributes:v10];

  v12 = [v8 initWithAttributedString:v11];

  return v12;
}

id sub_26F1A05DC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(TMLAttributedString_Attributes);
  [(TMLAttributedString_Attributes *)v3 setValuesForKeysWithDictionary:v2];

  v4 = [(TMLAttributedString_Attributes *)v3 attributes];

  return v4;
}

id sub_26F1A0648(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x277CBEB38];
    v11 = v7;
    v19 = [v10 dictionaryWithDictionary:v8];
    v12 = [TMLMarkdownParser parse:v11 tags:&v19 withRules:v9];

    v13 = objc_alloc(*(a1 + 32));
    v14 = *(a1 + 32);
    v15 = [TMLJSEnvironment normalizeValue:v19 toType:20];
    v16 = [v14 attributedStringWithFormat:v12 attributes:v15];
    v17 = [v13 initWithAttributedString:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void *sub_26F1A0C3C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  *a4 = result;
  return result;
}

void sub_26F1A0C6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  v8 = [v7 rangeValue];
  v10 = v9;

  v15 = [*(a1 + 40) objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = v15 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = objc_alloc_init(TMLAttributedString_Attributes);
    [(TMLAttributedString_Attributes *)v12 setValuesForKeysWithDictionary:v15];
    v13 = *(a1 + 48);
    v14 = [(TMLAttributedString_Attributes *)v12 attributes];
    [v13 addAttributes:v14 range:{v8, v10}];
  }
}

id *sub_26F1A0E58(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

id sub_26F1A22D0(uint64_t a1, double a2, double a3)
{
  v3 = [objc_alloc(*(a1 + 32)) initWithSize:{a2, a3}];

  return v3;
}

BOOL sub_26F1A2318(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 size];
  v6 = v5;
  v8 = v7;
  [v4 size];
  v10 = v9;
  v12 = v11;

  return v8 == v12 && v6 == v10;
}

void sub_26F1A2888(uint64_t a1)
{
  v2 = objc_msgSend( MEMORY[0x277CBEA90],  "dataWithBytesNoCopy:length:freeWhenDone:",  "8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003pCjco&B#jx>7{&AV#k93#6M!xjTLDy?lQAoCdCIA+(M[a%mjby&r/(y?Xibwjg0Iv@=p5BzkVh5^AA0A+PA77Y:%<3klcjo>wx!vp%dBx)a5Yvr(^lBp]9Uq+Z?AB75Y)oKSi+B-W$C0TYxhq=v^Lv@2T@r+Vb?5^zucr+Vb?a}$v?B98bayH}J02#at%Bzkl2wPw$n3k3Y:x(dp2x(v(SB-H]jx(v(424RT{vR/P)0wU&a4S=-2A=:P+x(dp2x(mL{0u@1{Byxiil2HyNvruj3xegOp4rDSfA6XwQzddK2zF6HYa}nQnz/w0Wx(dp2x(mMs9106/B3TXTzddK2zF6HZa}5aal2HyNvruj3xeiD]6LRD0Bxrf#xHW2JzdMT/x>7{&AU5^24ginJA:-/@5^ik^v@@R63i$S]x>7{&AUnWMq=v^Lv@2T@a@j)gx()A<Bzac:vqPNpB98bayH}JE3k0QQo&B+$B8$=5wLuJTz/{deSrARFo&B+$B8$=5wPHdRA8{W:Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#?q5[bo(x)a5Pz/f-fA=UVhx(v(44OY>?z/f-fA=UVhx(v(a0u@D&5Pz=4B7Glhvruj4zC$U5y?jjZB.L-n7Y=9J3lS>[wk)OTzGxJlx(v(*z+$E=B7Glhvruj4zC$U5y?jdU8w@>]Ab]JhwO#P#BzkVhq/)q3wFbb*x(n2xn^Vbux>fOtzEWl]q!o&Sx(mL{0u8TV2w[3[B75Y)5^.oho>wx!vp%c&9TSr=z/f-fA=UVhx(v(44OY>?z/f-fA=UVhx(v(sl<:oix>gaMv}xv$wE[>X6BC7ZwPI{3xjRXZo&B+$B8$=5wF#P%3$Bi[C4CYnvruj4zw0BNq:UFvC4CYnvruj4zyNBH4}Gx+qE%]-xkQ1BBzk]f5ciW<3jHA.zGYPiB76f8z/cf$o&Bz$zGYPiB76f8z/d3&3l:Rcy&06>vqZd2BzkVhrbUPNwPIB2Byxo9z/eG}D2d460u8*.5Pz=4B7Glhvruj4zC$U5y?jjZB.L-ndOf%TwnbNMByxiiq!o&Sx(mL{0u8TV2w[3[B75Y)5^.oho>wx!vp%c&9TSr=z/f-fA=UVhx(v(44OY>?z/f-fA=UVhx(v(sgZT!rx(4PLwN/T}wKf*Fx)a500u90^3$Bi[C4CYnvruj4zw0BNq:UFvC4CYnvruj4zzz[k2v}K&ze16j5ci%Wwnca4x(!tJqvjmYwPq<7B97l0wPIB2Byxo9z/eG}D2d460u8*.5Pz=4B7Glhvruj4zGx]By?jjZB.L-na@LAjADL&lBwN0?B7Glhvruj4zC$U5y?kTm?#Kf3o&B+$B8$=5wMikTAbn%8wLuJTz/{dm4]2$%wPI{3xjT+BD2E?Ea@*}5BAg/7y?W^1q/#LVvq{s5z/cf(B98CpzF7dh3j?l0vqfK(zF8sBAcb/jzw0d{BAh8kxcF2%3uHu0v{%s#x(v(426j)bx(mMc6BCgYzdd6*rb3C<wFbh*BAh8kxcE/)1.?*ZxjRXVx(do>wG?={3#GM^x<<FBy?lQAoCdCIA+({i3i$6HAcb/jzw0d{BAh8kxcFc04qxV/xjU1:vSVsay?jj-B98CpzF6p:3jfB9q!p2>x(v>@RW0Lso&Bz$zGYPiB76f8z/c:u3j?h?y?m9#wN[IDB8$=5wFbqzq+Z?AB75Y)7Y+*c3l0-0v{%gIvrcE7v}/)<zGFDXwO#Q7w[+*%5^z9frAhQU7Y+*d3lj7$zeTJcp*[x^x>7<@vqZfUwmYU2x>z6<A=R&%vrcx%C]cMqGAhz>x(n06A=:P?BywV)zdNQb5ciWR3iLA>y.u?)A+(Tb3j7lTy?mG)zdKs:B98CpzF6>33jpoYze:r5BzkVh5^q-Xz!0MbiCAwLwPz(UBAy@3xL?r#BujRWBz9%RBy/Ggvru6Ix(4u#vqPNpv@Dj6y?mZ5z/e9OzE^M{AYL%N3jpG+B7GxlraQq@5ciWV3iUDZCYTM5B98CpzF6>33jpoYze:r5BzkVh5^q-Xz!0Mb9CGzjwPz((wQ5qTv@Dj6y?mZ5z/e9OzE^M{AYL%Z3jQY!B7Gxlq/(.-yH}I$0u8TV2xL03v@2T@5^.ohq/(.-yH}J86ab7Rz/6DfwPRT8zw0aZy&r*0a%pPqB7Gxlq/(.-yH}JEv@Dj6y?mZ5z/e9OzE^M{AYL%V3jy]^zE=EMB8$=5wE[>X6BC7ZwPI{3xjRXZo&B+$B8$=5wF#i?3s!0>Abo9cx(v(41.8p^v@0nfB7Gl1o>wx!vp%djv@Dj6y?mZ5z/e9OzE^M{AYL%V3jy]^zE=W/x>7{&AU5l&6BC7^Bzkl2wPwy&o&B#jx>7{&AVbO#3s!0>Abo9cx(v(41.8p^v@0nfB7Gl1q/(.-yH}JEv@Dj6y?mZ5z/e9OzE^M{AYL%Z3jQY!B7Gxlo>wx!vp%c.0u8TV2w[3[B75Y)5^.oho>wx!vp%c&6ab7Rz/6DfwPRT8zw0aZy&r*0a%pPqB7Gxlo>wx!vp%djv@Dj6y?mZ5z/e9OzE^M{AYL$a0sxrTwO#3ABAy@3xL?r#BpXD>3jl(TA+(u<B-Ipp5^![Rx(4u#vqPM*26j)bx(mM46ab7Rz/6DfwPRT8zw0aZy&r*0a#:NOzE=4PBywV)zdNQbi^kpWxHcDRwPzV%By^{Qy?mG)zdL+rz/6DfwPRT8zB!hNwnC*$iX<Cq2Y<M{wk)b+BpXD>4HJtXwQ5qf26j)bx(mM46ab7Rz/6DfwPRT8zw0aZy&r*0a@+PmzE=ZTCYU#Rz/6DfwPRT8zB!hNwnC*$iTQ&F3jfB9o>wx!vp%c}843N:vr(^lBp]9Uq+Z?AB75Y)oKSi+B-X/P3la4$zE^s0p*[x^x>7<@vqZfUwmYU2x>z6<AUnNKq=M*?l(k}G910r!v}f7>B7]8$y?X0poKRywy.u}[BAh8kxcF2%40c92B.>OSCYmwqwFbbPz/oCo777p/wPI{bz/cf]o&B#4B8#5lzwSx#5deOLA=M 8s5^IfgmriA!AV#k93V*DczddEgraQq@5^AA0A+PA7a{[UVrz(H619FT2gck*Nx(mTbs7#+&q!p2>x(v(25e(k&2xKD$B7]Mg5^.ohq!p2>x(v(k5nu2@Bxrf#xJ5F-B7]MgiW$qknLr=tdHFT-B-7.#BzkVh",  strlen( "8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003pCjco&B#jx>7{&AV#k93#6M!xjTLDy?lQAoCdCIA+(M[a%mjby&r/(y?Xibwjg0Iv@=p5BzkVh5^AA0A+PA77Y:%<3klcjo>wx!vp%dBx)a5Yvr(^lBp]9Uq+Z?AB75Y)oKSi+B-W$C0TYxhq=v^Lv@2T@r+Vb?5^zucr+Vb?a}$v?B98bayH}J02#at%Bzkl2wPw$n3k3Y:x(dp2x(v(SB-H]jx(v(424RT{vR/P)0wU&a4S=-2A=:P+x(dp2x(mL{0u@1{Byxiil2HyNvruj3xegOp4rDSfA6XwQzddK2zF6HYa}nQnz/w0Wx(dp2x(mMs9106/B3TXTzddK2zF6HZa}5aal2HyNvruj3xeiD]6LRD0Bxrf#xHW2JzdMT/x>7{&AU5^24ginJA:-/@5^ik^v@@R63i$S]x>7{&AUnWMq=v^Lv@2T@a@j)gx()A<Bzac:vqPNpB98bayH}JE3k0QQo&B+$B8$=5wLuJTz/{deSrARFo&B+$B8$=5wPHdRA8{W:Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#?q5[bo(x)a5Pz/f-fA=UVhx(v(44OY>?z/f-fA=UVhx(v(a0u@D&5Pz=4B7Glhvruj4zC$U5y?jjZB.L-n7Y=9J3lS>[wk)OTzGxJlx(v(*z+$E=B7Glhvruj4zC$U5y?jdU8w@>]Ab]JhwO#P#BzkVhq/)q3wFbb*x(n2xn^Vbux>fOtzEWl]q!o&Sx(mL{0u8TV2w[3[B75Y)5^.oho>wx!vp%c&9TSr=z/f-fA=UVhx(v(44OY>?z/f-fA=UVhx(v(sl<:oix>gaMv}xv$wE[>X6BC7ZwPI{3xjRXZo&B+$B8$=5wF#P%3$Bi[C4CYnvruj4zw0BNq:UFvC4CYnvruj4zyNBH4}Gx+qE%]-xkQ1BBzk]f5ciW<3jHA.zGYPiB76f8z/cf$o&Bz$zGYPiB76f8z/d3&3l:Rcy&06>vqZd2BzkVhrbUPNwPIB2Byxo9z/eG}D2d460u8*.5Pz=4B7Glhvruj4zC$U5y?jjZB.L-ndOf%TwnbNMByxiiq!o&Sx(mL{0u8TV2w[3[B75Y)5^.oho>wx!vp%c&9TSr=z/f-fA=UVhx(v(44OY>?z/f-fA=UVhx(v(sgZT!rx(4PLwN/T}wKf*Fx)a500u90^3$Bi[C4CYnvruj4zw0BNq:UFvC4CYnvruj4zzz[k2v}K&ze16j5ci%Wwnca4x(!tJqvjmYwPq<7B97l0wPIB2Byxo9z/eG}D2d460u8*.5Pz=4B7Glhvruj4zGx]By?jjZB.L-na@LAjADL&lBwN0?B7Glhvruj4zC$U5y?kTm?#Kf3o&B+$B8$=5wMikTAbn%8wLuJTz/{dm4]2$%wPI{3xjT+BD2E?Ea@*}5BAg/7y?W^1q/#LVvq{s5z/cf(B98CpzF7dh3j?l0vqfK(zF8sBAcb/jzw0d{BAh8kxcF2%3uHu0v{%s#x(v(426j)bx(mMc6BCgYzdd6*rb3C<wFbh*BAh8kxcE/)1.?*ZxjRXVx(do>wG?={3#GM^x<<FBy?lQAoCdCIA+({i3i$6HAcb/jzw0d{BAh8kxcFc04qxV/xjU1:vSVsay?jj-B98CpzF6p:3jfB9q!p2>x(v>@RW0Lso&Bz$zGYPiB76f8z/c:u3j?h?y?m9#wN[IDB8$=5wFbqzq+Z?AB75Y)7Y+*c3l0-0v{%gIvrcE7v}/)<zGFDXwO#Q7w[+*%5^z9frAhQU7Y+*d3lj7$zeTJcp*[x^x>7<@vqZfUwmYU2x>z6<A=R&%vrcx%C]cMqGAhz>x(n06A=:P?BywV)zdNQb5ciWR3iLA>y.u?)A+(Tb3j7lTy?mG)zdKs:B98CpzF6>33jpoYze:r5BzkVh5^q-Xz!0MbiCAwLwPz(UBAy@3xL?r#BujRWBz9%RBy/Ggvru6Ix(4u#vqPNpv@Dj6y?mZ5z/e9OzE^M{AYL%N3jpG+B7GxlraQq@5ciWV3iUDZCYTM5B98CpzF6>33jpoYze:r5BzkVh5^q-Xz!0Mb9CGzjwPz((wQ5qTv@Dj6y?mZ5z/e9OzE^M{AYL%Z3jQY!B7Gxlq/(.-yH}I$0u8TV2xL03v@2T@5^.ohq/(.-yH}J86ab7Rz/6DfwPRT8zw0aZy&r*0a%pPqB7Gxlq/(.-yH}JEv@Dj6y?mZ5z/e9OzE^M{AYL%V3jy]^zE=EMB8$=5wE[>X6BC7ZwPI{3xjRXZo&B+$B8$=5wF#i?3s!0>Abo9cx(v(41.8p^v@0nfB7Gl1o>wx!vp%djv@Dj6y?mZ5z/e9OzE^M{AYL%V3jy]^zE=W/x>7{&AU5l&6BC7^Bzkl2wPwy&o&B#jx>7{&AVbO#3s!0>Abo9cx(v(41.8p^v@0nfB7Gl1q/(.-yH}JEv@Dj6y?mZ5z/e9OzE^M{AYL%Z3jQY!B7Gxlo>wx!vp%c.0u8TV2w[3[B75Y)5^.oho>wx!vp%c&6ab7Rz/6DfwPRT8zw0aZy&r*0a%pPqB7Gxlo>wx!vp%djv@Dj6y?mZ5z/e9OzE^M{AYL$a0sxrTwO#3ABAy@3xL?r#BpXD>3jl(TA+(u<B-Ipp5^![Rx(4u#vqPM*26j)bx(mM46ab7Rz/6DfwPRT8zw0aZy&r*0a#:NOzE=4PBywV)zdNQbi^kpWxHcDRwPzV%By^{Qy?mG)zdL+rz/6DfwPRT8zB!hNwnC*$iX<Cq2Y<M{wk)b+BpXD>4HJtXwQ5qf26j)bx(mM46ab7Rz/6DfwPRT8zw0aZy&r*0a@+PmzE=ZTCYU#Rz/6DfwPRT8zB!hNwnC*$iTQ&F3jfB9o>wx!vp%c}843N:vr(^lBp]9Uq+Z?AB75Y)oKSi+B-X/P3la4$zE^s0p*[x^x>7<@vqZfUwmYU2x>z6<AUnNKq=M*?l(k}G910r!v}f7>B7]8$y?X0poKRywy.u}[BAh8kxcF2%40c92B.>OSCYmwqwFbbPz/oCo777p/wPI{bz/cf]o&B#4B8#5lzwSx#5deOLA =M8s5^IfgmriA!AV#k93V*DczddEgraQq@5^AA0A+PA7a{[UVrz(H619FT2gck*Nx(mTbs7#+&q!p2>x(v(25e(k&2xKD$B7]Mg5^.ohq!p2>x(v(k5nu2@Bxrf#xJ5F-B7]MgiW$qknLr=tdHFT-B-7.#BzkVh"),  0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

id sub_26F1A29B8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CD68F8]) initWithSession:v2];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CD68F8]);
  }

  v4 = v3;

  return v4;
}

id sub_26F1A2A18()
{
  v0 = objc_alloc_init(MEMORY[0x277CD6910]);

  return v0;
}

id sub_26F1A2A48(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD6900];
  v3 = a2;
  v4 = [[v2 alloc] initWithAlternateLayout:v3];

  return v4;
}

void sub_26F1A2DD8(uint64_t a1)
{
  v2 = objc_msgSend( MEMORY[0x277CBEA90],  "dataWithBytesNoCopy:length:freeWhenDone:",  "8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003rWYNry]F}Abok#vruj4zC$j!A=+/lBv/$XzzBrY4@2J(zDyK]xHuYQBywW35d/-]3i$6VzGGq%Bp[)Epd5@qBywW3a}Vttv@Dl^x([2Qz/fV9v@%:s]92EqlRZ0!zGGq%Bxi9!Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#Li3$Bi[BywW3q/(}#wFbFupd5@qBywW3q/(}#wG&f56>z31Abn%dwN[RTz/xodBA{I<D2<P4vrcx%C{j1h3VGJ{wO#PWA=l8t5^H^0m@&J<A3u894pK6{wPzV%By!iQzdKs:B98CpzF7de3i$6VzGGq%Bp[)Epd5@qBywW37Y+/)3i$AVB8$=5wFbh*BAh8kxcF5$4pK6?z*cm>wncd1zF6N+vScg3a@7B]vqG:#Cxl5WBzkVhA$OQ+z/oCo5^![PwO+{<vru5[25^%=wN/*aapn%bxM53fwk^eWCt8Z*yH}3zz/fV9v@#=81y=p/y:6]c4@+@$wO#PSz/fV9x(mH55^}64lVl<:vqfQ<AXYSZ8dWr1v@=p5Bz(g?z/O-!ADL#owN[CBD2<Jda@R$xwPIv4x(FfjAZ<$/qE%&<x(W=}oj-x&gf+edC4>JilVl<:A=k=gwPymUA-E0)zF%-plVl<:vpKx<5e(k&2v?W&BywW35^Z{2lVl<:vpKy6aUd.IwP{HWzGG]qy&0W6mSirEzFKcdCwY=^zGGq%Buhf&3k^C<xj#9}xj#x-A=k]dA==Odx([2YwQa*/8vW2QyH}=726j)bx(mM46BCgYwmYU2x>z6<AUnN$BAh8kxcFQmx>I9}x>Ia3p&ZF[wPz)rs7#+&oj-xfx>g^)Bzku3wPx*!p6}?Yx>qGQz/fVqz!%l3AZ<$/lVl<:vpKx<5e(k&2v?W&BywW35^Z{2lVl<:vpKy68y]#BwP{HWzGG]qy&0W6mSirmz/fV9v@%:!r0<N/x>qGQz/fVqz!%l3AZ<$/pgXSpz/fV9v@@m[8wAI-v@DmbvpKx(2$4DPz/fV9v@@[nd%tSrCscp^BAhqoy?mSRz/OP:Cscp^BywW3iTUuS3lqGelVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#Li6>z31Abn%dwN[RTz/xodBA{I<D2<P4vrcx%C{i>d2XmH.wOkB[wFbh=vRPE:BrSsAa8(miwnbKZBy^{WA-lK=wN/*@z/eu.p&ZF[wPz)r5^}Dkp&ZbTx>7N[wG&Yk9=MdhwnbKZBy^{WA-lK=wN/*@z/eu.lVl<:vpKx(3R<R%A+e=}v{%E<a$r{sAb]J2x>7N[wKZPUmq=Kyy?W^1lVl<:vpKx(3R<R%A+e=}v{%E<bc.pU7EH}+z/fV9v@$KYv@2T@l$HgCxjk)[b1h?Ov@DmbvpKyQx>7{&AZTRLlT:>xwO.[U8yC<@Aa@/$wPwz7lRZ0!zGGq%BwMWYyH}J!x>qGQz/fVqz!%l3AWQ#kQx7YFv@DmbvpKyQx>7{&AZTRLq!o=Rv@$7RzGGq%BwN0@AaK6iC[o#{cKH5%x>7{&AUoxWpd5@qBywW3p?:APwPy*=wP{HWzGG]qy&0W68ybU2v@DmbvpKy#A=k]dA==Nt5KPqXz/fV9v@$K/z/xodBA]5Tv@DmbvpKyQx>7{&AYN-Bwk^5QwN/*Hz/fV9v@$K/z/xodBA][}0Wri%3lAX}zGGq%BwMWYyH}JOx>gdNy?m9#lVl<:vpKz25ciW%3i>D-v@2T@5/<tmlVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS95EF!Nz/fV9v@#=81Z#B(vr<4tv@DmbvpKyQx>7{&AYN-Bwk^5QwN/*Hz/fV9v@#=Mc&$PB0sx&Sz/fV9v@$KYv@2T@l${ggwO+{/Bvf$:BywW35ciW%3i>D-v@2T@5/<tmlVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS96BC7Pz/fV9v@@s&lRZ0!zGGq%BrR/pz/fV9v@$KYv@2T@i+h@nq!o=Rv@$7RzGGq%Bug/KbaO-wcU47jBywW3p?:APwPygMwk^5QwN/*Hz/fV9v@$K/z/xodBzkrc5ciW%3i>D-v@2T@5/<tmlVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS98vv6^z/fV9v@#Wgz/xodBzkrc5^qY:A::kqdpWplBywW3p?:APwPx?xx>gdNy?m9#lVl<:vpKyQA=k]dA==2bB2>YJbaX(za45^<z/fV9v@$:=wP{HWzGG]qy&0W6l$HgCxjk)[bgV=4l1s?JBywW3r+Vb?lVl<:A=k=gwPyZ.z/](bp?sVVz/PX.wObv[y&?%MBzkVhmSirmz/fV9v@$K/z/xodBA[A08yV16C4>Jiv@DmbA=k=gwPwz1lRZ0!zGGq%Bxi9!Cscp^BAhqoy?mS99sr6>A=k]dA==Nt5KPqXz/fV9v@$K/z/xodBA]5$v@DmbvpKyWx>qGQz/fVqz!%l3AYOnPz/](bp?sVVz/PX.wObv[y&?%MBzkVhmSirmz/fV9v@$K/z/xodBA][}0Wsrs3m/R8zGGq%Bxi9!Cscp^BAhqoy?mSPx>fOHze:r5By!J/Bza3WzGGq%BpXD>dgcMdx>qGQz/fVqz!%l3AUofQpd5@qBywW3r+Vb?lVl<:A=k=gwPwX63i$6VzGGq%Bp[)Epd5@qBywW3a$WqyzGGq%Bxi9!Cscp^BAhqoy?mSFwnbNwz/6DfwPRG+x([2Qz/fV9v@%:W0XaEyz/fV9v@#=w3pX@RzE^f$x(v>",  strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003rWYNry]F}Abok#vruj4zC$j!A=+/lBv/$XzzBrY4@2J(zDyK]xHuYQBywW35d/-]3i$6VzGGq%Bp[)Epd5@qBywW3a}Vttv@Dl^x([2Qz/fV9v@%:s]92EqlRZ0!zGGq%Bxi9!Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#Li3$Bi[BywW3q/(}#wFbFupd5@qBywW3q/(}#wG&f56>z31Abn%dwN[RTz/xodBA{I<D2<P4vrcx%C{j1h3VGJ{wO#PWA=l8t5^H^0m@&J<A3u894pK6{wPzV%By!iQzdKs:B98CpzF7de3i$6VzGGq%Bp[)Epd5@qBywW37Y+/)3i$AVB8$=5wFbh*BAh8kxcF5$4pK6?z*cm>wncd1zF6N+vScg3a@7B]vqG:#Cxl5WBzkVhA$OQ+z/oCo5^![PwO+{<vru5[25^%=wN/*aapn%bxM53fwk^eWCt8Z*yH}3zz/fV9v@#=81y=p/y:6]c4@+@$wO#PSz/fV9x(mH55^}64lVl<:vqfQ<AXYSZ8dWr1v@=p5Bz(g?z/O-!ADL#owN[CBD2<Jda@R$xwPIv4x(FfjAZ<$/qE%&<x(W=}oj-x&gf+edC4>JilVl<:A=k=gwPymUA-E0)zF%-plVl<:vpKx<5e(k&2v?W&BywW35^Z{2lVl<:vpKy6aUd.IwP{HWzGG]qy&0W6mSirEzFKcdCwY=^zGGq%Buhf&3k^C<xj#9}xj#x-A=k]dA==Odx([2YwQa*/8vW2QyH}=726j)bx(mM46BCgYwmYU2x>z6<AUnN$BAh8kxcFQmx>I9}x>Ia3p&ZF[wPz)rs7#+&oj-xfx>g^)Bzku3wPx*!p6}?Yx>qGQz/fVqz!%l3AZ<$/lVl<:vpKx<5e(k&2v?W&BywW35^Z{2lVl<:vpKy68y]#BwP{HWzGG]qy&0W6mSirmz/fV9v@%:!r0<N/x>qGQz/fVqz!%l3AZ<$/pgXSpz/fV9v@@m[8wAI-v@DmbvpKx(2$4DPz/fV9v@@[nd%tSrCscp^BAhqoy?mSRz/OP:Cscp^BywW3iTUuS3lqGelVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#Li6>z31Abn%dwN[RTz/xodBA{I<D2<P4vrcx%C{i>d2XmH.wOkB[wFbh=vRPE:BrSsAa8(miwnbKZBy^{WA-lK=wN/*@z/eu.p&ZF[wPz)r5^}Dkp&ZbTx>7N[wG&Yk9=MdhwnbKZBy^{WA-lK=wN/*@z/eu.lVl<:vpKx(3R<R%A+e=}v{%E<a$r{sAb]J2x>7N[wKZPUmq=Kyy?W^1lVl<:vpKx(3R<R%A+e=}v{%E<bc.pU7EH}+z/fV9v@$KYv@2T@l$HgCxjk)[b1h?Ov@DmbvpKyQx>7{&AZTRLlT:>xwO.[U8yC<@Aa@/$wPwz7lRZ0!zGGq%BwMWYyH}J!x>qGQz/fVqz!%l3AWQ#kQx7YFv@DmbvpKyQx>7{&AZTRLq!o=Rv@$7RzGGq%BwN0@AaK6iC[o#{cKH5%x>7{&AUoxWpd5@qBywW3p?:APwPy*=wP{HWzGG]qy&0W68ybU2v@DmbvpKy#A=k]dA==Nt5KPqXz/fV9v@$K/z/xodBA]5Tv@DmbvpKyQx>7{&AYN-Bwk^5QwN/*Hz/fV9v@$K/z/xodBA][}0Wri%3lAX}zGGq%BwMWYyH}JOx>gdNy?m9#lVl<:vpKz25ciW%3i>D-v@2T@5/<tmlVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS95EF!Nz/fV9v@#=81Z#B(vr<4tv@DmbvpKyQx>7{&AYN-Bwk^5QwN/*Hz/fV9v@#=Mc&$PB0sx&Sz/fV9v@$KYv@2T@l${ggwO+{/Bvf$:BywW35ciW%3i>D-v@2T@5/<tmlVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS96BC7Pz/fV9v@@s&lRZ0!zGGq%BrR/pz/fV9v@$KYv@2T@i+h@nq!o=Rv@$7RzGGq%Bug/KbaO-wcU47jBywW3p?:APwPygMwk^5QwN/*Hz/fV9v@$K/z/xodBzkrc5ciW%3i>D-v@2T@5/<tmlVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS98vv6^z/fV9v@#Wgz/xodBzkrc5^qY:A::kqdpWplBywW3p?:APwPx?xx>gdNy?m9#lVl<:vpKyQA=k]dA==2bB2>YJbaX(za45^<z/fV9v@$:=wP{HWzGG]qy&0W6l$HgCxjk)[bgV=4l1s?JBywW3r+Vb?lVl<:A=k=gwPyZ.z/](bp?sVVz/PX.wObv[y&?%MBzkVhmSirmz/fV9v@$K/z/xodBA[A08yV16C4>Jiv@DmbA=k=gwPwz1lRZ0!zGGq%Bxi9!Cscp^BAhqoy?mS99sr6>A=k]dA==Nt5KPqXz/fV9v@$K/z/xodBA]5$v@DmbvpKyWx>qGQz/fVqz!%l3AYOnPz/](bp?sVVz/PX.wObv[y&?%MBzkVhmSirmz/fV9v@$K/z/xodBA][}0Wsrs3m/R8zGGq%Bxi9!Cscp^BAhqoy?mSPx>fOHze:r5By!J/Bza3WzGGq%BpXD>dgcMdx>qGQz/fVqz!%l3AUofQpd5@qBywW3r+Vb?lVl<:A=k=gwPwX63i$6VzGGq%Bp[)Epd5@qBywW3a$WqyzGGq%Bxi9!Cscp^BAhqoy?mSFwnbNwz/6DfwPRG+x([2Qz/fV9v@%:W0XaEyz/fV9v@#=w3pX@RzE^f$x(v>"),  0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

uint64_t sub_26F1A2E70(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  Class = object_getClass(v4);
  if ([v4 tmlIsKindOfClass:a1])
  {
    goto LABEL_2;
  }

  [a1 superclass];
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v4 observationInfo])
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromClass(a1);
  v10 = NSStringFromClass(Class);
  v11 = [v8 stringWithFormat:@"%@_%@", v9, v10];
  v12 = [v11 UTF8String];

  v13 = objc_lookUpClass(v12);
  if (v13)
  {
    ClassPair = v13;
    if (object_getClass(v4) == v13)
    {
      goto LABEL_2;
    }
  }

  else
  {
    ClassPair = objc_allocateClassPair(Class, v12, 0);
    outCount = 0;
    v15 = class_copyProtocolList(a1, &outCount);
    if (outCount)
    {
        ;
      }
    }

    free(v15);
    v40 = 0;
    v17 = class_copyMethodList(a1, &v40);
    if (v40)
    {
      for (j = 0; j < v40; ++j)
      {
        v19 = v17[j];
        Name = method_getName(v19);
        Implementation = method_getImplementation(v19);
        TypeEncoding = method_getTypeEncoding(v19);
        class_addMethod(ClassPair, Name, Implementation, TypeEncoding);
      }
    }

    free(v17);
    InstanceMethod = class_getInstanceMethod(Class, sel_class);
    v24 = imp_implementationWithBlock(&unk_287F2BBB0);
    v25 = method_getName(InstanceMethod);
    v26 = method_getTypeEncoding(InstanceMethod);
    class_addMethod(ClassPair, v25, v24, v26);
    if (!class_getInstanceMethod(Class, sel_tmlSuperClass))
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_26F1A326C;
      v39[3] = &unk_279DC6038;
      v39[4] = Class;
      v27 = MEMORY[0x27438BB60](v39);
      v28 = imp_implementationWithBlock(v27);

      v29 = method_getTypeEncoding(InstanceMethod);
      class_addMethod(ClassPair, sel_tmlSuperClass, v28, v29);
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_26F1A3274;
    v38[3] = &unk_279DC6058;
    v38[4] = a1;
    v30 = MEMORY[0x27438BB60](v38);
    v31 = imp_implementationWithBlock(v30);

    v32 = class_getInstanceMethod(Class, sel_isKindOfClass_);
    v33 = method_getTypeEncoding(v32);
    class_addMethod(ClassPair, sel_tmlIsKindOfClass_, v31, v33);
    v34 = class_getInstanceMethod(Class, sel_respondsToSelector_);
    v35 = method_getName(v34);
    v36 = method_getTypeEncoding(v34);
    class_addMethod(ClassPair, v35, sub_26F1A3284, v36);
    objc_registerClassPair(ClassPair);
    InstanceSize = class_getInstanceSize(Class);
    if (InstanceSize != class_getInstanceSize(ClassPair))
    {
      goto LABEL_5;
    }
  }

  object_setClass(v4, ClassPair);
LABEL_2:
  v6 = 1;
LABEL_6:

  return v6;
}

Class sub_26F1A3240(int a1, id a2)
{
  Class = object_getClass(a2);

  return class_getSuperclass(Class);
}

BOOL sub_26F1A3284(void *a1, const char *a2, const char *a3)
{
  v5 = a1;
  Superclass = [v5 tmlSuperClass];
  v11.receiver = v5;
  if (!Superclass)
  {
    Class = object_getClass(v5);
    Superclass = class_getSuperclass(Class);
  }

  v11.super_class = Superclass;
  if (objc_msgSendSuper(&v11, a2, a3))
  {
    v8 = 1;
  }

  else
  {
    v9 = object_getClass(v5);
    v8 = class_getInstanceMethod(v9, a3) != 0;
  }

  return v8;
}

uint64_t sub_26F1A3318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_class();

  return [v4 isSubclassOfClass:a3];
}

void sub_26F1A36C8(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = sub_26F1A3744(v6);
  if (v4)
  {
    v5 = sub_26F1A37B0(v6, v4, 1);
    [a1 addTarget:v5 action:sel_handleGesture_];
  }
}

uint64_t sub_26F1A3744(void *a1)
{
  v1 = qword_2806D90F8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_26F200BDC();
  }

  v3 = [qword_2806D90F0 objectForKeyedSubscript:v2];

  v4 = [v3 integerValue];
  return v4;
}

TMLUIGestureRecognizerActionTarget *sub_26F1A37B0(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (qword_2806D90E8 != -1)
  {
    sub_26F200BF0();
  }

  v6 = [qword_2806D90E0 objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3 == 0;
  }

  if (!v7)
  {
    v6 = [[TMLUIGestureRecognizerActionTarget alloc] initWithSignal:v5 state:a2];
    [qword_2806D90E0 setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

void sub_26F1A386C(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = sub_26F1A3744(v7);
  v5 = v7;
  if (v4)
  {
    v6 = sub_26F1A37B0(v7, v4, 0);
    if (v6)
    {
      [a1 removeTarget:v6 action:sel_handleGesture_];
    }

    v5 = v7;
  }
}

double sub_26F1A38EC(void *a1)
{
  v2 = [a1 view];
  [a1 locationInView:v2];
  v4 = v3;

  return v4;
}

uint64_t sub_26F1A3A30()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:14];
  v1 = qword_2806D90E0;
  qword_2806D90E0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26F1A3A74()
{
  v0 = qword_2806D90F0;
  qword_2806D90F0 = &unk_287F57270;
}

void sub_26F1A3AD0()
{
  if (!qword_2806D9100)
  {
    v0 = objc_alloc_init(TMLCertificateManager);
    v1 = qword_2806D9100;
    qword_2806D9100 = v0;

    MEMORY[0x2821F96F8](v0, v1);
  }
}

void sub_26F1A41C8(objc_class *a1)
{
  InstanceMethod = class_getInstanceMethod(a1, sel_setValue_forUndefinedKey_);
  v3 = class_getInstanceMethod(a1, sel_tmlSetValue_forUndefinedKey_);

  method_exchangeImplementations(InstanceMethod, v3);
}

id sub_26F1A4220(void *a1, uint64_t a2, const char *a3, void *a4)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v17.receiver = a1;
  v17.super_class = &off_287F793E0;
  v7 = objc_msgSendSuper2(&v17, sel_canPerformAction_withSender_, a3, v6);
  v8 = [a1 delegate];
  v18[0] = a1;
  v9 = NSStringFromSelector(a3);
  v18[1] = v9;
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v18[2] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v18[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v16 = 0;
  v13 = [v8 emitTMLSignal:@"textFieldCanPerformActionWithSenderDefaultValue" withArguments:v12 returnValue:&v16];
  v14 = v16;

  if (!v6)
  {
  }

  if (v13)
  {
    v7 = [v14 BOOLValue];
  }

  return v7;
}

void sub_26F1A43A8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"enablesReturnKeyAutomatically"])
  {
    [a1 setEnablesReturnKeyAutomatically:{objc_msgSend(v7, "BOOLValue")}];
  }

  else if ([v6 isEqualToString:@"returnKeyType"])
  {
    [a1 setReturnKeyType:{objc_msgSend(v7, "integerValue")}];
  }

  else if ([v6 isEqualToString:@"keyboardType"])
  {
    [a1 setKeyboardType:{objc_msgSend(v7, "integerValue")}];
  }

  else if ([v6 isEqualToString:@"autocorrectionType"])
  {
    [a1 setAutocorrectionType:{objc_msgSend(v7, "integerValue")}];
  }

  else if ([v6 isEqualToString:@"autocapitalizationType"])
  {
    [a1 setAutocapitalizationType:{objc_msgSend(v7, "integerValue")}];
  }

  else if ([v6 isEqualToString:@"spellCheckingType"])
  {
    [a1 setSpellCheckingType:{objc_msgSend(v7, "integerValue")}];
  }

  else if ([v6 isEqualToString:@"textContentType"])
  {
    [a1 setTextContentType:v7];
  }

  else
  {
    [a1 tmlSetValue:v7 forUndefinedKey:v6];
  }
}

void sub_26F1A45F8(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:"8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003zW+h7e length:? freeWhenDone:?]X3vp&}*x&X}VCscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#Rk6(Xh8w[u16wN[boA-u:<Bvf$.z/MD]v@Dg4AU[<45^![PwO+{<vru5[25^%=wN/*a8WWi*x(!c9B8%V<BAzCsq/)q3wFb8VzGDY%a%WHkAb]J4wPz*5wj7oMBAhqorb3k(lVl^VAUnK=z!%uj7Y(Du3jyM=x()A<BzaVLoB}:N2NQPP5^9n%y:6p4zFsh]x([2*qCobbA%-:#zFsh]x([2*qCoC@zF0P}B-H]jx(v(25e>/Y0D/1SB-IppeEzX(z/ff3xa=B/mPi-cvrc6.x>qGQz/fVqz!%l3AZK+.w[+[2A::67z/c:qx(mTbs7#+&rz(HKv@Dl%x>INevruj4zAofEggpIlx(mTbs7#+&rz(HVzGGDgB5DNTwmY^}w<HPGx(4i!y?jd?8vcVJBRj!0A+(T23isPG1y=p/y:7cszFsh]x([2*qCob.zGGDgB5DNTwmY^Mw<HPGx(4i!y?kTmA0^**mPi-cvrc6.x>qGQz/fVqz!%l3AZK+.w[+[2A::67z/cf[pe:}$ygQ)%a@*}7vQTpAz!%k#Ac2-hxglYDvR/Q^5^hVZz!{Qt3kWn>By/GlqE%oEwPyvOl3uWJy**^?wFbbPz/oC.0v3F93lAbnq^<oDA+OM*wP{HWzGG]qy&0W6l$HgCxjk)[bb22AdSY3gvrc6.x>qGQz/fVqz!%l3AZTRLlVl*Xy?mZ1nP5l:x<>*Kz^^e/0u9i<3s!0(BAhqoy?mS17e)X3vp&}*x&X}VCscp^BAhqoy?mS98WWl?x>h3#vpTC4v}f7>B7PMhy<uS@vScg3a$N!zw)]Z]r+Vb?lVl<:A=k=gwPx?xx>fOHze:r5By!3Yx([5$y!O+Qwi8aubaeDs9B<29BAhqoy?mSMv@#Bdx([R(By/rgmSirEqCmSk8ybT%v@DmbA=k=gwPwz0q:%X]w)]Z]r+Vb?lVl<:A=k=gwPwW$3iLA>y.u[Dq=MZ?8v)eUBzk&kwFbh*BAh8kxcG0Ivp&}*x&X}VCscp^BAhqoy?mSFvpKy[C4(5znPXJXB4g7*rz(HKBzk&kwJzjvbc}pSflpMlvrc6.x>qGQz/fVqz!%l3AZ+j.y&%o1wi<ZEx)aijC#P6dwPHsVA-D1h5d/:93jpoYzGG]qy&0W65/aznq^<oDA+OM*wP{HWzGG]qy&0W68vM@PB-Iph1X}#@qCm#t3i+J=BzLI326j)bx(mMch/&ztvrc6.x>qGQz/fVqz!%l3AYN=Rv@co#wN[8pBzk]jBA{&hAaK8Wz/O&QoGEofBzLIHc&$O:3lsg@w)]Z]r+Vb?lVl<:A=k=gwPygMwjyoJx(^@00u9i<3s!0(BAhqoy?mS17e)X3vp&}*x&X}VCscp^BAhqoy?mSn0XavNnLr=t",  strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003zW+h7e)X3vp&}*x&X}VCscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#Rk6(Xh8w[u16wN[boA-u:<Bvf$.z/MD]v@Dg4AU[<45^![PwO+{<vru5[25^%=wN/*a8WWi*x(!c9B8%V<BAzCsq/)q3wFb8VzGDY%a%WHkAb]J4wPz*5wj7oMBAhqorb3k(lVl^VAUnK=z!%uj7Y(Du3jyM=x()A<BzaVLoB}:N2NQPP5^9n%y:6p4zFsh]x([2*qCobbA%-:#zFsh]x([2*qCoC@zF0P}B-H]jx(v(25e>/Y0D/1SB-IppeEzX(z/ff3xa=B/mPi-cvrc6.x>qGQz/fVqz!%l3AZK+.w[+[2A::67z/c:qx(mTbs7#+&rz(HKv@Dl%x>INevruj4zAofEggpIlx(mTbs7#+&rz(HVzGGDgB5DNTwmY^}w<HPGx(4i!y?jd?8vcVJBRj!0A+(T23isPG1y=p/y:7cszFsh]x([2*qCob.zGGDgB5DNTwmY^Mw<HPGx(4i!y?kTmA0^**mPi-cvrc6.x>qGQz/fVqz!%l3AZK+.w[+[2A::67z/cf[pe:}$ygQ)%a@*}7vQTpAz!%k#Ac2-hxglYDvR/Q^5^hVZz!{Qt3kWn>By/GlqE%oEwPyvOl3uWJy**^?wFbbPz/oC.0v3F93lAbnq^<oDA+OM*wP{HWzGG]qy&0W6l$HgCxjk)[bb22AdSY3gvrc6.x>qGQz/fVqz!%l3AZTRLlVl*Xy?mZ1nP5l:x<>*Kz^^e/0u9i<3s!0(BAhqoy?mS17e)X3vp&}*x&X}VCscp^BAhqoy?mS98WWl?x>h3#vpTC4v}f7>B7PMhy<uS@vScg3a$N!zw)]Z]r+Vb?lVl<:A=k=gwPx?xx>fOHze:r5By!3Yx([5$y!O+Qwi8aubaeDs9B<29BAhqoy?mSMv@#Bdx([R(By/rgmSirEqCmSk8ybT%v@DmbA=k=gwPwz0q:%X]w)]Z]r+Vb?lVl<:A=k=gwPwW$3iLA>y.u[Dq=MZ?8v)eUBzk&kwFbh*BAh8kxcG0Ivp&}*x&X}VCscp^BAhqoy?mSFvpKy[C4(5znPXJXB4g7*rz(HKBzk&kwJzjvbc}pSflpMlvrc6.x>qGQz/fVqz!%l3AZ+j.y&%o1wi<ZEx)aijC#P6dwPHsVA-D1h5d/:93jpoYzGG]qy&0W65/aznq^<oDA+OM*wP{HWzGG]qy&0W68vM@PB-Iph1X}#@qCm#t3i+J=BzLI326j)bx(mMch/&ztvrc6.x>qGQz/fVqz!%l3AYN=Rv@co#wN[8pBzk]jBA{&hAaK8Wz/O&QoGEofBzLIHc&$O:3lsg@w)]Z]r+Vb?lVl<:A=k=gwPygMwjyoJx(^@00u9i<3s!0(BAhqoy?mS17e)X3vp&}*x&X}VCscp^BAhqoy?mSn0XavNnLr=t"),  0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

void sub_26F1A4948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F1A4964(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v4 = +[TMLAspectsRegistration shared];
    v3 = objc_loadWeakRetained((a1 + 40));
    [v4 unregisterAspect:v3 withKey:*(a1 + 32)];
  }
}

void sub_26F1A4CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_26F1A4CE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 40));

    if (v4)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v5 = objc_loadWeakRetained((a1 + 40));
      [v6 unregisterAspect:v5];
    }
  }
}

void sub_26F1A4E38(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v30[0] = v11;
    v29[0] = @"object";
    v29[1] = @"ctx";
    v16 = v12;
    if (!v12)
    {
      v16 = [MEMORY[0x277CBEB68] null];
    }

    v30[1] = v16;
    v29[2] = @"arguments";
    v17 = v13;
    if (!v13)
    {
      v17 = [MEMORY[0x277CBEB68] null];
    }

    v30[2] = v17;
    v29[3] = @"returnValue";
    v18 = v14;
    if (!v14)
    {
      v18 = [MEMORY[0x277CBEB68] null];
    }

    v30[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
    if (!v14)
    {
    }

    if (!v13)
    {
    }

    if (!v12)
    {
    }

    v20 = objc_loadWeakRetained((a1 + 32));
    v28 = v19;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    v27 = 0;
    [v20 emitTMLSignal:@"activate" withArguments:v21 returnValue:&v27];
    v22 = v27;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a6)
      {
        v23 = [v22 objectForKeyedSubscript:@"newArguments"];
        if (v23)
        {
          v23 = v23;
          *a6 = v23;
        }
      }

      if (a7)
      {
        v24 = [v22 objectForKeyedSubscript:@"newReturnValue"];
        if (v24)
        {
          v24 = v24;
          *a7 = v24;
        }
      }
    }
  }
}

void sub_26F1A50A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    [TMLExceptionHandler raiseException:v2];

    objc_end_catch();
    JUMPOUT(0x26F1A5058);
  }

  _Unwind_Resume(exception_object);
}

void sub_26F1A5578(void *a1, uint64_t a2, void *a3)
{
  value = a3;
  v4 = objc_getAssociatedObject(a1, &unk_26F208908);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 componentsSeparatedByString:{@", "}];
    v7 = [v6 containsObject:value];

    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [v5 stringByAppendingFormat:@", %@", value];

    v9 = v8;
  }

  else
  {
    v9 = value;
  }

  value = v9;
  objc_setAssociatedObject(a1, &unk_26F208908, v9, 3);
LABEL_6:
}

void sub_26F1A566C(void *a1, uint64_t a2)
{
  v4 = objc_getAssociatedObject(a1, &unk_26F208909);
  [v4 makeObjectsPerformSelector:a2];

  objc_setAssociatedObject(a1, &unk_26F208909, 0, 1);
  objc_setAssociatedObject(a1, &unk_26F20890A, 0, 1);
  objc_setAssociatedObject(a1, &unk_26F20890B, 0, 1);
  objc_setAssociatedObject(a1, &unk_26F20890C, 0, 1);

  objc_setAssociatedObject(a1, &unk_26F20890D, 0, 1);
}

void sub_26F1A573C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = objc_getAssociatedObject(a1, &unk_26F208909);
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    objc_setAssociatedObject(a1, &unk_26F208909, v4, 1);
  }

  [v4 addObject:v5];
}

void sub_26F1A57F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_setAssociatedObject(a1, &unk_26F20890E, v4, 0);
  [v4 addTmlChild:a1];
}

id sub_26F1A585C(void *a1)
{
  v2 = objc_getAssociatedObject(a1, &unk_26F20890A);
  if (!v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 0;
    }

    else
    {
      v2 = [TMLState stateForClass:objc_opt_class() stateName:&stru_287F301C0];
      objc_setAssociatedObject(v2, &unk_26F20890E, a1, 0);
      objc_setAssociatedObject(a1, &unk_26F20890A, v2, 1);
    }
  }

  return v2;
}

__CFString *sub_26F1A5920(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_26F20890B);
  v2 = [v1 tmlStateName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_287F301C0;
  }

  v5 = v4;

  return v4;
}

void sub_26F1A5988(void *a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = objc_getAssociatedObject(a1, &unk_26F20890B);
  v5 = [v4 tmlStateName];
  v6 = [v10 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [a1 tmlStateForName:v10];
    objc_setAssociatedObject(a1, &unk_26F20890B, v7, 1);
    v8 = [v7 tmlStateName];
    [v4 leaveStateToState:v8];

    [v7 applyToObject:a1 fromState:v4];
    v9 = [v4 tmlStateName];
    [v7 enterStateFromState:v9];
  }
}

id sub_26F1A5A94(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_26F1A5BEC;
    v15 = sub_26F1A5BFC;
    v16 = 0;
    v5 = [a1 tmlChildren];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_26F1A5C04;
    v8[3] = &unk_279DC6108;
    v9 = v4;
    v10 = &v11;
    [v5 enumerateObjectsUsingBlock:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = [a1 tmlDefaultState];
  }

  return v6;
}

void sub_26F1A5BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26F1A5BEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F1A5C04(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 tmlStateName];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

BOOL sub_26F1A5CBC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  AssociatedObject = j__objc_getAssociatedObject(a1, &unk_26F20890F);
  if (!AssociatedObject)
  {
    objc_setAssociatedObject(a1, &unk_26F20890F, v4, 0);
  }

  return AssociatedObject == 0;
}

BOOL sub_26F1A5D2C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  AssociatedObject = j__objc_getAssociatedObject(a1, &unk_26F20890F);

  return !AssociatedObject || AssociatedObject == v4;
}

void sub_26F1A5D7C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v19 = a3;
  v6 = a4;
  v7 = [TMLRuntime ensurePropertyWithKeyPath:v6 forObject:a1 writable:1];
  v8 = [v7 type];

  v9 = [TMLReactiveValue valueForTarget:a1 withKeyPath:v6];
  [v9 unassign];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v19 assignToTarget:a1 withKeyPath:v6];
  }

  if ([v19 conformsToProtocol:&unk_287F595A8])
  {
    v10 = [v19 value];

    v19 = v10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [v6 rangeOfString:@"." options:4];
    v12 = v6;
    v13 = a1;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [v12 substringFromIndex:v11 + 1];

      v15 = [v12 substringToIndex:v11];
      v16 = [v13 valueForKeyPath:v15];

      v12 = v14;
      v13 = v16;
    }

    if (v19)
    {
      v17 = [TMLJSEnvironment normalizeValue:v19 toType:v8];

      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    [v13 setValue:? forKey:?];
  }
}

id sub_26F1A6008(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [TMLRuntime ensurePropertyWithKeyPath:v4 forObject:a1 writable:0];
  v6 = [v5 type];

  v7 = [a1 valueForKeyPath:v4];

  v8 = [[TMLValue alloc] initWithValue:v7 valueType:v6];
  v9 = [TMLJSEnvironment convertTmlValue:v8];

  return v9;
}

id sub_26F1A60D4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [TMLRuntime ensurePropertyWithKeyPath:v4 forObject:a1 writable:0];
  v6 = [a1 valueForKey:v4];

  return v6;
}

void sub_26F1A6154(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = objc_getAssociatedObject(a1, &unk_26F208910);
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    objc_setAssociatedObject(a1, &unk_26F208910, v6, 1);
  }

  v5 = [v4 methodName];
  [v6 setObject:v4 forKeyedSubscript:v5];
}

void sub_26F1A620C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  v7 = objc_getAssociatedObject(a1, &unk_26F20890C);
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    objc_setAssociatedObject(a1, &unk_26F20890C, v7, 1);
  }

  v8 = [v7 objectForKeyedSubscript:v6];
  if (v8 != v9)
  {
    if (v9)
    {
      [v8 detach];
      [v7 setObject:v9 forKeyedSubscript:v6];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [a1 tmlSignalDetach:v6];
      }

      [v8 detach];
    }

    [TMLNSObjectAccessibility makeAccessible:a1 signalName:v6];
    [v9 attach];
    if (!v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [a1 tmlSignalAttach:v6];
    }
  }
}

void sub_26F1A6378(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  if ([v7 hasSuffix:@"Changed"])
  {
    v8 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 7}];
    v9 = [TMLRuntime ensurePropertyWithKeyPath:v8 forObject:a1 writable:0];
    v10 = [TMLPropertyChangedBlockSignalHandler alloc];
    v11 = [TMLBinding bindingForTarget:a1 withKeyPath:v8];
    v12 = [(TMLPropertyChangedBlockSignalHandler *)v10 initWithBlock:v6 binding:v11];

    v6 = v8;
  }

  else
  {
    v12 = [[TMLBlockSignalHandler alloc] initWithBlock:v6];
  }

  [a1 setTMLHandler:v12 forSignal:v7];
}

id sub_26F1A64A4(void *a1, uint64_t a2, void *a3, int a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_class();
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = objc_getAssociatedObject(v8, &unk_26F208910);
      v10 = [v9 objectForKeyedSubscript:v6];
      v8 = [v8 superclass];

      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8 == 0;
      }
    }

    while (!v11);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to call undeclared method %@ in class %@", v6, objc_opt_class()];
    v21 = @"identifier";
    v15 = [a1 tmlIdentifier];
    v16 = v15;
    v17 = &stru_287F301C0;
    if (v15)
    {
      v17 = v15;
    }

    v22[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19 = [v13 exceptionWithName:@"TMLRuntimeException" reason:v14 userInfo:v18];
    v20 = v19;

    objc_exception_throw(v19);
  }

LABEL_12:

  return v10;
}

id sub_26F1A666C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 methodName];
  v20 = v7;
  [a1 willEmitSignalOrMethod:v8 withArguments:v7 newArguments:&v20];
  v9 = v20;

  v21[0] = a1;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v11 = [v10 arrayByAddingObjectsFromArray:v9];
  v12 = [v6 callWithArguments:v11];

  if (v12)
  {
    v13 = [TMLJSEnvironment convertTmlValue:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [v6 methodName];
  v19 = v14;
  [a1 didEmitSignalOrMethod:v15 withArguments:v9 returnValue:v14 newReturnValue:&v19];
  v16 = v19;
  v17 = v19;

  return v16;
}

id sub_26F1A67F0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 tmlGetMethod:v6 throwIfMissing:0];
  if (v8)
  {
    v9 = [a1 tmlInvokeMethodCall:v8 withArguments:v7];
  }

  else
  {
    v21 = 0;
    v10 = [a1 emitTMLSignal:v6 withArguments:v7 returnValue:&v21];
    v9 = v21;
    if ((v10 & 1) == 0)
    {
      v13 = MEMORY[0x277CBEAD8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to call undeclared method %@ in class %@", v6, objc_opt_class()];
      v22 = @"identifier";
      v15 = [a1 tmlIdentifier];
      v16 = v15;
      v17 = &stru_287F301C0;
      if (v15)
      {
        v17 = v15;
      }

      v23[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v13 exceptionWithName:@"TMLRuntimeException" reason:v14 userInfo:v18];
      v20 = v19;

      objc_exception_throw(v19);
    }
  }

  v11 = v9;

  return v11;
}

void sub_26F1A69B8(void *a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 metaObjects];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 arrayByAddingObject:v4];
  }

  else
  {
    v9[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  v8 = v7;
  objc_setAssociatedObject(a1, &unk_26F20890D, v7, 1);
}

id sub_26F1A6A88(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) object];
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id sub_26F1A6BEC(void *a1, uint64_t a2, void *a3, int a4, int a5)
{
  v8 = a3;
  if (a4)
  {
    v9 = &unk_26F208912;
  }

  else
  {
    v9 = &unk_26F208911;
  }

  v10 = objc_getAssociatedObject(a1, v9);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = a5 == 0;
  }

  if (!v11)
  {
    v10 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    objc_setAssociatedObject(a1, v9, v10, 1);
  }

  v12 = [v10 objectForKey:v8];
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = a5 == 0;
  }

  if (!v13)
  {
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    [v10 setObject:v12 forKey:v8];
  }

  return v12;
}

void sub_26F1A6CF0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = [v4 signalName];
  v5 = [a1 getAspectsForSignalName:v7 advice:objc_msgSend(v4 createStorageIfMissing:{"advice"), 1}];
  v6 = [TMLWeakReferenceObject weakReferenceWithObject:v4];

  [v5 addObject:v6];
}

void sub_26F1A6D9C(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 signalName];
  v6 = [a1 getAspectsForSignalName:v5 advice:objc_msgSend(v4 createStorageIfMissing:{"advice"), 0}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v9 = v7;
  if (v8)
  {
    v10 = v8;
    v11 = *v18;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      v14 = [v13 object];
      v15 = v14;
      if (v14 && v14 == v4)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        v9 = v7;
        goto LABEL_15;
      }
    }

    v9 = v13;

    if (!v9)
    {
      goto LABEL_16;
    }

    [v7 removeObject:v9];
  }

LABEL_15:

LABEL_16:
}

void sub_26F1A6F1C(void *a1, uint64_t a2, void *a3, void *a4, id *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [a1 getAspectsForSignalName:v8 advice:0 createStorageIfMissing:0];
  v11 = [a1 strongObjectsArray:v10];

  v12 = +[TMLAspectsRegistration shared];
  v23 = v8;
  v13 = [v12 aspectsForObject:a1 signalName:v8 advice:0];

  if ([v13 count])
  {
    if (v11)
    {
      v14 = [v11 arrayByAddingObjectsFromArray:v13];

      v11 = v14;
    }

    else
    {
      v11 = v13;
    }
  }

  v15 = v9;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  v18 = v15;
  if (v17)
  {
    v19 = v17;
    v20 = *v25;
    v18 = v15;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v24 + 1) + 8 * v21) activateWithObject:a1 arguments:v18 returnValue:0 newArguments:a5 newReturnValue:0];
        if (a5)
        {
          v22 = *a5;

          v18 = v22;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }
}

BOOL sub_26F1A7124(void *a1, uint64_t a2, void *a3, void *a4, void *a5, id *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 getAspectsForSignalName:v10 advice:1 createStorageIfMissing:0];
  v14 = [a1 strongObjectsArray:v13];

  v15 = +[TMLAspectsRegistration shared];
  v28 = v10;
  v16 = [v15 aspectsForObject:a1 signalName:v10 advice:1];

  v27 = v16;
  if ([v16 count])
  {
    if (v14)
    {
      v17 = [v14 arrayByAddingObjectsFromArray:v16];

      v14 = v17;
    }

    else
    {
      v14 = v16;
    }
  }

  v18 = v12;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v14;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
  v21 = v20;
  v29 = v18;
  if (v20)
  {
    v22 = *v31;
    v23 = v20;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v30 + 1) + 8 * i) activateWithObject:a1 arguments:v11 returnValue:v18 newArguments:0 newReturnValue:a6];
        if (a6)
        {
          v25 = *a6;

          v18 = v25;
        }
      }

      v23 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v23);
  }

  return v21 != 0;
}

id sub_26F1A7358(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a1 tmlGetMethod:a3];
  v8 = [a1 tmlInvokeMethodCall:v7 withArguments:v6];

  return v8;
}

void *sub_26F1A73DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_getAssociatedObject(a1, &unk_26F20890C);
  v6 = [v5 objectForKeyedSubscript:v4];
  if (!v6)
  {
    v7 = objc_opt_class();
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = v7;
    do
    {
      v9 = objc_getAssociatedObject(v8, &unk_26F20890C);
      v6 = [v9 objectForKeyedSubscript:v4];
      v8 = [v8 superclass];

      if (v6)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8 == 0;
      }
    }

    while (!v10);
    if (!v6)
    {
LABEL_10:
      v6 = [MEMORY[0x277CBEB68] null];
    }

    [v5 setObject:v6 forKeyedSubscript:v4];
  }

  v11 = [MEMORY[0x277CBEB68] null];
  if (v6 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  v13 = v12;

  return v12;
}

uint64_t sub_26F1A7504(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v24 = v9;
  [a1 willEmitSignalOrMethod:v8 withArguments:v9 newArguments:&v24];
  v10 = v24;
  v11 = [a1 tmlSignalHandlerForSignal:v8];
  if (v11)
  {
    v12 = [a1 tmlParent];
    if (!v12)
    {
      v12 = a1;
    }

    v25[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v14 = [v13 arrayByAddingObjectsFromArray:v10];
    v15 = [v11 callWithArguments:v14];

    if (a5)
    {
      v16 = [v15 value];
      *a5 = v16;
      v17 = a1;
      v18 = v8;
      v19 = v10;
      v20 = v16;
      v21 = a5;
    }

    else
    {
      v17 = a1;
      v18 = v8;
      v19 = v10;
      v20 = 0;
      v21 = 0;
    }

    [v17 didEmitSignalOrMethod:v18 withArguments:v19 returnValue:v20 newReturnValue:v21];

    v22 = 1;
  }

  else
  {
    v22 = [a1 didEmitSignalOrMethod:v8 withArguments:v10 returnValue:0 newReturnValue:a5];
  }

  return v22;
}

void sub_26F1A76C0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_getAssociatedObject(a1, &unk_26F20890C);
  [v5 setObject:0 forKeyedSubscript:v4];
}

BOOL sub_26F1A772C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [TMLRuntime signal:a3 forObject:a1];
  v4 = v3 != 0;

  return v4;
}

void sub_26F1A7830(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___TMLApplication;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = qword_2806D9118;
  qword_2806D9118 = v1;
}

void sub_26F1A78C8()
{
  size = 0;
  sysctlbyname("hw.machine", 0, &size, 0, 0);
  v0 = malloc_type_malloc(size, 0x504E689uLL);
  sysctlbyname("hw.machine", v0, &size, 0, 0);
  v1 = [MEMORY[0x277CCACA8] stringWithCString:v0 encoding:4];
  v2 = qword_2806D9128;
  qword_2806D9128 = v1;

  free(v0);
}

void sub_26F1A79B0()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v0 infoDictionary];

  v1 = [v6 objectForKey:*MEMORY[0x277CBED58]];
  v2 = [v6 objectForKey:@"CFBundleShortVersionString"];
  v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^\\d+\\.\\d+" options:0 error:0];
  v4 = [v3 numberOfMatchesInString:v2 options:0 range:{0, objc_msgSend(v2, "length")}];

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = v1;
  }

  objc_storeStrong(&qword_2806D9138, v5);
}

void sub_26F1A7B74(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a83847776000000_8 length:strlen(a83847776000000_8) freeWhenDone:0];
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

id sub_26F1A7CD4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBC5D0];
  v3 = a2;
  v4 = [[v2 alloc] initWithRecordName:v3];

  return v4;
}

id sub_26F1A7D2C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBC5A0];
  v3 = a2;
  v4 = [[v2 alloc] initWithRecordType:v3];

  return v4;
}

id sub_26F1A7D84(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBC5A0];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithRecordType:v6 recordID:v5];

  return v7;
}

id sub_26F1A7DF8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CBC620];
  v5 = a2;
  v6 = [[v4 alloc] initWithRecord:v5 action:a3];

  return v6;
}

id sub_26F1A7E60(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CBC620];
  v5 = a2;
  v6 = [[v4 alloc] initWithRecordID:v5 action:a3];

  return v6;
}

id sub_26F1A8880(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = [objc_alloc(*(a1 + 32)) initWithDirectionalEdgeInsets:{a2, a3, a4, a5}];

  return v5;
}

BOOL sub_26F1A88E0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 directionalEdgeInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 directionalEdgeInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v8 == v16;
  if (v6 != v14)
  {
    v21 = 0;
  }

  if (v12 != v20)
  {
    v21 = 0;
  }

  return v10 == v18 && v21;
}

id sub_26F1A8F38(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_alloc(*(a1 + 32));
  *v16 = a2;
  *&v16[1] = a3;
  *&v16[2] = a4;
  *&v16[3] = a5;
  *&v16[4] = a6;
  *&v16[5] = a7;
  v14 = [v13 initWithAffineTransform:v16];

  return v14;
}

id sub_26F1A8FB0(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v5 = objc_alloc(*(a1 + 32));
  CGAffineTransformMakeTranslation(&v8, a2, a3);
  v6 = [v5 initWithAffineTransform:&v8];

  return v6;
}

id sub_26F1A901C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v5 = objc_alloc(*(a1 + 32));
  CGAffineTransformMakeScale(&v8, a2, a3);
  v6 = [v5 initWithAffineTransform:&v8];

  return v6;
}

id sub_26F1A9088(uint64_t a1, CGFloat a2)
{
  v3 = objc_alloc(*(a1 + 32));
  CGAffineTransformMakeRotation(&v6, a2);
  v4 = [v3 initWithAffineTransform:&v6];

  return v4;
}

id sub_26F1A90EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(*(a1 + 32));
  if (v5)
  {
    objc_msgSend_transform(v5);
    if (v6)
    {
LABEL_3:
      objc_msgSend_transform(v6);
      goto LABEL_6;
    }
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    if (v6)
    {
      goto LABEL_3;
    }
  }

  memset(&v10, 0, sizeof(v10));
LABEL_6:
  CGAffineTransformConcat(&v12, &t1, &v10);
  v8 = [v7 initWithAffineTransform:&v12];

  return v8;
}

id sub_26F1A91B8(uint64_t a1, void *a2, CGFloat a3, CGFloat a4)
{
  v7 = a2;
  v8 = objc_alloc(*(a1 + 32));
  if (v7)
  {
    objc_msgSend_transform(v7);
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  CGAffineTransformTranslate(&v12, &v11, a3, a4);
  v9 = [v8 initWithAffineTransform:&v12];

  return v9;
}

id sub_26F1A9260(uint64_t a1, void *a2, CGFloat a3, CGFloat a4)
{
  v7 = a2;
  v8 = objc_alloc(*(a1 + 32));
  if (v7)
  {
    objc_msgSend_transform(v7);
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  CGAffineTransformScale(&v12, &v11, a3, a4);
  v9 = [v8 initWithAffineTransform:&v12];

  return v9;
}

id sub_26F1A9308(uint64_t a1, void *a2, CGFloat a3)
{
  v5 = a2;
  v6 = objc_alloc(*(a1 + 32));
  if (v5)
  {
    objc_msgSend_transform(v5);
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  CGAffineTransformRotate(&v10, &v9, a3);
  v7 = [v6 initWithAffineTransform:&v10];

  return v7;
}

id sub_26F1A93A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(*(a1 + 32));
  if (v3)
  {
    objc_msgSend_transform(v3);
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CGAffineTransformInvert(&v8, &v7);
  v5 = [v4 initWithAffineTransform:&v8];

  return v5;
}

BOOL sub_26F1A9438(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    memset(&t1, 0, sizeof(t1));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  objc_msgSend_transform(v4);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_msgSend_transform(v6);
LABEL_6:
  v7 = CGAffineTransformEqualToTransform(&t1, &v9);

  return v7;
}

uint64_t sub_26F1A951C(objc_class *a1)
{
  InstanceMethod = class_getInstanceMethod(a1, sel_didMoveToWindow);
  v3 = class_getInstanceMethod(a1, sel_tmlDidMoveToWindow);
  Implementation = method_getImplementation(v3);
  TypeEncoding = method_getTypeEncoding(v3);
  if (class_addMethod(a1, sel_didMoveToWindow, Implementation, TypeEncoding))
  {
    v6 = method_getImplementation(InstanceMethod);
    v7 = method_getTypeEncoding(InstanceMethod);
    class_replaceMethod(a1, sel_tmlDidMoveToWindow, v6, v7);
  }

  else
  {
    method_exchangeImplementations(InstanceMethod, v3);
  }

  v8 = class_getInstanceMethod(a1, sel_traitCollectionDidChange_);
  v9 = class_getInstanceMethod(a1, sel_tmlTraitCollectionDidChange_);
  v10 = method_getImplementation(v9);
  v11 = method_getTypeEncoding(v9);
  if (class_addMethod(a1, sel_traitCollectionDidChange_, v10, v11))
  {
    v12 = method_getImplementation(v8);
    v13 = method_getTypeEncoding(v8);
    class_replaceMethod(a1, sel_tmlTraitCollectionDidChange_, v12, v13);
  }

  else
  {
    method_exchangeImplementations(v8, v9);
  }

  v14 = class_getInstanceMethod(a1, sel_accessibilityActivate);
  v15 = class_getInstanceMethod(a1, sel_tmlAccessibilityActivate);
  v16 = method_getImplementation(v15);
  v17 = method_getTypeEncoding(v15);
  if (class_addMethod(a1, sel_accessibilityActivate, v16, v17))
  {
    v18 = method_getImplementation(v14);
    v19 = method_getTypeEncoding(v14);
    class_replaceMethod(a1, sel_tmlAccessibilityActivate, v18, v19);
  }

  else
  {
    method_exchangeImplementations(v14, v15);
  }

  v20 = class_getInstanceMethod(a1, sel_accessibilityDecrement);
  v21 = class_getInstanceMethod(a1, sel_tmlAccessibilityDecrement);
  v22 = method_getImplementation(v21);
  v23 = method_getTypeEncoding(v21);
  if (class_addMethod(a1, sel_accessibilityDecrement, v22, v23))
  {
    v24 = method_getImplementation(v20);
    v25 = method_getTypeEncoding(v20);
    class_replaceMethod(a1, sel_tmlAccessibilityDecrement, v24, v25);
  }

  else
  {
    method_exchangeImplementations(v20, v21);
  }

  v26 = class_getInstanceMethod(a1, sel_accessibilityIncrement);
  v27 = class_getInstanceMethod(a1, sel_tmlAccessibilityIncrement);
  v28 = method_getImplementation(v27);
  v29 = method_getTypeEncoding(v27);
  if (class_addMethod(a1, sel_accessibilityIncrement, v28, v29))
  {
    v30 = method_getImplementation(v26);
    v31 = method_getTypeEncoding(v26);
    class_replaceMethod(a1, sel_tmlAccessibilityIncrement, v30, v31);
  }

  else
  {
    method_exchangeImplementations(v26, v27);
  }

  v32 = MEMORY[0x277D755E8];

  return [v32 tmlLoadCategory];
}

void sub_26F1A9830(void *a1)
{
  [a1 tmlDidMoveToWindow];
  v2 = [a1 window];

  if (v2)
  {
    [a1 emitTMLSignal:@"didMoveToWindow" withArguments:0];
    v3 = [a1 traitCollection];
    v4 = [TMLUITraitCollection traitEnvironment:a1 willTransitionToTraitCollection:v3 fromPreviousTraitCollection:0];

    [v4 emitTMLSignal:@"enter" withArguments:0];
  }
}

void sub_26F1A9904(void *a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 tmlTraitCollectionDidChange:v4];
  v5 = [a1 traitCollection];
  v6 = [TMLUITraitCollection traitEnvironment:a1 willTransitionToTraitCollection:v5 fromPreviousTraitCollection:v4];

  if (v4)
  {
    v8[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [a1 emitTMLSignal:@"traitCollectionDidChange" withArguments:v7];
  }

  else
  {
    [a1 emitTMLSignal:@"traitCollectionDidChange" withArguments:0];
  }

  [v6 emitTMLSignal:@"enter" withArguments:0];
}

void sub_26F1A9A1C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_getAssociatedObject(a1, &unk_26F208913);
  [v5 removeObjectsInArray:v4];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"superview == %@", a1];
  v7 = [v5 filteredArrayUsingPredicate:v6];
  [v7 makeObjectsPerformSelector:sel_removeFromSuperview];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26F1A9B50;
  v9[3] = &unk_279DC62F0;
  v9[4] = a1;
  [v4 enumerateObjectsUsingBlock:v9];
  v8 = [v4 mutableCopy];

  objc_setAssociatedObject(a1, &unk_26F208913, v8, 1);
}

void sub_26F1A9B5C(void *a1, uint64_t a2, void *a3)
{
  value = a3;
  v4 = objc_getAssociatedObject(a1, &unk_26F208914);
  if ([v4 count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v4];
  }

  v5 = value;
  if (value)
  {
    [MEMORY[0x277CCAAD0] activateConstraints:value];
    v5 = value;
  }

  objc_setAssociatedObject(a1, &unk_26F208914, v5, 3);
}

void sub_26F1A9C08(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_getAssociatedObject(a1, &unk_26F208915);
  if ([v5 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [a1 removeLayoutGuide:*(*(&v20 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }
  }

  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [a1 addLayoutGuide:{*(*(&v16 + 1) + 8 * v15++), v16}];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }

  objc_setAssociatedObject(a1, &unk_26F208915, v4, 3);
}

void sub_26F1A9DD8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 gestureRecognizers];
  v6 = [v5 mutableCopy];

  [v6 removeObjectsInArray:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_26F1A9EE0;
  v8[3] = &unk_279DC6318;
  v8[4] = a1;
  [v6 enumerateObjectsUsingBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1A9EEC;
  v7[3] = &unk_279DC6318;
  v7[4] = a1;
  [v4 enumerateObjectsUsingBlock:v7];
}

id sub_26F1A9EF8(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  v3 = [v1 stringWithUTF8String:class_getName(v2)];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 pathForResource:v3 ofType:@"tml"];

  return v5;
}

void sub_26F1A9FB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_getAssociatedObject(a1, &unk_26F208917);
  if (!v5)
  {
    v6 = objc_alloc_init(TMLContext);
    v7 = [a1 tmlObjects];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_26F1AA1D0;
    v14[3] = &unk_279DC6340;
    v5 = v6;
    v15 = v5;
    [v7 enumerateKeysAndObjectsUsingBlock:v14];

    v8 = [a1 tmlObjects];
    v9 = [v8 objectForKeyedSubscript:@"owner"];

    if (!v9)
    {
      v10 = [TMLWeakReferenceObject weakReferenceWithObject:a1];
      [(TMLContext *)v5 addObject:v10 withIdentifier:@"owner"];
    }

    objc_setAssociatedObject(a1, &unk_26F208917, v5, 1);
    objc_initWeak(&location, v5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_26F1AA1DC;
    v11[3] = &unk_279DC6368;
    objc_copyWeak(&v12, &location);
    [TMLObjectFinalizer runBlock:v11 onFinalize:a1];
    v4[2](v4, v5);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void sub_26F1AA1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F1AA1DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispose];
}

void sub_26F1AA21C(void *a1)
{
  v2 = objc_getAssociatedObject(a1, &unk_26F208917);
  if (v2)
  {
    v3 = v2;
    [v2 dispose];
    objc_setAssociatedObject(a1, &unk_26F208917, 0, 1);
    [a1 tmlDispose];
    v2 = v3;
  }
}

void sub_26F1AA294(void *a1)
{
  v2 = [a1 tmlViewPath];
  [a1 tmlLoadViewFromPath:v2];
}

void sub_26F1AA2E8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [a1 _tmlUnloadContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_26F1AA388;
  v6[3] = &unk_279DC6390;
  v7 = v4;
  v8 = a1;
  v5 = v4;
  [a1 _tmlEnsureContext:v6];
}

void sub_26F1AA388(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 loadSource:v3];
  v8 = [v4 rootObject];

  if (([v8 isEqual:*(a1 + 40)] & 1) == 0)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected to load own UIView for %@", v8];
    v7 = [v5 exceptionWithName:@"TMLRuntimeException" reason:v6 userInfo:0];
    [TMLExceptionHandler raiseException:v7];
  }
}

void sub_26F1AA474(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [a1 _tmlUnloadContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_26F1AA514;
  v6[3] = &unk_279DC6390;
  v7 = v4;
  v8 = a1;
  v5 = v4;
  [a1 _tmlEnsureContext:v6];
}

void sub_26F1AA514(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 loadSourceFromPath:v3];
  v8 = [v4 rootObject];

  if (([v8 isEqual:*(a1 + 40)] & 1) == 0)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected to load own UIView for %@", v8];
    v7 = [v5 exceptionWithName:@"TMLRuntimeException" reason:v6 userInfo:0];
    [TMLExceptionHandler raiseException:v7];
  }
}

void sub_26F1AA600(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
  v6 = [a1 tmlContext];
  v7 = [v6 allObjects];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26F1AA768;
  v15[3] = &unk_279DC6340;
  v8 = v5;
  v16 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v15];

  [a1 _tmlUnloadContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26F1AA7E8;
  v11[3] = &unk_279DC63B8;
  v12 = v8;
  v13 = v4;
  v14 = a1;
  v9 = v4;
  v10 = v8;
  [a1 _tmlEnsureContext:v11];
}

void sub_26F1AA768(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void sub_26F1AA7E8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_26F1AA928;
  v13 = &unk_279DC6340;
  v5 = v3;
  v14 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v10];
  [v5 loadSource:a1[5]];
  v6 = [v5 rootObject];
  if (([v6 isEqual:a1[6]] & 1) == 0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected to load own UITableViewCell for %@", v6, v10, v11, v12, v13];
    v9 = [v7 exceptionWithName:@"TMLRuntimeException" reason:v8 userInfo:0];
    [TMLExceptionHandler raiseException:v9];
  }
}

id sub_26F1AA934(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_alloc_init(TMLContext);
  [(TMLContext *)v4 loadSourceFromPath:v3];
  v5 = [(TMLContext *)v4 rootObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [TMLWeakReferenceObject weakReferenceWithObject:v5];
    v7 = [v5 tmlIdentifier];
    [(TMLContext *)v4 addObject:v6 withIdentifier:v7];

    objc_setAssociatedObject(v5, &unk_26F208917, v4, 1);
    objc_initWeak(&location, v4);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_26F1AAB6C;
    v14[3] = &unk_279DC6368;
    objc_copyWeak(&v15, &location);
    [TMLObjectFinalizer runBlock:v14 onFinalize:v5];
    v8 = v5;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected to load UIView for %@", v5];
    v11 = [v9 exceptionWithName:@"TMLRuntimeException" reason:v10 userInfo:0];
    [TMLExceptionHandler raiseException:v11];

    v12 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  return v8;
}

void sub_26F1AAB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F1AAB6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained disposeIfNecessary];
}

uint64_t sub_26F1AABAC(void *a1)
{
  v8 = 0;
  v2 = [a1 emitTMLSignal:@"accessibilityActivate" withArguments:0 returnValue:&v8];
  v3 = v8;
  v4 = v3;
  if (v2)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 tmlAccessibilityActivate];
  }

  v6 = v5;

  return v6;
}

void sub_26F1AAC48(objc_class *a1)
{
  InstanceMethod = class_getInstanceMethod(a1, sel_traitCollectionDidChange_);
  v3 = class_getInstanceMethod(a1, sel_tmlTraitCollectionDidChange_);
  Implementation = method_getImplementation(v3);
  TypeEncoding = method_getTypeEncoding(v3);
  if (class_addMethod(a1, sel_traitCollectionDidChange_, Implementation, TypeEncoding))
  {
    v6 = method_getImplementation(InstanceMethod);
    v7 = method_getTypeEncoding(InstanceMethod);

    class_replaceMethod(a1, sel_tmlTraitCollectionDidChange_, v6, v7);
  }

  else
  {

    method_exchangeImplementations(InstanceMethod, v3);
  }
}

void sub_26F1AAD2C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [a1 tmlTraitCollectionDidChange:v4];
  v5 = [a1 traitCollection];
  v6 = [TMLUITraitCollection traitEnvironment:a1 willTransitionToTraitCollection:v5 fromPreviousTraitCollection:v4];

  [v6 emitTMLSignal:@"enter" withArguments:0];
}

void sub_26F1AAE80(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD4660]);
  v3 = qword_2806D9170;
  qword_2806D9170 = v2;

  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  v5 = qword_2806D9180;
  qword_2806D9180 = v4;

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel_applicationDidReceiveMemoryWarningNotification_ name:*MEMORY[0x277D76670] object:0];
}

void sub_26F1AAFC4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x26F1AAFA0);
}

void sub_26F1AB684(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[TMLJSEnvironment validCurrentContext];
  [v4 raiseJSException:v3];
}

BOOL sub_26F1AB6F8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = v3 == v2 || [TMLTypes isNil:v2];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

BOOL sub_26F1AB774(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    if (v3 == v2 || +[TMLTypes isNil:](TMLTypes, "isNil:", v2) || (objc_opt_respondsToSelector() & 1) != 0 && ![v2 count])
    {
      v4 = 1;
    }

    else
    {
      v4 = (objc_opt_respondsToSelector() & 1) != 0 && [v2 length] == 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

id sub_26F1AB83C(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [TMLJSNil unwrap:a2];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = sub_26F1AB930(v2);
    }

    else
    {
      v6[0] = v2;
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
      v3 = sub_26F1AB930(v4);
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

id sub_26F1AB930(void *a1)
{
  v1 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_26F1ACDC4;
  v16 = sub_26F1ACDD4;
  v17 = 0;
  v2 = [MEMORY[0x277CBEB68] null];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_26F1ACDDC;
  v8[3] = &unk_279DC64D8;
  v3 = v2;
  v9 = v3;
  v11 = &v12;
  v4 = v1;
  v10 = v4;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v8];
  v5 = v13[5];
  if (!v5)
  {
    v5 = v4;
  }

  v6 = v5;

  _Block_object_dispose(&v12, 8);

  return v6;
}

void sub_26F1ABA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_26F1AC6C4(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [[v1 alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_26F1ACD68;
  v6[3] = &unk_279DC64B0;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  return v4;
}

id sub_26F1AC794(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = [[v1 alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_26F1ACCF0;
  v6[3] = &unk_279DC6488;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

id sub_26F1AC870(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    goto LABEL_29;
  }

  if (a2 <= 16)
  {
    if ((a2 - 2) < 6)
    {
      goto LABEL_4;
    }

    if (a2 == 15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v3 CGColor];
        goto LABEL_6;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v3 CGImage];
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    goto LABEL_33;
  }

  if (a2 <= 20)
  {
    if (a2 != 17)
    {
      if (a2 == 19)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      if (a2 == 20)
      {
        v6 = [TMLJSNil unwrap:v3];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = sub_26F1AC794(v6);
        }

        else
        {
          v5 = 0;
        }

        v3 = v6;
        goto LABEL_30;
      }

LABEL_33:
      if ([TMLJSNil isNil:v3])
      {
        v4 = [MEMORY[0x277CBEB68] null];
        goto LABEL_6;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = sub_26F1AC794(v3);
        goto LABEL_6;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = [v3 NSAttributedString];
          goto LABEL_6;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = [v3 CGRectValue];
            goto LABEL_6;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = [v3 CGPointValue];
            goto LABEL_6;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = [v3 CGSizeValue];
            goto LABEL_6;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = [v3 NSRangeValue];
            goto LABEL_6;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = [v3 UIEdgeInsetsValue];
            goto LABEL_6;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = [v3 NSDirectionalEdgeInsetsValue];
            goto LABEL_6;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = objc_msgSend_CGAffineTransformValue(v3);
            goto LABEL_6;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = objc_msgSend_CATransform3DValue(v3);
            goto LABEL_6;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = [v3 blockValue];
            goto LABEL_6;
          }

          goto LABEL_5;
        }

        goto LABEL_12;
      }

LABEL_28:
      v4 = sub_26F1AC6C4(v3);
      goto LABEL_6;
    }

LABEL_4:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_5:
      v4 = v3;
      v3 = v4;
LABEL_6:
      v5 = v4;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (a2 > 22)
  {
    if (a2 != 23 && a2 != 24)
    {
      goto LABEL_33;
    }

    goto LABEL_4;
  }

  if (a2 == 21)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_12:
    v4 = [v3 UIFontValue];
    goto LABEL_6;
  }

LABEL_29:
  v5 = 0;
LABEL_30:

  return v5;
}

void sub_26F1ACCF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = sub_26F1AC870(a3, 0);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_26F1ACD68(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_26F1AC870(a2, 0);
  [v2 addObject:v3];
}

uint64_t sub_26F1ACDC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F1ACDDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 32) == v5)
  {
    v10 = v5;
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6)
    {
      v7 = [*(a1 + 40) mutableCopy];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v6 removeObjectAtIndex:a3];
    v5 = v10;
  }
}

void sub_26F1AD3FC(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x26F1AD354);
  }

  JUMPOUT(0x26F1AD358);
}

uint64_t sub_26F1AD444(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (*(v4 + 16) != 18)
  {
    *(v4 + 96) = a4;
    if ([*(a1 + 32) consumeToken:a3 text:a2])
    {
      return 0;
    }

    v9 = *(a1 + 32);
    if (!*(v9 + 160))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected token '%s' at line %d", a2, a4];
      v11 = *(a1 + 32);
      v12 = *(v11 + 160);
      *(v11 + 160) = v10;

      v9 = *(a1 + 32);
    }

    *(v9 + 16) = 18;
  }

  return 1;
}

void sub_26F1AD74C(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x26F1AD6A8);
  }

  JUMPOUT(0x26F1AD6ACLL);
}

uint64_t sub_26F1AD770(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (*(v4 + 16) != 18)
  {
    *(v4 + 96) = a4;
    if ([*(a1 + 32) consumeToken:a3 text:a2])
    {
      return 0;
    }

    v9 = *(a1 + 32);
    if (!*(v9 + 160))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected token '%s' at line %d", a2, a4];
      v11 = *(a1 + 32);
      v12 = *(v11 + 160);
      *(v11 + 160) = v10;

      v9 = *(a1 + 32);
    }

    *(v9 + 16) = 18;
  }

  return 1;
}

void sub_26F1ADA30(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x26F1AD978);
  }

  JUMPOUT(0x26F1AD97CLL);
}

uint64_t sub_26F1ADA54(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (*(v4 + 16) != 18)
  {
    *(v4 + 96) = a4;
    if ([*(a1 + 32) consumeToken:a3 text:a2])
    {
      return 0;
    }

    v9 = *(a1 + 32);
    if (!*(v9 + 160))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected token '%s' at line %d", a2, a4];
      v11 = *(a1 + 32);
      v12 = *(v11 + 160);
      *(v11 + 160) = v10;

      v9 = *(a1 + 32);
    }

    *(v9 + 16) = 18;
  }

  return 1;
}

void sub_26F1ADD04(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x26F1ADC60);
  }

  JUMPOUT(0x26F1ADC64);
}

uint64_t sub_26F1ADD24(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (*(v4 + 16) != 18)
  {
    *(v4 + 96) = a4;
    if ([*(a1 + 32) consumeToken:a3 text:a2])
    {
      return 0;
    }

    v9 = *(a1 + 32);
    if (!*(v9 + 160))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected token '%s' at line %d", a2, a4];
      v11 = *(a1 + 32);
      v12 = *(v11 + 160);
      *(v11 + 160) = v10;

      v9 = *(a1 + 32);
    }

    *(v9 + 16) = 18;
  }

  return 1;
}

void sub_26F1ADF34(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_begin_catch(exc_buf);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x26F1ADEC8);
  }

  JUMPOUT(0x26F1ADECCLL);
}

void sub_26F1ADF74(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (*(v7 + 16) == 18)
  {
    *a4 = 1;
  }

  else
  {
    *(v7 + 96) = *(*(*(a1 + 40) + 8) + 24);
    v8 = *(a1 + 32);
    v18 = v6;
    v9 = [v6 token];
    v10 = [v18 text];
    LOBYTE(v8) = [v8 consumeToken:v9 text:{objc_msgSend(v10, "cStringUsingEncoding:", 4)}];

    if ((v8 & 1) == 0)
    {
      v11 = *(a1 + 32);
      if (!*(v11 + 160))
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = [v18 text];
        v14 = [v12 stringWithFormat:@"Unexpected token '%@' at line %u", v13, *(*(*(a1 + 40) + 8) + 24)];
        v15 = *(a1 + 32);
        v16 = *(v15 + 160);
        *(v15 + 160) = v14;

        v11 = *(a1 + 32);
      }

      *(v11 + 16) = 18;
      *a4 = 1;
    }

    v17 = [v18 token] == 1;
    v6 = v18;
    if (v17)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

void sub_26F1AF03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *sub_26F1AF054(uint64_t a1, void *a2)
{
  result = [a2 token];
  if ((result - 2) <= 5)
  {
    *(*(*(a1 + 32) + 8) + 24) += qword_26F208918[(result - 2)];
  }

  return result;
}

uint64_t sub_26F1AF970()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(^|(\\w+\\.)+)on([A-Z].*)" options:0 error:0];
  v1 = qword_2806D9190;
  qword_2806D9190 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26F1AFB74(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 token] == 19)
  {
    v3 = *(*(a1 + 32) + 72);
    v4 = [v5 text];
    [v3 addImplements:v4];
  }
}

void sub_26F1B02AC(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 token];
  if (v6 == 21)
  {
    v9 = [v14 text];
    v10 = [v9 isEqualToString:{@", "}];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v6 == 19)
  {
    v7 = a1[4];
    v8 = [v14 text];
    [v7 addObject:v8];

    goto LABEL_6;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed argument for pragma %@ at line %d", a1[6], *(a1[5] + 96)];
  v12 = a1[5];
  v13 = *(v12 + 160);
  *(v12 + 160) = v11;

  *a4 = 1;
LABEL_6:
}

void sub_26F1B039C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 token];
  if (v6 == 21)
  {
    v9 = [v14 text];
    v10 = [v9 isEqualToString:{@", "}];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v6 == 19)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = [v14 text];
    [v7 addRequire:v8];

    goto LABEL_6;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed argument for pragma %@ at line %d", *(a1 + 40), *(*(a1 + 32) + 96)];
  v12 = *(a1 + 32);
  v13 = *(v12 + 160);
  *(v12 + 160) = v11;

  *a4 = 1;
LABEL_6:
}

void sub_26F1B0490(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 text];
  [v2 appendString:v3];
}

void sub_26F1B0834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_26F1B085C(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 token];
  if (v3 <= 5)
  {
    if (v3 == 2)
    {
      ++*(*(*(a1 + 56) + 8) + 24);
      v12 = *(a1 + 32);
      v13 = v15;
      goto LABEL_17;
    }

    v4 = v15;
    if (v3 != 3)
    {
      goto LABEL_16;
    }

    v7 = *(a1 + 56);
LABEL_14:
    v5 = *(v7 + 8);
    v6 = *(v5 + 24) - 1;
    goto LABEL_15;
  }

  if (v3 == 21)
  {
    v4 = v15;
    if (!*(*(*(a1 + 48) + 8) + 24) && !*(*(*(a1 + 56) + 8) + 24))
    {
      v8 = [v15 text];
      v9 = [v8 isEqualToString:{@", "}];

      v4 = v15;
      if (v9)
      {
        v10 = *(a1 + 40);
        v11 = [*(a1 + 32) copy];
        [v10 addObject:v11];

        [*(a1 + 32) setString:&stru_287F301C0];
        goto LABEL_18;
      }
    }

    goto LABEL_16;
  }

  v4 = v15;
  if (v3 == 7)
  {
    v7 = *(a1 + 48);
    goto LABEL_14;
  }

  if (v3 == 6)
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 24) + 1;
LABEL_15:
    *(v5 + 24) = v6;
  }

LABEL_16:
  v12 = *(a1 + 32);
  v13 = v4;
LABEL_17:
  v14 = [v13 text];
  [v12 appendString:v14];

LABEL_18:
}

void sub_26F1B09D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v7 = a2;
  v8 = [v6 stringWithFormat:@"%%%u", a3];
  [v5 replaceOccurrencesOfString:v8 withString:v7 options:2 range:{0, objc_msgSend(*(a1 + 32), "length")}];
}

uint64_t sub_26F1B14BC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (a3)
  {
    v10 = v7;
    v7 = [v7 token];
    if (v7 == 2)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v8 = v10;
LABEL_6:
      *a4 = 1;
      goto LABEL_7;
    }

    v7 = [v10 token];
    v8 = v10;
    if (v7)
    {
      v7 = [v10 token];
      v8 = v10;
      if (v7 != 1)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:

  return MEMORY[0x2821F96F8](v7, v8);
}

void sub_26F1B1568(uint64_t a1, void *a2, TMLJSScope *a3, _BYTE *a4)
{
  v40 = a2;
  v7 = [v40 token];
  if (v7 <= 6)
  {
    if (v7 > 2)
    {
      if (v7 != 3)
      {
        if (v7 == 6 && *(*(*(a1 + 88) + 8) + 24) == 1)
        {
          *(*(*(a1 + 80) + 8) + 24) = 1;
        }

        goto LABEL_45;
      }

      a3 = [*(a1 + 64) lastObject];
      [*(a1 + 64) removeLastObject];
      if (!a3 || [(TMLJSScope *)a3 type]!= 1)
      {
        goto LABEL_44;
      }

      v22 = *(a1 + 40);
      v23 = [v40 text];
      [v22 appendFormat:@"%@.bind(currentContext())", v23];
      goto LABEL_40;
    }

    if (!v7)
    {
      if (a3)
      {
        v19 = [*(a1 + 32) objectAtIndexedSubscript:&a3[-1]._vars + 7];
        a3 = [v19 text];
      }

      if (!sub_26F1B1AD8(a3))
      {
        goto LABEL_52;
      }

      v20 = *(a1 + 40);
      v21 = [v40 text];
      goto LABEL_39;
    }

    if (v7 != 2)
    {
      goto LABEL_45;
    }

    v10 = *(*(a1 + 88) + 8);
    if ((*(v10 + 24) & 1) == 0)
    {
      v11 = objc_alloc_init(TMLJSScope);
      [(TMLJSScope *)v11 setType:0];
      [*(a1 + 64) addObject:v11];

      v10 = *(*(a1 + 88) + 8);
    }

    *(v10 + 24) = 0;
LABEL_25:
    *(*(*(a1 + 80) + 8) + 24) = 0;
    goto LABEL_45;
  }

  if (v7 > 14)
  {
    if (v7 != 15)
    {
      if (v7 != 19)
      {
        if (v7 != 20)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      }

      goto LABEL_20;
    }

    if ([*(a1 + 48) length])
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = *(a1 + 56);
      v26 = *(v25 + 24);
      v27 = [*(v25 + 72) type];
      v28 = [v24 stringWithFormat:@"Invalid expression for '%@' of type %@ at line %d", v26, v27, *(*(a1 + 56) + 96)];
      v29 = *(a1 + 56);
      v30 = *(v29 + 160);
      *(v29 + 160) = v28;

      *a4 = 1;
      goto LABEL_53;
    }

    v20 = *(a1 + 48);
    a3 = [v40 text];
    v21 = [(TMLJSScope *)a3 substringFromIndex:1];
LABEL_39:
    v23 = v21;
    [v20 appendString:v21];
    goto LABEL_40;
  }

  if (v7 == 7)
  {
    goto LABEL_25;
  }

  if (v7 != 10)
  {
    goto LABEL_45;
  }

LABEL_20:
  v12 = [*(a1 + 48) length];
  v13 = [v40 token];
  if (v12)
  {
    if (v13 != 10 || (v14 = &a3->super.isa + 1, v14 >= [*(a1 + 32) count]) || (objc_msgSend(*(a1 + 32), "objectAtIndexedSubscript:", v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "text"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"$"), v16, v15, (v17 & 1) == 0))
    {
      v18 = *(a1 + 48);
LABEL_51:
      a3 = [v40 text];
      [v18 appendString:a3];
      goto LABEL_52;
    }

    goto LABEL_45;
  }

  if (v13 == 10)
  {
    goto LABEL_45;
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    a3 = [*(a1 + 64) lastObject];
    v23 = [v40 text];
    [(TMLJSScope *)a3 addVar:v23];
LABEL_43:

    goto LABEL_44;
  }

  v31 = objc_opt_class();
  v32 = [*(a1 + 32) subarrayWithRange:{0, a3}];
  a3 = [v31 previousNonSpaceToken:v32];

  v23 = [v40 text];
  v33 = [(TMLJSScope *)a3 text];
  v34 = [@"var" isEqualToString:v33];

  if (v34)
  {
    v35 = [*(a1 + 64) lastObject];
    [v35 addVar:v23];

    goto LABEL_43;
  }

  if (![*(*(a1 + 56) + 128) containsObject:v23] || -[TMLJSScope token](a3, "token") == 10 || objc_msgSend(v40, "token") == 10)
  {
LABEL_61:

LABEL_6:
    v8 = [v40 text];
    v9 = [v8 isEqualToString:@"function"];

    if (v9)
    {
      a3 = objc_alloc_init(TMLJSScope);
      [(TMLJSScope *)a3 setType:1];
      [*(a1 + 64) addObject:a3];
      *(*(*(a1 + 88) + 8) + 24) = 1;
LABEL_44:
    }

LABEL_45:
    if ([*(a1 + 48) length])
    {
      v36 = [*(a1 + 48) copy];
      v37 = [*(a1 + 72) indexOfObject:v36];
      v38 = *(a1 + 40);
      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v38 appendFormat:@"$(%u)", objc_msgSend(*(a1 + 72), "count")];
        [*(a1 + 72) addObject:v36];
      }

      else
      {
        [v38 appendFormat:@"$(%u)", v37];
      }

      [*(a1 + 48) setString:&stru_287F301C0];
    }

    v18 = *(a1 + 40);
    goto LABEL_51;
  }

  v39 = [objc_opt_class() varsInCurrentScope:*(a1 + 64)];
  if ([v39 containsObject:v23])
  {

    goto LABEL_61;
  }

  [*(a1 + 40) appendFormat:@"this.%@", v23];

LABEL_40:
LABEL_52:

LABEL_53:
}

uint64_t sub_26F1B1AD8(void *a1)
{
  v1 = qword_2806D91B0;
  v2 = a1;
  if (v1 != -1)
  {
    sub_26F200C54();
  }

  v3 = [qword_2806D91A8 containsObject:v2];

  return v3;
}

unint64_t sub_26F1B1F88(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([v3 count] > a2)
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:a2];
      v6 = [v5 token];

      if (v6 == 7)
      {
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      else if (v6 == 6)
      {
        ++v4;
      }

      ++a2;
    }

    while (a2 < [v3 count]);
  }

  a2 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:

  return a2;
}

void sub_26F1B3130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26F1B3170(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [v7 token];
  if (v8 <= 6)
  {
    if (v8 > 2)
    {
      if (v8 != 3)
      {
        if (v8 == 6 && ((*(*(*(a1 + 104) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 80) + 8) + 24) & 1) == 0))
        {
          *(*(*(a1 + 96) + 8) + 24) = 1;
        }

        goto LABEL_58;
      }

      v27 = [*(a1 + 64) lastObject];
      v17 = v27;
      if (v27 && -[TMLJSScope type](v27, "type") == 1 && [*(a1 + 64) count] >= 2)
      {
        v28 = *(a1 + 56);
        v29 = [v7 text];
        [v28 appendFormat:@"%@.bind(currentContext())", v29];
      }

      else
      {
        v33 = *(a1 + 56);
        v29 = [v7 text];
        [v33 appendString:v29];
      }

      *(*(*(a1 + 88) + 8) + 24) = 0;
      [*(a1 + 64) removeLastObject];
      goto LABEL_49;
    }

    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        v9 = *(*(a1 + 104) + 8);
        if ((*(v9 + 24) & 1) == 0)
        {
          v10 = objc_alloc_init(TMLJSScope);
          [(TMLJSScope *)v10 setType:0];
          if (![*(a1 + 64) count])
          {
            v11 = *(a1 + 72);
            if (v11)
            {
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v12 = v11;
              v13 = [v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v50;
                do
                {
                  v16 = 0;
                  do
                  {
                    if (*v50 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    [(TMLJSScope *)v10 addVar:*(*(&v49 + 1) + 8 * v16++)];
                  }

                  while (v14 != v16);
                  v14 = [v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
                }

                while (v14);
              }
            }
          }

          [*(a1 + 64) addObject:v10];

          v9 = *(*(a1 + 104) + 8);
        }

        *(v9 + 24) = 0;
        *(*(*(a1 + 80) + 8) + 24) = 1;
        goto LABEL_35;
      }

LABEL_58:
      v41 = *(a1 + 56);
      v42 = [v7 text];
      [v41 appendString:v42];

      *(*(*(a1 + 88) + 8) + 24) = 0;
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  if (v8 <= 14)
  {
    if (v8 == 7)
    {
LABEL_35:
      *(*(*(a1 + 96) + 8) + 24) = 0;
      goto LABEL_58;
    }

    if (v8 != 10)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

  if (v8 == 20)
  {
    v30 = [v7 text];
    v31 = [v30 isEqualToString:@"function"];

    if (!v31)
    {
      goto LABEL_58;
    }

    v17 = objc_alloc_init(TMLJSScope);
    [(TMLJSScope *)v17 setType:1];
    [*(a1 + 64) addObject:v17];
    *(*(*(a1 + 104) + 8) + 24) = 1;
LABEL_57:

    goto LABEL_58;
  }

  if (v8 == 19)
  {
    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      v17 = [*(a1 + 64) lastObject];
      v32 = [v7 text];
      [(TMLJSScope *)v17 addVar:v32];
    }

    else
    {
      if (*(*(*(a1 + 80) + 8) + 24) != 1)
      {
        goto LABEL_58;
      }

      v36 = objc_opt_class();
      v37 = [*(a1 + 48) subarrayWithRange:{0, a3}];
      v17 = [v36 previousNonSpaceToken:v37];

      v32 = [v7 text];
      v38 = [(TMLJSScope *)v17 text];
      v39 = [@"var" isEqualToString:v38];

      if (v39)
      {
        v40 = [*(a1 + 64) lastObject];
        [v40 addVar:v32];
      }

      else
      {
        if (![*(*(a1 + 40) + 128) containsObject:v32] || -[TMLJSScope token](v17, "token") == 10)
        {
          goto LABEL_56;
        }

        v40 = [objc_opt_class() varsInCurrentScope:*(a1 + 64)];
        if (![v40 containsObject:v32])
        {
          [*(a1 + 56) appendFormat:@"this.%@", v32];
          *(*(*(a1 + 88) + 8) + 24) = 0;

          goto LABEL_67;
        }
      }
    }

LABEL_56:

    goto LABEL_57;
  }

  if (v8 != 15)
  {
    goto LABEL_58;
  }

  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v34 = *(a1 + 32);
    v17 = [v7 text];
    [v34 addObject:v17];
    goto LABEL_47;
  }

  v17 = [v7 text];
  if (([(TMLJSScope *)v17 isEqualToString:@"$"]& 1) != 0)
  {
LABEL_47:

    goto LABEL_48;
  }

  v18 = [v7 text];
  v19 = [v18 isEqualToString:@"$self"];

  if (v19)
  {
LABEL_48:
    v35 = *(a1 + 56);
    v17 = [v7 text];
    [v35 appendString:v17];
LABEL_49:

    goto LABEL_59;
  }

  if (*(*(*(a1 + 88) + 8) + 24) != 1)
  {
    v43 = objc_opt_class();
    v44 = [*(a1 + 48) subarrayWithRange:{0, a3}];
    v17 = [v43 previousNonSpaceToken:v44];

    v32 = [v7 text];
    v45 = [(TMLJSScope *)v17 text];
    v46 = [@"var" isEqualToString:v45];

    if (v46)
    {
      [*(a1 + 32) addObject:v32];
    }

    if ([*(a1 + 32) containsObject:v32])
    {

      goto LABEL_47;
    }

    v47 = *(a1 + 56);
    v48 = [v32 substringFromIndex:1];
    [v47 appendFormat:@"$$('%@')", v48];

    *(*(*(a1 + 88) + 8) + 24) = 1;
LABEL_67:

    goto LABEL_49;
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = *(a1 + 40);
  v22 = *(v21 + 24);
  v23 = [*(v21 + 72) type];
  v24 = [v20 stringWithFormat:@"Invalid expression for '%@' of type %@ at line %d", v22, v23, *(*(a1 + 40) + 96)];
  v25 = *(a1 + 40);
  v26 = *(v25 + 160);
  *(v25 + 160) = v24;

  *a4 = 1;
LABEL_59:
}

uint64_t sub_26F1B3A10()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"Array", @"Boolean", @"Date", @"Function", @"Math", @"Number", @"Object", @"RegExp", @"String", 0}];
  v1 = qword_2806D9198;
  qword_2806D9198 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_26F1B3BAC()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"return", @"var", @"new", @"switch", @"case", @"throw", @"let", @"instanceof", @"else", @"in", @"of", @"const", @"delete", @"typeof", 0}];
  v1 = qword_2806D91A8;
  qword_2806D91A8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

char *sub_26F1B3C98(uint64_t a1, size_t __n, void *__src)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = v6 + __n;
  if (v6 + __n <= v7)
  {
    v11 = *(a1 + 24);
LABEL_13:
    result = memcpy(&v11[v6], __src, __n);
    *(a1 + 16) = v8;
    return result;
  }

  do
  {
    v7 *= 2;
  }

  while (v7 < v8);
  if (*(a1 + 40))
  {
    v9 = *(a1 + 40);
  }

  else
  {
    v9 = &off_282044EC8;
  }

  result = (*v9)(v9[2], v7);
  if (result)
  {
    v11 = result;
    memcpy(result, *(a1 + 24), *(a1 + 16));
    if (*(a1 + 32))
    {
      if (*(a1 + 24))
      {
        (v9[1])(v9[2]);
      }
    }

    else
    {
      *(a1 + 32) = 1;
    }

    *(a1 + 24) = v11;
    *(a1 + 8) = v7;
    v6 = *(a1 + 16);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_26F1B3D74(uint64_t a1)
{
  v1 = *a1;
  if (**a1 != 682290937)
  {
    sub_26F200C7C();
  }

  if (v1[12])
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = *(v1 + 7) + 72 * v3;
      v7 = *(v5 + 20);
      v6 = *(v5 + 24);
      v8 = *(v5 + 12);
      if (v8 == 1)
      {
        if ((*(v5 + 48) & 4) != 0)
        {
          if (*(a1 + v7) != *(v5 + 8))
          {
            goto LABEL_42;
          }

          v20 = *(v5 + 16);
          if (v20 == 16 || v20 == 14)
          {
            v22 = *(a1 + v6);
            if (!v22 || v22 == *(v5 + 40))
            {
              v23 = 0;
              goto LABEL_182;
            }
          }
        }

        else
        {
          v9 = *(v5 + 16);
          if (v9 == 16 || v9 == 14)
          {
            v11 = *(a1 + v6);
            if (!v11 || v11 == *(v5 + 40))
            {
              goto LABEL_42;
            }
          }

          else if (!*(a1 + v7))
          {
            goto LABEL_42;
          }
        }
      }

      else if (v8)
      {
        v12 = *(a1 + v7);
        if (v12)
        {
          v13 = *(v5 + 8);
          if (v13 >> 25)
          {
            v14 = 5;
          }

          else
          {
            v14 = 4;
          }

          if (v13 < 0x40000)
          {
            v14 = 3;
          }

          if (v13 < 0x800)
          {
            v14 = 2;
          }

          if (v13 >= 0x10)
          {
            v15 = v14;
          }

          else
          {
            v15 = 1;
          }

          v16 = *(v5 + 48) & 1;
          if (v16)
          {
            v17 = 1;
          }

          else
          {
            v17 = v12;
          }

          v18 = *(a1 + v6);
          switch(*(v5 + 16))
          {
            case 0:
            case 0xD:
              v24 = 0;
              v19 = 0;
              v25 = 1;
              do
              {
                v26 = *(v18 + 4 * v24);
                if ((v26 & 0x80000000) != 0)
                {
                  v27 = 10;
                }

                else if (v26 >= 0x80)
                {
                  if (v26 >= 0x4000)
                  {
                    if (v26 >> 28)
                    {
                      v28 = 5;
                    }

                    else
                    {
                      v28 = 4;
                    }

                    if (v26 >= 0x200000)
                    {
                      v27 = v28;
                    }

                    else
                    {
                      v27 = 3;
                    }
                  }

                  else
                  {
                    v27 = 2;
                  }
                }

                else
                {
                  v27 = 1;
                }

                v19 += v27;
                v24 = v25;
                v29 = v12 > v25++;
              }

              while (v29);
              break;
            case 1:
              v46 = 0;
              v19 = 0;
              v47 = 1;
              do
              {
                v48 = (2 * *(v18 + 4 * v46)) ^ (*(v18 + 4 * v46) >> 31);
                if (v48 >= 0x80)
                {
                  if (v48 >= 0x4000)
                  {
                    if (v48 >= 0x200000)
                    {
                      if (v48 >> 28)
                      {
                        v49 = 5;
                      }

                      else
                      {
                        v49 = 4;
                      }
                    }

                    else
                    {
                      v49 = 3;
                    }
                  }

                  else
                  {
                    v49 = 2;
                  }
                }

                else
                {
                  v49 = 1;
                }

                v19 += v49;
                v46 = v47;
                v29 = v12 > v47++;
              }

              while (v29);
              break;
            case 2:
            case 7:
            case 0xA:
              v19 = 4 * v12;
              break;
            case 3:
            case 8:
              v30 = 0;
              v19 = 0;
              v31 = 1;
              do
              {
                v32 = *(v18 + 8 * v30);
                if (HIDWORD(v32))
                {
                  if (v32 >> 35)
                  {
                    if (v32 >> 42)
                    {
                      v35 = v32 >> 49;
                      v36 = HIBYTE(v32);
                      v37 = (v32 & 0x8000000000000000) != 0;
                      v33 = 9;
                      if (v37)
                      {
                        v33 = 10;
                      }

                      if (!v36)
                      {
                        v33 = 8;
                      }

                      if (!v35)
                      {
                        v33 = 7;
                      }
                    }

                    else
                    {
                      v33 = 6;
                    }
                  }

                  else
                  {
                    v33 = 5;
                  }
                }

                else if (v32 >= 0x80)
                {
                  if (v32 >= 0x4000)
                  {
                    if (v32 >> 28)
                    {
                      v34 = 5;
                    }

                    else
                    {
                      v34 = 4;
                    }

                    if (v32 >= 0x200000)
                    {
                      v33 = v34;
                    }

                    else
                    {
                      v33 = 3;
                    }
                  }

                  else
                  {
                    v33 = 2;
                  }
                }

                else
                {
                  v33 = 1;
                }

                v19 += v33;
                v30 = v31;
                v29 = v12 > v31++;
              }

              while (v29);
              break;
            case 4:
              v50 = 0;
              v19 = 0;
              v51 = 1;
              do
              {
                v52 = (2 * *(v18 + 8 * v50)) ^ (*(v18 + 8 * v50) >> 63);
                if (HIDWORD(v52))
                {
                  if (v52 >> 35)
                  {
                    if (v52 >> 42)
                    {
                      if (v52 >> 49)
                      {
                        if (HIBYTE(v52))
                        {
                          v37 = (v52 & 0x8000000000000000) != 0;
                          v53 = 9;
                          if (v37)
                          {
                            v53 = 10;
                          }
                        }

                        else
                        {
                          v53 = 8;
                        }
                      }

                      else
                      {
                        v53 = 7;
                      }
                    }

                    else
                    {
                      v53 = 6;
                    }
                  }

                  else
                  {
                    v53 = 5;
                  }
                }

                else if (v52 >= 0x80)
                {
                  if (v52 >= 0x4000)
                  {
                    if (v52 >= 0x200000)
                    {
                      if (v52 >> 28)
                      {
                        v53 = 5;
                      }

                      else
                      {
                        v53 = 4;
                      }
                    }

                    else
                    {
                      v53 = 3;
                    }
                  }

                  else
                  {
                    v53 = 2;
                  }
                }

                else
                {
                  v53 = 1;
                }

                v19 += v53;
                v50 = v51;
                v29 = v12 > v51++;
              }

              while (v29);
              break;
            case 5:
            case 9:
            case 0xB:
              v19 = 8 * v12;
              break;
            case 6:
              v54 = 0;
              v19 = 0;
              v55 = 1;
              do
              {
                v56 = *(v18 + 4 * v54);
                if (v56 >= 0x80)
                {
                  if (v56 >= 0x4000)
                  {
                    if (v56 >> 28)
                    {
                      v58 = 5;
                    }

                    else
                    {
                      v58 = 4;
                    }

                    if (v56 >= 0x200000)
                    {
                      v57 = v58;
                    }

                    else
                    {
                      v57 = 3;
                    }
                  }

                  else
                  {
                    v57 = 2;
                  }
                }

                else
                {
                  v57 = 1;
                }

                v19 += v57;
                v54 = v55;
                v29 = v12 > v55++;
              }

              while (v29);
              break;
            case 0xC:
              v19 = v12;
              break;
            case 0xE:
              v73 = *(v5 + 48) & 1;
              v75 = v17;
              v77 = v15;
              v42 = 0;
              v19 = 0;
              v43 = 1;
              do
              {
                v44 = strlen(*(v18 + 8 * v42));
                if (v44 >> 28)
                {
                  v45 = 5;
                }

                else
                {
                  v45 = 4;
                }

                if (v44 < 0x200000)
                {
                  v45 = 3;
                }

                if (v44 < 0x4000)
                {
                  v45 = 2;
                }

                if (v44 < 0x80)
                {
                  v45 = 1;
                }

                v19 += v44 + v45;
                v42 = v43;
                v29 = v12 > v43++;
              }

              while (v29);
              v17 = v75;
              v15 = v77;
              v16 = v73;
              break;
            case 0xF:
              v59 = 0;
              v19 = 0;
              v60 = 1;
              do
              {
                v61 = *(v18 + 16 * v59);
                if (v61 >> 28)
                {
                  v62 = 5;
                }

                else
                {
                  v62 = 4;
                }

                if (v61 < 0x200000)
                {
                  v62 = 3;
                }

                if (v61 < 0x4000)
                {
                  v62 = 2;
                }

                if (v61 < 0x80)
                {
                  v62 = 1;
                }

                v19 += v61 + v62;
                v59 = v60;
                v29 = v12 > v60++;
              }

              while (v29);
              break;
            case 0x10:
              v74 = v17;
              v76 = v15;
              v38 = 0;
              v19 = 0;
              v39 = 1;
              do
              {
                v40 = sub_26F1B3D74(*(v18 + 8 * v38));
                if (v40 >> 28)
                {
                  v41 = 5;
                }

                else
                {
                  v41 = 4;
                }

                if (v40 < 0x200000)
                {
                  v41 = 3;
                }

                if (v40 < 0x4000)
                {
                  v41 = 2;
                }

                if (v40 < 0x80)
                {
                  v41 = 1;
                }

                v19 += v40 + v41;
                v38 = v39;
                v29 = v12 > v39++;
              }

              while (v29);
              v16 = *(v5 + 48) & 1;
              v17 = v74;
              v15 = v76;
              break;
            default:
              v19 = 0;
              break;
          }

          v63 = v17 * v15;
          if (v19 >> 28)
          {
            v64 = 5;
          }

          else
          {
            v64 = 4;
          }

          if (v19 < 0x200000)
          {
            v64 = 3;
          }

          if (v19 < 0x4000)
          {
            v64 = 2;
          }

          if (v19 < 0x80)
          {
            v64 = 1;
          }

          v65 = v64 + v63;
          if (v16)
          {
            v63 = v65;
          }

          v23 = (v63 + v19);
          goto LABEL_182;
        }

LABEL_42:
        v23 = 0;
        goto LABEL_182;
      }

      v23 = sub_26F1B4420(v5, (a1 + v6));
LABEL_182:
      v4 += v23;
      ++v3;
      v1 = *a1;
      if (v3 >= *(*a1 + 48))
      {
        goto LABEL_185;
      }
    }
  }

  v4 = 0;
LABEL_185:
  v66 = *(a1 + 8);
  if (v66)
  {
    v67 = (*(a1 + 16) + 8);
    do
    {
      v68 = *(v67 - 2);
      if (v68 >> 25)
      {
        v69 = 5;
      }

      else
      {
        v69 = 4;
      }

      if (v68 < 0x40000)
      {
        v69 = 3;
      }

      if (v68 < 0x800)
      {
        v69 = 2;
      }

      if (v68 >= 0x10)
      {
        v70 = v69;
      }

      else
      {
        v70 = 1;
      }

      v71 = *v67;
      v67 += 3;
      v4 += v70 + v71;
      --v66;
    }

    while (v66);
  }

  return v4;
}

const char *sub_26F1B4420(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v2 >> 25)
  {
    v5 = 5;
  }

  if (v2 >= 0x40000)
  {
    v4 = v5;
  }

  if (v2 >= 0x800)
  {
    v3 = v4;
  }

  if (v2 >= 0x10)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  switch(*(a1 + 16))
  {
    case 0:
    case 0xD:
      v8 = *a2;
      if ((*a2 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      v9 = 10;
      return (v9 + v6);
    case 1:
      v16 = (2 * *a2) ^ (*a2 >> 31);
      if (v16 < 0x80)
      {
        goto LABEL_38;
      }

      if (v16 < 0x4000)
      {
        goto LABEL_35;
      }

      if (v16 < 0x200000)
      {
        goto LABEL_79;
      }

      v17 = v16 >> 28 == 0;
      goto LABEL_83;
    case 2:
    case 7:
    case 0xA:
      return (v6 + 4);
    case 3:
    case 8:
      v10 = *a2;
      if (HIDWORD(*a2))
      {
        if (!(v10 >> 35))
        {
          goto LABEL_75;
        }

        v25 = v10 >> 42;
        v26 = v10 >> 49;
        v27 = HIBYTE(v10);
        v28 = (v10 & 0x8000000000000000) != 0;
        v9 = 9;
        if (v28)
        {
          v9 = 10;
        }

        if (!v27)
        {
          v9 = 8;
        }

        if (!v26)
        {
          v9 = 7;
        }

        if (!v25)
        {
          v9 = 6;
        }
      }

      else
      {
        if (v10 < 0x80)
        {
          goto LABEL_38;
        }

        v11 = 3;
        v12 = 4;
        if (v10 >> 28)
        {
          v12 = 5;
        }

        if (v10 >= 0x200000)
        {
          v11 = v12;
        }

        v13 = v10 >= 0x4000;
LABEL_44:
        if (v13)
        {
          v9 = v11;
        }

        else
        {
          v9 = 2;
        }
      }

      break;
    case 4:
      v18 = (2 * *a2) ^ (*a2 >> 63);
      if (HIDWORD(v18))
      {
        if (v18 >> 35)
        {
          if (v18 >> 42)
          {
            if (v18 >> 49)
            {
              if (HIBYTE(v18))
              {
                v28 = (v18 & 0x8000000000000000) != 0;
                v9 = 9;
                if (v28)
                {
                  v9 = 10;
                }
              }

              else
              {
                v9 = 8;
              }
            }

            else
            {
              v9 = 7;
            }
          }

          else
          {
            v9 = 6;
          }
        }

        else
        {
LABEL_75:
          v9 = 5;
        }
      }

      else if (v18 < 0x80)
      {
LABEL_38:
        v9 = 1;
      }

      else if (v18 >= 0x4000)
      {
        if (v18 >= 0x200000)
        {
          v17 = v18 >> 28 == 0;
LABEL_83:
          v9 = 4;
          if (!v17)
          {
            v9 = 5;
          }
        }

        else
        {
LABEL_79:
          v9 = 3;
        }
      }

      else
      {
LABEL_35:
        v9 = 2;
      }

      break;
    case 5:
    case 9:
    case 0xB:
      return (v6 | 8);
    case 6:
      v8 = *a2;
LABEL_37:
      if (v8 < 0x80)
      {
        goto LABEL_38;
      }

      v11 = 3;
      v19 = 4;
      if (v8 >> 28)
      {
        v19 = 5;
      }

      if (v8 >= 0x200000)
      {
        v11 = v19;
      }

      v13 = v8 >= 0x4000;
      goto LABEL_44;
    case 0xC:
      return (v6 + 1);
    case 0xE:
      v14 = *a2;
      if (!*a2)
      {
        goto LABEL_27;
      }

      v14 = strlen(v14);
      goto LABEL_26;
    case 0xF:
      v20 = *a2;
      v21 = 1;
      v22 = 2;
      v23 = 3;
      v24 = 4;
      if (*a2 >> 28)
      {
        v24 = 5;
      }

      if (v20 >= 0x200000)
      {
        v23 = v24;
      }

      if (v20 >= 0x4000)
      {
        v22 = v23;
      }

      if (v20 >= 0x80)
      {
        v21 = v22;
      }

      return (v20 + v6 + v21);
    case 0x10:
      v14 = *a2;
      if (!*a2)
      {
        goto LABEL_27;
      }

      v14 = sub_26F1B3D74(v14);
LABEL_26:
      if (v14 >= 0x80)
      {
        v15 = 2;
        v29 = 3;
        v30 = 4;
        if (v14 >> 28)
        {
          v30 = 5;
        }

        if (v14 >= 0x200000)
        {
          v29 = v30;
        }

        if (v14 >= 0x4000)
        {
          v15 = v29;
        }
      }

      else
      {
LABEL_27:
        v15 = 1;
      }

      return &v14[v6 + v15];
    default:
      sub_26F200CA8();
  }

  return (v9 + v6);
}

uint64_t sub_26F1B4748(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 != 682290937)
  {
    sub_26F200CD4();
  }

  if (v2[12])
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(v2 + 7) + 72 * v4;
      v8 = *(v6 + 20);
      v7 = *(v6 + 24);
      v9 = *(v6 + 12);
      if (v9 == 1)
      {
        if ((*(v6 + 48) & 4) != 0)
        {
          if (*(a1 + v8) != *(v6 + 8))
          {
            goto LABEL_32;
          }

          v20 = *(v6 + 16);
          if (v20 != 16 && v20 != 14)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v11 = *(v6 + 16);
          if (v11 != 16 && v11 != 14)
          {
            if (!*(a1 + v8))
            {
              goto LABEL_32;
            }

            goto LABEL_6;
          }
        }

        v22 = *(a1 + v7);
        if (!v22 || v22 == *(v6 + 40))
        {
          goto LABEL_32;
        }
      }

      else if (v9)
      {
        v13 = *(a1 + v8);
        v14 = (a2 + v5);
        v15 = *(a1 + v7);
        if (*(v6 + 48))
        {
          if (v13)
          {
            v23 = sub_26F1B7DC0(*(v6 + 8), (a2 + v5));
            *v14 |= 2u;
            v24 = *(v6 + 16);
            if ((v24 - 2) > 9)
            {
              v25 = 1;
            }

            else
            {
              v25 = dword_26F208960[v24 - 2];
            }

            v26 = v25 * v13;
            if (v26 >= 0x80)
            {
              if (v26 >= 0x4000)
              {
                v28 = 4;
                if (v26 >> 28)
                {
                  v28 = 5;
                }

                v29 = v26 >= 0x200000;
                v27 = 3;
                if (v29)
                {
                  v27 = v28;
                }
              }

              else
              {
                v27 = 2;
              }
            }

            else
            {
              v27 = 1;
            }

            v70 = v23;
            v71 = v27;
            v72 = (v27 + v23);
            v30 = &v14[v72];
            v31 = 2;
            v32 = 4294967292;
            switch(v24)
            {
              case 0:
              case 13:
                v37 = 0;
                v38 = 1;
                v34 = &v14[v72];
                do
                {
                  v39 = *&v15[4 * v37];
                  if ((v39 & 0x80000000) != 0)
                  {
                    *v34 = v39 | 0x80;
                    v34[1] = (v39 >> 7) | 0x80;
                    v34[2] = (v39 >> 14) | 0x80;
                    v34[3] = (v39 >> 21) | 0x80;
                    v34[4] = v39 >> 28;
                    *(v34 + 5) = -1;
                    v42 = 10;
                    v34[9] = 1;
                  }

                  else
                  {
                    if (v39 < 0x80)
                    {
                      v41 = 0;
                    }

                    else
                    {
                      *v34 = v39 | 0x80;
                      if (v39 < 0x4000)
                      {
                        v39 >>= 7;
                        v41 = 1;
                      }

                      else
                      {
                        v34[1] = (v39 >> 7) | 0x80;
                        if (v39 < 0x200000)
                        {
                          v39 >>= 14;
                          v41 = 2;
                        }

                        else
                        {
                          v34[2] = (v39 >> 14) | 0x80;
                          v40 = v39 >> 21;
                          v39 >>= 28;
                          if (v39)
                          {
                            v34[3] = v40 | 0x80;
                            v41 = 4;
                          }

                          else
                          {
                            LOBYTE(v39) = v40;
                            v41 = 3;
                          }
                        }
                      }
                    }

                    v42 = v41 + 1;
                    v34[v41] = v39;
                  }

                  v34 += v42;
                  v37 = v38;
                  v19 = v13 > v38++;
                }

                while (v19);
                break;
              case 1:
                v49 = 0;
                v50 = 1;
                v34 = &v14[v72];
                do
                {
                  v51 = (2 * *&v15[4 * v49]) ^ (*&v15[4 * v49] >> 31);
                  if (v51 < 0x80)
                  {
                    v53 = 0;
                  }

                  else
                  {
                    *v34 = v51 | 0x80;
                    if (v51 < 0x4000)
                    {
                      v51 >>= 7;
                      v53 = 1;
                    }

                    else
                    {
                      v34[1] = (v51 >> 7) | 0x80;
                      if (v51 < 0x200000)
                      {
                        v51 >>= 14;
                        v53 = 2;
                      }

                      else
                      {
                        v34[2] = (v51 >> 14) | 0x80;
                        v52 = v51 >> 21;
                        v51 >>= 28;
                        if (v51)
                        {
                          v34[3] = v52 | 0x80;
                          v53 = 4;
                        }

                        else
                        {
                          LOBYTE(v51) = v52;
                          v53 = 3;
                        }
                      }
                    }
                  }

                  v54 = &v34[v53];
                  *v54 = v51;
                  v34 = v54 + 1;
                  v49 = v50;
                  v19 = v13 > v50++;
                }

                while (v19);
                break;
              case 2:
              case 7:
              case 10:
                goto LABEL_45;
              case 3:
              case 8:
                v35 = 0;
                v36 = 1;
                v34 = &v14[v72];
                do
                {
                  v34 += sub_26F1B7E54(*&v15[8 * v35], v34);
                  v35 = v36;
                  v19 = v13 > v36++;
                }

                while (v19);
                break;
              case 4:
                v57 = 0;
                v58 = 1;
                v34 = &v14[v72];
                do
                {
                  v34 += sub_26F1B7E54((2 * *&v15[8 * v57]) ^ (*&v15[8 * v57] >> 63), v34);
                  v57 = v58;
                  v19 = v13 > v58++;
                }

                while (v19);
                break;
              case 5:
              case 9:
              case 11:
                v31 = 3;
                v32 = 4294967288;
LABEL_45:
                v33 = v13 << v31;
                memcpy(&v14[v72], v15, (v13 << v31) & v32);
                LODWORD(v34) = v30 + v33;
                break;
              case 6:
                v43 = 0;
                v44 = 1;
                v34 = &v14[v72];
                do
                {
                  v45 = *&v15[4 * v43];
                  if (v45 < 0x80)
                  {
                    v47 = 0;
                  }

                  else
                  {
                    *v34 = v45 | 0x80;
                    if (v45 < 0x4000)
                    {
                      v45 >>= 7;
                      v47 = 1;
                    }

                    else
                    {
                      v34[1] = (v45 >> 7) | 0x80;
                      if (v45 < 0x200000)
                      {
                        v45 >>= 14;
                        v47 = 2;
                      }

                      else
                      {
                        v34[2] = (v45 >> 14) | 0x80;
                        v46 = v45 >> 21;
                        v45 >>= 28;
                        if (v45)
                        {
                          v34[3] = v46 | 0x80;
                          v47 = 4;
                        }

                        else
                        {
                          LOBYTE(v45) = v46;
                          v47 = 3;
                        }
                      }
                    }
                  }

                  v48 = &v34[v47];
                  *v48 = v45;
                  v34 = v48 + 1;
                  v43 = v44;
                  v19 = v13 > v44++;
                }

                while (v19);
                break;
              case 12:
                v55 = 0;
                v56 = 1;
                v34 = &v14[v72];
                do
                {
                  *v34++ = *&v15[4 * v55] != 0;
                  v55 = v56;
                  v19 = v13 > v56++;
                }

                while (v19);
                break;
              default:
                sub_26F200D2C();
            }

            v59 = v34 - v30;
            if ((v34 - v30) >= 0x80)
            {
              v61 = v72;
              if (v59 >= 0x4000)
              {
                v60 = 4;
                if (v59 >> 28)
                {
                  v60 = 5;
                }

                if (v59 < 0x200000)
                {
                  v60 = 3;
                }
              }

              else
              {
                v60 = 2;
              }
            }

            else
            {
              v60 = 1;
              v61 = v72;
            }

            if (v71 != v60)
            {
              if (v71 + 1 != v60)
              {
                sub_26F200D00();
              }

              memmove(v30 + 1, v30, v59);
              ++v61;
            }

            v62 = &v14[v70];
            if (v59 < 0x80)
            {
              v64 = 0;
              LOBYTE(v63) = v34 - v30;
            }

            else
            {
              *v62 = v59 | 0x80;
              v63 = v59 >> 7;
              if (v59 < 0x4000)
              {
                v64 = 1;
              }

              else
              {
                v62[1] = v63 | 0x80;
                v63 = v59 >> 14;
                if (v59 < 0x200000)
                {
                  v64 = 2;
                }

                else
                {
                  v62[2] = v63 | 0x80;
                  v63 = v59 >> 21;
                  if (v59 >> 28)
                  {
                    v62[3] = v63 | 0x80;
                    v63 = v59 >> 28;
                    v64 = 4;
                  }

                  else
                  {
                    v64 = 3;
                  }
                }
              }
            }

            v62[v64] = v63;
            v10 = v61 + v59;
            goto LABEL_114;
          }
        }

        else
        {
          v16 = *(v6 + 16);
          if (v16 >= 0x11)
          {
            sub_26F200D58();
          }

          if (v13)
          {
            v10 = 0;
            v17 = qword_26F208988[v16];
            v18 = 1;
            do
            {
              v10 += sub_26F1B4E60(v6, v15, &v14[v10]);
              v15 += v17;
              v19 = v13 > v18++;
            }

            while (v19);
            goto LABEL_114;
          }
        }

LABEL_32:
        v10 = 0;
        goto LABEL_114;
      }

LABEL_6:
      v10 = sub_26F1B4E60(v6, (a1 + v7), (a2 + v5));
LABEL_114:
      v5 += v10;
      ++v4;
      v2 = *a1;
      if (v4 >= *(*a1 + 48))
      {
        goto LABEL_117;
      }
    }
  }

  v5 = 0;
LABEL_117:
  if (*(a1 + 8))
  {
    v65 = 0;
    v66 = 0;
    do
    {
      v67 = *(a1 + 16) + v65;
      v68 = sub_26F1B7DC0(*v67, (a2 + v5));
      *(a2 + v5) |= *(v67 + 4);
      memcpy((a2 + v5 + v68), *(v67 + 16), *(v67 + 8));
      v5 += v68 + *(v67 + 8);
      ++v66;
      v65 += 24;
    }

    while (v66 < *(a1 + 8));
  }

  return v5;
}

uint64_t sub_26F1B4E60(uint64_t a1, unint64_t *a2, _BYTE *a3)
{
  v6 = sub_26F1B7DC0(*(a1 + 8), a3);
  v7 = v6;
  switch(*(a1 + 16))
  {
    case 0:
    case 0xD:
      v9 = *a2;
      v10 = &a3[v6];
      if ((*a2 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      *v10 = v9 | 0x80;
      v10[1] = (v9 >> 7) | 0x80;
      v10[2] = (v9 >> 14) | 0x80;
      v10[3] = (v9 >> 21) | 0x80;
      v10[4] = v9 >> 28;
      *(v10 + 5) = -1;
      v8 = 10;
      v10[9] = 1;
      return v8 + v7;
    case 1:
      v10 = &a3[v6];
      v9 = (2 * *a2) ^ (*a2 >> 31);
      goto LABEL_20;
    case 2:
    case 7:
    case 0xA:
      *a3 |= 5u;
      *&a3[v6] = *a2;
      v8 = 4;
      return v8 + v7;
    case 3:
    case 8:
      v11 = *a2;
      goto LABEL_18;
    case 4:
      v11 = (2 * *a2) ^ (*a2 >> 63);
LABEL_18:
      v8 = sub_26F1B7E54(v11, &a3[v7]);
      return v8 + v7;
    case 5:
    case 9:
    case 0xB:
      *a3 |= 1u;
      *&a3[v6] = *a2;
      v8 = 8;
      return v8 + v7;
    case 6:
      v9 = *a2;
      v10 = &a3[v6];
LABEL_20:
      if (v9 < 0x80)
      {
        v24 = 0;
      }

      else
      {
        *v10 = v9 | 0x80;
        v23 = v9 >> 7;
        if (v9 < 0x4000)
        {
          v24 = 1;
        }

        else
        {
          v10[1] = v23 | 0x80;
          v23 = v9 >> 14;
          if (v9 < 0x200000)
          {
            v24 = 2;
          }

          else
          {
            v10[2] = v23 | 0x80;
            v23 = v9 >> 21;
            v9 >>= 28;
            if (v9)
            {
              v10[3] = v23 | 0x80;
              v24 = 4;
              goto LABEL_52;
            }

            v24 = 3;
          }
        }

        LOBYTE(v9) = v23;
      }

LABEL_52:
      v8 = v24 + 1;
      v10[v24] = v9;
      return v8 + v7;
    case 0xC:
      a3[v6] = *a2 != 0;
      goto LABEL_37;
    case 0xE:
      *a3 |= 2u;
      v17 = *a2;
      v18 = &a3[v6];
      if (!v17)
      {
        *v18 = 0;
        goto LABEL_37;
      }

      v19 = strlen(v17);
      v20 = v19;
      if (v19 < 0x80)
      {
        v22 = 0;
        LOBYTE(v21) = v19;
      }

      else
      {
        *v18 = v19 | 0x80;
        v21 = v19 >> 7;
        if (v19 < 0x4000)
        {
          v22 = 1;
        }

        else
        {
          v18[1] = v21 | 0x80;
          v21 = v19 >> 14;
          if (v19 < 0x200000)
          {
            v22 = 2;
          }

          else
          {
            v18[2] = v21 | 0x80;
            v21 = v19 >> 21;
            if (v19 >> 28)
            {
              v18[3] = v21 | 0x80;
              v22 = 4;
              v21 = v19 >> 28;
            }

            else
            {
              v22 = 3;
            }
          }
        }
      }

      v34 = v22 + 1;
      v18[v22] = v21;
      memcpy(&v18[v34], v17, v19);
      v8 = v20 + v34;
      break;
    case 0xF:
      *a3 |= 2u;
      v25 = &a3[v6];
      v26 = *a2;
      if (*a2 < 0x80)
      {
        v28 = 0;
        v27 = *a2;
      }

      else
      {
        *v25 = v26 | 0x80;
        LODWORD(v27) = v26 >> 7;
        if (v26 < 0x4000)
        {
          v28 = 1;
        }

        else
        {
          v25[1] = v27 | 0x80;
          LODWORD(v27) = v26 >> 14;
          if (v26 < 0x200000)
          {
            v28 = 2;
          }

          else
          {
            v25[2] = v27 | 0x80;
            LODWORD(v27) = v26 >> 21;
            if (v26 >> 28)
            {
              v25[3] = v27 | 0x80;
              v28 = 4;
              LODWORD(v27) = v26 >> 28;
            }

            else
            {
              v28 = 3;
            }
          }
        }
      }

      v33 = v28 + 1;
      v25[v28] = v27;
      memcpy(&v25[v33], a2[1], v26);
      v8 = v26 + v33;
      return v8 + v7;
    case 0x10:
      *a3 |= 2u;
      v12 = &a3[v6];
      if (*a2)
      {
        v13 = sub_26F1B4748(*a2, (v12 + 1));
        v14 = v13;
        if (v13 >= 0x80)
        {
          v29 = 2;
          v30 = 3;
          v31 = v13 >> 28;
          v32 = 4;
          if (v13 >> 28)
          {
            v32 = 5;
          }

          if (v13 >= 0x200000)
          {
            v30 = v32;
          }

          if (v13 >= 0x4000)
          {
            v29 = v30;
          }

          memmove(&v12[v29], v12 + 1, v13);
          *v12 = v14 | 0x80;
          v16 = v14 >> 7;
          if (v14 < 0x4000)
          {
            v15 = 1;
          }

          else
          {
            v12[1] = v16 | 0x80;
            v16 = v14 >> 14;
            if (v14 < 0x200000)
            {
              v15 = 2;
            }

            else
            {
              v12[2] = v16 | 0x80;
              v16 = v14 >> 21;
              if (v31)
              {
                v12[3] = v16 | 0x80;
                v15 = 4;
                v16 = v14 >> 28;
              }

              else
              {
                v15 = 3;
              }
            }
          }
        }

        else
        {
          v15 = 0;
          LOBYTE(v16) = v13;
        }

        v12[v15] = v16;
        v8 = v14 + v15 + 1;
      }

      else
      {
        *v12 = 0;
LABEL_37:
        v8 = 1;
      }

      break;
    default:
      sub_26F200D84();
  }

  return v8 + v7;
}

uint64_t sub_26F1B52DC(uint64_t a1, void (**a2)(void, void, void))
{
  v95 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (**a1 != 682290937)
  {
    sub_26F200DB0();
  }

  if (v2[12])
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = *(v2 + 7) + 72 * v5;
      v9 = *(v7 + 20);
      v8 = *(v7 + 24);
      v10 = *(v7 + 12);
      if (v10 == 1)
      {
        if ((*(v7 + 48) & 4) != 0)
        {
          if (*(a1 + v9) != *(v7 + 8))
          {
            goto LABEL_28;
          }

          v18 = *(v7 + 16);
          if (v18 != 16 && v18 != 14)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v12 = *(v7 + 16);
          if (v12 != 16 && v12 != 14)
          {
            if (!*(a1 + v9))
            {
              goto LABEL_28;
            }

            goto LABEL_6;
          }
        }

        v20 = *(a1 + v8);
        if (!v20 || v20 == *(v7 + 40))
        {
          goto LABEL_28;
        }
      }

      else if (v10)
      {
        v14 = *(a1 + v9);
        if (v14)
        {
          v15 = *(a1 + v8);
          if (*(v7 + 48))
          {
            v21 = sub_26F1B7DC0(*(v7 + 8), v87);
            v22 = v14;
            v23 = v14;
            switch(*(v7 + 16))
            {
              case 0:
              case 0xD:
                v23 = 0;
                v24 = v15;
                v25 = v14;
                do
                {
                  v27 = *v24++;
                  v26 = v27;
                  if ((v27 & 0x80000000) != 0)
                  {
                    v28 = 10;
                  }

                  else if (v26 >= 0x80)
                  {
                    if (v26 >> 28)
                    {
                      v29 = 5;
                    }

                    else
                    {
                      v29 = 4;
                    }

                    if (v26 < 0x200000)
                    {
                      v29 = 3;
                    }

                    if (v26 >= 0x4000)
                    {
                      v28 = v29;
                    }

                    else
                    {
                      v28 = 2;
                    }
                  }

                  else
                  {
                    v28 = 1;
                  }

                  v23 += v28;
                  --v25;
                }

                while (v25);
                break;
              case 1:
                v23 = 0;
                v44 = v15;
                v45 = v14;
                do
                {
                  v46 = *v44++;
                  v47 = (2 * v46) ^ (v46 >> 31);
                  if (v47 >= 0x80)
                  {
                    if (v47 >= 0x4000)
                    {
                      if (v47 >= 0x200000)
                      {
                        if (v47 >> 28)
                        {
                          v48 = 5;
                        }

                        else
                        {
                          v48 = 4;
                        }
                      }

                      else
                      {
                        v48 = 3;
                      }
                    }

                    else
                    {
                      v48 = 2;
                    }
                  }

                  else
                  {
                    v48 = 1;
                  }

                  v23 += v48;
                  --v45;
                }

                while (v45);
                break;
              case 2:
              case 7:
              case 0xA:
                v23 = 4 * v14;
                break;
              case 3:
              case 8:
                v23 = 0;
                v30 = v15;
                v31 = v14;
                do
                {
                  v33 = *v30++;
                  v32 = v33;
                  if (HIDWORD(v33))
                  {
                    if (v32 >> 35)
                    {
                      v36 = v32 >> 42;
                      v37 = v32 >> 49;
                      v38 = HIBYTE(v32);
                      if ((v32 & 0x8000000000000000) == 0)
                      {
                        v34 = 9;
                      }

                      else
                      {
                        v34 = 10;
                      }

                      if (!v38)
                      {
                        v34 = 8;
                      }

                      if (!v37)
                      {
                        v34 = 7;
                      }

                      if (!v36)
                      {
                        v34 = 6;
                      }
                    }

                    else
                    {
                      v34 = 5;
                    }
                  }

                  else if (v32 >= 0x80)
                  {
                    if (v32 >> 28)
                    {
                      v35 = 5;
                    }

                    else
                    {
                      v35 = 4;
                    }

                    if (v32 < 0x200000)
                    {
                      v35 = 3;
                    }

                    if (v32 >= 0x4000)
                    {
                      v34 = v35;
                    }

                    else
                    {
                      v34 = 2;
                    }
                  }

                  else
                  {
                    v34 = 1;
                  }

                  v23 += v34;
                  --v31;
                }

                while (v31);
                break;
              case 4:
                v23 = 0;
                v39 = v15;
                v40 = v14;
                do
                {
                  v41 = *v39++;
                  v42 = (2 * v41) ^ (v41 >> 63);
                  if (HIDWORD(v42))
                  {
                    if (v42 >> 35)
                    {
                      if (v42 >> 42)
                      {
                        if (v42 >> 49)
                        {
                          if (HIBYTE(v42))
                          {
                            if ((v42 & 0x8000000000000000) == 0)
                            {
                              v43 = 9;
                            }

                            else
                            {
                              v43 = 10;
                            }
                          }

                          else
                          {
                            v43 = 8;
                          }
                        }

                        else
                        {
                          v43 = 7;
                        }
                      }

                      else
                      {
                        v43 = 6;
                      }
                    }

                    else
                    {
                      v43 = 5;
                    }
                  }

                  else if (v42 >= 0x80)
                  {
                    if (v42 >= 0x4000)
                    {
                      if (v42 >= 0x200000)
                      {
                        if (v42 >> 28)
                        {
                          v43 = 5;
                        }

                        else
                        {
                          v43 = 4;
                        }
                      }

                      else
                      {
                        v43 = 3;
                      }
                    }

                    else
                    {
                      v43 = 2;
                    }
                  }

                  else
                  {
                    v43 = 1;
                  }

                  v23 += v43;
                  --v40;
                }

                while (v40);
                break;
              case 5:
              case 9:
              case 0xB:
                v23 = 8 * v14;
                break;
              case 6:
                v23 = 0;
                v49 = v15;
                v50 = v14;
                do
                {
                  v52 = *v49++;
                  v51 = v52;
                  if (v52 >= 0x80)
                  {
                    if (v51 >> 28)
                    {
                      v54 = 5;
                    }

                    else
                    {
                      v54 = 4;
                    }

                    if (v51 < 0x200000)
                    {
                      v54 = 3;
                    }

                    if (v51 >= 0x4000)
                    {
                      v53 = v54;
                    }

                    else
                    {
                      v53 = 2;
                    }
                  }

                  else
                  {
                    v53 = 1;
                  }

                  v23 += v53;
                  --v50;
                }

                while (v50);
                break;
              case 0xC:
                break;
              default:
                sub_26F200E34();
            }

            v87[0] |= 2u;
            v55 = &v87[v21];
            if (v23 < 0x80)
            {
              v57 = 0;
              LOBYTE(v56) = v23;
            }

            else
            {
              *v55 = v23 | 0x80;
              v56 = v23 >> 7;
              if (v23 < 0x4000)
              {
                v57 = 1;
              }

              else
              {
                v55[1] = v56 | 0x80;
                v56 = v23 >> 14;
                if (v23 < 0x200000)
                {
                  v57 = 2;
                }

                else
                {
                  v55[2] = v56 | 0x80;
                  v56 = v23 >> 21;
                  if (v23 >> 28)
                  {
                    v55[3] = v56 | 0x80;
                    v56 = v23 >> 28;
                    v57 = 4;
                  }

                  else
                  {
                    v57 = 3;
                  }
                }
              }
            }

            v55[v57] = v56;
            v58 = v57 + v21 + 1;
            (*a2)(a2, v58, v87);
            v59 = 2;
            switch(*(v7 + 16))
            {
              case 0:
              case 0xD:
                v60 = 0;
                do
                {
                  v64 = *v15++;
                  v63 = v64;
                  if ((v64 & 0x80000000) != 0)
                  {
                    v88 = v63 | 0x80;
                    v89 = (v63 >> 7) | 0x80;
                    v90 = (v63 >> 14) | 0x80;
                    v91 = (v63 >> 21) | 0x80;
                    v92 = v63 >> 28;
                    v93 = -1;
                    v67 = 10;
                    v94 = 1;
                  }

                  else
                  {
                    if (v63 < 0x80)
                    {
                      v66 = 0;
                    }

                    else
                    {
                      v88 = v63 | 0x80;
                      if (v63 < 0x4000)
                      {
                        v63 >>= 7;
                        v66 = 1;
                      }

                      else
                      {
                        v89 = (v63 >> 7) | 0x80;
                        if (v63 < 0x200000)
                        {
                          v63 >>= 14;
                          v66 = 2;
                        }

                        else
                        {
                          v90 = (v63 >> 14) | 0x80;
                          v65 = v63 >> 21;
                          v63 >>= 28;
                          if (v63)
                          {
                            v91 = v65 | 0x80;
                            v66 = 4;
                          }

                          else
                          {
                            LOBYTE(v63) = v65;
                            v66 = 3;
                          }
                        }
                      }
                    }

                    v67 = v66 + 1;
                    *(&v88 + v66) = v63;
                  }

                  (*a2)(a2, v67, &v88);
                  v60 += v67;
                  --v22;
                }

                while (v22);
                break;
              case 1:
                v60 = 0;
                do
                {
                  v73 = *v15++;
                  v74 = (2 * v73) ^ (v73 >> 31);
                  if (v74 < 0x80)
                  {
                    v76 = 0;
                  }

                  else
                  {
                    v88 = v74 | 0x80;
                    if (v74 < 0x4000)
                    {
                      v74 >>= 7;
                      v76 = 1;
                    }

                    else
                    {
                      v89 = (v74 >> 7) | 0x80;
                      if (v74 < 0x200000)
                      {
                        v74 >>= 14;
                        v76 = 2;
                      }

                      else
                      {
                        v90 = (v74 >> 14) | 0x80;
                        v75 = v74 >> 21;
                        v74 >>= 28;
                        if (v74)
                        {
                          v91 = v75 | 0x80;
                          v76 = 4;
                        }

                        else
                        {
                          LOBYTE(v74) = v75;
                          v76 = 3;
                        }
                      }
                    }
                  }

                  v77 = v76 + 1;
                  *(&v88 + v76) = v74;
                  (*a2)(a2, v76 + 1, &v88);
                  v60 += v77;
                  --v22;
                }

                while (v22);
                break;
              case 2:
              case 7:
              case 0xA:
                goto LABEL_131;
              case 3:
              case 8:
                v60 = 0;
                do
                {
                  v61 = *v15;
                  v15 += 2;
                  v62 = sub_26F1B7E54(v61, &v88);
                  (*a2)(a2, v62, &v88);
                  v60 += v62;
                  --v22;
                }

                while (v22);
                break;
              case 4:
                v60 = 0;
                do
                {
                  v80 = *v15;
                  v15 += 2;
                  v81 = sub_26F1B7E54((2 * v80) ^ (v80 >> 63), &v88);
                  (*a2)(a2, v81, &v88);
                  v60 += v81;
                  --v22;
                }

                while (v22);
                break;
              case 5:
              case 9:
              case 0xB:
                v59 = 3;
LABEL_131:
                v60 = (v14 << v59);
                (*a2)(a2, v60, v15);
                break;
              case 6:
                v60 = 0;
                do
                {
                  v69 = *v15++;
                  v68 = v69;
                  if (v69 < 0x80)
                  {
                    v71 = 0;
                  }

                  else
                  {
                    v88 = v68 | 0x80;
                    if (v68 < 0x4000)
                    {
                      v68 >>= 7;
                      v71 = 1;
                    }

                    else
                    {
                      v89 = (v68 >> 7) | 0x80;
                      if (v68 < 0x200000)
                      {
                        v68 >>= 14;
                        v71 = 2;
                      }

                      else
                      {
                        v90 = (v68 >> 14) | 0x80;
                        v70 = v68 >> 21;
                        v68 >>= 28;
                        if (v68)
                        {
                          v91 = v70 | 0x80;
                          v71 = 4;
                        }

                        else
                        {
                          LOBYTE(v68) = v70;
                          v71 = 3;
                        }
                      }
                    }
                  }

                  v72 = v71 + 1;
                  *(&v88 + v71) = v68;
                  (*a2)(a2, v71 + 1, &v88);
                  v60 += v72;
                  --v22;
                }

                while (v22);
                break;
              case 0xC:
                v78 = v14;
                do
                {
                  v79 = *v15++;
                  v88 = v79 != 0;
                  (*a2)(a2, 1, &v88);
                  --v78;
                }

                while (v78);
                v60 = v14;
                break;
              default:
                sub_26F200E08();
            }

            if (v60 != v23)
            {
              sub_26F200DDC();
            }

            v11 = v58 + v23;
          }

          else
          {
            v16 = *(v7 + 16);
            if (v16 >= 0x11)
            {
              sub_26F200D58();
            }

            LODWORD(v11) = 0;
            v17 = qword_26F208988[v16];
            do
            {
              v11 = v11 + sub_26F1B5C9C(v7, v15, a2);
              v15 = (v15 + v17);
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }

          goto LABEL_181;
        }

LABEL_28:
        v11 = 0;
        goto LABEL_181;
      }

LABEL_6:
      v11 = sub_26F1B5C9C(v7, a1 + v8, a2);
LABEL_181:
      v6 += v11;
      ++v5;
      v2 = *a1;
      if (v5 >= *(*a1 + 48))
      {
        goto LABEL_184;
      }
    }
  }

  v6 = 0;
LABEL_184:
  if (*(a1 + 8))
  {
    v82 = 0;
    v83 = 0;
    do
    {
      v84 = *(a1 + 16) + v82;
      v85 = sub_26F1B7DC0(*v84, v87);
      v87[0] |= *(v84 + 4);
      (*a2)(a2, v85, v87);
      (*a2)(a2, *(v84 + 8), *(v84 + 16));
      v6 += v85 + *(v84 + 8);
      ++v83;
      v82 += 24;
    }

    while (v83 < *(a1 + 8));
  }

  return v6;
}

uint64_t sub_26F1B5C9C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = sub_26F1B7DC0(*(a1 + 8), v47);
  v7 = v6;
  switch(*(a1 + 16))
  {
    case 0:
    case 0xD:
      v9 = *a2;
      v10 = &v47[v6];
      if ((*a2 & 0x80000000) != 0)
      {
        *v10 = v9 | 0x80;
        v10[1] = (v9 >> 7) | 0x80;
        v10[2] = (v9 >> 14) | 0x80;
        v10[3] = (v9 >> 21) | 0x80;
        v10[4] = v9 >> 28;
        *(v10 + 5) = -1;
        v36 = 10;
        v10[9] = 1;
        goto LABEL_62;
      }

      if (v9 < 0x80)
      {
        v12 = 0;
      }

      else
      {
        *v10 = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 < 0x4000)
        {
          v12 = 1;
        }

        else
        {
          v10[1] = v11 | 0x80;
          v11 = v9 >> 14;
          if (v9 < 0x200000)
          {
            v12 = 2;
          }

          else
          {
            v10[2] = v11 | 0x80;
            v11 = v9 >> 21;
            v9 >>= 28;
            if (v9)
            {
              v10[3] = v11 | 0x80;
              v12 = 4;
              goto LABEL_61;
            }

            v12 = 3;
          }
        }

        LOBYTE(v9) = v11;
      }

LABEL_61:
      v36 = v12 + 1;
      v10[v12] = v9;
LABEL_62:
      v8 = v36 + v6;
      goto LABEL_63;
    case 1:
      v29 = &v47[v6];
      v30 = (2 * *a2) ^ (*a2 >> 31);
      goto LABEL_27;
    case 2:
    case 7:
    case 0xA:
      v47[0] |= 5u;
      *&v47[v6] = *a2;
      v8 = v6 + 4;
      goto LABEL_63;
    case 3:
    case 8:
      v13 = *a2;
      v14 = &v47[v7];
      goto LABEL_25;
    case 4:
      v13 = (2 * *a2) ^ (*a2 >> 63);
      v14 = &v47[v7];
LABEL_25:
      v8 = sub_26F1B7E54(v13, v14) + v7;
      goto LABEL_63;
    case 5:
    case 9:
    case 0xB:
      v47[0] |= 1u;
      *&v47[v6] = *a2;
      v8 = v6 + 8;
      goto LABEL_63;
    case 6:
      v30 = *a2;
      v29 = &v47[v6];
LABEL_27:
      if (v30 < 0x80)
      {
        v32 = 0;
      }

      else
      {
        *v29 = v30 | 0x80;
        v31 = v30 >> 7;
        if (v30 < 0x4000)
        {
          v32 = 1;
        }

        else
        {
          v29[1] = v31 | 0x80;
          v31 = v30 >> 14;
          if (v30 < 0x200000)
          {
            v32 = 2;
          }

          else
          {
            v29[2] = v31 | 0x80;
            v31 = v30 >> 21;
            v30 >>= 28;
            if (v30)
            {
              v29[3] = v31 | 0x80;
              v32 = 4;
              goto LABEL_55;
            }

            v32 = 3;
          }
        }

        LOBYTE(v30) = v31;
      }

LABEL_55:
      v29[v32] = v30;
      v8 = v6 + v32 + 1;
LABEL_63:
      (*a3)(a3, v8, v47);
      return v8;
    case 0xC:
      v47[v6] = *a2 != 0;
      v8 = v6 + 1;
      goto LABEL_63;
    case 0xE:
      v22 = *a2;
      if (v22)
      {
        v23 = strlen(v22);
        v24 = v23;
        v47[0] |= 2u;
        LOBYTE(v25) = v23;
        if (v23 < 0x80)
        {
          v28 = 0;
        }

        else
        {
          v26 = &v47[v7];
          v47[v7] = v23 | 0x80;
          v27 = v23 >> 7;
          if (v23 < 0x4000)
          {
            v28 = 1;
          }

          else
          {
            v26[1] = v27 | 0x80;
            v27 = v23 >> 14;
            if (v23 < 0x200000)
            {
              v28 = 2;
            }

            else
            {
              v26[2] = v27 | 0x80;
              v27 = v23 >> 21;
              v25 = v23 >> 28;
              if (v23 >> 28)
              {
                v26[3] = v27 | 0x80;
                v28 = 4;
                goto LABEL_75;
              }

              v28 = 3;
            }
          }

          LOBYTE(v25) = v27;
        }
      }

      else
      {
        v24 = 0;
        LOBYTE(v25) = 0;
        v28 = 0;
        v47[0] |= 2u;
      }

LABEL_75:
      v47[v7 + v28] = v25;
      v38 = v7 + v28 + 1;
      (*a3)(a3, v38, v47);
      (*a3)(a3, v24, v22);
      return v38 + v24;
    case 0xF:
      v24 = *a2;
      v47[0] |= 2u;
      v33 = &v47[v6];
      if (v24 < 0x80)
      {
        v35 = 0;
        LOBYTE(v34) = v24;
      }

      else
      {
        *v33 = v24 | 0x80;
        v34 = v24 >> 7;
        if (v24 < 0x4000)
        {
          v35 = 1;
        }

        else
        {
          v33[1] = v34 | 0x80;
          v34 = v24 >> 14;
          if (v24 < 0x200000)
          {
            v35 = 2;
          }

          else
          {
            v33[2] = v34 | 0x80;
            v34 = v24 >> 21;
            if (v24 >> 28)
            {
              v33[3] = v34 | 0x80;
              v35 = 4;
              v34 = v24 >> 28;
            }

            else
            {
              v35 = 3;
            }
          }
        }
      }

      v33[v35] = v34;
      v38 = v6 + v35 + 1;
      (*a3)(a3, v38, v47);
      (*a3)(a3, v24, *(a2 + 8));
      return v38 + v24;
    case 0x10:
      v15 = *a2;
      v44 = 0;
      v45 = 0;
      v41 = sub_26F1B3C98;
      v42 = xmmword_26F208950;
      v43 = &v46;
      v47[0] |= 2u;
      if (!v15)
      {
        v17 = 0;
        LOBYTE(v18) = 0;
        goto LABEL_44;
      }

      v16 = sub_26F1B52DC(v15, &v41);
      v17 = v16;
      LOBYTE(v18) = v16;
      if (v16 < 0x80)
      {
LABEL_44:
        v21 = 0;
        goto LABEL_69;
      }

      v19 = &v47[v7];
      v47[v7] = v16 | 0x80;
      v20 = v16 >> 7;
      if (v16 < 0x4000)
      {
        v21 = 1;
      }

      else
      {
        v19[1] = v20 | 0x80;
        v20 = v16 >> 14;
        if (v16 < 0x200000)
        {
          v21 = 2;
        }

        else
        {
          v19[2] = v20 | 0x80;
          v20 = v16 >> 21;
          v18 = v16 >> 28;
          if (v16 >> 28)
          {
            v19[3] = v20 | 0x80;
            v21 = 4;
            goto LABEL_69;
          }

          v21 = 3;
        }
      }

      LOBYTE(v18) = v20;
LABEL_69:
      v47[v7 + v21] = v18;
      v39 = v7 + v21 + 1;
      (*a3)(a3, v39, v47);
      (*a3)(a3, v17, v43);
      v8 = v39 + v17;
      if (v44)
      {
        if (v45)
        {
          (*(v45 + 8))(v45, v43, v40);
        }

        else
        {
          free(v43);
        }
      }

      return v8;
    default:
      sub_26F200E60();
  }
}

void *sub_26F1B62B8(uint64_t a1, uint64_t (**a2)(int, size_t size), unint64_t a3, char *a4)
{
  v196 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  memset(v194, 0, sizeof(v194));
  if (*a1 != 682290937)
  {
    sub_26F200E8C();
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = &off_282044EC8;
  }

  v9 = (*v8)(v8[2], *(a1 + 40));
  if (!v9)
  {
    return 0;
  }

  v187 = v9;
  v193 = &v195;
  v10 = *(a1 + 48) + 7;
  if (v10 >= 0x88)
  {
    v11 = (*v8)(v8[2], v10 >> 3);
    if (!v11)
    {
      v186 = v187;
      goto LABEL_161;
    }
  }

  else
  {
    v11 = &v192;
  }

  v186 = v11;
  bzero(v11, v10 >> 3);
  v12 = *(a1 + 88);
  v185 = v10;
  if (!v12)
  {
    v13 = v187;
    bzero(v187, *(a1 + 40));
    *v187 = a1;
    if (!*(a1 + 48))
    {
      goto LABEL_11;
    }

    v61 = 0;
    v62 = 0;
    while (1)
    {
      v63 = *(a1 + 56);
      v64 = *(v63 + v61 + 40);
      if (!v64 || *(v63 + v61 + 12) == 2)
      {
        goto LABEL_157;
      }

      v65 = v63 + v61;
      v66 = *(v63 + v61 + 24);
      v67 = *(v65 + 16);
      if (v67 <= 7)
      {
        if (v67 >= 3)
        {
          if ((v67 - 3) < 3)
          {
            goto LABEL_155;
          }

          if ((v67 - 6) >= 2)
          {
            goto LABEL_157;
          }
        }
      }

      else if (v67 > 12)
      {
        if (v67 > 14)
        {
          if (v67 == 15)
          {
            *&v187[v66] = *v64;
            goto LABEL_157;
          }

          if (v67 != 16)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        }

        if (v67 != 13)
        {
          goto LABEL_156;
        }
      }

      else if (v67 > 10)
      {
        if (v67 == 11)
        {
LABEL_155:
          v64 = *v64;
LABEL_156:
          *&v187[v66] = v64;
          goto LABEL_157;
        }
      }

      else
      {
        if ((v67 - 8) < 2)
        {
          goto LABEL_155;
        }

        if (v67 != 10)
        {
          goto LABEL_157;
        }
      }

      *&v187[v66] = *v64;
LABEL_157:
      ++v62;
      v61 += 72;
      if (v62 >= *(a1 + 48))
      {
        goto LABEL_11;
      }
    }
  }

  v13 = v187;
  v12(v187);
LABEL_11:
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v191 = 0;
  while (a3)
  {
    if (a3 >= 5)
    {
      v17 = 5;
    }

    else
    {
      v17 = a3;
    }

    v18 = *a4;
    v19 = (v18 >> 3) & 0xF;
    if ((v18 & 0x80000000) != 0)
    {
      if (a3 == 1)
      {
        goto LABEL_365;
      }

      v21 = 4;
      v22 = 1;
      while (1)
      {
        v23 = a4[v22];
        if ((a4[v22] & 0x80000000) == 0)
        {
          break;
        }

        v19 |= (v23 & 0x7F) << v21;
        v21 += 7;
        if (v17 == ++v22)
        {
          goto LABEL_365;
        }
      }

      v19 |= v23 << v21;
      v20 = (v22 + 1);
      if (!v4)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = 1;
      if (!v4)
      {
        goto LABEL_29;
      }
    }

    if (*(v4 + 8) == v19)
    {
      v24 = v14;
      goto LABEL_27;
    }

LABEL_29:
    v26 = *(a1 + 72);
    if (!v26)
    {
      goto LABEL_48;
    }

    v27 = *(a1 + 80);
    if (v26 != 1)
    {
      v28 = 0;
      while (1)
      {
        v29 = v28 + (v26 >> 1);
        v30 = (v27 + 8 * v29);
        v31 = *v30;
        v32 = v19 - *v30;
        if (v19 >= *v30)
        {
          v33 = v30[1];
          if (*(v27 + 8 * (v29 + 1) + 4) + v31 - v33 > v19)
          {
            v24 = (v32 + v33);
            if ((v24 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_48;
          }

          v26 += v28 + ~v29;
          v28 = v29 + 1;
        }

        else
        {
          v26 >>= 1;
        }

        if (v26 <= 1)
        {
          if (!v26)
          {
            goto LABEL_48;
          }

          goto LABEL_39;
        }
      }
    }

    v28 = 0;
LABEL_39:
    v34 = (v27 + 8 * v28);
    v35 = *v34;
    if (*v34 <= v19)
    {
      v36 = v34[1];
      if (v35 - v36 + *(v27 + 8 * (v28 + 1) + 4) > v19)
      {
        v24 = (v36 + v19 - v35);
        if ((v24 & 0x80000000) == 0)
        {
LABEL_42:
          v37 = *(a1 + 56);
          if (v37)
          {
            v4 = v37 + 72 * v24;
LABEL_27:
            v25 = 0;
            if (!*(v4 + 12))
            {
              v186[v24 >> 3] |= 1 << (v24 & 7);
            }

            v38 = v4;
          }

          else
          {
            v4 = 0;
            v38 = 0;
            v25 = 1;
          }

          v14 = v24;
          goto LABEL_49;
        }
      }
    }

LABEL_48:
    v38 = 0;
    ++v15;
    v25 = 1;
LABEL_49:
    v39 = v18 & 7;
    a4 += v20;
    a3 -= v20;
    v189 = v4;
    if (v39 > 1)
    {
      if (v39 == 2)
      {
        if (a3 >= 5)
        {
          v46 = 5;
        }

        else
        {
          v46 = a3;
        }

        if (a3)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          while (1)
          {
            v49 |= (a4[v47] & 0x7F) << v48;
            if ((a4[v47] & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            if (v46 == ++v47)
            {
              goto LABEL_365;
            }
          }
        }

        else
        {
          LODWORD(v47) = 0;
          v49 = 0;
        }

        if (v47 == v46)
        {
          goto LABEL_365;
        }

        v41 = (v49 + v47 + 1);
        v50 = v41 && a3 >= v41;
        if (!v50)
        {
          goto LABEL_365;
        }

        v40 = (v47 + 1);
      }

      else
      {
        if (v39 != 5 || a3 < 4)
        {
          goto LABEL_365;
        }

        v40 = 0;
        LODWORD(v41) = 4;
      }
    }

    else if ((v18 & 7) != 0)
    {
      if (v39 != 1 || a3 < 8)
      {
        goto LABEL_365;
      }

      v40 = 0;
      LODWORD(v41) = 8;
    }

    else
    {
      v42 = 10;
      if (a3 < 0xA)
      {
        v42 = a3;
      }

      if (a3)
      {
        v43 = 0;
        if (v42 <= 1)
        {
          v44 = 1;
        }

        else
        {
          v44 = v42;
        }

        if (v42 <= 1)
        {
          v45 = 1;
        }

        else
        {
          v45 = v42;
        }

        while (a4[v43] < 0)
        {
          if (v45 == ++v43)
          {
            goto LABEL_88;
          }
        }

        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

LABEL_88:
      if (v44 == v42)
      {
        goto LABEL_365;
      }

      v40 = 0;
      LODWORD(v41) = v44 + 1;
    }

    if (1 << (v191 + 4) == v16)
    {
      if (v191 == 22)
      {
        v191 = 22;
LABEL_365:
        (v8[1])(v8[2], v13, v15, 5, 1, 32, &v193, v14);
        if (v191)
        {
          for (i = 1; i <= v191; ++i)
          {
            if ((&v193)[i])
            {
              (v8[1])(v8[2]);
            }
          }
        }

        v13 = 0;
        goto LABEL_371;
      }

      v179 = v40;
      v181 = v38;
      v183 = v25;
      v51 = v14;
      v52 = v15;
      v53 = (*v8)(v8[2], 32 << (v191 + 5));
      *(v194 + v191) = v53;
      if (!v53)
      {
        v57 = 0;
        v16 = 0;
        ++v191;
        v13 = v187;
        v15 = v52;
        v14 = v51;
        goto LABEL_103;
      }

      v16 = 0;
      ++v191;
      v13 = v187;
      v15 = v52;
      v14 = v51;
      v25 = v183;
      v40 = v179;
      v38 = v181;
    }

    else
    {
      v53 = (&v193)[v191];
    }

    v54 = v53 + 32 * v16;
    *v54 = v19;
    *(v54 + 4) = v39;
    *(v54 + 5) = v40;
    *(v54 + 6) = 0;
    *(v54 + 8) = v38;
    *(v54 + 16) = v41;
    *(v54 + 24) = a4;
    if ((v25 & 1) == 0 && *(v38 + 12) == 2)
    {
      if (v39 != 2 || (v55 = *(v38 + 16), (*(v38 + 48) & 1) == 0) && (v55 - 14) < 3)
      {
        v56 = 1;
LABEL_101:
        *(v13 + *(v38 + 20)) += v56;
        goto LABEL_102;
      }

      v56 = v41 - v40;
      if (v55 > 6)
      {
        if (v55 <= 9)
        {
          if (v55 != 7)
          {
            if (v55 != 8)
            {
              goto LABEL_122;
            }

            goto LABEL_128;
          }
        }

        else
        {
          if (v55 > 11)
          {
            if (v55 == 12)
            {
              goto LABEL_101;
            }

            if (v55 != 13)
            {
              goto LABEL_365;
            }

            goto LABEL_128;
          }

          if (v55 != 10)
          {
            goto LABEL_122;
          }
        }
      }

      else
      {
        if (v55 > 2)
        {
          if ((v55 - 3) >= 2)
          {
            if (v55 != 5)
            {
              if (v55 != 6)
              {
                goto LABEL_365;
              }

              goto LABEL_128;
            }

LABEL_122:
            if ((v56 & 7) != 0)
            {
              goto LABEL_365;
            }

            v56 >>= 3;
            goto LABEL_101;
          }

LABEL_128:
          if (v56)
          {
            v56 = 0;
            v58 = &a4[v40];
            v59 = v40 - v41;
            do
            {
              v60 = *v58++;
              v56 += (v60 >> 7) ^ 1;
              v50 = __CFADD__(v59++, 1);
            }

            while (!v50);
          }

          goto LABEL_101;
        }

        if (v55 < 2)
        {
          goto LABEL_128;
        }

        if (v55 != 2)
        {
          goto LABEL_365;
        }
      }

      if ((v56 & 3) != 0)
      {
        goto LABEL_365;
      }

      v56 >>= 2;
      goto LABEL_101;
    }

LABEL_102:
    ++v16;
    a4 += v41;
    a3 -= v41;
    v57 = 1;
LABEL_103:
    v4 = v189;
    if ((v57 & 1) == 0)
    {
      goto LABEL_365;
    }
  }

  v68 = *(a1 + 48);
  v69 = v16;
  if (v68)
  {
    v70 = 0;
    v71 = 1;
    v72 = 92;
    do
    {
      v73 = *(a1 + 56);
      v74 = *(v73 + v72 - 80);
      if (v74)
      {
        if (v74 == 2)
        {
          v75 = *(v73 + v72 - 76);
          if (v75 >= 0x11)
          {
            sub_26F200D58();
          }

          v76 = *(v73 + v72 - 72);
          v77 = *(v13 + v76);
          if (v77)
          {
            v78 = qword_26F208988[v75];
            *(v13 + v76) = 0;
            if (!*v13)
            {
              sub_26F200EB8();
            }

            v79 = v15;
            v80 = (*v8)(v8[2], v77 * v78);
            if (!v80)
            {
              v172 = *(a1 + 48);
              v50 = v172 >= v71;
              v173 = v172 - v71;
              if (v173 != 0 && v50)
              {
                v174 = (*(a1 + 56) + v72);
                do
                {
                  if (*(v174 - 2) == 2)
                  {
                    *(v13 + *v174) = 0;
                  }

                  v174 += 18;
                  --v173;
                }

                while (v173);
              }

              goto LABEL_386;
            }

            *(v13 + *(v73 + v72 - 68)) = v80;
            v68 = *(a1 + 48);
            v16 = v69;
            v15 = v79;
          }
        }
      }

      else if (!*(v73 + v72 - 52) && ((v186[v70 >> 3] >> (v70 & 7)) & 1) == 0)
      {
        v50 = v68 >= v71;
        v175 = v68 - v71;
        if (v175 != 0 && v50)
        {
          v176 = (v73 + v72);
          do
          {
            if (*(v176 - 2) == 2)
            {
              *(v13 + *v176) = 0;
            }

            v176 += 18;
            --v175;
          }

          while (v175);
        }

LABEL_386:
        sub_26F1B7460(v13, v8);
        if (v191)
        {
          for (j = 1; j <= v191; ++j)
          {
            if ((&v193)[j])
            {
              (v8[1])(v8[2]);
            }
          }
        }

        if (v185 < 0x88)
        {
          return 0;
        }

LABEL_161:
        v13 = 0;
        goto LABEL_372;
      }

      ++v70;
      v72 += 72;
      ++v71;
    }

    while (v70 < v68);
  }

  if (v15)
  {
    v81 = (*v8)(v8[2], 24 * v15);
    v16 = v69;
    v13[2] = v81;
    if (!v81)
    {
      goto LABEL_386;
    }
  }

  v82 = 0;
  v83 = v16;
  v84 = v191;
  v184 = v16;
  while (2)
  {
    v85 = 1 << (v82 + 4);
    v188 = v82;
    if (v82 == v84)
    {
      LODWORD(v85) = v83;
    }

    v86 = v85;
    if (v85)
    {
      v87 = 0;
      v190 = (&v193)[v82];
      while (1)
      {
        v88 = &v190[32 * v87];
        v89 = *(v88 + 8);
        if (!v89)
        {
          v93 = v13[2];
          v94 = *(v13 + 2);
          *(v13 + 2) = v94 + 1;
          v95 = v93 + 24 * v94;
          v96 = *(v88 + 4);
          *v95 = *v88;
          *(v95 + 4) = v96;
          *(v95 + 8) = *(v88 + 16);
          v97 = (*v8)(v8[2]);
          *(v95 + 16) = v97;
          if (!v97)
          {
            goto LABEL_386;
          }

          memcpy(v97, *(v88 + 24), *(v95 + 8));
          goto LABEL_292;
        }

        v90 = (v13 + *(v89 + 24));
        v91 = *(v89 + 12);
        if (!v91)
        {
          if (!sub_26F1B7F68(&v190[32 * v87], (v13 + *(v89 + 24)), v8, 1))
          {
            goto LABEL_386;
          }

          goto LABEL_292;
        }

        if (v91 == 2)
        {
          break;
        }

        if (v91 != 1)
        {
          sub_26F200F10();
        }

        if ((*(v89 + 48) & 4) != 0)
        {
          v103 = *(v89 + 20);
          v104 = *(v13 + v103);
          if (!v104)
          {
            goto LABEL_290;
          }

          v105 = *v13;
          v106 = *(*v13 + 72);
          if (!v106)
          {
            goto LABEL_225;
          }

          v107 = *(v105 + 80);
          if (v106 == 1)
          {
            v108 = 0;
          }

          else
          {
            v108 = 0;
            do
            {
              v109 = v108 + (v106 >> 1);
              v110 = (v107 + 8 * v109);
              v111 = *v110;
              v112 = v104 - *v110;
              if (v104 >= *v110)
              {
                v113 = v110[1];
                if (*(v107 + 8 * (v109 + 1) + 4) + v111 - v113 > v104)
                {
                  v116 = v112 + v113;
                  goto LABEL_273;
                }

                v106 += v108 + ~v109;
                v108 = v109 + 1;
              }

              else
              {
                v106 >>= 1;
              }
            }

            while (v106 > 1);
            if (!v106)
            {
              goto LABEL_225;
            }
          }

          v114 = (v107 + 8 * v108);
          v115 = *v114;
          if (*v114 <= v104)
          {
            v117 = v114[1];
            v118 = v115 - v117 + *(v107 + 8 * (v108 + 1) + 4);
            v119 = v117 + v104 - v115;
            if (v118 > v104)
            {
              v116 = v119;
            }

            else
            {
              v116 = -1;
            }
          }

          else
          {
LABEL_225:
            v116 = -1;
          }

LABEL_273:
          v141 = *(v105 + 56) + 72 * v116;
          v142 = *(v141 + 16);
          if (v142 == 16)
          {
            v146 = *v90;
            if (!*v90)
            {
              goto LABEL_294;
            }

            if (v146 != *(v141 + 40))
            {
              sub_26F1B7460(v146, v8);
            }
          }

          else
          {
            if (v142 != 15)
            {
              if (v142 == 14)
              {
                v143 = *v90;
                if (*v90)
                {
                  v144 = *(v141 + 40);
                  goto LABEL_281;
                }

LABEL_294:
                v147 = 8;
LABEL_289:
                bzero(v90, v147);
LABEL_290:
                if (!sub_26F1B7F68(v88, v90, v8, 1))
                {
                  goto LABEL_386;
                }

                *(v13 + v103) = *v88;
                goto LABEL_292;
              }

LABEL_287:
              if (v142 >= 0x11)
              {
                sub_26F200D58();
              }

              v147 = qword_26F208988[v142];
              goto LABEL_289;
            }

            v143 = v90[1];
            if (v143)
            {
              v145 = *(v141 + 40);
              if (!v145)
              {
                goto LABEL_282;
              }

              v144 = *(v145 + 8);
LABEL_281:
              if (v143 != v144)
              {
LABEL_282:
                (v8[1])(v8[2]);
              }
            }
          }

          v142 = *(v141 + 16);
          goto LABEL_287;
        }

        if (!sub_26F1B7F68(&v190[32 * v87], (v13 + *(v89 + 24)), v8, 1))
        {
          goto LABEL_386;
        }

        v92 = *(*(v88 + 8) + 20);
        if (v92)
        {
          *(v13 + v92) = 1;
        }

LABEL_292:
        if (++v87 == v86)
        {
          goto LABEL_357;
        }
      }

      if (*(v88 + 4) == 2)
      {
        v98 = *(v89 + 16);
        if ((*(v89 + 48) & 1) != 0 || (v98 - 14) >= 3)
        {
          v99 = *(v89 + 20);
          if (*(v89 + 16) <= 7uLL)
          {
            if (v98 < 3)
            {
              v100 = 4;
LABEL_234:
              v120 = *(v13 + v99);
              v121 = (*v90 + v120 * v100);
              v122 = *(v88 + 5);
              v123 = *(v88 + 16);
              v124 = (*(v88 + 24) + v122);
              v125 = v123 - v122;
              v126 = 2;
              switch(v98)
              {
                case 0:
                case 13:
                  if (!v125)
                  {
                    goto LABEL_355;
                  }

                  v136 = 0;
                  while (1)
                  {
                    v137 = v125 >= 0xA ? 10 : v125;
                    if (v125)
                    {
                      v138 = 0;
                      while (v124[v138] < 0)
                      {
                        if (v137 == ++v138)
                        {
                          goto LABEL_386;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v138) = 0;
                    }

                    v139 = v138 + 1;
                    if (v138 == v137 || v138 == -1)
                    {
                      goto LABEL_386;
                    }

                    v140 = *v124 & 0x7F;
                    if (v139 >= 2)
                    {
                      v140 = *v124 & 0x7F | ((v124[1] & 0x7F) << 7);
                      if (v138 != 1)
                      {
                        v140 = *v124 & 0x7F | ((v124[1] & 0x7F) << 7) & 0x3FFF | ((v124[2] & 0x7F) << 14);
                        if (v139 >= 4)
                        {
                          v140 = *v124 & 0x7F | ((v124[1] & 0x7F) << 7) & 0x3FFF | ((v124[2] & 0x7F) << 14) & 0xF01FFFFF | ((v124[3] & 0x7F) << 21);
                          if (v138 != 3)
                          {
                            v140 |= v124[4] << 28;
                          }
                        }
                      }
                    }

                    v121[v136] = v140;
                    v135 = v136 + 1;
                    v124 += v139;
                    ++v136;
                    v125 -= v139;
                    if (!v125)
                    {
                      goto LABEL_356;
                    }
                  }

                case 1:
                  if (!v125)
                  {
                    goto LABEL_355;
                  }

                  v153 = 0;
                  while (1)
                  {
                    v154 = v125 >= 0xA ? 10 : v125;
                    if (v125)
                    {
                      v155 = 0;
                      while (v124[v155] < 0)
                      {
                        if (v154 == ++v155)
                        {
                          goto LABEL_386;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v155) = 0;
                    }

                    v156 = v155 + 1;
                    if (v155 == v154 || v155 == -1)
                    {
                      goto LABEL_386;
                    }

                    v157 = *v124 & 0x7F;
                    if (v156 >= 2)
                    {
                      v157 = *v124 & 0x7F | ((v124[1] & 0x7F) << 7);
                      if (v155 != 1)
                      {
                        v157 = *v124 & 0x7F | ((v124[1] & 0x7F) << 7) & 0x3FFF | ((v124[2] & 0x7F) << 14);
                        if (v156 >= 4)
                        {
                          v157 = *v124 & 0x7F | ((v124[1] & 0x7F) << 7) & 0x3FFF | ((v124[2] & 0x7F) << 14) & 0xF01FFFFF | ((v124[3] & 0x7F) << 21);
                          if (v155 != 3)
                          {
                            v157 |= v124[4] << 28;
                          }
                        }
                      }
                    }

                    v121[v153] = -(v157 & 1) ^ (v157 >> 1);
                    v135 = v153 + 1;
                    v124 += v156;
                    v125 -= v156;
                    ++v153;
                    if (!v125)
                    {
                      goto LABEL_356;
                    }
                  }

                case 2:
                case 7:
                case 10:
                  goto LABEL_236;
                case 3:
                case 8:
                  if (!v125)
                  {
                    goto LABEL_355;
                  }

                  v128 = 0;
                  v182 = v99;
                  while (1)
                  {
                    v129 = v125 >= 0xA ? 10 : v125;
                    if (v125)
                    {
                      v130 = 0;
                      while (v124[v130] < 0)
                      {
                        if (v129 == ++v130)
                        {
                          goto LABEL_386;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v130) = 0;
                    }

                    v131 = v130 + 1;
                    if (v130 == v129 || v130 == -1)
                    {
                      goto LABEL_386;
                    }

                    v132 = v121;
                    v133 = v120;
                    v134 = sub_26F1B82A8(v130 + 1, v124);
                    v120 = v133;
                    v99 = v182;
                    v132[v128] = v134;
                    v121 = v132;
                    v135 = v128 + 1;
                    v124 += v131;
                    ++v128;
                    v125 -= v131;
                    if (!v125)
                    {
                      goto LABEL_356;
                    }
                  }

                case 4:
                  if (!v125)
                  {
                    goto LABEL_355;
                  }

                  v162 = 0;
                  v180 = *v90 + v120 * v100;
                  while (1)
                  {
                    v163 = v125 >= 0xA ? 10 : v125;
                    if (v125)
                    {
                      v164 = 0;
                      while (v124[v164] < 0)
                      {
                        if (v163 == ++v164)
                        {
                          goto LABEL_386;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v164) = 0;
                    }

                    v165 = v164 + 1;
                    if (v164 == v163 || v164 == -1)
                    {
                      goto LABEL_386;
                    }

                    v166 = v99;
                    v167 = v120;
                    v168 = sub_26F1B82A8(v164 + 1, v124);
                    v120 = v167;
                    v99 = v166;
                    *(v180 + 8 * v162) = -(v168 & 1) ^ (v168 >> 1);
                    v135 = v162 + 1;
                    v124 += v165;
                    v125 -= v165;
                    ++v162;
                    if (!v125)
                    {
                      goto LABEL_356;
                    }
                  }

                case 5:
                case 9:
                case 11:
                  v126 = 3;
LABEL_236:
                  v127 = v125 >> v126;
                  memcpy(v121, v124, (v125 >> v126) * v100);
                  v102 = *(v13 + v99) + v127;
                  break;
                case 6:
                  if (!v125)
                  {
                    goto LABEL_355;
                  }

                  v148 = 0;
                  while (1)
                  {
                    v149 = v125 >= 0xA ? 10 : v125;
                    if (v125)
                    {
                      v150 = 0;
                      while (v124[v150] < 0)
                      {
                        if (v149 == ++v150)
                        {
                          goto LABEL_386;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v150) = 0;
                    }

                    v151 = v150 + 1;
                    if (v150 == v149 || v150 == -1)
                    {
                      goto LABEL_386;
                    }

                    v152 = *v124 & 0x7F;
                    if (v151 >= 2)
                    {
                      v152 = *v124 & 0x7F | ((v124[1] & 0x7F) << 7);
                      if (v150 != 1)
                      {
                        v152 = *v124 & 0x7F | ((v124[1] & 0x7F) << 7) & 0x3FFF | ((v124[2] & 0x7F) << 14);
                        if (v151 >= 4)
                        {
                          v152 = *v124 & 0x7F | ((v124[1] & 0x7F) << 7) & 0x3FFF | ((v124[2] & 0x7F) << 14) & 0xF01FFFFF | ((v124[3] & 0x7F) << 21);
                          if (v150 != 3)
                          {
                            v152 |= v124[4] << 28;
                          }
                        }
                      }
                    }

                    v121[v148] = v152;
                    v135 = v148 + 1;
                    v124 += v151;
                    ++v148;
                    v125 -= v151;
                    if (!v125)
                    {
                      goto LABEL_356;
                    }
                  }

                case 12:
                  if (v125)
                  {
                    v158 = 0;
                    v159 = 1;
                    do
                    {
                      v160 = v124[v158];
                      if (v160 > 1)
                      {
                        goto LABEL_386;
                      }

                      v121[v158] = v160;
                      v158 = v159;
                    }

                    while (v125 > v159++);
                    v135 = v125;
                  }

                  else
                  {
LABEL_355:
                    v135 = 0;
                  }

LABEL_356:
                  v102 = v135 + v120;
                  break;
                default:
                  goto LABEL_401;
              }

LABEL_208:
              *(v13 + v99) = v102;
              goto LABEL_292;
            }

            if ((v98 - 3) >= 3)
            {
              v100 = 4;
              if ((v98 - 6) >= 2)
              {
                goto LABEL_402;
              }

              goto LABEL_234;
            }
          }

          else if (*(v89 + 16) <= 0xBuLL)
          {
            if ((v98 - 8) >= 2)
            {
              v100 = 4;
              if (v98 == 10)
              {
                goto LABEL_234;
              }

              if (v98 != 11)
              {
                goto LABEL_402;
              }
            }
          }

          else
          {
            v100 = 4;
            if (v98 < 14)
            {
              goto LABEL_234;
            }

            if (v98 != 14 && v98 != 16)
            {
              if (v98 == 15)
              {
LABEL_401:
                sub_26F200EE4();
              }

LABEL_402:
              sub_26F200D58();
            }
          }

          v100 = 8;
          goto LABEL_234;
        }
      }

      else
      {
        v98 = *(v89 + 16);
      }

      if (v98 >= 0x11)
      {
        sub_26F200D58();
      }

      v99 = *(v89 + 20);
      if (!sub_26F1B7F68(&v190[32 * v87], (*v90 + *(v13 + v99) * qword_26F208988[v98]), v8, 0))
      {
        goto LABEL_386;
      }

      v102 = *(v13 + v99) + 1;
      goto LABEL_208;
    }

LABEL_357:
    v82 = v188 + 1;
    v84 = v191;
    v83 = v184;
    if (v188 + 1 <= v191)
    {
      continue;
    }

    break;
  }

  if (v191)
  {
    v169 = v191;
    v170 = v194;
    do
    {
      if (*v170)
      {
        (v8[1])(v8[2]);
      }

      ++v170;
      --v169;
    }

    while (v169);
  }

LABEL_371:
  if (v185 >= 0x88)
  {
LABEL_372:
    v8[1](v8[2], v186);
  }

  return v13;
}