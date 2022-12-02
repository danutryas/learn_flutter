# Widget
** Text **
Links : https://api.flutter.dev/flutter/widgets/Text-class.html

Text(
    `data`,  *data -> text to show*
    props : value,
)
available props : 
    - selectionColor
    - style
    - textAlign
    - textDirection
    - etc.

** Image **
Links : 

Image(
    networkAssets(`url`)
)
Image(
    AssetImage(`url`)
)
or 
Image.network(`url`)
Image.asset(`path`)

** Row **
Links : https://api.flutter.dev/flutter/widgets/Text-class.html

Row(
    mainAxisAlignment : MainAxisAlignment.`value`, *mainAxisAlignment act simliarly with justify-content* 
    crossAxisAlignment : CrossAxisAlignment.`value`, *crossAxisAlignment act similiartly with align-items*
    children : <type>[]
)
** Column **
Links : https://api.flutter.dev/flutter/widgets/Column-class.html

Column(
    mainAxisAlignment : MainAxisAlignment.`value`, *mainAxisAlignment act simliarly with align-items* 
    crossAxisAlignment : CrossAxisAlignment.`value`, *crossAxisAlignment act similiartly with justify-content*
    children : <type>[]
)
** Expanded **
Links

Expanded(
    flex : `int` *flex represent width portion of the expanded widget*
    child : `widget`
)


# Properties
** Padding && Margin **
links : https://api.flutter.dev/flutter/widgets/Container-class.html 
padding/margin : EdgeInsets.all(`x`) *x -> horizontal and vertikal*
padding/margin : EdgeInsets.symmetric(horizontal : `x`,vertical : `y`) *x -> horizontal && y -> vertikal*
padding/margin : EdgeInsets.fromLTRB(`l`,`t`,`r`,`b`) *l -> left padding,t -> top padding,r -> right padding,b -> bottom padding*


