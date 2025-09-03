# flutter_amostra_json

The overflowing RenderFlex has an orientation of Axis.vertical.
The edge of the RenderFlex that is overflowing has been marked in the rendering with a yellow and
black striped pattern. This is usually caused by the contents being too big for the RenderFlex.
Consider applying a flex factor (e.g. using an Expanded widget) to force the children of the
RenderFlex to fit within the available space instead of being sized to their natural size.
This is considered an error condition because it indicates that there is content that cannot be
seen. If the content is legitimately bigger than the available space, consider clipping it with a
ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex,
like a ListView.


    child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 2,
          children: [
            AspectRatio(
              aspectRatio: _trailer.value.aspectRatio,
              child: VideoPlayer(_trailer),
            ),

            const Padding(padding: EdgeInsets.all(20)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _trailer.pause();
                  }, 
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
                    minimumSize: WidgetStatePropertyAll<Size>(Size(80, 80)),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)
                      )
                    )
                  ),
                  child: const Icon(Icons.pause)
                ),

                const Padding(padding: EdgeInsets.all(2)),

                ElevatedButton(
                  onPressed: () {
                    _trailer.play();
                  }, 
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
                    minimumSize: WidgetStatePropertyAll<Size>(Size(80, 80)),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)
                      )
                    )
                  ), 
                  child: const Icon(Icons.play_arrow)
                )
              ],
            )
          ],
        ) 
      ),
