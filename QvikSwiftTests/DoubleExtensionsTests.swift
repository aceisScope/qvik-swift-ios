// The MIT License (MIT)
//
// Copyright (c) 2015 Qvik (www.qvik.fi)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation
import XCTest

class DoubleExtensionsTests: XCTestCase {
    
    func testRandom() {
        for _ in 0..<10000 {
            let x = Double.random()
            XCTAssert(x >= 0)
            XCTAssert(x <= 1.0)
        }
    }

    func testClamp() {
        let d1 = 10.5
        let d2 = 3.2
        let d3 = 12355.5

        let minVal = 5.45
        let maxVal = 16.72

        XCTAssert(d1.clamp(minVal, maxVal) == d1)
        XCTAssert(d2.clamp(minVal, maxVal) == minVal)
        XCTAssert(d3.clamp(minVal, maxVal) == maxVal)
    }
}
