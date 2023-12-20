import { HEIGHT_100 } from '../../constants/CommonConstants'
import MainView from '../views/MainView'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {

    Column(){
      MainView()
    }
    .height(HEIGHT_100)
    .justifyContent(FlexAlign.Center)
  }
}