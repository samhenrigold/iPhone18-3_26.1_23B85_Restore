@interface WFGetFramesFromImageAction
- (void)cancel;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFGetFramesFromImageAction

- (void)cancel
{
  cancelBlock = [(WFGetFramesFromImageAction *)self cancelBlock];

  if (cancelBlock)
  {
    cancelBlock2 = [(WFGetFramesFromImageAction *)self cancelBlock];
    cancelBlock2[2]();

    [(WFGetFramesFromImageAction *)self setCancelBlock:0];
  }

  v5.receiver = self;
  v5.super_class = WFGetFramesFromImageAction;
  [(WFGetFramesFromImageAction *)&v5 cancel];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v7[2] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C211D0;
  v6[4] = self;
  [inputCopy generateCollectionByCoercingToItemClasses:v5 completionHandler:v6];
}

void __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_2;
    v16[3] = &unk_278C1B0A0;
    v17 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_5;
    v15[3] = &unk_278C21E70;
    v15[4] = v17;
    [v6 transformItemsAndFlattenUsingBlock:v16 completionHandler:v15];
  }

  else
  {
    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 finishRunningWithError:v7];
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D7CB30];
      v18[0] = *MEMORY[0x277CCA470];
      v11 = WFLocalizedString(@"No Image Provided");
      v19[0] = v11;
      v18[1] = *MEMORY[0x277CCA450];
      v12 = WFLocalizedString(@"No GIF was passed as input to Get Frames from Image.");
      v19[1] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v14 = [v9 errorWithDomain:v10 code:6 userInfo:v13];
      [v8 finishRunningWithError:v14];
    }
  }
}

void __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = [v5 asset];
  v8 = [v7 burstIdentifier];

  if (!v8)
  {

LABEL_5:
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_3;
    v13[3] = &unk_278C216C8;
    v14 = *(a1 + 32);
    v15 = v6;
    v12 = [MEMORY[0x277D79F68] typeWithUTType:{*MEMORY[0x277CE1D88], v13[0], 3221225472, __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_3, &unk_278C216C8, v14}];
    [v5 getFileRepresentation:v13 forType:v12];

    goto LABEL_6;
  }

  v9 = MEMORY[0x277CFC4C0];
  v10 = [v7 burstIdentifier];
  v11 = [v9 itemsWithBurstIdentifier:v10];
  (*(v6 + 2))(v6, v11, 0);

LABEL_6:
}

void __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  v6 = a2;
  [v5 setCancelBlock:0];
  [*(a1 + 32) setOutput:v6];

  [*(a1 + 32) finishRunningWithError:v7];
}

void __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 wfName];
  v6 = *(a1 + 40);
  v5 = WFGenerateImageFilesFromGIF();

  [*(a1 + 32) setCancelBlock:v5];
}

@end