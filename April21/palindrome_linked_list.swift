 public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        
        var ptr = head
        var stkArr = [Int]()
        stkArr.removeAll()
        while ptr?.next != nil{
            stkArr.append((ptr?.val)!)
            ptr = ptr?.next
        }
        stkArr.append((ptr?.val)!)
        var flag = 1
        for i in ((stkArr.count-1)/2...(stkArr.count-1)).reversed(){
            if(stkArr[i] != stkArr[((stkArr.count-1)-i)]){
                flag = 0
                break
            }
        }
        if flag == 0{
            return false
        }
        return true
    }
}
