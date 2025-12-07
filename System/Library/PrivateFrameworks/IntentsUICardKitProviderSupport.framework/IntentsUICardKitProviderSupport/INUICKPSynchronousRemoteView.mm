@interface INUICKPSynchronousRemoteView
- (CGSize)sizeThatFits:(CGSize)fits;
- (INUICKPSynchronousRemoteViewDelegate)delegate;
- (void)layoutSubviews;
@end

@implementation INUICKPSynchronousRemoteView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(INUICKPSynchronousRemoteView *)self delegate:fits.width];
  [v4 cachedSizeForSynchronousRemoteView:self];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = INUICKPSynchronousRemoteView;
  [(INUICKPSynchronousRemoteView *)&v13 layoutSubviews];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  subviews = [(INUICKPSynchronousRemoteView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [(INUICKPSynchronousRemoteView *)self bounds];
        [v8 setFrame:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (INUICKPSynchronousRemoteViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end