// 283. Move Zeroes

package main

import "fmt"

func main() {
	nums := [5]int{0, 1, 0, 3, 12}
	moveZeroes(nums[:])
	fmt.Println(nums)
}

// Solution
func moveZeroes(nums []int) {
	l := 0
	r := 0

	for r != len(nums) {
		if nums[r] != 0 {
			x := nums[l]
			nums[l] = nums[r]
			nums[r] = x
			l += 1
		}
		r += 1
	}
}
