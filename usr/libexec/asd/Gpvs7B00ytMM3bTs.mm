@interface Gpvs7B00ytMM3bTs
- (Gpvs7B00ytMM3bTs)initWithdEyUJuqYjUufZYGN:(id)n Po0NnEfbQHpSgzj7:(id)sgzj7 jHoy3L8RogTTbjjB:(_yo6ptGgiZw8VbWk1 *)b X5iUjoUzZPsj1b68:(int64_t)psj1b68;
- (id)asyncEvaluatorForType:(unsigned int)type version:(unsigned int)version;
@end

@implementation Gpvs7B00ytMM3bTs

- (Gpvs7B00ytMM3bTs)initWithdEyUJuqYjUufZYGN:(id)n Po0NnEfbQHpSgzj7:(id)sgzj7 jHoy3L8RogTTbjjB:(_yo6ptGgiZw8VbWk1 *)b X5iUjoUzZPsj1b68:(int64_t)psj1b68
{
  nCopy = n;
  sgzj7Copy = sgzj7;
  v23.receiver = self;
  v23.super_class = Gpvs7B00ytMM3bTs;
  v12 = [(Gpvs7B00ytMM3bTs *)&v23 init];
  if (v12)
  {
    v13 = dispatch_queue_create("smc", 0);
    v14 = [[PGiTJtLgUnKcxckL alloc] initWithdEyUJuqYjUufZYGN:nCopy];
    bindingsEvaluator = v12->_bindingsEvaluator;
    v12->_bindingsEvaluator = v14;

    v16 = [[Hc1u6WJuVM53BcQE alloc] initWithdEyUJuqYjUufZYGN:sgzj7Copy];
    kernelInfoEvaluator = v12->_kernelInfoEvaluator;
    v12->_kernelInfoEvaluator = v16;

    v18 = [[KII4PpQSDEXNXgDb alloc] initWithSmoothFunctions:b X5iUjoUzZPsj1b68:psj1b68 queue:v13];
    smoothFunctionEvaluator = v12->_smoothFunctionEvaluator;
    v12->_smoothFunctionEvaluator = v18;

    v20 = dispatch_workloop_create("evalpool");
    evaluationQueue = v12->_evaluationQueue;
    v12->_evaluationQueue = v20;
  }

  return v12;
}

- (id)asyncEvaluatorForType:(unsigned int)type version:(unsigned int)version
{
  switch(type)
  {
    case 0u:
      bindingsEvaluator = [(Gpvs7B00ytMM3bTs *)self bindingsEvaluator];
      break;
    case 1u:
      v7 = LXKFKpCcpHk2mY6n;
      goto LABEL_38;
    case 2u:
      v7 = Sby7psiLlGm5MLDx;
      goto LABEL_38;
    case 3u:
      v7 = AHhsu4ZRdIKDtY02;
      goto LABEL_38;
    case 4u:
      v6 = LazRaN3HgWYPPpKq;
      goto LABEL_30;
    case 5u:
      v7 = FPteRld7NoAzBRMo;
      goto LABEL_38;
    case 6u:
      v7 = Jc1OiXBj3TZTX6fS;
      goto LABEL_38;
    case 7u:
      v7 = LLPrncEYq6on80YB;
      goto LABEL_38;
    case 8u:
      v7 = RIBdWx6IE2Tv357l;
      goto LABEL_38;
    case 9u:
      bindingsEvaluator = [(Gpvs7B00ytMM3bTs *)self kernelInfoEvaluator];
      break;
    case 0xAu:
      v7 = Y1qhGFeay19f76Cw;
      goto LABEL_38;
    case 0xBu:
      v6 = VkXK63cfqO3KtJwc;
      goto LABEL_30;
    case 0xCu:
      v6 = T8eR4ZNlOH8wZjTp;
      goto LABEL_30;
    case 0xEu:
      v7 = LW1stJEQ13Gby8hG;
      goto LABEL_38;
    case 0xFu:
      v7 = IJ2i1jyVHK2GU5Sj;
      goto LABEL_38;
    case 0x10u:
      v7 = A8dT9hzXgBYw0xH1;
      goto LABEL_38;
    case 0x12u:
      v7 = Cb88V9Z9PGLm1XBw;
      goto LABEL_38;
    case 0x13u:
      v7 = BH7wjfNixdWGvjfQ;
      goto LABEL_38;
    case 0x14u:
      v7 = SUdYIiwa8PrJA4HA;
      goto LABEL_38;
    case 0x17u:
      v6 = NRGBoLhNmnH8JrxA;
      goto LABEL_30;
    case 0x18u:
      v7 = FroFlbyYlUw5zsSg;
      goto LABEL_38;
    case 0x19u:
      v7 = GQdxG3xjQCtxhh8w;
      goto LABEL_38;
    case 0x1Au:
      v7 = FdvTdusyTLSA8Wsh;
      goto LABEL_38;
    case 0x1Bu:
      v7 = NDFRjmNSzUL5yu9I;
      goto LABEL_38;
    case 0x1Du:
      v6 = HK6sPflgQIpvwaiG;
      goto LABEL_30;
    case 0x1Eu:
      v7 = CzGuHdtgzKnYoucr;
      goto LABEL_38;
    case 0x1Fu:
      v7 = NiJVUDlOmidQPPQl;
      goto LABEL_38;
    case 0x20u:
      v7 = AaZDqQVspOsBOmNU;
LABEL_38:
      v9 = [v7 alloc];
      evaluationQueue = [(Gpvs7B00ytMM3bTs *)self evaluationQueue];
      v8 = [v9 initWithQueue:evaluationQueue];

      goto LABEL_39;
    case 0x21u:
      v6 = ZC5UHnWnOtc38V53;
      goto LABEL_30;
    case 0x22u:
      v6 = NeKgVVgVwvD6Xs2O;
      goto LABEL_30;
    case 0x23u:
      v6 = NIEyYkb5fUSqW222;
      goto LABEL_30;
    case 0x24u:
      v6 = BYUw5HRbA4ULYJxO;
      goto LABEL_30;
    case 0x25u:
      v6 = TfCs4Q5Kv4Y6pm6o;
      goto LABEL_30;
    case 0x26u:
      v6 = C89ZlG7zKrvhYkqf;
LABEL_30:
      bindingsEvaluator = objc_alloc_init(v6);
      break;
    default:
      bindingsEvaluator = [[LnikKUnLg4pTiUUG alloc] initWithType:*&type];
      break;
  }

  v8 = bindingsEvaluator;
LABEL_39:

  return v8;
}

@end