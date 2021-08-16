const testingFile = 'This is a string'

const t = { this: 'that' }

t.this

const manipulateString = (str: string): void => {
    console.log('string')
    console.log(str)
}

manipulateString(testingFile)
