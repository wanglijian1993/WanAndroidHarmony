
import { HomePage } from './home/HomePage'
@Component
export default  struct MainContent{
  @State index:number=0
  build(){
   Column(){
     if(this.index==0){
      HomePage()
     }else{
       Text('123')
     }
   }

  }
}