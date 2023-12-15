import {TITLE_BAR_HEIGHT} from '../../constants/CommonConstants'
@Preview({title:'Title'})
@Component
export default  struct TitleBar{

  @State title:string='标题'
  @State leftVisible:boolean=true
  @State rightRes:Resource=null

  build(){
   Row(){
     Column(){
       if(this.leftVisible){
         Image($r('app.media.ic_back'))
           .width(40)
           .height(40)
       }
     }
     Text(this.title)
     Column(){
         if(this.rightRes!=null){
           Image(this.rightRes)
         }
     }
   }.height(TITLE_BAR_HEIGHT)
   .width('100%')
   .height('5%')
    .justifyContent(FlexAlign.SpaceBetween)
  }

}