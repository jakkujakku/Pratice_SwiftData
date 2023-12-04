# Swift Data란?

- iOS 17부터 제공되는 DB
- SwiftData는 import SwiftData로 임포트 후 사용하면 됩니다.
- @Model, @Query 키워드로 사용
  - @Model:  SwiftData 모델임을 선언합니다.
    - @Attribute: 고유성 제약 조건을 추가 가능합니다.
    - @Relationship: 모델 간의 링크 동작을 변경할 수 있습니다.
  - @Query: View에서 데이터를 가져올 수 있습니다.
- SwiftUI에서 SwiftData를 사용하면 observe 기능이 제공되므로, 자동으로 데이터가 Refresh됩니다.(@Published 불필요)

## @Model

- SwiftData를 사용하려는 클래스 바로 위에 @Model을 선언해주면 됩니다.

![스크린샷 2023-12-05 오전 3.03.04](/Users/wnsdnrla/Library/Application Support/typora-user-images/스크린샷 2023-12-05 오전 3.03.04.png)

## @Query

- View에서 Swift Data 를 사용하려면 @Query를 사용하여 데이터를 가져오면 됩니다.

![스크린샷 2023-12-05 오전 3.07.04](/Users/wnsdnrla/Library/Application Support/typora-user-images/스크린샷 2023-12-05 오전 3.07.04.png)

## ModelContainer, ModelContext

### ModelContainer

- Model 타입을 영구적으로 저장(=CoreData)합니다.
- 지정하려는 모델 유형 목록을 지정하기만 하면 모델 컨테이너 생성이 가능합니다.
- 컨테이너 설정이 되면 ModelContext로 데이터를 가져오고 저장할 준비가 완료됩니다.

![스크린샷 2023-12-05 오전 3.12.35](/Users/wnsdnrla/Library/Application Support/typora-user-images/스크린샷 2023-12-05 오전 3.12.35.png)

### ModelContext

- 모델에 대한 모든 변경 사항을 관찰하고 작동할 많은 작업을 제공합니다.
- 업데이트 추적, 데이터 로드, 변경사항 저장, 변경사항 취소할 수 있는 인터페이스입니다.

![스크린샷 2023-12-05 오전 3.14.26](/Users/wnsdnrla/Library/Application Support/typora-user-images/스크린샷 2023-12-05 오전 3.14.26.png)

### 데이터를 추가하고 싶을 때 : context.insert() 사용하면 됩니다.

![스크린샷 2023-12-05 오전 3.15.25](/Users/wnsdnrla/Library/Application Support/typora-user-images/스크린샷 2023-12-05 오전 3.15.25.png)

### 데이터를 삭제하고 싶을 때 : context.delete() 사용하면 됩니다.

![스크린샷 2023-12-05 오전 3.16.21](/Users/wnsdnrla/Library/Application Support/typora-user-images/스크린샷 2023-12-05 오전 3.16.21.png)